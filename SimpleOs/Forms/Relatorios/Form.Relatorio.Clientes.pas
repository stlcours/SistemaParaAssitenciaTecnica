unit Form.Relatorio.Clientes;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Form.Modelo.Relatorio, Data.DB,
  frxClass, frxDBSet, Vcl.Grids, Vcl.DBGrids, Vcl.StdCtrls, Vcl.Buttons,
  Vcl.ExtCtrls, UClasse.Relatorio.Clientes, UInterfaces;

Type
   TEnumPesquisar = (codigo, nome, cpf_cnpj);

type
  TformRelatorioClientes = class(TformModeloRelatorio)
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  var
    FEntityRelatorioClientes: iRelatorioClientes;
  public
    { Public declarations }
  end;

var
  formRelatorioClientes: TformRelatorioClientes;

implementation

{$R *.dfm}

procedure TformRelatorioClientes.FormCreate(Sender: TObject);
begin
  inherited;
  FEntityRelatorioClientes := TEntityModeloRelatorio.new;
end;

procedure TformRelatorioClientes.FormShow(Sender: TObject);
begin
  inherited;
  FEntityRelatorioClientes.abrir.listarGrid(DataSource1);
end;

end.
