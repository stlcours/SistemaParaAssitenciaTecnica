unit UClasse.Entity.Cadastro.Funcionario;

interface

uses UClasse.Query, UInterfaces, UDados.Conexao, Data.DB, Vcl.Dialogs,
  System.SysUtils, Vcl.Forms, Winapi.Windows, Vcl.Controls,
  UClasse.Gravar.Log.Sistema, Vcl.ComCtrls, Vcl.DBGrids, Vcl.Imaging.jpeg,
  FireDAC.Comp.Client;

type

  TEntityCadastroFuncionario = class(TInterfacedObject, iCadastroFuncionario)
  private

    FQuery: iConexaoQuery;
    FGravarLog: iGravarLogOperacoes;
    FTabela: string;
    FCampo: string;
    FValor: string;
    FDataInicial: TDate;
    FDataFinal: TDate;

    FCodigo: integer;
    FNOME: string;
    FDATA_NASCIMENTO: string;
    FDOCUMENTO: string;
    FCPF: string;
    FENDERECO: string;
    FBAIRRO: string;
    FNUMERO: integer;
    FCOMPLEMENTO: string;
    FCEP: string;
    FCIDADE: string;
    FUF: string;
    FDATA_CADASTRO: string;
    FDATA_DEMISSAO: string;
    FATIVIDADE: integer;
    FTELEFONE: string;
    FCELULAR: string;
    FEMAIL: string;
    FUSUARIO: string;
    FSENHA: string;
    FSTATUS: string;
    FEXCLUIDO: string;
    F_FOTO: TJPEGImage;
    F_FUNCIONARIO_CADASTRO: integer;
    FOBSERVACAO: string;

  public

    function nomeTabela(value: string): iCadastroFuncionario;
    function getCampo(value: string): iCadastroFuncionario;
    function getValor(value: string): iCadastroFuncionario;
    function getDataInicial(value: TDate): iCadastroFuncionario;
    function getDataFinal(value: TDate): iCadastroFuncionario;
    function open(value: string): iCadastroFuncionario;
    function pesquisar: iCadastroFuncionario;
    function ExecSql: iCadastroFuncionario;
    function sqlPesquisa: iCadastroFuncionario;
    function sqlPesquisaData: iCadastroFuncionario;
    function sqlPesquisaEstatica: iCadastroFuncionario;

    function abrir: iCadastroFuncionario;
    function inserir: iCadastroFuncionario;
    function Gravar: iCadastroFuncionario;
    function deletar: iCadastroFuncionario;
    function atualizar: iCadastroFuncionario;
    function editar: iCadastroFuncionario;
    function cancelar: iCadastroFuncionario;
    function fecharQuery: iCadastroFuncionario;
    function codigoCadastro(sp: string): integer;
    function listarGrid(value: TDataSource): iCadastroFuncionario;
    function ordenarGrid(column: TColumn): iCadastroFuncionario;

    function getCodigo(value: integer): iCadastroFuncionario;

    function getNome(value: string): iCadastroFuncionario;
    function getDATA_NASCIMENTO(value: string): iCadastroFuncionario;
    function getDocumento(value: string): iCadastroFuncionario;
    function getCPF(value: string): iCadastroFuncionario;
    function getEndereco(value: string): iCadastroFuncionario;
    function getBairro(value: string): iCadastroFuncionario;
    function getNumero(value: integer): iCadastroFuncionario;
    function getComplemento(value: string): iCadastroFuncionario;
    function getCep(value: string): iCadastroFuncionario;
    function getCidade(value: string): iCadastroFuncionario;
    function getUF(value: string): iCadastroFuncionario;
    function getDATA_CADASTRO(value: string): iCadastroFuncionario;
    function getDATA_DEMISSAO(value: string): iCadastroFuncionario;
    function getATIVIDADE(value: integer): iCadastroFuncionario;
    function getTelefone(value: string): iCadastroFuncionario;
    function getCelular(value: string): iCadastroFuncionario;
    function getEmail(value: string): iCadastroFuncionario;
    function getUSUARIO(value: string): iCadastroFuncionario;
    function getSENHA(value: string): iCadastroFuncionario;
    function getSTATUS(value: string): iCadastroFuncionario;
    function getEXCLUIDO(value: string): iCadastroFuncionario;
    function getFoto(value: TJPEGImage): iCadastroFuncionario;
    function getFUNCIONARIO_CADASTRO(value: integer): iCadastroFuncionario;
    function getObservacao(value: string): iCadastroFuncionario;
    function exportar: iCadastroFuncionario;

    function validarUsuario(value: string): iCadastroFuncionario;
    function validarSenha(value1, value2: string): iCadastroFuncionario;

    constructor create;
    destructor destroy; override;
    class function new: iCadastroFuncionario;
  end;

