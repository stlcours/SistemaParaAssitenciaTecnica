unit UClasse.Entity.Caixa;

interface

uses
  FireDAC.Comp.Client, UDados.Conexao, System.SysUtils, Vcl.StdCtrls,
  Vcl.Dialogs, Data.DB, Vcl.Forms, Vcl.Controls, Winapi.Windows, UInterfaces,
  UClasse.Gravar.Log.Sistema;

type
  TEntityCaixa = class

  private

    FQuery: TFDQuery;
    FQueryEncerramento: TFDQuery;
    FQueryAbertura: TFDQuery;
    FQueryUltimoCaixa: TFDQuery;
    FQueryReaberturaCaixa: TFDQuery;
    spCodigoCadastro: TFDStoredProc;

    FGravarLog: iGravarLogOperacoes;

  var
    FUltimaData: TDate;
    FOperacaoASerFeita: string;
    FValorUltimoCaixa: Currency;

    FTotalParcelasOS: Currency;
    FTotalParcelasVendas: Currency;
    FTotalParcelasOSEstornadas: Currency;
    FTotalParcelasVendasEstornadas: Currency;
    FTotalRetiradas: Currency;

  public

    function verificarSituacaoCaixa: string;

    procedure inicarCaixa(value: TDataSource);
    procedure fecharCaixa(value: TDataSource);
    procedure gravarInicioDoCaixa(value: Currency);
    function gerarCodigo: integer;
    function retornarNomeFuncionario: string;

    function calcularParcelasOS: Currency;
    function calcularEstornosOS: Currency;

    function calcularParcelasVendas: Currency;
    function calcularEstornoVendas: Currency;

    function calcularRetiradas: Currency;

    function ultimoValorDoCaixa: Currency;

    function valorCaixaFechado: Currency;
    function valorCaixaEmAberto: Currency;

    function calcularValorCaixa: Currency;

    function obertUltimoValorDoCaixaFechado(value: TDataSource): Currency;
    procedure encerrarCaixaManualmente(value: Currency);
    procedure infomarUltimaData(value: TDate);

    procedure reabrirCaixa(value:Currency);

    procedure aberturaCaixaManualSelecao(fechamento, abertura:TDataSource);
    procedure iniciarCaixaManulamente(valor_anterior, valor_informado:string);

    function retornarNomeFuncionarioLogado:string;
    function retornarEstadoCaixa:string;

    constructor create;
    destructor destroy; override;

  end;

implementation

{ TEntityCaixa }

procedure TEntityCaixa.aberturaCaixaManualSelecao(fechamento, abertura: TDataSource);
begin

  FQuery.Active := false;

  FQuery.SQL.Clear;
  FQuery.SQL.Add('select * from CAIXA_ABER_FECH order by id desc');

  FQuery.Active := true;

  if ((FQuery.FieldByName('STATUS').AsString = 'fechado') and
      (FQuery.FieldByName('DATA_ENCERRAMENTO').AsDateTime = date)) then
  begin

    fechamento.DataSet := FQuery;
    abertura.DataSet := FQuery;

  end;


end;

function TEntityCaixa.calcularEstornosOS: Currency;
var
  TQuery: TFDQuery;
  total: Currency;
begin

  result := 0;

  TQuery := TFDQuery.create(nil);
  TQuery.Connection := DataModule1.Conexao;

  TQuery.Active := false;
  TQuery.SQL.Clear;
  TQuery.SQL.Add
    ('select * from PARCELAS_ORDEM where PGTO =:p and DATA_ESTORNO =:d');
  TQuery.ParamByName('p').AsString := 'Estornada';
  TQuery.ParamByName('d').AsDate := FUltimaData;
  TQuery.Active := true;

  TQuery.First;
  total := 0;

  while not TQuery.Eof do
  begin
    total := total + TQuery.FieldByName('VALOR_TOTAL').AsCurrency;
    TQuery.Next;
  end;

  FTotalParcelasOSEstornadas := total;

  result := total;

  FreeAndNil(TQuery);

