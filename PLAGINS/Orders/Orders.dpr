library Orders;

{ Important note about DLL memory management: ShareMem must be the
  first unit in your library's USES clause AND your project's (select
  Project-View Source) USES clause if your DLL exports any procedures or
  functions that pass strings as parameters or function results. This
  applies to all strings passed to and from your DLL--even those that
  are nested in records and classes. ShareMem is the interface unit to
  the BORLNDMM.DLL shared memory manager, which must be deployed along
  with your DLL. To avoid using BORLNDMM.DLL, pass string information
  using PChar or ShortString parameters. }

uses
  System.SysUtils,
  System.Classes,
  Vcl.Forms,
  Winapi.Windows,
  FireDAC.Comp.Client,
  OrdersUnit in 'OrdersUnit.pas' {fmOrders},
  LinkConnectionUnit in '..\..\..\NewBO\rPLAGINS\LinkConnectionUnit.pas';

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
  result:='������';
end;

function GetMDIName:String; export;
 begin
   result:='fmOrders';
 end;

function LoadDLLForm(ATApp : TApplication; S: TScreen; D:TFDConnection; ID:Integer):THandle; export;
begin
 Application:= ATApp;
  Screen := S;
  fdb:=D;
  fmOrders:=TfmOrders.Create(Application.MainForm);
  Result:=fmOrders.Handle;
  fmOrders.ShowModal;
end;

exports LoadDLLForm, GetGroup, GetName, GetMDIName;

begin
DLLProc := @DLLMain;
DLLMain(DLL_PROCESS_ATTACH);
end.
