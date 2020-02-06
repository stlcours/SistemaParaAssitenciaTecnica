unit UClasse.Entity.Estornar.OS;

interface

uses UClasse.Query, UInterfaces, UDados.Conexao, Data.DB, Vcl.Dialogs,
  System.SysUtils, Vcl.Forms, Winapi.Windows, Vcl.Controls,
  UClasse.Gravar.Log.Sistema, Vcl.ComCtrls, Vcl.DBGrids, Vcl.Mask;

type

  TEntityEstornarVenda = class(TInterfacedObject, iEstornarOS)
  private

    FQuery: iConexaoQuery;
    FGravarLog: iGravarLogOperacoes;
    FTabela: string;
    FCampo: string;
    FValor: string;
    FDataInicial: TDate;
    FDataFinal: TDate;

    FID: integer;
    FID_ORDEM: integer;
    FID_CLIENTE: integer;
    FVALOR_OS: Currency;
    FDATA: TDate;
    FHORA: TDateTime;
    FMOTIVO: string;
    FFUNCIONARIO: integer;
    FNOME_FUNCIONARIO: string;
    FOBSERVACAO: string;

    FCodigo: integer;
    FNome: string;

  public

    function nomeTabela(value: string): iEstornarOS;
    function getCampo(value: string): iEstornarOS;
    function getValor(value: string): iEstornarOS;
    function getDataInicial(value: TDate): iEstornarOS;
    function getDataFinal(value: TDate): iEstornarOS;
    function open(value: string): iEstornarOS;
    function pesquisar: iEstornarOS;
    function ExecSql: iEstornarOS;
    function sqlPesquisa: iEstornarOS;
    function sqlPesquisaData: iEstornarOS;
    function sqlPesquisaEstatica: iEstornarOS;

    function abrir: iEstornarOS;
    function inserir: iEstornarOS;
    function Gravar: iEstornarOS;
    function atualizar: iEstornarOS;
    function cancelar: iEstornarOS;
    function fecharQuery: iEstornarOS;
    function codigoCadastro(sp: string): integer;
    function listarGrid(value: TDataSource): iEstornarOS;
    function ordenarGrid(column: TColumn): iEstornarOS;

    function getID(value: integer): iEstornarOS;
    function getID_ORDEM(value: integer): iEstornarOS;
    function getID_CLIENTE(value: integer): iEstornarOS;
    function getVALOR_OS(value: string): iEstornarOS;
    function getDATA(value: string): iEstornarOS;
    function getHORA(value: string): iEstornarOS;
    function getMOTIVO(value: string): iEstornarOS;
    function getFUNCIONARIO(value: integer): iEstornarOS;
    function getNOME_FUNCIONARIO(value: string): iEstornarOS;
    function getOBSERVACAO(value: string): iEstornarOS;

    function exportar: iEstornarOS;
    function validarData(componet: tmaskEdit): iEstornarOS;

    function getCodigo(value: integer): iEstornarOS;
    function getNome(value: string): iEstornarOS;

    constructor create;
    destructor destroy; override;
    class function new: iEstornarOS;
  end;

implementation

{ TEntityEstornarVenda }

function TEntityEstornarVenda.abrir: iEstornarOS;
begin

  result := self;
  FQuery.Query(FTabela);

end;

function TEntityEstornarVenda.atualizar: iEstornarOS;
begin
  result := self;
  FQuery.TQuery.Refresh;
end;

function TEntityEstornarVenda.cancelar: iEstornarOS;
begin
  FQuery.TQuery.Cancel;
  // FQuery.TQuery.close;
end;

function TEntityEstornarVenda.codigoCadastro(sp: string): integer;
begin
  result := FQuery.codigoCadastro('');
end;

constructor TEntityEstornarVenda.create;
begin
  FTabela := 'ESTORNO_ORDEM';
  FQuery := TConexaoQuery.new.Query(FTabela);

  FGravarLog := TGravarLogSistema.new;
  FGravarLog.getJanela('Estornado OS').getCodigoFuncionario(funcionarioLogado);
  // (0 { definir o usu�rio quando construir a aplica��o } );