end;

function TEntityCaixa.calcularEstornoVendas: Currency;
var
  TQuery: TFDQuery;
  total: Currency;
begin

  result := 0;

  TQuery := TFDQuery.create(nil);
  TQuery.Connection := DataModule1.Conexao;

  TQuery.Active := false;
  TQuery.SQL.Clear;
  TQuery.SQL.Add
    ('select * from parcelas_vendas where PAGO =:p and DATA_ESTORNO =:d');
  TQuery.ParamByName('p').AsString := 'Estornada';
  TQuery.ParamByName('d').AsDate := FUltimaData;
  TQuery.Active := true;

  TQuery.First;
  total := 0;

  while not TQuery.Eof do
  begin
    total := total + TQuery.FieldByName('TOTAL').AsCurrency;
    TQuery.Next;
  end;

  FTotalParcelasVendasEstornadas := total;

  result := total;

  FreeAndNil(TQuery);

end;

function TEntityCaixa.calcularParcelasOS: Currency;
var
  TQuery: TFDQuery;
  total: Currency;
begin

  result := 0;

  TQuery := TFDQuery.create(nil);
  TQuery.Connection := DataModule1.Conexao;

  TQuery.Active := false;
  TQuery.SQL.Clear;
  TQuery.SQL.Add
    ('select * from PARCELAS_ORDEM where PGTO =:p and DATA_PAGAMENTO =:d');
  TQuery.ParamByName('p').AsString := 'Sim';
  TQuery.ParamByName('d').AsDate := FUltimaData;
  TQuery.Active := true;

  TQuery.First;
  total := 0;

  while not TQuery.Eof do
  begin
    total := total + TQuery.FieldByName('VALOR_TOTAL').AsCurrency;
    TQuery.Next;
  end;

  FTotalParcelasOS := total;

  result := total;

  FreeAndNil(TQuery);

end;

function TEntityCaixa.calcularParcelasVendas: Currency;
var
  TQuery: TFDQuery;
  total: Currency;
begin

  result := 0;

  TQuery := TFDQuery.create(nil);
  TQuery.Connection := DataModule1.Conexao;

  TQuery.Active := false;
  TQuery.SQL.Clear;
  TQuery.SQL.Add
    ('select * from parcelas_vendas where PAGO =:p and DATA_PAGAMENTO =:d');
  TQuery.ParamByName('p').AsString := 'Sim';
  TQuery.ParamByName('d').AsDate := FUltimaData;
  TQuery.Active := true;

  TQuery.First;
  total := 0;

  while not TQuery.Eof do
  begin
    total := total + TQuery.FieldByName('TOTAL').AsCurrency;
    TQuery.Next;
  end;

  result := total;

  FreeAndNil(TQuery);

end;

function TEntityCaixa.calcularRetiradas: Currency;
var
  TQuery: TFDQuery;
  total: Currency;
begin

  result := 0;

  TQuery := TFDQuery.create(nil);
  TQuery.Connection := DataModule1.Conexao;

  TQuery.Active := false;
  TQuery.SQL.Clear;
  TQuery.SQL.Add('select * from RETIRADAS where DATA =:d');
  TQuery.ParamByName('d').AsDate := FUltimaData;
  TQuery.Active := true;

  TQuery.First;
  total := 0;

  while not TQuery.Eof do
  begin
    total := total + TQuery.FieldByName('VALOR').AsCurrency;
    TQuery.Next;
  end;

  FTotalRetiradas := total;

  result :=  total;

  FreeAndNil(TQuery);
end;

function TEntityCaixa.calcularValorCaixa: Currency;
var
  totalVendasOS: Currency;
  totalEmCaixa: Currency;
