library Check;


uses
  System.SysUtils,
  System.Classes,
  Vcl.Forms,
  Winapi.Windows,
  FireDAC.Comp.Client,
  CheckUnit in 'CheckUnit.pas' {fmCheck};

{$R *.res}

var
  PrevApplication : TApplication;
  PrevScreen : TScreen;
procedure DLLMain(EntryCode: integer);
begin
  case EntryCode of
    DLL_PROCESS_ATTACH:
    begin
      // Do Initialization stuff here. Called when a process loads the DLL
      PrevApplication := Application;
      PrevScreen := Screen;
    end;
    DLL_PROCESS_DETACH:
    begin
      // Do Finalization stuff here. Called when a process unloads the DLL
       FreeLibrary (HInstance);
      Application := PrevApplication;
      Screen := PrevScreen;
    end;
  end;
end;

function GetGroup:String; export;
begin
  result:='��������';
end;

function GetName:String; export;
begin
  result:='���������';
end;

function GetMDIName:String; export;
 begin
   result:='fmCheck';
 end;

function LoadDLLForm(ATApp : TApplication; S: TScreen; D:TFDConnection; ID:Integer):THandle; export;
begin
  Application:= ATApp;
  Screen := S;
  fdb:=D;
  IDUSER:=ID;
  fmCheck:=TfmCheck.Create(Application.MainForm);
  Result:=fmCheck.Handle;
  fmCheck.ShowModal;


end;

exports LoadDLLForm, GetGroup, GetName, GetMDIName;

begin
DLLProc := @DLLMain;
DLLMain(DLL_PROCESS_ATTACH);
end.