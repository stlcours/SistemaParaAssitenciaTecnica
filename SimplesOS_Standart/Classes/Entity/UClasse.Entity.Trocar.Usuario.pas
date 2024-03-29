unit UClasse.Entity.Trocar.Usuario;

interface

uses
  UInterfaces;

Type
  TEntityTrocarUsuario = class(TInterfacedObject, iTrocarDeUsuario)
  private
  public

    function resetar:iTrocarDeUsuario;
    function relogar:iTrocarDeUsuario;

    constructor create;
    destructor destroy; override;
    class function new: iTrocarDeUsuario;

  end;

implementation

{ TEntityTrocarUsuario }

constructor TEntityTrocarUsuario.create;
begin

end;

destructor TEntityTrocarUsuario.destroy;
begin

  inherited;
end;

class function TEntityTrocarUsuario.new: iTrocarDeUsuario;
begin
  result := self.create;
end;

function TEntityTrocarUsuario.relogar: iTrocarDeUsuario;
begin
  result := self;
end;

function TEntityTrocarUsuario.resetar: iTrocarDeUsuario;
begin
  result := self;
end;

end.
