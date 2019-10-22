unit UClasse.Entity.Produtos;

interface

uses UClasse.Query, UInterfaces, UDados.Conexao, Data.DB, Vcl.Dialogs,
  System.SysUtils, Vcl.Forms, Winapi.Windows, Vcl.Controls,
  UClasse.Gravar.Log.Sistema, Vcl.ComCtrls, Vcl.DBGrids, Vcl.Imaging.jpeg;

type

  TEntityProdutos = class(TInterfacedObject, iCadastroProdutos)
  private

    FQuery: iConexaoQuery;
    FGravarLog: iGravarLogOperacoes;
    FTabela: string;
    FCampo: string;
    FValor: string;
    FDataInicial: TDate;
    FDataFinal: TDate;

    FCodigo: integer;
    FSERVICO_PRODUTO: string;
    FCodigoBarras: string;
    FDescricao: string;
    FTIPO_CADASTROS: string;
    FVALOR_CUSTO: Currency;
    FMARGEM_LUCRO: real;
    FVALOR_VENDA: Currency;
    FQUANTIDADE_MINIMA: string;
    FQUANTIDADE_ATUAL: string;
    FDATA_VALIDADE: string;
    FDATA_ALTERACAO: string;
    FID_GRUPO: string;
    FGRUPO: string;
    FMODELO: String;
    FNUMERO_SERIE: string;
    FDATA_FABRICACAO: string;
    FID_MARCA: string;
    FMARCA: string;
    F_FUNCIONARIO: integer;
    F_FOTO: TJPEGImage;
    FOBSERVACAO: string;
    FNome: string;
    function getNome(value: string): iCadastroProdutos;

  public

    function nomeTabela(value: string): iCadastroProdutos;
    function getCampo(value: string): iCadastroProdutos;
    function getValor(value: string): iCadastroProdutos;
    function getDataInicial(value: TDate): iCadastroProdutos;
    function getDataFinal(value: TDate): iCadastroProdutos;
    function open(value: string): iCadastroProdutos;
    function pesquisar: iCadastroProdutos;
    function ExecSql: iCadastroProdutos;
    function sqlPesquisa: iCadastroProdutos;
    function sqlPesquisaData: iCadastroProdutos;
    function sqlPesquisaEstatica: iCadastroProdutos;

    function abrir: iCadastroProdutos;
    function inserir: iCadastroProdutos;
    function Gravar: iCadastroProdutos;
    function deletar: iCadastroProdutos;
    function atualizar: iCadastroProdutos;
    function editar: iCadastroProdutos;
    function cancelar: iCadastroProdutos;
    function fecharQuery: iCadastroProdutos;
    function codigoCadastro(sp: string): integer;
    function listarGrid(value: TDataSource): iCadastroProdutos;
    function ordenarGrid(column: TColumn): iCadastroProdutos;

    function getCodigo(value: integer): iCadastroProdutos;
    function getServicoProdutos(value: string): iCadastroProdutos;
    function getTipoCadastro(value: string): iCadastroProdutos;
    function getCodigoBarras(value: string): iCadastroProdutos;
    function getDescricao(value: string): iCadastroProdutos;
    function getValorDeCusto(value: string): iCadastroProdutos;
    function getMargemDeLUcro(value: String): iCadastroProdutos;
    function getValorDeVenda(value: string): iCadastroProdutos;
    function getQuantidadeMinima(value: string): iCadastroProdutos;
    function getQuantidadeAtual(value: string): iCadastroProdutos;
    function getDataDeValidade(value: string): iCadastroProdutos;
    function getDataAlteracao(value: string): iCadastroProdutos;
    function getCodigoGrupo(value: string): iCadastroProdutos;
    function getGrupo(value: string): iCadastroProdutos;
    function getModelo(value: string): iCadastroProdutos;
    function getNumeroDeSerie(value: string): iCadastroProdutos;
    function getDataFabricacao(value: string): iCadastroProdutos;
    function getCodigoMarca(value: string): iCadastroProdutos;
    function getMarca(value: string): iCadastroProdutos;
    function getCodigoFuncionario(value: integer): iCadastroProdutos;
    function getFoto(value: TJPEGImage): iCadastroProdutos;
    function getObservacao(value: string): iCadastroProdutos;

    constructor create;
    destructor destroy; override;
    class function new: iCadastroProdutos;
  end;

