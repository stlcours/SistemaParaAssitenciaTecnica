unit UClasse.Relatorio.Transportadoras;

interface

uses UClasse.Query, UInterfaces, UDados.Conexao, Data.DB, Vcl.Dialogs,
  System.SysUtils, Vcl.Forms, Winapi.Windows, Vcl.Controls,
  UClasse.Gravar.Log.Sistema, Vcl.ComCtrls, Vcl.DBGrids, Vcl.Mask;

type

  TRelatorioTransportadoras = class(TInterfacedObject, iRelatorioTransportadores)
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

    function nomeTabela(value: string): iRelatorioTransportadores;
    function getCampo(value: string): iRelatorioTransportadores;
    function getValor(value: string): iRelatorioTransportadores;
    function getDataInicial(value: TDate): iRelatorioTransportadores;
    function getDataFinal(value: TDate): iRelatorioTransportadores;
    function open(value: string): iRelatorioTransportadores;
    function pesquisar: iRelatorioTransportadores;
    function ExecSql: iRelatorioTransportadores;
    function sqlPesquisa: iRelatorioTransportadores;
    function sqlPesquisaData: iRelatorioTransportadores;
    function sqlPesquisaEstatica: iRelatorioTransportadores;

    function abrir: iRelatorioTransportadores;
    function atualizar: iRelatorioTransportadores;
    function cancelar: iRelatorioTransportadores;
    function fecharQuery: iRelatorioTransportadores;
    function listarGrid(value: TDataSource): iRelatorioTransportadores;
    function ordenarGrid(column: TColumn): iRelatorioTransportadores;

    function exportar: iRelatorioTransportadores;
    function validarData(componet: tmaskEdit): iRelatorioTransportadores;

    constructor create;
    destructor destroy; override;
    class function new: iRelatorioTransportadores;
  end;

implementation

{ TRelatorioTransportadoras }

function TRelatorioTransportadoras.abrir: iRelatorioTransportadores;
begin

  result := self;
  FQuery.Query(FTabela);

end;

function TRelatorioTransportadoras.atualizar: iRelatorioTransportadores;
begin
  result := self;
  FQuery.TQuery.Refresh;
end;

function TRelatorioTransportadoras.cancelar: iRelatorioTransportadores;
begin
  FQuery.TQuery.Cancel;
  // FQuery.TQuery.close;
end;

constructor TRelatorioTransportadoras.create;
begin
  FTabela := 'TRANSPORTADORA';
  FQuery := TConexaoQuery.new.Query(FTabela);

  FGravarLog := TGravarLogSistema.new;
  FGravarLog.getJanela('Relat�rio Transportadora').getCodigoFuncionario
    (funcionarioLogado);
  // (0 { definir o usu�rio quando construir a aplica��o } );

end;

destructor TRelatorioTransportadoras.destroy;
begin

  inherited;
end;

function TRelatorioTransportadoras.ExecSql: iRelatorioTransportadores;
begin
  result := self;
  FQuery.ExecSql(FTabela);
end;

function TRelatorioTransportadoras.exportar: iRelatorioTransportadores;
begin
  result := self;
end;

function TRelatorioTransportadoras.fecharQuery: iRelatorioTransportadores;
begin
  FQuery.TQuery.close;
end;

function TRelatorioTransportadoras.getCampo(value: string): iRelatorioTransportadores;
begin
  result := self;
  FCampo := value;
end;

function TRelatorioTransportadoras.getDataFinal(value: TDate): iRelatorioTransportadores;
begin
  result := self;
  FDataFinal := value;
  // FQuery.getDataFinal(value);
end;

function TRelatorioTransportadoras.getDataInicial(value: TDate): iRelatorioTransportadores;
begin
  result := self;
  FDataInicial := value;
  // FQuery.getDataInicial(value);
end;

function TRelatorioTransportadoras.getValor(value: string): iRelatorioTransportadores;
begin
  result := self;
  FValor := UpperCase(value);
end;

