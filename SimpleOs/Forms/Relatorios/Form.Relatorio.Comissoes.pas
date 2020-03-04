unit Form.Relatorio.Comissoes;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Form.Modelo.Relatorio, Data.DB,
  frxClass, frxDBSet, Vcl.Grids, Vcl.DBGrids, Vcl.StdCtrls, Vcl.Buttons,
  Vcl.ExtCtrls, Vcl.Mask, UInterfaces, UClasse.Relatorio.Comissoes.Tecnico,
  Datasnap.DBClient;

type
  TformComissoesTecnicos = class(TformModeloRelatorio)
    edtData1: TMaskEdit;
    edtData2: TMaskEdit;
    Label1: TLabel;
    cbPesquisarData: TComboBox;
    Label2: TLabel;
    sbPesquisarData: TSpeedButton;
    ClientDataSet1: TClientDataSet;
    ClientDataSet1id_tecnico: TIntegerField;
    ClientDataSet1nome_tecnico: TStringField;
    ClientDataSet1Quantidade: TIntegerField;
    ClientDataSet1percentual_por_os: TFloatField;
    ClientDataSet1Total_comissao: TCurrencyField;
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
    var
      FRelatorio:iRelatorioComissoesTecnico;
  public
    { Public declarations }
  end;

var
  formComissoesTecnicos: TformComissoesTecnicos;

implementation

{$R *.dfm}

procedure TformComissoesTecnicos.FormCreate(Sender: TObject);
begin
  inherited;
  FRelatorio := TRelatorioComissoes.new;
end;

end.