end;

destructor TEntityEstornarVenda.destroy;
begin

  inherited;
end;

function TEntityEstornarVenda.ExecSql: iEstornarOS;
begin
  result := self;
  FQuery.ExecSql(FTabela);
end;

function TEntityEstornarVenda.exportar: iEstornarOS;
begin
  result := self;
end;

function TEntityEstornarVenda.fecharQuery: iEstornarOS;
begin
  FQuery.TQuery.close;
end;

function TEntityEstornarVenda.getCampo(value: string): iEstornarOS;
begin
  result := self;
  FCampo := value;
end;

function TEntityEstornarVenda.getCodigo(value: integer): iEstornarOS;
begin
  result := self;
  FCodigo := value;
end;

function TEntityEstornarVenda.getDATA(value: string): iEstornarOS;
begin
  result := self;

  if value = EmptyStr then
    raise Exception.create('Erro! Informe um data para o estorno');

  try
    FDATA := StrToDate(value);
  except
    on e: Exception do
    begin
      raise Exception.create('Erro! Informe um data v�lida');
    end;

  end;

end;

function TEntityEstornarVenda.getDataFinal(value: TDate): iEstornarOS;
begin
  result := self;
  FDataFinal := value;
  // FQuery.getDataFinal(value);
end;

function TEntityEstornarVenda.getDataInicial(value: TDate): iEstornarOS;
begin
  result := self;
  FDataInicial := value;
  // FQuery.getDataInicial(value);
end;

function TEntityEstornarVenda.getFUNCIONARIO(value: integer): iEstornarOS;
begin
  result := self;
  FFUNCIONARIO := funcionarioLogado;
end;

function TEntityEstornarVenda.getHORA(value: string): iEstornarOS;
begin

  result := self;

  if value = EmptyStr then
    raise Exception.create('Erro! Informe um h�rario para o estorno');

  try
    FHORA := StrToTime(value);
  except
    on e: Exception do
    begin
      raise Exception.create('Erro! Informe um hor�rio v�lido para o estorno');
    end;

  end;

end;

function TEntityEstornarVenda.getID(value: integer): iEstornarOS;
begin
  result := self;
  FID := value;
end;

function TEntityEstornarVenda.getID_CLIENTE(value: integer): iEstornarOS;
begin

  result := self;

  if value = 0 then
    raise Exception.create('Erro! Informe o c�digo do cliente para o estorno');

  FID_CLIENTE := value;

end;

function TEntityEstornarVenda.getID_ORDEM(value: integer): iEstornarOS;
begin

  result := self;

  if value = 0 then
    raise Exception.create('Erro! Informe a OS que esta estornando');

  FID_ORDEM := value;

end;

function TEntityEstornarVenda.getMOTIVO(value: string): iEstornarOS;
var
  motivo: string;
begin

  result := self;

  while motivo = EmptyStr do
  begin
    motivo := InputBox('Informe o motivo do estorno', 'Motivo do estorno', '');

    if motivo = EmptyStr then
    begin
     MessageDlg('Voc� precisa informa um motivo para este estorno', mtWarning, [mbOK], 0, mbOK);
    end;
  end;

  FMOTIVO := motivo;

end;

function TEntityEstornarVenda.getNome(value: string): iEstornarOS;
begin
  result := self;
  FNome := value;
end;

function TEntityEstornarVenda.getNOME_FUNCIONARIO(value: string): iEstornarOS;
begin

 result := self;
 FNOME_FUNCIONARIO := NomeFuncionarioLogado;

end;

function TEntityEstornarVenda.getOBSERVACAO(value: string): iEstornarOS;
begin

  result := self;
  FOBSERVACAO := value;

end;

function TEntityEstornarVenda.getValor(value: string): iEstornarOS;
begin
  result := self;
  FValor := UpperCase(value);
end;

function TEntityEstornarVenda.getVALOR_OS(value: string): iEstornarOS;
begin

