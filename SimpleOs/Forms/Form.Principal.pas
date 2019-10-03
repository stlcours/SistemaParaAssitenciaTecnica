unit Form.Principal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.WinXCtrls, Vcl.ExtCtrls,
  Vcl.Buttons,
  Vcl.CategoryButtons, System.ImageList, Vcl.ImgList, Vcl.StdCtrls,
  Vcl.Imaging.pngimage, System.Actions, Vcl.ActnList;

type
  TForm1 = class(TForm)
    Panel1: TPanel;
    SplitView1: TSplitView;
    sbMenu: TSpeedButton;
    CategoryButtons1: TCategoryButtons;
    ImageList1: TImageList;
    Label1: TLabel;
    Label2: TLabel;
    Image1: TImage;
    CategoryButtons2: TCategoryButtons;
    actionPrincipal: TActionList;
    acSair: TAction;
    acConfiguracoes: TAction;
    acSobre: TAction;
    acExtras: TAction;
    acRelatorios: TAction;
    acMovimentacao: TAction;
    acCadastros: TAction;
    Panel2: TPanel;
    Image2: TImage;
    Image4: TImage;
    Image5: TImage;
    Image3: TImage;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    procedure acSairExecute(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.acSairExecute(Sender: TObject);
begin
  close;
end;

end.
