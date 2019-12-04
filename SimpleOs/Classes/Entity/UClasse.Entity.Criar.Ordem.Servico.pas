unit UClasse.Entity.Criar.Ordem.Servico;

interface

uses UClasse.Query, UInterfaces, UDados.Conexao, Data.DB, Vcl.Dialogs,
  System.SysUtils, Vcl.Forms, Winapi.Windows, Vcl.Controls,
  UClasse.Gravar.Log.Sistema, Vcl.ComCtrls, Vcl.DBGrids, Vcl.Mask,
  Vcl.StdCtrls;

type

  TEntityCriarOrdemServico = class(TInterfacedObject, iCriarOrdemServico)
  private

    FQuery: iConexaoQuery;
    FGravarLog: iGravarLogOperacoes;
    FTabela: string;
    FCampo: string;
    FValor: string;
    FDataInicial: TDate;
    FDataFinal: TDate;

    FID: integer;
    FID_CLIENTE: integer;
    FEQUIPAMENTO: string;
    FDEFEITO_RELATADO: string;
    FMARCA: string;
    FMODELO: string;
    FNUMERO_SERIE: string;
    FDATA_FABRICACAO: string;
    FLAUDO_DO_TECNICO: string;
    FSOLUCAO_DO_PROBLEMA: string;
    FVALOR_DA_ORDEM: Currency;
    FDESCONTO: Currency;
    FACRESCIMO: Currency;
    FTOTAL_ORCAMENTO: Currency;
    FID_FUNCIONARIO: integer;
    FNOME_FUNCIONARIO: string;
    FRETORNO: string;
    FDATA_RETORNO: string;
    FSITUACAO_DA_ORDEM: string;
    FFORMA_PAGAMENTO: string;
    FPARCELADO: string;
    FTOTAL_PARCELAS: integer;
    FPGTO: string;
    FPRIORIDADE: string;
    FDATA_ENTRADA: string;
    FDATA_FINALIZACAO: string;
    FHORA_FINALIZACAO: string;
    FDATA_PAGAMENTO: string;
    FOBSERVACAO: string;
    FSTATUS: string;
    FID_TECNICO_RESPONSAVEL: integer;
    FTECNICO_RESPONSAVEL: string;

    FCodigo: integer;
    FNome: string;

    function getCodigo(value: integer): iCriarOrdemServico;
    function getNome(value: string): iCriarOrdemServico;
    procedure validarData(componet: tmaskEdit);

  public

    function nomeTabela(value: string): iCriarOrdemServico;
    function getCampo(value: string): iCriarOrdemServico;
    function getValor(value: string): iCriarOrdemServico;
    function getDataInicial(value: TDate): iCriarOrdemServico;
    function getDataFinal(value: TDate): iCriarOrdemServico;
    function open(value: string): iCriarOrdemServico;
    function pesquisar: iCriarOrdemServico;
    function ExecSql: iCriarOrdemServico;
    function sqlPesquisa: iCriarOrdemServico;
    function sqlPesquisaData: iCriarOrdemServico;
    function sqlPesquisaEstatica: iCriarOrdemServico;

    function abrir: iCriarOrdemServico;
    function inserir: iCriarOrdemServico;
    function Gravar: iCriarOrdemServico;
    function deletar: iCriarOrdemServico;
    function atualizar: iCriarOrdemServico;
    function editar: iCriarOrdemServico;
    function cancelar: iCriarOrdemServico;
    function fecharQuery: iCriarOrdemServico;
    function codigoCadastro(sp: string): integer;
    function listarGrid(value: TDataSource): iCriarOrdemServico;
    function ordenarGrid(column: TColumn): iCriarOrdemServico;
    function estornarOrdem(value: integer): iCriarOrdemServico;

    function getID(value: integer): iCriarOrdemServico;
    function getID_CLIENTE(value: string): iCriarOrdemServico;
    function getEQUIPAMENTO(value: string): iCriarOrdemServico;
    function getDEFEITO_RELATADO(value: string): iCriarOrdemServico;
    function getMARCA(value: string): iCriarOrdemServico;
    function getMODELO(value: string): iCriarOrdemServico;
    function getNUMERO_SERIE(value: string): iCriarOrdemServico;
    function getDATA_FABRICACAO(value: string): iCriarOrdemServico;
    function getLAUDO_DO_TECNICO(value: string): iCriarOrdemServico;
    function getSOLUCAO_DO_PROBLEMA(value: string): iCriarOrdemServico;
    function getVALOR_DA_ORDEM(value: string): iCriarOrdemServico;
    function getDESCONTO(value: string): iCriarOrdemServico;
    function getACRESCIMO(value: string): iCriarOrdemServico;
    function getTotalDoOrcamento(value: string): iCriarOrdemServico;
    function getID_FUNCIONARIO(value: integer): iCriarOrdemServico;
    function getNOME_FUNCIONARIO(value: string): iCriarOrdemServico;
    function getRETORNO(value: string): iCriarOrdemServico;
    function getDATA_RETORNO(value: string): iCriarOrdemServico;
    function getSITUACAO_DA_ORDEM(value: string): iCriarOrdemServico;
    function getFORMA_PAGAMENTO(value: string): iCriarOrdemServico;
    function getPARCELADO(value: string): iCriarOrdemServico;
    function getTOTAL_PARCELAS(value: string): iCriarOrdemServico;
    function getPGTO(value: string): iCriarOrdemServico;
    function getPRIORIDADE(value: string): iCriarOrdemServico;
    function getDataCadastro(value: string): iCriarOrdemServico;
    function getDataFinalizacao(value: string): iCriarOrdemServico;
    function getHoraFinalizacao(value: string): iCriarOrdemServico;
    function getDataPagamento(value: string): iCriarOrdemServico;
    function getOBSERVACAO(value: string): iCriarOrdemServico;
    function getSTATUS(value: string): iCriarOrdemServico;
    function getIdTecnico(value: string): iCriarOrdemServico;
    function getTecnico(value: string): iCriarOrdemServico;

    function calcularDesconto(valor, desconto: TEdit): string;
    function calcularAcrescimo(valor, desconto, acrescimo: TEdit): string;

    function exportar: iCriarOrdemServico;

    constructor create;
    destructor destroy; override;
    class function new: iCriarOrdemServico;
  end;

