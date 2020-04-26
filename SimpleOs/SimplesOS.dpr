program SimplesOS;

uses
  Vcl.Forms,
  Form.Principal in 'Forms\Form.Principal.pas' {formPrincipal},
  UClasse.Calcular.Juros in 'Classes\Reusable\UClasse.Calcular.Juros.pas',
  UClasse.CapturarErro in 'Classes\Reusable\UClasse.CapturarErro.pas',
  UClasse.Gravar.Log.Sistema in 'Classes\Reusable\UClasse.Gravar.Log.Sistema.pas',
  UClasse.ObertValorPorExtenso in 'Classes\Reusable\UClasse.ObertValorPorExtenso.pas',
  UClasse.Obter.Data.Hora.PorExtenso in 'Classes\Reusable\UClasse.Obter.Data.Hora.PorExtenso.pas',
  UClasse.Query in 'Classes\Query\UClasse.Query.pas',
  UInterfaces in 'Classes\Interfaces\UInterfaces.pas',
  UFactory.Entity in 'Classes\Factory\UFactory.Entity.pas',
  UFactory.Query in 'Classes\Factory\UFactory.Query.pas',
  UClasse.Entity.Criar.Ordem.Parcelas in 'Classes\Entity\UClasse.Entity.Criar.Ordem.Parcelas.pas',
  UClasse.Entity.Table in 'Classes\Entity\UClasse.Entity.Table.pas',
  UDados.Conexao in 'DataModule\UDados.Conexao.pas' {DataModule1: TDataModule},
  UForm.Exemplo.Embeded in 'Forms\Exemplos\UForm.Exemplo.Embeded.pas' {formExemploEmbeded},
  UClasse.Entity.Marcas in 'Classes\Entity\UClasse.Entity.Marcas.pas',
  Form.Cadastro.Marcas in 'Forms\Form.Cadastro.Marcas.pas' {formCadastroMarcas},
  UClasse.Criar.Janela in 'Classes\UClasse.Criar.Janela.pas',
  UFactory in 'Classes\Factory\UFactory.pas',
  UClasse.Entity.Grupos in 'Classes\Entity\UClasse.Entity.Grupos.pas',
  Form.Cadastro.Grupos in 'Forms\Form.Cadastro.Grupos.pas' {formCadastroGrupos},
  Form.Cadastro.Forma.Pagamento in 'Forms\Form.Cadastro.Forma.Pagamento.pas' {formFormaPagamento},
  UClasse.Entity.Forma.Pagamento in 'Classes\Entity\UClasse.Entity.Forma.Pagamento.pas',
  Form.Cadastro.Tipo.Retiradas in 'Forms\Form.Cadastro.Tipo.Retiradas.pas' {formTipoRetiradas},
  UClasse.Entity.Tipo.Retiradas in 'Classes\Entity\UClasse.Entity.Tipo.Retiradas.pas',
  Form.Cadastro.Configurar.Parcelas in 'Forms\Form.Cadastro.Configurar.Parcelas.pas' {formConfigurarParcelas},
  UClasse.Entity.Configurar.Parcelas in 'Classes\Entity\UClasse.Entity.Configurar.Parcelas.pas',
  Form.Cadastro.Atividade.Funcionario in 'Forms\Form.Cadastro.Atividade.Funcionario.pas' {formAtividadeFuncionario},
  UClasse.Entity.Atividade.Funcionario in 'Classes\Entity\UClasse.Entity.Atividade.Funcionario.pas',
  Form.Cadastro.Contas.APagar in 'Forms\Form.Cadastro.Contas.APagar.pas' {formCadastroContasAPagar},
  UClasse.Entity.Contas.APagar in 'Classes\Entity\UClasse.Entity.Contas.APagar.pas',
  Form.Cadastro.Problemas.Frequentes in 'Forms\Form.Cadastro.Problemas.Frequentes.pas' {formCadastroProblemasFrequentes},
  UClasse.Entity.Problemas.Frequentes in 'Classes\Entity\UClasse.Entity.Problemas.Frequentes.pas',
  Form.Cadastro.Forncedores in 'Forms\Form.Cadastro.Forncedores.pas' {formCadastroFornecedores},
  UClasse.Entity.Transportadora in 'Classes\Entity\UClasse.Entity.Transportadora.pas',
  Form.Cadastro.Transportadora in 'Forms\Form.Cadastro.Transportadora.pas' {formCadastroTransportadora},
  UClasse.Entity.Forncedores in 'Classes\Entity\UClasse.Entity.Forncedores.pas',
  UClasse.Validar.Documento in 'Classes\Reusable\UClasse.Validar.Documento.pas',
  Form.Cadastro.Produtos in 'Forms\Form.Cadastro.Produtos.pas' {formCadastroProdutos},
  UClasse.Entity.Produtos in 'Classes\Entity\UClasse.Entity.Produtos.pas',
  Form.Localizar.Grupo in 'Forms\Localizar\Form.Localizar.Grupo.pas' {formLocalizarGrupo},
  Form.Localizar.Marca in 'Forms\Localizar\Form.Localizar.Marca.pas' {formLocalizarMarca},
  UCalculadora in 'Forms\Utilitarios\UCalculadora.pas' {frmCalculadoraMargemLucro},
  UClasse.Gerar.Codigo.Barras in 'Classes\Reusable\UClasse.Gerar.Codigo.Barras.pas',
  UClasse.Entity.Cadastro.Funcionario in 'Classes\Entity\UClasse.Entity.Cadastro.Funcionario.pas',
  Wcrypt2 in 'Classes\Biblioteca\Wcrypt2.pas',
  UClasse.Cript.password in 'Classes\Biblioteca\UClasse.Cript.password.pas',
  Form.Localizar.Atividade.Funcionario in 'Forms\Localizar\Form.Localizar.Atividade.Funcionario.pas' {formLocalizarAtividadeFuncionario},
  Form.Comissoes.Funcionario in 'Forms\Form.Comissoes.Funcionario.pas' {formComissoesFuncionarios},
  Form.Cadastro.Funcionarios in 'Forms\Form.Cadastro.Funcionarios.pas' {formCadastroDeFuncionarios},
  UClasse.Entity.Comissoes.Funcionario in 'Classes\Entity\UClasse.Entity.Comissoes.Funcionario.pas',
  Form.Cadastro.Situacao.Ordem in 'Forms\Form.Cadastro.Situacao.Ordem.pas' {formCadastroSituacoesOrdem},
  UClasse.Entity.Cadastro.Situacoes.Ordem in 'Classes\Entity\UClasse.Entity.Cadastro.Situacoes.Ordem.pas',
  Form.Cadastro.Clientes in 'Forms\Form.Cadastro.Clientes.pas' {formCadastroDeClientes},
  UClasse.Entity.Cadastro.Clientes in 'Classes\Entity\UClasse.Entity.Cadastro.Clientes.pas',
  UClasse.Entity.Entradas.Produtos in 'Classes\Entity\UClasse.Entity.Entradas.Produtos.pas',
  Form.Entradas.Produtos in 'Forms\Form.Entradas.Produtos.pas' {formEntradaDeProdutos},
  Form.Localizar.Produtos.Entrada in 'Forms\Localizar\Form.Localizar.Produtos.Entrada.pas' {formLocalizarProdutosEntradas},
  Form.Saidas.Produtos in 'Forms\Form.Saidas.Produtos.pas' {formSaidaDeProdutos},
  UClasse.Entity.Saidas.Produtos in 'Classes\Entity\UClasse.Entity.Saidas.Produtos.pas',
  Form.Localizar.Produtos.Saidas in 'Forms\Localizar\Form.Localizar.Produtos.Saidas.pas' {FormLocalizarProdutosSaida},
  Form.Ordem.Servico in 'Forms\Form.Ordem.Servico.pas' {formOrdemServico},
  Form.Criar.Ordem.Servico in 'Forms\Form.Criar.Ordem.Servico.pas' {formCriarConsultarOrdemServico},
  UClasse.Listar.Ordens.Servico in 'Classes\Entity\UClasse.Listar.Ordens.Servico.pas',
  Form.Cadastro.Servicos in 'Forms\Form.Cadastro.Servicos.pas' {formCadastroDeServicos},
  UClasse.Entity.Cadastro.Servicos in 'Classes\Entity\UClasse.Entity.Cadastro.Servicos.pas',
  UClasse.Entity.Criar.Ordem.Servico in 'Classes\Entity\UClasse.Entity.Criar.Ordem.Servico.pas',
  Form.Localizar.Clientes.Ordem in 'Forms\Localizar\Form.Localizar.Clientes.Ordem.pas' {formLocalizarClientesOrdem},
  UClasse.ChamarCadastro in 'Classes\UClasse.ChamarCadastro.pas',
  UClasse.Chamar.Cadastro.Clientes.Ordens in 'Classes\UClasse.Chamar.Cadastro.Clientes.Ordens.pas',
  UClasse.Localizar.Registro.Especifico in 'Classes\Entity\UClasse.Localizar.Registro.Especifico.pas',
  Form.Localizar.Tecnico.Ordem in 'Forms\Localizar\Form.Localizar.Tecnico.Ordem.pas' {formLocalizarTecnico},
  UClasse.Entity.Ordem.Adicionar.Servico in 'Classes\Entity\UClasse.Entity.Ordem.Adicionar.Servico.pas',
  UClasse.Entity in 'Classes\Entity\UClasse.Entity.pas',
  UClasse.ExtrairDiaData in 'Classes\Reusable\UClasse.ExtrairDiaData.pas',
  UClasse.DiasMeses in 'Classes\Reusable\UClasse.DiasMeses.pas',
  UClasse.Visualizar.Ordens.Servico in 'Classes\Entity\UClasse.Visualizar.Ordens.Servico.pas',
  UClasse.Visualizar.Ordens.Servicos.Incluidos in 'Classes\Entity\UClasse.Visualizar.Ordens.Servicos.Incluidos.pas',
  UClasse.Visualizar.Ordens.Servico.Parcelas in 'Classes\Entity\UClasse.Visualizar.Ordens.Servico.Parcelas.pas',
  UClasse.Entity.Dados.Empresa in 'Classes\Entity\UClasse.Entity.Dados.Empresa.pas',
  Form.Cadastro.Empresa in 'Forms\Form.Cadastro.Empresa.pas' {formCadastroEmpresa},
  UClasse.Preparar.Imprimir.Recibo in 'Classes\Entity\UClasse.Preparar.Imprimir.Recibo.pas',
  UClasse.Ativar.Desativar.Botoes.Ordem.Servico in 'Classes\Entity\UClasse.Ativar.Desativar.Botoes.Ordem.Servico.pas',
  uClasse.Venda in 'Classes\Entity\uClasse.Venda.pas',
  UClasse.Entity.Itens.Venda in 'Classes\Entity\UClasse.Entity.Itens.Venda.pas',
  uClasse.Venda.Parcelas in 'Classes\Entity\uClasse.Venda.Parcelas.pas',
  Form.Venda in 'Forms\Form.Venda.pas' {formVendas},
  Form.Localizar.Clientes.Venda in 'Forms\Localizar\Form.Localizar.Clientes.Venda.pas' {formLocalizarClientesVenda},
  UClasse.Entity.Localizar.Cliente.Venda in 'Classes\Entity\Localizar\UClasse.Entity.Localizar.Cliente.Venda.pas',
  Form.Localizar.Produtos.Venda in 'Forms\Localizar\Form.Localizar.Produtos.Venda.pas' {formLocalizarProdutoVenda},
  UClasse.Entity.Localizar.Produto.Venda in 'Classes\Entity\Localizar\UClasse.Entity.Localizar.Produto.Venda.pas',
  Form.venda.Confirmar.Pagamento in 'Forms\Form.venda.Confirmar.Pagamento.pas' {FormVendaConfirmarPagamento},
  UClasse.Entity.Numero.Parcelas in 'Classes\Entity\UClasse.Entity.Numero.Parcelas.pas',
  Form.Numero.Parcelas in 'Forms\Form.Numero.Parcelas.pas' {formNumeroParcelas},
  UClasse.Calcular.Parcela in 'Classes\Entity\UClasse.Calcular.Parcela.pas',
  UClasse.Imprimir.Recibo in 'Classes\Entity\ImprimirParcela_Recibo\UClasse.Imprimir.Recibo.pas',
  UClasse.Imprimir.Parcelas in 'Classes\Entity\ImprimirParcela_Recibo\UClasse.Imprimir.Parcelas.pas',
  Form.Quitar.Parcela.Venda in 'Forms\Form.Quitar.Parcela.Venda.pas' {formQuitarParcelasVendas},
  UClasse.Entity.Quitar.Parcelas.Vendas in 'Classes\Entity\UClasse.Entity.Quitar.Parcelas.Vendas.pas',
  UClasse.Ativar.Desativar.Botoes.Quitar.Parcelas in 'Classes\Entity\ImprimirParcela_Recibo\UClasse.Ativar.Desativar.Botoes.Quitar.Parcelas.pas',
  Form.Visualizar.Vendas in 'Forms\Form.Visualizar.Vendas.pas' {formVisualizarVendas},
  UClasse.Visualizar.Vendas in 'Classes\Entity\UClasse.Visualizar.Vendas.pas',
  Form.Modelo.Relatorio in 'Forms\Exemplos\Form.Modelo.Relatorio.pas' {formModeloRelatorio},
  Form.Relatorio.Clientes in 'Forms\Relatorios\Form.Relatorio.Clientes.pas' {formRelatorioClientes},
  UClasse.Entity.Modelo.Relatorio in 'Classes\Entity\Exemplos\UClasse.Entity.Modelo.Relatorio.pas',
  UClasse.Relatorio.Clientes in 'Classes\Entity\Relatorios\UClasse.Relatorio.Clientes.pas',
  Form.Relatorio.Historico.OS in 'Forms\Relatorios\Form.Relatorio.Historico.OS.pas' {formRelatorioHistoricoOS},
  UClasse.Historico.OS.Clientes in 'Classes\Entity\Relatorios\UClasse.Historico.OS.Clientes.pas',
  Form.Relatorio.Contas.A.Receber.OS in 'Forms\Relatorios\Form.Relatorio.Contas.A.Receber.OS.pas' {formRelatorioContasAReceberOS},
  UClasse.Relatorio.Contas.A.Receber in 'Classes\Entity\Relatorios\UClasse.Relatorio.Contas.A.Receber.pas',
  Form.Relatorio.Contas.A.Receber.Venda in 'Forms\Relatorios\Form.Relatorio.Contas.A.Receber.Venda.pas' {formRelatorioContasAReceberVenda},
  UClasse.Relatorio.Contas.Receber.Venda in 'Classes\Entity\Relatorios\UClasse.Relatorio.Contas.Receber.Venda.pas',
  Form.Relatorio.Parcelas.Pagas.OS in 'Forms\Relatorios\Form.Relatorio.Parcelas.Pagas.OS.pas' {formRelatorioParcelasPagasOS},
  UClasse.Relatorio.Parcelas.Pagas.OS in 'Classes\Entity\Relatorios\UClasse.Relatorio.Parcelas.Pagas.OS.pas',
  Form.Relatorio.Parcelas.Pagas.Vendas in 'Forms\Relatorios\Form.Relatorio.Parcelas.Pagas.Vendas.pas' {formRelatorioParcelasPagasVendas},
  UClasse.Relatorio.Parcelas.Pagas.Vendas in 'Classes\Entity\Relatorios\UClasse.Relatorio.Parcelas.Pagas.Vendas.pas',
  Form.Relatorio.OS.Estornadas in 'Forms\Relatorios\Form.Relatorio.OS.Estornadas.pas' {formOSEstornadas},
  UClasse.Relatorio.OS.Estornadas in 'Classes\Entity\Relatorios\UClasse.Relatorio.OS.Estornadas.pas',
  UClasse.Entity.Estornar.OS in 'Classes\Entity\UClasse.Entity.Estornar.OS.pas',
  UClasse.Estornar.Venda in 'Classes\Entity\UClasse.Estornar.Venda.pas',
  Form.Relatorio.Vendas.Estornadas in 'Forms\Relatorios\Form.Relatorio.Vendas.Estornadas.pas' {formRelatorioVendasEstornadas},
  UClasse.Relatorio.Vendas.Estornadas in 'Classes\Entity\Relatorios\UClasse.Relatorio.Vendas.Estornadas.pas',
  Form.Relatorio.Contas.A.Pagar in 'Forms\Relatorios\Form.Relatorio.Contas.A.Pagar.pas' {formRelatorioContasAPagar},
  UClasse.Relatorio.Contas.A.Pagar in 'Classes\Entity\Relatorios\UClasse.Relatorio.Contas.A.Pagar.pas',
  Form.Relatorio.Reparos.Periodos in 'Forms\Relatorios\Form.Relatorio.Reparos.Periodos.pas' {formRelatorioReparosPorPeriodo},
  UClasse.Relatorio.Reparos.Por.Periodo in 'Classes\Entity\Relatorios\UClasse.Relatorio.Reparos.Por.Periodo.pas',
  Form.Relatorio.OS.Por.Tecnico in 'Forms\Relatorios\Form.Relatorio.OS.Por.Tecnico.pas' {formRelatorioOSPorTecnico},
  UClasse.Relatorio.OS.Por.Tecnico in 'Classes\Entity\Relatorios\UClasse.Relatorio.OS.Por.Tecnico.pas',
  Form.Relatorio.OS.Por.Status in 'Forms\Relatorios\Form.Relatorio.OS.Por.Status.pas' {formRelatorioOSPorStatus},
  UClasse.Relatorio.OS.Situacao in 'Classes\Entity\Relatorios\UClasse.Relatorio.OS.Situacao.pas',
  Form.Relatorio.OS in 'Forms\Relatorios\Form.Relatorio.OS.pas' {formRelatorioOrdemDeServico},
  UClasse.Relatorio.OS in 'Classes\Entity\Relatorios\UClasse.Relatorio.OS.pas',
  UClasse.Relatorio.OS.Servicos in 'Classes\Entity\Relatorios\UClasse.Relatorio.OS.Servicos.pas',
  Form.Relatorio.Fornecedores in 'Forms\Relatorios\Form.Relatorio.Fornecedores.pas' {formRelatorioFornecedores},
  UClasse.Relatorio.Fornecedores in 'Classes\Entity\Relatorios\UClasse.Relatorio.Fornecedores.pas',
  Form.Relatorio.OS.Inadimplentes in 'Forms\Relatorios\Form.Relatorio.OS.Inadimplentes.pas' {formRelatorioOSInadimplentes},
  UClasse.Relatorio.OS.Inadimplentes in 'Classes\Entity\Relatorios\UClasse.Relatorio.OS.Inadimplentes.pas',
  Form.Relatorio.Produtos in 'Forms\Relatorios\Form.Relatorio.Produtos.pas' {formRelatorioDeProdutos},
  UClasse.Relatorio.Produtos in 'Classes\Entity\Relatorios\UClasse.Relatorio.Produtos.pas',
  Form.Relatorio.Situacao.Estoque in 'Forms\Relatorios\Form.Relatorio.Situacao.Estoque.pas' {formRelatorioSituacaoDoEstoque},
  UClasse.Relatorio.Situacao.Estoque in 'Classes\Entity\Relatorios\UClasse.Relatorio.Situacao.Estoque.pas',
  Form.Relatorio.Produtos.Mais.Vendidos in 'Forms\Relatorios\Form.Relatorio.Produtos.Mais.Vendidos.pas' {formRelatorioProdutosMaisVendidos},
  UClasse.Relatorio.Produtos.Mais.Vendidos in 'Classes\Entity\Relatorios\UClasse.Relatorio.Produtos.Mais.Vendidos.pas',
  Form.Relatorio.Vendas in 'Forms\Relatorios\Form.Relatorio.Vendas.pas' {formRelatorioVendas},
  UClasse.Relatorio.Vendas in 'Classes\Entity\Relatorios\UClasse.Relatorio.Vendas.pas',
  Form.Relatorio.Parcelas.Venda.Inadimplentes in 'Forms\Relatorios\Form.Relatorio.Parcelas.Venda.Inadimplentes.pas' {formRelatorioVendasInadimplentes},
  UClasse.Relatorio.Vendas.Inadimplentes in 'Classes\Entity\Relatorios\UClasse.Relatorio.Vendas.Inadimplentes.pas',
  Form.Relatorio.Servico.Mais.Realizados in 'Forms\Relatorios\Form.Relatorio.Servico.Mais.Realizados.pas' {formRelatorioServicosMaisRealizados},
  UClasse.Relatorio.Servicos.Mais.Realizados in 'Classes\Entity\Relatorios\UClasse.Relatorio.Servicos.Mais.Realizados.pas',
  Form.Relatorio.Saida.Produtos in 'Forms\Relatorios\Form.Relatorio.Saida.Produtos.pas' {formRelatorioSaidaDeProdutos},
  UClasse.Relatorio.Saida.Produtos in 'Classes\Entity\Relatorios\UClasse.Relatorio.Saida.Produtos.pas',
  Form.Relatorio.Entrada.Produtos in 'Forms\Relatorios\Form.Relatorio.Entrada.Produtos.pas' {formRelatorioEntradasDeProdutos},
  UClasse.Relatorio.Entrada.Produtos in 'Classes\Entity\Relatorios\UClasse.Relatorio.Entrada.Produtos.pas',
  Form.Relatorio.Vendas.Por.Funcionario in 'Forms\Relatorios\Form.Relatorio.Vendas.Por.Funcionario.pas' {formRelatorioVendasPorFuncionario},
  UClasse.Relatorio.Vendas.Por.Funcionarios in 'Classes\Entity\Relatorios\UClasse.Relatorio.Vendas.Por.Funcionarios.pas',
  Form.Relatorio.Transportadoras in 'Forms\Relatorios\Form.Relatorio.Transportadoras.pas' {formRelatorioTransportadora},
  UClasse.Relatorio.Transportadoras in 'Classes\Entity\Relatorios\UClasse.Relatorio.Transportadoras.pas',
  UClasse.Entity.Caixa in 'Classes\Entity\Caixa\UClasse.Entity.Caixa.pas',
  UClasse.Query.Caixa in 'Classes\Entity\Caixa\UClasse.Query.Caixa.pas',
  Form.Abertura.Caixa in 'Forms\Caixa\Form.Abertura.Caixa.pas' {formIniciarCaixa},
  Form.Encerramento.Caixa in 'Forms\Caixa\Form.Encerramento.Caixa.pas' {formEncerramentoCaixa},
  Form.Reabertura.Caixa in 'Forms\Caixa\Form.Reabertura.Caixa.pas' {formReaberturaDeCaixa},
  Form.Retirada.De.Valores in 'Forms\Form.Retirada.De.Valores.pas' {formRetiradaDeValores},
  UClasse.Entity.Retirada.Valores in 'Classes\Entity\UClasse.Entity.Retirada.Valores.pas',
  Form.Relatorio.Retirada.Valores in 'Forms\Relatorios\Form.Relatorio.Retirada.Valores.pas' {formRelatorioRetiradaDeValores},
  UClasse.Relatorio.Retirada.Valores in 'Classes\Entity\Relatorios\UClasse.Relatorio.Retirada.Valores.pas',
  Form.Login in 'Forms\Form.Login.pas' {formLogin},
  UClasse.Login in 'Classes\Entity\UClasse.Login.pas',
  UClasse.Relatorio.Comissoes.Tecnico in 'Classes\Entity\Relatorios\UClasse.Relatorio.Comissoes.Tecnico.pas',
  Form.Relatorio.Comissoes in 'Forms\Relatorios\Form.Relatorio.Comissoes.pas' {formComissoesTecnicos},
  Form.Configurar.Conexcao.Banco in 'Forms\Form.Configurar.Conexcao.Banco.pas' {formConfigurarConexaoBanco},
  UClasse.Config.Conexao in 'Classes\Entity\Config\UClasse.Config.Conexao.pas',
  UClasse.Config.Acesso.Banco in 'Classes\Entity\Config\UClasse.Config.Acesso.Banco.pas',
  Form.Configuracoes.Backup in 'Forms\Form.Configuracoes.Backup.pas' {formConfiguracoesBackUp},
  UClasse.Config.BackUp in 'Classes\Entity\Config\UClasse.Config.BackUp.pas',
  Form.Backup.Manual in 'Forms\Form.Backup.Manual.pas' {formBackUpManual},
  UClasse.Relatorio.Problemas.Frequentes in 'Classes\Entity\Relatorios\UClasse.Relatorio.Problemas.Frequentes.pas',
  Form.Relatorio.Problemas.Frequentes in 'Forms\Relatorios\Form.Relatorio.Problemas.Frequentes.pas' {formRelatorioProblemasFrequentes},
  UClasse.Relatorio.Historico.Caixa in 'Classes\Entity\Relatorios\UClasse.Relatorio.Historico.Caixa.pas',
  Form.Relatorio.Historico.Caixa in 'Forms\Relatorios\Form.Relatorio.Historico.Caixa.pas' {formRelatorioHistoricoDoCaixa},
  Form.Quitar.Parcela.OS in 'Forms\Form.Quitar.Parcela.OS.pas' {formQuitarParcelaOS},
  UClasse.Entity.Quitar.Parcela.OS in 'Classes\Entity\UClasse.Entity.Quitar.Parcela.OS.pas',
  UClasse.Imprimir.Parcelas.OS in 'Classes\Entity\UClasse.Imprimir.Parcelas.OS.pas',
  UClasse.Imprimir.Recibo.OS in 'Classes\Entity\UClasse.Imprimir.Recibo.OS.pas',
  Form.Movimentacao.Caixa in 'Forms\Caixa\Form.Movimentacao.Caixa.pas' {formMovimentacaoCaixa},
  UClasse.Relatorio.Movimentacao.OS in 'Classes\Entity\Relatorios\Movimentacao_Caixa\UClasse.Relatorio.Movimentacao.OS.pas',
  UFactory.Movimentacao in 'Classes\Factory\UFactory.Movimentacao.pas',
  UClasse.Relatorio.Movimentacao.Venda in 'Classes\Entity\Relatorios\Movimentacao_Caixa\UClasse.Relatorio.Movimentacao.Venda.pas',
  UClasse.Relatorio.Movimentacao.Retiradas in 'Classes\Entity\Relatorios\Movimentacao_Caixa\UClasse.Relatorio.Movimentacao.Retiradas.pas',
  UClasse.Relatorio.Movimentacao.Contas in 'Classes\Entity\Relatorios\Movimentacao_Caixa\UClasse.Relatorio.Movimentacao.Contas.pas',
  UClasse.Relatorio.Movimentacao.Caixa in 'Classes\Entity\Relatorios\Movimentacao_Caixa\UClasse.Relatorio.Movimentacao.Caixa.pas',
  Form.Acesso.Recursos.Fucnionarios in 'Forms\Form.Acesso.Recursos.Fucnionarios.pas' {formConfigurarAcessoFuncionario},
  UClasse.Entity.Configurar.Acesso.Funcionario in 'Classes\Entity\UClasse.Entity.Configurar.Acesso.Funcionario.pas',
  Unit1 in 'Unit1.pas',
  UClasse.Entity.Trocar.Usuario in 'Classes\Entity\UClasse.Entity.Trocar.Usuario.pas',
  Form.Trocar.Usuario in 'Forms\Form.Trocar.Usuario.pas' {formTrocarDeUsuario},
  Form.Alterar.Senha in 'Forms\Form.Alterar.Senha.pas' {Form2},
  Form.Sobre in 'Forms\Form.Sobre.pas' {formSobre},
  UClasse.Config.Imagem.Logo in 'Classes\Entity\Config\UClasse.Config.Imagem.Logo.pas',
  UClasse.Relatorio.Logs.Eventos in 'Classes\Entity\Relatorios\UClasse.Relatorio.Logs.Eventos.pas',
  Form.Relatorio.Log.Eventos in 'Forms\Relatorios\Form.Relatorio.Log.Eventos.pas' {formRelatorioLogEventos},
  Form.Splash in 'Forms\Form.Splash.pas' {formSplash},
  softMeter_globalVar in 'softMeter_globalVar.pas',
  Form.Abertura.Caixa.Manual in 'Forms\Caixa\Form.Abertura.Caixa.Manual.pas' {formAberturaDeCaixaManual};

{$R *.res}

begin
  Application.Initialize;

  formSplash := TformSplash.Create(application);
  formSplash.Show;
  formSplash.Update;

  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TDataModule1, DataModule1);
  Application.CreateForm(TformPrincipal, formPrincipal);
  FormSplash.Free;
  formSplash.Hide;

  Application.Run;
end.
