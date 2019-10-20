unit Form.Cadastro.Produtos;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, UForm.Exemplo.Embeded, Data.DB,
  Vcl.Menus, Vcl.Grids, Vcl.DBGrids, Vcl.WinXPanels, Vcl.StdCtrls, Vcl.Buttons,
  Vcl.ExtCtrls, UInterfaces, UClasse.Entity.Produtos, Vcl.Mask, UFactory;

type
  TformCadastroProdutos = class(TformExemploEmbeded)
    DataSource1: TDataSource;
    edtCodigo: TEdit;
    edtProduto: TEdit;
    edtCcodigoDeBarras: TEdit;
    edtDescricao: TEdit;
    edtValorDeCusto: TEdit;
    edtMargemDeLucro: TEdit;
    edtValorDeVenda: TEdit;
    edtQuantidadeMinima: TEdit;
    edtQuantidadeAtual: TEdit;
    edtCodigoGrupo: TEdit;
    edtModelo: TEdit;
    edtNumeroDeSerie: TEdit;
    edtFuncionario: TEdit;
    edtCodigoDaMarca: TEdit;
    Label1: TLabel;
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
    Label20: TLabel;
    Label21: TLabel;
    Label22: TLabel;
    edtObservacao: TEdit;
    Label23: TLabel;
    Image1: TImage;
    SpeedButton1: TSpeedButton;
    edtDataDeValidade: TMaskEdit;
    edtDataDeAlteracao: TMaskEdit;
    edtDataDeFabricacao: TMaskEdit;
    edtGrupo: TEdit;
    sbPesquisarGrupo: TSpeedButton;
    edtMarca: TEdit;
    sbPesquisarMarca: TSpeedButton;
    edtTipoProduto: TComboBox;
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure sbNovoClick(Sender: TObject);
    procedure sbPesquisarGrupoClick(Sender: TObject);
  private
    { Private declarations }
    FEntityProdutos: iCadastroProdutos;
  public
    { Public declarations }
  end;

var
  formCadastroProdutos: TformCadastroProdutos;

implementation

{$R *.dfm}

uses Form.Localizar.Grupo;

procedure TformCadastroProdutos.FormCreate(Sender: TObject);
begin
  inherited;
  FEntityProdutos := TEntityProdutos.new;
end;

procedure TformCadastroProdutos.FormShow(Sender: TObject);
begin
  inherited;
  FEntityProdutos.abrir.listarGrid(DataSource1);
end;

procedure TformCadastroProdutos.sbNovoClick(Sender: TObject);
begin
  inherited;
  FEntityProdutos.inserir;
  edtTipoProduto.SetFocus;
end;

procedure TformCadastroProdutos.sbPesquisarGrupoClick(Sender: TObject);
begin
  inherited;
  formLocalizarGrupo := TFormLocalizarGrupo.Create(self);
  TFactory.new.criarJanela.formShow(formLocalizarGrupo, '');
end;

end.