implementation

{ TEntityCadastroFuncionario }

function TEntityCadastroFuncionario.abrir: iCadastroFuncionario;
begin

  result := self;
  FQuery.Query(FTabela);

end;

function TEntityCadastroFuncionario.atualizar: iCadastroFuncionario;
begin
  result := self;
  FQuery.TQuery.Refresh;
end;

function TEntityCadastroFuncionario.cancelar: iCadastroFuncionario;
begin
  FQuery.TQuery.Cancel;
  // FQuery.TQuery.close;
end;

function TEntityCadastroFuncionario.codigoCadastro(sp: string): integer;
begin
  result := FQuery.codigoCadastro('');
end;

constructor TEntityCadastroFuncionario.create;
begin
  FTabela := 'FUNCIONARIOS';
  FQuery := TConexaoQuery.new.Query(FTabela);

  FGravarLog := TGravarLogSistema.new;
  FGravarLog.getJanela('Cadastro de funcion�rios').getCodigoFuncionario
    (funcionarioLogado);
  // (0 { definir o usu�rio quando construir a aplica��o } );

end;

function TEntityCadastroFuncionario.deletar: iCadastroFuncionario;
begin
  result := self;

  if FQuery.TQuery.RecordCount >= 1 then
  begin
    if application.MessageBox('Deseja realmente excluir este registro?',
      'Pergunta do sistema!', MB_YESNO + MB_ICONQUESTION) = mryes then
    begin

      FGravarLog.getNomeRegistro(FQuery.TQuery.FieldByName('NOME').AsString)
        .getCodigoRegistro(FQuery.TQuery.FieldByName('id').AsInteger).gravarLog;

      FQuery.TQuery.Delete;
    end;
  end;

end;

destructor TEntityCadastroFuncionario.destroy;
begin

  inherited;
end;

function TEntityCadastroFuncionario.editar: iCadastroFuncionario;
begin
  result := self;
  if FQuery.TQuery.RecordCount >= 1 then
  begin

    FGravarLog.getNomeRegistro(FQuery.TQuery.FieldByName('NOME').AsString)
      .getCodigoRegistro(FQuery.TQuery.FieldByName('id').AsInteger).gravarLog;

    FQuery.TQuery.Edit;

  end;
end;

function TEntityCadastroFuncionario.ExecSql: iCadastroFuncionario;
begin
  result := self;
  FQuery.ExecSql(FTabela);
end;

function TEntityCadastroFuncionario.exportar: iCadastroFuncionario;
begin
  result := self;
end;

function TEntityCadastroFuncionario.fecharQuery: iCadastroFuncionario;
begin
  FQuery.TQuery.close;
end;

function TEntityCadastroFuncionario.getATIVIDADE(value: integer)
  : iCadastroFuncionario;
begin

  result := self;
  FATIVIDADE := value;

end;

function TEntityCadastroFuncionario.getBairro(value: string)
  : iCadastroFuncionario;
begin
  result := self;
  FBAIRRO := value;
end;

function TEntityCadastroFuncionario.getCampo(value: string)
  : iCadastroFuncionario;
begin
  result := self;
  FCampo := value;
end;

function TEntityCadastroFuncionario.getCelular(value: string)
  : iCadastroFuncionario;
begin
  result := self;
  FCELULAR := value;
end;

function TEntityCadastroFuncionario.getCep(value: string): iCadastroFuncionario;
begin
  result := self;
  FCEP := value;
end;

function TEntityCadastroFuncionario.getCidade(value: string)
  : iCadastroFuncionario;
begin
  result := self;
  FCIDADE := value;
end;

function TEntityCadastroFuncionario.getCodigo(value: integer)
  : iCadastroFuncionario;
begin
  result := self;
  FCodigo := value;
end;

function TEntityCadastroFuncionario.getComplemento(value: string)
  : iCadastroFuncionario;
begin
  result := self;
  FCOMPLEMENTO := value;
end;

function TEntityCadastroFuncionario.getCPF(value: string): iCadastroFuncionario;
begin
  result := self;
  FCPF := value;
end;

function TEntityCadastroFuncionario.getDataFinal(value: TDate)
  : iCadastroFuncionario;
begin
  result := self;
  FDataFinal := value;
  // FQuery.getDataFinal(value);
