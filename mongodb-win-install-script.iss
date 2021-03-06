; Script generated by the Inno Setup Script Wizard.
; SEE THE DOCUMENTATION FOR DETAILS ON CREATING INNO SETUP SCRIPT FILES!

#define MyAppName "mongodb"
#define MyAppVersion "1.0"

[Setup]
; NOTE: The value of AppId uniquely identifies this application.
; Do not use the same AppId value in installers for other applications.
; (To generate a new GUID, click Tools | Generate GUID inside the IDE.)
AppId={{BD9EB534-41CD-40A0-9FEA-6CDF34C4FA68}
AppName={#MyAppName}
AppVersion={#MyAppVersion}
;AppVerName={#MyAppName} {#MyAppVersion}
DefaultDirName=C:\{#MyAppName}
DisableDirPage=yes
DefaultGroupName={#MyAppName}
DisableProgramGroupPage=yes
OutputDir=setup
OutputBaseFilename=mongodb-setup
Compression=lzma
SolidCompression=yes

[Languages]
Name: "english"; MessagesFile: "compiler:Default.isl"
Name: "chinesesimplified"; MessagesFile: "compiler:Languages\ChineseSimplified.isl"

[Files]
Source: "mongodb-x64\*"; DestDir: "{app}"; Flags: ignoreversion 64bit createallsubdirs recursesubdirs; MinVersion: 0,6.1; Check: IsWin64
Source: "mongodb-x86\*"; DestDir: "{app}"; Flags: ignoreversion 32bit createallsubdirs recursesubdirs; MinVersion: 0,5.01; Check: not IsWin64
Source: "mongodb-common\mongod.cfg"; DestDir: "{app}"
Source: "mongodb-common\service-install.bat"; DestDir: "{app}"
Source: "mongodb-common\service-uninstall.bat"; DestDir: "{app}"

[Run]
Filename: "{app}\service-install.bat"; WorkingDir: "{app}"

[Dirs]
Name: "{app}\log"
Name: "{app}\data\db"

[UninstallRun]
Filename: "{app}\service-uninstall.bat"
