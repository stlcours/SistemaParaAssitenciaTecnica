unit Form.Cadastro.Contas.APagar;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, UForm.Exemplo.Embeded, Data.DB,
  Vcl.Menus, Vcl.Grids, Vcl.DBGrids, Vcl.WinXPanels, Vcl.StdCtrls, Vcl.Buttons,
  Vcl.ExtCtrls, Vcl.Imaging.pngimage, UInterfaces, UClasse.Entity.Contas.APagar;

type
  TformCadastroContasAPagar = class(TformExemploEmbeded)
    DataSource1: TDataSource;
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
    FEntityContaPagar: iCadastroContasAPagar;
  public
    { Public declarations }
  end;

var
  formCadastroContasAPagar: TformCadastroContasAPagar;

implementation

{$R *.dfm}

procedure TformCadastroContasAPagar.FormCreate(Sender: TObject);
begin
  inherited;
  FEntityContaPagar := TEntityContasAPagar.new;
end;

procedure TformCadastroContasAPagar.FormShow(Sender: TObject);
begin
  inherited;
  FEntityContaPagar.abrir.listarGrid(DataSource1);
end;

end.