end;

function TEntityCadastroFuncionario.getDataInicial(value: TDate)
  : iCadastroFuncionario;
begin
  result := self;
  FDataInicial := value;
  // FQuery.getDataInicial(value);
end;

function TEntityCadastroFuncionario.getDATA_CADASTRO(value: string)
  : iCadastroFuncionario;
begin
  result := self;
  if value = '  /  /    ' then
    FDATA_CADASTRO := ''
  else
    FDATA_CADASTRO := value;

end;

function TEntityCadastroFuncionario.getDATA_DEMISSAO(value: string)
  : iCadastroFuncionario;
begin
  result := self;
  if value = '  /  /    ' then
    FDATA_DEMISSAO := ''
  else
    FDATA_DEMISSAO := value;
end;

function TEntityCadastroFuncionario.getDATA_NASCIMENTO(value: string)
  : iCadastroFuncionario;
begin
  result := self;
  if value = '  /  /    ' then
    FDATA_NASCIMENTO := ''
  else
    FDATA_NASCIMENTO := value;

end;

function TEntityCadastroFuncionario.getDocumento(value: string)
  : iCadastroFuncionario;
begin
  result := self;
  FDOCUMENTO := value;
end;

function TEntityCadastroFuncionario.getEmail(value: string)
  : iCadastroFuncionario;
begin
  result := self;
  FEMAIL := value;
end;

function TEntityCadastroFuncionario.getEndereco(value: string)
  : iCadastroFuncionario;
begin
  result := self;
  FENDERECO := value;
end;

function TEntityCadastroFuncionario.getEXCLUIDO(value: string)
  : iCadastroFuncionario;
begin
  result := self;
  FEXCLUIDO := value;
end;

function TEntityCadastroFuncionario.getFoto(value: TJPEGImage)
  : iCadastroFuncionario;
begin
  result := self;
  F_FOTO := value;
end;

function TEntityCadastroFuncionario.getFUNCIONARIO_CADASTRO(value: integer)
  : iCadastroFuncionario;
begin
  result := self;
  F_FUNCIONARIO_CADASTRO := value;
end;

function TEntityCadastroFuncionario.getNome(value: string)
  : iCadastroFuncionario;
begin
  result := self;

  if value = EmptyStr then
    raise Exception.create('Informe o nome do funcion�rio.');

  FNOME := value;

end;

function TEntityCadastroFuncionario.getNumero(value: integer)
  : iCadastroFuncionario;
begin
  result := self;
  FNUMERO := value;
end;

function TEntityCadastroFuncionario.getObservacao(value: string)
  : iCadastroFuncionario;
begin
  result := self;
  FOBSERVACAO := value;
end;

function TEntityCadastroFuncionario.getSENHA(value: string)
  : iCadastroFuncionario;
begin
  result := self;
  if value = EmptyStr then
    raise Exception.create('Informe um senha para o usu�rio.');
  FSENHA := value;
end;

function TEntityCadastroFuncionario.getSTATUS(value: string)
  : iCadastroFuncionario;
begin
  result := self;
  FSTATUS := value;
end;

function TEntityCadastroFuncionario.getTelefone(value: string)
  : iCadastroFuncionario;
begin
  result := self;
  FTELEFONE := value;
end;

function TEntityCadastroFuncionario.getUF(value: string): iCadastroFuncionario;
begin
  result := self;
  FUF := value;
end;

function TEntityCadastroFuncionario.getUSUARIO(value: string)
  : iCadastroFuncionario;
begin
  result := self;
  if value = EmptyStr then
    raise Exception.create('Informe um nome de usu�rio do funcion�rio.');
  FUSUARIO := value;
end;

function TEntityCadastroFuncionario.getValor(value: string)
  : iCadastroFuncionario;
begin
  result := self;
  FValor := UpperCase(value);
end;

