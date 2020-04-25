unit Form.Relatorio.OS.Por.Tecnico;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Form.Modelo.Relatorio, Data.DB,
  frxClass, frxDBSet, Vcl.Grids, Vcl.DBGrids, Vcl.StdCtrls, Vcl.Buttons,
  Vcl.ExtCtrls, UInterfaces, UClasse.Relatorio.OS.Por.Tecnico, Vcl.Mask;


type
  TEnumPesquisarData = (entrada, saida);

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
      Shift: TShiftState);
    procedure sbPesquisarDatasClick(Sender: TObject);
    procedure sbExportarClick(Sender: TObject);
    procedure sbImprimirClick(Sender: TObject);
    procedure DBGrid1TitleClick(Column: TColumn);  private
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

uses softMeter_globalVar;

procedure TformRelatorioOSPorTecnico.DBGrid1TitleClick(Column: TColumn);
begin
  inherited;
  FRelatorioOSTecnico.ordenarGrid(Column);
end;

procedure TformRelatorioOSPorTecnico.edtPesquisarKeyUp(Sender: TObject;
  var Key: Word; Shift: TShiftState);
  var
    FCampo:String;
begin
  inherited;

  case TEnumPesquisar(cbPesquisar.ItemIndex) of
  codigo:
  begin
    Fcampo := 'ID_TECNICO_RESPONSAVEL';
  end;
  tecnico:
  begin
    Fcampo := 'TECNICO_RESPONSAVEL';
  end;
  end;

  if edtPesquisar.Text <> EmptyStr then
    FRelatorioOSTecnico
                      .getCampo(FCampo)
                      .getValor(edtPesquisar.Text)
                      .sqlPesquisa
                      .listarGrid(DataSource1);

end;

procedure TformRelatorioOSPorTecnico.FormCreate(Sender: TObject);
begin
  inherited;
  FRelatorioOSTecnico := TRelatorioOSPorTecnico.new;
  dllSoftMeter.sendEvent('relatorio OS por tecnico', 'rel os tecnico', 0);
end;

procedure TformRelatorioOSPorTecnico.FormShow(Sender: TObject);
begin
  inherited;

  FRelatorioOSTecnico
                    .abrir
                    .getCampo('ID_ORDEM')
                    .getValor('0')
                    .sqlPesquisa
                    .listarGrid(DataSource1);
end;

procedure TformRelatorioOSPorTecnico.sbExportarClick(Sender: TObject);
begin
  inherited;
  FRelatorioOSTecnico.exportar;
end;

procedure TformRelatorioOSPorTecnico.sbImprimirClick(Sender: TObject);
begin
  inherited;
  frxReport1.LoadFromFile(ExtractFilePath(application.ExeName) +
    'relatórios/relatorio_os_por_tecnico.fr3');
  frxReport1.ShowReport();
end;

procedure TformRelatorioOSPorTecnico.sbPesquisarDatasClick(Sender: TObject);
var
Fcampo : String;
begin
  inherited;

  case TEnumPesquisarData(cbPesquisarDatas.ItemIndex) of
  entrada:
  begin
    FCampo := 'DATA_ENTRADA';
  end;
  saida:
  begin
    FCampo := 'DATA_FINALIZACAO';
  end;
  end;

  FRelatorioOSTecnico
                    .validarData(edtData1)
                    .validarData(edtData2);

  FRelatorioOSTecnico
                    .getCampo(FCampo)
                    .getDataInicial(StrToDate(edtData1.Text))
                    .getDataFinal(StrToDate(edtData2.Text))
                    .sqlPesquisaData
                    .listarGrid(DataSource1);

end;

end.
