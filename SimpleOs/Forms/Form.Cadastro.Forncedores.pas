unit Form.Cadastro.Forncedores;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, UForm.Exemplo.Embeded, Data.DB,
  Vcl.Menus, Vcl.Grids, Vcl.DBGrids, Vcl.WinXPanels, Vcl.StdCtrls, Vcl.Buttons,
  Vcl.ExtCtrls, UInterfaces, UClasse.Entity.Forncedores, Vcl.Mask,
  UClasse.Entity.Table;

type
  TformCadastroFornecedores = class(TformExemploEmbeded)
    DataSource1: TDataSource;
    edtCodigo: TEdit;
    Label1: TLabel;
    edtNomeFantasia: TEdit;
    edtRazaoSocial: TEdit;
    edtCPFCNPJ: TEdit;
    edtInscricaoEstadual: TEdit;
    edtEndereco: TEdit;
    edtBairro: TEdit;
    edtComplemento: TEdit;
    edtNumero: TEdit;
    edtCEP: TEdit;
    edtCidade: TEdit;
    edtEmail: TEdit;
    edtResponsavel: TEdit;
    edtFuncionario: TEdit;
    edtObservacao: TEdit;
    Label2: TLabel;
    Label3: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    Label13: TLabel;
    Label14: TLabel;
    Label15: TLabel;
    Label16: TLabel;
    Label17: TLabel;
    Label18: TLabel;
    Label19: TLabel;
    Label22: TLabel;
    edtTelefone: TMaskEdit;
    edtCelular: TMaskEdit;
    edtUF: TComboBox;
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure sbNovoClick(Sender: TObject);
  private
    { Private declarations }
    FEntityForncedores: iCadastroFornecedores;
    FEntityTableUF: iFDTable;
  public
    { Public declarations }
  end;

var
  formCadastroFornecedores: TformCadastroFornecedores;

implementation

uses
  FireDAC.Comp.Client;

{$R *.dfm}

procedure TformCadastroFornecedores.FormCreate(Sender: TObject);
begin
  inherited;
  FEntityForncedores := TEntityCadastroFornecedores.new;
  FEntityTableUF := TEntityTable.new;
end;

procedure TformCadastroFornecedores.FormShow(Sender: TObject);
begin
  inherited;

  FEntityForncedores.abrir.listarGrid(DataSource1);

  FEntityTableUF.FD_Table('UF').getCampoTabela('UF')
    .popularComponenteComboBox(edtUF);

end;

procedure TformCadastroFornecedores.sbNovoClick(Sender: TObject);
begin
  inherited;
  FEntityForncedores.inserir;
  edtNomeFantasia.SetFocus;
end;

end.