begin

  result := 0;

  totalVendasOS := (FTotalParcelasOS + FTotalParcelasVendas);
   //-(FTotalParcelasOSEstornadas + FTotalParcelasVendasEstornadas);

  totalEmCaixa := (totalVendasOS + FValorUltimoCaixa) - FTotalRetiradas;

  result := totalEmCaixa;

end;

constructor TEntityCaixa.create;
begin

  FQuery := TFDQuery.create(nil);
  FQuery.Connection := DataModule1.Conexao;
  FQuery.Active := false;
  FQuery.SQL.Clear;
  FQuery.SQL.Add('select * from CAIXA_ABER_FECH order by id desc');
  FQuery.Active := true;

//  FGravarLog := TGravarLogSistema.new;
//
//  FGravarLog.getJanela('Caixa')
//    .getCodigoFuncionario(funcionarioLogado);

end;

destructor TEntityCaixa.destroy;
begin

  FreeAndNil(FQuery);
  FreeAndNil(FQueryEncerramento);
  FreeAndNil(FQueryAbertura);
  FreeAndNil(FQueryUltimoCaixa);
  spCodigoCadastro.Free;

  inherited;
end;

procedure TEntityCaixa.encerrarCaixaManualmente(value: Currency);
begin

  FQueryEncerramento := TFDQuery.create(nil);
  FQueryEncerramento.Connection := DataModule1.Conexao;

  FQueryEncerramento.Active := false;
  FQueryEncerramento.SQL.Clear;
  FQueryEncerramento.SQL.Add
    ('select * from CAIXA_ABER_FECH where DATA_ABERTURA =:d and STATUS =:s');
  FQueryEncerramento.ParamByName('d').AsDateTime := date;
  FQueryEncerramento.ParamByName('s').AsString := 'aberto';
  FQueryEncerramento.Active := true;

  if application.MessageBox('Deseja realmente encerrar o caixa atual? ' +
    'Voc� n�o poder� Criar novas OS, Quitar OS, ralizar vendas e retirada de valores. ',
    'Perguna do sistema', MB_YESNO + MB_ICONQUESTION) = mrYes then
  begin
    try

      FQueryEncerramento.Edit;

      FQueryEncerramento.FieldByName('DATA_ENCERRAMENTO').AsDateTime := date;
      FQueryEncerramento.FieldByName('HORA_ENCERRAMENTO').AsDateTime := Time;
      FQueryEncerramento.FieldByName('FUNCIONARIO_ENCERRAMENTO').AsInteger :=funcionarioLogado;
      FQueryEncerramento.FieldByName('NOME_FUNCIONARIO_ENCERRAMENTO').AsString
        := NomeFuncionarioLogado;
      FQueryEncerramento.FieldByName('VALOR_ENCERRAMENTO').AsCurrency := value;
      FQueryEncerramento.FieldByName('STATUS').AsString := 'fechado';

      FQueryEncerramento.Post;
      showmessage('O caixa foi encerrado com sucesso!!!.');

//      FGravarLog.getNomeRegistro(' ').getCodigoRegistro(0).getOperacao('encerramento do caixa manualmente').gravarLog;

    except
      on e: exception do
      begin
        MessageDlg('ERRO. N�o foi poss�vel Encerrar o �ltimo caixa em aberto ' +
          e.Message, mtError, [mbOk], 0, mbOk);
      end;

    end;
  end;

end;