implementation

{ TEntityProdutos }

function TEntityProdutos.abrir: iCadastroProdutos;
begin

  result := self;
  FQuery.Query(FTabela);

end;

function TEntityProdutos.atualizar: iCadastroProdutos;
begin
  result := self;
  FQuery.TQuery.Refresh;
end;

function TEntityProdutos.cancelar: iCadastroProdutos;
begin
  FQuery.TQuery.Cancel;
  // FQuery.TQuery.close;
end;

function TEntityProdutos.codigoCadastro(sp: string): integer;
begin
  result := FQuery.codigoCadastro('');
end;

constructor TEntityProdutos.create;
begin
  FTabela := 'PRODUTOS';
  FQuery := TConexaoQuery.new.Query(FTabela);

  FGravarLog := TGravarLogSistema.new;
  FGravarLog.getJanela('Cadastro de produtos').getCodigoFuncionario
    (funcionarioLogado);
  // (0 { definir o usu�rio quando construir a aplica��o } );

end;

function TEntityProdutos.deletar: iCadastroProdutos;
begin
  result := self;

  if FQuery.TQuery.RecordCount >= 1 then
  begin
    if application.MessageBox('Deseja realmente excluir este registro?',
      'Pergunta do sistema!', MB_YESNO + MB_ICONQUESTION) = mryes then
    begin

      FGravarLog.getNomeRegistro(FQuery.TQuery.FieldByName('SERVICO_PRODUTO')
        .AsString).getCodigoRegistro(FQuery.TQuery.FieldByName('id').AsInteger)
        .gravarLog;

      FQuery.TQuery.Delete;
    end;
  end;

end;

destructor TEntityProdutos.destroy;
begin
  inherited;

end;

function TEntityProdutos.editar: iCadastroProdutos;
begin
  result := self;
  if FQuery.TQuery.RecordCount >= 1 then
  begin

    FGravarLog.getNomeRegistro(FQuery.TQuery.FieldByName('SERVICO_PRODUTO')
      .AsString).getCodigoRegistro(FQuery.TQuery.FieldByName('id').AsInteger)
      .gravarLog;

    FQuery.TQuery.Edit;

  end;
end;

function TEntityProdutos.ExecSql: iCadastroProdutos;
begin
  result := self;
  FQuery.ExecSql(FTabela);
end;

function TEntityProdutos.fecharQuery: iCadastroProdutos;
begin
  FQuery.TQuery.close;
end;

function TEntityProdutos.getCampo(value: string): iCadastroProdutos;
begin
  result := self;
  FCampo := value;
end;

function TEntityProdutos.getCodigo(value: integer): iCadastroProdutos;
begin
  result := self;
  FCodigo := value;
end;

function TEntityProdutos.getCodigoBarras(value: string): iCadastroProdutos;
begin
  result := self;
  FCodigoBarras := value;
end;

function TEntityProdutos.getCodigoFuncionario(value: integer)
  : iCadastroProdutos;
begin
  result := self;
  F_FUNCIONARIO := value;
end;

function TEntityProdutos.getCodigoGrupo(value: string): iCadastroProdutos;
begin
  result := self;
  FID_GRUPO := value;
end;

function TEntityProdutos.getCodigoMarca(value: string): iCadastroProdutos;
begin
  result := self;
  FID_MARCA := value;
end;

function TEntityProdutos.getDataAlteracao(value: string): iCadastroProdutos;
begin
  result := self;
  if value = '  /  /    ' then
    FDATA_ALTERACAO := ''
  else
    FDATA_ALTERACAO := value;
end;

function TEntityProdutos.getDataDeValidade(value: string): iCadastroProdutos;
begin
  result := self;
  if value = '  /  /    ' then
    FDATA_VALIDADE := ''
  else
    FDATA_VALIDADE := value;
end;

function TEntityProdutos.getDataFabricacao(value: string): iCadastroProdutos;
begin
  result := self;
  if value = '  /  /    ' then
    FDATA_FABRICACAO := ''
  else
    FDATA_FABRICACAO := value;
