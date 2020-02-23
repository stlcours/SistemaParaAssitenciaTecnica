unit UClasse.Relatorio.Vendas.Inadimplentes;

interface

uses UClasse.Query, UInterfaces, UDados.Conexao, Data.DB, Vcl.Dialogs,
  System.SysUtils, Vcl.Forms, Winapi.Windows, Vcl.Controls,
  UClasse.Gravar.Log.Sistema, Vcl.ComCtrls, Vcl.DBGrids, Vcl.Mask;

type

  TRelatorioVendasInadimplentes = class(TInterfacedObject, iRelatorioVendaInadimplentes)
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

    function nomeTabela(value: string): iRelatorioVendaInadimplentes;
    function getCampo(value: string): iRelatorioVendaInadimplentes;
    function getValor(value: string): iRelatorioVendaInadimplentes;
    function getDataInicial(value: TDate): iRelatorioVendaInadimplentes;
    function getDataFinal(value: TDate): iRelatorioVendaInadimplentes;
    function open(value: string): iRelatorioVendaInadimplentes;
    function pesquisar: iRelatorioVendaInadimplentes;
    function ExecSql: iRelatorioVendaInadimplentes;
    function sqlPesquisa: iRelatorioVendaInadimplentes;
    function sqlPesquisaData: iRelatorioVendaInadimplentes;
    function sqlPesquisaEstatica: iRelatorioVendaInadimplentes;

    function abrir: iRelatorioVendaInadimplentes;
    function atualizar: iRelatorioVendaInadimplentes;
    function cancelar: iRelatorioVendaInadimplentes;
    function fecharQuery: iRelatorioVendaInadimplentes;
    function listarGrid(value: TDataSource): iRelatorioVendaInadimplentes;
    function ordenarGrid(column: TColumn): iRelatorioVendaInadimplentes;

    function selecionarVendas:iRelatorioVendaInadimplentes;
    function selecionarVendaData:iRelatorioVendaInadimplentes;

    function exportar: iRelatorioVendaInadimplentes;
    function validarData(componet: tmaskEdit): iRelatorioVendaInadimplentes;

    constructor create;
    destructor destroy; override;
    class function new: iRelatorioVendaInadimplentes;
  end;

implementation

{ TRelatorioVendasInadimplentes }

function TRelatorioVendasInadimplentes.abrir: iRelatorioVendaInadimplentes;
begin

  result := self;
  FQuery.Query(FTabela);

end;

function TRelatorioVendasInadimplentes.atualizar: iRelatorioVendaInadimplentes;
begin
  result := self;
  FQuery.TQuery.Refresh;
end;

function TRelatorioVendasInadimplentes.cancelar: iRelatorioVendaInadimplentes;
begin
  FQuery.TQuery.Cancel;
  // FQuery.TQuery.close;
end;

constructor TRelatorioVendasInadimplentes.create;
begin
  FTabela := 'VISUALIZAR_PARCELAS_VENDA';
  FQuery := TConexaoQuery.new.Query(FTabela);

  FGravarLog := TGravarLogSistema.new;
  FGravarLog.getJanela('Relat�rio vendas inadimplentes').getCodigoFuncionario
    (funcionarioLogado);
  // (0 { definir o usu�rio quando construir a aplica��o } );

end;

destructor TRelatorioVendasInadimplentes.destroy;
begin

  inherited;
end;

function TRelatorioVendasInadimplentes.ExecSql: iRelatorioVendaInadimplentes;
begin
  result := self;
  FQuery.ExecSql(FTabela);
end;

function TRelatorioVendasInadimplentes.exportar: iRelatorioVendaInadimplentes;
begin
  result := self;
end;

function TRelatorioVendasInadimplentes.fecharQuery: iRelatorioVendaInadimplentes;
begin
  FQuery.TQuery.close;
end;

function TRelatorioVendasInadimplentes.getCampo(value: string): iRelatorioVendaInadimplentes;
begin
  result := self;
  FCampo := value;
end;

function TRelatorioVendasInadimplentes.getDataFinal(value: TDate): iRelatorioVendaInadimplentes;
begin
  result := self;
  FDataFinal := value;
  // FQuery.getDataFinal(value);
end;