implementation

{ TEntityCriarOrdemServico }

function TEntityCriarOrdemServico.abrir: iCriarOrdemServico;
begin

  result := self;
  FQuery.Query(FTabela);

end;

function TEntityCriarOrdemServico.atualizar: iCriarOrdemServico;
begin
  result := self;
  FQuery.TQuery.Refresh;
end;

function TEntityCriarOrdemServico.calcularAcrescimo(valor, desconto,
  acrescimo: TEdit): string;
var
  FValorOrdem: Currency;
  FDescontoOrdem: Currency;
  FAcrescimoOrdem: Currency;
begin

  try
    FValorOrdem := StrToCurr(valor.Text);
  except
    on e: exception do
      raise exception.create('Informe um valor v�lido para a ordem.');
  end;

  try
    FDescontoOrdem := StrToCurr(desconto.Text);
  except
    on e: exception do
      raise exception.create
        ('Informe um valor igual ou maior que zero para o campo Desconto.')
  end;

  try
    FAcrescimoOrdem := StrToCurr(acrescimo.Text);
  except
    on e: exception do
      raise exception.create
        ('Informe um valor igual ou maior que zero para o campo Acr�scimo');

  end;

  if ((valor.Text <> '0') and (acrescimo.Text <> '0')) then
  begin
    result := CurrToStr(FAcrescimoOrdem + (FValorOrdem - FDescontoOrdem));
  end
  else
    result := valor.Text;

end;

function TEntityCriarOrdemServico.calcularDesconto(valor,
  desconto: TEdit): string;
var
  FValorOrdem: Currency;
  FDescontoOrdem: Currency;
begin

  try
    FValorOrdem := StrToCurr(valor.Text);
  except
    on e: exception do
    begin
      valor.Text := '0';
      valor.SetFocus;
      raise exception.create('Informe um valor para o campo Valor da Ordem.');
    end;
  end;

  try
    FDescontoOrdem := StrToCurr(desconto.Text);
  except
    on e: exception do
    begin
      desconto.Text := '0';
      raise exception.create
        ('Informe um valor igual ou maior que zero para o campo Acr�scimo.')
    end;
  end;

  if ((valor.Text <> '0') and (desconto.Text <> '0')) then
  begin
    result := CurrToStr(FValorOrdem - FDescontoOrdem);
  end
  else
    result := valor.Text;