end;

function TEntityEstornarVenda.Gravar: iEstornarOS;
begin

  result := self;

  if FQuery.TQuery.State in [dsInsert] then
    FQuery.TQuery.FieldByName('id').AsInteger :=
      FQuery.codigoCadastro('SP_GEN_ESTORNO_ORDEM_ID');

  with FQuery.TQuery do
  begin

  end;

  FGravarLog.getNomeRegistro(FQuery.TQuery.FieldByName('id_ordem')
    .AsInteger.ToString).gravarLog;

  try
    FQuery.TQuery.Post;
  except
    on e: Exception do
    begin
      raise Exception.create('Erro ao tentar gravar os dados. ' + e.Message);
    end;

  end;

end;

function TEntityEstornarVenda.inserir: iEstornarOS;
begin
  result := self;
  FQuery.TQuery.EmptyDataSet;
  FQuery.TQuery.Append;
end;

function TEntityEstornarVenda.listarGrid(value: TDataSource): iEstornarOS;
begin

  result := self;

  with FQuery.TQuery do
  begin

    FieldByName('ID').DisplayLabel := 'C�digo estorno';
    FieldByName('ID_ORDEM ').DisplayLabel := 'OS';
    FieldByName('ID_CLIENTE').DisplayLabel := 'C�d. Cliente';
    FieldByName('VALOR').DisplayLabel := 'Valor';
    FieldByName('DATA').DisplayLabel := 'Data';
    FieldByName('HORA').DisplayLabel := 'HOra';
    FieldByName('MOTIVO').DisplayLabel := 'Motivo';
    FieldByName('FUNCIONARIO').DisplayLabel := 'C�d. Funcion�rio';
    FieldByName('NOME_FUNCIONARIO').DisplayLabel := 'Funcion�rio';
    FieldByName('OBSERVACAO').DisplayLabel := 'Observa��o';

    FieldByName('NOME_FUNCIONARIO').DisplayWidth := 40;
    FieldByName('OBSERVACAO').DisplayWidth := 40;

  end;

  value.DataSet := FQuery.TQuery;

end;

class function TEntityEstornarVenda.new: iEstornarOS;
begin
  result := self.create;
end;

function TEntityEstornarVenda.nomeTabela(value: string): iEstornarOS;
begin
  result := self;
  FTabela := value;
end;

function TEntityEstornarVenda.open(value: string): iEstornarOS;
begin
  FQuery.Query(FTabela);
end;

function TEntityEstornarVenda.ordenarGrid(column: TColumn): iEstornarOS;
begin

  if FQuery.TQuery.IndexFieldNames = column.FieldName then
    FQuery.TQuery.IndexFieldNames := column.FieldName + ':D'
  else
    FQuery.TQuery.IndexFieldNames := column.FieldName;

end;

function TEntityEstornarVenda.pesquisar: iEstornarOS;
begin
  result := self;
end;

function TEntityEstornarVenda.sqlPesquisa: iEstornarOS;
begin
  result := self;
  FQuery.getCampo(FCampo).getValor(FValor).sqlPesquisa(FTabela);
end;

function TEntityEstornarVenda.sqlPesquisaData: iEstornarOS;
begin
  result := self;
  FQuery.getCampo(FCampo).getValor(FValor).getDataInicial(FDataInicial)
    .getDataFinal(FDataFinal).sqlPesquisaData(FTabela);
end;

function TEntityEstornarVenda.sqlPesquisaEstatica: iEstornarOS;
begin
  result := self;
  FQuery.getCampo(FCampo).getValor(FValor).getDataInicial(FDataInicial)
    .getDataFinal(FDataFinal).sqlPesquisaEstatica(FTabela);
end;

function TEntityEstornarVenda.validarData(componet: tmaskEdit): iEstornarOS;
var
  d: TDate;
begin

  result := self;

  try
    d := StrToDate(componet.Text);
  except
    componet.SetFocus;
    componet.Clear;
    raise Exception.create('Digite uma data v�lida.');
  end;
end;

end.
