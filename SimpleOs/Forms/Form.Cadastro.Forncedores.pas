unit Form.Cadastro.Forncedores;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, UForm.Exemplo.Embeded, Data.DB,
  Vcl.Menus, Vcl.Grids, Vcl.DBGrids, Vcl.WinXPanels, Vcl.StdCtrls, Vcl.Buttons,
  Vcl.ExtCtrls, UInterfaces;

type
  TformCadastroFornecedores = class(TformExemploEmbeded)
    DataSource1: TDataSource;
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
//    FEntityTransportadora: iCadastroTransportadora;
  public
    { Public declarations }
  end;

var
  formCadastroFornecedores: TformCadastroFornecedores;

implementation

{$R *.dfm}

procedure TformCadastroFornecedores.FormCreate(Sender: TObject);
begin
  inherited;
//  FEntityTransportadora := TEntityCadastroTransportadora.new;
end;

procedure TformCadastroFornecedores.FormShow(Sender: TObject);
begin
  inherited;
//  FEntityTransportadora.abrir.listarGrid(DataSource1)
end;

end.
