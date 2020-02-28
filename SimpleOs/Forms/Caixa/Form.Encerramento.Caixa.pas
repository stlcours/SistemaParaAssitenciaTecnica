unit Form.Encerramento.Caixa;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Buttons, Vcl.ExtCtrls,
  UClasse.Entity.Caixa;

type
  TformEncerramentoCaixa = class(TForm)
    Panel1: TPanel;
    sbFechar: TSpeedButton;
    lblCaption: TLabel;
    Panel2: TPanel;
    sbIniciarCaixa: TSpeedButton;
    SpeedButton1: TSpeedButton;
    Edit1: TEdit;
    Label1: TLabel;
    Edit2: TEdit;
    Label2: TLabel;
    Edit3: TEdit;
    Label3: TLabel;
    Edit4: TEdit;
    Label4: TLabel;
    Edit5: TEdit;
    Label5: TLabel;
    Edit6: TEdit;
    Label6: TLabel;
    Edit7: TEdit;
    Label7: TLabel;
    procedure sbFecharClick(Sender: TObject);
    procedure Panel1MouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
    var
      FCaixa:TEntityCaixa;
  public
    { Public declarations }
  end;

var
  formEncerramentoCaixa: TformEncerramentoCaixa;

implementation

{$R *.dfm}

procedure TformEncerramentoCaixa.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  FreeAndNil(FCaixa);
end;

procedure TformEncerramentoCaixa.FormCreate(Sender: TObject);
begin
  FCaixa := TEntityCaixa.create;
  ReportMemoryLeaksOnShutdown := true;
end;

procedure TformEncerramentoCaixa.Panel1MouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
const
  SC_DRAGMOVE = $F012;
begin
  if Button = mbleft then
  begin
    ReleaseCapture;
    self.Perform(WM_SYSCOMMAND, SC_DRAGMOVE, 0);
  end;
end;

procedure TformEncerramentoCaixa.sbFecharClick(Sender: TObject);
begin
  close;
end;

end.
