program FastFood;

uses
  Forms,
  Dialogs,
  windows,
  Messages,
  MainUnit in 'Units\MainUnit.pas' {fstMain},
  DMUnit in 'Units\DMUnit.pas' {DM: TDataModule},
  DigitUnit in 'Units\DigitUnit.pas' {DigitForm},
  CardUnit in 'Units\CardUnit.pas' {fmCard},
  Edit_ItemsUnit in 'Units\Edit_ItemsUnit.pas' {fmEdit_items},
  FormaOplatyUnit in 'Units\FormaOplatyUnit.pas' {fmFormaOplaty},
  DataBase_regUnit in 'Units\DataBase_regUnit.pas' {fmDatabase_reg},
  StationUnit in 'Units\StationUnit.pas' {fmStation},
  GuestCNTUnit in 'Units\GuestCNTUnit.pas' {GuestCNT},
  LinkConnectionUnit in 'PLAGINS\LinkConnectionUnit.pas';

var Wnd:HWND;
{$R *.res}
begin

 Application.Title:='UNO-������������ ��������� ��������������';
   Wnd:=FindWindow(nil,'UNO-FASTFOOD');
  if Wnd <> 0 then
  begin
    SendMessage(FindWindowEx(wnd,0,nil,PChar('ButTrayIcon')), BM_CLICK, 1,1);
    exit; // ����� �� ��������� �� �������� ����� � �� �������� ����������
   end;


  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TDM, DM);
  Application.CreateForm(TfstMain, fstMain);
  Application.CreateForm(TfmEdit_items, fmEdit_items);
  Application.CreateForm(TfmFormaOplaty, fmFormaOplaty);
  Application.CreateForm(TGuestCNT, GuestCNT);
  Application.Run;
end.
