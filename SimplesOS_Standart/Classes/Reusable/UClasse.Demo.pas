unit UClasse.Demo;

interface

uses system.SysUtils, FireDAC.Stan.Intf,
     FireDAC.Stan.Option, FireDAC.Stan.Error, FireDAC.UI.Intf,
     FireDAC.Phys.Intf, FireDAC.Stan.Def, FireDAC.Stan.Pool, FireDAC.Stan.Async,
     FireDAC.Phys, FireDAC.VCLUI.Wait, FireDAC.Stan.ExprFuncs,
     FireDAC.Phys.SQLiteDef, FireDAC.Phys.SQLite, FireDAC.Comp.UI,
     FireDAC.Comp.Client, Vcl.Forms, Vcl.Dialogs;

type
    TClasseDemo = class

    private
    FDemo:Boolean;
    FQueryFile: TFDQuery;
    FDConnection: TFDConnection;
    FDPhysSQLiteDriveLink: TFDPhysSQLiteDriverLink;

    function Crypt(Action, Src: String; keychar:string): String;

    var
      FInitialFile:TDate;
      FInitialBD:TDate;

    const
      INITIALkEYFILE = 'jhgfd12355dssed';
      INITIALKEYBD = 'lopty478ds';
      KEYPOSTFILE = 'DFASDFGQWERHJKLRTYUIOPZXMNCBVAASDSSPPOKJH';
      KEYPOSTBD = 'SADFQGWERHJKLRTYUIOPZXMNCBVAASDSSPPOUIP';

    procedure ativarDemo;
    public



    procedure demoActive(value:boolean);

    procedure gravarInformacoesArquivo;
    procedure gravarInformacoesBD;

    procedure validarInformacoes;

    constructor create;
    destructor destroy; override;

    end;

implementation

{ TClasseDemo }

procedure TClasseDemo.ativarDemo;
begin

end;

constructor TClasseDemo.create;
begin

  FDPhysSQLiteDriveLink := TFDPhysSQLiteDriverLink.create(nil);

  FDConnection := TFDConnection.create(nil);
  FDConnection.Connected := false;
  FDConnection.DriverName := 'SQLite';
  FDConnection.Params.Add('Database=' + ExtractFilePath(Application.ExeName) +
    '\Config\config.db');
  FDConnection.Params.Add('LockingMode=Normal');
  FDConnection.Connected := true;

  FQueryFile := TFDQuery.Create(nil);

  FQueryFile.Connection := FDConnection;
  FQueryFile.Open('select * from conexao');



end;

function TClasseDemo.Crypt(Action, Src, keychar: string): String;
Label Fim;
var
  KeyLen: Integer;
  KeyPos: Integer;
  OffSet: Integer;
  Dest, Key: String;
  SrcPos: Integer;
  SrcAsc: Integer;
  TmpSrcAsc: Integer;
  Range: Integer;
begin
  if (Src = '') Then
  begin
    Result := '';
    Goto Fim;
  end;
  Key := keychar;
  Dest := '';
  KeyLen := Length(Key);
  KeyPos := 0;
  SrcPos := 0;
  SrcAsc := 0;
  Range := 256;
  if (Action = UpperCase('C')) then
  begin
    Randomize;
    OffSet := Random(Range);
    Dest := Format('%1.2x', [OffSet]);
    for SrcPos := 1 to Length(Src) do
    begin
      Application.ProcessMessages;
      SrcAsc := (Ord(Src[SrcPos]) + OffSet) Mod 255;
      if KeyPos < KeyLen then
        KeyPos := KeyPos + 1
      else
        KeyPos := 1;

      SrcAsc := SrcAsc Xor Ord(Key[KeyPos]);
      Dest := Dest + Format('%1.2x', [SrcAsc]);
      OffSet := SrcAsc;
    end;
  end
  Else if (Action = UpperCase('D')) then
  begin
    OffSet := StrToInt('$' + copy(Src, 1, 2));
    // <--------------- adiciona o $ entra as aspas simples
    SrcPos := 3;
    repeat
      SrcAsc := StrToInt('$' + copy(Src, SrcPos, 2));
      // <--------------- adiciona o $ entra as aspas simples
      if (KeyPos < KeyLen) Then
        KeyPos := KeyPos + 1
      else
        KeyPos := 1;
      TmpSrcAsc := SrcAsc Xor Ord(Key[KeyPos]);
      if TmpSrcAsc <= OffSet then
        TmpSrcAsc := 255 + TmpSrcAsc - OffSet
      else
        TmpSrcAsc := TmpSrcAsc - OffSet;
      Dest := Dest + Chr(TmpSrcAsc);
      OffSet := SrcAsc;
      SrcPos := SrcPos + 2;
    until (SrcPos >= Length(Src));
  end;
  Result := Dest;
Fim:
end;
procedure TClasseDemo.demoActive(value: boolean);
begin

  FDemo := value;

  if value = true then
    MessageDlg('Esta é um versão de demonstração com validade de 30 dias', mtInformation, [mbOK], 0, mbOK);

  {INSERIR CÓDIFICAÇÃO PARA VALIDAR A DEMONSTRAÇÃO}

  if FQueryFile.FieldByName('key_word').AsString <> 'jhgfd12355dssed' then
  begin

   {CRIAR CÓDIFICAÇÃO PARA VERIFICAR A VALIDADE DA DEMONSTRAÇÃO}

  end
  else
  begin

  try

    FQueryFile.Edit;

    FQueryFile.FieldByName('key_word').AsString := Crypt('C', 'Demonstração ativada', KEYPOSTFILE);
    FQueryFile.FieldByName('begin').AsString := Crypt('C', DateToStr(Date), KEYPOSTFILE);

    FQueryFile.Post;

  except
    raise Exception.Create('ERRO! Arquivo parece estar danificado');

  end;


  end;


//  ShowMessage(FQueryFile.FieldByName('key_word').AsString);

end;

destructor TClasseDemo.destroy;
begin
  FreeAndNil(FQueryFile);
  FreeAndNil(FDConnection);
  FreeAndNil(FDPhysSQLiteDriveLink);
  inherited;
end;

procedure TClasseDemo.gravarInformacoesArquivo;
begin

end;

procedure TClasseDemo.gravarInformacoesBD;
begin

end;

procedure TClasseDemo.validarInformacoes;
begin



end;

end.
