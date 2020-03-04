unit UClasse.Relatorio.Comissoes.Tecnico;

interface

uses UClasse.Query, UInterfaces, UDados.Conexao, Data.DB, Vcl.Dialogs,
  System.SysUtils, Vcl.Forms, Winapi.Windows, Vcl.Controls,
  UClasse.Gravar.Log.Sistema, Vcl.ComCtrls, Vcl.DBGrids, Vcl.Mask;

type

  TRelatorioComissoes = class(TInterfacedObject, iRelatorioComissoesTecnico)
  private

    function calcularValor(value: integer): currency;
    function obterPercentualComissao(value:integer):real;

  var
    FQuery: iConexaoQuery;
    FQueryContabilizar: iConexaoQuery;
    FQueryPercentualComissao: iConexaoQuery;
    FGravarLog: iGravarLogOperacoes;
    FTabela: string;
    FCampo: string;
    FValor: string;
    FDataInicial: TDate;
    FDataFinal: TDate;

    FCodigo: integer;
    FNome: string;

    FQuantidadeOS:integer;
    FPercentualTecnico:real;


  public
    function nomeTabela(value: string): iRelatorioComissoesTecnico;
    function getCampo(value: string): iRelatorioComissoesTecnico;
    function getValor(value: string): iRelatorioComissoesTecnico;
    function getDataInicial(value: TDate): iRelatorioComissoesTecnico;
    function getDataFinal(value: TDate): iRelatorioComissoesTecnico;
    function open(value: string): iRelatorioComissoesTecnico;
    function pesquisar: iRelatorioComissoesTecnico;
    function ExecSql: iRelatorioComissoesTecnico;
    function sqlPesquisa: iRelatorioComissoesTecnico;
    function sqlPesquisaData: iRelatorioComissoesTecnico;
    function sqlPesquisaEstatica: iRelatorioComissoesTecnico;

    function abrir: iRelatorioComissoesTecnico;
    function atualizar: iRelatorioComissoesTecnico;
    function cancelar: iRelatorioComissoesTecnico;
    function fecharQuery: iRelatorioComissoesTecnico;
    function listarGrid(value: TDataSource): iRelatorioComissoesTecnico;
    function ordenarGrid(column: TColumn): iRelatorioComissoesTecnico;


    function calucularComissoes(value: TDataSource): iRelatorioComissoesTecnico;

    function exportar: iRelatorioComissoesTecnico;
    function validarData(componet: tmaskEdit): iRelatorioComissoesTecnico;

    constructor create;
    destructor destroy; override;
    class function new: iRelatorioComissoesTecnico;
  end;

implementation

{ TRelatorioComissoes }

function TRelatorioComissoes.abrir: iRelatorioComissoesTecnico;
begin

  result := self;
  FQuery.Query(FTabela);

end;

function TRelatorioComissoes.atualizar: iRelatorioComissoesTecnico;
begin
  result := self;
  FQuery.TQuery.Refresh;
end;

function TRelatorioComissoes.calcularValor(value: integer): currency;
var
  total: currency;
  valorComissao:Currency;
begin

  result := 0;

  total := 0;

   FQueryContabilizar.TQuery.Active := false;
   FQueryContabilizar.TQuery.SQL.Clear;
   FQueryContabilizar.TQuery.SQL.Add
                    ('select * from VISUALIZAR_ORDENS_TECNICOS where ID_TECNICO_RESPONSAVEL =:i '+
                    ' and '+FCampo+' between :d1 and d2');
  FQueryContabilizar.TQuery.ParamByName('i').AsInteger := value;
  FQueryContabilizar.TQuery.ParamByName('d1').AsDate := FDataInicial;
  FQueryContabilizar.TQuery.ParamByName('d2').AsDate := FDataFinal;
  FQueryContabilizar.TQuery.Active := true;

  if FQueryContabilizar.TQuery.RecordCount >= 1 then
  begin

    FQueryContabilizar.TQuery.First;

    while not FQueryContabilizar.TQuery.Eof do
    begin
      total := total + FQueryContabilizar.TQuery.FieldByName('TOTAL_ORCAMENTO').AsCurrency;
      FQueryContabilizar.TQuery.Next;
    end;


    valorComissao := total * (FPercentualTecnico / 100);

    result := valorComissao + total;

  end;

end;

function TRelatorioComissoes.calucularComissoes(value: TDataSource)
  : iRelatorioComissoesTecnico;
begin

  result := self;

  FQuery.TQuery.First;

  while not FQuery.TQuery.Eof do
  begin

    value.DataSet.Open;
    value.DataSet.Insert;

    {CONTINUAR APARTIR DESTE PONTO}



  end;

end;

function TRelatorioComissoes.cancelar: iRelatorioComissoesTecnico;
begin
  FQuery.TQuery.Cancel;
  // FQuery.TQuery.close;
end;

