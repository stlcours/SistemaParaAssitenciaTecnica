unit Form.Comissoes.Funcionario;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, UForm.Exemplo.Embeded, Data.DB,
  Vcl.Menus, Vcl.Grids, Vcl.DBGrids, Vcl.WinXPanels, Vcl.StdCtrls, Vcl.Buttons,
  Vcl.ExtCtrls, UClasse.Entity.Comissoes.Funcionario, UInterfaces;

type
  TformComissoesFuncionarios = class(TformExemploEmbeded)
    DataSource1: TDataSource;
    edtCodigo: TEdit;
    edtCodigoFuncionario: TEdit;
    edtValorComissao: TEdit;
    edtObservacao: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    edtAplicarComissao: TComboBox;
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure DataSource1DataChange(Sender: TObject; Field: TField);
    procedure sbNovoClick(Sender: TObject);
  private
    { Private declarations }
    FEntityComissoes: iComissoesFuncionario;
  public
    { Public declarations }
  end;

var
  formComissoesFuncionarios: TformComissoesFuncionarios;

implementation

{$R *.dfm}

uses Form.Cadastro.Funcionarios;

procedure TformComissoesFuncionarios.DataSource1DataChange(Sender: TObject;
  Field: TField);
begin
  inherited;
  with DataSource1.DataSet do
  begin
    edtCodigo.Text := inttostr(FieldByName('ID').AsInteger);
    edtCodigoFuncionario.Text :=
      inttostr(FieldByName('ID_FUNCIONARIO').AsInteger);
    edtAplicarComissao.Text := FieldByName('APLICAR_COMISSAO').AsString;
    edtValorComissao.Text := CurrToStr(FieldByName('VALOR_POR_ATENDIMENTO')
      .AsCurrency);
    edtObservacao.Text := FieldByName('OBSERVACAO').AsString;
  end;
end;

procedure TformComissoesFuncionarios.FormCreate(Sender: TObject);
begin
  inherited;
  FEntityComissoes := TEntityComissoesFuncionarios.new;
end;

procedure TformComissoesFuncionarios.FormShow(Sender: TObject);
begin
  inherited;
  FEntityComissoes.abrir.listarGrid(DataSource1);
end;

procedure TformComissoesFuncionarios.sbNovoClick(Sender: TObject);
begin
  showmessage(codigoFuncionario.ToString);
  if codigoFuncionario <> 0 then
  begin
    inherited;
    FEntityComissoes.getCampo('ID').getValor(codigoFuncionario.ToString)
      .sqlPesquisaEstatica;


    FEntityComissoes.inserir;
    edtCodigoFuncionario.Text := codigoFuncionario.ToString;
    edtAplicarComissao.SetFocus;
  end;
end;

end.
