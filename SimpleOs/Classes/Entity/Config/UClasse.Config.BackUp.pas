unit UClasse.Config.BackUp;

interface

uses
  UClasse.Config.Conexao, System.SysUtils, Data.DB, Vcl.Dialogs;

Type
  TClasseConfigBackUp = class
  private
    FQuery: TClasseConexaoConfig;
  public

    procedure retornarDados(value: TDataSource);
    procedure inserir;
    procedure gravar(value: string);
    procedure editar;
    procedure excluir;
    procedure cancelar;

    constructor create;
    destructor destroy; override;

  end;

implementation

{ TClasseConfigBackUp }

procedure TClasseConfigBackUp.cancelar;
begin
  FQuery.retornarQuery.Cancel;
end;

constructor TClasseConfigBackUp.create;
begin
  FQuery := TClasseConexaoConfig.create;
  FQuery.Query('config_backup');
end;

destructor TClasseConfigBackUp.destroy;
begin

  FreeAndNil(FQuery);

  inherited;
end;

procedure TClasseConfigBackUp.editar;
begin
  FQuery.retornarQuery.Edit;
end;

procedure TClasseConfigBackUp.excluir;
begin
  FQuery.retornarQuery.Delete;
end;

procedure TClasseConfigBackUp.gravar(value: string);
begin

  try
    FQuery.retornarQuery.FieldByName('horario').AsDateTime := StrToTime(value);
    FQuery.retornarQuery.Post;
  except
    on e: Exception do
    begin
      MessageDlg('ERRO. N�o foi possivel inserir o hor�rio para backup. ' + e.Message,
        mtError, [mbOk], 0, mbOk);
    end;

  end;

end;

procedure TClasseConfigBackUp.inserir;
begin
  FQuery.retornarQuery.Insert;
end;

procedure TClasseConfigBackUp.retornarDados(value: TDataSource);
begin

  FQuery.retornarQuery.FieldByName('id').Visible := false;
  FQuery.retornarQuery.FieldByName('horario').DisplayLabel := 'Hor�rio';

  value.DataSet := FQuery.retornarQuery;

end;

end.
