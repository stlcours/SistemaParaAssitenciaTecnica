unit UDados.Conexao;

interface

uses
  System.SysUtils, System.Classes, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Error, FireDAC.UI.Intf, FireDAC.Phys.Intf, FireDAC.Stan.Def,
  FireDAC.Stan.Pool, FireDAC.Stan.Async, FireDAC.Phys, FireDAC.VCLUI.Wait,
  FireDAC.Comp.Client, Data.DB, FireDAC.Phys.FB, FireDAC.Phys.FBDef,
  FireDAC.Phys.IBBase, FireDAC.Comp.UI, Vcl.Forms, FireDAC.Stan.Param,
  FireDAC.DatS, FireDAC.DApt.Intf, FireDAC.DApt, FireDAC.Comp.DataSet,
  UClasse.Config.Acesso.Banco, Vcl.Imaging.jpeg, Vcl.ExtCtrls;

type
  TDataModule1 = class(TDataModule)
    Conexao: TFDConnection;
    FDTransaction1: TFDTransaction;
    FDGUIxWaitCursor1: TFDGUIxWaitCursor;
    FDPhysFBDriverLink1: TFDPhysFBDriverLink;
    FDQuery1: TFDQuery;
    FDQuery1ID: TIntegerField;
    FDQuery1JUROS: TBCDField;
    FDQuery1MULTA: TCurrencyField;
    procedure conexaoBeforeConnect(Sender: TObject);
    procedure DataModuleCreate(Sender: TObject);
    procedure DataModuleDestroy(Sender: TObject);
  private
    { Private declarations }
  var
    FConfigConexao: TConfigConexaoBanco;
  public
    { Public declarations }
  end;

var
  DataModule1: TDataModule1;
  funcionarioLogado: integer;
  NomeFuncionarioLogado: string;
  imagemFuncionario:Timage;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}
{$R *.dfm}

procedure TDataModule1.conexaoBeforeConnect(Sender: TObject);
begin
  FDPhysFBDriverLink1.VendorLib := ExtractFilePath(application.exename) +
    'fbclient.dll';
end;

procedure TDataModule1.DataModuleCreate(Sender: TObject);
begin

  FConfigConexao := TConfigConexaoBanco.create;

  with Conexao do
  begin

    DriverName := 'FB';
    Params.Add('Server=' + FConfigConexao.hostname);
    Params.Add('Port=' + '3050');
    Params.Add('Database=' + FConfigConexao.localBD);
    Params.Add('User_Name=' + FConfigConexao.user);
    Params.Add('Password=' + FConfigConexao.password);

  end;

  imagemFuncionario := TImage.Create(nil);

end;

procedure TDataModule1.DataModuleDestroy(Sender: TObject);
begin
  FConfigConexao.Free;
  FreeAndNil(imagemFuncionario);
end;

end.