end;

function TEntityProdutos.getDataFinal(value: TDate): iCadastroProdutos;
begin
  result := self;
  FDataFinal := value;
  // FQuery.getDataFinal(value);
end;

function TEntityProdutos.getDataInicial(value: TDate): iCadastroProdutos;
begin
  result := self;
  FDataInicial := value;
  // FQuery.getDataInicial(value);
end;

function TEntityProdutos.getDescricao(value: string): iCadastroProdutos;
begin
  result := self;
  FDescricao := value;
end;

function TEntityProdutos.getFoto(value: TJPEGImage): iCadastroProdutos;
begin
  result := self;

  F_FOTO := value;

end;

function TEntityProdutos.getGrupo(value: string): iCadastroProdutos;
begin
  result := self;
  FGRUPO := value;
end;

function TEntityProdutos.getMarca(value: string): iCadastroProdutos;
begin
  result := self;
  FMARCA := value;
end;

function TEntityProdutos.getMargemDeLUcro(value: String): iCadastroProdutos;
begin

  result := self;
  if value = EmptyStr then
    raise Exception.create
      ('Informe a margem de lucro para a venda do produto.');

  try
    FMARGEM_LUCRO := StrToCurr(value);
  except
    on e: Exception do
    begin
      raise Exception.create('Informe um valor v�lido para a margem de lucro.');
    end;

  end;

end;

function TEntityProdutos.getModelo(value: string): iCadastroProdutos;
begin

  result := self;
  FMODELO := value;

end;

function TEntityProdutos.getNome(value: string): iCadastroProdutos;
begin
  result := self;
  FNome := value;
end;

function TEntityProdutos.getNumeroDeSerie(value: string): iCadastroProdutos;
begin
  result := self;
  FNUMERO_SERIE := value;
end;

function TEntityProdutos.getObservacao(value: string): iCadastroProdutos;
begin
  result := self;
  FOBSERVACAO := value;
end;

function TEntityProdutos.getQuantidadeAtual(value: string): iCadastroProdutos;
begin
  result := self;
  if value = EmptyStr then
    raise Exception.create('Informe a quantidade de produtos atual.');
  FQUANTIDADE_ATUAL := value;
end;

function TEntityProdutos.getQuantidadeMinima(value: string): iCadastroProdutos;
begin

  result := self;
  if value = EmptyStr then
    raise Exception.create('Informe a quantidade m�nima do produto.');

  FQUANTIDADE_MINIMA := value;

end;

function TEntityProdutos.getServicoProdutos(value: string): iCadastroProdutos;
begin
  result := self;
  if value = EmptyStr then
    raise Exception.create('Informe o nome do produtos ou servi�o.');
  FSERVICO_PRODUTO := value;
end;

function TEntityProdutos.getTipoCadastro(value: string): iCadastroProdutos;
begin
  result := self;
  if value = EmptyStr then
    raise Exception.create
      ('Informe o tipo de cadastro que esta sendo relizado');
  FTIPO_CADASTROS := value;
end;

function TEntityProdutos.getValor(value: string): iCadastroProdutos;
begin
  result := self;
  FValor := UpperCase(value);
end;

function TEntityProdutos.getValorDeCusto(value: string): iCadastroProdutos;
begin
  result := self;
  try
    FVALOR_CUSTO := StrToCurr(value);
  except
    on e: Exception do
      raise Exception.create('Informe o valor de custo do produto.');
  end;

end;

function TEntityProdutos.getValorDeVenda(value: string): iCadastroProdutos;
begin
  result := self;
  try
    FVALOR_VENDA := StrToCurr(value);
  except
    on e: Exception do
      raise Exception.create('Informe o valor de venda do produto.');
  end;
end;

