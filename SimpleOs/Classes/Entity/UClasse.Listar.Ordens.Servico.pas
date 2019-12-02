unit UClasse.Listar.Ordens.Servico;

interface

uses UClasse.Query, UInterfaces, UDados.Conexao, Data.DB, Vcl.Dialogs,
  System.SysUtils, Vcl.Forms, Winapi.Windows, Vcl.Controls,
  UClasse.Gravar.Log.Sistema, Vcl.ComCtrls, Vcl.DBGrids, Vcl.Mask;

type

  TEntityListarOrdensServico = class(TInterfacedObject, iListarOrdensServico)
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

    function nomeTabela(value: string): iListarOrdensServico;
    function getCampo(value: string): iListarOrdensServico;
    function getValor(value: string): iListarOrdensServico;
    function getDataInicial(value: TDate): iListarOrdensServico;
    function getDataFinal(value: TDate): iListarOrdensServico;
    function open(value: string): iListarOrdensServico;
    function pesquisar: iListarOrdensServico;
    function ExecSql: iListarOrdensServico;
    function sqlPesquisa: iListarOrdensServico;
    function sqlPesquisaData: iListarOrdensServico;
    function sqlPesquisaEstatica: iListarOrdensServico;

    function abrir: iListarOrdensServico;
    function fecharQuery: iListarOrdensServico;
    function listarGrid(value: TDataSource): iListarOrdensServico;
    function ordenarGrid(column: TColumn): iListarOrdensServico;

    function exportar: iListarOrdensServico;

    constructor create;
    destructor destroy; override;
    class function new: iListarOrdensServico;
  end;

implementation

{ TEntityListarOrdensServico }

function TEntityListarOrdensServico.abrir: iListarOrdensServico;
begin

  result := self;
  FQuery.Query(FTabela);

end;

constructor TEntityListarOrdensServico.create;
begin
  FTabela := 'VISUALIZAR_ORDENS_CLIENTES';
  FQuery := TConexaoQuery.new.Query(FTabela);

  FGravarLog := TGravarLogSistema.new;
  FGravarLog.getJanela('Lista de ordens').getCodigoFuncionario
    (funcionarioLogado);
  // (0 { definir o usu�rio quando construir a aplica��o } );

end;

destructor TEntityListarOrdensServico.destroy;
begin

  inherited;
end;

function TEntityListarOrdensServico.ExecSql: iListarOrdensServico;
begin
  result := self;
  FQuery.ExecSql(FTabela);
end;

function TEntityListarOrdensServico.exportar: iListarOrdensServico;
begin
  result := self;
end;

function TEntityListarOrdensServico.fecharQuery: iListarOrdensServico;
begin
  FQuery.TQuery.close;
end;

function TEntityListarOrdensServico.getCampo(value: string)
  : iListarOrdensServico;
begin
  result := self;
  FCampo := value;
end;

function TEntityListarOrdensServico.getDataFinal(value: TDate)
  : iListarOrdensServico;
begin
  result := self;
  FDataFinal := value;
  // FQuery.getDataFinal(value);
end;

function TEntityListarOrdensServico.getDataInicial(value: TDate)
  : iListarOrdensServico;
begin
  result := self;
  FDataInicial := value;
  // FQuery.getDataInicial(value);
end;

function TEntityListarOrdensServico.getValor(value: string)
  : iListarOrdensServico;
begin
  result := self;
  FValor := UpperCase(value);
end;

function TEntityListarOrdensServico.listarGrid(value: TDataSource)
  : iListarOrdensServico;
begin

  result := self;
  with FQuery.TQuery do
  begin
    FieldByName('ID_ORDEM').DisplayLabel := 'Ordem';
    FieldByName('ID_CLIENTE').DisplayLabel := 'C�d. Cliente';
    FieldByName('NOME_CLIENTE').DisplayLabel := 'Nome do cliente';
    FieldByName('CPF_CNPJ').DisplayLabel := 'CPF ou CNPJ';
    FieldByName('TELEFONE').Visible := false;
    FieldByName('CELULAR').Visible := false;
    FieldByName('EMAIL').Visible := false;
    FieldByName('EQUIPAMENTO').DisplayLabel := 'Equipamento';
    FieldByName('DEFEITO_RELATADO').Visible := false;
    FieldByName('MARCAS').Visible := false;
    FieldByName('SITUACAO_DA_ORDEM').DisplayLabel := 'Situa��o da ordem';
    FieldByName('DATA_DE_ENTRADA').DisplayLabel := 'Entrada';
    FieldByName('DATA_SAIDA').DisplayLabel := 'Saida';
    FieldByName('PGTO').DisplayLabel := 'PGTO';

    FieldByName('ID_ORDEM').DisplayWidth := 15;
    FieldByName('NOME_CLIENTE').DisplayWidth := 30;
    FieldByName('EQUIPAMENTO').DisplayWidth := 25;
    FieldByName('SITUACAO_DA_ORDEM').DisplayWidth := 15;

  end;

  value.DataSet := FQuery.TQuery;

end;

class function TEntityListarOrdensServico.new: iListarOrdensServico;
begin
  result := self.create;
end;

function TEntityListarOrdensServico.nomeTabela(value: string)
  : iListarOrdensServico;
begin
  result := self;
  FTabela := value;
end;

function TEntityListarOrdensServico.open(value: string): iListarOrdensServico;
begin
  FQuery.Query(FTabela);
end;

function TEntityListarOrdensServico.ordenarGrid(column: TColumn)
  : iListarOrdensServico;
begin

  if FQuery.TQuery.IndexFieldNames = column.FieldName then
    FQuery.TQuery.IndexFieldNames := column.FieldName + ':D'
  else
    FQuery.TQuery.IndexFieldNames := column.FieldName;

end;

function TEntityListarOrdensServico.pesquisar: iListarOrdensServico;
begin
  result := self;
end;

function TEntityListarOrdensServico.sqlPesquisa: iListarOrdensServico;
begin
  result := self;
  FQuery.getCampo(FCampo).getValor(FValor).sqlPesquisa(FTabela);
end;

function TEntityListarOrdensServico.sqlPesquisaData: iListarOrdensServico;
begin
  result := self;
  FQuery.getCampo(FCampo).getValor(FValor).getDataInicial(FDataInicial)
    .getDataFinal(FDataFinal).sqlPesquisaData(FTabela);
end;

function TEntityListarOrdensServico.sqlPesquisaEstatica: iListarOrdensServico;
begin
  result := self;
  FQuery.getCampo(FCampo).getValor(FValor).getDataInicial(FDataInicial)
    .getDataFinal(FDataFinal).sqlPesquisaEstatica(FTabela);
end;

end.