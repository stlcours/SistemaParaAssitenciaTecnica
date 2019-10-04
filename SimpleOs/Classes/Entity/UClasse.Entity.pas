unit UClasse.Entity;

{ Esta � uma classe de exemplo de funcionamento do processo de CRUD
  de formar RAD }
  
  {exemplo de captura e inser��o de imagens no banco de dados 
  
    Image3.Picture.Assign(TGraphicField(sql_fotoFuncionario.FieldByName('foto')));
  // sql_fotoFuncionario.FieldByName('foto').Assign(foto);
  }

interface

uses UClasse.Query, UInterfaces, UDados.Conexao, Data.DB,
  FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Error, FireDAC.UI.Intf,
  FireDAC.Phys.Intf, FireDAC.Stan.Def, FireDAC.Stan.Pool, FireDAC.Stan.Async,
  FireDAC.Phys, FireDAC.VCLUI.Wait, FireDAC.Comp.Client, Vcl.Dialogs,
  System.SysUtils, Vcl.Forms, Winapi.Windows, Vcl.Controls,
  UClasse.Gravar.Log.Sistema, Vcl.ComCtrls, Vcl.DBGrids;

type

  TEntity = class(TInterfacedObject, iEntity)
  private

    FQuery: iConexaoQuery;
    FEntityQuery: TFDQuery;
    FGravarLog: iGravarLogOperacoes;
    FTabela: string;
    FCampo: string;
    FValor: string;
    FDataInicial: TDate;
    FDataFinal: TDate;

    FCodigo: integer;
    FNome: string;

  public

    function nomeTabela(value: string): iEntity;
    function getCampo(value: string): iEntity;
    function getValor(value: string): iEntity;
    function getDataInicial(value: TDate): iEntity;
    function getDataFinal(value: TDate): iEntity;
    function open(value: string): iEntity;
    function pesquisar: iEntity;
    function ExecSql: iEntity;
    function sqlPesquisa: iEntity;
    function sqlPesquisaData: iEntity;
    function sqlPesquisaEstatica: iEntity;

    function abrir: iEntity;
    function inserir: iEntity;
    function Gravar: iEntity;
    function deletar: iEntity;
    function atualizar: iEntity;
    function editar: iEntity;
    function cancelar: iEntity;
    function fecharQuery: iEntity;
    function codigoCadastro(sp: string): integer;
    function listarGrid(value: TDataSource): iEntity;
    function ordenarGrid(column:TColumn):iEntity;

    function getCodigo(value: integer): iEntity;
    function getNome(value: string): iEntity;

    constructor create;
    destructor destroy; override;
    class function new: iEntity;
  end;

implementation

{ TEntity }

function TEntity.abrir: iEntity;
begin

  result := self;
  FQuery.Query(FTabela);

end;

function TEntity.atualizar: iEntity;
begin
  result := self;
  FQuery.TQuery.Refresh;
end;

function TEntity.cancelar: iEntity;
begin
  FQuery.TQuery.Cancel;
  FQuery.TQuery.close;
end;

function TEntity.codigoCadastro(sp: string): integer;
begin
  result := FQuery.codigoCadastro('');
end;

constructor TEntity.create;
begin
  FTabela := 'Grupos';
  FQuery := TConexaoQuery.new.Query(FTabela);

  FGravarLog := TGravarLogSistema.new;
  FGravarLog.getJanela('Grupos').getCodigoFuncionario(funcionarioLogado);
//    (0 { definir o usu�rio quando construir a aplica��o } );

end;

function TEntity.deletar: iEntity;
begin
  result := self;

  if FQuery.TQuery.RecordCount >= 1 then
  begin
    if application.MessageBox('Deseja realmente excluir este registro?',
      'Pergunta do sistema!', MB_YESNO + MB_ICONQUESTION) = mryes then
    begin

      FGravarLog.getNomeRegistro(FQuery.TQuery.FieldByName('grupo').AsString)
        .getCodigoRegistro(FQuery.TQuery.FieldByName('id').AsInteger).gravarLog;

      FQuery.TQuery.Delete;
    end;
  end;

end;

destructor TEntity.destroy;
begin

  inherited;
end;

