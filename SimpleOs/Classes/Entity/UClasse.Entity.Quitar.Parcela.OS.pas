unit UClasse.Entity.Quitar.Parcela.OS;

interface

uses UClasse.Query, UInterfaces, UDados.Conexao, Data.DB, Vcl.Dialogs,
  System.SysUtils, Vcl.Forms, Winapi.Windows, Vcl.Controls,
  UClasse.Gravar.Log.Sistema, Vcl.ComCtrls, Vcl.DBGrids, Vcl.Mask,
  UClasse.DiasMeses, Vcl.StdCtrls;

type

  TEntityQuitarParcelaOS = class(TInterfacedObject, iQuitarParcelaOS)
  private

    FQuery: iConexaoQuery;
    FQueryConfigPacelas:iConexaoQuery;
    FGravarLog: iGravarLogOperacoes;
    FCalularDiferencaDiasMes:TCalcularDiaMeses;
    FTabela: string;
    FCampo: string;
    FValor: string;
    FDataInicial: TDate;
    FDataFinal: TDate;

    F_JurosPorAtraso:Real;
    F_MultaPorAtraso:Currency;
    FtotalAPagar:Currency;

    FJurosParcela:Currency;
    FMultaParcela:Currency;

    FDESCONTO: Currency;
    FJUROS:Currency;
    FMULTA:Currency;
    FVALOR_TOTAL:Currency;
    FDATA_PAGAMENTO:TDate;
    FHORA_PAGAMENTO:TTime;
    FFORMA_PAGAMENTO:String;
    FPGTO:String;


    FCodigo: integer;
    FNome: string;

  public

    function nomeTabela(value: string): iQuitarParcelaOS;
    function getCampo(value: string): iQuitarParcelaOS;
    function getValor(value: string): iQuitarParcelaOS;
    function getDataInicial(value: TDate): iQuitarParcelaOS;
    function getDataFinal(value: TDate): iQuitarParcelaOS;
    function open(value: string): iQuitarParcelaOS;
    function pesquisar: iQuitarParcelaOS;
    function ExecSql: iQuitarParcelaOS;
    function sqlPesquisa: iQuitarParcelaOS;
    function sqlPesquisaData: iQuitarParcelaOS;
    function sqlPesquisaEstatica: iQuitarParcelaOS;

    function abrir: iQuitarParcelaOS;
    function atualizar: iQuitarParcelaOS;
    function fecharQuery: iQuitarParcelaOS;
    function listarGrid(value: TDataSource): iQuitarParcelaOS;
    function ordenarGrid(column: TColumn): iQuitarParcelaOS;

    function CalularPagamento:iQuitarParcelaOS;
    function setTotalParcela(value:TEdit):iQuitarParcelaOS;
    function setTotalJurosParcela(value:TEdit):iQuitarParcelaOS;
    function setTotalMultaParcela(value:TEdit):iQuitarParcelaOS;

    function getDESCONTO(value:string):iQuitarParcelaOS;
    function getJUROS(value:string):iQuitarParcelaOS;
    function getMULTA(value:string):iQuitarParcelaOS;
    function getVALOR_TOTAL(value:string):iQuitarParcelaOS;
    function getDATA_PAGAMENTO(value:string):iQuitarParcelaOS;
    function getHORA_PAGAMENTO(value:string):iQuitarParcelaOS;
    function getFORMA_PAGAMENTO(value:string):iQuitarParcelaOS;
    function getPGTO(value:string):iQuitarParcelaOS;

    function selecionarParcelaQuitar(value:integer):iquitarParcelaOS;

    function exportar: iQuitarParcelaOS;
    function validarData(componet: tmaskEdit):iQuitarParcelaOS;

    constructor create;
    destructor destroy; override;
    class function new: iQuitarParcelaOS;
  end;

implementation

{ TEntityQuitarParcelaOS }

function TEntityQuitarParcelaOS.abrir: iQuitarParcelaOS;
begin

  result := self;
  FQuery.Query(FTabela);

end;

function TEntityQuitarParcelaOS.atualizar: iQuitarParcelaOS;
begin
  result := self;
  FQuery.TQuery.Refresh;
end;