procedure TEntityCaixa.fecharCaixa(value: TDataSource);
begin

  FQueryEncerramento := TFDQuery.create(nil);
  FQueryEncerramento.Connection := DataModule1.Conexao;

  FQueryEncerramento.Active := false;
  FQueryEncerramento.SQL.Clear;
  FQueryEncerramento.SQL.Add
    ('select * from CAIXA_ABER_FECH where DATA_ABERTURA =:d');
  FQueryEncerramento.ParamByName('d').AsDateTime := FUltimaData;
  FQueryEncerramento.Active := true;

  try
    FQueryEncerramento.Edit;

    FQueryEncerramento.FieldByName('DATA_ENCERRAMENTO').AsDateTime := date;
    FQueryEncerramento.FieldByName('HORA_ENCERRAMENTO').AsDateTime := Time;
    FQueryEncerramento.FieldByName('FUNCIONARIO_ENCERRAMENTO').AsInteger :=
      funcionarioLogado;
    FQueryEncerramento.FieldByName('NOME_FUNCIONARIO_ENCERRAMENTO').AsString :=
      NomeFuncionarioLogado;
    FQueryEncerramento.FieldByName('VALOR_ENCERRAMENTO').AsCurrency :=
      calcularValorCaixa;
    FQueryEncerramento.FieldByName('STATUS').AsString := 'fechado';

    FQueryEncerramento.Post;
    showmessage('O caixa anterior foi encerrado automaticamente.');

    value.DataSet := FQueryEncerramento;

//    FGravarLog.getNomeRegistro(' ').getCodigoRegistro(0).getOperacao('encerramento do caixa').gravarLog;

  except
    on e: exception do
    begin
      MessageDlg('ERRO. N�o foi poss�vel Encerrar o �ltimo caixa em aberto ' +
        e.Message, mtError, [mbOk], 0, mbOk);
    end;

  end;

end;

function TEntityCaixa.gerarCodigo: integer;
begin

  spCodigoCadastro := TFDStoredProc.create(nil);
  spCodigoCadastro.Connection := DataModule1.Conexao;
  spCodigoCadastro.StoredProcName := 'SP_GEN_CAIXA_ABER_FECH_ID';
  spCodigoCadastro.Connection.Connected := true;
  spCodigoCadastro.Connection.DriverName := 'FB';

  spCodigoCadastro.StoredProcName := 'SP_GEN_CAIXA_ABER_FECH_ID';
  spCodigoCadastro.Prepare;

  if spCodigoCadastro.Prepared then
  begin
    spCodigoCadastro.Prepare;
    spCodigoCadastro.ExecProc;
    result := spCodigoCadastro.ParamByName('id').AsInteger;
  end;

end;

procedure TEntityCaixa.gravarInicioDoCaixa(value: Currency);
begin

  FQueryAbertura.FieldByName('ID').AsInteger := gerarCodigo;
  FQueryAbertura.FieldByName('DATA_ABERTURA').AsDateTime := date;
  FQueryAbertura.FieldByName('HORA_ABERTURA').AsDateTime := Time;
  FQueryAbertura.FieldByName('FUNCIONARIO_ABERTURA').AsInteger :=
    funcionarioLogado;
  FQueryAbertura.FieldByName('NOME_FUNCIONARIO_ABERTURA').AsString :=
    NomeFuncionarioLogado;
  FQueryAbertura.FieldByName('VALOR_ANTERIRO').AsCurrency := calcularValorCaixa;
  FQueryAbertura.FieldByName('VALOR_INFORMADO').AsCurrency := value;
  FQueryAbertura.FieldByName('STATUS').AsString := 'aberto';

  try

    FQueryAbertura.Post;

//    FQueryEncerramento.Refresh;

    showmessage('O caixa foi iniciado com sucesso!!!');

//    FGravarLog.getNomeRegistro(' ').getCodigoRegistro(0).getOperacao('abertura do caixa').gravarLog;

  except
    on e: exception do
    begin
      MessageDlg
        ('ERRO. N�o foi poss�vel Inciar um novo caixa. Voc� pode tentar realizar esta opera��o manualmente '
        + e.Message, mtError, [mbOk], 0, mbOk);
    end;

  end;
end;

procedure TEntityCaixa.infomarUltimaData(value: TDate);
begin

  FUltimaData := value;

end;

procedure TEntityCaixa.inicarCaixa(value: TDataSource);
begin

  FQueryAbertura := TFDQuery.create(nil);
  FQueryAbertura.Connection := DataModule1.Conexao;

  FQueryAbertura.Active := false;
  FQueryAbertura.SQL.Clear;
  FQueryAbertura.SQL.Add('select * from CAIXA_ABER_FECH');
  FQueryAbertura.Active := true;

  value.DataSet := FQueryAbertura;

  FQueryAbertura.Insert;

