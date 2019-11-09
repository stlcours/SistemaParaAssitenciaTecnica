unit Form.Localizar.Produtos.Entrada;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Buttons, Vcl.ExtCtrls,
  Data.DB, Vcl.Grids, Vcl.DBGrids, FireDAC.Comp.Client, UDados.Conexao;

type
  TformLocalizarProdutosEntradas = class(TForm)
    Panel1: TPanel;
    sbFechar: TSpeedButton;
    lblCaption: TLabel;
    Panel2: TPanel;
    DBGrid1: TDBGrid;
    DataSource1: TDataSource;
    Label4: TLabel;
    cbPesquisar: TComboBox;
    Label5: TLabel;
    edtPesquisar: TEdit;
    procedure sbFecharClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure edtPesquisarKeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DBGrid1DblClick(Sender: TObject);
    procedure Panel1MouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
  private
    { Private declarations }
    procedure selecionarRegistros;

  var
    FQuery: TFDQuery;
    FCampo: string;
    FValor: string;
  public
    { Public declarations }
  end;

var
  formLocalizarProdutosEntradas: TformLocalizarProdutosEntradas;

implementation

{$R *.dfm}

uses Form.Entradas.Produtos;

procedure TformLocalizarProdutosEntradas.DBGrid1DblClick(Sender: TObject);
begin
  formEntradaDeProdutos.edtCodigoDoProduto.text :=
    DataSource1.DataSet.FieldByName('ID').AsInteger.ToString;
  formEntradaDeProdutos.edtProduto.text := DataSource1.DataSet.FieldByName
    ('SERVICO_PRODUTO').AsString;
  Close;
end;

procedure TformLocalizarProdutosEntradas.edtPesquisarKeyUp(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin

  if cbPesquisar.text = 'C�digo' then
    FCampo := 'ID'
  else if cbPesquisar.text = 'Produto/Servi�o' then
    FCampo := 'SERVICO_PRODUTO'
  else if cbPesquisar.text = 'Tipo de cadastro' then
    FCampo := 'TIPO_CADASTROS'
  else if cbPesquisar.text = 'C�digo de barras' then
    FCampo := 'CODIGO_BARRAS';

  FValor := UpperCase(edtPesquisar.text);

  selecionarRegistros;

  { C�digo
    Produto/Servi�o
    Tipo de cadastro
    C�digo de barras }
end;

procedure TformLocalizarProdutosEntradas.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  FQuery.Free;
end;

procedure TformLocalizarProdutosEntradas.FormCreate(Sender: TObject);
begin
  FQuery := TFDQuery.Create(nil);
  FQuery.Connection := DataModule1.Conexao;
end;

procedure TformLocalizarProdutosEntradas.FormShow(Sender: TObject);
begin
  FCampo := 'ID';
  FValor := '0';
  selecionarRegistros;
end;

procedure TformLocalizarProdutosEntradas.Panel1MouseDown(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
const
  SC_DRAGMOVE = $F012;
begin
  if Button = mbleft then
  begin
    ReleaseCapture;
    self.Perform(WM_SYSCOMMAND, SC_DRAGMOVE, 0);
  end;
end;

procedure TformLocalizarProdutosEntradas.sbFecharClick(Sender: TObject);
begin
  Close;
end;

procedure TformLocalizarProdutosEntradas.selecionarRegistros;
begin
  FQuery.Active := false;
  FQuery.SQL.Clear;
  FQuery.SQL.Add('select * from PRODUTOS where ' + FCampo + ' like :v');
  FQuery.ParamByName('v').AsString := FValor + '%';
  FQuery.Active := true;

  FQuery.FieldByName('ID').DisplayLabel := 'C�digo';
  FQuery.FieldByName('TIPO_CADASTROS').DisplayLabel := 'Tipo de cadastro';
  FQuery.FieldByName('SERVICO_PRODUTO').DisplayLabel := 'Produto/Servi�o';
  FQuery.FieldByName('CODIGO_BARRAS').DisplayLabel := 'C�d. de barras';
  FQuery.FieldByName('DESCRICAO').DisplayLabel := 'Descri��o';
  FQuery.FieldByName('VALOR_CUSTO').DisplayLabel := 'Valor de custo';
  FQuery.FieldByName('MARGEM_LUCRO').DisplayLabel := 'Margem de lucro';
  FQuery.FieldByName('VALOR_VENDA').DisplayLabel := 'Valor de venda';
  FQuery.FieldByName('QUANTIDADE_MINIMA').DisplayLabel := 'QTDE m�nima';
  FQuery.FieldByName('QUANTIDADE_ATUAL').DisplayLabel := 'QTDE atual';
  FQuery.FieldByName('DATA_VALIDADE').DisplayLabel := 'Validade';
  FQuery.FieldByName('DATA_ALTERACAO').DisplayLabel := 'Altera��o';
  FQuery.FieldByName('ID_GRUPO').DisplayLabel := 'C�digo do grupo';
  FQuery.FieldByName('GRUPO').DisplayLabel := 'Grupo';
  FQuery.FieldByName('ID_MARCA').DisplayLabel := 'C�digo da marca';
  FQuery.FieldByName('MARCA').DisplayLabel := 'Marca';
  FQuery.FieldByName('MODELO').DisplayLabel := 'Modelo';
  FQuery.FieldByName('NUMERO_SERIE').DisplayLabel := 'N�mero de serie';
  FQuery.FieldByName('DATA_FABRICACAO').DisplayLabel := 'Fabrica��o';
  FQuery.FieldByName('FUNCIONARIO').Visible := false;
  FQuery.FieldByName('FOTO').Visible := false;
  FQuery.FieldByName('OBSERVACAO').DisplayLabel := 'Observa��o';

  FQuery.FieldByName('SERVICO_PRODUTO').DisplayWidth := 30;
  FQuery.FieldByName('TIPO_CADASTROS').DisplayWidth := 18;
  FQuery.FieldByName('CODIGO_BARRAS').DisplayWidth := 25;
  FQuery.FieldByName('DESCRICAO').DisplayWidth := 20;
  FQuery.FieldByName('GRUPO').DisplayWidth := 30;
  FQuery.FieldByName('MARCA').DisplayWidth := 30;
  FQuery.FieldByName('MODELO').DisplayWidth := 30;
  FQuery.FieldByName('NUMERO_SERIE').DisplayWidth := 30;
  FQuery.FieldByName('OBSERVACAO').DisplayWidth := 30;

  DataSource1.DataSet := FQuery;

end;

end.
