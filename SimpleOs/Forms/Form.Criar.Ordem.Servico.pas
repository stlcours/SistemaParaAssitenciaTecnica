unit Form.Criar.Ordem.Servico;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Buttons, Vcl.ExtCtrls,
  Vcl.ComCtrls, UInterfaces, UClasse.Entity.Criar.Ordem.Servico, Vcl.Mask,
  Data.DB, Vcl.Grids, Vcl.DBGrids, UFactory, Form.Localizar.Clientes.Ordem,
  Datasnap.DBClient, UClasse.Entity.Ordem.Adicionar.Servico, Form.Ordem.Servico,
  Form.Principal, UClasse.Entity.Criar.Ordem.Parcelas, Vcl.DBCtrls,
  UClasse.Visualizar.Ordens.Servico.Parcelas, UClasse.Visualizar.Ordens.Servico,
  UClasse.Visualizar.Ordens.Servicos.Incluidos, frxClass, frxDBSet;

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
    Label26: TLabel;
    edtTotalDeParcelas: TEdit;
    edtDataBaseVencimento: TMaskEdit;
    Label28: TLabel;
    GroupBox3: TGroupBox;
    DBGrid2: TDBGrid;
    SpeedButton4: TSpeedButton;
    SpeedButton5: TSpeedButton;
    DBGrid1: TDBGrid;
    edtTotalDaOS: TEdit;
    Label29: TLabel;
    s_Servicos: TDataSource;
    cds_tem_servicos_adicionados: TClientDataSet;
    cds_tem_servicos_adicionadosid: TIntegerField;
    cds_tem_servicos_adicionadosservico: TStringField;
    cds_tem_servicos_adicionadosvalor: TCurrencyField;
    s_tem_servicos_adicionados: TDataSource;
    cds_tem_servicos_adicionados_edit: TClientDataSet;
    cds_tem_servicos_adicionados_editid: TIntegerField;
    cds_tem_servicos_adicionados_editservico: TStringField;
    cds_tem_servicos_adicionados_editValor: TCurrencyField;
    s_tem_servicos_adicionados_edit: TDataSource;
    SpeedButton6: TSpeedButton;
    SpeedButton7: TSpeedButton;
    SpeedButton8: TSpeedButton;
    SpeedButton9: TSpeedButton;
    SpeedButton10: TSpeedButton;
    SpeedButton11: TSpeedButton;
    DBGrid3: TDBGrid;
    s_ParcelasOS: TDataSource;
    DBNavigator1: TDBNavigator;
    edtNumeroParcela: TEdit;
    Label30: TLabel;
    edtValorParcela: TEdit;
    Label31: TLabel;
    edtVencimentoParcela: TEdit;
    Label32: TLabel;
    edtDescontoParcela: TEdit;
    Label33: TLabel;
    edtJurosParcelas: TEdit;
    Label34: TLabel;
    edtMultaParcela: TEdit;
    Label35: TLabel;
    edtTotalParcela: TEdit;
    Label36: TLabel;
    edtDataPagamentoParcela: TDateTimePicker;
    Label37: TLabel;
    edtHoraPagamento: TMaskEdit;
    Label38: TLabel;
    edtFormaPagamentoParcela: TComboBox;
    Label39: TLabel;
    edtPgtoParcela: TComboBox;
    Label40: TLabel;
    edtObservacoesParcela: TEdit;
    Label41: TLabel;
    edtValorOrdemParcelado: TEdit;
    Label24: TLabel;
    cds_AdicionarParcela: TClientDataSet;
    cds_AdicionarParcelaid_ordem: TIntegerField;
    cds_AdicionarParcelaid_cliente: TIntegerField;
    cds_AdicionarParcelaTotal_de_parcelas: TIntegerField;
    cds_AdicionarParcelaNumero_da_parcela: TIntegerField;
    cds_AdicionarParcelaValor_da_parcela: TCurrencyField;
    cds_AdicionarParcelavencimento: TDateTimeField;
    cds_AdicionarParcelapgto: TStringField;
    SpeedButton12: TSpeedButton;
    SpeedButton13: TSpeedButton;
    s_imprimirOS: TDataSource;
    s_imprimirServicosOS: TDataSource;
    s_imprimirparcelasOS: TDataSource;
    frxDB_ImprimirOS: TfrxDBDataset;
    frxDB_ImprimirServicosOS: TfrxDBDataset;
    frxDB_ImprimirParcelasOS: TfrxDBDataset;
    frx_ImprimirOS: TfrxReport;
    frxDB_ImprimirDadosEmpresa: TfrxDBDataset;
    s_ImprimirEmpresa: TDataSource;
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
    procedure edtAcrescimoExit(Sender: TObject);
    procedure edtDescontoExit(Sender: TObject);
    procedure SpeedButton4Click(Sender: TObject);
    procedure DBGrid2DblClick(Sender: TObject);
    procedure SpeedButton5Click(Sender: TObject);
    procedure sbEditarClick(Sender: TObject);
    procedure sbExcluirClick(Sender: TObject);
    procedure sbCancelarClick(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure s_ParcelasOSDataChange(Sender: TObject; Field: TField);
    procedure edtTotalDeParcelasExit(Sender: TObject);
    procedure edtTotalDaOSExit(Sender: TObject);
    procedure DBGrid3CellClick(Column: TColumn);
    procedure SpeedButton6Click(Sender: TObject);
    procedure SpeedButton7Click(Sender: TObject);
    procedure SpeedButton8Click(Sender: TObject);
    procedure SpeedButton9Click(Sender: TObject);
    procedure SpeedButton10Click(Sender: TObject);
    procedure SpeedButton12Click(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
  private
    { Private declarations }
  var
    FEntityCriarOrdem: iCriarOrdemServico;
    FEntityServicosOrdem: iAdicionarServicosOrdem;
    FEntityParcelasOrdem: iParcelaOrdem;
    FEntityTableServicos: iFDTable;

    FEntityVisualizarOS: iVisualizarOrdens;
    FEntityVisualizasOSServicos: iVisualizarServicosOrdem;
    FEntityVisualizarOSParcelas: iVisualizarParcelasOrdem;

    FValorTotalOrdemServico: Currency;
    FValorServicosIncluidos: Currency;

    procedure limparDatas;
    procedure adicionarServico;
    procedure SomarValoresServicosIncluidos;
    procedure subtrairValoresServicosIncluidos;
    procedure selecionarOrdem;
    procedure popularComboBox;
    procedure abreATabelaDeParcelas;
    procedure prepararParaImprimir(value: Integer);
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
    edtTotalDeParcelas.Text := IntToStr(FieldByName('TOTAL_PARCELAS')
      .AsInteger);
    edtPrioridade.Text := FieldByName('PRIORIDADE').AsString;
    edtTecnicoResponsavel.Text := FieldByName('TECNICO_RESPONSAVEL').AsString;
    edtObservacao.Text := FieldByName('OBSERVACAO').AsString;
    edtValorOrdemParcelado.Text :=
      CurrToStr(FieldByName('VALOR_DA_PARCELA').AsCurrency);
    edtHoraSaida.Text := TimeToStr(FieldByName('HORA_SAIDA').AsDateTime);
    edtDataBaseVencimento.Text := DateToStr(FieldByName('DATA_BASE_VENCIMENTO')
      .AsDateTime);

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

    if DataSource1.DataSet.FieldByName('DATA_BASE_VENCIMENTO').AsDateTime <>
      StrToDate('30/12/1899') then
      edtDataBaseVencimento.Text :=
        DateToStr(FieldByName('DATA_BASE_VENCIMENTO').AsDateTime);

  end;
end;

procedure TformCriarConsultarOrdemServico.DBGrid2DblClick(Sender: TObject);
begin
  adicionarServico;
  SomarValoresServicosIncluidos
end;

procedure TformCriarConsultarOrdemServico.DBGrid3CellClick(Column: TColumn);
begin
  if s_ParcelasOS.DataSet.RecordCount >= 1 then
  begin

    if s_ParcelasOS.DataSet.FieldByName('PGTO').AsString <> 'Sim' then
    begin
      if s_ParcelasOS.DataSet.FieldByName('PGTO').AsString <> 'Estornada' then
      begin
        FEntityParcelasOrdem.editar;
        edtTotalParcela.Text := FEntityParcelasOrdem.calularJuros;
      end;
    end;
  end;
end;

procedure TformCriarConsultarOrdemServico.edtAcrescimoExit(Sender: TObject);
begin
  edtTotalDaOS.Text := FEntityCriarOrdem.calcularAcrescimo(edtValorOrdem,
    edtDesconto, edtAcrescimo);
end;

procedure TformCriarConsultarOrdemServico.edtDescontoExit(Sender: TObject);
begin

  edtTotalDaOS.Text := FEntityCriarOrdem.calcularDesconto(edtValorOrdem,
    edtDesconto);

  edtTotalDaOS.Text := FEntityCriarOrdem.calcularAcrescimo(edtValorOrdem,
    edtDesconto, edtAcrescimo);

end;

procedure TformCriarConsultarOrdemServico.edtTotalDaOSExit(Sender: TObject);
begin
  edtValorOrdemParcelado.Text := edtTotalDaOS.Text;
end;

procedure TformCriarConsultarOrdemServico.edtTotalDeParcelasExit
  (Sender: TObject);
begin
  if FEntityCriarOrdem.estadoDaTabela = 'insert' then
  begin
    edtValorOrdemParcelado.Text :=
      FEntityCriarOrdem.calularTotalPorNumeroDeParcela(edtTotalDaOS,
      edtTotalDeParcelas);
  end;
end;

procedure TformCriarConsultarOrdemServico.FormCreate(Sender: TObject);
begin

  FEntityCriarOrdem := TEntityCriarOrdemServico.new;
  FEntityServicosOrdem := TEntityAdicionarItemsOrdem.new;
  FEntityParcelasOrdem := TEntityGerarParcelas.new;
  FEntityTableServicos := TEntityTable.new;

  FEntityVisualizarOS := TEntityVisualizarOrdem.new;
  FEntityVisualizasOSServicos := TEntityVisualizarOrdemServicosIncluidos.new;
  FEntityVisualizarOSParcelas := TEntityVisualizarOrdemServicoParcelas.new;

  ReportMemoryLeaksOnShutdown := true;

end;

procedure TformCriarConsultarOrdemServico.FormShow(Sender: TObject);
begin
  abreATabelaDeParcelas;
  selecionarOrdem;
  popularComboBox;
  edtDataPagamentoParcela.DateTime := date;
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

procedure TformCriarConsultarOrdemServico.sbCancelarClick(Sender: TObject);
begin
  FEntityCriarOrdem.cancelar;
end;

procedure TformCriarConsultarOrdemServico.sbEditarClick(Sender: TObject);
begin
  FEntityCriarOrdem.editar;
end;

procedure TformCriarConsultarOrdemServico.sbExcluirClick(Sender: TObject);
begin
  FEntityCriarOrdem.deletar;
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
  edtValorOrdem.Text := '0';
  edtDesconto.Text := '0';
  edtAcrescimo.Text := '0';
  edtTotalDaOS.Text := '0';
  edtTotalDeParcelas.Text := '1';

  limparDatas;

end;

procedure TformCriarConsultarOrdemServico.sbPesquisarCepClick(Sender: TObject);
begin
  formLocalizarClientesOrdem := TformLocalizarClientesOrdem.Create(self);
  TFactory.new.criarJanela.FormShow(formLocalizarClientesOrdem, '');
end;

procedure TformCriarConsultarOrdemServico.sbSalvarClick(Sender: TObject);
var
  estado: string;
begin

  estado := FEntityCriarOrdem.estadoDaTabela;

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
    .getTotalDoOrcamento(edtTotalDaOS.Text).getTOTAL_PARCELAS
    (edtTotalDeParcelas.Text).getDataBaseVencimento(edtDataBaseVencimento.Text)
    .getVALOR_DA_PARCELA(edtValorOrdemParcelado.Text).gravar;

  if estado = 'insert' then
    FEntityServicosOrdem.gravarServicosAdicionadosInsert
      (cds_tem_servicos_adicionados, FEntityCriarOrdem.setId)
  else if estado = 'edit' then
    FEntityServicosOrdem.gravarServicosAdicionadosEdit
      (cds_tem_servicos_adicionados_edit, FEntityCriarOrdem.setId);

  FEntityParcelasOrdem.getID_ORDEM(FEntityCriarOrdem.setId)
    .getID_CLIENTE(FEntityCriarOrdem.setId_Cliente)
    .getTOTAL_PARCELAS(FEntityCriarOrdem.setTotalDeParcelas)
    .getVALOR_PARCELA(FEntityCriarOrdem.setValorDaParcelas)
    .getDATA_VENCIMENTO(DateToStr(FEntityCriarOrdem.setDataBaseVencimento))
    .gerarParcelas;

  showmessage('Ordem de Servi�o inserida com sucesso');

end;

procedure TformCriarConsultarOrdemServico.SpeedButton10Click(Sender: TObject);
begin
  if s_ParcelasOS.DataSet.RecordCount >= 1 then
  begin
    FEntityCriarOrdem.deletar;
  end;
end;

procedure TformCriarConsultarOrdemServico.SpeedButton12Click(Sender: TObject);
begin
  FEntityParcelasOrdem.cancelar;
end;

procedure TformCriarConsultarOrdemServico.SpeedButton1Click(Sender: TObject);
begin
  FEntityCriarOrdem.estornarOrdem(DataSource1.DataSet.FieldByName('ID')
    .AsInteger);
end;

procedure TformCriarConsultarOrdemServico.SpeedButton2Click(Sender: TObject);
begin
  prepararParaImprimir(DataSource1.DataSet.FieldByName('ID').AsInteger);
end;

procedure TformCriarConsultarOrdemServico.SpeedButton3Click(Sender: TObject);
begin
  formLocalizarTecnico := TformLocalizarTecnico.Create(self);
  TFactory.new.criarJanela.FormShow(formLocalizarTecnico, '');
end;

procedure TformCriarConsultarOrdemServico.SpeedButton4Click(Sender: TObject);
begin
  adicionarServico;
  SomarValoresServicosIncluidos;
end;

procedure TformCriarConsultarOrdemServico.SpeedButton5Click(Sender: TObject);
begin

  if FEntityCriarOrdem.estadoDaTabela = 'insert' then
  begin
    subtrairValoresServicosIncluidos;
  end
  else if FEntityCriarOrdem.estadoDaTabela = 'edit' then
  begin

    FEntityServicosOrdem.excluiServicoDaOS
      (cds_tem_servicos_adicionadosid.AsInteger);

    subtrairValoresServicosIncluidos;

  end;

end;

procedure TformCriarConsultarOrdemServico.SpeedButton6Click(Sender: TObject);
begin

  FEntityParcelasOrdem.getID(s_ParcelasOS.DataSet.FieldByName('ID').AsInteger)
    .getID_ORDEM(s_ParcelasOS.DataSet.FieldByName('ID_ORDEM').AsInteger)
    .getID_CLIENTE(s_ParcelasOS.DataSet.FieldByName('ID_CLIENTE').AsInteger)
    .getTOTAL_PARCELAS(s_ParcelasOS.DataSet.FieldByName('TOTAL_PARCELAS')
    .AsInteger).getPARCELA(StrToInt(edtNumeroParcela.Text))
    .getVALOR_PARCELA(s_ParcelasOS.DataSet.FieldByName('VALOR_PARCELA')
    .AsCurrency).getDATA_VENCIMENTO(edtVencimentoParcela.Text)
    .getDesconto(edtDescontoParcela.Text).getJuros(edtJurosParcelas.Text)
    .getMulta(edtMultaParcela.Text).getVALOR_TOTAL(edtTotalParcela.Text)
    .getDATA_PAGAMENTO(DateToStr(edtDataPagamentoParcela.date))
    .getHORA_PAGAMENTO(edtHoraPagamento.Text)
    .getObservacao(edtObservacoesParcela.Text).getFORMA_PAGAMENTO
    (edtFormaPagamentoParcela.Text).getVALOR_TOTAL(edtValorParcela.Text)
    .getPGTO('Sim').gravar;
end;

procedure TformCriarConsultarOrdemServico.SpeedButton7Click(Sender: TObject);
begin
  FEntityParcelasOrdem.extornarParcelaSelecionada(0);
end;

procedure TformCriarConsultarOrdemServico.SpeedButton8Click(Sender: TObject);
begin
  if s_ParcelasOS.DataSet.RecordCount >= 1 then
  begin

    s_ParcelasOS.DataSet.Last;

    cds_AdicionarParcela.Open;
    cds_AdicionarParcela.Append;

    cds_AdicionarParcelaid_ordem.AsInteger := s_ParcelasOS.DataSet.FieldByName
      ('ID_ORDEM').AsInteger;

    cds_AdicionarParcelaid_cliente.AsInteger := s_ParcelasOS.DataSet.FieldByName
      ('ID_CLIENTE').AsInteger;

    cds_AdicionarParcelaTotal_de_parcelas.AsInteger :=
      s_ParcelasOS.DataSet.FieldByName('TOTAL_PARCELAS').AsInteger + 1;

    cds_AdicionarParcelaNumero_da_parcela.AsInteger :=
      s_ParcelasOS.DataSet.FieldByName('PARCELA').AsInteger + 1;

    cds_AdicionarParcelaValor_da_parcela.AsCurrency :=
      s_ParcelasOS.DataSet.FieldByName('VALOR_PARCELA').AsCurrency;

    cds_AdicionarParcelavencimento.AsDateTime :=
      s_ParcelasOS.DataSet.FieldByName('DATA_VENCIMENTO').AsDateTime;

    cds_AdicionarParcelapgto.AsString := s_ParcelasOS.DataSet.FieldByName
      ('PGTO').AsString;

    cds_AdicionarParcela.Post;

    FEntityParcelasOrdem.inserir;

    edtNumeroParcela.Text :=
      IntToStr(cds_AdicionarParcelaTotal_de_parcelas.AsInteger + 1);

    edtValorParcela.Text :=
      CurrToStr(cds_AdicionarParcelaValor_da_parcela.AsCurrency);

    edtVencimentoParcela.Text :=
      DateToStr(cds_AdicionarParcelavencimento.AsDateTime);

    edtPgtoParcela.Text := cds_AdicionarParcelapgto.AsString;

  end;
end;

procedure TformCriarConsultarOrdemServico.SpeedButton9Click(Sender: TObject);
begin

  if cds_AdicionarParcela.RecordCount >= 1 then
  begin
    FEntityParcelasOrdem.getID_ORDEM(cds_AdicionarParcelaid_ordem.AsInteger)
      .getID_CLIENTE(cds_AdicionarParcelaid_cliente.AsInteger)
      .getDATA_VENCIMENTO(edtVencimentoParcela.Text)
      .getVALOR_PARCELA(StrToCurr(edtValorParcela.Text))
      .getTOTAL_PARCELAS(cds_AdicionarParcelaTotal_de_parcelas.AsInteger)
      .getPARCELA(StrToInt(edtNumeroParcela.Text)).getPGTO(edtPgtoParcela.Text)
      .getObservacao(edtObservacoesParcela.Text).adicionarParcela;
  end;

end;

procedure TformCriarConsultarOrdemServico.s_ParcelasOSDataChange
  (Sender: TObject; Field: TField);
begin
  with s_ParcelasOS.DataSet do
  begin

    edtNumeroParcela.Text := IntToStr(FieldByName('PARCELA').AsInteger);
    edtValorParcela.Text := CurrToStr(FieldByName('VALOR_PARCELA').AsCurrency);
    edtDescontoParcela.Text := CurrToStr(FieldByName('DESCONTO').AsCurrency);
    edtJurosParcelas.Text := CurrToStr(FieldByName('JUROS').AsFloat);
    edtMultaParcela.Text := CurrToStr(FieldByName('MULTA').AsCurrency);
    edtTotalParcela.Text := CurrToStr(FieldByName('VALOR_TOTAL').AsCurrency);
    edtHoraPagamento.Text := TimeToStr(FieldByName('HORA_PAGAMENTO')
      .AsDateTime);
    edtFormaPagamentoParcela.Text := FieldByName('FORMA_PAGAMENTO').AsString;
    edtPgtoParcela.Text := FieldByName('PGTO').AsString;
    edtObservacoesParcela.Text := FieldByName('OBSERVACAO').AsString;

    if FieldByName('DATA_VENCIMENTO').AsDateTime <> StrToDate('30/12/1899') then
      edtVencimentoParcela.Text :=
        DateToStr(FieldByName('DATA_VENCIMENTO').AsDateTime);

    if FieldByName('DATA_PAGAMENTO').AsDateTime <> StrToDate('30/12/1899') then
      edtDataPagamentoParcela.DateTime := FieldByName('DATA_PAGAMENTO')
        .AsDateTime;

  end;
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
  edtDataBaseVencimento.Clear;
  edtHoraSaida.Text := '00:00:00';
end;

procedure TformCriarConsultarOrdemServico.adicionarServico;
begin
  if FEntityCriarOrdem.estadoDaTabela = 'insert' then
  begin
    if s_Servicos.DataSet.RecordCount >= 1 then
    begin
      FEntityServicosOrdem.adicionarItemsTemporiamenteID
        (s_Servicos.DataSet.FieldByName('ID').AsInteger)
        .adicionarItemsTemporariamenteServico
        (s_Servicos.DataSet.FieldByName('SERVICO').AsString)
        .adicionarItemTemporariamenteValor
        (s_Servicos.DataSet.FieldByName('VALOR').AsCurrency)
        .adicionarItemsTemporariamente(s_tem_servicos_adicionados);
    end;
  end
  else if FEntityCriarOrdem.estadoDaTabela = 'edit' then
  begin

    FEntityServicosOrdem.adicionarItemsTemporiamenteID
      (s_Servicos.DataSet.FieldByName('ID').AsInteger)
      .adicionarItemsTemporariamenteServico
      (s_Servicos.DataSet.FieldByName('SERVICO').AsString)
      .adicionarItemTemporariamenteValor(s_Servicos.DataSet.FieldByName('VALOR')
      .AsCurrency).adicionarItemsTemporariamente(s_tem_servicos_adicionados);

    FEntityServicosOrdem.adicionarItemsTemporiamenteID
      (s_Servicos.DataSet.FieldByName('ID').AsInteger)
      .adicionarItemsTemporariamenteServico
      (s_Servicos.DataSet.FieldByName('SERVICO').AsString)
      .adicionarItemTemporariamenteValor(s_Servicos.DataSet.FieldByName('VALOR')
      .AsCurrency).adicionarItemsTemporariamente
      (s_tem_servicos_adicionados_edit);
  end;
end;

procedure TformCriarConsultarOrdemServico.SomarValoresServicosIncluidos;
var
  valorDaOS: Currency;
begin

  valorDaOS := StrToCurr(edtValorOrdem.Text);

  try
    FValorTotalOrdemServico := StrToCurr(edtTotalDaOS.Text);
  except
    on e: exception do
      raise exception.Create('Informe um valor v�lido para o Total da OS');
  end;
  FValorServicosIncluidos := s_tem_servicos_adicionados.DataSet.FieldByName
    ('valor').AsCurrency;
  edtTotalDaOS.Text := CurrToStr(FValorTotalOrdemServico +
    FValorServicosIncluidos);

  edtValorOrdem.Text := CurrToStr(valorDaOS + FValorServicosIncluidos);

end;

procedure TformCriarConsultarOrdemServico.subtrairValoresServicosIncluidos;
var
  valorDaOS: Currency;
  subTotalDaOS: Currency;
begin

  valorDaOS := StrToCurr(edtTotalDaOS.Text);
  subTotalDaOS := StrToCurr(edtValorOrdem.Text);

  edtTotalDaOS.Text :=
    CurrToStr(valorDaOS - cds_tem_servicos_adicionadosvalor.AsCurrency);

  edtValorOrdem.Text :=
    CurrToStr(subTotalDaOS - cds_tem_servicos_adicionadosvalor.AsCurrency);

  cds_tem_servicos_adicionados.Delete;

end;

procedure TformCriarConsultarOrdemServico.selecionarOrdem;
begin // selecionar a OS ao chamar atrav�s do form  Ordem de Servico
  if codigoDaOS <> 0 then
  begin
    FEntityCriarOrdem.abrir.getCampo('ID').getValor(codigoDaOS.ToString)
      .sqlPesquisa.listarGrid(DataSource1);

    FEntityServicosOrdem.abrir.getCampo('ID_ORDEM')
      .getValor(DataSource1.DataSet.FieldByName('ID').AsInteger.ToString)
      .sqlPesquisaEstatica.listarItensDaOS(cds_tem_servicos_adicionados);

    FEntityParcelasOrdem.abrir.getCampo('ID_ORDEM')
      .getValor(DataSource1.DataSet.FieldByName('ID').AsInteger.ToString)
      .sqlPesquisa.listarGrid(s_ParcelasOS);

    edtNomeCliente.Text := TFactory.new.localizarRegistroEspecifico.getTabela
      ('CLIENTES').getCampoRetorno('nome').localizarRegistro('ID',
      DataSource1.DataSet.FieldByName('ID_CLIENTE').AsInteger);
  end;
end;

procedure TformCriarConsultarOrdemServico.popularComboBox;
begin

  FEntityTableServicos.FD_Table('SERVICOS').retornaTable(s_Servicos);

  TFactory.new.ftTable.FD_Table('SITUACAO_ORDEM')
    .getCampoTabela('SITUACAO_ORDEM').popularComponenteComboBox
    (edtSituacaoOrdem);

  TFactory.new.ftTable.FD_Table('FORMAS_PAGAMENTO')
    .getCampoTabela('FORMA_PAGAMENTO').popularComponenteComboBox
    (edtFormaPagamentoParcela);

end;

procedure TformCriarConsultarOrdemServico.prepararParaImprimir(value: Integer);
begin

  FEntityVisualizarOS.getCampo('ID_ORDEM').getValor(value.ToString)
    .sqlPesquisaEstatica.listarGrid(s_imprimirOS);

  FEntityVisualizasOSServicos.getCampo('ID_ORDEM').getValor(value.ToString)
    .sqlPesquisaEstatica.listarGrid(s_imprimirServicosOS);

  FEntityVisualizarOSParcelas.getCampo('ID_ORDEM').getValor(value.ToString)
    .sqlPesquisaEstatica.listarGrid(s_imprimirparcelasOS);

end;

procedure TformCriarConsultarOrdemServico.abreATabelaDeParcelas;
begin
  FEntityParcelasOrdem.abrir.getCampo('ID_ORDEM').getValor('0')
    .sqlPesquisa.listarGrid(s_ParcelasOS);
end;

end.
