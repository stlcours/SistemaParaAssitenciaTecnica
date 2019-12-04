unit Form.Criar.Ordem.Servico;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Buttons, Vcl.ExtCtrls,
  Vcl.ComCtrls, UInterfaces, UClasse.Entity.Criar.Ordem.Servico, Vcl.Mask,
  Data.DB, Vcl.Grids, Vcl.DBGrids, UFactory, Form.Localizar.Clientes.Ordem;

type
  TformCriarConsultarOrdemServico = class(TForm)
    Panel1: TPanel;
    sbFechar: TSpeedButton;
    lblCaption: TLabel;
    PageControl1: TPageControl;
    tbOrdemServi�o: TTabSheet;
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
    s_Servicos: TDataSource;
    procedure Panel1MouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure sbFecharClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure DataSource1DataChange(Sender: TObject; Field: TField);
    procedure sbNovoClick(Sender: TObject);
    procedure sbPesquisarCepClick(Sender: TObject);
    procedure sbSalvarClick(Sender: TObject);
    procedure SpeedButton3Click(Sender: TObject);
    procedure s_ServicosDataChange(Sender: TObject; Field: TField);
  private
    { Private declarations }
  var
    FEntityCriarOrdem: iCriarOrdemServico;
    FEntityTableServicos: iFDTable;
    procedure limparDatas;
  public
    { Public declarations }
  end;

var
  formCriarConsultarOrdemServico: TformCriarConsultarOrdemServico;
  FIdTecnico: Integer;

implementation

{$R *.dfm}

uses Form.Localizar.Tecnico.Ordem, UClasse.Entity.Table;

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
  FEntityTableServicos := TEntityTable.new;

  ReportMemoryLeaksOnShutdown := true;

end;

procedure TformCriarConsultarOrdemServico.FormShow(Sender: TObject);
begin

  FEntityCriarOrdem.abrir.listarGrid(DataSource1);

  FEntityTableServicos.FD_Table('SERVICOS').retornaTable(s_Servicos);

  TFactory.new.ftTable.FD_Table('FORMAS_PAGAMENTO')
    .getCampoTabela('FORMA_PAGAMENTO').popularComponenteComboBox
    (edtFormaDePagamento);

  TFactory.new.ftTable.FD_Table('SITUACAO_ORDEM')
    .getCampoTabela('SITUACAO_ORDEM').popularComponenteComboBox
    (edtSituacaoOrdem);

  edtNomeCliente.Text := TFactory.new.localizarRegistroEspecifico.getTabela
    ('CLIENTES').getCampoRetorno('nome').localizarRegistro('ID',
    DataSource1.DataSet.FieldByName('ID_CLIENTE').AsInteger);

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

procedure TformCriarConsultarOrdemServico.sbNovoClick(Sender: TObject);
begin

  FEntityCriarOrdem.inserir;
  PageControl1.ActivePageIndex := 0;
  edtNomeCliente.Clear;
  edtNomeCliente.SetFocus;

  limparDatas;

end;

procedure TformCriarConsultarOrdemServico.sbPesquisarCepClick(Sender: TObject);
begin
  formLocalizarClientesOrdem := TformLocalizarClientesOrdem.Create(self);
  TFactory.new.criarJanela.FormShow(formLocalizarClientesOrdem, '');
end;

procedure TformCriarConsultarOrdemServico.sbSalvarClick(Sender: TObject);
begin
  FEntityCriarOrdem.getID_CLIENTE(edtCodigoCliente.Text)
    .getEQUIPAMENTO(edtEquipamento.Text).getMarca(edtMarca.Text)
    .getModelo(edtModelo.Text).getNUMERO_SERIE(edtNumeroDeSerie.Text)
    .getDATA_FABRICACAO(edtDataFabricacao.Text).getDEFEITO_RELATADO
    (edtDefeitoRelatado.Text).getLAUDO_DO_TECNICO(edtLaudoTecnico.Text)
    .getSOLUCAO_DO_PROBLEMA(edtSolucaoDoProblema.Text)
    .getSITUACAO_DA_ORDEM(edtSituacaoOrdem.Text)
    .getPRIORIDADE(edtPrioridade.Text).getDataCadastro(edtDataEntrada.Text)
    .getDataFinalizacao(edtDataDeSaida.Text).getHoraFinalizacao
    (edtHoraSaida.Text).getIdTecnico(FIdTecnico.ToString)
    .getRETORNO(edtRetorno.Text).getDATA_RETORNO(edtDataRetorno.Text)
    .getObservacao(edtObservacao.Text).getVALOR_DA_ORDEM(edtValorOrdem.Text)
    .getDesconto(edtDesconto.Text).getACRESCIMO(edtAcrescimo.Text)
    .getVALOR_DA_ORDEM(edtTotalDaOS.Text).getPARCELADO(edtParcelado.Text)
    .getTOTAL_PARCELAS(edtTotalDeParcelas.Text).getFORMA_PAGAMENTO
    (edtFormaDePagamento.Text).getDataPagamento(edtDataDePagamento.Text)
    .getPGTO(edtPGTO.Text).gravar;

end;

procedure TformCriarConsultarOrdemServico.SpeedButton3Click(Sender: TObject);
begin
  formLocalizarTecnico := TformLocalizarTecnico.Create(self);
  TFactory.new.criarJanela.FormShow(formLocalizarTecnico, '');
end;

procedure TformCriarConsultarOrdemServico.s_ServicosDataChange(Sender: TObject;
  Field: TField);
begin
  s_Servicos.DataSet.FieldByName('ID').Visible := false;
  s_Servicos.DataSet.FieldByName('SERVICO').DisplayLabel := 'Servi�os';
  s_Servicos.DataSet.FieldByName('SERVICO').DisplayWidth := 30;
  s_Servicos.DataSet.FieldByName('VALOR').DisplayLabel := 'valor';
  s_Servicos.DataSet.FieldByName('DESCRICAO').DisplayLabel := 'Descri��o';
end;

procedure TformCriarConsultarOrdemServico.limparDatas;
begin
  edtDataFabricacao.Clear;
  edtDataEntrada.Clear;
  edtDataDeSaida.Clear;
  edtDataRetorno.Clear;
  edtDataDePagamento.Clear;
  edtHoraSaida.Text := '00:00:00';
end;

end.
