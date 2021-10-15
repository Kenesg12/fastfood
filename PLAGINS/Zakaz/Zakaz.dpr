library Zakaz;

uses
  System.SysUtils,
  System.Classes,
  Vcl.Forms,
  Winapi.Windows,
  FireDAC.Comp.Client,
  cxButtons,
  ZakazUnit in 'ZakazUnit.pas' {fmZakaz},
  LinkConnectionUnit in '..\..\..\NewBO\rPLAGINS\LinkConnectionUnit.pas',
  DateEditUnit in 'DateEditUnit.pas' {fmDateEdit};

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
   result:='fmZakaz';
 end;

function LoadDLLForm(ATApp : TApplication; S: TScreen; D:TFDConnection; ID:Integer):THandle; export;
var i:Integer;  paybtn:TcxButton; crtdbtn:Boolean;
begin
 Application:= ATApp;
 crtdbtn:=true;
 for i := 0 to Application.ComponentCount - 1 do
  begin
   if Application.Components[i].ClassName = 'TDM' then
      DUID:=TFDQuery(TDataModule(Application.Components[i]).FindComponent('Current_order')).FieldByName('UID').AsString
   else if TForm(Application.MainForm).Name = 'fmMain' then
     begin
       if Application.Components[i].ClassName = 'TOpenZakazForm' then
         paybtn:= TcxButton(Application.Components[i].FindComponent('PayButton'));
       crtdbtn:=false;
     end;
  end;
  if crtdbtn then
     paybtn:= TcxButton(Application.MainForm.FindComponent('PayButton'));
  if DUID = '' then
   exit;
  Screen := S;
  fdb:=D;
  fmZakaz:=TfmZakaz.Create(Application.MainForm);
  Result:=fmZakaz.Handle;

  if fmZakaz.ShowModal = 1 then
   begin
     paybtn.Tag:= integer(not boolean(fmZakaz.cxPageControl2.ActivePageIndex));
     paybtn.Click;

   end
  else paybtn.Tag:=0;

end;

exports LoadDLLForm, GetGroup, GetName, GetMDIName;

begin
DLLProc := @DLLMain;
DLLMain(DLL_PROCESS_ATTACH);
end.
