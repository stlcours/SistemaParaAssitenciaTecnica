unit UClasse.Config.Conexao;

interface

uses FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Error,
  FireDAC.UI.Intf,
  FireDAC.Phys.Intf, FireDAC.Stan.Def, FireDAC.Stan.Pool, FireDAC.Stan.Async,
  FireDAC.Phys, FireDAC.VCLUI.Wait, FireDAC.Stan.ExprFuncs,
  FireDAC.Phys.SQLiteDef, FireDAC.Phys.SQLite, FireDAC.Comp.UI,
  FireDAC.Comp.Client, System.SysUtils, Vcl.Forms, Data.DB, Vcl.Dialogs;

Type
  TClasseConexaoConfig = class
  private

    FDConnection: TFDConnection;
    FDPhysSQLiteDriveLink: TFDPhysSQLiteDriverLink;
    FQuery: TFDQuery;

  public

    function Query(value:string):TFDQuery;

    constructor create;
    destructor destroy; override;

  end;

implementation

{ TClasseConexaoConfig }

constructor TClasseConexaoConfig.create;
begin

  FDPhysSQLiteDriveLink := TFDPhysSQLiteDriverLink.create(nil);

  FDConnection := TFDConnection.create(nil);
  FDConnection.Connected := false;
  FDConnection.DriverName := 'SQLite';
  FDConnection.Params.Add('Database=' + ExtractFilePath(Application.ExeName) +
    '\Config\config.db');
  FDConnection.Params.Add('LockingMode=Normal');
  FDConnection.Connected := true;

  FQuery := TFDQuery.Create(nil);
  FQuery.Connection := FDConnection;

end;

destructor TClasseConexaoConfig.destroy;
begin

  inherited;
end;

function TClasseConexaoConfig.Query(value: string): TFDQuery;
begin

  FQuery.Active := false;
  FQuery.SQL.Clear;
  FQuery.SQL.Add('select * from '+value);
  FQuery.Active := true;

  result := FQuery;

end;

end.
