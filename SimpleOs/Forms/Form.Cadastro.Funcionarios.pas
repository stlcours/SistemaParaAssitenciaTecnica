unit Form.Cadastro.Funcionarios;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, UForm.Exemplo.Embeded, Data.DB,
  Vcl.Menus, Vcl.Grids, Vcl.DBGrids, Vcl.WinXPanels, Vcl.StdCtrls, Vcl.Buttons,
  Vcl.ExtCtrls, UInterfaces, UClasse.Entity.Cadastro.Funcionario, Vcl.Mask,
  UClasse.Entity.Table, ACBrBase, ACBrSocket, ACBrCEP, Vcl.Imaging.jpeg,
  Vcl.ExtDlgs;

type
  TformCadastroDeFuncionarios = class(TformExemploEmbeded)
    DataSource1: TDataSource;
    edtCodigo: TEdit;
    edtNome: TEdit;
    edtDocumento: TEdit;
    edtCPF: TEdit;
    edtCEP: TEdit;
    edtEndereco: TEdit;
    edtBairro: TEdit;
    edtNumero: TEdit;
    edtComplemento: TEdit;
    edtCidade: TEdit;
    edtAtividade: TEdit;
    edtEMail: TEdit;
    edtUsuario: TEdit;
    edtSenha: TEdit;
    edtConfirmaSenha: TEdit;
    edtFuncionario: TEdit;
    edtObservacao: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    Label13: TLabel;
    Label14: TLabel;
    Label15: TLabel;
    Label16: TLabel;
    Label17: TLabel;
    Label18: TLabel;
    Label19: TLabel;
    Label20: TLabel;
    Label21: TLabel;
    Label22: TLabel;
    Label23: TLabel;
    Label24: TLabel;
    Label25: TLabel;
    Label26: TLabel;
    Label27: TLabel;
    sbPesquisarCep: TSpeedButton;
    Image1: TImage;
    SpeedButton1: TSpeedButton;
    edtDataNascimento: TMaskEdit;
    edtDataCadastro: TMaskEdit;
    edtDataDemissao: TMaskEdit;
    edtTelefone: TMaskEdit;
    edtCelular: TMaskEdit;
    edtEstado: TComboBox;
    edtStatus: TComboBox;
    ACBrCEP1: TACBrCEP;
    OpenPictureDialog1: TOpenPictureDialog;
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure sbNovoClick(Sender: TObject);
    procedure ACBrCEP1BuscaEfetuada(Sender: TObject);
    procedure sbPesquisarCepClick(Sender: TObject);
    procedure DataSource1DataChange(Sender: TObject; Field: TField);
    procedure SpeedButton1Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure sbSalvarClick(Sender: TObject);
  private
    { Private declarations }
    FEntityFuncionario: iCadastroFuncionario;
    FEntityTableUF: iFDTable;
    imagem: TJPEGImage;
  public
    { Public declarations }
  end;

var
  formCadastroDeFuncionarios: TformCadastroDeFuncionarios;

implementation

{$R *.dfm}

procedure TformCadastroDeFuncionarios.ACBrCEP1BuscaEfetuada(Sender: TObject);
var
  i: integer;
begin
  inherited;

  for i := 0 to ACBrCEP1.Enderecos.Count - 1 do
  begiN
    edtCEP.Text := ACBrCEP1.Enderecos[i].CEP;
    edtEndereco.Text := 'Rua ' + ACBrCEP1.Enderecos[i].Logradouro;
    edtComplemento.Text := ACBrCEP1.Enderecos[i].Complemento;
    edtCidade.Text := ACBrCEP1.Enderecos[i].Municipio;
    edtEstado.Text := ACBrCEP1.Enderecos[i].UF;
    edtBairro.Text := ACBrCEP1.Enderecos[i].Bairro;
  end;

end;

procedure TformCadastroDeFuncionarios.DataSource1DataChange(Sender: TObject;
  Field: TField);
