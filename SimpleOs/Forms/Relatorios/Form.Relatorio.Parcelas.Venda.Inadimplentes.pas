unit Form.Relatorio.Parcelas.Venda.Inadimplentes;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Form.Modelo.Relatorio, Data.DB,
  frxClass, frxDBSet, Vcl.Grids, Vcl.DBGrids, Vcl.StdCtrls, Vcl.Buttons,
  Vcl.ExtCtrls, UInterfaces, UClasse.Relatorio.Vendas.Inadimplentes;

type
  TformRelatorioVendasInadimplentes = class(TformModeloRelatorio)
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure DBGrid1TitleClick(Column: TColumn);
  private
    { Private declarations }
    var
      FRelatorioInadimplentes:iRelatorioVendaInadimplentes;
  public
    { Public declarations }
  end;

var
  formRelatorioVendasInadimplentes: TformRelatorioVendasInadimplentes;

implementation

{$R *.dfm}

procedure TformRelatorioVendasInadimplentes.DBGrid1TitleClick(Column: TColumn);
begin
  inherited;
  FRelatorioInadimplentes.ordenarGrid(Column);
end;

procedure TformRelatorioVendasInadimplentes.FormCreate(Sender: TObject);
begin
  inherited;
  FRelatorioInadimplentes := TRelatorioVendasInadimplentes.new;
end;

procedure TformRelatorioVendasInadimplentes.FormShow(Sender: TObject);
begin
  inherited;
  FRelatorioInadimplentes
                        .abrir
                        .listarGrid(DataSource1);
end;

end.