end;

procedure TEntityCaixa.iniciarCaixaManulamente(valor_anterior, valor_informado:string);
begin

  FQuery.Active := true;
  FQuery.Append;

  FQuery.FieldByName('ID').AsInteger := gerarCodigo;
  FQuery.FieldByName('DATA_ABERTURA').AsDateTime := date;
  FQuery.FieldByName('HORA_ABERTURA').AsDateTime := Time;
  FQuery.FieldByName('FUNCIONARIO_ABERTURA').AsInteger := funcionarioLogado;
  FQuery.FieldByName('NOME_FUNCIONARIO_ABERTURA').AsString := NomeFuncionarioLogado;
  FQuery.FieldByName('VALOR_ANTERIRO').AsCurrency := StrToCurr(valor_anterior);
  FQuery.FieldByName('VALOR_INFORMADO').AsCurrency := StrToCurr(valor_informado);
  FQuery.FieldByName('STATUS').AsString := 'aberto';

  try
    FQuery.Post;
    ShowMessage('Caixa aberto com sucesso!');
  except on e:exception do
  begin
    raise Exception.Create('ERRO! N�o foi poss�vel abrir o caixa. Erro: '+e.Message);
  end;

  end;


end;

function TEntityCaixa.obertUltimoValorDoCaixaFechado(value: TDataSource)
  : Currency;
begin

  FQueryUltimoCaixa := TFDQuery.create(nil);
  FQueryUltimoCaixa.Connection := DataModule1.Conexao;

  FQueryUltimoCaixa.Active := false;
  FQueryUltimoCaixa.SQL.Clear;
  FQueryUltimoCaixa.SQL.Add('select * from CAIXA_ABER_FECH order by id desc');
  FQueryUltimoCaixa.Active := true;

  result := FQueryUltimoCaixa.FieldByName('VALOR_ENCERRAMENTO').AsCurrency;

  value.DataSet := FQueryUltimoCaixa;

end;

procedure TEntityCaixa.reabrirCaixa(value:Currency);
begin

  FQueryAbertura := TFDQuery.Create(nil);
  FQueryAbertura.Connection := DataModule1.Conexao;

  FQueryAbertura.Active := false;
  FQueryAbertura.SQL.Clear;
  FQueryAbertura.SQL.Add   ('select * from CAIXA_ABER_FECH where DATA_ABERTURA =:d order by id desc');
  FQueryAbertura.ParamByName('d').AsDateTime := date;
  FQueryAbertura.Active := true;

  if application.MessageBox('Deseja realmente Reabrir o caixa atual?',
    'Perguna do sistema', MB_YESNO + MB_ICONQUESTION) = mrYes then
  begin
    try
      FQueryAbertura.Edit;

      FQueryAbertura.FieldByName('DATA_ENCERRAMENTO').AsDateTime := date;
      FQueryAbertura.FieldByName('HORA_ENCERRAMENTO').AsDateTime := Time;
      FQueryAbertura.FieldByName('FUNCIONARIO_ENCERRAMENTO').AsInteger :=funcionarioLogado;
      FQueryAbertura.FieldByName('NOME_FUNCIONARIO_ENCERRAMENTO').AsString
        := NomeFuncionarioLogado;
      FQueryAbertura.FieldByName('VALOR_ENCERRAMENTO').AsCurrency := value;
      FQueryAbertura.FieldByName('STATUS').AsString := 'aberto';

      FQueryAbertura.Post;
      showmessage('O caixa foi Reaberto com sucesso!!!.');