constructor TEntityQuitarParcelaOS.create;
begin
  FTabela := 'VISUALIZAR_PARCELAS_OS';
  FQuery := TConexaoQuery.new.Query(FTabela);

  FGravarLog := TGravarLogSistema.new;
  FGravarLog.getJanela('Quitar parcela OS').getCodigoFuncionario
    (funcionarioLogado);

  FCalularDiferencaDiasMes := TCalcularDiaMeses.Create;

  FQueryConfigPacelas := TConexaoQuery.new.Query('CONFIGURAR_PARCELA');

  F_JurosPorAtraso := FQueryConfigPacelas.TQuery.FieldByName('JUROS').AsFloat;
  F_MultaPorAtraso := FQueryConfigPacelas.TQuery.FieldByName('MULTA').AsCurrency;


end;

destructor TEntityQuitarParcelaOS.destroy;
begin
  FreeAndNil(FCalularDiferencaDiasMes);
  inherited;
end;

function TEntityQuitarParcelaOS.ExecSql: iQuitarParcelaOS;
begin
  result := self;
  FQuery.ExecSql(FTabela);
end;

function TEntityQuitarParcelaOS.exportar: iQuitarParcelaOS;
begin
  result := self;
end;

function TEntityQuitarParcelaOS.CalularPagamento: iQuitarParcelaOS;
var
  periodo: integer;
  total: Currency;
  valorParcela: Currency;
  totalJuros: Currency;
begin

  result := self;
  valorParcela := FQuery.TQuery.FieldByName('VALOR_PARCELA').AsCurrency;

   if   date > FQuery.TQuery.FieldByName('DATA_VENCIMENTO').AsDateTime then
   begin

    periodo := FCalularDiferencaDiasMes.DifDiasMeses
      (FQuery.TQuery.FieldByName('DATA_VENCIMENTO').AsDateTime, date);

    if periodo >= 1 then
    begin
      total := valorParcela * (F_JurosPorAtraso / 100);
      total := valorParcela + (total * periodo);
      totalJuros := total - valorParcela;
    end
    else if periodo = 0 then
    begin
      total := valorParcela * (F_JurosPorAtraso / 100);
      total := valorParcela + (total * 1);
      totalJuros := total - valorParcela;
    end;

    FJurosParcela := totalJuros;
    FMultaParcela := F_MultaPorAtraso;

    FtotalAPagar := totalJuros + F_MultaPorAtraso + valorParcela;

  end
  else
  begin

    FJurosParcela := 0;
    FMultaParcela := 0;

    FtotalAPagar := valorParcela;

  end;


end;

function TEntityQuitarParcelaOS.fecharQuery: iQuitarParcelaOS;
begin
  FQuery.TQuery.close;
end;

function TEntityQuitarParcelaOS.getCampo(value: string): iQuitarParcelaOS;
begin
  result := self;
  FCampo := value;
end;

function TEntityQuitarParcelaOS.getDataFinal(value: TDate): iQuitarParcelaOS;
begin
  result := self;
  FDataFinal := value;
  // FQuery.getDataFinal(value);
end;

function TEntityQuitarParcelaOS.getDataInicial(value: TDate): iQuitarParcelaOS;
begin
  result := self;
  FDataInicial := value;
  // FQuery.getDataInicial(value);
end;

function TEntityQuitarParcelaOS.getDATA_PAGAMENTO(
  value: string): iQuitarParcelaOS;
begin
   result := self;

  try
    FDATA_PAGAMENTO := StrToDate(value);
  except on e:exception do
  begin
    MessageDlg('ERRO. Insira uma data v�lida.'+e.Message, mtError, [mbOk], 0, mbOk);
  end;

  end;


end;

function TEntityQuitarParcelaOS.getDESCONTO(value: string): iQuitarParcelaOS;
begin

  result := self;

  try
    FDESCONTO := StrToCurr(value);
  except on e:exception do
  begin
    MessageDlg('ERRO. Informe um valor de desconto v�lido.'+e.Message, mtError, [mbOk], 0, mbOk);
  end;

  end;

end;

function TEntityQuitarParcelaOS.getFORMA_PAGAMENTO(
  value: string): iQuitarParcelaOS;
begin

  result := self;

  if value = EmptyStr then
  begin
    MessageDlg('ERRO. Informe a forma de pagamento da parcela.', mtError, [mbOk], 0, mbOk);
    abort;
  end;


end;

