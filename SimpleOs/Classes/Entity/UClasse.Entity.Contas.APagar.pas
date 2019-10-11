unit UClasse.Entity.Contas.APagar;

interface

uses UClasse.Query, UInterfaces, UDados.Conexao, Data.DB,
  FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Error, FireDAC.UI.Intf,
  FireDAC.Phys.Intf, FireDAC.Stan.Def, FireDAC.Stan.Pool, FireDAC.Stan.Async,
  FireDAC.Phys, FireDAC.VCLUI.Wait, FireDAC.Comp.Client, Vcl.Dialogs,
  System.SysUtils, Vcl.Forms, Winapi.Windows, Vcl.Controls,
  UClasse.Gravar.Log.Sistema, Vcl.ComCtrls, Vcl.DBGrids;

type

  TEntityContasAPagar = class(TInterfacedObject, iCadastroContasAPagar)
  private

    FQuery: iConexaoQuery;
    FEntityQuery: TFDQuery;
    FGravarLog: iGravarLogOperacoes;
    FTabela: string;
    FCampo: string;
    FValor: string;
    FDataInicial: TDate;
    FDataFinal: TDate;
    FCONTA: string;
    FDATA_VENCIMENTO: TDate;
    FVALORCONTA: Currency;
    FJUROS: real;
    FMULTA: Currency;
    FDESCONTO: Currency;
    FVALOR_TOTAL: Currency;
    FDATA_PAGAMENTO: TDate;
    FPAGO: String;
    F_FUNCIONARIO: integer;
    FOBSERVACAO: String;

    FCodigo: integer;
    FNome: string;

  public

    function nomeTabela(value: string): iCadastroContasAPagar;
    function getCampo(value: string): iCadastroContasAPagar;
    function getValor(value: string): iCadastroContasAPagar;
    function getDataInicial(value: TDate): iCadastroContasAPagar;
    function getDataFinal(value: TDate): iCadastroContasAPagar;
    function open(value: string): iCadastroContasAPagar;
    function pesquisar: iCadastroContasAPagar;
    function ExecSql: iCadastroContasAPagar;
    function sqlPesquisa: iCadastroContasAPagar;
    function sqlPesquisaData: iCadastroContasAPagar;
    function sqlPesquisaEstatica: iCadastroContasAPagar;

    function abrir: iCadastroContasAPagar;
    function inserir: iCadastroContasAPagar;
    function Gravar: iCadastroContasAPagar;
    function deletar: iCadastroContasAPagar;
    function atualizar: iCadastroContasAPagar;
    function editar: iCadastroContasAPagar;
    function cancelar: iCadastroContasAPagar;
    function fecharQuery: iCadastroContasAPagar;
    function codigoCadastro(sp: string): integer;
    function listarGrid(value: TDataSource): iCadastroContasAPagar;
    function ordenarGrid(column: TColumn): iCadastroContasAPagar;

    function getCodigo(value: integer): iCadastroContasAPagar;
    function getConta(value: string): iCadastroContasAPagar;
    function getDataVencimento(value: string): iCadastroContasAPagar;
    function getValorConta(value: string): iCadastroContasAPagar;
    function getJurosConta(value: real): iCadastroContasAPagar;
    function getMulta(value: Currency): iCadastroContasAPagar;
    function getDesconto(value: Currency): iCadastroContasAPagar;
    function getValorTotalConta(value: Currency): iCadastroContasAPagar;
    function getDataPagamento(value: TDate): iCadastroContasAPagar;
    function getPGTO(value: string): iCadastroContasAPagar;
    function getFuncionario(value: integer): iCadastroContasAPagar;
    function getObservacao(value: string): iCadastroContasAPagar;

    constructor create;
    destructor destroy; override;
    class function new: iCadastroContasAPagar;
  end;

implementation

{ TEntityContasAPagar }

function TEntityContasAPagar.abrir: iCadastroContasAPagar;
begin

  result := self;
  FQuery.Query(FTabela);

end;

function TEntityContasAPagar.atualizar: iCadastroContasAPagar;
begin
  result := self;
  FQuery.TQuery.Refresh;
end;

function TEntityContasAPagar.cancelar: iCadastroContasAPagar;
begin
  FQuery.TQuery.Cancel;
  FQuery.TQuery.close;
end;

function TEntityContasAPagar.codigoCadastro(sp: string): integer;
begin
  result := FQuery.codigoCadastro('');
end;

constructor TEntityContasAPagar.create;
begin
  FTabela := 'CONTAS_A_PAGAR';
  FQuery := TConexaoQuery.new.Query(FTabela);

  FGravarLog := TGravarLogSistema.new;
  FGravarLog.getJanela('Cadastro contas a pagar').getCodigoFuncionario
    (funcionarioLogado);
  // (0 { definir o usu�rio quando construir a aplica��o } );

