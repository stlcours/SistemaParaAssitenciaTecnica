unit UClasse.Entity.LIstar.Ordens.Clientes;

interface

uses UClasse.Query, UInterfaces, UDados.Conexao, Data.DB, Vcl.Dialogs,
  System.SysUtils, Vcl.Forms, Winapi.Windows, Vcl.Controls,
  UClasse.Gravar.Log.Sistema, Vcl.ComCtrls, Vcl.DBGrids, Vcl.Mask;

type

  TEntityListarOrdensClientes = class(TInterfacedObject,
    iListaClientesOrdemServico)
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

    function nomeTabela(value: string): iListaClientesOrdemServico;
    function getCampo(value: string): iListaClientesOrdemServico;
    function getValor(value: string): iListaClientesOrdemServico;
    function getDataInicial(value: TDate): iListaClientesOrdemServico;
    function getDataFinal(value: TDate): iListaClientesOrdemServico;
    function open(value: string): iListaClientesOrdemServico;
    function pesquisar: iListaClientesOrdemServico;
    function ExecSql: iListaClientesOrdemServico;
    function sqlPesquisa: iListaClientesOrdemServico;
    function sqlPesquisaData: iListaClientesOrdemServico;
    function sqlPesquisaEstatica: iListaClientesOrdemServico;

    function abrir: iListaClientesOrdemServico;
    function fecharQuery: iListaClientesOrdemServico;
    function listarGrid(value: TDataSource): iListaClientesOrdemServico;
    function ordenarGrid(column: TColumn): iListaClientesOrdemServico;

    function exportar: iListaClientesOrdemServico;

    constructor create;
    destructor destroy; override;
    class function new: iListaClientesOrdemServico;
  end;

implementation

{ TEntityListarOrdensClientes }

function TEntityListarOrdensClientes.abrir: iListaClientesOrdemServico;
begin

  result := self;
  FQuery.Query(FTabela);

end;

constructor TEntityListarOrdensClientes.create;
begin
  FTabela := 'VISUALIZAR_ORDENS_CLIENTES';
  FQuery := TConexaoQuery.new.Query(FTabela);

  FGravarLog := TGravarLogSistema.new;
  FGravarLog.getJanela('Lista de ordens').getCodigoFuncionario
    (funcionarioLogado);
  // (0 { definir o usu�rio quando construir a aplica��o } );

end;

destructor TEntityListarOrdensClientes.destroy;
begin

  inherited;
end;

function TEntityListarOrdensClientes.ExecSql: iListaClientesOrdemServico;
begin
  result := self;
  FQuery.ExecSql(FTabela);
end;

function TEntityListarOrdensClientes.exportar: iListaClientesOrdemServico;
begin
  result := self;
end;

function TEntityListarOrdensClientes.fecharQuery: iListaClientesOrdemServico;
begin
  FQuery.TQuery.close;
end;

function TEntityListarOrdensClientes.getCampo(value: string)
  : iListaClientesOrdemServico;
begin
  result := self;
  FCampo := value;
end;

function TEntityListarOrdensClientes.getDataFinal(value: TDate)
  : iListaClientesOrdemServico;
begin
  result := self;
  FDataFinal := value;
  // FQuery.getDataFinal(value);
end;

function TEntityListarOrdensClientes.getDataInicial(value: TDate)
  : iListaClientesOrdemServico;
begin
  result := self;
  FDataInicial := value;
  // FQuery.getDataInicial(value);
end;

function TEntityListarOrdensClientes.getValor(value: string)
  : iListaClientesOrdemServico;
begin
  result := self;
  FValor := UpperCase(value);
end;

function TEntityListarOrdensClientes.listarGrid(value: TDataSource)
  : iListaClientesOrdemServico;
begin

  result := self;
  with FQuery.TQuery do
  begin
    FieldByName('ID_ORDEM').Visible := false;
    FieldByName('ID_CLIENTE').DisplayLabel := 'C�d. Cliente';
    FieldByName('NOME_CLIENTE').DisplayLabel := 'Nome do cliente';
    FieldByName('CPF_CNPJ').DisplayLabel := 'CPF ou CNPJ';
    FieldByName('TELEFONE').DisplayLabel := 'Telefone';
    FieldByName('CELULAR').DisplayLabel := 'Celular';
    FieldByName('EMAIL').Visible := false;
    FieldByName('EQUIPAMENTO').DisplayLabel := 'Equipamento';
    FieldByName('DEFEITO_RELATADO').Visible := false;
    FieldByName('MARCAS').Visible := false;
    FieldByName('SITUACAO_DA_ORDEM').DisplayLabel := 'Situa��o da ordem';
    FieldByName('DATA_DE_ENTRADA').DisplayLabel := 'Entrada';
    FieldByName('PGTO').DisplayLabel := 'PGTO';

    FieldByName('NOME_CLIENTE').DisplayWidth := 30;
    FieldByName('EMAIL').DisplayWidth := 30;
    FieldByName('EQUIPAMENTO').DisplayWidth := 30;
    FieldByName('DEFEITO_RELATADO').DisplayWidth := 30;
    FieldByName('MARCAS').DisplayWidth := 30;
  end;

  value.DataSet := FQuery.TQuery;

end;

class function TEntityListarOrdensClientes.new: iListaClientesOrdemServico;
begin
  result := self.create;
end;

function TEntityListarOrdensClientes.nomeTabela(value: string)
  : iListaClientesOrdemServico;
begin
  result := self;
  FTabela := value;
end;

function TEntityListarOrdensClientes.open(value: string)
  : iListaClientesOrdemServico;
begin
  FQuery.Query(FTabela);
end;

function TEntityListarOrdensClientes.ordenarGrid(column: TColumn)
  : iListaClientesOrdemServico;
begin

  if FQuery.TQuery.IndexFieldNames = column.FieldName then
    FQuery.TQuery.IndexFieldNames := column.FieldName + ':D'
  else
    FQuery.TQuery.IndexFieldNames := column.FieldName;

end;

function TEntityListarOrdensClientes.pesquisar: iListaClientesOrdemServico;
begin
  result := self;
end;

function TEntityListarOrdensClientes.sqlPesquisa: iListaClientesOrdemServico;
begin
  result := self;
  FQuery.getCampo(FCampo).getValor(FValor).sqlPesquisa(FTabela);
end;

function TEntityListarOrdensClientes.sqlPesquisaData
  : iListaClientesOrdemServico;
begin
  result := self;
  FQuery.getCampo(FCampo).getValor(FValor).getDataInicial(FDataInicial)
    .getDataFinal(FDataFinal).sqlPesquisaData(FTabela);
end;

function TEntityListarOrdensClientes.sqlPesquisaEstatica
  : iListaClientesOrdemServico;
begin
  result := self;
  FQuery.getCampo(FCampo).getValor(FValor).getDataInicial(FDataInicial)
    .getDataFinal(FDataFinal).sqlPesquisaEstatica(FTabela);
end;

end.
