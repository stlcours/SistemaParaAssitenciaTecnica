unit Form.Relatorio.OS.Por.Status;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Form.Modelo.Relatorio, Data.DB,
  frxClass, frxDBSet, Vcl.Grids, Vcl.DBGrids, Vcl.StdCtrls, Vcl.Buttons,
  Vcl.ExtCtrls, UInterfaces, UClasse.Relatorio.OS.Situacao, Vcl.Mask;

type
  TformRelatorioOSPorStatus = class(TformModeloRelatorio)
    Bevel2: TBevel;
    Label1: TLabel;
    GroupBox1: TGroupBox;
    ComboBox1: TComboBox;
    MaskEdit1: TMaskEdit;
    MaskEdit2: TMaskEdit;
    sbPesquisarDatas: TSpeedButton;
    Label2: TLabel;
    ComboBox2: TComboBox;
    Label3: TLabel;
    Label6: TLabel;
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
    FRelatorioSituacao:iRelatorioOSPorSituacao;
  public
    { Public declarations }
  end;

var
  formRelatorioOSPorStatus: TformRelatorioOSPorStatus;

implementation

{$R *.dfm}

procedure TformRelatorioOSPorStatus.FormCreate(Sender: TObject);
begin
  inherited;
  FRelatorioSituacao := TRelatorioOSSituacao.new;
end;

procedure TformRelatorioOSPorStatus.FormShow(Sender: TObject);
begin
  inherited;
  FRelatorioSituacao.abrir.listarGrid(DataSource1);
end;

end.