end;

function TEntityCriarOrdemServico.cancelar: iCriarOrdemServico;
begin
  FQuery.TQuery.Cancel;
  // FQuery.TQuery.close;
end;

function TEntityCriarOrdemServico.codigoCadastro(sp: string): integer;
begin
  result := FQuery.codigoCadastro('');
end;

constructor TEntityCriarOrdemServico.create;
begin
  FTabela := 'ORDEM_SERVICO';
  FQuery := TConexaoQuery.new.Query(FTabela);

  FGravarLog := TGravarLogSistema.new;
  FGravarLog.getJanela('Ordem de servi�o').getCodigoFuncionario
    (funcionarioLogado);
  // (0 { definir o usu�rio quando construir a aplica��o } );

end;

function TEntityCriarOrdemServico.getDataFinalizacao(value: string)
  : iCriarOrdemServico;
begin
  result := self;

  if value = '  /  /    ' then
    FDATA_FINALIZACAO := ''
  else
    FDATA_FINALIZACAO := value;
end;

function TEntityCriarOrdemServico.getDataPagamento(value: string)
  : iCriarOrdemServico;
begin
  result := self;

  if value = '  /  /    ' then
    FDATA_PAGAMENTO := ''
  else
    FDATA_PAGAMENTO := value;
end;

function TEntityCriarOrdemServico.deletar: iCriarOrdemServico;
begin
  result := self;

  if FQuery.TQuery.RecordCount >= 1 then
  begin
    if application.MessageBox('Deseja realmente excluir este registro?',
      'Pergunta do sistema!', MB_YESNO + MB_ICONQUESTION) = mryes then
    begin

      FGravarLog.getNomeRegistro(FQuery.TQuery.FieldByName('EQUIPAMENTO')
        .AsString).getCodigoRegistro(FQuery.TQuery.FieldByName('id').AsInteger)
        .gravarLog;

      FQuery.TQuery.Delete;
    end;
  end;

end;

destructor TEntityCriarOrdemServico.destroy;
begin

  inherited;
end;

function TEntityCriarOrdemServico.editar: iCriarOrdemServico;
begin
  result := self;
  if FQuery.TQuery.RecordCount >= 1 then
  begin

    FGravarLog.getNomeRegistro(FQuery.TQuery.FieldByName('EQUIPAMENTO')
      .AsString).getCodigoRegistro(FQuery.TQuery.FieldByName('id').AsInteger)
      .gravarLog;

    FQuery.TQuery.Edit;

  end;
end;

function TEntityCriarOrdemServico.estornarOrdem(value: integer)
  : iCriarOrdemServico;
begin
  result := self;

  FQuery.getCampo('ID').getValor(value.ToString).sqlPesquisa(FTabela);

  if FQuery.TQuery.RecordCount >= 1 then
  begin

    if FQuery.TQuery.FieldByName('PGTO').AsString <> 'Estornada' then
    begin
      if application.MessageBox
        ('Deseja realmente estornar esta ordem de servi�o?',
        'Pergunta do sistema', MB_YESNO + MB_ICONQUESTION) = mryes then
      begin
        FQuery.TQuery.Edit;
        FQuery.TQuery.FieldByName('PGTO').AsString := 'Estornada';
        FQuery.TQuery.Post;
      end;
    end
    else
      raise exception.create('Esta ordem j� foi estornada.');
  end;
end;

function TEntityCriarOrdemServico.ExecSql: iCriarOrdemServico;
begin
  result := self;
  FQuery.ExecSql(FTabela);
end;

function TEntityCriarOrdemServico.exportar: iCriarOrdemServico;
begin
  result := self;
end;

function TEntityCriarOrdemServico.fecharQuery: iCriarOrdemServico;
begin
  FQuery.TQuery.close;
end;

function TEntityCriarOrdemServico.getACRESCIMO(value: string)
  : iCriarOrdemServico;
begin
  result := self;
  try
    FACRESCIMO := StrToCurr(value);
  except
    on e: exception do
      raise exception.create('Informe um valor v�lido para o acr�scimo.');
  end;
end;