function TEntityCadastroFuncionario.Gravar: iCadastroFuncionario;
begin

  result := self;

  if FQuery.TQuery.State in [dsInsert] then
    FQuery.TQuery.FieldByName('id').AsInteger :=
      FQuery.codigoCadastro('SP_GEN_FUNCIONARIOS_ID');

  FQuery.TQuery.FieldByName('NOME').AsString := FNOME;
  FQuery.TQuery.FieldByName('DOCUMENTO').AsString := FDOCUMENTO;
  FQuery.TQuery.FieldByName('CPF').AsString := FCPF;
  FQuery.TQuery.FieldByName('ENDERECO').AsString := FENDERECO;
  FQuery.TQuery.FieldByName('BAIRRO').AsString := FBAIRRO;
  FQuery.TQuery.FieldByName('NUMERO').AsInteger := FNUMERO;
  FQuery.TQuery.FieldByName('COMPLEMENTO').AsString := FCOMPLEMENTO;
  FQuery.TQuery.FieldByName('CEP').AsString := FCEP;
  FQuery.TQuery.FieldByName('CIDADE').AsString := FCIDADE;
  FQuery.TQuery.FieldByName('UF').AsString := FUF;
  FQuery.TQuery.FieldByName('ATIVIDADE').AsInteger := FATIVIDADE;
  FQuery.TQuery.FieldByName('TELEFONE').AsString := FTELEFONE;
  FQuery.TQuery.FieldByName('CELULAR').AsString := FCELULAR;
  FQuery.TQuery.FieldByName('EMAIL').AsString := FEMAIL;
  FQuery.TQuery.FieldByName('USUARIO').AsString := FUSUARIO;
  FQuery.TQuery.FieldByName('SENHA').AsString := FSENHA;
  FQuery.TQuery.FieldByName('STATUS').AsString := FSENHA;
  FQuery.TQuery.FieldByName('FUNCIONARIO_CADASTRO').AsInteger :=
    funcionarioLogado;
  FQuery.TQuery.FieldByName('OBSERVACAO').AsString := FOBSERVACAO;

  if FDATA_NASCIMENTO <> EmptyStr then
    FQuery.TQuery.FieldByName('DATA_NASCIMENTO').AsDateTime :=
      StrToDate(FDATA_NASCIMENTO);

  if FDATA_CADASTRO <> EmptyStr then
    FQuery.TQuery.FieldByName('DATA_CADASTRO').AsDateTime :=
      StrToDate(FDATA_CADASTRO);

  if FDATA_DEMISSAO <> EmptyStr then
    FQuery.TQuery.FieldByName('DATA_DEMISSAO').AsDateTime :=
      StrToDate(FDATA_DEMISSAO);

  if Assigned(F_FOTO) then
  begin
    FQuery.TQuery.FieldByName('FOTO').Assign(F_FOTO);
  end;

  FGravarLog.getNomeRegistro(FQuery.TQuery.FieldByName('NOME').AsString)
    .getCodigoRegistro(FQuery.TQuery.FieldByName('id').AsInteger).gravarLog;

  try
    FQuery.TQuery.Post;
  except
    on e: Exception do
    begin
      raise Exception.create('Erro ao tentar gravar os dados. ' + e.Message);
    end;

  end;

end;

function TEntityCadastroFuncionario.inserir: iCadastroFuncionario;
begin
  result := self;
  FQuery.TQuery.EmptyDataSet;
  FQuery.TQuery.Append;
end;

function TEntityCadastroFuncionario.listarGrid(value: TDataSource)
  : iCadastroFuncionario;
begin

  result := self;

  FQuery.TQuery.FieldByName('id').DisplayLabel := 'C�digo';
  FQuery.TQuery.FieldByName('NOME').DisplayLabel := 'Nome';
  FQuery.TQuery.FieldByName('DATA_NASCIMENTO').DisplayLabel :=
    'Data nascimento';
  FQuery.TQuery.FieldByName('DOCUMENTO').DisplayLabel := 'Documento';
  FQuery.TQuery.FieldByName('CPF').DisplayLabel := 'CPF';
  FQuery.TQuery.FieldByName('ENDERECO').DisplayLabel := 'Endere�o';
  FQuery.TQuery.FieldByName('BAIRRO').DisplayLabel := 'Bairro';
  FQuery.TQuery.FieldByName('NUMERO').DisplayLabel := 'N�mero';
  FQuery.TQuery.FieldByName('COMPLEMENTO').DisplayLabel := 'Complemento';
  FQuery.TQuery.FieldByName('CEP').DisplayLabel := 'CEP';
  FQuery.TQuery.FieldByName('CIDADE').DisplayLabel := 'Cidade';
  FQuery.TQuery.FieldByName('UF').DisplayLabel := 'UF';
  FQuery.TQuery.FieldByName('DATA_CADASTRO').DisplayLabel := 'Data de cadastro';
  FQuery.TQuery.FieldByName('DATA_DEMISSAO').DisplayLabel := 'Data de demis�o';
  FQuery.TQuery.FieldByName('ATIVIDADE').DisplayLabel := 'Atividade';
  FQuery.TQuery.FieldByName('TELEFONE').DisplayLabel := 'Telefone';
  FQuery.TQuery.FieldByName('CELULAR').DisplayLabel := 'Celular';
  FQuery.TQuery.FieldByName('EMAIL').DisplayLabel := 'E-Mail';
  FQuery.TQuery.FieldByName('USUARIO').DisplayLabel := 'Usu�rio';
  FQuery.TQuery.FieldByName('SENHA').Visible := false;
  FQuery.TQuery.FieldByName('STATUS').DisplayLabel := 'Status';
  FQuery.TQuery.FieldByName('EXCLUIDO').Visible := false;
  FQuery.TQuery.FieldByName('FOTO').Visible := false;
  FQuery.TQuery.FieldByName('FUNCIONARIO_CADASTRO').DisplayLabel :=
    'Funcion�rio';
  FQuery.TQuery.FieldByName('OBSERVACAO').DisplayLabel := 'Observa��o';

  FQuery.TQuery.FieldByName('NOME').DisplayWidth := 40;
  FQuery.TQuery.FieldByName('ENDERECO').DisplayWidth := 40;
  FQuery.TQuery.FieldByName('BAIRRO').DisplayWidth := 30;
  FQuery.TQuery.FieldByName('COMPLEMENTO').DisplayWidth := 30;
  FQuery.TQuery.FieldByName('EMAIL').DisplayWidth := 40;
  FQuery.TQuery.FieldByName('OBSERVACAO').DisplayWidth := 40;

  value.DataSet := FQuery.TQuery;