constructor TRelatorioComissoes.create;
begin

  FTabela := 'VISUALIZAR_ORDENS_TECNICOS';
  FQuery := TConexaoQuery.new.Query(FTabela);

  FQueryContabilizar := TConexaoQuery.new.Query(FTabela);

  FQueryPercentualComissao := TConexaoQuery.new.Query('COMISSOES_FUNCIONARIOS');

  FGravarLog := TGravarLogSistema.new;
  FGravarLog.getJanela('Relat�rio de comiss�es').getCodigoFuncionario
    (funcionarioLogado);
  // (0 { definir o usu�rio quando construir a aplica��o } );

end;

destructor TRelatorioComissoes.destroy;
begin

  inherited;
end;

function TRelatorioComissoes.ExecSql: iRelatorioComissoesTecnico;
begin
  result := self;
  FQuery.ExecSql(FTabela);
end;

function TRelatorioComissoes.exportar: iRelatorioComissoesTecnico;
begin
  result := self;
end;

function TRelatorioComissoes.fecharQuery: iRelatorioComissoesTecnico;
begin
  FQuery.TQuery.close;
end;

function TRelatorioComissoes.getCampo(value: string)
  : iRelatorioComissoesTecnico;
begin
  result := self;
  FCampo := value;
end;

function TRelatorioComissoes.getDataFinal(value: TDate)
  : iRelatorioComissoesTecnico;
begin
  result := self;
  FDataFinal := value;
  // FQuery.getDataFinal(value);
end;

function TRelatorioComissoes.getDataInicial(value: TDate)
  : iRelatorioComissoesTecnico;
begin
  result := self;
  FDataInicial := value;
  // FQuery.getDataInicial(value);
end;

function TRelatorioComissoes.getValor(value: string)
  : iRelatorioComissoesTecnico;
begin
  result := self;
  FValor := UpperCase(value);
end;

function TRelatorioComissoes.listarGrid(value: TDataSource)
  : iRelatorioComissoesTecnico;
begin

  result := self;

  FQuery.TQuery.FieldByName('id').DisplayLabel := 'C�digo';
  FQuery.TQuery.FieldByName('grupo').DisplayLabel := 'Grupo';
  FQuery.TQuery.FieldByName('grupo').DisplayWidth := 50;

  value.DataSet := FQuery.TQuery;

end;

class function TRelatorioComissoes.new: iRelatorioComissoesTecnico;
begin
  result := self.create;
end;

function TRelatorioComissoes.nomeTabela(value: string)
  : iRelatorioComissoesTecnico;
begin
  result := self;
  FTabela := value;
end;

function TRelatorioComissoes.obterPercentualComissao(value: integer): real;
begin

  result := 0;

  with FQueryPercentualComissao do
  begin

    TQuery.Active := false;
    TQuery.SQL.Clear;
    TQuery.SQL.Add('select * from COMISSOES_FUNCIONARIOS where ID_FUNCIONARIO =i and APLICAR_COMISSAO =:a');
    TQuery.ParamByName('i').AsInteger := value;
    TQuery.ParamByName('a').AsString := 'Sim';
    TQuery.Active := false;


    if TQuery.RecordCount >= 1 then
    begin

      FPercentualTecnico := TQuery.FieldByName('VALOR_POR_ATENDIMENTO').AsFloat;

      result := TQuery.FieldByName('VALOR_POR_ATENDIMENTO').AsFloat;

    end;


  end;

end;

function TRelatorioComissoes.open(value: string): iRelatorioComissoesTecnico;
begin
  FQuery.Query(FTabela);
end;

function TRelatorioComissoes.ordenarGrid(column: TColumn)
  : iRelatorioComissoesTecnico;
begin

  if FQuery.TQuery.IndexFieldNames = column.FieldName then
    FQuery.TQuery.IndexFieldNames := column.FieldName + ':D'
  else
    FQuery.TQuery.IndexFieldNames := column.FieldName;

end;

function TRelatorioComissoes.pesquisar: iRelatorioComissoesTecnico;
begin
  result := self;
end;

function TRelatorioComissoes.sqlPesquisa: iRelatorioComissoesTecnico;
begin
  result := self;
  FQuery.getCampo(FCampo).getValor(FValor).sqlPesquisa(FTabela);
end;

function TRelatorioComissoes.sqlPesquisaData: iRelatorioComissoesTecnico;
begin
  result := self;
  FQuery.getCampo(FCampo).getValor(FValor).getDataInicial(FDataInicial)
    .getDataFinal(FDataFinal).sqlPesquisaData(FTabela);
end;

function TRelatorioComissoes.sqlPesquisaEstatica: iRelatorioComissoesTecnico;
begin
  result := self;
  FQuery.getCampo(FCampo).getValor(FValor).getDataInicial(FDataInicial)
    .getDataFinal(FDataFinal).sqlPesquisaEstatica(FTabela);
end;

function TRelatorioComissoes.validarData(componet: tmaskEdit)
  : iRelatorioComissoesTecnico;
var
  d: TDate;
begin

  result := self;

  try
    d := strtodate(componet.Text);
  except
    componet.SetFocus;
    componet.Clear;
    raise exception.create('Digite uma data v�lida.');
  end;
end;

end.
