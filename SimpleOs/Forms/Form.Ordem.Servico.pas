unit Form.Ordem.Servico;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.Grids, Vcl.DBGrids,
  Vcl.StdCtrls, Vcl.Buttons, Vcl.ExtCtrls, UInterfaces,
  UClasse.Listar.Ordens.Servico, Vcl.Menus, UFactory;

type
  TEnumPesquisar = (codigo_ordem, codigo_cliente, nome_cliente, CPF);

type
  TformOrdemServico = class(TForm)
    Panel1: TPanel;
    sbFechar: TSpeedButton;
    lblCaption: TLabel;
    Panel3: TPanel;
    Label4: TLabel;
    Label5: TLabel;
    cbPesquisar: TComboBox;
    edtPesquisar: TEdit;
    DBGrid1: TDBGrid;
    DataSource1: TDataSource;
    PopupMenu1: TPopupMenu;
    VerCadastro1: TMenuItem;
    VerOrdemdeServio1: TMenuItem;
    procedure sbFecharClick(Sender: TObject);
    procedure Panel1MouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure edtPesquisarKeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DBGrid1TitleClick(Column: TColumn);
    procedure VerCadastro1Click(Sender: TObject);
    procedure VerOrdemdeServio1Click(Sender: TObject);
  private
    { Private declarations }
    FEntityOrdensServico: iListarOrdensServico;
    FCampo: string;
    FValor: string;
  public
    { Public declarations }
  end;

var
  formOrdemServico: TformOrdemServico;

implementation

{$R *.dfm}

uses Form.Cadastro.Clientes, Form.Criar.Ordem.Servico;

procedure TformOrdemServico.DBGrid1TitleClick(Column: TColumn);
begin
  FEntityOrdensServico.ordenarGrid(Column);
end;

procedure TformOrdemServico.edtPesquisarKeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin

  case TEnumPesquisar(cbPesquisar.ItemIndex) of
    codigo_ordem:
      begin
        FCampo := 'ID_ORDEM';
      end;
    codigo_cliente:
      begin
        FCampo := 'ID_CLIENTE';
      end;
    nome_cliente:
      begin
        FCampo := 'NOME_CLIENTE';
      end;
    CPF:
      begin
        FCampo := 'CPF_CNPJ';
      end;

  end;

  if edtPesquisar.Text <> EmptyStr then
    FEntityOrdensServico.getCampo(FCampo).getValor(edtPesquisar.Text)
      .sqlPesquisa.listarGrid(DataSource1);

end;

procedure TformOrdemServico.FormCreate(Sender: TObject);
begin
  FEntityOrdensServico := TEntityListarOrdensServico.new;
  ReportMemoryLeaksOnShutdown := true;
end;

procedure TformOrdemServico.FormShow(Sender: TObject);
begin
  FEntityOrdensServico.abrir.listarGrid(DataSource1);
end;

procedure TformOrdemServico.Panel1MouseDown(Sender: TObject;
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

procedure TformOrdemServico.sbFecharClick(Sender: TObject);
begin
  Close;
end;

procedure TformOrdemServico.VerCadastro1Click(Sender: TObject);
begin
  if DataSource1.DataSet.RecordCount >= 1 then
  begin
    formCadastroDeClientes := TformCadastroDeClientes.Create(self);
    TFactory.new.criarJanela.FormShow(formCadastroDeClientes, '');
  end;
end;

procedure TformOrdemServico.VerOrdemdeServio1Click(Sender: TObject);
begin
  if DataSource1.DataSet.RecordCount >= 1 then
  begin
    formCriarConsultarOrdemServico :=
      TformCriarConsultarOrdemServico.Create(self);
    TFactory.new.criarJanela.FormShow(formCriarConsultarOrdemServico, '');
  end;
end;

end.
