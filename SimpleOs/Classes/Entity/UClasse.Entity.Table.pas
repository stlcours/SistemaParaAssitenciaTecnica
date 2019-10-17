unit UClasse.Entity.Table;

interface

uses
  UInterfaces, FireDAC.Comp.Client, UDados.Conexao, Vcl.StdCtrls,
  System.SysUtils;

type

  TEntityTable = class(TInterfacedObject, iFDTable)
  private
    F_Table: TFDTable;
    FCampoTable: string;
  public
    function FD_Table(value: string): iFDTable;
    function popularComponenteComboBox(value: TcomboBox): iFDTable;
    function getCampoTabela(value: string): iFDTable;
    constructor create;
    destructor destroy; override;
    class function new: iFDTable;
  end;

implementation

{ TEntityTable }

constructor TEntityTable.create;
begin
  F_Table := TFDTable.create(nil);
  F_Table.Connection := DataModule1.Conexao;
end;

destructor TEntityTable.destroy;
begin
  F_Table.Free;
  inherited;
end;

function TEntityTable.FD_Table(value: string): iFDTable;
begin
  F_Table.TableName := value;
  F_Table.Active := true;
  result := self;
end;

function TEntityTable.getCampoTabela(value: string): iFDTable;
begin
  result := self;
  if value = emptystr then
    raise Exception.create
      ('EInforme o campo que deseja usar para popular o componente.');
  FCampoTable := value;
end;

class function TEntityTable.new: iFDTable;
begin
  result := self.create;
end;

function TEntityTable.popularComponenteComboBox(value: TcomboBox): iFDTable;
begin
  while not F_Table.Eof do
  begin
    value.Items.Add(F_Table.FieldByName(FCampoTable).AsString);
    F_Table.Next;
  end;
end;

end.
