unit UClasse.Relatorio.Movimentacao.Venda;

interface

uses UClasse.Query, UInterfaces, UDados.Conexao, Data.DB, Vcl.Dialogs,
  System.SysUtils, Vcl.Forms, Winapi.Windows, Vcl.Controls,
  UClasse.Gravar.Log.Sistema, Vcl.ComCtrls, Vcl.DBGrids, Vcl.Mask;

type

  TRelatorioMovimentacaoVenda = class(TInterfacedObject, iRelatorioMovimentacaoVenda)
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

    function nomeTabela(value: string): iRelatorioMovimentacaoVenda;
    function getCampo(value: string): iRelatorioMovimentacaoVenda;
    function getValor(value: string): iRelatorioMovimentacaoVenda;
    function getDataInicial(value: TDate): iRelatorioMovimentacaoVenda;
    function getDataFinal(value: TDate): iRelatorioMovimentacaoVenda;
    function open(value: string): iRelatorioMovimentacaoVenda;
    function pesquisar: iRelatorioMovimentacaoVenda;
    function ExecSql: iRelatorioMovimentacaoVenda;
    function sqlPesquisa: iRelatorioMovimentacaoVenda;
    function sqlPesquisaData: iRelatorioMovimentacaoVenda;
    function sqlPesquisaEstatica: iRelatorioMovimentacaoVenda;
    function SelectSql(value: string): iRelatorioMovimentacaoVenda;

    function abrir: iRelatorioMovimentacaoVenda;
    function atualizar: iRelatorioMovimentacaoVenda;
    function cancelar: iRelatorioMovimentacaoVenda;
    function fecharQuery: iRelatorioMovimentacaoVenda;
    function listarGrid(value: TDataSource): iRelatorioMovimentacaoVenda;
    function ordenarGrid(column: TColumn): iRelatorioMovimentacaoVenda;

    function exportar: iRelatorioMovimentacaoVenda;
    function validarData(componet: tmaskEdit):iRelatorioMovimentacaoVenda;

    function selecionarParcelasOrdemData(data1, data2:TDate):iRelatorioMovimentacaoVenda;
    function retornarTotal:Currency;

    constructor create;
    destructor destroy; override;
    class function new: iRelatorioMovimentacaoVenda;
  end;

implementation

{ TRelatorioMovimentacaoVenda }

function TRelatorioMovimentacaoVenda.abrir: iRelatorioMovimentacaoVenda;
begin

  result := self;
  FQuery.Query(FTabela);

end;

function TRelatorioMovimentacaoVenda.atualizar: iRelatorioMovimentacaoVenda;
begin
  result := self;
  FQuery.TQuery.Refresh;
end;

function TRelatorioMovimentacaoVenda.cancelar: iRelatorioMovimentacaoVenda;
begin
  FQuery.TQuery.Cancel;
  // FQuery.TQuery.close;
end;

constructor TRelatorioMovimentacaoVenda.create;
begin
  FTabela := 'PARCELAS_VENDAS';
  FQuery := TConexaoQuery.new.Query(FTabela);

  FGravarLog := TGravarLogSistema.new;
  FGravarLog.getJanela('Movimenta��o caixa - Vendas').getCodigoFuncionario
    (funcionarioLogado);

end;

destructor TRelatorioMovimentacaoVenda.destroy;
begin

  inherited;
end;

function TRelatorioMovimentacaoVenda.ExecSql: iRelatorioMovimentacaoVenda;
begin
  result := self;
  FQuery.ExecSql(FTabela);
end;

function TRelatorioMovimentacaoVenda.exportar: iRelatorioMovimentacaoVenda;
begin
  result := self;
end;

function TRelatorioMovimentacaoVenda.fecharQuery: iRelatorioMovimentacaoVenda;
begin
  FQuery.TQuery.close;
end;

function TRelatorioMovimentacaoVenda.getCampo(value: string): iRelatorioMovimentacaoVenda;
begin
  result := self;
  FCampo := value;
end;

function TRelatorioMovimentacaoVenda.getDataFinal(value: TDate): iRelatorioMovimentacaoVenda;
begin
  result := self;
  FDataFinal := value;
  // FQuery.getDataFinal(value);
end;

function TRelatorioMovimentacaoVenda.getDataInicial(value: TDate): iRelatorioMovimentacaoVenda;
begin
  result := self;
  FDataInicial := value;
  // FQuery.getDataInicial(value);
end;

function TRelatorioMovimentacaoVenda.getValor(value: string): iRelatorioMovimentacaoVenda;
begin
  result := self;
  FValor := UpperCase(value);
end;

