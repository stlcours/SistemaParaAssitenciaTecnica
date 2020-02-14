unit UClasse.Relatorio.OS;

interface

uses UClasse.Query, UInterfaces, UDados.Conexao, Data.DB, Vcl.Dialogs,
  System.SysUtils, Vcl.Forms, Winapi.Windows, Vcl.Controls,
  UClasse.Gravar.Log.Sistema, Vcl.ComCtrls, Vcl.DBGrids, Vcl.Mask;

type

  TRelatorioOS = class(TInterfacedObject, iRelatorioOS)
  private

    FQuery: iConexaoQuery;
    FGravarLog: iGravarLogOperacoes;
    FTabela: string;
    FCampo: string;
    FValor: string;
    FDataInicial: TDate;
    FDataFinal: TDate;

    FCodigo: integer;
    FNome: string;

  public

    function nomeTabela(value: string): iRelatorioOS;
    function getCampo(value: string): iRelatorioOS;
    function getValor(value: string): iRelatorioOS;
    function getDataInicial(value: TDate): iRelatorioOS;
    function getDataFinal(value: TDate): iRelatorioOS;
    function open(value: string): iRelatorioOS;
    function pesquisar: iRelatorioOS;
    function ExecSql: iRelatorioOS;
    function sqlPesquisa: iRelatorioOS;
    function sqlPesquisaData: iRelatorioOS;
    function sqlPesquisaEstatica: iRelatorioOS;

    function abrir: iRelatorioOS;
    function atualizar: iRelatorioOS;
    function cancelar: iRelatorioOS;
    function fecharQuery: iRelatorioOS;
    function listarGrid(value: TDataSource): iRelatorioOS;
    function ordenarGrid(column: TColumn): iRelatorioOS;

    function getSituacao(value: string): iRelatorioOS;
    function selecionarOSPorSituacaoECampo: iRelatorioOS;

    function exportar: iRelatorioOS;
    function validarData(componet: tmaskEdit): iRelatorioOS;

    constructor create;
    destructor destroy; override;
    class function new: iRelatorioOS;
  end;

implementation

{ TRelatorioOS }

function TRelatorioOS.abrir: iRelatorioOS;
begin

  result := self;
  FQuery.Query(FTabela);

end;

function TRelatorioOS.atualizar: iRelatorioOS;
begin
  result := self;
  FQuery.TQuery.Refresh;
end;

function TRelatorioOS.cancelar: iRelatorioOS;
begin
  FQuery.TQuery.Cancel;
  // FQuery.TQuery.close;
end;

constructor TRelatorioOS.create;
begin
  FTabela := 'VISUALIZAR_ORDENS';
  FQuery := TConexaoQuery.new.Query(FTabela);

  FGravarLog := TGravarLogSistema.new;
  FGravarLog.getJanela('Relat�rio OS').getCodigoFuncionario
    (funcionarioLogado);
  // (0 { definir o usu�rio quando construir a aplica��o } );

end;

destructor TRelatorioOS.destroy;
begin

  inherited;
end;

function TRelatorioOS.ExecSql: iRelatorioOS;
begin
  result := self;
  FQuery.ExecSql(FTabela);
end;

function TRelatorioOS.exportar: iRelatorioOS;
begin
  result := self;
end;

function TRelatorioOS.fecharQuery: iRelatorioOS;
begin
  FQuery.TQuery.close;
end;

function TRelatorioOS.getCampo(value: string): iRelatorioOS;
begin
  result := self;
  FCampo := value;
end;

function TRelatorioOS.getDataFinal(value: TDate): iRelatorioOS;
begin
  result := self;
  FDataFinal := value;
  // FQuery.getDataFinal(value);
end;

function TRelatorioOS.getDataInicial(value: TDate): iRelatorioOS;
begin
  result := self;
  FDataInicial := value;
  // FQuery.getDataInicial(value);
end;

function TRelatorioOS.getSituacao(value: string): iRelatorioOS;
begin
  result := self;
end;

function TRelatorioOS.getValor(value: string): iRelatorioOS;
begin
  result := self;
  FValor := UpperCase(value);
end;

