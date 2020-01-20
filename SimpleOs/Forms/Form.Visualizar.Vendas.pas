unit Form.Visualizar.Vendas;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Buttons, Vcl.ExtCtrls,
  Data.DB, Vcl.Grids, Vcl.DBGrids, Vcl.Mask, Vcl.Menus, UInterfaces,
  UClasse.Visualizar.Vendas;

type
  TformVisualizarVendas = class(TForm)
    Panel1: TPanel;
    sbFechar: TSpeedButton;
    lblCaption: TLabel;
    Panel3: TPanel;
    sbImprimirLista: TSpeedButton;
    Label4: TLabel;
    Label5: TLabel;
    cbPesquisar: TComboBox;
    edtPesquisar: TEdit;
    sbExportarLista: TSpeedButton;
    sbEstornarVenda: TSpeedButton;
    Label1: TLabel;
    edtData1: TMaskEdit;
    edtData2: TMaskEdit;
    SpeedButton3: TSpeedButton;
    GroupBox1: TGroupBox;
    GroupBox2: TGroupBox;
    DBGrid1: TDBGrid;
    DBGrid2: TDBGrid;
    DataSource_Vendas: TDataSource;
    DataSource_Itens: TDataSource;
    PopupMenu1: TPopupMenu;
    Excluirestavenda1: TMenuItem;
    Estornarestavenda1: TMenuItem;
    Imprimirparcelasdestavenda1: TMenuItem;
    Imprimircomprovantedavenda1: TMenuItem;
    procedure sbFecharClick(Sender: TObject);
    procedure Panel1MouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
    FEntityVisualizaVenda :iVisualizarVenda;
  public
    { Public declarations }
  end;

var
  formVisualizarVendas: TformVisualizarVendas;

implementation

{$R *.dfm}

procedure TformVisualizarVendas.FormCreate(Sender: TObject);
begin
   FEntityVisualizaVenda := TEntityVisuzaliarVendas.new;
end;

procedure TformVisualizarVendas.FormShow(Sender: TObject);
begin
   FEntityVisualizaVenda.abrir.listarGrid(DataSource_Vendas);
end;

procedure TformVisualizarVendas.Panel1MouseDown(Sender: TObject;
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

procedure TformVisualizarVendas.sbFecharClick(Sender: TObject);
begin
  Close;
end;

end.
