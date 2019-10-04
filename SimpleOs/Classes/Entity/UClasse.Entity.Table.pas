unit UClasse.Entity.Table;

interface

uses
  UInterfaces, FireDAC.Comp.Client, UDados.Conexao;

type

  TEntityTable = class(TInterfacedObject, iFDTable)
  private
    F_Table: TFDTable;
  public
    function FD_Table(value: string): TFDTable;
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

function TEntityTable.FD_Table(value: string): TFDTable;
begin
  F_Table.TableName := value;
  F_Table.Active := true;
  result := F_Table;
end;

class function TEntityTable.new: iFDTable;
begin
  result := self.create;
end;

end.