function TRelatorioTransportadoras.listarGrid(value: TDataSource): iRelatorioTransportadores;
begin

  result := self;

  with FQuery.TQuery do
  begin

    FieldByName('ID').DisplayLabel := 'C�digo';
    FieldByName('NOME_FANTASIA').DisplayLabel := 'Nome';
    FieldByName('RAZAO_SOCIAL').DisplayLabel := 'Raz�o social';
    FieldByName('CPF_CNPJ').DisplayLabel := 'CPF ou CNPJ';
    FieldByName('INSCRICAO_ESTADUAL').DisplayLabel := 'Inscri��o estadual';
    FieldByName('ENDERECO').DisplayLabel := 'Endere�o';
    FieldByName('BAIRRO').DisplayLabel := 'Bairro';
    FieldByName('NUMERO').DisplayLabel := 'N�mero';
    FieldByName('COMPLEMENTO').DisplayLabel := 'Complemento';
    FieldByName('CEP').DisplayLabel := 'CEP';
    FieldByName('CIDADE').DisplayLabel := 'Cidade';
    FieldByName('ESTADO').DisplayLabel := 'Estado';
    FieldByName('TELEFONE').DisplayLabel := 'Telafone';
    FieldByName('CELULAR').DisplayLabel := 'Celular';
    FieldByName('EMAIL').DisplayLabel := 'E-Mail';
    FieldByName('FUNCIONARIO_CADASTRO').DisplayLabel := 'Funcion�rio';
    FieldByName('RESPONSAVEL').DisplayLabel := 'Respons�vel';
    FieldByName('OBSERVACAO').DisplayLabel := 'Observa��o';

    FieldByName('NOME_FANTASIA').DisplayWidth := 40;
    FieldByName('RAZAO_SOCIAL').DisplayWidth := 40;
    FieldByName('ENDERECO').DisplayWidth := 40;
    FieldByName('BAIRRO').DisplayWidth := 30;
    FieldByName('COMPLEMENTO').DisplayWidth := 30;
    FieldByName('EMAIL').DisplayWidth := 40;
    FieldByName('RESPONSAVEL').DisplayWidth := 40;
    FieldByName('OBSERVACAO').DisplayWidth := 40;

  end;

  value.DataSet := FQuery.TQuery;

end;

class function TRelatorioTransportadoras.new: iRelatorioTransportadores;
begin
  result := self.create;
end;

function TRelatorioTransportadoras.nomeTabela(value: string): iRelatorioTransportadores;
begin
  result := self;
  FTabela := value;
end;

function TRelatorioTransportadoras.open(value: string): iRelatorioTransportadores;
begin
  FQuery.Query(FTabela);
end;

function TRelatorioTransportadoras.ordenarGrid(column: TColumn): iRelatorioTransportadores;
begin

  if FQuery.TQuery.IndexFieldNames = column.FieldName then
    FQuery.TQuery.IndexFieldNames := column.FieldName + ':D'
  else
    FQuery.TQuery.IndexFieldNames := column.FieldName;

end;

function TRelatorioTransportadoras.pesquisar: iRelatorioTransportadores;
begin
  result := self;
end;

function TRelatorioTransportadoras.sqlPesquisa: iRelatorioTransportadores;
begin
  result := self;
  FQuery.getCampo(FCampo).getValor(FValor).sqlPesquisa(FTabela);
end;

function TRelatorioTransportadoras.sqlPesquisaData: iRelatorioTransportadores;
begin
  result := self;
  FQuery.getCampo(FCampo).getValor(FValor).getDataInicial(FDataInicial)
    .getDataFinal(FDataFinal).sqlPesquisaData(FTabela);
end;

function TRelatorioTransportadoras.sqlPesquisaEstatica: iRelatorioTransportadores;
begin
  result := self;
  FQuery.getCampo(FCampo).getValor(FValor).getDataInicial(FDataInicial)
    .getDataFinal(FDataFinal).sqlPesquisaEstatica(FTabela);
end;

function TRelatorioTransportadoras.validarData(componet: tmaskEdit):iRelatorioTransportadores;
var
  d: TDate;
begin

  Result := self;

  try
    d := strtodate(componet.Text);
  except
    componet.SetFocus;
    componet.Clear;
    raise exception.create('Digite uma data v�lida.');
  end;
end;

end.