function TEntityQuitarParcelaOS.getHORA_PAGAMENTO(
  value: string): iQuitarParcelaOS;
begin

  result := self;

  try
    FHORA_PAGAMENTO := StrToTime(value);
  except on e:exception do
  begin
    MessageDlg('ERRO. Insrira um hor�rio de pagamento v�lido.'+e.Message, mtError, [mbOk], 0, mbOk);
  end;

  end;

end;

function TEntityQuitarParcelaOS.getJUROS(value: string): iQuitarParcelaOS;
begin

  result := self;

  try
    FJUROS := StrToCurr(value);
  except on e:exception do
  begin
    MessageDlg('ERRO. Informe um valor de juros v�lido.'+e.Message, mtError, [mbOk], 0, mbOk);
  end;

  end;


end;

function TEntityQuitarParcelaOS.getMULTA(value: string): iQuitarParcelaOS;
begin

  result := self;

  try
    FMULTA := StrToCurr(value);
  except on e:exception do
  begin
    MessageDlg('ERRO. Informe um valor para a multa v�lido.'+e.Message, mtError, [mbOk], 0, mbOk);
  end;

  end;

end;

function TEntityQuitarParcelaOS.getPGTO(value: string): iQuitarParcelaOS;
begin

  result := self;

  FPGTO := 'Sim';


end;

function TEntityQuitarParcelaOS.getValor(value: string): iQuitarParcelaOS;
begin
  result := self;
  FValor := UpperCase(value);
end;

function TEntityQuitarParcelaOS.getVALOR_TOTAL(value: string): iQuitarParcelaOS;
begin

end;

function TEntityQuitarParcelaOS.listarGrid(value: TDataSource): iQuitarParcelaOS;
begin

  result := self;

  with FQuery.TQuery do
  begin

    FieldByName('ID_PARCELA').DisplayLabel := 'Parcela';
    FieldByName('ID_ORDEM').DisplayLabel := 'OS';
    FieldByName('ID_CLIENTE').DisplayLabel := 'C�d. Cliente';
    FieldByName('CLIENTE').DisplayLabel := 'Cliente';
    FieldByName('TOTAL_PARCELAS').DisplayLabel := 'Total de parcelas';
    FieldByName('PARCELA').DisplayLabel := 'Parcela';
    FieldByName('VALOR_PARCELA').DisplayLabel := 'Valor da parcela';
    FieldByName('DATA_VENCIMENTO').DisplayLabel := 'Vencimento';
    FieldByName('DESCONTO').DisplayLabel := 'Desconto';
    FieldByName('JUROS').DisplayLabel := 'Juros';
    FieldByName('MULTA').DisplayLabel := 'Multa';
    FieldByName('VALOR_TOTAL').DisplayLabel := 'Valor total';
    FieldByName('DATA_PAGAMENTO').DisplayLabel := 'Data de pagamento';
    FieldByName('HORA_PAGAMENTO').DisplayLabel := 'Hor�rio de pagamento';
    FieldByName('FORMA_PAGAMENTO').DisplayLabel := 'Forma de pagamento';
    FieldByName('PGTO').DisplayLabel := 'Pago';
    FieldByName('ID_FUNCIONARIO').DisplayLabel := 'C�d. Funcion�rio';
    FieldByName('NOME_FUNCIONARIO').DisplayLabel := 'Nome do funcion�rio';
    FieldByName('OBSERVACAO').DisplayLabel := 'Observa��o';

    FieldByName('CLIENTE').DisplayWidth := 40;
    FieldByName('NOME_FUNCIONARIO').DisplayWidth := 40;
    FieldByName('OBSERVACAO').DisplayWidth := 40;

  end;

  value.DataSet := FQuery.TQuery;

end;

class function TEntityQuitarParcelaOS.new: iQuitarParcelaOS;
begin
  result := self.create;
end;

function TEntityQuitarParcelaOS.nomeTabela(value: string): iQuitarParcelaOS;
begin
  result := self;
  FTabela := value;
end;

function TEntityQuitarParcelaOS.open(value: string): iQuitarParcelaOS;
begin
  FQuery.Query(FTabela);
end;

