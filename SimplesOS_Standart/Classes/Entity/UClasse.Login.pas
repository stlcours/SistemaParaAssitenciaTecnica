unit UClasse.Login;

interface

uses
  UInterfaces, UDados.Conexao, Vcl.StdCtrls, System.SysUtils, Vcl.Dialogs,
  UFactory, FireDAC.Comp.Client, Data.DB;

Type
  TRealizarLogin = class(TInterfacedObject, iLogin)
  private
    FUser: string;
    FPasswod: string;
    FQuery:TFDQuery;
  public

    function verificarUsuario(value: TEdit): iLogin;
    function verificarSenha(value: TEdit): iLogin;

    function realizarLogin: boolean;

    constructor create;
    destructor destroy; override;
    class function new: iLogin;

  end;

implementation

{ TRealizarLogin }

constructor TRealizarLogin.create;
begin

  FQuery := TFDQuery.Create(nil);
  FQuery.Connection := DataModule1.Conexao;

end;

destructor TRealizarLogin.destroy;
begin
  FreeAndNil(FQuery);
  inherited;
end;

class function TRealizarLogin.new: iLogin;
begin
  result := self.create;
end;

function TRealizarLogin.realizarLogin: boolean;
begin

  result := false;

  FQuery.Active := false;
  FQuery.SQL.Clear;
  FQuery.SQL.Add('select * from FUNCIONARIOS where USUARIO =:u and SENHA =:s');
  FQuery.ParamByName('u').AsString := UpperCase(FUser);
  FQuery.ParamByName('s').AsString := FPasswod;
  FQuery.Active := true;

  if FQuery.RecordCount >= 1 then
    begin
      result := true;

      NomeFuncionarioLogado := FQuery.FieldByName('USUARIO').AsString;
      funcionarioLogado := FQuery.FieldByName('ID').AsInteger;
      imagemFuncionario.Picture.Assign(TGraphicField(FQuery.FieldByName('FOTO')));

    end
  else
    begin
      result := false;
    end;

end;

function TRealizarLogin.verificarSenha(value: TEdit): iLogin;
begin

  result := self;

  if value.Text = emptystr then
  begin
    MessageDlg('ERRO. Infome um senha', mtError, [mbOk], 0, mbOk);
    value.SetFocus;
    abort;
  end
  else
  begin
    FPasswod := TFactory.new.criptPass.md5(value.Text);
  end;

end;

function TRealizarLogin.verificarUsuario(value: TEdit): iLogin;
begin

  result := self;

  if value.Text = EmptyStr then
  begin
    MessageDlg('ERRO. Infome um usu�rio', mtError, [mbOk], 0, mbOk);
    value.SetFocus;
    abort;
  end
  else
  begin
    FUser := value.Text;
  end;

end;

end.
