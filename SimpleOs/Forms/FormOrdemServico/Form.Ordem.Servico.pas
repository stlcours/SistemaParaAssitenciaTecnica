unit Form.Ordem.Servico;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Buttons, Vcl.ExtCtrls,
  Vcl.ComCtrls, Data.DB, Vcl.Grids, Vcl.DBGrids, UInterfaces,
  UClasse.Entity.Ordem.Servico, UClasse.Entity.Cadastro.Clientes, Vcl.Mask;

type
  TformOrdemDeServico = class(TForm)
    Panel1: TPanel;
    sbFechar: TSpeedButton;
    lblCaption: TLabel;
    Panel3: TPanel;
    sbNovo: TSpeedButton;
    sbSalvar: TSpeedButton;
    sbEditar: TSpeedButton;
    sbExcluir: TSpeedButton;
    sbCancelar: TSpeedButton;
    Label4: TLabel;
    Label5: TLabel;
    cbPesquisar: TComboBox;
    edtPesquisar: TEdit;
    ds_DadosClientes: TDataSource;
    ds_OrdensDoClientes: TDataSource;
    PageControl1: TPageControl;
    tbListaDeOrdens: TTabSheet;
    Panel4: TPanel;
    tbCadastroOrdens: TTabSheet;
    tbItensOrdem: TTabSheet;
    tbPedidoDeCompra: TTabSheet;
    tbParcelas: TTabSheet;
    Panel7: TPanel;
    Panel6: TPanel;
    Panel2: TPanel;
    edtValorDaOrdem: TEdit;
    edtDesconto: TEdit;
    Label15: TLabel;
    Label16: TLabel;
    Label17: TLabel;
    edtAcresimo: TEdit;
    Label18: TLabel;
    edtTotalDaOrdem: TEdit;
    edtPgto: TComboBox;
    Label24: TLabel;
    edtTotalDeParcelas: TEdit;
    Label23: TLabel;
    edtParcelado: TComboBox;
    Label22: TLabel;
    edtFormaDePagamento: TComboBox;
    Label21: TLabel;
    edtDataPagamento: TMaskEdit;
    Label26: TLabel;
    Panel8: TPanel;
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
    Label19: TLabel;
    Label20: TLabel;
    Label25: TLabel;
    Label27: TLabel;
    Label28: TLabel;
    Label29: TLabel;
    Label30: TLabel;
    Label31: TLabel;
    edtCodigo: TEdit;
    edtCodigoCliente: TEdit;
    Edit3: TEdit;
    edtMarca: TEdit;
    edtEquipamento: TEdit;
    edtModelo: TEdit;
    edtNumeroSerie: TEdit;
    edtDefeitoRelatado: TMemo;
    edtLaudoTecnico: TMemo;
    edtSulucaoDoProblema: TMemo;
    edtFuncionario: TEdit;
    edtMotivoDoRetorno: TEdit;
    edtObservacaoes: TEdit;
    edtNomeDoFuncionario: TEdit;
    edtDataFabricacao: TMaskEdit;
    edtDataDeEntrada: TMaskEdit;
    edtDataFinalzacao: TMaskEdit;
    edtDataRetorno: TMaskEdit;
    edtPrioridade: TComboBox;
    edtSituacaoDaOrdem: TComboBox;
    Edit1: TEdit;
    sbPesquisarCep: TSpeedButton;
    SpeedButton1: TSpeedButton;
    GroupBox1: TGroupBox;
    Panel5: TPanel;
    DBGrid1: TDBGrid;
    procedure sbFecharClick(Sender: TObject);
    procedure Panel1MouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure ds_DadosClientesDataChange(Sender: TObject; Field: TField);
    procedure DBGrid2CellClick(Column: TColumn);
    procedure sbNovoClick(Sender: TObject);
  private
    { Private declarations }
    FEntityOrdem: iOrdemServico;
    FEntityClientes: iCadastroClientes;
    FCodigoClienteSelecionado: Integer;
    FNomeClienteSelecionado: string;
  public
    { Public declarations }
  end;

