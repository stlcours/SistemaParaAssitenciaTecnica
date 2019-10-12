unit Form.Cadastro.Contas.APagar;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, UForm.Exemplo.Embeded, Data.DB,
  Vcl.Menus, Vcl.Grids, Vcl.DBGrids, Vcl.WinXPanels, Vcl.StdCtrls, Vcl.Buttons,
  Vcl.ExtCtrls, Vcl.Imaging.pngimage, UInterfaces, UClasse.Entity.Contas.APagar,
  Vcl.Mask;

type
  TformCadastroContasAPagar = class(TformExemploEmbeded)
    DataSource1: TDataSource;
    edtCodigo: TEdit;
    Label1: TLabel;
    edtConta: TEdit;
    edtValorConta: TEdit;
    Label2: TLabel;
    edtDataVencimento: TMaskEdit;
    Label3: TLabel;
    Label6: TLabel;
    edtJuros: TEdit;
    Label7: TLabel;
    edtMulta: TEdit;
    Label8: TLabel;
    edtDesconto: TEdit;
    Label9: TLabel;
    edtValorTotal: TEdit;
    Label10: TLabel;
    Label11: TLabel;
    edtDataPagamento: TMaskEdit;
    Label12: TLabel;
    edtFuncionario: TEdit;
    Label13: TLabel;
    edtObservacao: TEdit;
    Label14: TLabel;
    edtPgto: TComboBox;
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure DataSource1DataChange(Sender: TObject; Field: TField);
    procedure sbNovoClick(Sender: TObject);
    procedure sbSalvarClick(Sender: TObject);
    procedure sbEditarClick(Sender: TObject);
    procedure sbExcluirClick(Sender: TObject);
    procedure sbCancelarClick(Sender: TObject);
    procedure DBGrid1TitleClick(Column: TColumn);
    procedure DBGrid1CellClick(Column: TColumn);
  private
    { Private declarations }
    FEntityContaPagar: iCadastroContasAPagar;
  public
    { Public declarations }
  end;

var
  formCadastroContasAPagar: TformCadastroContasAPagar;

implementation

{$R *.dfm}

procedure TformCadastroContasAPagar.DataSource1DataChange(Sender: TObject;
  Field: TField);
begin
  inherited;
  edtCodigo.Text := inttostr(DataSource1.DataSet.FieldByName('ID').AsInteger);
  edtConta.Text := DataSource1.DataSet.FieldByName('CONTA').AsString;
  edtValorConta.Text := Floattostr(DataSource1.DataSet.FieldByName('VALOR')
    .AsCurrency);
  edtJuros.Text := Floattostr(DataSource1.DataSet.FieldByName('JUROS').AsFloat);
  edtMulta.Text := CurrToStr(DataSource1.DataSet.FieldByName('MULTA')
    .AsCurrency);
  edtDesconto.Text := CurrToStr(DataSource1.DataSet.FieldByName('DESCONTO')
    .AsCurrency);
  edtValorTotal.Text := CurrToStr(DataSource1.DataSet.FieldByName('VALOR_TOTAL')
    .AsCurrency);
  edtPgto.Text := DataSource1.DataSet.FieldByName('PAGO').AsString;
  edtFuncionario.Text :=
    inttostr(DataSource1.DataSet.FieldByName('FUNCIONARIO_CADASTRO').AsInteger);
  edtObservacao.Text := DataSource1.DataSet.FieldByName('OBSERVACAO').AsString;

  if DataSource1.DataSet.FieldByName('DATA_VENCIMENTO').AsDateTime = null then
    edtDataVencimento.Text :=
      DateToStr(DataSource1.DataSet.FieldByName('DATA_VENCIMENTO').AsDateTime)
  else
    edtDataVencimento.Text :=
      DateToStr(DataSource1.DataSet.FieldByName('DATA_VENCIMENTO').AsDateTime);

  if DataSource1.DataSet.FieldByName('PAGO').AsString = 'Sim' then
    edtDataPagamento.Text :=
      DateToStr(DataSource1.DataSet.FieldByName('DATA_PAGAMENTO').AsDateTime);

end;

procedure TformCadastroContasAPagar.DBGrid1CellClick(Column: TColumn);
begin
  inherited;
  if Assigned(DataSource1) then
  begin
    sbEditar.Enabled := true;
    sbExcluir.Enabled := true;
  end
  else
  begin
    sbEditar.Enabled := false;
    sbExcluir.Enabled := false;
  end;
end;

procedure TformCadastroContasAPagar.DBGrid1TitleClick(Column: TColumn);
begin
  inherited;
  FEntityContaPagar.ordenarGrid(Column);
end;

procedure TformCadastroContasAPagar.FormCreate(Sender: TObject);
begin
  inherited;
  FEntityContaPagar := TEntityContasAPagar.new;
end;

procedure TformCadastroContasAPagar.FormShow(Sender: TObject);
begin
  inherited;
  FEntityContaPagar.abrir.listarGrid(DataSource1);
end;

procedure TformCadastroContasAPagar.sbCancelarClick(Sender: TObject);
begin
  inherited;
  FEntityContaPagar.cancelar;
end;

procedure TformCadastroContasAPagar.sbEditarClick(Sender: TObject);
begin

  FEntityContaPagar.editar;
  inherited;
  edtConta.SetFocus;

end;

procedure TformCadastroContasAPagar.sbExcluirClick(Sender: TObject);
begin
  inherited;
  FEntityContaPagar.deletar;
end;

procedure TformCadastroContasAPagar.sbNovoClick(Sender: TObject);
begin
  inherited;
  FEntityContaPagar.inserir;
  edtConta.SetFocus;
  edtDataVencimento.Clear;
  edtDataPagamento.Clear;
end;

procedure TformCadastroContasAPagar.sbSalvarClick(Sender: TObject);
begin
  FEntityContaPagar.getConta(edtConta.Text).getDataVencimento
    (edtDataVencimento.Text).getValorConta(edtValorConta.Text)
    .getJurosConta(edtJuros.Text).getMulta(edtMulta.Text)
    .getDesconto(edtDesconto.Text).getValorTotalConta(edtValorTotal.Text)
    .getDataPagamento(edtDataPagamento.Text).getPGTO(edtPgto.Text)
    .getObservacao(edtObservacao.Text).gravar;
  inherited;
end;

end.