function TRelatorioMovimentacaoVenda.listarGrid(value: TDataSource): iRelatorioMovimentacaoVenda;
begin

  result := self;

  with FQuery.TQuery do
  begin

    FieldByName('ID').DisplayLabel := 'Parcela';
    FieldByName('ID_VENDA').DisplayLabel := 'Venda';
    FieldByName('ID_CLIENTE').Visible := false;
    FieldByName('VALOR_VENDA').Visible := false;
    FieldByName('QUANTIDADE_PARCELAS').Visible := false;
    FieldByName('PARCELA').DisplayLabel := 'Parcelas';
    FieldByName('VALOR_DA_PARCELA').Visible := false;
    FieldByName('DATA_VENCIMENTO').Visible := false;
    FieldByName('JUROS').Visible := false;
    FieldByName('MULTA').Visible := false;
    FieldByName('DESCONTO').Visible := false;
    FieldByName('TOTAL').DisplayLabel := 'Total';
    FieldByName('DATA_PAGAMENTO').DisplayLabel := 'Data de pagamento';
    FieldByName('HORA_PAGAMENTO').Visible := false;
    FieldByName('FUNCIONARIO_PGTO').Visible := false;
    FieldByName('FORMA_PAGAMENTO').Visible := false;
    FieldByName('PAGO').Visible := false;
    FieldByName('DATA_ESTORNO').Visible := false;
    FieldByName('OBSERVACAO').Visible := false;

  end;

  value.DataSet := FQuery.TQuery;

end;

class function TRelatorioMovimentacaoVenda.new: iRelatorioMovimentacaoVenda;
begin
  result := self.create;
end;

function TRelatorioMovimentacaoVenda.nomeTabela(value: string): iRelatorioMovimentacaoVenda;
begin
  result := self;
  FTabela := value;
end;

function TRelatorioMovimentacaoVenda.open(value: string): iRelatorioMovimentacaoVenda;
begin
  FQuery.Query(FTabela);
end;

function TRelatorioMovimentacaoVenda.ordenarGrid(column: TColumn): iRelatorioMovimentacaoVenda;
begin

  if FQuery.TQuery.IndexFieldNames = column.FieldName then
    FQuery.TQuery.IndexFieldNames := column.FieldName + ':D'
  else
    FQuery.TQuery.IndexFieldNames := column.FieldName;

end;

function TRelatorioMovimentacaoVenda.pesquisar: iRelatorioMovimentacaoVenda;
begin
  result := self;
end;

function TRelatorioMovimentacaoVenda.retornarTotal: Currency;
var
  total:currency;
begin

  result := 0;

  total := 0;

  FQuery.TQuery.First;

  while not FQuery.TQuery.Eof do
  begin

    total := total + FQuery.TQuery.FieldByName('TOTAL').AsCurrency;

    FQuery.TQuery.Next;

  end;

  result := total;


end;

function TRelatorioMovimentacaoVenda.selecionarParcelasOrdemData(data1,
  data2: TDate): iRelatorioMovimentacaoVenda;
begin

   result := self;

  with FQuery do
  begin

    TQuery.Active := false;
    TQuery.SQL.Clear;
    TQuery.SQL.Add
        ('select * from PARCELAS_VENDAS where DATA_PAGAMENTO between :d1 and :d2 and PAGO =:p');
    TQuery.ParamByName('d1').AsDate := data1;
    TQuery.ParamByName('d2').AsDate := data2;
    TQuery.ParamByName('p').AsString := 'Sim';
    TQuery.Active := true;

  end;


end;

function TRelatorioMovimentacaoVenda.SelectSql(
  value: string): iRelatorioMovimentacaoVenda;
begin

  result := self;


end;

function TRelatorioMovimentacaoVenda.sqlPesquisa: iRelatorioMovimentacaoVenda;
begin
  result := self;
  FQuery.getCampo(FCampo).getValor(FValor).sqlPesquisa(FTabela);
end;

function TRelatorioMovimentacaoVenda.sqlPesquisaData: iRelatorioMovimentacaoVenda;
begin
  result := self;
  FQuery.getCampo(FCampo).getValor(FValor).getDataInicial(FDataInicial)
    .getDataFinal(FDataFinal).sqlPesquisaData(FTabela);
end;

function TRelatorioMovimentacaoVenda.sqlPesquisaEstatica: iRelatorioMovimentacaoVenda;
begin
  result := self;
  FQuery.getCampo(FCampo).getValor(FValor).getDataInicial(FDataInicial)
    .getDataFinal(FDataFinal).sqlPesquisaEstatica(FTabela);
end;

function TRelatorioMovimentacaoVenda.validarData(componet: tmaskEdit):iRelatorioMovimentacaoVenda;
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
