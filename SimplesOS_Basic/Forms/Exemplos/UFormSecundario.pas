unit UFormSecundario;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, UClasse.Entity, Data.DB, Vcl.StdCtrls,
  Vcl.Grids, Vcl.DBGrids, UInterfaces, UClasse.Entity.Table;

type
  TForm2 = class(TForm)
    DBGrid1: TDBGrid;
    Abrir: TButton;
    DataSource1: TDataSource;
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    Button4: TButton;
    Button5: TButton;
    edtCodigo: TEdit;
    edtGrupo: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    Button6: TButton;
    Button7: TButton;
    DBGrid2: TDBGrid;
    DataSource2: TDataSource;
    Button8: TButton;
    procedure FormCreate(Sender: TObject);
    procedure AbrirClick(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure DataSource1DataChange(Sender: TObject; Field: TField);
    procedure Button3Click(Sender: TObject);
    procedure Button5Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure Button6Click(Sender: TObject);
    procedure Button7Click(Sender: TObject);
    procedure Button8Click(Sender: TObject);
    procedure DBGrid1TitleClick(Column: TColumn);
  private
    { Private declarations }
    F_Entity: iEntity;
    FOpenTable: iFDTable;
  public
    { Public declarations }
  end;

var
  Form2: TForm2;

implementation

{$R *.dfm}

procedure TForm2.AbrirClick(Sender: TObject);
begin
  F_Entity.Abrir.listarGrid(DataSource1);
end;

procedure TForm2.Button1Click(Sender: TObject);
begin
  F_Entity.inserir;
end;

procedure TForm2.Button2Click(Sender: TObject);
begin
  F_Entity.getNome(edtGrupo.Text).gravar;
end;

procedure TForm2.Button3Click(Sender: TObject);
begin
  F_Entity.deletar;
end;

procedure TForm2.Button4Click(Sender: TObject);
begin
  F_Entity.cancelar;
end;

procedure TForm2.Button5Click(Sender: TObject);
begin
  F_Entity.editar;
end;

procedure TForm2.Button6Click(Sender: TObject);
begin
  F_Entity.fecharQuery;
end;

procedure TForm2.Button7Click(Sender: TObject);
var
  i: integer;
begin

  i := strtoint('00,mjgr00');

end;

procedure TForm2.Button8Click(Sender: TObject);
begin

  FOpenTable := TEntityTable.new;
  DataSource2.DataSet := FOpenTable.FD_Table('modelo');

end;

procedure TForm2.DataSource1DataChange(Sender: TObject; Field: TField);
begin
  edtCodigo.Text := inttostr(DataSource1.DataSet.FieldByName('id').AsInteger);
  edtGrupo.Text := DataSource1.DataSet.FieldByName('grupo').AsString;
end;

procedure TForm2.DBGrid1TitleClick(Column: TColumn);
begin
  F_Entity.ordenarGrid(Column);
end;

procedure TForm2.FormCreate(Sender: TObject);
begin
  F_Entity := TEntity.new;
  F_Entity.listarGrid(DataSource1);
  ReportMemoryLeaksOnShutdown := True;
end;

end.
