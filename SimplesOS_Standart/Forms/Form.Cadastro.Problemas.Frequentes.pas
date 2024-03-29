unit Form.Cadastro.Problemas.Frequentes;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, UForm.Exemplo.Embeded, Data.DB,
  Vcl.Menus, Vcl.Grids, Vcl.DBGrids, Vcl.WinXPanels, Vcl.StdCtrls, Vcl.Buttons,
  Vcl.ExtCtrls, UInterfaces, UClasse.Entity.Problemas.Frequentes, Vcl.Mask,
  frxClass, frxDBSet;

type
  TformCadastroProblemasFrequentes = class(TformExemploEmbeded)
    DataSource1: TDataSource;
    edtCodigo: TEdit;
    edtEquipamento: TEdit;
    edtNumeroSerie: TEdit;
    edtMarca: TEdit;
    edtFuncionario: TEdit;
    edtObservacao: TEdit;
    memoDefeito: TMemo;
    memoSolucao: TMemo;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    edtDataCadastro: TMaskEdit;
    edtDataFabricacao: TMaskEdit;
    Label13: TLabel;
    frxDB_ProblemasFrequentes: TfrxDBDataset;
    frx_ProblemasFrequentes: TfrxReport;
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure DataSource1DataChange(Sender: TObject; Field: TField);
    procedure sbSalvarClick(Sender: TObject);
    procedure sbNovoClick(Sender: TObject);
    procedure sbEditarClick(Sender: TObject);
    procedure sbExcluirClick(Sender: TObject);
    procedure sbCancelarClick(Sender: TObject);
    procedure edtPesquisarKeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DBGrid1CellClick(Column: TColumn);
    procedure DBGrid1TitleClick(Column: TColumn);
    procedure sbExportarClick(Sender: TObject);
    procedure sbImprimirClick(Sender: TObject);
  private
    { Private declarations }
    FEntityProblemasFrequentes: iCadastroProblemasFrequentes;
  public
    { Public declarations }
  end;

var
  formCadastroProblemasFrequentes: TformCadastroProblemasFrequentes;

implementation

{$R *.dfm}

uses softMeter_globalVar;

procedure TformCadastroProblemasFrequentes.DataSource1DataChange
  (Sender: TObject; Field: TField);
begin
  inherited;
  edtCodigo.Text := IntToStr(DataSource1.DataSet.FieldByName('ID').AsInteger);
  edtEquipamento.Text := DataSource1.DataSet.FieldByName('NOME_PECA').AsString;
  edtNumeroSerie.Text := DataSource1.DataSet.FieldByName
    ('NUMERO_SERIE').AsString;
  edtMarca.Text := DataSource1.DataSet.FieldByName('MARCA').AsString;

  edtFuncionario.Text := IntToStr(DataSource1.DataSet.FieldByName('FUNCIONARIO')
    .AsInteger);
  edtObservacao.Text := DataSource1.DataSet.FieldByName('OBSERVACAO').AsString;
  memoDefeito.Text := DataSource1.DataSet.FieldByName('DEFEITO').AsString;
  memoSolucao.Text := DataSource1.DataSet.FieldByName
    ('SOLUCAO_DEFEITO').AsString;

  edtDataFabricacao.EditMask := '00/00/0000';

  if DataSource1.DataSet.FieldByName('DATA_CADASTRO').AsDateTime <>
    strtodate('30/12/1899') then
    edtDataCadastro.Text :=
      DateToStr(DataSource1.DataSet.FieldByName('DATA_CADASTRO').AsDateTime)
  else
    edtDataCadastro.EditMask := '00/00/0000';

  if DataSource1.DataSet.FieldByName('DATA_FABRICACAO').AsDateTime <>
    strtodate('30/12/1899') then
    edtDataFabricacao.Text :=
      DateToStr(DataSource1.DataSet.FieldByName('DATA_FABRICACAO').AsDateTime)
  else
    edtDataFabricacao.Clear;

end;