begin
  inherited;
  with DataSource1.DataSet do
  begin

    edtCodigo.Text := intTostr(FieldByName('ID').AsInteger);
    edtNome.Text := FieldByName('NOME').AsString;
    edtDocumento.Text := FieldByName('DOCUMENTO').AsString;
    edtCPF.Text := FieldByName('CPF').AsString;
    edtCEP.Text := FieldByName('CEP').AsString;
    edtEndereco.Text := FieldByName('ENDERECO').AsString;
    edtBairro.Text := FieldByName('BAIRRO').AsString;
    edtNumero.Text := intTostr(FieldByName('NUMERO').AsInteger);
    edtComplemento.Text := FieldByName('COMPLEMENTO').AsString;
    edtCidade.Text := FieldByName('CIDADE').AsString;
    edtEstado.Text := FieldByName('UF').AsString;
    edtTelefone.Text := FieldByName('TELEFONE').AsString;
    edtCelular.Text := FieldByName('CELULAR').AsString;
    edtAtividade.Text := intTostr(FieldByName('ATIVIDADE').AsInteger);
    edtEMail.Text := FieldByName('EMAIL').AsString;
    edtUsuario.Text := FieldByName('USUARIO').AsString;
    edtStatus.Text := FieldByName('STATUS').AsString;
    edtObservacao.Text := FieldByName('OBSERVACAO').AsString;

    if FieldByName('DATA_NASCIMENTO').AsDateTime <> StrToDate('30/12/1899') then
      edtDataNascimento.Text := DateToStr(FieldByName('DATA_NASCIMENTO')
        .AsDateTime);

    if FieldByName('DATA_CADASTRO').AsDateTime <> StrToDate('30/12/1899') then
      edtDataCadastro.Text := DateToStr(FieldByName('DATA_CADASTRO')
        .AsDateTime);

    if FieldByName('DATA_DEMISSAO').AsDateTime <> StrToDate('30/12/1899') then
      edtDataDemissao.Text := DateToStr(FieldByName('DATA_DEMISSAO')
        .AsDateTime);

    Image1.Picture.Assign(FieldByName('FOTO'));

  end;
end;

procedure TformCadastroDeFuncionarios.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
  imagem.Free;
end;

procedure TformCadastroDeFuncionarios.FormCreate(Sender: TObject);
begin
  inherited;
  FEntityFuncionario := TEntityCadastroFuncionario.new;
  FEntityTableUF := TEntityTable.new;
end;

procedure TformCadastroDeFuncionarios.FormShow(Sender: TObject);
begin
  inherited;
  FEntityFuncionario.abrir.listarGrid(DataSource1);
  FEntityTableUF.FD_Table('UF').getCampoTabela('UF').popularComponenteComboBox
    (edtEstado);
end;

procedure TformCadastroDeFuncionarios.sbNovoClick(Sender: TObject);
begin
  inherited;
  FEntityFuncionario.inserir;
  edtNome.SetFocus;
end;

procedure TformCadastroDeFuncionarios.sbPesquisarCepClick(Sender: TObject);
begin
  inherited;
  if sbNovo.Enabled = false then
    ACBrCEP1.BuscarPorCEP(edtCEP.Text);
end;

procedure TformCadastroDeFuncionarios.sbSalvarClick(Sender: TObject);
begin

  FEntityFuncionario.validarUsuario(edtUsuario.Text);{.validarSenha(edtSenha.Text,
      edtConfirmaSenha.Text);}

  inherited;
end;

procedure TformCadastroDeFuncionarios.SpeedButton1Click(Sender: TObject);
begin
  inherited;
  if sbNovo.Enabled = false then
  begin
    imagem := TJPEGImage.Create;

    if OpenPictureDialog1.Execute then
    begin
      Image1.Picture.LoadFromFile(OpenPictureDialog1.FileName);
      imagem.LoadFromFile(OpenPictureDialog1.FileName);
    end;
  end;
end;

end.