function TEntityCriarOrdemServico.getCampo(value: string): iCriarOrdemServico;
begin
  result := self;
  FCampo := value;
end;

function TEntityCriarOrdemServico.getCodigo(value: integer): iCriarOrdemServico;
begin
  result := self;
  FCodigo := value;
end;

function TEntityCriarOrdemServico.getDataCadastro(value: string)
  : iCriarOrdemServico;
begin
  result := self;

  if value = '  /  /    ' then
    FDATA_ENTRADA := ''
  else
    FDATA_ENTRADA := value;
end;

function TEntityCriarOrdemServico.getDataFinal(value: TDate)
  : iCriarOrdemServico;
begin
  result := self;
  FDataFinal := value;
  // FQuery.getDataFinal(value);
end;

function TEntityCriarOrdemServico.getDataInicial(value: TDate)
  : iCriarOrdemServico;
begin
  result := self;
  FDataInicial := value;
  // FQuery.getDataInicial(value);
end;

function TEntityCriarOrdemServico.getDATA_FABRICACAO(value: string)
  : iCriarOrdemServico;
begin
  result := self;

  if value = '  /  /    ' then
    FDATA_FABRICACAO := ''
  else
    FDATA_FABRICACAO := value;
end;

function TEntityCriarOrdemServico.getDATA_RETORNO(value: string)
  : iCriarOrdemServico;
begin
  result := self;

  if value = '  /  /    ' then
    FDATA_RETORNO := ''
  else
    FDATA_RETORNO := value;
end;

function TEntityCriarOrdemServico.getDEFEITO_RELATADO(value: string)
  : iCriarOrdemServico;
begin
  result := self;
  if value = EmptyStr then
    raise exception.create('Informe o defeito do equipamento.');
  FDEFEITO_RELATADO := value;
end;

function TEntityCriarOrdemServico.getDESCONTO(value: string)
  : iCriarOrdemServico;
begin
  result := self;
  try
    FDESCONTO := StrToCurr(value);
  except
    on e: exception do
      raise exception.create('Informe um valor v�lido para o Desconto');
  end;
end;

function TEntityCriarOrdemServico.getEQUIPAMENTO(value: string)
  : iCriarOrdemServico;
begin
  result := self;
  if value = EmptyStr then
    raise exception.create('Informe qual equipamento esta sendo cadastrado.');
  FEQUIPAMENTO := value;
end;

function TEntityCriarOrdemServico.getFORMA_PAGAMENTO(value: string)
  : iCriarOrdemServico;
begin
  result := self;
  FFORMA_PAGAMENTO := value;
end;

function TEntityCriarOrdemServico.getHoraFinalizacao(value: string)
  : iCriarOrdemServico;
begin
  result := self;
  FHORA_FINALIZACAO := value;
end;

function TEntityCriarOrdemServico.getID(value: integer): iCriarOrdemServico;
begin
  result := self;
end;

function TEntityCriarOrdemServico.getIdTecnico(value: string)
  : iCriarOrdemServico;
begin
  result := self;
  if value <> EmptyStr then
    FID_TECNICO_RESPONSAVEL := value.ToInteger;
end;

function TEntityCriarOrdemServico.getID_CLIENTE(value: string)
  : iCriarOrdemServico;
begin
  result := self;
  if value = '0' then
    raise exception.create('Informe o c�digo do cliente.');
  FID_CLIENTE := value.ToInteger;

end;

function TEntityCriarOrdemServico.getID_FUNCIONARIO(value: integer)
  : iCriarOrdemServico;
begin
  result := self;
  FID_FUNCIONARIO := value;
end;

function TEntityCriarOrdemServico.getLAUDO_DO_TECNICO(value: string)
  : iCriarOrdemServico;
begin
  result := self;
  FLAUDO_DO_TECNICO := value;
end;

function TEntityCriarOrdemServico.getMARCA(value: string): iCriarOrdemServico;
begin
  result := self;
  FMARCA := value;
end;

function TEntityCriarOrdemServico.getMODELO(value: string): iCriarOrdemServico;
begin
  result := self;
  FMODELO := value;
end;

function TEntityCriarOrdemServico.getNome(value: string): iCriarOrdemServico;
begin
  result := self;
  FNome := value;
end;