procedure TformCadastroProblemasFrequentes.DBGrid1CellClick(Column: TColumn);
begin
  inherited;
  if DataSource1.DataSet.RecordCount >= 1 then
  begin
    sbEditar.Enabled := true;
    sbExcluir.Enabled := true;
  end
  else
  begin
    sbEditar.Enabled := false;
    sbExcluir.Enabled := false;
  end;
end;

procedure TformCadastroProblemasFrequentes.DBGrid1TitleClick(Column: TColumn);
begin
  inherited;
  FEntityProblemasFrequentes.ordenarGrid(Column);
end;

procedure TformCadastroProblemasFrequentes.edtPesquisarKeyUp(Sender: TObject;
  var Key: Word; Shift: TShiftState);
var
  campo: string;
begin
  inherited;

  if cbPesquisar.Text = 'C�digo' then
    campo := 'ID'
  else if cbPesquisar.Text = 'Equiamento/Pe�a' then
    campo := 'NOME_PECA'
  else if cbPesquisar.Text = 'N�mero de serie' then
    campo := 'NUMERO_SERIE'
  else if cbPesquisar.Text = 'Marca' then
    campo := 'MARCA';

  FEntityProblemasFrequentes.getCampo(campo).getValor(edtPesquisar.Text)
    .sqlPesquisa.listarGrid(DataSource1);

  { C�digo
    Equiamento/Pe�a
    N�mero de serie
    Marca }
end;

procedure TformCadastroProblemasFrequentes.FormCreate(Sender: TObject);
begin
  inherited;
  FEntityProblemasFrequentes := TEntityProblemasFrequentes.new;
  dllSoftMeter.sendEvent('cadastros de problemas frequentes', 'problemas frequentes', 0);
end;

procedure TformCadastroProblemasFrequentes.FormShow(Sender: TObject);
begin
  inherited;
  FEntityProblemasFrequentes.abrir.getCampo('ID').getValor('0')
    .sqlPesquisa.listarGrid(DataSource1);
end;

procedure TformCadastroProblemasFrequentes.sbCancelarClick(Sender: TObject);
begin
  inherited;
  FEntityProblemasFrequentes.cancelar;
end;

procedure TformCadastroProblemasFrequentes.sbEditarClick(Sender: TObject);
begin
  FEntityProblemasFrequentes.editar;
  inherited;
  edtEquipamento.SetFocus;
end;

procedure TformCadastroProblemasFrequentes.sbExcluirClick(Sender: TObject);
begin
  inherited;
  FEntityProblemasFrequentes.deletar;
end;

procedure TformCadastroProblemasFrequentes.sbExportarClick(Sender: TObject);
begin
  inherited;
  FEntityProblemasFrequentes.exportar;
end;

procedure TformCadastroProblemasFrequentes.sbImprimirClick(Sender: TObject);
begin
  inherited;
  frx_ProblemasFrequentes.LoadFromFile(ExtractFilePath(application.ExeName) +
    'relat�rios/relatorio_problemas_frequentes.fr3');
  frx_ProblemasFrequentes.ShowReport();
end;

procedure TformCadastroProblemasFrequentes.sbNovoClick(Sender: TObject);
begin
  inherited;
  FEntityProblemasFrequentes.inserir;
  edtEquipamento.SetFocus;
  edtDataCadastro.clear;
  edtDataCadastro.Text := DateToStr(Date);
end;

procedure TformCadastroProblemasFrequentes.sbSalvarClick(Sender: TObject);
begin
  FEntityProblemasFrequentes.getNomePeca(edtEquipamento.Text)
    .getNumeroSerie(edtNumeroSerie.Text).getMarca(edtMarca.Text)
    .getDataDeCadastro(edtDataCadastro.Text).getDataDeFabricacao
    (edtDataFabricacao.Text).getObservacao(edtObservacao.Text)
    .getDefeitoRelatado(memoDefeito.Text).getSolucaoDoDefeito
    (memoSolucao.Text).gravar;
  inherited;
end;

end.
