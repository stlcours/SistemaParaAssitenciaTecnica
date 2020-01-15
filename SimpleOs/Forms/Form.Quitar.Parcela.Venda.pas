unit Form.Quitar.Parcela.Venda;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Buttons, Vcl.ExtCtrls,
  Data.DB, Vcl.Grids, Vcl.DBGrids, UInterfaces,
  UClasse.Entity.Quitar.Parcelas.Vendas, Vcl.DBCtrls, Vcl.Mask, UFactory;

type
  TEnumPesquisar = (Parcela, Venda, codigo_cliente);

type
  TformQuitarParcelasVendas = class(TForm)
    Panel1: TPanel;
    sbFechar: TSpeedButton;
    lblCaption: TLabel;
    Panel3: TPanel;
    sbQuitarParela: TSpeedButton;
    sbEstornar: TSpeedButton;
    sbAdicionarParcela: TSpeedButton;
    sbSalvar: TSpeedButton;
    sbExcluir: TSpeedButton;
    Label4: TLabel;
    Label5: TLabel;
    cbPesquisar: TComboBox;
    edtPesquisar: TEdit;
    sbCancelar: TSpeedButton;
    sbImprimirParcelas: TSpeedButton;
    sbExportar: TSpeedButton;
    sbImprimir: TSpeedButton;
    DBGrid1: TDBGrid;
    DataSource1: TDataSource;
    edtTotalDeParcelas: TEdit;
    Label1: TLabel;
    edtParcelaSelecionada: TEdit;
    Label2: TLabel;
    edtValorDaParcela: TEdit;
    Label3: TLabel;
    Label6: TLabel;
    edtJuros: TEdit;
    Label7: TLabel;
    edtMulta: TEdit;
    Label8: TLabel;
    edtDesconto: TEdit;
    Label9: TLabel;
    edtTotalAPagar: TEdit;
    Label10: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    edtPago: TEdit;
    Label13: TLabel;
    DBNavigator1: TDBNavigator;
    edtDataDeVencimento: TMaskEdit;
    edtFormaDePagamento: TComboBox;
    edtDataDePagamento: TMaskEdit;
    procedure sbFecharClick(Sender: TObject);
    procedure Panel1MouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure DataSource1DataChange(Sender: TObject; Field: TField);
    procedure edtPesquisarKeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DBGrid1CellClick(Column: TColumn);
    procedure sbQuitarParelaClick(Sender: TObject);
    procedure DBGrid1DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure sbEstornarClick(Sender: TObject);
    procedure sbAdicionarParcelaClick(Sender: TObject);
    procedure sbSalvarClick(Sender: TObject);
  private
    { Private declarations }
    procedure ativarBotoes;
    procedure desativarBotoes;

  var
    FentityVisulizarParcelasVenda: iQuitarParcelasVenda;
    FCodigoVenda: Integer;
    FCodigoCliente: Integer;
    FQuantidadeParcelas: Integer;
    FParcela: Integer;
    FvalorVenda: Currency;
    FValorDaParcela: Currency;
    FDataVencimento: TDate;

  public
    { Public declarations }
  end;

var
  formQuitarParcelasVendas: TformQuitarParcelasVendas;

implementation

{$R *.dfm}

procedure TformQuitarParcelasVendas.DataSource1DataChange(Sender: TObject;
  Field: TField);
begin
  with DataSource1.DataSet do
  begin
    edtTotalDeParcelas.Text := IntToStr(FieldByName('QUANTIDADE_PARCELAS')
      .AsInteger);
    edtParcelaSelecionada.Text := IntToStr(FieldByName('PARCELA').AsInteger);
    edtValorDaParcela.Text := CurrToStr(FieldByName('VALOR_DA_PARCELA')
      .AsCurrency);
    edtDataDeVencimento.Text := DateToStr(FieldByName('DATA_VENCIMENTO')
      .AsDateTime);
    edtJuros.Text := FloatToStr(FieldByName('JUROS').AsFloat);
    edtMulta.Text := CurrToStr(FieldByName('MULTA').AsCurrency);
    edtDesconto.Text := CurrToStr(FieldByName('DESCONTO').AsCurrency);
    edtTotalAPagar.Text := CurrToStr(FieldByName('TOTAL').AsCurrency);
    edtFormaDePagamento.Text := FieldByName('forma_pagamento').AsString;
    edtPago.Text := FieldByName('PAGO').AsString;

    if DataSource1.DataSet.FieldByName('DATA_PAGAMENTO').AsDateTime <>
      StrToDate('30/12/1899') then
      edtDataDePagamento.Text :=
        DateToStr(FieldByName('DATA_PAGAMENTO').AsDateTime);

  end;
