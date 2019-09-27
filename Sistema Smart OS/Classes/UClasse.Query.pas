unit UClasse.Query;

interface

uses Interfaces, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Error, FireDAC.UI.Intf, FireDAC.Phys.Intf, FireDAC.Stan.Def,
  FireDAC.Stan.Pool, FireDAC.Stan.Async, FireDAC.Phys, FireDAC.Stan.Param,
  FireDAC.DatS, FireDAC.DApt.Intf, FireDAC.DApt, FireDAC.FMXUI.Wait,
  FireDAC.Phys.FBDef, FireDAC.Phys.IBBase, FireDAC.Phys.FB, FireDAC.Comp.UI,
  Data.DB, FireDAC.Comp.DataSet, FireDAC.Comp.Client, System.SysUtils;

type
  TQuery = class(TInterfacedObject, iQuery)

  private
    FQuery: TFDQuery;
    spCodigoCadastro: TFDStoredProc;
    Fcampo: string;
    FTabela: string;
  public
    function openQuery(value: string): iQuery;
    function Query: TFDQuery;
    function storedProcedure(value: string): integer;

    function ExecSql(value: string): iQuery;
    function sqlPesquisa(value: string): iQuery; overload;
    function sqlPesquisa(value: TDate): iQuery; overload;
    function sqlPesquisa(data1, data2: TDate): iQuery; overload;
    function sqlPesquisaEstatica(value: string): iQuery;
    function getCampo(value: string): iQuery;
    function getTabela(value: string): iQuery;

    constructor create;
    destructor destroy; override;
    class function new: iQuery;

  end;

implementation

uses modulo.conexao;

{ TQuery }

constructor TQuery.create;
begin
  FQuery := TFDQuery.create(nil);
  FQuery.Connection := modulo_conexao.conexao;
end;

destructor TQuery.destroy;
begin
  FQuery.DisposeOf;
  inherited;
end;

function TQuery.ExecSql(value: string): iQuery;
begin
  result := self;
  FQuery.Open(value);
end;

function TQuery.getCampo(value: string): iQuery;
begin

  result := self;

  if value = emptystr then
    raise Exception.create
      ('Informe por qual campo da tabela deseja realizar apesquisa.');

  Fcampo := value;

end;

function TQuery.getTabela(value: string): iQuery;
begin
  result := self;

  if value = emptystr then
    raise Exception.create
      ('Informe por qual tabela deseja realizar a pesquisa.');

  FTabela := value;

end;

class function TQuery.new: iQuery;
begin
  result := self.create;
end;

function TQuery.openQuery(value: string): iQuery;
begin
  result := self;
  FQuery.Active := false;
  FQuery.SQL.Clear;
  FQuery.SQL.Add('select * from ' + value);
  FQuery.Active := true;
end;

function TQuery.Query: TFDQuery;
begin
  result := FQuery;
end;

function TQuery.sqlPesquisa(value: TDate): iQuery;
begin
  result := self;

  FQuery.Active := false;
  FQuery.SQL.Clear;
  FQuery.SQL.Add('select * from ' + FTabela + ' where ' + Fcampo +
    ' =:d1 order by ' + Fcampo + ' desc');
  FQuery.ParamByName('d1').AsDate := value;
  FQuery.Active := true;
end;

function TQuery.sqlPesquisa(data1, data2: TDate): iQuery;
begin
  result := self;

  FQuery.Active := false;
  FQuery.SQL.Clear;
  FQuery.SQL.Add('select * from ' + FTabela + ' where ' + Fcampo +
    ' betweeen :d1 and :d2 order by ' + Fcampo + ' desc');
  FQuery.ParamByName('d1').AsDate := data1;
  FQuery.ParamByName('d2').AsDate := data2;
  FQuery.Active := true;

end;

function TQuery.sqlPesquisa(value: string): iQuery;
begin

  result := self;

  FQuery.Active := false;
  FQuery.SQL.Clear;
  FQuery.SQL.Add('select * from ' + FTabela + ' where ' + Fcampo +
    ' LIKE :valor order by ' + Fcampo + ' desc');
  FQuery.ParamByName('valor').AsString := value + '%';
  FQuery.Active := true;

end;

function TQuery.sqlPesquisaEstatica(value: string): iQuery;
begin
  result := self;

  FQuery.Active := false;
  FQuery.SQL.Clear;
  FQuery.SQL.Add('select * from ' + FTabela + ' where ' + Fcampo +
    ' =:valor order by ' + Fcampo + ' desc');
  FQuery.ParamByName('valor').AsString := value;
  FQuery.Active := true;

end;

function TQuery.storedProcedure(value: string): integer;
begin

  spCodigoCadastro := TFDStoredProc.create(nil);
  spCodigoCadastro.Connection := modulo_conexao.conexao;
  spCodigoCadastro.StoredProcName := value;
  spCodigoCadastro.Connection.Connected := true;
  spCodigoCadastro.Connection.DriverName := 'FB';

  spCodigoCadastro.StoredProcName := value;
  spCodigoCadastro.Prepare;

  if spCodigoCadastro.Prepared then
  begin
    spCodigoCadastro.Prepare;
    spCodigoCadastro.ExecProc;
    result := spCodigoCadastro.ParamByName('id').AsInteger;
  end;

  spCodigoCadastro.Free;

end;

end.