//      FGravarLog.getNomeRegistro(' ').getCodigoRegistro(0).getOperacao('reabertura do caixa').gravarLog;

    except
      on e: exception do
      begin
        MessageDlg('ERRO. N�o foi poss�vel Reabrir o caixa ' +
          e.Message, mtError, [mbOk], 0, mbOk);
      end;

    end;
  end;

end;

function TEntityCaixa.retornarEstadoCaixa: string;
begin

  FQuery.Active := false;
  FQuery.SQL.Clear;
  FQuery.SQL.Add('select * from CAIXA_ABER_FECH order by id desc');
  FQuery.Active := true;

  result := FQuery.FieldByName('STATUS').AsString;

end;

function TEntityCaixa.retornarNomeFuncionario: string;
begin
  result := NomeFuncionarioLogado;
end;

function TEntityCaixa.retornarNomeFuncionarioLogado: string;
begin
  result := NomeFuncionarioLogado;
end;

function TEntityCaixa.ultimoValorDoCaixa: Currency;
begin
  result := FValorUltimoCaixa;
end;

function TEntityCaixa.valorCaixaEmAberto: Currency;
begin

  if FQuery.FieldByName('VALOR_INFORMADO').AsCurrency <> 0 then
  begin
    result := FQuery.FieldByName('VALOR_INFORMADO').AsCurrency;
  end
  else
  begin
    result := 0;
  end;

end;

function TEntityCaixa.valorCaixaFechado: Currency;
begin

  if FQuery.FieldByName('VALOR_ENCERRAMENTO').AsCurrency <> 0 then
  begin
    result := FQuery.FieldByName('VALOR_ENCERRAMENTO').AsCurrency;
  end
  else
  begin
    result := 0;
  end;

end;

function TEntityCaixa.verificarSituacaoCaixa: string;
begin

  if FQuery.RecordCount = 0 then
  begin // se for a primeira vez que o caixa esta iniciando
    result := 'nao foi iniciado';
    FUltimaData := date;
  end
  else if ((FQuery.FieldByName('DATA_ABERTURA').AsDateTime = date) and
    (FQuery.FieldByName('STATUS').AsString = 'aberto')) then
  begin // Se o caixa esta em atividade. Foi iniciado no memos dia
    result := 'aberto';
    FUltimaData := FQuery.FieldByName('DATA_ABERTURA').AsDateTime;
    FValorUltimoCaixa := FQuery.FieldByName('VALOR_INFORMADO').AsCurrency;
  end
  else if ((FQuery.FieldByName('DATA_ABERTURA').AsDateTime <> date) and
    (FQuery.FieldByName('STATUS').AsString = 'aberto')) then
  begin // Caso o caixa esteja aberto, mas n�o foi encerrado no dia anterior
    result := 'encerrar caixa anterior';
    FUltimaData := FQuery.FieldByName('DATA_ABERTURA').AsDateTime;
    FValorUltimoCaixa := FQuery.FieldByName('VALOR_INFORMADO').AsCurrency;
  end
  else if ((FQuery.FieldByName('DATA_ENCERRAMENTO').AsDateTime = date) and
    (FQuery.FieldByName('STATUS').AsString = 'fechado')) then
  begin // O caixa foi encerrado no dia atual
    result := 'fechado';
    FUltimaData := FQuery.FieldByName('DATA_ENCERRAMENTO').AsDateTime;
    FValorUltimoCaixa := FQuery.FieldByName('VALOR_ENCERRAMENTO').AsCurrency;
  end
  else if ((FQuery.FieldByName('DATA_ENCERRAMENTO').AsDateTime <> date) and
    (FQuery.FieldByName('STATUS').AsString = 'fechado')) then
  begin // O caixa foi encerrado no dia anterior e esta pronto para ser inciado novamente
    result := 'iniciar novo caixa';
    FUltimaData := FQuery.FieldByName('DATA_ENCERRAMENTO').AsDateTime;
    FValorUltimoCaixa := FQuery.FieldByName('VALOR_ENCERRAMENTO').AsCurrency;
  end

end;

end.
