unit Form.Cadastro.Servicos;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, UForm.Exemplo.Embeded, Data.DB,
  Vcl.Menus, Vcl.Grids, Vcl.DBGrids, Vcl.WinXPanels, Vcl.StdCtrls, Vcl.Buttons,
  Vcl.ExtCtrls, UClasse.Entity.Cadastro.Servicos, UInterfaces;

type
  TformCadastroDeServicos = class(TformExemploEmbeded)
    DataSource1: TDataSource;
    edtCodigo: TEdit;
    edtServico: TEdit;
    edtValor: TEdit;
    edtDescricao: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label6: TLabel;
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure sbNovoClick(Sender: TObject);
  private
    { Private declarations }
    FEntityCadastroServico: iCadastroServico;
  public
    { Public declarations }
  end;

var
  formCadastroDeServicos: TformCadastroDeServicos;

implementation

{$R *.dfm}

procedure TformCadastroDeServicos.FormCreate(Sender: TObject);
begin
  inherited;
 FEntityCadastroServico := TEntityCadastroServicos.new;
end;

procedure TformCadastroDeServicos.FormShow(Sender: TObject);
begin
  inherited;
  FEntityCadastroServico.abrir.listarGrid(DataSource1);
end;

procedure TformCadastroDeServicos.sbNovoClick(Sender: TObject);
begin
  inherited;
  FEntityCadastroServico.inserir;
  edtServico.SetFocus;
end;

end.