function TEntityCriarOrdemServico.getNOME_FUNCIONARIO(value: string)
  : iCriarOrdemServico;
begin
  result := self;
  FNOME_FUNCIONARIO := value;
end;

function TEntityCriarOrdemServico.getNUMERO_SERIE(value: string)
  : iCriarOrdemServico;
begin
  result := self;
  FNUMERO_SERIE := value;
end;

function TEntityCriarOrdemServico.getOBSERVACAO(value: string)
  : iCriarOrdemServico;
begin
  result := self;
  FOBSERVACAO := value;
end;

function TEntityCriarOrdemServico.getPARCELADO(value: string)
  : iCriarOrdemServico;
begin
  result := self;
  FPARCELADO := value;
end;

function TEntityCriarOrdemServico.getPGTO(value: string): iCriarOrdemServico;
begin
  result := self;
  if value = EmptyStr then
    FPGTO := 'N�o'
  else
    FPGTO := value;
end;

function TEntityCriarOrdemServico.getPRIORIDADE(value: string)
  : iCriarOrdemServico;
begin
  result := self;
  FPRIORIDADE := value;
end;

function TEntityCriarOrdemServico.getRETORNO(value: string): iCriarOrdemServico;
begin
  result := self;
  FRETORNO := value;
end;

function TEntityCriarOrdemServico.getSITUACAO_DA_ORDEM(value: string)
  : iCriarOrdemServico;
begin
  result := self;
  FSITUACAO_DA_ORDEM := value;
end;

function TEntityCriarOrdemServico.getSOLUCAO_DO_PROBLEMA(value: string)
  : iCriarOrdemServico;
begin
  result := self;
  FSOLUCAO_DO_PROBLEMA := value;
end;

function TEntityCriarOrdemServico.getSTATUS(value: string): iCriarOrdemServico;
begin
  result := self;
  FSTATUS := value;
end;

function TEntityCriarOrdemServico.getTecnico(value: string): iCriarOrdemServico;
begin
  result := self;
  FTECNICO_RESPONSAVEL := value;
end;

function TEntityCriarOrdemServico.getTotalDoOrcamento(value: string)
  : iCriarOrdemServico;
begin
  result := self;
  try
    FTOTAL_ORCAMENTO := StrToCurr(value);
  except
    on e: exception do
      raise exception.create('Informe um valor v�lido para o Total da Ordem');
  end;
end;

function TEntityCriarOrdemServico.getTOTAL_PARCELAS(value: string)
  : iCriarOrdemServico;
begin
  result := self;

  if value = EmptyStr then
    FTOTAL_PARCELAS := 0
  else
    FTOTAL_PARCELAS := value.ToInteger;

end;

function TEntityCriarOrdemServico.getValor(value: string): iCriarOrdemServico;
begin
  result := self;
  FValor := UpperCase(value);
end;

function TEntityCriarOrdemServico.getVALOR_DA_ORDEM(value: string)
  : iCriarOrdemServico;
begin
  result := self;
  try
    FVALOR_DA_ORDEM := StrToCurr(value);
  except
    on e: exception do
      raise exception.create
        ('Informe um valor v�lido para o campo Valor da Ordem.');
  end;
end;