end;

procedure TformQuitarParcelasVendas.DBGrid1CellClick(Column: TColumn);
begin
  if DataSource1.DataSet.RecordCount >= 1 then
  begin

    ativarBotoes;

    if DataSource1.DataSet.FieldByName('PAGO').AsString = 'n�o' then
    begin
      sbQuitarParela.Enabled := true;

      edtTotalAPagar.Text := FentityVisulizarParcelasVenda.CalcularJuros;
      FentityVisulizarParcelasVenda.setJuros(edtJuros).setMulta(edtMulta);

    end
    else
    begin
      desativarBotoes;
    end;
  end
  else
  begin
    desativarBotoes;
  end;
end;

procedure TformQuitarParcelasVendas.DBGrid1DrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
begin
  if FentityVisulizarParcelasVenda.tableQuery.FieldByName('PAGO').AsString = 'sim'
  then
  begin
    DBGrid1.Canvas.Brush.Color := $00BD9111;
    DBGrid1.Canvas.Font.Color := clwhite;
  end

  else if ((FentityVisulizarParcelasVenda.tableQuery.FieldByName('PAGO')
    .AsString = 'n�o') and (FentityVisulizarParcelasVenda.tableQuery.FieldByName
    ('DATA_VENCIMENTO').AsDateTime >= date)) then
  begin
    DBGrid1.Canvas.Brush.Color := $0068BD05;
    DBGrid1.Canvas.Font.Color := clwhite;
  end

  else if FentityVisulizarParcelasVenda.tableQuery.FieldByName('PAGO')
    .AsString = 'estornado' then
  begin
    DBGrid1.Canvas.Brush.Color := $00C4C4C4;
    DBGrid1.Canvas.Font.Color := clwhite
  end

  else if ((FentityVisulizarParcelasVenda.tableQuery.FieldByName('PAGO')
    .AsString = 'n�o') and (FentityVisulizarParcelasVenda.tableQuery.FieldByName
    ('DATA_VENCIMENTO').AsDateTime < date)) then
  begin
    DBGrid1.Canvas.Brush.Color := $003444D1;
    DBGrid1.Canvas.Font.Color := clwhite
  end;

  DBGrid1.DefaultDrawColumnCell(Rect, DataCol, Column, State);
end;

procedure TformQuitarParcelasVendas.edtPesquisarKeyUp(Sender: TObject;
  var Key: Word; Shift: TShiftState);
var
  FCampo: string;
begin

  case TEnumPesquisar(cbPesquisar.ItemIndex) of
    Parcela:
      begin
        FCampo := 'ID_PARCELA';
      end;
    Venda:
      begin
        FCampo := 'ID_VENDA';
      end;
    codigo_cliente:
      begin
        FCampo := 'ID_CLIENTE';
      end;
  end;

  if edtPesquisar.Text <> EmptyStr then
    FentityVisulizarParcelasVenda.getCampo(FCampo).getValor(edtPesquisar.Text)
      .sqlPesquisa.listarGrid(DataSource1);

end;

procedure TformQuitarParcelasVendas.FormCreate(Sender: TObject);
begin
  FentityVisulizarParcelasVenda := TEntityQuitarParcelaVenda.new;
end;

procedure TformQuitarParcelasVendas.FormShow(Sender: TObject);
begin

  FentityVisulizarParcelasVenda.abrir.listarGrid(DataSource1);
  TFactory.new.ftTable.FD_Table('FORMAS_PAGAMENTO')
    .getCampoTabela('FORMA_PAGAMENTO').popularComponenteComboBox
    (edtFormaDePagamento);

  cbPesquisar.ItemIndex := 0;