function TEntity.editar: iEntity;
begin
  result := self;
  if FQuery.TQuery.RecordCount >= 1 then
  begin

    FGravarLog.getNomeRegistro(FQuery.TQuery.FieldByName('grupo').AsString)
      .getCodigoRegistro(FQuery.TQuery.FieldByName('id').AsInteger).gravarLog;

    FQuery.TQuery.Edit;
    FQuery.TQuery.FieldByName('grupo').AsString := FValor;
    FQuery.TQuery.Post;
    showmessage('Opera��o realizada com sucesso!');
  end;
end;

function TEntity.ExecSql: iEntity;
begin
  result := self;
  FQuery.ExecSql(FTabela);
end;

function TEntity.fecharQuery: iEntity;
begin
  FQuery.TQuery.close;
end;

function TEntity.getCampo(value: string): iEntity;
begin
  result := self;
  FQuery.getCampo(value);
end;

function TEntity.getCodigo(value: integer): iEntity;
begin
  result := self;
  FCodigo := value;
end;

function TEntity.getDataFinal(value: TDate): iEntity;
begin
  result := self;
  FQuery.getDataFinal(value);
end;

function TEntity.getDataInicial(value: TDate): iEntity;
begin
  result := self;
  FQuery.getDataInicial(value);
end;

function TEntity.getNome(value: string): iEntity;
begin
  result := self;
  FNome := value;
end;

function TEntity.getValor(value: string): iEntity;
begin
  result := self;
  FQuery.getValor(value);
end;

function TEntity.Gravar: iEntity;
begin

  result := self;

  if FQuery.TQuery.State in [dsInsert] then
    FQuery.TQuery.FieldByName('id').AsInteger :=
      FQuery.codigoCadastro('SP_GEN_GRUPOS_ID');

  FQuery.TQuery.FieldByName('grupo').AsString := FNome;

  FGravarLog.getNomeRegistro(FQuery.TQuery.FieldByName('grupo').AsString)
    .getCodigoRegistro(FQuery.TQuery.FieldByName('id').AsInteger).gravarLog;

  try
    FQuery.TQuery.Post;
    showmessage('Opera��o realizada com sucesso!');
  except
    on e: exception do
    begin
      raise exception.create('Erro ao tentar gravar os dados. ' + e.Message);
    end;

  end;

end;

function TEntity.inserir: iEntity;
begin
  result := self;
  FQuery.TQuery.EmptyDataSet;
  FQuery.TQuery.Append;
end;

function TEntity.listarGrid(value: TDataSource): iEntity;
begin

  result := self;


  FQuery.TQuery.FieldByName('id').DisplayLabel := 'C�digo';
  FQuery.TQuery.FieldByName('grupo').DisplayLabel := 'Grupo';
  FQuery.TQuery.FieldByName('grupo').DisplayWidth := 50;

//   FQuery.TQuery.SQL.Add('order by id desc');

  value.DataSet := FQuery.TQuery;

end;

class function TEntity.new: iEntity;
begin
  result := self.create;
end;

function TEntity.nomeTabela(value: string): iEntity;
begin
  result := self;
  FTabela := value;
end;

function TEntity.open(value: string): iEntity;
begin
  FQuery.Query(FTabela);
end;

function TEntity.ordenarGrid(column:TColumn): iEntity;
begin

  if FQuery.TQuery.IndexFieldNames = Column.FieldName then
    FQuery.TQuery.IndexFieldNames := Column.FieldName + ':D'
  else
    FQuery.TQuery.IndexFieldNames := Column.FieldName;

end;

function TEntity.pesquisar: iEntity;
begin
  result := self;
end;

function TEntity.sqlPesquisa: iEntity;
begin
  result := self;
  FQuery.getCampo(FCampo).getValor(FValor).sqlPesquisa(FTabela);
end;

function TEntity.sqlPesquisaData: iEntity;
begin
  result := self;
  FQuery.getCampo(FCampo).getValor(FValor).getDataInicial(FDataInicial)
    .getDataFinal(FDataFinal).sqlPesquisaData(FTabela);
end;

function TEntity.sqlPesquisaEstatica: iEntity;
begin
  result := self;
  FQuery.getCampo(FCampo).getValor(FValor).getDataInicial(FDataInicial)
    .getDataFinal(FDataFinal).sqlPesquisaEstatica(FTabela);
end;

end.