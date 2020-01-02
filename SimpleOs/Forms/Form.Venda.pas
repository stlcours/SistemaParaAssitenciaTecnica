unit Form.Venda;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Buttons, Vcl.ExtCtrls,
  Vcl.Imaging.jpeg, Data.DB, Vcl.Grids, Vcl.DBGrids,
  Form.Localizar.Clientes.Venda, UClasse.Entity.Localizar.Cliente.Venda,
  UInterfaces, Form.Localizar.Produtos.Venda, Datasnap.DBClient,
  UClasse.Entity.Itens.Venda, UClasse.Entity.Localizar.Produto.Venda,
  UClasse.Venda, Form.Venda.Confirmar.Pagamento;

type
  TformVendas = class(TForm)
    Panel1: TPanel;
    sbFechar: TSpeedButton;
    lblCaption: TLabel;
    Panel3: TPanel;
    sbNovo: TSpeedButton;
    sbCancelar: TSpeedButton;
    Label1: TLabel;
    Label2: TLabel;
    Panel2: TPanel;
    Panel4: TPanel;
    edtLocalizarCPF: TEdit;
    Label3: TLabel;
    lblNomeDoCliente: TLabel;
    SpeedButton1: TSpeedButton;
    Panel5: TPanel;
    edtLocalizarProduto: TEdit;
    SpeedButton2: TSpeedButton;
    lblProduto: TLabel;
    Image1: TImage;
    edtValorUnitario: TEdit;
    Label6: TLabel;
    edtQuantidade: TEdit;
    Label7: TLabel;
    SpeedButton3: TSpeedButton;
    Panel6: TPanel;
    DBGrid1: TDBGrid;
    Panel7: TPanel;
    SpeedButton4: TSpeedButton;
    SpeedButton5: TSpeedButton;
    Label8: TLabel;
    lblTotalItens: TLabel;
    lblTotalDaVenda: TLabel;
    Label11: TLabel;
    cds_tem_produtos: TClientDataSet;
    cds_tem_produtoscodigo_produto: TIntegerField;
    cds_tem_produtosProduto: TStringField;
    cds_tem_produtosValor_unitario: TCurrencyField;
    cds_tem_produtosQuantidade: TIntegerField;
    cds_tem_produtosTotal_do_produto: TCurrencyField;
    S_temp_produtos: TDataSource;
    Label4: TLabel;
    edtTotalDoProduto: TEdit;
    lblOperador: TLabel;
    Label9: TLabel;
    procedure Panel1MouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure sbFecharClick(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure edtLocalizarCPFKeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormCreate(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure SpeedButton3Click(Sender: TObject);
    procedure edtQuantidadeKeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure edtQuantidadeExit(Sender: TObject);
    procedure edtLocalizarProdutoKeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure SpeedButton4Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure SpeedButton5Click(Sender: TObject);
  private
    { Private declarations }
    FLocalizarClienteVenda: iLocalizarClienteVenda;
    FLocalizarPrutoVenda: iLocalizarProdutosVenda;
    FEntityVenda: iVenda;
    FEntityItensVenda: iItensVendas;
    procedure calcularTotalPorQuantidade;
  public
    { Public declarations }
  end;

var
  formVendas: TformVendas;

  CodigoCliente: Integer;
  NomeCliente: string;
  CPF_CNPJ_Cliente: string;

  CodigoDoProduto: Integer;
  NomeDoProduto: string;
  CodigoDeBarras: string;
  QuantidadeDeProdutos: Integer;
  QuantidadeEmEstoque: Integer;
  SituacaoDoEstoque: string;
  valorUnitario: Currency;
  valorTotalDoProduto: Currency;
  TotalDeItens: Integer;
  TotalDaVenda: Currency;

implementation

{$R *.dfm}

procedure TformVendas.edtLocalizarCPFKeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin

  if Key = 13 then
  begin

    if UpperCase(edtLocalizarCPF.Text) = 'AA' then
    begin
      lblNomeDoCliente.Caption := 'Cliente n�o informado';
      edtLocalizarCPF.Text := '000.000.000-00'
    end
    else
    begin

      FLocalizarClienteVenda.getCampo('CPF_CNPJ').getValor(edtLocalizarCPF.Text)
        .sqlPesquisa;

      edtLocalizarCPF.Text := FLocalizarClienteVenda.setCpf_CnpjDoCliente;
      lblNomeDoCliente.Caption := FLocalizarClienteVenda.setNomeDoCliente;

      CodigoCliente := StrToInt(FLocalizarClienteVenda.setCodigoDoCliente);

      if CodigoCliente <> 0 then
      begin

        NomeCliente := FLocalizarClienteVenda.setNomeDoCliente;
        CPF_CNPJ_Cliente := FLocalizarClienteVenda.setCpf_CnpjDoCliente;
        edtLocalizarProduto.SetFocus;

      end;

    end;
  end;
end;

procedure TformVendas.edtLocalizarProdutoKeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = 13 then
  begin
    FLocalizarPrutoVenda.getCampo('CODIGO_BARRAS')
      .getValor(edtLocalizarProduto.Text).sqlPesquisa;

    SituacaoDoEstoque := FLocalizarPrutoVenda.setSituacaoDoEstoque;
    CodigoDoProduto := FLocalizarPrutoVenda.setCodigoDoProduto;
    NomeDoProduto := FLocalizarPrutoVenda.setNomeDoProduto;
    CodigoDeBarras := FLocalizarPrutoVenda.setCodigoDeBarras;
    QuantidadeDeProdutos := FLocalizarPrutoVenda.setQuantidade;
    QuantidadeEmEstoque := FLocalizarPrutoVenda.setQuantidadeEmEstoque;
    FLocalizarPrutoVenda.setFotoProduto(formVendas.Image1);
    valorUnitario := FLocalizarPrutoVenda.setValorUnitarioProduto;
    valorTotalDoProduto := FLocalizarPrutoVenda.setValorUnitarioProduto;

    edtLocalizarProduto.Text := CodigoDeBarras;
    edtQuantidade.Text := inttostr(QuantidadeDeProdutos);
    edtValorUnitario.Text := CurrToStr(valorUnitario);
    edtTotalDoProduto.Text := CurrToStr(valorTotalDoProduto);
    lblProduto.Caption := NomeDoProduto;

  end;
end;

procedure TformVendas.calcularTotalPorQuantidade;
var
  total: Currency;
begin

  if StrToInt(edtQuantidade.Text) > QuantidadeDeProdutos then
  begin
    edtQuantidade.SetFocus;
    raise Exception.Create
      ('N�o h� produtos no estoque suficiente para esta venda. Escolha uma quantidade menor.');
  end;

  total := FEntityItensVenda.calularTotalXquantidade(edtValorUnitario,
    edtQuantidade);
  valorTotalDoProduto := total;
  edtTotalDoProduto.Text := CurrToStr(total);
  QuantidadeDeProdutos := StrToInt(edtQuantidade.Text);
end;

procedure TformVendas.edtQuantidadeExit(Sender: TObject);
begin

  calcularTotalPorQuantidade;

end;

procedure TformVendas.edtQuantidadeKeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = 13 then
  begin

    calcularTotalPorQuantidade;

  end;
end;

procedure TformVendas.FormCreate(Sender: TObject);
begin
  FLocalizarClienteVenda := TEntityPesquisarCliente.new;
  FLocalizarPrutoVenda := TEntityLocalizarProdutoVenda.new;
  FEntityVenda := TEntityVenda.new;
  FEntityItensVenda := TEntityItensVenda.new;
end;

procedure TformVendas.FormShow(Sender: TObject);
begin
  lblOperador.Caption := FEntityVenda.setNomeFuncionario;
end;

procedure TformVendas.Panel1MouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
const
  SC_DRAGMOVE = $F012;
begin
  if Button = mbleft then
  begin
    ReleaseCapture;
    self.Perform(WM_SYSCOMMAND, SC_DRAGMOVE, 0);
  end;
end;

procedure TformVendas.sbFecharClick(Sender: TObject);
begin
  close;
end;

procedure TformVendas.SpeedButton1Click(Sender: TObject);
begin
  formLocalizarClientesVenda := TformLocalizarClientesVenda.Create(self);
  try
    formLocalizarClientesVenda.ShowModal;
  finally
    formLocalizarClientesVenda.Free;

    if CodigoCliente <> 0 then
    begin
      edtLocalizarCPF.Text := CPF_CNPJ_Cliente;
      lblNomeDoCliente.Caption := NomeCliente;
      edtLocalizarProduto.SetFocus;
    end;

  end;
end;

procedure TformVendas.SpeedButton2Click(Sender: TObject);
begin
  formLocalizarProdutoVenda := TformLocalizarProdutoVenda.Create(self);
  try
    formLocalizarProdutoVenda.ShowModal;
  finally
    formLocalizarProdutoVenda.Free;

    edtLocalizarProduto.Text := CodigoDeBarras;
    edtQuantidade.Text := inttostr(QuantidadeDeProdutos);
    edtValorUnitario.Text := CurrToStr(valorUnitario);
    edtTotalDoProduto.Text := CurrToStr(valorTotalDoProduto);
    lblProduto.Caption := NomeDoProduto;

  end;
end;

procedure TformVendas.SpeedButton3Click(Sender: TObject);
begin
  if CodigoDoProduto <> 0 then
  begin

    calcularTotalPorQuantidade;

    try
      cds_tem_produtos.Open;
      cds_tem_produtos.Append;

      cds_tem_produtoscodigo_produto.AsInteger := CodigoDoProduto;
      cds_tem_produtosProduto.AsString := NomeDoProduto;
      cds_tem_produtosValor_unitario.AsCurrency := valorUnitario;
      cds_tem_produtosQuantidade.AsInteger := QuantidadeDeProdutos;
      cds_tem_produtosTotal_do_produto.AsCurrency := valorTotalDoProduto;

      cds_tem_produtos.Post;

      lblTotalDaVenda.Caption := formatFloat('R$ ###,##0.00',
        FEntityVenda.somarItensDaVenda(cds_tem_produtos));

      lblTotalItens.Caption :=
        inttostr(FEntityVenda.contarTotalItens(cds_tem_produtos));

    except
      on e: Exception do
      begin
        raise Exception.Create('Erro ao tentar adicionar o produto na lista. ' +
          e.Message);
      end;

    end;

  end;
end;

procedure TformVendas.SpeedButton4Click(Sender: TObject);
begin

  cds_tem_produtos.Delete;

  lblTotalDaVenda.Caption := formatFloat('R$ ###,##0.00',
    FEntityVenda.somarItensDaVenda(cds_tem_produtos));

  lblTotalItens.Caption :=
    inttostr(FEntityVenda.contarTotalItens(cds_tem_produtos));

end;

procedure TformVendas.SpeedButton5Click(Sender: TObject);
begin

  TotalDaVenda := FEntityVenda.somarItensDaVenda(cds_tem_produtos);

  TotalDeItens := FEntityVenda.contarTotalItens(cds_tem_produtos);

  FormVendaConfirmarPagamento := TFormVendaConfirmarPagamento.Create(self);
  try
    FormVendaConfirmarPagamento.ShowModal;
  finally
    FormVendaConfirmarPagamento.Free;
  end;
end;

end.