var
  formOrdemDeServico: TformOrdemDeServico;

implementation

{$R *.dfm}

procedure TformOrdemDeServico.DBGrid2CellClick(Column: TColumn);
begin
  if ds_DadosClientes.DataSet.RecordCount >= 1 then
  begin
    FCodigoClienteSelecionado := ds_DadosClientes.DataSet.FieldByName('ID')
      .AsInteger;
    FNomeClienteSelecionado := ds_DadosClientes.DataSet.FieldByName
      ('NOME').AsString;
    FEntityOrdem.getCampo('ID_CLIENTE')
      .getValor(FCodigoClienteSelecionado.ToString).sqlPesquisa.listarGrid
      (ds_OrdensDoClientes);
  end
  else
  begin
    FCodigoClienteSelecionado := null;
    FNomeClienteSelecionado := '';
  end;
end;

procedure TformOrdemDeServico.ds_DadosClientesDataChange(Sender: TObject;
  Field: TField);
begin
  ds_DadosClientes.DataSet.FieldByName('DATA_NASCIMENTO').Visible := false;
  ds_DadosClientes.DataSet.FieldByName('DATA_CADASTRO').Visible := false;
  ds_DadosClientes.DataSet.FieldByName('ENDERECO').Visible := false;
  ds_DadosClientes.DataSet.FieldByName('BAIRRO').Visible := false;
  ds_DadosClientes.DataSet.FieldByName('NUMERO').Visible := false;
  ds_DadosClientes.DataSet.FieldByName('COMPLEMENTO').Visible := false;
  ds_DadosClientes.DataSet.FieldByName('CEP').Visible := false;
  ds_DadosClientes.DataSet.FieldByName('CIDADE').Visible := false;
  ds_DadosClientes.DataSet.FieldByName('ESTADO').Visible := false;
  ds_DadosClientes.DataSet.FieldByName('TELEFONE').Visible := false;
  ds_DadosClientes.DataSet.FieldByName('CELULAR').Visible := false;
  ds_DadosClientes.DataSet.FieldByName('EMAIL').Visible := false;
  ds_DadosClientes.DataSet.FieldByName('FUNCIONARIO_CADASTRO').Visible := false;
  ds_DadosClientes.DataSet.FieldByName('SITUACAO_CLIENTE').Visible := false;
  ds_DadosClientes.DataSet.FieldByName('FOTO').Visible := false;
  ds_DadosClientes.DataSet.FieldByName('OBSERVACAO').Visible := false;

//  Image1.Picture.Assign(ds_DadosClientes.DataSet.FieldByName('foto'));
//
//  if Image1.Picture.Graphic.Empty then
//    Image1.Picture.LoadFromFile(ExtractFilePath(application.ExeName) +
//      '/No_User.png');

end;

procedure TformOrdemDeServico.FormCreate(Sender: TObject);
begin
  FEntityOrdem := TEntityOrdemServico.new;
  FEntityClientes := TEntityCadastroClientes.new;
  ReportMemoryLeaksOnShutdown := true;
end;

procedure TformOrdemDeServico.FormShow(Sender: TObject);
begin
  FEntityClientes.abrir.listarGrid(ds_DadosClientes);
  FEntityOrdem.abrir.listarGrid(ds_OrdensDoClientes);
end;

procedure TformOrdemDeServico.Panel1MouseDown(Sender: TObject;
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

procedure TformOrdemDeServico.sbFecharClick(Sender: TObject);
begin
  close;
end;

procedure TformOrdemDeServico.sbNovoClick(Sender: TObject);
begin
  if FCodigoClienteSelecionado <> null then
  begin
    lblCaption.Caption := self.Caption +
      ' > Inserindo uma nova ordem de servi�o.';
  end
  else
  begin
    raise Exception.Create
      ('Escolha um cliente para inicar a nova ordem de servi�o.');
  end;
end;

end.