end;

class function TEntityCadastroFuncionario.new: iCadastroFuncionario;
begin
  result := self.create;
end;

function TEntityCadastroFuncionario.nomeTabela(value: string)
  : iCadastroFuncionario;
begin
  result := self;
  FTabela := value;
end;

function TEntityCadastroFuncionario.open(value: string): iCadastroFuncionario;
begin
  FQuery.Query(FTabela);
end;

function TEntityCadastroFuncionario.ordenarGrid(column: TColumn)
  : iCadastroFuncionario;
begin

  if FQuery.TQuery.IndexFieldNames = column.FieldName then
    FQuery.TQuery.IndexFieldNames := column.FieldName + ':D'
  else
    FQuery.TQuery.IndexFieldNames := column.FieldName;

end;

function TEntityCadastroFuncionario.pesquisar: iCadastroFuncionario;
begin
  result := self;
end;

function TEntityCadastroFuncionario.sqlPesquisa: iCadastroFuncionario;
begin
  result := self;
  FQuery.getCampo(FCampo).getValor(FValor).sqlPesquisa(FTabela);
end;

function TEntityCadastroFuncionario.sqlPesquisaData: iCadastroFuncionario;
begin
  result := self;
  FQuery.getCampo(FCampo).getValor(FValor).getDataInicial(FDataInicial)
    .getDataFinal(FDataFinal).sqlPesquisaData(FTabela);
end;

function TEntityCadastroFuncionario.sqlPesquisaEstatica: iCadastroFuncionario;
begin
  result := self;
  FQuery.getCampo(FCampo).getValor(FValor).getDataInicial(FDataInicial)
    .getDataFinal(FDataFinal).sqlPesquisaEstatica(FTabela);
end;

function TEntityCadastroFuncionario.validarSenha(value1, value2: string)
  : iCadastroFuncionario;
begin

  result := self;

  if value1 = EmptyStr then
    raise Exception.create('Informe a senha para o usu�rio.');

  if value2 = EmptyStr then
    raise Exception.create('Confirme a senha.');

  if value1 <> value2 then
    raise Exception.create('As senhas informadas n�o s�o identicas.');

end;

function TEntityCadastroFuncionario.validarUsuario(value: string)
  : iCadastroFuncionario;
var
  TQuery: TFDQuery;
begin

  result := self;

  if value <> EmptyStr then
  begin
    TQuery := TFDQuery.create(nil);
    TQuery.Connection := DataModule1.Conexao;

    TQuery.Active := false;
    TQuery.SQL.Clear;
    TQuery.SQL.Add('select * from FUNCIONARIOS where USUARIO =:u');
    TQuery.ParamByName('u').AsString := value;
    TQuery.Active := true;

    if TQuery.RecordCount >= 1 then
      raise Exception.create
        ('J� existe um cadatro com este usu�rio. Tente outro nome de usu�rio.');

    TQuery.Free;
  end
  else
    raise Exception.create('Informe um nome de usu�rio.');

end;

end.
