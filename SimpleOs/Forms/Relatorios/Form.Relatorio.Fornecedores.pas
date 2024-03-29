unit Form.Relatorio.Fornecedores;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Form.Modelo.Relatorio, Data.DB,
  frxClass, frxDBSet, Vcl.Grids, Vcl.DBGrids, Vcl.StdCtrls, Vcl.Buttons,UInterfaces,
  UClasse.Relatorio.Fornecedores, Vcl.ExtCtrls;

type
  TEnumPesquisar = (codigo, nome, razao_social, cpf_cnpj);

type
  TformRelatorioFornecedores = class(TformModeloRelatorio)
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure edtPesquisarKeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DBGrid1TitleClick(Column: TColumn);
    procedure sbExportarClick(Sender: TObject);
    procedure sbImprimirClick(Sender: TObject);
  private
    { Private declarations }
    var
      FRelatorioFornecedores:iRelatorioFornecedores;
  public
    { Public declarations }
  end;

var
  formRelatorioFornecedores: TformRelatorioFornecedores;

implementation

{$R *.dfm}

uses softMeter_globalVar;


procedure TformRelatorioFornecedores.DBGrid1TitleClick(Column: TColumn);
begin
  inherited;
  FRelatorioFornecedores.ordenarGrid(Column);
end;

procedure TformRelatorioFornecedores.edtPesquisarKeyUp(Sender: TObject;
  var Key: Word; Shift: TShiftState);
  var
    FCampo:string;
begin
  inherited;

  case TEnumPesquisar(cbPesquisar.ItemIndex) of
  codigo:
  begin
    FCampo := 'ID';
  end;
  nome:
  begin
    FCampo := 'NOME_FANTASIA';
  end;
  razao_social:
  begin
    FCampo := 'RAZAO_SOCIAL';
  end;
  cpf_cnpj:
  begin
    FCampo := 'CPF_CNPJ';
  end;
  end;

  if edtPesquisar.Text <> EmptyStr then
    FRelatorioFornecedores
                          .getCampo(FCampo)
                          .getValor(edtPesquisar.Text)
                          .sqlPesquisa
                          .listarGrid(DataSource1);

end;

procedure TformRelatorioFornecedores.FormCreate(Sender: TObject);
begin
  inherited;
  FRelatorioFornecedores := TRelatorioFornecedores.new;
  dllSoftMeter.sendEvent('relatorio fornecedores', 'relatorio fornecedores', 0);
end;

procedure TformRelatorioFornecedores.FormShow(Sender: TObject);
begin
  inherited;
  FRelatorioFornecedores
                        .abrir
                        .getCampo('ID')
                        .getValor('0')
                        .sqlPesquisa
                        .listarGrid(DataSource1);
end;

procedure TformRelatorioFornecedores.sbExportarClick(Sender: TObject);
begin
  inherited;
  FRelatorioFornecedores.exportar;
end;

procedure TformRelatorioFornecedores.sbImprimirClick(Sender: TObject);
begin
  inherited;
  frxReport1.LoadFromFile(ExtractFilePath(application.ExeName) +
    'relatórios/relatorio_fornecedores.fr3');
  frxReport1.ShowReport();
end;

end.
