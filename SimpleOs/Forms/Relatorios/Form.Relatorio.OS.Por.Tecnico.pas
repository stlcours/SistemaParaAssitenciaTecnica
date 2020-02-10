unit Form.Relatorio.OS.Por.Tecnico;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Form.Modelo.Relatorio, Data.DB,
  frxClass, frxDBSet, Vcl.Grids, Vcl.DBGrids, Vcl.StdCtrls, Vcl.Buttons,
  Vcl.ExtCtrls, UInterfaces, UClasse.Relatorio.OS.Por.Tecnico, Vcl.Mask;

type
  TEnumPesquisar = (codigo, tecnico);

type
  TformRelatorioOSPorTecnico = class(TformModeloRelatorio)
    Label1: TLabel;
    sbPesquisarDatas: TSpeedButton;
    edtData1: TMaskEdit;
    edtData2: TMaskEdit;
    cbPesquisarDatas: TComboBox;
    Bevel2: TBevel;
    Bevel1: TBevel;
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);

    procedure edtPesquisarKeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);  private
    { Private declarations }
    var
      FRelatorioOSTecnico:iRelatorioOSPorTecnico;
  public
    { Public declarations }
  end;

var
  formRelatorioOSPorTecnico: TformRelatorioOSPorTecnico;

implementation

{$R *.dfm}

procedure TformRelatorioOSPorTecnico.edtPesquisarKeyUp(Sender: TObject;
  var Key: Word; Shift: TShiftState);
  var
    FCampo:String;
begin
  inherited;

  {Continuar desta parte}

  case TEnumPesquisar(cbPesquisar.ItemIndex) of
  codigo:
  begin
    Fcampo := '';
  end;
  tecnico:
  begin
    Fcampo := '';
  end;
  end;

end;

procedure TformRelatorioOSPorTecnico.FormCreate(Sender: TObject);
begin
  inherited;
  FRelatorioOSTecnico := TRelatorioOSPorTecnico.new;
end;

procedure TformRelatorioOSPorTecnico.FormShow(Sender: TObject);
begin
  inherited;
  FRelatorioOSTecnico.abrir.listarGrid(DataSource1);
end;

end.