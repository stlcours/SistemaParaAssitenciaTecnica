unit Form.Relatorio.OS;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Form.Modelo.Relatorio, Data.DB,
  frxClass, frxDBSet, Vcl.Grids, Vcl.DBGrids, Vcl.StdCtrls, Vcl.Buttons,
  Vcl.ExtCtrls, UInterfaces, UClasse.Relatorio.OS;

type
  TformRelatorioOrdemDeServico = class(TformModeloRelatorio)
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
    var
      FRelatorioOS:iRelatorioOS;
  public
    { Public declarations }
  end;

var
  formRelatorioOrdemDeServico: TformRelatorioOrdemDeServico;

implementation

{$R *.dfm}

procedure TformRelatorioOrdemDeServico.FormCreate(Sender: TObject);
begin
  inherited;
  FRelatorioOS := TRelatorioOS.new;
end;

procedure TformRelatorioOrdemDeServico.FormShow(Sender: TObject);
begin
  inherited;
   FRelatorioOS
              .abrir
              .listarGrid(DataSource1);
end;

end.