end;

function TEntityContasAPagar.deletar: iCadastroContasAPagar;
begin
  result := self;

  if FQuery.TQuery.RecordCount >= 1 then
  begin
    if application.MessageBox('Deseja realmente excluir este registro?',
      'Pergunta do sistema!', MB_YESNO + MB_ICONQUESTION) = mryes then
    begin

      FGravarLog.getNomeRegistro(FQuery.TQuery.FieldByName('conta').AsString)
        .getCodigoRegistro(FQuery.TQuery.FieldByName('id').AsInteger).gravarLog;

      FQuery.TQuery.Delete;
    end;
  end;

end;

destructor TEntityContasAPagar.destroy;
begin

  inherited;
end;

function TEntityContasAPagar.editar: iCadastroContasAPagar;
begin
  result := self;
  if FQuery.TQuery.RecordCount >= 1 then
  begin

    FGravarLog.getNomeRegistro(FQuery.TQuery.FieldByName('conta').AsString)
      .getCodigoRegistro(FQuery.TQuery.FieldByName('id').AsInteger).gravarLog;

    FQuery.TQuery.Edit;

  end;
end;

function TEntityContasAPagar.ExecSql: iCadastroContasAPagar;
begin
  result := self;
  FQuery.ExecSql(FTabela);
end;

function TEntityContasAPagar.fecharQuery: iCadastroContasAPagar;
begin
  FQuery.TQuery.close;
end;

function TEntityContasAPagar.getCampo(value: string): iCadastroContasAPagar;
begin
  result := self;
  FCampo := value;
end;

function TEntityContasAPagar.getCodigo(value: integer): iCadastroContasAPagar;
begin
  result := self;
  FCodigo := value;
end;

function TEntityContasAPagar.getConta(value: string): iCadastroContasAPagar;
begin
  result := self;
  if value = EmptyStr then
    raise Exception.create('Informe um nome para a conta.');
  FCONTA := value;
end;

function TEntityContasAPagar.getDataFinal(value: TDate): iCadastroContasAPagar;
begin
  result := self;
  FQuery.getDataFinal(value);
end;

function TEntityContasAPagar.getDataInicial(value: TDate)
  : iCadastroContasAPagar;
begin
  result := self;
  FQuery.getDataInicial(value);
end;

function TEntityContasAPagar.getDataPagamento(value: TDate)
  : iCadastroContasAPagar;
begin
  result := self;
  FDATA_PAGAMENTO := value;

end;

function TEntityContasAPagar.getDataVencimento(value: string)
  : iCadastroContasAPagar;
begin
  result := self;
  if value = EmptyStr then
    raise Exception.create('Informe uma data de vencimento.');
  FDATA_VENCIMENTO := StrToDate(value);
end;

function TEntityContasAPagar.getDesconto(value: Currency)
  : iCadastroContasAPagar;
begin
  result := self;
  FDESCONTO := value;
end;

function TEntityContasAPagar.getFuncionario(value: integer)
  : iCadastroContasAPagar;
begin
  result := self;
  F_FUNCIONARIO := value;
end;

function TEntityContasAPagar.getJurosConta(value: real): iCadastroContasAPagar;
begin
  result := self;
  FJUROS := value;
end;

function TEntityContasAPagar.getMulta(value: Currency): iCadastroContasAPagar;
begin
  result := self;
  FMULTA := value;
end;

function TEntityContasAPagar.getObservacao(value: string)
  : iCadastroContasAPagar;
begin
  result := self;
  FOBSERVACAO := value;
end;

function TEntityContasAPagar.getPGTO(value: string): iCadastroContasAPagar;
begin
  result := self;
  FPAGO := value;
end;

function TEntityContasAPagar.getValor(value: string): iCadastroContasAPagar;
begin
  result := self;
  FValor := value;
end;

function TEntityContasAPagar.getValorConta(value: string)
  : iCadastroContasAPagar;
begin
  result := self;
  if value = EmptyStr then
    raise Exception.create('Informe o valor da conta.');
  FVALORCONTA := StrToCurr(value);
end;

function TEntityContasAPagar.getValorTotalConta(value: Currency)
  : iCadastroContasAPagar;
begin
  result := self;
  FVALOR_TOTAL := value;
end;