function TRelatorioOS.listarGrid(value: TDataSource): iRelatorioOS;
begin

  result := self;

  with FQuery.TQuery do
  begin
    FieldByName('ID_ORDEM').DisplayLabel := 'OS';
    FieldByName('ID_CLIENTE').DisplayLabel := 'C�d. Cliente';
    FieldByName('NOME_CLIENTE').DisplayLabel := 'Cliente';
    FieldByName('EQUIPAMENTO').DisplayLabel := 'Equipamento';
    FieldByName('DEFEITO_RELATADO').DisplayLabel := 'Defeito';
    FieldByName('MARCAS').DisplayLabel := 'Marca';
    FieldByName('MODELO').DisplayLabel := 'Modelo';
    FieldByName('NUMERO_SERIE').DisplayLabel := 'N�mero de serie';
    FieldByName('DATA_FABRICACAO').DisplayLabel := 'Fabrica��o';
    FieldByName('LAUDO_DO_TECNICO').DisplayLabel := 'Laudo t�cnico';
    FieldByName('SOLUCAO_DO_PROBLEMA').DisplayLabel := 'Solu��o do problema';
    FieldByName('VALOR_DA_ORDEM').DisplayLabel := 'Valor da OS';
    FieldByName('DESCONTO').DisplayLabel := 'Desconto';
    FieldByName('ACRESCIMO').DisplayLabel := 'Acr�scimo';
    FieldByName('TOTAL_ORCAMENTO').DisplayLabel := 'Total do or�amento';
    FieldByName('ID_FUNCIONARIO').DisplayLabel := 'C�d. Funcion�rio';
    FieldByName('NOME_FUNCIONARIO').DisplayLabel := 'Nome do funcion�rio';
    FieldByName('RETORNO').DisplayLabel := 'Retorno';
    FieldByName('DATA_RETORNO').DisplayLabel := 'Data de retorno';
    FieldByName('SITUACAO_DA_ORDEM').DisplayLabel := 'Situa��o da OS';
    FieldByName('TOTAL_PARCELAS').DisplayLabel := 'Total de parcela';
    FieldByName('VALOR_DA_PARCELA').DisplayLabel := 'Valor da parcela';
    FieldByName('PGTO').DisplayLabel := 'PGTO';
    FieldByName('PRIORIDADE').DisplayLabel := 'Prioridade';
    FieldByName('DATA_ENTRADA').DisplayLabel := 'Entrada';
    FieldByName('DATA_FINALIZACAO').DisplayLabel := 'Sa�da';
    FieldByName('HORA_SAIDA').DisplayLabel := 'Hor�rio da sa�da';
    FieldByName('DATA_BASE_VENCIMENTO').Visible := false;
    FieldByName('ID_TECNICO_RESPONSAVEL').DisplayLabel := 'C�d. T�cnico';
    FieldByName('TECNICO_RESPONSAVEL').DisplayLabel := 'T�cnico';
    FieldByName('OBSERVACAO').DisplayLabel := 'Observa��o';
    FieldByName('STATUS').DisplayLabel := 'Status';
  end;

  value.DataSet := FQuery.TQuery;

end;

class function TRelatorioOS.new: iRelatorioOS;
begin
  result := self.create;
end;

function TRelatorioOS.nomeTabela(value: string): iRelatorioOS;
begin
  result := self;
  FTabela := value;
end;

function TRelatorioOS.open(value: string): iRelatorioOS;
begin
  FQuery.Query(FTabela);
end;

function TRelatorioOS.ordenarGrid(column: TColumn): iRelatorioOS;
begin

  if FQuery.TQuery.IndexFieldNames = column.FieldName then
    FQuery.TQuery.IndexFieldNames := column.FieldName + ':D'
  else
    FQuery.TQuery.IndexFieldNames := column.FieldName;

end;

function TRelatorioOS.pesquisar: iRelatorioOS;
begin
  result := self;
end;

function TRelatorioOS.selecionarOSPorSituacaoECampo: iRelatorioOS;
begin

end;

function TRelatorioOS.sqlPesquisa: iRelatorioOS;
begin
  result := self;
  FQuery.getCampo(FCampo).getValor(FValor).sqlPesquisa(FTabela);
end;

function TRelatorioOS.sqlPesquisaData: iRelatorioOS;
begin
  result := self;
  FQuery.getCampo(FCampo).getValor(FValor).getDataInicial(FDataInicial)
    .getDataFinal(FDataFinal).sqlPesquisaData(FTabela);
end;

function TRelatorioOS.sqlPesquisaEstatica: iRelatorioOS;
begin
  result := self;
  FQuery.getCampo(FCampo).getValor(FValor).getDataInicial(FDataInicial)
    .getDataFinal(FDataFinal).sqlPesquisaEstatica(FTabela);
end;

function TRelatorioOS.validarData(componet: tmaskEdit):iRelatorioOS;
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
