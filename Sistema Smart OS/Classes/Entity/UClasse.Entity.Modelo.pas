{ Esta � uma classe de exemplo de funcionamento do processo de CRUD
  de formar RAD }

{ exemplo de captura e inser��o de imagens no banco de dados

  Image3.Picture.Assign(TGraphicField(sql_fotoFuncionario.FieldByName('foto')));
  // sql_fotoFuncionario.FieldByName('foto').Assign(foto);
}
unit UClasse.Entity.Modelo;

interface

uses Interfaces, modulo.conexao, UClasse.Query, Data.DB, FMX.Dialogs,
  System.SysUtils, FMX.Grid, System.UITypes, UClasse.Log.Erro;

type
  TEntityModelo = class(TInterfacedObject, iEntityModelo)

  private
    FClasseQuery: iQuery;
    FLogErros: iLogErro;
    FNomeGrupo: string;
    FNomeTabela: string;
    FCampo: string;
  public

    function ExecSql(value: string): iEntityModelo;
    function sqlPesquisa(value: string): iEntityModelo; overload;
    function sqlPesquisa(value: TDate): iEntityModelo; overload;
    function sqlPesquisa(data1, data2: TDate): iEntityModelo; overload;
    function sqlPesquisaEstatica(value: string): iEntityModelo;
    function getCampo(value: string): iEntityModelo;

    function openEntity: iEntityModelo;
    function novoRegistros: iEntityModelo;
    function gravarRegistro: iEntityModelo;
    function editarRegistro: iEntityModelo;
    function deletarRegistro: iEntityModelo;
    function cancelarRegistro: iEntityModelo;
    function atualizarRegistro: iEntityModelo;
    function fecharQuery: iEntityModelo;

    function listarDados(value: TDataSource): iEntityModelo;
    function redimensionarGrig(value: TStringGrid): iEntityModelo;
    function ordenarGrid(column: TColumn): iEntityModelo;

    function getNomeGrupo(value: string): iEntityModelo;

    constructor create;
    destructor destroy; override;
    class function new: iEntityModelo;

  end;

implementation

{ TEntityModelo }

function TEntityModelo.atualizarRegistro: iEntityModelo;
begin
try
  result := self;
  FClasseQuery.Query.Refresh;
except on e:exception do
begin
  raise Exception.Create('Ocorreu um erro ao tentar atualizar os registros. '+e.Message);
  FLogErros.logErro(e.Message, 'Cadastro modelo', 'Atualizar')
end;

end;
end;

function TEntityModelo.cancelarRegistro: iEntityModelo;
begin
  result := self;
  FClasseQuery.Query.Cancel;
  FClasseQuery.Query.Close;
end;

constructor TEntityModelo.create;
begin
  FNomeTabela := 'GRUPOS';
  FClasseQuery := TQuery.new.openQuery(FNomeTabela);
  FLogErros := TLogErro.new;
end;

function TEntityModelo.deletarRegistro: iEntityModelo;
begin

  if MessageDlg('Deseja realmente excluir este registro?',
    TMsgDlgType.mtConfirmation, mbYesNo, 0) = mrYes then
  begin
    FClasseQuery.Query.Delete;
  end;

end;

destructor TEntityModelo.destroy;
begin

  inherited;
end;

function TEntityModelo.editarRegistro: iEntityModelo;
begin
  if FClasseQuery.Query.RecordCount >= 1 then
    FClasseQuery.Query.Edit;
end;

function TEntityModelo.ExecSql(value: string): iEntityModelo;
begin
  result := self;
  FClasseQuery.ExecSql(value);
end;

function TEntityModelo.fecharQuery: iEntityModelo;
begin
  FClasseQuery.Query.Close;
end;

function TEntityModelo.getCampo(value: string): iEntityModelo;
begin
  result := self;
  FCampo := value;
end;

function TEntityModelo.getNomeGrupo(value: string): iEntityModelo;
begin
  result := self;

  if value = emptystr then
    raise Exception.create('Informe o nome do grupo');

  FNomeGrupo := value;

end;

function TEntityModelo.gravarRegistro: iEntityModelo;
begin
  result := self;

  if FClasseQuery.Query.State in [dsInsert] then
    FClasseQuery.Query.FieldByName('ID').AsInteger :=
      FClasseQuery.storedProcedure('SP_GEN_GRUPOS_ID');

  try
    FClasseQuery.Query.FieldByName('GRUPO').AsString := FNomeGrupo;
    FClasseQuery.Query.Post;
    showmessage('Opera��o realiza com sucesso');
  except
    on e: Exception do
      raise Exception.create('Erro ao tentar gravar o registro. ' + e.Message);

  end;

end;

function TEntityModelo.listarDados(value: TDataSource): iEntityModelo;
begin

  result := self;

  FClasseQuery.Query.FieldByName('ID').DisplayLabel := 'C�digo';
  FClasseQuery.Query.FieldByName('GRUPO').DisplayLabel := 'Nome do grupo';
  // FClasseQuery.query.FieldByName('kjdkl').DisplayLabel := 'jdksjksjk';

  value.DataSet := FClasseQuery.Query;

end;

class function TEntityModelo.new: iEntityModelo;
begin
  result := self.create;
end;

function TEntityModelo.novoRegistros: iEntityModelo;
begin
  result := self;
  FClasseQuery.Query.EmptyDataSet;
  FClasseQuery.Query.Append;
end;

function TEntityModelo.openEntity: iEntityModelo;
begin
  result := self;
  FClasseQuery.openQuery(FNomeTabela);
end;

function TEntityModelo.ordenarGrid(column: TColumn): iEntityModelo;
begin
  // if FClasseQuery.Query.IndexFieldNames = Column.Header then
  // FClasseQuery.Query.IndexFieldNames := Column.Header + ':D'
  // else
  // FClasseQuery.Query.IndexFieldNames := Column.Header;
end;

function TEntityModelo.redimensionarGrig(value: TStringGrid): iEntityModelo;
begin
  value.Columns[0].Width := 100;
  value.Columns[1].Width := 200;
end;

function TEntityModelo.sqlPesquisa(value: TDate): iEntityModelo;
begin
  result := self;
  FClasseQuery.getTabela(FNomeTabela).getCampo(FCampo).sqlPesquisa(value);
end;

function TEntityModelo.sqlPesquisa(data1, data2: TDate): iEntityModelo;
begin
  result := self;
  FClasseQuery.getTabela(FNomeTabela).getCampo(FCampo)
    .sqlPesquisa(data1, data2);
end;

function TEntityModelo.sqlPesquisa(value: string): iEntityModelo;
begin
  result := self;
  FClasseQuery.getTabela(FNomeTabela).getCampo(FCampo).sqlPesquisa(value);
end;

function TEntityModelo.sqlPesquisaEstatica(value: string): iEntityModelo;
begin
  result := self;
  FClasseQuery.getTabela(FNomeTabela).getCampo(FCampo)
    .sqlPesquisaEstatica(value);
end;

end.
