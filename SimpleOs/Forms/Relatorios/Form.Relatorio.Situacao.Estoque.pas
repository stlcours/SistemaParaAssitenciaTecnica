unit Form.Relatorio.Situacao.Estoque;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Form.Modelo.Relatorio, Data.DB,
  frxClass, frxDBSet, Vcl.Grids, Vcl.DBGrids, Vcl.StdCtrls, Vcl.Buttons,
  Vcl.ExtCtrls, UInterfaces, UClasse.Relatorio.Situacao.Estoque;

type
  TformRelatorioSituacaoDoEstoque = class(TformModeloRelatorio)
    cbPesquisarSituacao: TComboBox;
    Label1: TLabel;
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
    var
      FRelatorioSituacaoEstoque:iRelatorioSituacaoEstoque;

  public
    { Public declarations }
  end;

var
  formRelatorioSituacaoDoEstoque: TformRelatorioSituacaoDoEstoque;

implementation

{$R *.dfm}

procedure TformRelatorioSituacaoDoEstoque.FormCreate(Sender: TObject);
begin
  inherited;
  FRelatorioSituacaoEstoque := TRelatorioSituacaoEstoque.new;
end;

procedure TformRelatorioSituacaoDoEstoque.FormShow(Sender: TObject);
begin
  inherited;
  FRelatorioSituacaoEstoque
                          .abrir
                          .listarGrid(DataSource1);
end;

end.
