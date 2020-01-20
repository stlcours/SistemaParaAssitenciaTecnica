unit UClasse.Visualizar.Vendas;

interface

uses UClasse.Query, UInterfaces, UDados.Conexao, Data.DB, Vcl.Dialogs,
  System.SysUtils, Vcl.Forms, Winapi.Windows, Vcl.Controls,
  UClasse.Gravar.Log.Sistema, Vcl.ComCtrls, Vcl.DBGrids, Vcl.Mask;

type

  TEntityVisuzaliarVendas = class(TInterfacedObject, iVisualizarVenda)
  private

    FQuery: iConexaoQuery;
    FQueryItens: iConexaoQuery;
    FGravarLog: iGravarLogOperacoes;
    FTabela: string;
    FCampo: string;
    FValor: string;
    FDataInicial: TDate;
    FDataFinal: TDate;

    FCodigo: integer;
    FNome: string;

  public

    function nomeTabela(value: string): iVisualizarVenda;
    function getCampo(value: string): iVisualizarVenda;
    function getValor(value: string): iVisualizarVenda;
    function getDataInicial(value: TDate): iVisualizarVenda;
    function getDataFinal(value: TDate): iVisualizarVenda;
    function open(value: string): iVisualizarVenda;
    function pesquisar: iVisualizarVenda;
    function ExecSql: iVisualizarVenda;
    function sqlPesquisa: iVisualizarVenda;
    function sqlPesquisaData: iVisualizarVenda;
    function sqlPesquisaEstatica: iVisualizarVenda;

    function abrir: iVisualizarVenda;
    function atualizar: iVisualizarVenda;
    function fecharQuery: iVisualizarVenda;
    function listarGrid(value: TDataSource): iVisualizarVenda;
    function listarGridItens(value: string): iVisualizarVenda;
    function estornarVenda(value: integer): iVisualizarVenda;
    function ordenarGrid(column: TColumn): iVisualizarVenda;

    function exportar: iVisualizarVenda;

    constructor create;
    destructor destroy; override;
    class function new: iVisualizarVenda;
  end;

implementation

{ TEntityVisuzaliarVendas }

function TEntityVisuzaliarVendas.abrir: iVisualizarVenda;
begin

  result := self;
  FQuery.Query(FTabela);

end;

function TEntityVisuzaliarVendas.atualizar: iVisualizarVenda;
begin
  result := self;
  FQuery.TQuery.Refresh;
end;

constructor TEntityVisuzaliarVendas.create;
begin
  FTabela := 'VENDA';
  FQuery := TConexaoQuery.new.Query(FTabela);

  FQueryItens := TConexaoQuery.new.Query('ITENS_VENDA');

  FGravarLog := TGravarLogSistema.new;
  FGravarLog.getJanela('Visualizar venda de produtos')
    .getCodigoFuncionario(funcionarioLogado);
  // (0 { definir o usu�rio quando construir a aplica��o } );

end;

destructor TEntityVisuzaliarVendas.destroy;
begin

  inherited;
end;

function TEntityVisuzaliarVendas.estornarVenda(value: integer)
  : iVisualizarVenda;
begin
  result := self;
end;

function TEntityVisuzaliarVendas.ExecSql: iVisualizarVenda;
begin
  result := self;
  FQuery.ExecSql(FTabela);
end;

function TEntityVisuzaliarVendas.exportar: iVisualizarVenda;
begin
  result := self;
end;

function TEntityVisuzaliarVendas.fecharQuery: iVisualizarVenda;
begin
  FQuery.TQuery.close;
end;

function TEntityVisuzaliarVendas.getCampo(value: string): iVisualizarVenda;
begin
  result := self;
  FCampo := value;
end;

function TEntityVisuzaliarVendas.getDataFinal(value: TDate): iVisualizarVenda;
begin
  result := self;
  FDataFinal := value;
  // FQuery.getDataFinal(value);
end;

function TEntityVisuzaliarVendas.getDataInicial(value: TDate): iVisualizarVenda;
begin
  result := self;
  FDataInicial := value;
  // FQuery.getDataInicial(value);
end;

function TEntityVisuzaliarVendas.getValor(value: string): iVisualizarVenda;
begin
  result := self;
  FValor := UpperCase(value);
end;

function TEntityVisuzaliarVendas.listarGrid(value: TDataSource)
  : iVisualizarVenda;
begin

  result := self;

  with FQuery.TQuery do
  begin
    FieldByName('id').DisplayLabel := 'C�digo';
    FieldByName('ID_CLIENTE').DisplayLabel := 'C�d. cliente';
    FieldByName('NOME_CLIENTE').DisplayLabel := 'Nome do cliente';
    FieldByName('FUNCIONARIO').Visible := false;
    FieldByName('NOME_FUNCIONARIO').Visible := false;
    FieldByName('DATA_VENDA').DisplayLabel := 'Data de venda';
    FieldByName('HORA_VENDA').DisplayLabel := 'Hora da venda';
    FieldByName('SUBTOTAL').DisplayLabel := 'Subtotal';
    FieldByName('DESCONTO').DisplayLabel := 'Desconto';
    FieldByName('ACRESCIMO').Visible := false;
    FieldByName('TOTAL').DisplayLabel := 'Total';
    FieldByName('QUANTIDADE_PARCELAS').DisplayLabel := 'QTDE parcelas';
    FieldByName('VENCIMENTO').Visible := false;
    FieldByName('FORMA_PAGAMENTO').DisplayLabel := 'Forma de pagametno';
    FieldByName('STATUS').DisplayLabel := 'Status';
    FieldByName('OBSERACAO').Visible := false;

    FieldByName('NOME_CLIENTE').DisplayWidth := 30;

  end;

  value.DataSet := FQuery.TQuery;

end;

function TEntityVisuzaliarVendas.listarGridItens(value: string)
  : iVisualizarVenda;
begin
  result := self;
end;

class function TEntityVisuzaliarVendas.new: iVisualizarVenda;
begin
  result := self.create;
end;

function TEntityVisuzaliarVendas.nomeTabela(value: string): iVisualizarVenda;
begin
  result := self;
  FTabela := value;
end;

function TEntityVisuzaliarVendas.open(value: string): iVisualizarVenda;
begin
  FQuery.Query(FTabela);
end;

function TEntityVisuzaliarVendas.ordenarGrid(column: TColumn): iVisualizarVenda;
begin

  if FQuery.TQuery.IndexFieldNames = column.FieldName then
    FQuery.TQuery.IndexFieldNames := column.FieldName + ':D'
  else
    FQuery.TQuery.IndexFieldNames := column.FieldName;

end;

function TEntityVisuzaliarVendas.pesquisar: iVisualizarVenda;
begin
  result := self;
end;

function TEntityVisuzaliarVendas.sqlPesquisa: iVisualizarVenda;
begin
  result := self;
  FQuery.getCampo(FCampo).getValor(FValor).sqlPesquisa(FTabela);
end;

function TEntityVisuzaliarVendas.sqlPesquisaData: iVisualizarVenda;
begin
  result := self;
  FQuery.getCampo(FCampo).getValor(FValor).getDataInicial(FDataInicial)
    .getDataFinal(FDataFinal).sqlPesquisaData(FTabela);
end;

function TEntityVisuzaliarVendas.sqlPesquisaEstatica: iVisualizarVenda;
begin
  result := self;
  FQuery.getCampo(FCampo).getValor(FValor).getDataInicial(FDataInicial)
    .getDataFinal(FDataFinal).sqlPesquisaEstatica(FTabela);
end;

end.