function TEntityCriarOrdemServico.Gravar: iCriarOrdemServico;
begin

  result := self;

  if FQuery.TQuery.State in [dsInsert] then
    FQuery.TQuery.FieldByName('id').AsInteger :=
      FQuery.codigoCadastro('SP_GEN_ORDEM_SERVICO_ID');

  with FQuery.TQuery do
  begin
    FieldByName('ID_CLIENTE').AsInteger := FID_CLIENTE;
    FieldByName('EQUIPAMENTO').AsString := FEQUIPAMENTO;
    FieldByName('DEFEITO_RELATADO').AsString := FDEFEITO_RELATADO;
    FieldByName('MARCA').AsString := FMARCA;
    FieldByName('MODELO').AsString := FMODELO;
    FieldByName('NUMERO_SERIE').AsString := FNUMERO_SERIE;
    FieldByName('LAUDO_DO_TECNICO').AsString := FLAUDO_DO_TECNICO;
    FieldByName('SOLUCAO_DO_PROBLEMA').AsString := FSOLUCAO_DO_PROBLEMA;
    FieldByName('VALOR_DA_ORDEM').AsCurrency := FVALOR_DA_ORDEM;
    FieldByName('DESCONTO').AsCurrency := FDESCONTO;
    FieldByName('ACRESCIMO').AsCurrency := FACRESCIMO;
    FieldByName('TOTAL_ORCAMENTO').AsCurrency := FTOTAL_ORCAMENTO;
    FieldByName('ID_FUNCIONARIO').AsInteger := funcionarioLogado;
    FieldByName('NOME_FUNCIONARIO').AsString := nomeFuncionarioLogado;
    FieldByName('RETORNO').AsString := FRETORNO;
    FieldByName('SITUACAO_DA_ORDEM').AsString := FSITUACAO_DA_ORDEM;
    FieldByName('FORMA_PAGAMENTO').AsString := FFORMA_PAGAMENTO;
    FieldByName('PARCELADO').AsString := FPARCELADO;
    FieldByName('TOTAL_PARCELAS').AsInteger := FTOTAL_PARCELAS;
    FieldByName('PGTO').AsString := FPGTO;
    FieldByName('PRIORIDADE').AsString := FPRIORIDADE;
    FieldByName('OBSERVACAO').AsString := FOBSERVACAO;
    FieldByName('STATUS').AsString := FSTATUS;
    FieldByName('HORA_SAIDA').AsDateTime := StrToTime(FHORA_FINALIZACAO);

    if FDATA_FABRICACAO <> '' then
      FieldByName('DATA_FABRICACAO').AsDateTime := StrToDate(FDATA_FABRICACAO);

    if FDATA_RETORNO <> '' then
      FieldByName('DATA_RETORNO').AsDateTime := StrToDate(FDATA_RETORNO);

    if FDATA_ENTRADA <> '' then
      FieldByName('DATA_ENTRADA').AsDateTime := StrToDate(FDATA_ENTRADA);

    if FDATA_FINALIZACAO <> '' then
      FieldByName('DATA_FINALIZACAO').AsDateTime :=
        StrToDate(FDATA_FINALIZACAO);

    if FDATA_PAGAMENTO <> '' then
      FieldByName('DATA_PAGAMENTO').AsDateTime := StrToDate(FDATA_PAGAMENTO);

    FGravarLog.getNomeRegistro(FieldByName('EQUIPAMENTO').AsString)
      .getCodigoRegistro(FieldByName('id').AsInteger).gravarLog;
  end;

  try
    FQuery.TQuery.Post;
  except
    on e: exception do
    begin
      raise exception.create('Erro ao tentar gravar os dados. ' + e.Message);
    end;

  end;

end;

function TEntityCriarOrdemServico.inserir: iCriarOrdemServico;
begin
  result := self;
  FQuery.TQuery.EmptyDataSet;
  FQuery.TQuery.Append;
end;

function TEntityCriarOrdemServico.listarGrid(value: TDataSource)
  : iCriarOrdemServico;
var
  campoVirtual: TStringField;
