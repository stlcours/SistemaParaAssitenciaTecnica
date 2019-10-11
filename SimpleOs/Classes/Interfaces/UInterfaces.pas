unit UInterfaces;

interface

uses
  Data.DB, FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Error,
  FireDAC.UI.Intf,
  FireDAC.Phys.Intf, FireDAC.Stan.Def, FireDAC.Stan.Pool, FireDAC.Stan.Async,
  FireDAC.Phys, FireDAC.VCLUI.Wait, FireDAC.Comp.Client, Vcl.DBGrids,
  Vcl.Forms;

type
  iConexaoQuery = interface
    ['{91E5FAFC-04DB-4F7B-8C16-6ADCFFAC5FB7}']
    function Query(value: string): iConexaoQuery;
    function TQuery: TFDQuery;
    function DataSet(value: TDataSource): iConexaoQuery;
    function ExecSql(value: string): iConexaoQuery;
    function sqlPesquisa(value: string): iConexaoQuery; overload;
    function sqlPesquisaData(value: string): iConexaoQuery;
    function sqlPesquisaEstatica(value: string): iConexaoQuery;
    function getCampo(value: string): iConexaoQuery;
    function getValor(value: string): iConexaoQuery;
    function getDataInicial(value: TDate): iConexaoQuery;
    function getDataFinal(value: TDate): iConexaoQuery;
    function codigoCadastro(sp: string): integer;
  end;

  iEntity = interface
    ['{4B0F56B8-F9E9-48E8-ABFE-800B770DFF21}']
    function nomeTabela(value: string): iEntity;
    function getCampo(value: string): iEntity;
    function getValor(value: string): iEntity;
    function getDataInicial(value: TDate): iEntity;
    function getDataFinal(value: TDate): iEntity;
    function open(value: string): iEntity;
    function pesquisar: iEntity;
    function ExecSql: iEntity;
    function sqlPesquisa: iEntity;
    function sqlPesquisaData: iEntity;
    function sqlPesquisaEstatica: iEntity;

    function abrir: iEntity;
    function inserir: iEntity;
    function gravar: iEntity;
    function deletar: iEntity;
    function atualizar: iEntity;
    function editar: iEntity;
    function cancelar: iEntity;
    function fecharQuery: iEntity;
    function codigoCadastro(sp: string): integer;
    function listarGrid(value: TDataSource): iEntity;
    function ordenarGrid(column: TColumn): iEntity;

    function getCodigo(value: integer): iEntity;
    function getNome(value: string): iEntity;

  end;

  iFDTable = interface
    ['{ABFB0FD7-63BA-48B9-BE43-183AA153F762}']
    function FD_Table(value: string): TFDTable;
  end;

  iObterValorPorExtenso = interface
    ['{A3F846DB-7D1C-4C55-9AF7-F55F9416601C}']
    function ValorPorExtenso(vlr: real): string;
    function valorPorExtensoSimples(vlr: real): string;
  end;

  iObterDataHoraPorExtenso = interface
    ['{6C99601F-9A56-4EDF-B2BF-703DCFBABD22}']
    function dia(Data: string): string;
    function mes(Data: string): string;
    function ano(Data: string): string;
    function dataPorExtenso(Data: TDate): string;
    function dataTexto(Data: TDate): string;
    function horaTexto(hora: TTime): string;
  end;

  iCalcularJuros = interface
    ['{14838CF7-3A33-42CB-A847-D2CE1F0D4246}']
    function calcularJurosSimplesPorPeriodo: real;
    function calcularJurosCompostos: real;
    function CalcularJuros: real;
    function getPeriodo(value: integer): iCalcularJuros;
    function getJuros(value: real): iCalcularJuros;
    function getCapital(value: real): iCalcularJuros;
    function percentualDeDesconto(valor, percentualACalular: real): real;
  end;

  iGravarLogOperacoes = interface
    ['{47863ECB-9C09-4E8A-A0BA-386B1428D14F}']
    function getJanela(value: string): iGravarLogOperacoes;
    function getOperacao(value: string): iGravarLogOperacoes;
    function getNomeRegistro(value: string): iGravarLogOperacoes;
    function getCodigoRegistro(value: integer): iGravarLogOperacoes;
    function getCodigoFuncionario(value: integer): iGravarLogOperacoes;
    function gravarLog: iGravarLogOperacoes;
  end;

  iCriarJanelas = interface
    ['{BEA3A61C-1058-4F51-B6AB-C488A1B18E1D}']
    function formShow(form: TForm; nomeForm: string): iCriarJanelas;
  end;

  iCadastroMarcas = interface
    ['{8E103BB1-A4BC-4EA6-AB36-339FDDF2E46B}']

    function getCampo(value: string): iCadastroMarcas;
    function getValor(value: string): iCadastroMarcas;
    function getDataInicial(value: TDate): iCadastroMarcas;
    function getDataFinal(value: TDate): iCadastroMarcas;
    function open(value: string): iCadastroMarcas;
    function ExecSql: iCadastroMarcas;
    function sqlPesquisa: iCadastroMarcas;
    function sqlPesquisaData: iCadastroMarcas;
    function sqlPesquisaEstatica: iCadastroMarcas;

    function abrir: iCadastroMarcas;
    function inserir: iCadastroMarcas;
    function gravar: iCadastroMarcas;
    function deletar: iCadastroMarcas;
    function atualizar: iCadastroMarcas;
    function editar: iCadastroMarcas;
    function cancelar: iCadastroMarcas;
    function fecharQuery: iCadastroMarcas;
    function codigoCadastro(sp: string): integer;
    function listarGrid(value: TDataSource): iCadastroMarcas;
    function ordenarGrid(column: TColumn): iCadastroMarcas;

    function getCodigo(value: integer): iCadastroMarcas;
    function getMarca(value: string): iCadastroMarcas;
  end;

  iCadastroGrupos = interface
    ['{4B0F56B8-F9E9-48E8-ABFE-800B770DFF21}']
    function nomeTabela(value: string): iCadastroGrupos;
    function getCampo(value: string): iCadastroGrupos;
    function getValor(value: string): iCadastroGrupos;
    function getDataInicial(value: TDate): iCadastroGrupos;
    function getDataFinal(value: TDate): iCadastroGrupos;
    function open(value: string): iCadastroGrupos;
    function ExecSql: iCadastroGrupos;
    function sqlPesquisa: iCadastroGrupos;
    function sqlPesquisaData: iCadastroGrupos;
    function sqlPesquisaEstatica: iCadastroGrupos;

    function abrir: iCadastroGrupos;
    function inserir: iCadastroGrupos;
    function gravar: iCadastroGrupos;
    function deletar: iCadastroGrupos;
    function atualizar: iCadastroGrupos;
    function editar: iCadastroGrupos;
    function cancelar: iCadastroGrupos;
    function fecharQuery: iCadastroGrupos;
    function codigoCadastro(sp: string): integer;
    function listarGrid(value: TDataSource): iCadastroGrupos;
    function ordenarGrid(column: TColumn): iCadastroGrupos;

    function getCodigo(value: integer): iCadastroGrupos;
    function getGrupo(value: string): iCadastroGrupos;

  end;

  iFormaPagamento = interface
    ['{4B0F56B8-F9E9-48E8-ABFE-800B770DFF21}']

    function nomeTabela(value: string): iFormaPagamento;
    function getCampo(value: string): iFormaPagamento;
    function getValor(value: string): iFormaPagamento;
    function getDataInicial(value: TDate): iFormaPagamento;
    function getDataFinal(value: TDate): iFormaPagamento;
    function open(value: string): iFormaPagamento;
    function ExecSql: iFormaPagamento;
    function sqlPesquisa: iFormaPagamento;
    function sqlPesquisaData: iFormaPagamento;
    function sqlPesquisaEstatica: iFormaPagamento;

    function abrir: iFormaPagamento;
    function inserir: iFormaPagamento;
    function gravar: iFormaPagamento;
    function deletar: iFormaPagamento;
    function atualizar: iFormaPagamento;
    function editar: iFormaPagamento;
    function cancelar: iFormaPagamento;
    function fecharQuery: iFormaPagamento;
    function codigoCadastro(sp: string): integer;
    function listarGrid(value: TDataSource): iFormaPagamento;
    function ordenarGrid(column: TColumn): iFormaPagamento;

    function getCodigo(value: integer): iFormaPagamento;
    function getFormaPagamento(value: string): iFormaPagamento;

  end;

  iTipoRetirada = interface
    ['{C194F099-E3C3-45BF-9CAB-C5DAD8C982B9}']
    function nomeTabela(value: string): iTipoRetirada;
    function getCampo(value: string): iTipoRetirada;
    function getValor(value: string): iTipoRetirada;
    function getDataInicial(value: TDate): iTipoRetirada;
    function getDataFinal(value: TDate): iTipoRetirada;
    function open(value: string): iTipoRetirada;
    function ExecSql: iTipoRetirada;
    function sqlPesquisa: iTipoRetirada;
    function sqlPesquisaData: iTipoRetirada;
    function sqlPesquisaEstatica: iTipoRetirada;

    function abrir: iTipoRetirada;
    function inserir: iTipoRetirada;
    function gravar: iTipoRetirada;
    function deletar: iTipoRetirada;
    function atualizar: iTipoRetirada;
    function editar: iTipoRetirada;
    function cancelar: iTipoRetirada;
    function fecharQuery: iTipoRetirada;
    function codigoCadastro(sp: string): integer;
    function listarGrid(value: TDataSource): iTipoRetirada;
    function ordenarGrid(column: TColumn): iTipoRetirada;

    function getCodigo(value: integer): iTipoRetirada;
    function getTipoRetirada(value: string): iTipoRetirada;
  end;

  iConfigurarParcelas = interface
    ['{62B31E42-F4DB-4B6E-97B0-B93C63E179DC}']
    function nomeTabela(value: string): iConfigurarParcelas;
    function getCampo(value: string): iConfigurarParcelas;
    function getValor(value: string): iConfigurarParcelas;
    function getDataInicial(value: TDate): iConfigurarParcelas;
    function getDataFinal(value: TDate): iConfigurarParcelas;
    function open(value: string): iConfigurarParcelas;
    function ExecSql: iConfigurarParcelas;
    function sqlPesquisa: iConfigurarParcelas;
    function sqlPesquisaData: iConfigurarParcelas;
    function sqlPesquisaEstatica: iConfigurarParcelas;

    function abrir: iConfigurarParcelas;
    function inserir: iConfigurarParcelas;
    function gravar: iConfigurarParcelas;
    function deletar: iConfigurarParcelas;
    function atualizar: iConfigurarParcelas;
    function editar: iConfigurarParcelas;
    function cancelar: iConfigurarParcelas;
    function fecharQuery: iConfigurarParcelas;
    function codigoCadastro(sp: string): integer;
    function listarGrid(value: TDataSource): iConfigurarParcelas;
    function ordenarGrid(column: TColumn): iConfigurarParcelas;

    function getCodigo(value: integer): iConfigurarParcelas;
    function getConfigurarParcelaJuros(value: string): iConfigurarParcelas;
    function getConfigurarParcelaMulta(value: string): iConfigurarParcelas;

  end;

  iAtividadeFuncionarios = interface
    ['{0A82AB1E-1F99-42E0-80FE-12387A1DA3A9}']
    function nomeTabela(value: string): iAtividadeFuncionarios;
    function getCampo(value: string): iAtividadeFuncionarios;
    function getValor(value: string): iAtividadeFuncionarios;
    function getDataInicial(value: TDate): iAtividadeFuncionarios;
    function getDataFinal(value: TDate): iAtividadeFuncionarios;
    function open(value: string): iAtividadeFuncionarios;
    function ExecSql: iAtividadeFuncionarios;
    function sqlPesquisa: iAtividadeFuncionarios;
    function sqlPesquisaData: iAtividadeFuncionarios;
    function sqlPesquisaEstatica: iAtividadeFuncionarios;

    function abrir: iAtividadeFuncionarios;
    function inserir: iAtividadeFuncionarios;
    function gravar: iAtividadeFuncionarios;
    function deletar: iAtividadeFuncionarios;
    function atualizar: iAtividadeFuncionarios;
    function editar: iAtividadeFuncionarios;
    function cancelar: iAtividadeFuncionarios;
    function fecharQuery: iAtividadeFuncionarios;
    function codigoCadastro(sp: string): integer;
    function listarGrid(value: TDataSource): iAtividadeFuncionarios;
    function ordenarGrid(column: TColumn): iAtividadeFuncionarios;

    function getCodigo(value: integer): iAtividadeFuncionarios;
    function getAtividadeFuncionario(value: string): iAtividadeFuncionarios;

  end;

  iCadastroContasAPagar = interface
    ['{DA369C18-5E3E-4C03-8562-F7B8AEA25B65}']
    function nomeTabela(value: string): iCadastroContasAPagar;
    function getCampo(value: string): iCadastroContasAPagar;
    function getValor(value: string): iCadastroContasAPagar;
    function getDataInicial(value: TDate): iCadastroContasAPagar;
    function getDataFinal(value: TDate): iCadastroContasAPagar;
    function open(value: string): iCadastroContasAPagar;
    function ExecSql: iCadastroContasAPagar;
    function sqlPesquisa: iCadastroContasAPagar;
    function sqlPesquisaData: iCadastroContasAPagar;
    function sqlPesquisaEstatica: iCadastroContasAPagar;

    function abrir: iCadastroContasAPagar;
    function inserir: iCadastroContasAPagar;
    function gravar: iCadastroContasAPagar;
    function deletar: iCadastroContasAPagar;
    function atualizar: iCadastroContasAPagar;
    function editar: iCadastroContasAPagar;
    function cancelar: iCadastroContasAPagar;
    function fecharQuery: iCadastroContasAPagar;
    function codigoCadastro(sp: string): integer;
    function listarGrid(value: TDataSource): iCadastroContasAPagar;
    function ordenarGrid(column: TColumn): iCadastroContasAPagar;

    function getCodigo(value: integer): iCadastroContasAPagar;
    function getConta(value: string): iCadastroContasAPagar;
    function getDataVencimento(value: string): iCadastroContasAPagar;
    function getValorConta(value: string): iCadastroContasAPagar;
    function getJurosConta(value: real): iCadastroContasAPagar;
    function getMulta(value: Currency): iCadastroContasAPagar;
    function getDesconto(value: Currency): iCadastroContasAPagar;
    function getValorTotalConta(value: Currency): iCadastroContasAPagar;
    function getDataPagamento(value: TDate): iCadastroContasAPagar;
    function getPGTO(value: string): iCadastroContasAPagar;
    function getFuncionario(value: integer): iCadastroContasAPagar;
    function getObservacao(value: string): iCadastroContasAPagar;

  end;

  iFactory = interface
    ['{05E76D27-7C57-4506-880D-F3720CC622E8}']
    function obertValorPorExtenso: iObterValorPorExtenso;
    function oberterDataHoraPorExtenso: iObterDataHoraPorExtenso;
    function CalcularJuros: iCalcularJuros;
    function criarJanela: iCriarJanelas;
  end;

  iFactoryEntity = interface
    ['{3DFCA13B-EC0F-4597-B527-D42F90034001}']
    function entityTable: iEntity;
  end;

  iFactoryQuery = interface
    ['{6A9FF249-F3A8-4660-BCFB-F227FCD3B86D}']
    function queryTable: iConexaoQuery;
  end;

implementation

end.
