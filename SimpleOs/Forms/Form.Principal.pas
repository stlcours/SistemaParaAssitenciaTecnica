unit Form.Principal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.WinXCtrls, Vcl.ExtCtrls,
  Vcl.Buttons,
  Vcl.CategoryButtons, System.ImageList, Vcl.ImgList, Vcl.StdCtrls,
  Vcl.Imaging.pngimage, System.Actions, Vcl.ActnList, Vcl.Menus, UFactory,
  Form.Cadastro.Forma.Pagamento, Form.Cadastro.Clientes, Form.Entradas.Produtos,
  UClasse.Entity.Criar.Ordem.Servico, Form.Visualizar.Vendas,
  Form.Modelo.Relatorio, Form.Relatorio.OS.Estornadas,
  Form.Relatorio.Vendas.Estornadas, Form.Relatorio.OS.Por.Tecnico,
  Form.Relatorio.OS.Por.Status, Form.Relatorio.OS;

type
  TformPrincipal = class(TForm)
    Panel1: TPanel;
    SplitView1: TSplitView;
    sbMenu: TSpeedButton;
    CategoryButtons1: TCategoryButtons;
    ImageList1: TImageList;
    Label1: TLabel;
    Label2: TLabel;
    Image1: TImage;
    CategoryButtons2: TCategoryButtons;
    actionPrincipal: TActionList;
    acSair: TAction;
    acConfiguracoes: TAction;
    acSobre: TAction;
    acExtras: TAction;
    acRelatorios: TAction;
    acMovimentacao: TAction;
    acCadastros: TAction;
    Panel2: TPanel;
    Image2: TImage;
    Image4: TImage;
    Image5: TImage;
    Image3: TImage;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    spvCadastros: TSplitView;
    spvMovimentacao: TSplitView;
    spvRelatorio: TSplitView;
    spvExtras: TSplitView;
    spvSobre: TSplitView;
    spvConfiguracoes: TSplitView;
    imgLogo: TImage;
    CategoryButtons3: TCategoryButtons;
    Button1: TButton;
    PopupMenuFuncionario: TPopupMenu;
    Sair1: TMenuItem;
    Alterarsenha1: TMenuItem;
    acCadastroMarcas: TAction;
    acCadastroGrupos: TAction;
    acFormaPagamento: TAction;
    acTipoRetiradas: TAction;
    acConfigurarParcela: TAction;
    acAtividadeFuncionarios: TAction;
    acContasAPagar: TAction;
    acProblemasFrequentes: TAction;
    acCadastroFornecedores: TAction;
    acCadastroTransportadora: TAction;
    acCadastroProdutos: TAction;
    acCadastroFuncionarios: TAction;
    acCadastroSituacaoOrdem: TAction;
    acClientes: TAction;
    CategoryButtons4: TCategoryButtons;
    acEntradasProdutos: TAction;
    acSaidaProdutos: TAction;
    acOrdemServico: TAction;
    acCriarOrdenServico: TAction;
    acCadastrarServicos: TAction;
    acDadosEmpresa: TAction;
    acVenda: TAction;
    acNumeroDeParcelas: TAction;
    acQuitarParcelas: TAction;
    acVisualizarVendas: TAction;
    Button2: TButton;
    CategoryButtons5: TCategoryButtons;
    acRelatorioClientes: TAction;
    acHistoricoOSCliente: TAction;
    acRelatorioContasAReceber: TAction;
    acRelatorioContasAReceberVendas: TAction;
    acRelatorioParcelasPagasOS: TAction;
    acRelatorioParcelasPagasVendas: TAction;
    acRelatorioOSEstornadas: TAction;
    acRelaorioVendasEstornadas: TAction;
    acRelatorioContasAPagar: TAction;
    acRelatorioReparosPorPeriodo: TAction;
    acRelatorioReparoPorTecnico: TAction;
    acRelatorioOSPorStatus: TAction;
    acRelatorioOS: TAction;
    acRelatorioFornecedores: TAction;
    procedure acSairExecute(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure sbMenuClick(Sender: TObject);
    procedure acCadastrosExecute(Sender: TObject);
    procedure acMovimentacaoExecute(Sender: TObject);
    procedure acRelatoriosExecute(Sender: TObject);
    procedure acExtrasExecute(Sender: TObject);
    procedure acSobreExecute(Sender: TObject);
    procedure acConfiguracoesExecute(Sender: TObject);
    procedure acCadastroMarcasExecute(Sender: TObject);
    procedure acCadastroGruposExecute(Sender: TObject);
    procedure acFormaPagamentoExecute(Sender: TObject);
    procedure acTipoRetiradasExecute(Sender: TObject);
    procedure acConfigurarParcelaExecute(Sender: TObject);
    procedure acAtividadeFuncionariosExecute(Sender: TObject);
    procedure acContasAPagarExecute(Sender: TObject);
    procedure acProblemasFrequentesExecute(Sender: TObject);
    procedure acCadastroFornecedoresExecute(Sender: TObject);
    procedure acCadastroTransportadoraExecute(Sender: TObject);
    procedure acCadastroProdutosExecute(Sender: TObject);
    procedure acCadastroFuncionariosExecute(Sender: TObject);
    procedure acCadastroSituacaoOrdemExecute(Sender: TObject);
    procedure acClientesExecute(Sender: TObject);
    procedure acEntradasProdutosExecute(Sender: TObject);
    procedure acSaidaProdutosExecute(Sender: TObject);
    procedure acOrdemServicoExecute(Sender: TObject);
    procedure acCriarOrdenServicoExecute(Sender: TObject);
    procedure acCadastrarServicosExecute(Sender: TObject);
    procedure acDadosEmpresaExecute(Sender: TObject);
    procedure acVendaExecute(Sender: TObject);
    procedure acNumeroDeParcelasExecute(Sender: TObject);
    procedure acQuitarParcelasExecute(Sender: TObject);
    procedure acVisualizarVendasExecute(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure acRelatorioClientesExecute(Sender: TObject);
    procedure acHistoricoOSClienteExecute(Sender: TObject);
    procedure acRelatorioContasAReceberExecute(Sender: TObject);
    procedure acRelatorioContasAReceberVendasExecute(Sender: TObject);
    procedure acRelatorioParcelasPagasOSExecute(Sender: TObject);
    procedure acRelatorioParcelasPagasVendasExecute(Sender: TObject);
    procedure acRelatorioOSEstornadasExecute(Sender: TObject);
    procedure acRelaorioVendasEstornadasExecute(Sender: TObject);
    procedure acRelatorioContasAPagarExecute(Sender: TObject);
    procedure acRelatorioReparosPorPeriodoExecute(Sender: TObject);
    procedure acRelatorioReparoPorTecnicoExecute(Sender: TObject);
    procedure acRelatorioOSPorStatusExecute(Sender: TObject);
    procedure acRelatorioOSExecute(Sender: TObject);
    procedure acRelatorioFornecedoresExecute(Sender: TObject);
  private
    { Private declarations }
  var
    F_SplitView: TSplitView;
    procedure closeSplit;
  public
    { Public declarations }
  end;

var
  formPrincipal: TformPrincipal;
  codigoDaOS: integer;
  codigoDocliente: integer;

implementation

{$R *.dfm}

uses UForm.Exemplo.Embeded, Form.Cadastro.Marcas, Form.Cadastro.Grupos,
  Form.Cadastro.Tipo.Retiradas, Form.Cadastro.Configurar.Parcelas,
  Form.Cadastro.Atividade.Funcionario, Form.Cadastro.Contas.APagar,
  Form.Cadastro.Problemas.Frequentes, Form.Cadastro.Forncedores,
  Form.Cadastro.Transportadora, Form.Cadastro.Produtos,
  Form.Cadastro.Funcionarios, Form.Cadastro.Situacao.Ordem,
  Form.Saidas.Produtos, Form.Ordem.Servico, Form.Criar.Ordem.Servico,
  Form.Cadastro.Servicos, Form.Cadastro.Empresa, Form.Venda,
  Form.Numero.Parcelas, Form.Quitar.Parcela.Venda, Form.Relatorio.Clientes,
  Form.Relatorio.Historico.OS, Form.Relatorio.Contas.A.Receber.OS,
  Form.Relatorio.Contas.A.Receber.Venda, Form.Relatorio.Parcelas.Pagas.OS,
  Form.Relatorio.Parcelas.Pagas.Vendas, Form.Relatorio.Contas.A.Pagar,
  Form.Relatorio.Reparos.Periodos, Form.Relatorio.Fornecedores;

procedure TformPrincipal.acAtividadeFuncionariosExecute(Sender: TObject);
begin
  formAtividadeFuncionario := TformAtividadeFuncionario.Create(self);
  TFactory.new.criarJanela.formShow(formAtividadeFuncionario, '');
end;

procedure TformPrincipal.acCadastrarServicosExecute(Sender: TObject);
begin
  formCadastroDeServicos := TformCadastroDeServicos.Create(self);
  TFactory.new.criarJanela.formShow(formCadastroDeServicos, '');
end;

procedure TformPrincipal.acCadastroFornecedoresExecute(Sender: TObject);
begin
  formCadastroFornecedores := TformCadastroFornecedores.Create(self);
  TFactory.new.criarJanela.formShow(formCadastroFornecedores, '');
end;

procedure TformPrincipal.acCadastroFuncionariosExecute(Sender: TObject);
begin
  formCadastroDeFuncionarios := TformCadastroDeFuncionarios.Create(self);
  TFactory.new.criarJanela.formShow(formCadastroDeFuncionarios, '');
end;

procedure TformPrincipal.acCadastroGruposExecute(Sender: TObject);
begin
  formCadastroGrupos := TformCadastroGrupos.Create(self);
  TFactory.new.criarJanela.formShow(formCadastroGrupos, '')
end;

procedure TformPrincipal.acCadastroMarcasExecute(Sender: TObject);
begin
  formCadastroMarcas := TformCadastroMarcas.Create(self);
  TFactory.new.criarJanela.formShow(formCadastroMarcas, '')
end;

procedure TformPrincipal.acCadastroProdutosExecute(Sender: TObject);
begin
  FormCadastroProdutos := TFormCadastroProdutos.Create(self);
  TFactory.new.criarJanela.formShow(FormCadastroProdutos, '');
end;

procedure TformPrincipal.acCadastrosExecute(Sender: TObject);
begin
  if spvCadastros.Opened = true then
    spvCadastros.Opened := false
  else
  begin
    closeSplit;
    spvCadastros.Opened := true;
    F_SplitView := spvCadastros;
  end;

end;

procedure TformPrincipal.acCadastroSituacaoOrdemExecute(Sender: TObject);
begin
  formCadastroSituacoesOrdem := TformCadastroSituacoesOrdem.Create(self);
  TFactory.new.criarJanela.formShow(formCadastroSituacoesOrdem, '');
end;

procedure TformPrincipal.acCadastroTransportadoraExecute(Sender: TObject);
begin
  formCadastroTransportadora := TformCadastroTransportadora.Create(self);
  TFactory.new.criarJanela.formShow(formCadastroTransportadora, '');
end;

procedure TformPrincipal.acClientesExecute(Sender: TObject);
begin
  formCadastroDeClientes := TformCadastroDeClientes.Create(self);
  TFactory.new.criarJanela.formShow(formCadastroDeClientes, '');
end;

procedure TformPrincipal.acConfiguracoesExecute(Sender: TObject);
begin
  if spvConfiguracoes.Opened = true then
    spvConfiguracoes.Opened := false
  else
  begin
    closeSplit;
    spvConfiguracoes.Opened := true;
    F_SplitView := spvConfiguracoes;
  end;
end;

procedure TformPrincipal.acConfigurarParcelaExecute(Sender: TObject);
begin
  formConfigurarParcelas := TformConfigurarParcelas.Create(self);
  TFactory.new.criarJanela.formShow(formConfigurarParcelas, '');
end;

procedure TformPrincipal.acContasAPagarExecute(Sender: TObject);
begin
  formCadastroContasAPagar := TformCadastroContasAPagar.Create(self);
  TFactory.new.criarJanela.formShow(formCadastroContasAPagar, '');
end;

procedure TformPrincipal.acCriarOrdenServicoExecute(Sender: TObject);
begin
  formCriarConsultarOrdemServico :=
    TformCriarConsultarOrdemServico.Create(self);
  TFactory.new.criarJanela.formShow(formCriarConsultarOrdemServico, '');
end;

procedure TformPrincipal.acDadosEmpresaExecute(Sender: TObject);
begin
  formCadastroEmpresa := TformCadastroEmpresa.Create(self);
  TFactory.new.criarJanela.formShow(formCadastroEmpresa, '');
end;

procedure TformPrincipal.acEntradasProdutosExecute(Sender: TObject);
begin
  formEntradaDeProdutos := TformEntradaDeProdutos.Create(self);
  TFactory.new.criarJanela.formShow(formEntradaDeProdutos, '');
end;

procedure TformPrincipal.acExtrasExecute(Sender: TObject);
begin
  if spvExtras.Opened = true then
    spvExtras.Opened := false
  else
  begin
    closeSplit;
    spvExtras.Opened := true;
    F_SplitView := spvExtras;
  end;
end;

procedure TformPrincipal.acFormaPagamentoExecute(Sender: TObject);
begin
  formFormaPagamento := TformFormaPagamento.Create(self);
  TFactory.new.criarJanela.formShow(formFormaPagamento, '');
end;

procedure TformPrincipal.acHistoricoOSClienteExecute(Sender: TObject);
begin
 formRelatorioHistoricoOS := TformRelatorioHistoricoOS.Create(self);
 TFactory.new.criarJanela.formShow(formRelatorioHistoricoOS, '');
end;

procedure TformPrincipal.acMovimentacaoExecute(Sender: TObject);
begin
  if spvMovimentacao.Opened = true then
    spvMovimentacao.Opened := false
  else
  begin
    closeSplit;
    spvMovimentacao.Opened := true;
    F_SplitView := spvMovimentacao;
  end;
end;

procedure TformPrincipal.acNumeroDeParcelasExecute(Sender: TObject);
begin
  formNumeroParcelas := TformNumeroParcelas.Create(self);
  TFactory.new.criarJanela.formShow(formNumeroParcelas, '');
end;

procedure TformPrincipal.acOrdemServicoExecute(Sender: TObject);
begin
  formOrdemServico := TformOrdemServico.Create(self);
  TFactory.new.criarJanela.formShow(formOrdemServico, '');
end;

procedure TformPrincipal.acRelatorioOSEstornadasExecute(Sender: TObject);
begin
  formOSEstornadas := TformOSEstornadas.Create(self);
  TFactory.new.criarJanela.formShow(formOSEstornadas, '');
end;

procedure TformPrincipal.acRelatorioOSExecute(Sender: TObject);
begin
  formRelatorioOrdemDeServico := TformRelatorioOrdemDeServico.Create(self);
  TFactory.new.criarJanela.formShow(formRelatorioOrdemDeServico, '');
end;

procedure TformPrincipal.acRelatorioOSPorStatusExecute(Sender: TObject);
begin
  formRelatorioOSPorStatus := TformRelatorioOSPorStatus.Create(self);
  TFactory.new.criarJanela.formShow(formRelatorioOSPorStatus, '');
end;

procedure TformPrincipal.acRelatorioParcelasPagasOSExecute(Sender: TObject);
begin
  formRelatorioParcelasPagasOS := TformRelatorioParcelasPagasOS.Create(self);
  TFactory.new.criarJanela.formShow(formRelatorioParcelasPagasOS, '');
end;

procedure TformPrincipal.acRelatorioParcelasPagasVendasExecute(Sender: TObject);
begin
  formRelatorioParcelasPagasVendas := TformRelatorioParcelasPagasVendas.Create(self);
  TFactory.new.criarJanela.formShow(formRelatorioParcelasPagasVendas, '');
end;

procedure TformPrincipal.acRelatorioReparoPorTecnicoExecute(Sender: TObject);
begin
  formRelatorioOSPorTecnico := TformRelatorioOSPorTecnico.Create(self);
  TFactory.new.criarJanela.formShow(formRelatorioOSPorTecnico, '');
end;

procedure TformPrincipal.acRelatorioReparosPorPeriodoExecute(Sender: TObject);
begin
  formRelatorioReparosPorPeriodo := TformRelatorioReparosPorPeriodo.Create(self);
  TFactory.new.criarJanela.formShow(formRelatorioReparosPorPeriodo, '');
end;

procedure TformPrincipal.acProblemasFrequentesExecute(Sender: TObject);
begin
  formCadastroProblemasFrequentes :=
    TformCadastroProblemasFrequentes.Create(self);
  TFactory.new.criarJanela.formShow(formCadastroProblemasFrequentes, '');
end;

procedure TformPrincipal.acQuitarParcelasExecute(Sender: TObject);
begin
  formQuitarParcelasVendas := TformQuitarParcelasVendas.Create(self);
  TFactory.new.criarJanela.formShow(formQuitarParcelasVendas, '');
end;

procedure TformPrincipal.acRelaorioVendasEstornadasExecute(Sender: TObject);
begin
  formRelatorioVendasEstornadas := tformRelatorioVendasEstornadas.Create(self);
  TFactory.new.criarJanela.formShow(formRelatorioVendasEstornadas, '');
end;

procedure TformPrincipal.acRelatorioClientesExecute(Sender: TObject);
begin
  formRelatorioClientes := TformRelatorioClientes.Create(self);
  TFactory.new.criarJanela.formShow(formRelatorioClientes, '');
end;

procedure TformPrincipal.acRelatorioContasAPagarExecute(Sender: TObject);
begin
  formRelatorioContasAPagar := TformRelatorioContasAPagar.Create(self);
  TFactory.new.criarJanela.formShow(formRelatorioContasAPagar, '');
end;

procedure TformPrincipal.acRelatorioContasAReceberExecute(Sender: TObject);
begin
 formRelatorioContasAReceberOS := TformRelatorioContasAReceberOS.Create(self);
 TFactory.new.criarJanela.formShow(formRelatorioContasAReceberOS, '');
end;

procedure TformPrincipal.acRelatorioContasAReceberVendasExecute(
  Sender: TObject);
begin
  formRelatorioContasAReceberVenda := TformRelatorioContasAReceberVenda.Create(self);
  TFactory.new.criarJanela.formShow(formRelatorioContasAReceberVenda, '');
end;

procedure TformPrincipal.acRelatorioFornecedoresExecute(Sender: TObject);
begin
  formRelatorioFornecedores := TformRelatorioFornecedores.Create(self);
  TFactory.new.criarJanela.formShow(formRelatorioFornecedores, '');
end;

procedure TformPrincipal.acRelatoriosExecute(Sender: TObject);
begin
  if spvRelatorio.Opened = true then
    spvRelatorio.Opened := false
  else
  begin
    closeSplit;
    spvRelatorio.Opened := true;
    F_SplitView := spvRelatorio;
  end;
end;

procedure TformPrincipal.acSaidaProdutosExecute(Sender: TObject);
begin
  formSaidaDeProdutos := TformSaidaDeProdutos.Create(self);
  TFactory.new.criarJanela.formShow(formSaidaDeProdutos, '');
end;

procedure TformPrincipal.acSairExecute(Sender: TObject);
begin
  Close;
end;

procedure TformPrincipal.acSobreExecute(Sender: TObject);
begin
  if spvSobre.Opened = true then
    spvSobre.Opened := false
  else
  begin
    closeSplit;
    spvSobre.Opened := true;
    F_SplitView := spvSobre;
  end;
end;

procedure TformPrincipal.acTipoRetiradasExecute(Sender: TObject);
begin
  formTipoRetiradas := TformTipoRetiradas.Create(self);
  TFactory.new.criarJanela.formShow(formTipoRetiradas, '');
end;

procedure TformPrincipal.acVendaExecute(Sender: TObject);
begin
  formVendas := TformVendas.Create(self);
  TFactory.new.criarJanela.formShow(formVendas, '');
end;

procedure TformPrincipal.acVisualizarVendasExecute(Sender: TObject);
begin
  formVisualizarVendas := TformVisualizarVendas.Create(self);
  TFactory.new.criarJanela.formShow(formVisualizarVendas, '');
end;

procedure TformPrincipal.Button1Click(Sender: TObject);
begin

  formExemploEmbeded := TformExemploEmbeded.Create(self);
  // formExemploEmbeded.Parent := pnlform;
  // formExemploEmbeded.Show;

  try
    formExemploEmbeded.ShowModal;
  finally
    formExemploEmbeded.Free;
  end;

end;

procedure TformPrincipal.Button2Click(Sender: TObject);
begin
  formModeloRelatorio := TformModeloRelatorio.Create(self);
  TFactory.new.criarJanela.formShow(formModeloRelatorio, '');
end;

procedure TformPrincipal.FormCreate(Sender: TObject);
begin

  codigoDaOS := 0;
  codigoDocliente := 0;

  { Centraliza a imagem da LOGO }
  imgLogo.Left := (formPrincipal.Width - Image2.Width) div 2;
  imgLogo.Top := (formPrincipal.Height - Image2.Height) div 2;

  ReportMemoryLeaksOnShutdown := true;

end;

procedure TformPrincipal.closeSplit;
begin
  if Assigned(F_SplitView) then
    F_SplitView.Opened := false;
end;

procedure TformPrincipal.sbMenuClick(Sender: TObject);
begin
  if SplitView1.Opened = true then
    SplitView1.Close
  else
    SplitView1.Open;
end;

end.
