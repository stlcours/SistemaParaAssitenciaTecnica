unit Form.Criar.Ordem.Servico;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Buttons, Vcl.ExtCtrls,
  Vcl.ComCtrls, UInterfaces, UClasse.Entity.Criar.Ordem.Servico, Vcl.Mask,
  Data.DB, Vcl.Grids, Vcl.DBGrids, UFactory;

type
  TformCriarConsultarOrdemServico = class(TForm)
    Panel1: TPanel;
    sbFechar: TSpeedButton;
    lblCaption: TLabel;
    PageControl1: TPageControl;
    tbOrdemServiço: TTabSheet;
    tbServicosEFaturamento: TTabSheet;
    tbParcelas: TTabSheet;
    Panel3: TPanel;
    sbNovo: TSpeedButton;
    sbSalvar: TSpeedButton;
    sbEditar: TSpeedButton;
    sbExcluir: TSpeedButton;
    sbCancelar: TSpeedButton;
    SpeedButton1: TSpeedButton;
    SpeedButton2: TSpeedButton;
    Panel2: TPanel;
    Panel4: TPanel;
    Panel5: TPanel;
    Panel6: TPanel;
    DataSource1: TDataSource;
    edtCodigoOS: TEdit;
    Label1: TLabel;
    edtCodigoCliente: TEdit;
    Label2: TLabel;
    edtNomeCliente: TEdit;
    Label3: TLabel;
    sbPesquisarCep: TSpeedButton;
    edtMarca: TEdit;
    edtModelo: TEdit;
    Label4: TLabel;
    Label5: TLabel;
    edtNumeroDeSerie: TEdit;
    Label6: TLabel;
    edtDataFabricacao: TMaskEdit;
    Label7: TLabel;
    edtEquipamento: TEdit;
    Label8: TLabel;
    edtDefeitoRelatado: TMemo;
    Label9: TLabel;
    edtLaudoTecnico: TMemo;
    Label10: TLabel;
    edtSolucaoDoProblema: TMemo;
    Label11: TLabel;
    edtSituacaoOrdem: TComboBox;
    Label12: TLabel;
    edtPrioridade: TComboBox;
    Label13: TLabel;
    edtDataEntrada: TMaskEdit;
    Label14: TLabel;
    edtDataDeSaida: TMaskEdit;
    Label15: TLabel;
    edtHoraSaida: TMaskEdit;
    Label16: TLabel;
    edtTecnicoResponsavel: TEdit;
    Label17: TLabel;
    edtRetorno: TEdit;
    Label18: TLabel;
    edtDataRetorno: TMaskEdit;
    Label19: TLabel;
    Label20: TLabel;
    edtObservacao: TEdit;
    SpeedButton3: TSpeedButton;
    GroupBox1: TGroupBox;
    GroupBox2: TGroupBox;
    edtValorOrdem: TEdit;
    Label21: TLabel;
    Label22: TLabel;
    edtDesconto: TEdit;
    edtAcrescimo: TEdit;
    Label23: TLabel;
    edtFormaDePagamento: TComboBox;
    Label24: TLabel;
    Label25: TLabel;
    edtParcelado: TComboBox;
    Label26: TLabel;
    edtTotalDeParcelas: TEdit;
    Label27: TLabel;
    edtPGTO: TComboBox;
    edtDataDePagamento: TMaskEdit;
    Label28: TLabel;
    GroupBox3: TGroupBox;
    DBGrid2: TDBGrid;
    SpeedButton4: TSpeedButton;
    SpeedButton5: TSpeedButton;
    DBGrid1: TDBGrid;
    edtTotalDaOS: TEdit;
    Label29: TLabel;
    procedure Panel1MouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure sbFecharClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure DataSource1DataChange(Sender: TObject; Field: TField);
  private
    { Private declarations }

  var
    FEntityCriarOrdem: iCriarOrdemServico;
  public
    { Public declarations }
  end;

var
  formCriarConsultarOrdemServico: TformCriarConsultarOrdemServico;

implementation

{$R *.dfm}

procedure TformCriarConsultarOrdemServico.DataSource1DataChange(Sender: TObject;
  Field: TField);