begin

  result := self;

  with FQuery.TQuery do
  begin
    FieldByName('id').DisplayLabel := 'C�digo';
    FieldByName('ID_CLIENTE').DisplayLabel := 'C�d. Cliente';
    FieldByName('EQUIPAMENTO').DisplayLabel := 'Equipamento';
    FieldByName('DEFEITO_RELATADO').DisplayLabel := 'Defeito relatado';
    FieldByName('MARCA').DisplayLabel := 'Marca';
    FieldByName('MODELO').DisplayLabel := 'Modelo';
    FieldByName('NUMERO_SERIE').DisplayLabel := 'N�mero de serie';
    FieldByName('DATA_FABRICACAO').DisplayLabel := 'Fabrica��o';
    FieldByName('LAUDO_DO_TECNICO').DisplayLabel := 'Laudo t�cnico';
    FieldByName('SOLUCAO_DO_PROBLEMA').DisplayLabel := 'Solu��o do problema';
    FieldByName('VALOR_DA_ORDEM').DisplayLabel := 'Valor do reparo';
    FieldByName('DESCONTO').DisplayLabel := 'Desconto';
    FieldByName('ACRESCIMO').DisplayLabel := 'Acr�scimo';
    FieldByName('TOTAL_ORCAMENTO').DisplayLabel := 'Total do reparo';
    FieldByName('ID_FUNCIONARIO').DisplayLabel := 'C�d. Funcion�rio';
    FieldByName('NOME_FUNCIONARIO').DisplayLabel := 'Nome do funcion�rio';
    FieldByName('RETORNO').DisplayLabel := 'Retorno';
    FieldByName('DATA_RETORNO').DisplayLabel := 'Data do retorno';
    FieldByName('SITUACAO_DA_ORDEM').DisplayLabel := 'situa��o da ordem';
    FieldByName('FORMA_PAGAMENTO').DisplayLabel := 'Forma de pagamento';
    FieldByName('PARCELADO').DisplayLabel := 'Parcelado';
    FieldByName('TOTAL_PARCELAS').DisplayLabel := 'Total de parcelas';
    FieldByName('PGTO').DisplayLabel := 'PGTO';
    FieldByName('PRIORIDADE').DisplayLabel := 'Prioridade';
    FieldByName('DATA_ENTRADA').DisplayLabel := 'Data de entrada';
    FieldByName('DATA_FINALIZACAO').DisplayLabel := 'DAta de finalia��o';
    FieldByName('DATA_PAGAMENTO').DisplayLabel := 'Data de pagamento';
    FieldByName('OBSERVACAO').DisplayLabel := 'Observa��o';
    FieldByName('STATUS').DisplayLabel := 'Status';

    FieldByName('EQUIPAMENTO').DisplayWidth := 40;
    FieldByName('DEFEITO_RELATADO').DisplayWidth := 40;
    FieldByName('MARCA').DisplayWidth := 30;
    FieldByName('MODELO').DisplayWidth := 30;
    FieldByName('NUMERO_SERIE').DisplayWidth := 30;
    FieldByName('LAUDO_DO_TECNICO').DisplayWidth := 40;
    FieldByName('SOLUCAO_DO_PROBLEMA').DisplayWidth := 40;
    FieldByName('NOME_FUNCIONARIO').DisplayWidth := 30;
    FieldByName('RETORNO').DisplayWidth := 40;
    FieldByName('OBSERVACAO').DisplayWidth := 40;
  end;

  value.DataSet := FQuery.TQuery;

end;

class function TEntityCriarOrdemServico.new: iCriarOrdemServico;
begin
  result := self.create;
end;

function TEntityCriarOrdemServico.nomeTabela(value: string): iCriarOrdemServico;
begin
  result := self;
  FTabela := value;
end;

function TEntityCriarOrdemServico.open(value: string): iCriarOrdemServico;
begin
  FQuery.Query(FTabela);
end;

function TEntityCriarOrdemServico.ordenarGrid(column: TColumn)
  : iCriarOrdemServico;
begin

  if FQuery.TQuery.IndexFieldNames = column.FieldName then
    FQuery.TQuery.IndexFieldNames := column.FieldName + ':D'
  else
    FQuery.TQuery.IndexFieldNames := column.FieldName;

end;

function TEntityCriarOrdemServico.pesquisar: iCriarOrdemServico;
begin
  result := self;
end;

function TEntityCriarOrdemServico.sqlPesquisa: iCriarOrdemServico;
begin
  result := self;
  FQuery.getCampo(FCampo).getValor(FValor).sqlPesquisa(FTabela);
end;

function TEntityCriarOrdemServico.sqlPesquisaData: iCriarOrdemServico;
begin
  result := self;
  FQuery.getCampo(FCampo).getValor(FValor).getDataInicial(FDataInicial)
    .getDataFinal(FDataFinal).sqlPesquisaData(FTabela);
end;

function TEntityCriarOrdemServico.sqlPesquisaEstatica: iCriarOrdemServico;
begin
  result := self;
  FQuery.getCampo(FCampo).getValor(FValor).getDataInicial(FDataInicial)
    .getDataFinal(FDataFinal).sqlPesquisaEstatica(FTabela);
end;

procedure TEntityCriarOrdemServico.validarData(componet: tmaskEdit);
var
  d: TDate;
begin
  try
    d := StrToDate(componet.Text);
  except
    componet.SetFocus;
    componet.Clear;
    raise exception.create('Digite uma data v�lida.');
  end;
end;

end.