function TEntityContasAPagar.Gravar: iCadastroContasAPagar;
begin

  result := self;

  if FQuery.TQuery.State in [dsInsert] then
    FQuery.TQuery.FieldByName('id').AsInteger :=
      FQuery.codigoCadastro('SP_GEN_CONTAS_A_PAGAR_ID');

  FQuery.TQuery.FieldByName('conta').AsString := FCONTA;
  FQuery.TQuery.FieldByName('DATA_VENCIMENTO').AsDateTime := FDATA_VENCIMENTO;
  FQuery.TQuery.FieldByName('VALOR').AsCurrency := FVALORCONTA;
  FQuery.TQuery.FieldByName('JUROS').AsFloat := FJUROS;
  FQuery.TQuery.FieldByName('MULTA').AsCurrency := FMULTA;
  FQuery.TQuery.FieldByName('DESCONTO').AsCurrency := FDESCONTO;
  FQuery.TQuery.FieldByName('VALOR_TOTAL').AsCurrency := FVALOR_TOTAL;
  FQuery.TQuery.FieldByName('DATA_PAGAMENTO').AsDateTime := FDATA_PAGAMENTO;
  FQuery.TQuery.FieldByName('PAGO').AsString := FPAGO;
  FQuery.TQuery.FieldByName('FUNCIONARIO_CADASTRO').AsInteger := F_FUNCIONARIO;
  FQuery.TQuery.FieldByName('OBSERVACAO').AsString := FOBSERVACAO;

  FGravarLog.getNomeRegistro(FQuery.TQuery.FieldByName('conta').AsString)
    .getCodigoRegistro(FQuery.TQuery.FieldByName('id').AsInteger).gravarLog;

  try
    FQuery.TQuery.Post;
  except
    on e: Exception do
    begin
      raise Exception.create('Erro ao tentar gravar os dados. ' + e.Message);
    end;

  end;

end;

function TEntityContasAPagar.inserir: iCadastroContasAPagar;
begin
  result := self;
  FQuery.TQuery.EmptyDataSet;
  FQuery.TQuery.Append;
end;

function TEntityContasAPagar.listarGrid(value: TDataSource)
  : iCadastroContasAPagar;
begin

  result := self;

  FQuery.TQuery.FieldByName('id').DisplayLabel := 'C�digo';
  FQuery.TQuery.FieldByName('conta').DisplayLabel := 'Conta';
  FQuery.TQuery.FieldByName('DATA_VENCIMENTO').DisplayLabel := 'Vencimento';
  FQuery.TQuery.FieldByName('VALOR').DisplayLabel := 'Valor';
  FQuery.TQuery.FieldByName('JUROS').DisplayLabel := 'Juros';
  FQuery.TQuery.FieldByName('MULTA').DisplayLabel := 'Multa';
  FQuery.TQuery.FieldByName('DESCONTO').DisplayLabel := 'Desconto';
  FQuery.TQuery.FieldByName('VALOR_TOTAL').DisplayLabel := 'Valor total';
  FQuery.TQuery.FieldByName('DATA_PAGAMENTO').DisplayLabel := 'Pagamento';
  FQuery.TQuery.FieldByName('PAGO').DisplayLabel := 'Pago';
  FQuery.TQuery.FieldByName('FUNCIONARIO_CADASTRO').DisplayLabel :=
    'Funcion�rio';
  FQuery.TQuery.FieldByName('OBSERVACAO').DisplayLabel := 'Observa��o';

  value.DataSet := FQuery.TQuery;

end;

class function TEntityContasAPagar.new: iCadastroContasAPagar;
begin
  result := self.create;
end;

function TEntityContasAPagar.nomeTabela(value: string): iCadastroContasAPagar;
begin
  result := self;
  FTabela := value;
end;

function TEntityContasAPagar.open(value: string): iCadastroContasAPagar;
begin
  FQuery.Query(FTabela);
end;

function TEntityContasAPagar.ordenarGrid(column: TColumn)
  : iCadastroContasAPagar;
begin

  if FQuery.TQuery.IndexFieldNames = column.FieldName then
    FQuery.TQuery.IndexFieldNames := column.FieldName + ':D'
  else
    FQuery.TQuery.IndexFieldNames := column.FieldName;

end;

function TEntityContasAPagar.pesquisar: iCadastroContasAPagar;
begin
  result := self;
end;

function TEntityContasAPagar.sqlPesquisa: iCadastroContasAPagar;
begin
  result := self;
  FQuery.getCampo(FCampo).getValor(FValor).sqlPesquisa(FTabela);
end;

function TEntityContasAPagar.sqlPesquisaData: iCadastroContasAPagar;
begin
  result := self;
  FQuery.getCampo(FCampo).getValor(FValor).getDataInicial(FDataInicial)
    .getDataFinal(FDataFinal).sqlPesquisaData(FTabela);
end;

function TEntityContasAPagar.sqlPesquisaEstatica: iCadastroContasAPagar;
begin
  result := self;
  FQuery.getCampo(FCampo).getValor(FValor).getDataInicial(FDataInicial)
    .getDataFinal(FDataFinal).sqlPesquisaEstatica(FTabela);
end;

end.