begin
  with DataSource1.DataSet do
  begin

    edtCodigoOS.Text := IntToStr(FieldByName('ID').AsInteger);
    edtCodigoCliente.Text := IntToStr(FieldByName('ID_CLIENTE').AsInteger);
    edtEquipamento.Text := FieldByName('EQUIPAMENTO').AsString;
    edtDefeitoRelatado.Text := FieldByName('DEFEITO_RELATADO').AsString;
    edtMarca.Text := FieldByName('MARCA').AsString;
    edtModelo.Text := FieldByName('MODELO').AsString;
    edtNumeroDeSerie.Text := FieldByName('NUMERO_SERIE').AsString;
    edtLaudoTecnico.Text := FieldByName('LAUDO_DO_TECNICO').AsString;
    edtSolucaoDoProblema.Text := FieldByName('SOLUCAO_DO_PROBLEMA').AsString;
    edtValorOrdem.Text := CurrToStr(FieldByName('VALOR_DA_ORDEM').AsCurrency);
    edtDesconto.Text := CurrToStr(FieldByName('DESCONTO').AsCurrency);
    edtAcrescimo.Text := CurrToStr(FieldByName('ACRESCIMO').AsCurrency);
    edtTotalDaOS.Text := CurrToStr(FieldByName('TOTAL_ORCAMENTO').AsCurrency);
    edtRetorno.Text := FieldByName('RETORNO').AsString;
    edtSituacaoOrdem.Text := FieldByName('SITUACAO_DA_ORDEM').AsString;
    edtFormaDePagamento.Text := FieldByName('FORMA_PAGAMENTO').AsString;
    edtParcelado.Text := FieldByName('PARCELADO').AsString;
    edtTotalDeParcelas.Text := IntToStr(FieldByName('TOTAL_PARCELAS')
      .AsInteger);
    edtPGTO.Text := FieldByName('PGTO').AsString;
    edtPrioridade.Text := FieldByName('PRIORIDADE').AsString;
    edtTecnicoResponsavel.Text := FieldByName('TECNICO_RESPONSAVEL').AsString;
    edtObservacao.Text := FieldByName('OBSERVACAO').AsString;
    edtHoraSaida.Text := TimeToStr(FieldByName('HORA_SAIDA').AsDateTime);

    // Tudo referente a datas
    if DataSource1.DataSet.FieldByName('DATA_FABRICACAO').AsDateTime <>
      StrToDate('30/12/1899') then
      edtDataFabricacao.Text := DateToStr(FieldByName('DATA_FABRICACAO')
        .AsDateTime);

    if DataSource1.DataSet.FieldByName('DATA_RETORNO').AsDateTime <>
      StrToDate('30/12/1899') then
      edtDataRetorno.Text := DateToStr(FieldByName('DATA_RETORNO').AsDateTime);

    if DataSource1.DataSet.FieldByName('DATA_ENTRADA').AsDateTime <>
      StrToDate('30/12/1899') then
      edtDataEntrada.Text := DateToStr(FieldByName('DATA_ENTRADA').AsDateTime);

    if DataSource1.DataSet.FieldByName('DATA_FINALIZACAO').AsDateTime <>
      StrToDate('30/12/1899') then
      edtDataDeSaida.Text := DateToStr(FieldByName('DATA_FINALIZACAO')
        .AsDateTime);

    if DataSource1.DataSet.FieldByName('DATA_PAGAMENTO').AsDateTime <>
      StrToDate('30/12/1899') then
      edtDataDePagamento.Text :=
        DateToStr(FieldByName('DATA_PAGAMENTO').AsDateTime);

  end;
end;

procedure TformCriarConsultarOrdemServico.FormCreate(Sender: TObject);
begin
  FEntityCriarOrdem := TEntityCriarOrdemServico.new;

  ReportMemoryLeaksOnShutdown := true;

end;

procedure TformCriarConsultarOrdemServico.FormShow(Sender: TObject);
begin

  FEntityCriarOrdem.abrir.listarGrid(DataSource1);

  TFactory.new.ftTable.FD_Table('FORMAS_PAGAMENTO')
    .getCampoTabela('FORMA_PAGAMENTO').popularComponenteComboBox
    (edtFormaDePagamento);

  TFactory.new.ftTable.FD_Table('SITUACAO_ORDEM')
    .getCampoTabela('SITUACAO_ORDEM').popularComponenteComboBox
    (edtSituacaoOrdem);

  DataSource1.DataSet.First;

  showmessage(DataSource1.DataSet.FieldByName('ID_CLIENTE')
    .AsInteger.ToString)

//  edtNomeCliente.Text := TFactory.new.ftTable.FD_Table('CLIENTES')
//    .localizarRegistro(DataSource1.DataSet.FieldByName('ID_CLIENTE')
//    .AsInteger.ToString, 'NOME');

end;

procedure TformCriarConsultarOrdemServico.Panel1MouseDown(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
const
  SC_DRAGMOVE = $F012;
begin
  if Button = mbleft then
  begin
    ReleaseCapture;
    self.Perform(WM_SYSCOMMAND, SC_DRAGMOVE, 0);
  end;
end;

procedure TformCriarConsultarOrdemServico.sbFecharClick(Sender: TObject);
begin
  Close;
end;

end.
