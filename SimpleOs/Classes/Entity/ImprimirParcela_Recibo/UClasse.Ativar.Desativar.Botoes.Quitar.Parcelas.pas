unit UClasse.Ativar.Desativar.Botoes.Quitar.Parcelas;

interface

uses
  Vcl.Buttons;

Type
  TMyClass = class
  private
    btQuitar: TSpeedButton;
    btEstornar: TSpeedButton;
    btAdicionar: TSpeedButton;
    btSalvar: TSpeedButton;
    btExcluir: TSpeedButton;
    btCancelar: TSpeedButton;
    btImprimirParcela: TSpeedButton;
    btExportar: TSpeedButton;
  public

    procedure BotaoQuitar(value: TSpeedButton);
    procedure BotaoEstornar(value: TSpeedButton);
    procedure BotaoAdicionarParcela(value: TSpeedButton);
    procedure BotaoSalvarPacela(value: TSpeedButton);
    procedure BotaoExcluirParcela(value: TSpeedButton);
    procedure BotalCancelar(value: TSpeedButton);
    procedure BotaoImpimirParcela(value: TSpeedButton);
    procedure BotaoExportar(value: TSpeedButton);

    constructor create;
    destructor destroy; override;

  end;

implementation

{ TMyClass }

procedure TMyClass.BotalCancelar(value: TSpeedButton);
begin

end;

procedure TMyClass.BotaoAdicionarParcela(value: TSpeedButton);
begin

end;

procedure TMyClass.BotaoEstornar(value: TSpeedButton);
begin

end;

procedure TMyClass.BotaoExcluirParcela(value: TSpeedButton);
begin

end;

procedure TMyClass.BotaoExportar(value: TSpeedButton);
begin

end;

procedure TMyClass.BotaoImpimirParcela(value: TSpeedButton);
begin

end;

procedure TMyClass.BotaoQuitar(value: TSpeedButton);
begin

end;

procedure TMyClass.BotaoSalvarPacela(value: TSpeedButton);
begin

end;

constructor TMyClass.create;
begin

end;

destructor TMyClass.destroy;
begin

  inherited;
end;

end.
