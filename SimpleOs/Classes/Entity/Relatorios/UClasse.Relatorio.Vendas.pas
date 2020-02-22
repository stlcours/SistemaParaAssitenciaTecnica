unit UClasse.Relatorio.Vendas;

interface

uses UClasse.Query, UInterfaces, UDados.Conexao, Data.DB, Vcl.Dialogs,
  System.SysUtils, Vcl.Forms, Winapi.Windows, Vcl.Controls,
  UClasse.Gravar.Log.Sistema, Vcl.ComCtrls, Vcl.DBGrids, Vcl.Mask;

type

  TRelatorioVendas = class(TInterfacedObject, iRelatorioVendas)
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

    function nomeTabela(value: string): iRelatorioVendas;
    function getCampo(value: string): iRelatorioVendas;
    function getValor(value: string): iRelatorioVendas;
    function getDataInicial(value: TDate): iRelatorioVendas;
    function getDataFinal(value: TDate): iRelatorioVendas;
    function open(value: string): iRelatorioVendas;
    function pesquisar: iRelatorioVendas;
    function ExecSql: iRelatorioVendas;
    function sqlPesquisa: iRelatorioVendas;
    function sqlPesquisaData: iRelatorioVendas;
    function sqlPesquisaEstatica: iRelatorioVendas;

    function abrir: iRelatorioVendas;
    function atualizar: iRelatorioVendas;
    function cancelar: iRelatorioVendas;
    function fecharQuery: iRelatorioVendas;
    function listarGrid(value: TDataSource): iRelatorioVendas;
    function ordenarGrid(column: TColumn): iRelatorioVendas;

    function listarItens(value:TDataSource):iRelatorioVendas;

    function exportar: iRelatorioVendas;
    function validarData(componet: tmaskEdit): iRelatorioVendas;

    constructor create;
    destructor destroy; override;
    class function new: iRelatorioVendas;
  end;

implementation

{ TRelatorioVendas }

function TRelatorioVendas.abrir: iRelatorioVendas;
begin

  result := self;
  FQuery.Query(FTabela);

end;

function TRelatorioVendas.atualizar: iRelatorioVendas;
begin
  result := self;
  FQuery.TQuery.Refresh;
end;

function TRelatorioVendas.cancelar: iRelatorioVendas;
begin
  FQuery.TQuery.Cancel;
  // FQuery.TQuery.close;
end;

constructor TRelatorioVendas.create;
begin
  FTabela := 'VENDA';
  FQuery := TConexaoQuery.new.Query(FTabela);

  FGravarLog := TGravarLogSistema.new;
  FGravarLog.getJanela('Relat�rio de vendas').getCodigoFuncionario
    (funcionarioLogado);
  // (0 { definir o usu�rio quando construir a aplica��o } );

end;

destructor TRelatorioVendas.destroy;
begin

  inherited;
end;

function TRelatorioVendas.ExecSql: iRelatorioVendas;
begin
  result := self;
  FQuery.ExecSql(FTabela);
end;

function TRelatorioVendas.exportar: iRelatorioVendas;
begin
  result := self;
end;

function TRelatorioVendas.fecharQuery: iRelatorioVendas;
begin
  FQuery.TQuery.close;
end;

function TRelatorioVendas.getCampo(value: string): iRelatorioVendas;
begin
  result := self;
  FCampo := value;
end;

function TRelatorioVendas.getDataFinal(value: TDate): iRelatorioVendas;
begin
  result := self;
  FDataFinal := value;
  // FQuery.getDataFinal(value);
end;

function TRelatorioVendas.getDataInicial(value: TDate): iRelatorioVendas;
begin
  result := self;
  FDataInicial := value;
  // FQuery.getDataInicial(value);
end;

function TRelatorioVendas.getValor(value: string): iRelatorioVendas;
begin
  result := self;
  FValor := UpperCase(value);
end;

function TRelatorioVendas.listarGrid(value: TDataSource): iRelatorioVendas;
begin

  result := self;

  with FQuery.TQuery do
  begin

    FieldByName('ID').DisplayLabel := 'venda';
    FieldByName('ID_CLIENTE').DisplayLabel := 'C�d. Cliente';
    FieldByName('NOME_CLIENTE').DisplayLabel := 'Nome do cliente';
    FieldByName('FUNCIONARIO').DisplayLabel := 'Funcion�rio';
    FieldByName('NOME_FUNCIONARIO').DisplayLabel := 'Nome do funcion�rio';
    FieldByName('DATA_VENDA').DisplayLabel := 'Data da venda';
    FieldByName('HORA_VENDA').DisplayLabel := 'Hora da venda';
    FieldByName('SUBTOTAL').DisplayLabel := 'Subtotal';
    FieldByName('DESCONTO').DisplayLabel := 'Desconto';
    FieldByName('ACRESCIMO').DisplayLabel := 'Acr�scimo';
    FieldByName('TOTAL').DisplayLabel := 'Total';
    FieldByName('QUANTIDADE_PARCELAS').DisplayLabel := 'QTDE. Parcelas';
    FieldByName('VENCIMENTO').Visible := false;
    FieldByName('FORMA_PAGAMENTO').Visible := false;
    FieldByName('STATUS').DisplayLabel := 'Status';
    FieldByName('OBSERACAO').DisplayLabel := 'Observa��o';

    FieldByName('NOME_CLIENTE').DisplayWidth := 40;
    FieldByName('NOME_FUNCIONARIO').DisplayWidth := 40;
    FieldByName('OBSERACAO').DisplayWidth := 40;

  end;

  value.DataSet := FQuery.TQuery;

end;

class function TRelatorioVendas.new: iRelatorioVendas;
begin
  result := self.create;
end;

function TRelatorioVendas.nomeTabela(value: string): iRelatorioVendas;
begin
  result := self;
  FTabela := value;
end;

function TRelatorioVendas.open(value: string): iRelatorioVendas;
begin
  FQuery.Query(FTabela);
end;

function TRelatorioVendas.ordenarGrid(column: TColumn): iRelatorioVendas;
begin

  if FQuery.TQuery.IndexFieldNames = column.FieldName then
    FQuery.TQuery.IndexFieldNames := column.FieldName + ':D'
  else
    FQuery.TQuery.IndexFieldNames := column.FieldName;

end;

function TRelatorioVendas.pesquisar: iRelatorioVendas;
begin
  result := self;
end;

function TRelatorioVendas.sqlPesquisa: iRelatorioVendas;
begin
  result := self;
  FQuery.getCampo(FCampo).getValor(FValor).sqlPesquisa(FTabela);
end;

function TRelatorioVendas.sqlPesquisaData: iRelatorioVendas;
begin
  result := self;
  FQuery.getCampo(FCampo).getValor(FValor).getDataInicial(FDataInicial)
    .getDataFinal(FDataFinal).sqlPesquisaData(FTabela);
end;

function TRelatorioVendas.sqlPesquisaEstatica: iRelatorioVendas;
begin
  result := self;
  FQuery.getCampo(FCampo).getValor(FValor).getDataInicial(FDataInicial)
    .getDataFinal(FDataFinal).sqlPesquisaEstatica(FTabela);
end;

procedure TRelatorioVendas.validarData(componet: tmaskEdit);
var
  d: TDate;
begin
  try
    d := strtodate(componet.Text);
  except
    componet.SetFocus;
    componet.Clear;
    raise exception.create('Digite uma data v�lida.');
  end;
end;

end.