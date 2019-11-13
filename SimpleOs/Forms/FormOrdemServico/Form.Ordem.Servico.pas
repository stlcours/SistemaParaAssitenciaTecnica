unit Form.Ordem.Servico;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Buttons, Vcl.ExtCtrls,
  Vcl.ComCtrls, Data.DB, Vcl.Grids, Vcl.DBGrids, UInterfaces,
  UClasse.Entity.Ordem.Servico;

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
    PageControl1: TPageControl;
    tbConsulta: TTabSheet;
    tbCadastroOrdens: TTabSheet;
    tbItensOrdem: TTabSheet;
    tbPedidoDeCompra: TTabSheet;
    tbParcelas: TTabSheet;
    Panel4: TPanel;
    DBGrid1: TDBGrid;
    Panel2: TPanel;
    Panel5: TPanel;
    Panel6: TPanel;
    Panel7: TPanel;
    DataSource1: TDataSource;
    procedure sbFecharClick(Sender: TObject);
    procedure Panel1MouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
    FEntityOrdem: iOrdemServico;
  public
    { Public declarations }
  end;

var
  formOrdemDeServico: TformOrdemDeServico;

implementation

{$R *.dfm}

procedure TformOrdemDeServico.FormCreate(Sender: TObject);
begin
  FEntityOrdem := TEntityOrdemServico.new;
end;

procedure TformOrdemDeServico.FormShow(Sender: TObject);
begin
  FEntityOrdem.abrir.listarGrid(DataSource1);
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

end.