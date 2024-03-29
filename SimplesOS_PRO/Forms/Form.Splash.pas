unit Form.Splash;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Buttons, Vcl.ComCtrls,
  Vcl.Imaging.pngimage, Vcl.ExtCtrls, Vcl.StdCtrls;

type
  TformSplash = class(TForm)
    Image1: TImage;
    ProgressBar1: TProgressBar;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    procedure SpeedButton1Click(Sender: TObject);
    procedure FormActivate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  formSplash: TformSplash;

implementation

{$R *.dfm}

procedure TformSplash.FormActivate(Sender: TObject);
begin
  Repaint;
  ProgressBar1.Position := 10;
  ProgressBar1.Position := 20;
  Sleep(1000);
  ProgressBar1.Position := 30;
  ProgressBar1.Position := 40;
  Sleep(500);
  ProgressBar1.Position := 50;
  ProgressBar1.Position := 60;
  Sleep(500);
  ProgressBar1.Position := 70;
  ProgressBar1.Position := 80;
  Sleep(500);
  ProgressBar1.Position := 90;
  ProgressBar1.Position := 100;
end;

procedure TformSplash.SpeedButton1Click(Sender: TObject);
begin
  Close;
end;

end.