function TEntityProdutos.Gravar: iCadastroProdutos;
begin

  result := self;

  if FQuery.TQuery.State in [dsInsert] then
    FQuery.TQuery.FieldByName('id').AsInteger :=
      FQuery.codigoCadastro('SP_GEN_PRODUTOS_ID');

  FQuery.TQuery.FieldByName('SERVICO_PRODUTO').AsString := FSERVICO_PRODUTO;
  FQuery.TQuery.FieldByName('TIPO_CADASTROS').AsString := FTIPO_CADASTROS;
  FQuery.TQuery.FieldByName('CODIGO_BARRAS').AsString := FCodigoBarras;
  FQuery.TQuery.FieldByName('DESCRICAO').AsString := FDescricao;
  FQuery.TQuery.FieldByName('VALOR_CUSTO').AsCurrency := FVALOR_CUSTO;
  FQuery.TQuery.FieldByName('MARGEM_LUCRO').AsFloat := FMARGEM_LUCRO;
  FQuery.TQuery.FieldByName('VALOR_VENDA').AsCurrency := FVALOR_VENDA;
  FQuery.TQuery.FieldByName('QUANTIDADE_MINIMA').AsInteger :=
    StrToInt(FQUANTIDADE_MINIMA);
  FQuery.TQuery.FieldByName('QUANTIDADE_ATUAL').AsInteger :=
    StrToInt(FQUANTIDADE_ATUAL);
  FQuery.TQuery.FieldByName('MODELO').AsString := FMODELO;
  FQuery.TQuery.FieldByName('NUMERO_SERIE').AsString := FNUMERO_SERIE;
  FQuery.TQuery.FieldByName('GRUPO').AsString := FGRUPO;
  FQuery.TQuery.FieldByName('MARCA').AsString := FMARCA;
  FQuery.TQuery.FieldByName('FUNCIONARIO').AsInteger := funcionarioLogado;
  FQuery.TQuery.FieldByName('OBSERVACAO').AsString := FOBSERVACAO;

  if FID_GRUPO <> EmptyStr then
    FQuery.TQuery.FieldByName('ID_GRUPO').AsInteger := StrToInt(FID_GRUPO);

  if FID_MARCA <> EmptyStr then
    FQuery.TQuery.FieldByName('ID_MARCA').AsInteger := StrToInt(FID_MARCA);

  if FDATA_VALIDADE <> EmptyStr then
    FQuery.TQuery.FieldByName('DATA_VALIDADE').AsDateTime :=
      strtodate(FDATA_VALIDADE);

  if FDATA_ALTERACAO <> EmptyStr then
    FQuery.TQuery.FieldByName('DATA_ALTERACAO').AsDateTime :=
      strtodate(FDATA_ALTERACAO);

  if FDATA_FABRICACAO <> EmptyStr then
    FQuery.TQuery.FieldByName('DATA_FABRICACAO').AsDateTime :=
      strtodate(FDATA_FABRICACAO);

  if Assigned(F_FOTO) then
  begin
    FQuery.TQuery.FieldByName('FOTO').Assign(F_FOTO);
  end;

//  F_FOTO.Free;

  FGravarLog.getNomeRegistro(FQuery.TQuery.FieldByName('SERVICO_PRODUTO')
    .AsString).getCodigoRegistro(FQuery.TQuery.FieldByName('id').AsInteger)
    .gravarLog;

  try
    FQuery.TQuery.Post;
  except
    on e: Exception do
    begin
      raise Exception.create('Erro ao tentar gravar os dados. ' + e.Message);
    end;

  end;

end;

function TEntityProdutos.inserir: iCadastroProdutos;
begin
  result := self;
  FQuery.TQuery.EmptyDataSet;
  FQuery.TQuery.Append;
end;

