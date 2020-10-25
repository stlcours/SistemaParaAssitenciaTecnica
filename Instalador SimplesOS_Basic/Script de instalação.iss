; Script generated by the Inno Setup Script Wizard.
; SEE THE DOCUMENTATION FOR DETAILS ON CREATING INNO SETUP SCRIPT FILES!

#define MyAppName "SimplesOS Basic"
#define MyAppVersion "1.0"
#define MyAppPublisher "CrioSoftware Sistemas"
#define MyAppURL "www.criosoftware.com.br"
#define MyAppExeName "SimplesOS_VesionBasic.exe"

[Setup]
; NOTE: The value of AppId uniquely identifies this application. Do not use the same AppId value in installers for other applications.
; (To generate a new GUID, click Tools | Generate GUID inside the IDE.)
AppId={{72DBFA43-7BA1-48DA-AFAA-26E6FA4A0246}
AppName={#MyAppName}
AppVersion={#MyAppVersion}
;AppVerName={#MyAppName} {#MyAppVersion}
AppPublisher={#MyAppPublisher}
AppPublisherURL={#MyAppURL}
AppSupportURL={#MyAppURL}
AppUpdatesURL={#MyAppURL}
DefaultDirName=C:\{#MyAppName}
DisableProgramGroupPage=yes
; The [Icons] "quicklaunchicon" entry uses {userappdata} but its [Tasks] entry has a proper IsAdminInstallMode Check.
UsedUserAreasWarning=no
LicenseFile=C:\Users\noels\Documents\GitHub\SistemaParaAssitenciaTecnica\Instalador SimplesOS_Basic\Arquivos  para instalação\Contrato de uso.rtf
; Uncomment the following line to run in non administrative install mode (install for current user only.)
;PrivilegesRequired=lowest
OutputDir=C:\Users\noels\Documents\GitHub\SistemaParaAssitenciaTecnica\Instalador SimplesOS_Basic\Arquivos  para instalação\Instalador
OutputBaseFilename=Instalador SimplesOS 1.0
SetupIconFile=C:\Users\noels\Documents\GitHub\SistemaParaAssitenciaTecnica\SimpleOs\SimplesOS_Icon.ico
Compression=lzma
SolidCompression=yes
WizardStyle=modern

[Languages]
Name: brazilianportuguese; MessagesFile: compiler:Languages\BrazilianPortuguese.isl

[Tasks]
Name: desktopicon; Description: {cm:CreateDesktopIcon}; GroupDescription: {cm:AdditionalIcons}; Flags: unchecked
Name: quicklaunchicon; Description: {cm:CreateQuickLaunchIcon}; GroupDescription: {cm:AdditionalIcons}; Flags: unchecked; OnlyBelowVersion: 6.1; Check: not IsAdminInstallMode

[Files]
Source: C:\Users\noels\Documents\GitHub\SistemaParaAssitenciaTecnica\Instalador SimplesOS_Basic\Arquivos  para instalação\SimplesOS_VesionBasic.exe; DestDir: {app}; Flags: ignoreversion
Source: C:\Users\noels\Documents\GitHub\SistemaParaAssitenciaTecnica\Instalador SimplesOS_Basic\Arquivos  para instalação\fbclient.dll; DestDir: {app}; Flags: ignoreversion
Source: C:\Users\noels\Documents\GitHub\SistemaParaAssitenciaTecnica\Instalador SimplesOS_Basic\Arquivos  para instalação\logo.jpg; DestDir: {app}; Flags: ignoreversion
Source: C:\Users\noels\Documents\GitHub\SistemaParaAssitenciaTecnica\Instalador SimplesOS_Basic\Arquivos  para instalação\Firebird-2.5.9.27139_0_Win32.exe; DestDir: {app}; Flags: ignoreversion
Source: C:\Users\noels\Documents\GitHub\SistemaParaAssitenciaTecnica\Instalador SimplesOS_Basic\Arquivos  para instalação\logo.png; DestDir: {app}; Flags: ignoreversion
Source: C:\Users\noels\Documents\GitHub\SistemaParaAssitenciaTecnica\Instalador SimplesOS_Basic\Arquivos  para instalação\libSoftMeter.dll; DestDir: {app}; Flags: ignoreversion
Source: C:\Users\noels\Documents\GitHub\SistemaParaAssitenciaTecnica\Instalador SimplesOS_Basic\Arquivos  para instalação\libSoftMeter64bit.dll; DestDir: {app}; Flags: ignoreversion
Source: C:\Users\noels\Documents\GitHub\SistemaParaAssitenciaTecnica\Instalador SimplesOS_Basic\Arquivos  para instalação\No_Protuct.png; DestDir: {app}; Flags: ignoreversion
Source: C:\Users\noels\Documents\GitHub\SistemaParaAssitenciaTecnica\Instalador SimplesOS_Basic\Arquivos  para instalação\No_User.png; DestDir: {app}; Flags: ignoreversion
Source: C:\Users\noels\Documents\GitHub\SistemaParaAssitenciaTecnica\Instalador SimplesOS_Basic\Arquivos  para instalação\Restore-32bits.exe; DestDir: {app}; Flags: ignoreversion
Source: C:\Users\noels\Documents\GitHub\SistemaParaAssitenciaTecnica\Instalador SimplesOS_Basic\Arquivos  para instalação\Restore-64bits.exe; DestDir: {app}; Flags: ignoreversion
Source: C:\Users\noels\Documents\GitHub\SistemaParaAssitenciaTecnica\Instalador SimplesOS_Basic\Arquivos  para instalação\SimplesOS_VesionBasic.exe; DestDir: {app}; Flags: ignoreversion
Source: C:\Users\noels\Documents\GitHub\SistemaParaAssitenciaTecnica\Instalador SimplesOS_Basic\Arquivos  para instalação\SimplesOS_VesionBasic.log; DestDir: {app}; Flags: ignoreversion
Source: C:\Users\noels\Documents\GitHub\SistemaParaAssitenciaTecnica\Instalador SimplesOS_Basic\Arquivos  para instalação\VerMeuIP-32bits.exe; DestDir: {app}; Flags: ignoreversion
Source: C:\Users\noels\Documents\GitHub\SistemaParaAssitenciaTecnica\Instalador SimplesOS_Basic\Arquivos  para instalação\VerMeuIP-64bits.exe; DestDir: {app}; Flags: ignoreversion
Source: C:\Users\noels\Documents\GitHub\SistemaParaAssitenciaTecnica\Instalador SimplesOS_Basic\Arquivos  para instalação\fbclient.dll; DestDir: {sys}; Flags: ignoreversion
Source: C:\Users\noels\Documents\GitHub\SistemaParaAssitenciaTecnica\Instalador SimplesOS_Basic\Arquivos  para instalação\BackUp\*; DestDir: {app}\BackUp; Flags: ignoreversion recursesubdirs createallsubdirs
Source: C:\Users\noels\Documents\GitHub\SistemaParaAssitenciaTecnica\Instalador SimplesOS_Basic\Arquivos  para instalação\Banco\*; DestDir: {app}\Banco; Flags: ignoreversion recursesubdirs createallsubdirs
Source: C:\Users\noels\Documents\GitHub\SistemaParaAssitenciaTecnica\Instalador SimplesOS_Basic\Arquivos  para instalação\Config\*; DestDir: {app}\Config; Flags: ignoreversion recursesubdirs createallsubdirs
Source: C:\Users\noels\Documents\GitHub\SistemaParaAssitenciaTecnica\Instalador SimplesOS_Basic\Arquivos  para instalação\Relatórios\*; DestDir: {app}\Relatório; Flags: ignoreversion recursesubdirs createallsubdirs
; NOTE: Don't use "Flags: ignoreversion" on any shared system files

[Icons]
Name: {autoprograms}\{#MyAppName}; Filename: {app}\{#MyAppExeName}
Name: {autodesktop}\{#MyAppName}; Filename: {app}\{#MyAppExeName}; Tasks: desktopicon
Name: {userappdata}\Microsoft\Internet Explorer\Quick Launch\{#MyAppName}; Filename: {app}\{#MyAppExeName}; Tasks: quicklaunchicon

[Run]
Filename: {app}\{#MyAppExeName}; Description: {cm:LaunchProgram,{#StringChange(MyAppName, '&', '&&')}}; Flags: nowait postinstall skipifsilent

Filename: {app}\Firebird-2.5.9.27139_0_Win32.exe; Flags: skipifdoesntexist
