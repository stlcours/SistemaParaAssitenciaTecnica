unit Form.Modelo;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes,
  System.Variants,
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs, Interfaces,
  UClasse.Entity.Modelo, System.Rtti, FMX.Grid.Style, Data.Bind.EngExt,
  FMX.Bind.DBEngExt, FMX.Bind.Grid, System.Bindings.Outputs, FMX.Bind.Editors,
  FMX.StdCtrls, Data.Bind.Components, Data.Bind.Grid, Data.Bind.DBScope,
  FMX.Controls.Presentation, FMX.ScrollBox, Data.DB, FMX.Grid, FMX.Edit,
  UClasse.Entity.Modelo.Table;

type
  TForm1 = class(TForm)
    DataSource1: TDataSource;
    StringGrid1: TStringGrid;
    BindSourceDB1: TBindSourceDB;
    BindingsList1: TBindingsList;
    LinkGridToDataSourceBindSourceDB1: TLinkGridToDataSource;
    Abrir: TButton;
    Button1: TButton;
    Edit1: TEdit;
    Edit2: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    Button2: TButton;
    Button3: TButton;
    Button4: TButton;
    Button5: TButton;
    Button6: TButton;
    Button7: TButton;
    Edit3: TEdit;
    Label3: TLabel;
    Button8: TButton;
    Button9: TButton;
    StringGrid2: TStringGrid;
    DataSource2: TDataSource;
    BindSourceDB2: TBindSourceDB;
    LinkGridToDataSourceBindSourceDB2: TLinkGridToDataSource;
    Button10: TButton;
    procedure FormCreate(Sender: TObject);
    procedure AbrirClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure DataSource1DataChange(Sender: TObject; Field: TField);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure Button5Click(Sender: TObject);
    procedure Button6Click(Sender: TObject);
    procedure Button7Click(Sender: TObject);
    procedure Button8Click(Sender: TObject);
    procedure Button9Click(Sender: TObject);
    procedure Button10Click(Sender: TObject);
    procedure StringGrid1HeaderClick(Column: TColumn);
    procedure StringGrid1CellClick(const Column: TColumn; const Row: Integer);
  private
    { Private declarations }

  var
    FEntityModelo: iEntityModelo;
    FEntityModeloTabela: iFDTable;
  public
    { Public declarations }
  end;

var
  Form1: TForm1;
  bCorColunas: Boolean;

implementation

{$R *.fmx}

procedure TForm1.AbrirClick(Sender: TObject);
begin
  FEntityModelo.openEntity.listarDados(DataSource1)
    .redimensionarGrig(StringGrid1);
  Button1.Enabled := true;
  Button2.Enabled := true;
  Button3.Enabled := true;
  Button4.Enabled := true;
end;

procedure TForm1.Button10Click(Sender: TObject);
begin
  DataSource2.DataSet := FEntityModeloTabela.FD_Table('GRUPOS');
end;

procedure TForm1.Button1Click(Sender: TObject);
begin
  FEntityModelo.novoRegistros;
  Button3.Enabled := false;
  Button4.Enabled := false;
end;

procedure TForm1.Button2Click(Sender: TObject);
begin
  FEntityModelo.getNomeGrupo(Edit2.Text).gravarRegistro;
  Button2.Enabled := false;
  Button3.Enabled := true;
  Button4.Enabled := true;
end;

procedure TForm1.Button3Click(Sender: TObject);
begin
  FEntityModelo.editarRegistro;
end;

procedure TForm1.Button4Click(Sender: TObject);
begin
  FEntityModelo.deletarRegistro;
end;

procedure TForm1.Button5Click(Sender: TObject);
begin
  FEntityModelo.cancelarRegistro;
end;

procedure TForm1.Button6Click(Sender: TObject);
begin
  FEntityModelo.atualizarRegistro;
end;

procedure TForm1.Button7Click(Sender: TObject);
begin
  FEntityModelo.fecharquery;
end;

procedure TForm1.Button8Click(Sender: TObject);
begin
  FEntityModelo.getCampo('GRUPO').sqlPesquisa(Edit3.Text)
    .listarDados(DataSource1).redimensionarGrig(StringGrid1);
end;

procedure TForm1.Button9Click(Sender: TObject);
var
  i: Integer;
begin

  i := strtoint('00,mjgr00');

end;

procedure TForm1.DataSource1DataChange(Sender: TObject; Field: TField);
begin
  Edit1.Text := IntToStr(DataSource1.DataSet.FieldByName('ID').AsInteger);
  Edit2.Text := DataSource1.DataSet.FieldByName('GRUPO').AsString;
end;

procedure TForm1.FormCreate(Sender: TObject);
begin
  FEntityModelo := TEntityModelo.new;
  FEntityModeloTabela := TEntityTable.new;
  ReportMemoryLeaksOnShutdown := true;
end;

procedure TForm1.FormShow(Sender: TObject);
var
  i, j: Integer;
begin

  bCorColunas := not bCorColunas;

  for i := 0 to StringGrid1.ColumnCount - 1 do
    for j := 0 to StringGrid1.RowCount - 1 do
      StringGrid1.Cells[i, j] := StringGrid1.Cells[i, j];
end;

procedure TForm1.StringGrid1CellClick(const Column: TColumn;
  const Row: Integer);
begin
  // showmessage(inttostr(DataSource1.DataSet.FieldByName('ID').AsInteger));
end;

procedure TForm1.StringGrid1HeaderClick(Column: TColumn);
begin
  // FEntityModelo.ordenarGrid(Column).listarDados(DataSource1);
end;

end.