function TRelatorioVendasInadimplentes.getDataInicial(value: TDate): iRelatorioVendaInadimplentes;
begin
  result := self;
  FDataInicial := value;
  // FQuery.getDataInicial(value);
end;

function TRelatorioVendasInadimplentes.getValor(value: string): iRelatorioVendaInadimplentes;
begin
  result := self;
  FValor := UpperCase(value);
end;

function TRelatorioVendasInadimplentes.listarGrid(value: TDataSource): iRelatorioVendaInadimplentes;
begin

  result := self;

  with FQuery.TQuery do
  begin
    FieldByName('ID_PARCELA').DisplayLabel := 'Parcela';
    FieldByName('ID_VENDA').DisplayLabel := 'Venda';
    FieldByName('ID_CLIENTE').DisplayLabel := 'C�d. Cliente';
    FieldByName('CLIENTE').DisplayLabel := 'Cliente';
    FieldByName('VALOR_VENDA').DisplayLabel := 'valor da venda';
    FieldByName('QUANTIDADE_PARCELAS').DisplayLabel := 'QTDE. Parcelas';
    FieldByName('PARCELA').DisplayLabel := 'Parcela';
    FieldByName('VALOR_DA_PARCELA').DisplayLabel := 'Valor da parcela';
    FieldByName('DATA_VENCIMENTO').DisplayLabel := 'Data de vencimento';
    FieldByName('JUROS').DisplayLabel := 'Juros';
    FieldByName('MULTA').DisplayLabel := 'Multa';
    FieldByName('DESCONTO').DisplayLabel := 'Desconto';
    FieldByName('TOTAL').DisplayLabel := 'Total';
    FieldByName('DATA_PAGAMENTO').Visible := false;
    FieldByName('HORA_PAGAMENTO').Visible := false;
    FieldByName('FUNCIONARIO_PGTO').Visible := false;
    FieldByName('FORMA_PAGAMENTO').Visible := false;
    FieldByName('PAGO').Visible := false;
    FieldByName('OBSERVACAO').Visible := false;
  end;

  value.DataSet := FQuery.TQuery;

end;

class function TRelatorioVendasInadimplentes.new: iRelatorioVendaInadimplentes;
begin
  result := self.create;
end;

function TRelatorioVendasInadimplentes.nomeTabela(value: string): iRelatorioVendaInadimplentes;
begin
  result := self;
  FTabela := value;
end;

function TRelatorioVendasInadimplentes.open(value: string): iRelatorioVendaInadimplentes;
begin
  FQuery.Query(FTabela);
end;

function TRelatorioVendasInadimplentes.ordenarGrid(column: TColumn): iRelatorioVendaInadimplentes;
begin

  if FQuery.TQuery.IndexFieldNames = column.FieldName then
    FQuery.TQuery.IndexFieldNames := column.FieldName + ':D'
  else
    FQuery.TQuery.IndexFieldNames := column.FieldName;

end;

function TRelatorioVendasInadimplentes.pesquisar: iRelatorioVendaInadimplentes;
begin
  result := self;
end;

function TRelatorioVendasInadimplentes.selecionarVendaData: iRelatorioVendaInadimplentes;
begin
  result := self;
end;

function TRelatorioVendasInadimplentes.selecionarVendas: iRelatorioVendaInadimplentes;
begin
  result := self;
end;

function TRelatorioVendasInadimplentes.sqlPesquisa: iRelatorioVendaInadimplentes;
begin
  result := self;
  FQuery.getCampo(FCampo).getValor(FValor).sqlPesquisa(FTabela);
end;

function TRelatorioVendasInadimplentes.sqlPesquisaData: iRelatorioVendaInadimplentes;
begin
  result := self;
  FQuery.getCampo(FCampo).getValor(FValor).getDataInicial(FDataInicial)
    .getDataFinal(FDataFinal).sqlPesquisaData(FTabela);
end;

function TRelatorioVendasInadimplentes.sqlPesquisaEstatica: iRelatorioVendaInadimplentes;
begin
  result := self;
  FQuery.getCampo(FCampo).getValor(FValor).getDataInicial(FDataInicial)
    .getDataFinal(FDataFinal).sqlPesquisaEstatica(FTabela);
end;

function TRelatorioVendasInadimplentes.validarData(componet: tmaskEdit):iRelatorioVendaInadimplentes;
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