function TEntityProdutos.listarGrid(value: TDataSource): iCadastroProdutos;
begin

  result := self;

  FQuery.TQuery.FieldByName('id').DisplayLabel := 'C�digo';
  FQuery.TQuery.FieldByName('SERVICO_PRODUTO').DisplayLabel :=
    'Produtos ou servi�o';
  FQuery.TQuery.FieldByName('TIPO_CADASTROS').DisplayLabel :=
    'Tipo de cadastro';
  FQuery.TQuery.FieldByName('CODIGO_BARRAS').DisplayLabel := 'C�digo de barras';
  FQuery.TQuery.FieldByName('DESCRICAO').DisplayLabel := 'Descri��o';
  FQuery.TQuery.FieldByName('VALOR_CUSTO').DisplayLabel := 'Valor de custo';
  FQuery.TQuery.FieldByName('MARGEM_LUCRO').DisplayLabel := 'Margem de lucro';
  FQuery.TQuery.FieldByName('VALOR_VENDA').DisplayLabel := 'Valor de venda';
  FQuery.TQuery.FieldByName('QUANTIDADE_MINIMA').DisplayLabel :=
    'Quantidade m�nima';
  FQuery.TQuery.FieldByName('QUANTIDADE_ATUAL').DisplayLabel :=
    'Quantidade atual';
  FQuery.TQuery.FieldByName('DATA_VALIDADE').DisplayLabel := 'Data de validade';
  FQuery.TQuery.FieldByName('DATA_ALTERACAO').DisplayLabel :=
    'Data de altera��o';
  FQuery.TQuery.FieldByName('ID_GRUPO').DisplayLabel := 'C�d. Grupo';
  FQuery.TQuery.FieldByName('GRUPO').DisplayLabel := 'Grupo';
  FQuery.TQuery.FieldByName('MODELO').DisplayLabel := 'Modelo';
  FQuery.TQuery.FieldByName('NUMERO_SERIE').DisplayLabel := 'N�mero de serie';
  FQuery.TQuery.FieldByName('DATA_FABRICACAO').DisplayLabel :=
    'Data de fabrica��o';
  FQuery.TQuery.FieldByName('ID_MARCA').DisplayLabel := 'C�d. Marca';
  FQuery.TQuery.FieldByName('MARCA').DisplayLabel := 'Marca';
  FQuery.TQuery.FieldByName('FUNCIONARIO').DisplayLabel := 'Funcion�rio';
  FQuery.TQuery.FieldByName('OBSERVACAO').DisplayLabel := 'Observa��o';
  FQuery.TQuery.FieldByName('FOTO').Visible := False;

  FQuery.TQuery.FieldByName('CODIGO_BARRAS').DisplayWidth := 30;
  FQuery.TQuery.FieldByName('GRUPO').DisplayWidth := 30;
  FQuery.TQuery.FieldByName('MARCA').DisplayWidth := 30;
  FQuery.TQuery.FieldByName('DESCRICAO').DisplayWidth := 30;
  FQuery.TQuery.FieldByName('SERVICO_PRODUTO').DisplayWidth := 40;
  FQuery.TQuery.FieldByName('MODELO').DisplayWidth := 40;
  FQuery.TQuery.FieldByName('OBSERVACAO').DisplayWidth := 40;

  // FOTO               BLOB SUB_TYPE

  // FQuery.TQuery.SQL.Add('order by id desc');

  value.DataSet := FQuery.TQuery;

end;

class function TEntityProdutos.new: iCadastroProdutos;
begin
  result := self.create;
end;

function TEntityProdutos.nomeTabela(value: string): iCadastroProdutos;
begin
  result := self;
  FTabela := value;
end;

function TEntityProdutos.open(value: string): iCadastroProdutos;
begin
  FQuery.Query(FTabela);
end;

function TEntityProdutos.ordenarGrid(column: TColumn): iCadastroProdutos;
begin

  if FQuery.TQuery.IndexFieldNames = column.FieldName then
    FQuery.TQuery.IndexFieldNames := column.FieldName + ':D'
  else
    FQuery.TQuery.IndexFieldNames := column.FieldName;

end;

function TEntityProdutos.pesquisar: iCadastroProdutos;
begin
  result := self;
end;

function TEntityProdutos.sqlPesquisa: iCadastroProdutos;
begin
  result := self;
  FQuery.getCampo(FCampo).getValor(FValor).sqlPesquisa(FTabela);
end;

function TEntityProdutos.sqlPesquisaData: iCadastroProdutos;
begin
  result := self;
  FQuery.getCampo(FCampo).getValor(FValor).getDataInicial(FDataInicial)
    .getDataFinal(FDataFinal).sqlPesquisaData(FTabela);
end;

function TEntityProdutos.sqlPesquisaEstatica: iCadastroProdutos;
begin
  result := self;
  FQuery.getCampo(FCampo).getValor(FValor).getDataInicial(FDataInicial)
    .getDataFinal(FDataFinal).sqlPesquisaEstatica(FTabela);
end;

end.
