unit Form.Cadastro.Produtos;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, UForm.Exemplo.Embeded, Data.DB,
  Vcl.Menus, Vcl.Grids, Vcl.DBGrids, Vcl.WinXPanels, Vcl.StdCtrls, Vcl.Buttons,
  Vcl.ExtCtrls, UInterfaces, UClasse.Entity.Produtos, Vcl.Mask, UFactory,
  Vcl.ExtDlgs, Vcl.Imaging.jpeg, frxClass, frxDBSet;

type
  TformCadastroProdutos = class(TformExemploEmbeded)
    DataSource1: TDataSource;
    edtCodigo: TEdit;
    edtProduto: TEdit;
    edtCodigoDeBarras: TEdit;
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
    OpenPictureDialog1: TOpenPictureDialog;
    SpeedButton2: TSpeedButton;
    SpeedButton3: TSpeedButton;
    frxDB_Produtos: TfrxDBDataset;
    frx_Produtos: TfrxReport;
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure sbNovoClick(Sender: TObject);
    procedure sbPesquisarGrupoClick(Sender: TObject);
    procedure sbPesquisarMarcaClick(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure sbSalvarClick(Sender: TObject);
    procedure DataSource1DataChange(Sender: TObject; Field: TField);
    procedure DBGrid1CellClick(Column: TColumn);
    procedure sbEditarClick(Sender: TObject);
    procedure sbExcluirClick(Sender: TObject);
    procedure sbCancelarClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure edtMargemDeLucroExit(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure DBGrid1TitleClick(Column: TColumn);
    procedure edtPesquisarKeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure SpeedButton3Click(Sender: TObject);
    procedure sbExportarClick(Sender: TObject);
    procedure sbImprimirClick(Sender: TObject);
  private
    { Private declarations }
    FEntityProdutos: iCadastroProdutos;
    imagem: TJPEGImage;
  public
    { Public declarations }
  end;

var
  formCadastroProdutos: TformCadastroProdutos;

var
  codigoGrupo: integer;
  codigoMarca: integer;
  grupo: string;
  marca: string;

implementation

{$R *.dfm}

uses Form.Localizar.grupo, Form.Localizar.marca, UCalculadora;

procedure TformCadastroProdutos.DataSource1DataChange(Sender: TObject;
  Field: TField);
begin
  inherited;

  with DataSource1.DataSet do
  begin
    edtCodigo.Text := IntToStr(FieldByName('ID').AsInteger);
    edtTipoProduto.Text := FieldByName('TIPO_CADASTROS').AsString;
    edtProduto.Text := FieldByName('SERVICO_PRODUTO').AsString;
    edtCodigoDeBarras.Text := FieldByName('CODIGO_BARRAS').AsString;
    edtDescricao.Text := FieldByName('DESCRICAO').AsString;
    edtValorDeCusto.Text := CurrToStr(FieldByName('VALOR_CUSTO').AsCurrency);
    edtMargemDeLucro.Text := FloatToStr(FieldByName('MARGEM_LUCRO').AsCurrency);
    edtValorDeVenda.Text := CurrToStr(FieldByName('VALOR_VENDA').AsCurrency);
    edtQuantidadeMinima.Text := FieldByName('QUANTIDADE_MINIMA')
      .AsInteger.ToString;
    edtQuantidadeAtual.Text := FieldByName('QUANTIDADE_ATUAL')
      .AsInteger.ToString;
    edtGrupo.Text := FieldByName('GRUPO').AsString;

    // tudo referente as datas e c�digo das tabelas auxiliares
    if FieldByName('DATA_VALIDADE').AsDateTime <> StrToDate('30/12/1899') then
      edtDataDeValidade.Text :=
        DateToStr(FieldByName('DATA_VALIDADE').AsDateTime);

    if FieldByName('DATA_ALTERACAO').AsDateTime <> StrToDate('30/12/1899') then
      edtDataDeAlteracao.Text :=
        DateToStr(FieldByName('DATA_ALTERACAO').AsDateTime);

    if FieldByName('DATA_FABRICACAO').AsDateTime <> StrToDate('30/12/1899') then
      edtDataDeFabricacao.Text :=
        DateToStr(FieldByName('DATA_FABRICACAO').AsDateTime);

    Image1.Picture.Assign(FieldByName('FOTO'));

  end;

end;

procedure TformCadastroProdutos.DBGrid1CellClick(Column: TColumn);
begin
  inherited;
  if DataSource1.DataSet.RecordCount >= 1 then
  begin
    sbEditar.Enabled := true;
    sbExcluir.Enabled := true;
  end
  else
  begin
    sbEditar.Enabled := false;
    sbExcluir.Enabled := false;
  end;
end;

procedure TformCadastroProdutos.DBGrid1TitleClick(Column: TColumn);
begin
  inherited;
  FEntityProdutos.ordenarGrid(Column);
end;

procedure TformCadastroProdutos.edtMargemDeLucroExit(Sender: TObject);
begin
  inherited;
  edtValorDeVenda.Text :=
    CurrToStr(TFactory.new.calcularJuros.getJuros
    (StrToFloat(edtMargemDeLucro.Text))
    .getCapital(strtocurr(edtValorDeCusto.Text)).calcularJuros);
end;

procedure TformCadastroProdutos.edtPesquisarKeyUp(Sender: TObject;
  var Key: Word; Shift: TShiftState);
var
  campo: string;
begin
  inherited;

  if cbPesquisar.Text = 'C�digo' then
    campo := 'ID'
  else if cbPesquisar.Text = 'C�digo de barra' then
    campo := 'CODIGO_BARRAS'
  else if cbPesquisar.Text = 'Produto' then
    campo := 'SERVICO_PRODUTO'
  else if cbPesquisar.Text = 'Tipo de cadastro' then
    campo := 'TIPO_CADASTROS';

  if edtPesquisar.Text <> EmptyStr then
    FEntityProdutos.getCampo(campo).getValor(edtPesquisar.Text)
      .sqlPesquisa.listarGrid(DataSource1);

  { C�digo
    C�digo de barra
    Produto
    Tipo de cadastro }
end;

procedure TformCadastroProdutos.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
  imagem.Free;
end;

procedure TformCadastroProdutos.FormCreate(Sender: TObject);
begin
  inherited;
  FEntityProdutos := TEntityProdutos.new;
end;

procedure TformCadastroProdutos.FormShow(Sender: TObject);
begin
  inherited;
  FEntityProdutos.abrir.getCampo('ID').getValor('0').sqlPesquisa.listarGrid
    (DataSource1);
end;

procedure TformCadastroProdutos.sbCancelarClick(Sender: TObject);
begin
  inherited;
  FEntityProdutos.cancelar;
end;

procedure TformCadastroProdutos.sbEditarClick(Sender: TObject);
begin
  FEntityProdutos.editar;
  inherited;
  edtProduto.SetFocus;
end;

procedure TformCadastroProdutos.sbExcluirClick(Sender: TObject);
begin
  inherited;
  FEntityProdutos.deletar;
end;

procedure TformCadastroProdutos.sbExportarClick(Sender: TObject);
begin
  inherited;
  FEntityProdutos.exportar;
end;

procedure TformCadastroProdutos.sbImprimirClick(Sender: TObject);
begin
  inherited;
  frx_Produtos.LoadFromFile(ExtractFilePath(application.ExeName) +
    'relat�rios/relatorio_produtos.fr3');
  frx_Produtos.ShowReport();
end;

procedure TformCadastroProdutos.sbNovoClick(Sender: TObject);
begin
  inherited;
  FEntityProdutos.inserir;
  edtProduto.SetFocus;
  edtDataDeValidade.Clear;
  edtDataDeAlteracao.Clear;
  edtDataDeFabricacao.Clear;
end;

procedure TformCadastroProdutos.sbPesquisarGrupoClick(Sender: TObject);
begin
  inherited;

  if sbNovo.Enabled = false then
  begin
    formLocalizarGrupo := TFormLocalizarGrupo.Create(self);
    TFactory.new.criarJanela.FormShow(formLocalizarGrupo, '');

    edtCodigoGrupo.Text := codigoGrupo.ToString;
    edtGrupo.Text := grupo;
  end;

end;

procedure TformCadastroProdutos.sbPesquisarMarcaClick(Sender: TObject);
begin
  inherited;

  if sbNovo.Enabled = false then
  begin
    formLocalizarMarca := TformLocalizarMarca.Create(self);
    TFactory.new.criarJanela.FormShow(formLocalizarMarca, '');

    edtCodigoDaMarca.Text := codigoMarca.ToString;
    edtMarca.Text := marca;
  end;

end;

procedure TformCadastroProdutos.sbSalvarClick(Sender: TObject);
begin

  if edtTipoProduto.Text = '' then
  begin
    edtTipoProduto.ItemIndex := 1;
  end;

  FEntityProdutos.getTipoCadastro(edtTipoProduto.Text)
    .getServicoProdutos(edtProduto.Text).getCodigoBarras(edtCodigoDeBarras.Text)
    .getDescricao(edtDescricao.Text).getValorDeCusto(edtValorDeCusto.Text)
    .getMargemDeLUcro(edtMargemDeLucro.Text)
    .getValorDeVenda(edtValorDeVenda.Text).getQuantidadeMinima
    (edtQuantidadeMinima.Text).getQuantidadeAtual(edtQuantidadeAtual.Text)
    .getDataDeValidade(edtDataDeValidade.Text)
    .getDataAlteracao(edtDataDeAlteracao.Text).getGrupo(edtGrupo.Text)
    .getCodigoGrupo(edtCodigoGrupo.Text).getCodigoMarca(edtCodigoDaMarca.Text)
    .getMarca(edtMarca.Text).getModelo(edtModelo.Text)
    .getNumeroDeSerie(edtNumeroDeSerie.Text).getDataFabricacao
    (edtDataDeFabricacao.Text).getObservacao(edtObservacao.Text)
    .getFoto(imagem).gravar;

  inherited;

end;

procedure TformCadastroProdutos.SpeedButton1Click(Sender: TObject);
begin
  inherited;

  if sbNovo.Enabled = false then
  begin
    imagem := TJPEGImage.Create;

    if OpenPictureDialog1.Execute then
    begin
      Image1.Picture.LoadFromFile(OpenPictureDialog1.FileName);
      imagem.LoadFromFile(OpenPictureDialog1.FileName);
    end;
  end;

end;

procedure TformCadastroProdutos.SpeedButton2Click(Sender: TObject);
begin
  inherited;
  frmCalculadoraMargemLucro := TfrmCalculadoraMargemLucro.Create(self);
  TFactory.new.criarJanela.FormShow(frmCalculadoraMargemLucro, '');
end;

procedure TformCadastroProdutos.SpeedButton3Click(Sender: TObject);
begin
  inherited;
  if sbNovo.Enabled = false then
    edtCodigoDeBarras.Text := TFactory.new.gerarCodigoEan13.exibirCodigo;
end;

end.