function TEntityQuitarParcelaOS.ordenarGrid(column: TColumn): iQuitarParcelaOS;
begin

  if FQuery.TQuery.IndexFieldNames = column.FieldName then
    FQuery.TQuery.IndexFieldNames := column.FieldName + ':D'
  else
    FQuery.TQuery.IndexFieldNames := column.FieldName;

end;

function TEntityQuitarParcelaOS.pesquisar: iQuitarParcelaOS;
begin
  result := self;
end;

function TEntityQuitarParcelaOS.selecionarParcelaQuitar(
  value: integer): iquitarParcelaOS;
var
   FQueryParcelaOS:iConexaoQuery;
begin

  FQueryParcelaOS := TConexaoQuery.new.Query('PARCELAS_ORDEM');

  FQueryParcelaOS.TQuery.Active := false;
  FQueryParcelaOS.TQuery.SQL.Clear;
  FQueryParcelaOS.TQuery.SQL.Add('select * from PARCELAS_ORDEM where ID =:i');
  FQueryParcelaOS.TQuery.ParamByName('i').AsInteger := value;
  FQueryParcelaOS.TQuery.Active := true;

  if FQueryParcelaOS.TQuery.RecordCount >= 1 then
  begin

    FQueryParcelaOS.TQuery.Edit;

    FQueryParcelaOS.TQuery.FieldByName('DESCONTO').AsCurrency := FDESCONTO;
    FQueryParcelaOS.TQuery.FieldByName('JUROS').AsCurrency := FJUROS;
    FQueryParcelaOS.TQuery.FieldByName('MULTA').AsCurrency := FMULTA;
    FQueryParcelaOS.TQuery.FieldByName('VALOR_TOTAL').AsCurrency := FVALOR_TOTAL;
    FQueryParcelaOS.TQuery.FieldByName('DATA_PAGAMENTO').AsDateTime := FDATA_PAGAMENTO;
    FQueryParcelaOS.TQuery.FieldByName('HORA_PAGAMENTO').AsDateTime := FHORA_PAGAMENTO;
    FQueryParcelaOS.TQuery.FieldByName('FORMA_PAGAMENTO').AsString := FFORMA_PAGAMENTO;
    FQueryParcelaOS.TQuery.FieldByName('PGTO').AsString := FPGTO;

    try
      FQueryParcelaOS.TQuery.Post;
      showmessage('Parcela quitada com sucesso!!!');
    except on e:exception do
    begin
      MessageDlg('ERRO. Ocorreu um erro ao tentar quitar esta parcela. '+e.Message, mtError, [mbOk], 0, mbOk);
    end;

    end;


  end;

end;

function TEntityQuitarParcelaOS.setTotalJurosParcela(
  value: TEdit): iQuitarParcelaOS;
begin
  result := self;
  value.Text := CurrToStr(FJurosParcela);
end;

function TEntityQuitarParcelaOS.setTotalMultaParcela(
  value: TEdit): iQuitarParcelaOS;
begin
  result := self;
  value.Text := CurrToStr(FMultaParcela);
end;

function TEntityQuitarParcelaOS.setTotalParcela(value: TEdit): iQuitarParcelaOS;
begin
  result := self;
  value.Text := CurrToStr(FtotalAPagar)
end;

function TEntityQuitarParcelaOS.sqlPesquisa: iQuitarParcelaOS;
begin
  result := self;
  FQuery.getCampo(FCampo).getValor(FValor).sqlPesquisa(FTabela);
end;

function TEntityQuitarParcelaOS.sqlPesquisaData: iQuitarParcelaOS;
begin
  result := self;
  FQuery.getCampo(FCampo).getValor(FValor).getDataInicial(FDataInicial)
    .getDataFinal(FDataFinal).sqlPesquisaData(FTabela);
end;

function TEntityQuitarParcelaOS.sqlPesquisaEstatica: iQuitarParcelaOS;
begin
  result := self;
  FQuery.getCampo(FCampo).getValor(FValor).getDataInicial(FDataInicial)
    .getDataFinal(FDataFinal).sqlPesquisaEstatica(FTabela);
end;

function TEntityQuitarParcelaOS.validarData(componet: tmaskEdit):iQuitarParcelaOS;
var
  d: TDate;
begin

  result := self;

  try
    d := strtodate(componet.Text);
  except
    componet.SetFocus;
    componet.Clear;
    raise exception.create('Digite uma data v�lida.');
  end;
end;

end.
