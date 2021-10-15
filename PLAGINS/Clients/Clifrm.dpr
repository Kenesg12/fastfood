library Clifrm;

uses
  System.SysUtils,
  System.Classes,
  Vcl.Forms,
  Winapi.Windows,
  FireDAC.Comp.Client,
  fmCliUtint in 'fmCliUtint.pas' {fmCliets};

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
  result:='�����';
end;

function GetMDIName:String; export;
 begin
   result:='fmCliets';
 end;

function LoadDLLForm(ATApp : TApplication; S: TScreen; D:TFDConnection; ID:Integer):THandle; export;
begin
  Application:= ATApp;
  Screen := S;
  fdb:=D;
  IDUSER:=ID;
  fmCliets:=TfmCliets.Create(Application.MainForm);
  Result:=fmCliets.Handle;
  fmCliets.ShowModal;


end;

exports LoadDLLForm, GetGroup, GetName, GetMDIName;

begin
DLLProc := @DLLMain;
DLLMain(DLL_PROCESS_ATTACH);
end.