end;

procedure TformQuitarParcelasVendas.Panel1MouseDown(Sender: TObject;
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

procedure TformQuitarParcelasVendas.sbAdicionarParcelaClick(Sender: TObject);
var
   totalDeParcelas:integer;
begin

  totalDeParcelas := FentityVisulizarParcelasVenda.
        retornarTotalDeParcelas(DataSource1.DataSet.FieldByName('ID_VENDA').AsInteger) + 1;

  FCodigoVenda := DataSource1.DataSet.FieldByName('ID_VENDA').AsInteger;
  FCodigoCliente := DataSource1.DataSet.FieldByName('ID_CLIENTE').AsInteger;
  FQuantidadeParcelas := totalDeParcelas;
  FParcela := totalDeParcelas;
  FvalorVenda := DataSource1.DataSet.FieldByName('VALOR_VENDA').AsCurrency;

  lblCaption.Caption := lblCaption.Caption + ' Inserindo parcela';

end;

procedure TformQuitarParcelasVendas.sbEstornarClick(Sender: TObject);
begin
  if DataSource1.DataSet.FieldByName('PAGO').AsString = 'sim' then
  begin
    FentityVisulizarParcelasVenda.estornarParcela
      (DataSource1.DataSet.FieldByName('ID_PARCELA').AsInteger).atualizar;
  end;
end;

procedure TformQuitarParcelasVendas.sbFecharClick(Sender: TObject);
begin
  Close;
end;

procedure TformQuitarParcelasVendas.sbQuitarParelaClick(Sender: TObject);
begin
  if DataSource1.DataSet.FieldByName('ID_VENDA').AsInteger <> 0 then
  begin
    FentityVisulizarParcelasVenda.getCodigoParcela
      (DataSource1.DataSet.FieldByName('ID_PARCELA').AsInteger)
      .getDesconto(edtDesconto.Text).getJuros(edtJuros.Text)
      .getDataPagamento(edtDataDePagamento.Text).getTOTAL(edtTotalAPagar.Text)
      .getFormaPagamento(edtFormaDePagamento.Text).selecionarParcelaQuitar
      (DataSource1.DataSet.FieldByName('ID_PARCELA').AsInteger)
      .quitarParcela.atualizar;

    showmessage('Parcela quitada com sucesso');

    if application.MessageBox('Deseja imprimir o comprovante de pagamento?',
      'Pergunta do sistema', MB_YESNO + MB_ICONQUESTION) = mryes then
    begin
      { realizar o processo para impress�o do comprovante de pagamento }
    end;

  end;
end;

procedure TformQuitarParcelasVendas.sbSalvarClick(Sender: TObject);
begin

  FDataVencimento := StrToDate(edtDataDeVencimento.Text);
  FValorDaParcela := StrToCurr(edtValorDaParcela.Text);

  FentityVisulizarParcelasVenda.getID_VENDA(FCodigoVenda)
          .getID_CLIENTE(FCodigoCliente)
          .getQUANTIDADE_PARCELAS(FQuantidadeParcelas)
          .getPARCELA(FParcela)
          .getVALOR_VENDA(CurrToStr(FvalorVenda))
          .getVALOR_DA_PARCELA(edtValorDaParcela.Text)
          .getDATA_VENCIMENTO(edtDataDeVencimento.Text)
          .prepararAdicionarParcela
          .atualizar;

  lblCaption.Caption := 'Ver parcelas das vendas realizadas';

end;

procedure TformQuitarParcelasVendas.ativarBotoes;
begin
  sbAdicionarParcela.Enabled := true;
  sbCancelar.Enabled := true;
  sbExcluir.Enabled := true;
  sbImprimirParcelas.Enabled := true;
  sbExportar.Enabled := true;
  sbImprimir.Enabled := true;
end;

procedure TformQuitarParcelasVendas.desativarBotoes;
begin
  sbQuitarParela.Enabled := false;
  sbAdicionarParcela.Enabled := false;
  sbCancelar.Enabled := false;
  sbExcluir.Enabled := false;
  sbImprimirParcelas.Enabled := false;
  sbExportar.Enabled := false;
  sbImprimir.Enabled := false;
end;

end.
