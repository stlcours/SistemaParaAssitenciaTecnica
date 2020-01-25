unit Form.Relatorio.Historico.OS;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Form.Modelo.Relatorio, Data.DB,
  frxClass, frxDBSet, Vcl.Grids, Vcl.DBGrids, Vcl.StdCtrls, Vcl.Buttons,
  Vcl.ExtCtrls, UClasse.Historico.OS.Clientes, UInterfaces, Vcl.Mask;

type
  TEnumPesquisar = (codigo_cliente, codigo_os, nome_cliente);

type
  TformRelatorioHistoricoOS = class(TformModeloRelatorio)
    GroupBox1: TGroupBox;
    DBGrid2: TDBGrid;
    DataSource2: TDataSource;
    ComboBox1: TComboBox;
    Label1: TLabel;
    Bevel1: TBevel;
    ComboBox2: TComboBox;
    MaskEdit1: TMaskEdit;
    MaskEdit2: TMaskEdit;
    Label2: TLabel;
    Label3: TLabel;
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure DBGrid1CellClick(Column: TColumn);
    procedure edtPesquisarKeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
  private
    { Private declarations }
  var
    FEntityHistorico: iHistoricoOSClientes;
  public
    { Public declarations }
  end;

var
  formRelatorioHistoricoOS: TformRelatorioHistoricoOS;

implementation

{$R *.dfm}

procedure TformRelatorioHistoricoOS.DBGrid1CellClick(Column: TColumn);
begin
  inherited;
  if DataSource1.DataSet.RecordCount >= 1 then
  begin
    FEntityHistorico.selecionarServicosOS
      (DataSource1.DataSet.FieldByName('ID_ORDEM').AsInteger)
      .listarGridServicos(DataSource2);
  end;
end;

procedure TformRelatorioHistoricoOS.edtPesquisarKeyUp(Sender: TObject;
  var Key: Word; Shift: TShiftState);
var
  FCampo: string;
begin
  inherited;

  case TEnumPesquisar(cbPesquisar.ItemIndex) of
    codigo_cliente:
      begin
        FCampo := 'ID_CLIENTE';
      end;
    codigo_os:
      begin
        FCampo := 'ID_ORDEM';
      end;
    nome_cliente:
      begin
        FCampo := 'NOME_CLIENTE';
      end;

  end;

  if edtPesquisar.Text <> EmptyStr then
    FEntityHistorico.getCampo(FCampo).getValor(edtPesquisar.Text)
      .sqlPesquisa.listarGrid(DataSource1).selecionarServicosOS
      (DataSource1.DataSet.FieldByName('ID_ORDEM').AsInteger)
      .listarGridServicos(DataSource2);

end;

procedure TformRelatorioHistoricoOS.FormCreate(Sender: TObject);
begin
  inherited;
  FEntityHistorico := TEntityHistoricoOSClientes.new;
end;

procedure TformRelatorioHistoricoOS.FormShow(Sender: TObject);
begin
  inherited;
  FEntityHistorico.abrir.listarGrid(DataSource1);
  FEntityHistorico.selecionarServicosOS(0).listarGridServicos(DataSource2);
end;

end.
