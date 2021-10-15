unit ServiceUnit;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Menus, cxLookAndFeelPainters, StdCtrls, cxButtons,
  iniFiles, cxControls, cxContainer, cxEdit, cxTextEdit, cxMaskEdit,
  cxButtonEdit, DB, cxProgressBar,
  frxClass, cxPC, Printers, cxGraphics, cxLookAndFeels, dxBarBuiltInMenu,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.Client, FireDAC.Comp.DataSet,
  Vcl.Grids, Vcl.DBGrids;

type
  TfmService = class(TForm)
    OpenDialog1: TOpenDialog;
    Label1: TLabel;
    cxPageControl1: TcxPageControl;
    cxTabSheet1: TcxTabSheet;
    cxTabSheet2: TcxTabSheet;
    cxProgressBar1: TcxProgressBar;
    cxButton2: TcxButton;
    cxButtonEdit2: TcxButtonEdit;
    cxButton1: TcxButton;
    cxButtonEdit1: TcxButtonEdit;
    cxButton3: TcxButton;
    cxButton4: TcxButton;
    cxButton5: TcxButton;
    frxReport1: TfrxReport;
    cxButton6: TcxButton;
    cxTabSheet3: TcxTabSheet;
    cxButton7: TcxButton;
    cxButton8: TcxButton;
    tbReports: TFDQuery;
    tbReportsID: TFDAutoIncField;
    tbReportsNAME: TWideStringField;
    tbReportsREPORT_FILE: TBlobField;
    SendData: TFDQuery;
    SendDataID: TIntegerField;
    SendDataIDSMENY: TIntegerField;
    Spisanie: TFDCommand;
    Vozvrat: TFDCommand;
    Close_orders: TFDCommand;
    QTxt: TFDQuery;
    upd_replast: TFDCommand;
    LoadData: TFDCommand;
    �������: TcxTabSheet;
    procedure cxButton1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure cxButtonEdit1PropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure cxButtonEdit2PropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure cxButton2Click(Sender: TObject);
    procedure cxButton4Click(Sender: TObject);
    procedure cxButton7Click(Sender: TObject);
    procedure cxPageControl1Change(Sender: TObject);
    procedure cxButton8Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fmService: TfmService;
  cnl:Boolean;
implementation

uses MainUnit, FormaOplatyUnit, DMUnit, LinkConnectionUnit;//, PrihodUnit;

{$R *.dfm}

procedure TfmService.cxButton1Click(Sender: TObject);
VAR INI:TINIFILE;
begin
cxButton2.Enabled:=false;
if cxButtonEdit1.EditingText <> '' then
 try
   {dm.pFIBScripter1.Script.Clear;
   dm.pFIBScripter1.Script.LoadFromFile(cxButtonEdit1.EditingText);
   dm.pFIBScripter1.ExecuteScript;
   dm.pFIBScripter1.Transaction.Commit;   }
   INI:=TINIFILE.Create(ExtractFilePath(ParamStr(0))+'config.ini');
   INI.WriteString('LOCALSETTINGS', 'UPDPATH', cxButtonEdit1.EditingText);
   INI.FREE;
   ShowMessage('������ ������� ���������!');
   close;
 finally
   cxButton2.Enabled:=true;
 end;
end;

procedure TfmService.cxButton2Click(Sender: TObject);
VAR INI:TINIFILE;
  last_id:integer;
  txt:TStringList;
begin
if cxButton2.Caption = '������' then
 begin
  cnl:=true;
  cxButton2.Caption:='��������� ������';
 end
else
if cxButtonEdit2.EditingText <> '' then
 begin
   cxButton2.Caption := '������';
   cnl:=false;
   SendData.Open;
   {b:=TMemoryStream.Create;
   (SendDataSQL_SCRP as TBlobField).SaveToStream(b);
   b.Position:=0;
   b.SaveToFile(cxButtonEdit2.EditingText+SendDataIDSMENY.AsString+'_'+DateToStr(now)+'.expd');
   b.Free;}
   cxProgressBar1.Properties.Max:=dm.FDB.ExecSQLScalar('select count(*) from ibe$log_tables where id > (select idlogs from rep$last)');
   txt:=TStringList.Create;
   SendData.First;
   cxProgressBar1.Visible:=true;
   cxButton1.Enabled:=false;
   while SendData.Eof <> true do
    begin
     QTxt.Close;
     QTxt.Params[0].AsInteger:=SendDataID.AsInteger;
     QTxt.Open;
     txt.Append(QTxt.FieldByName('SQL_SCRP').AsString);
     SendData.Next;
     cxProgressBar1.Position:= SendData.RecNo;
     Label1.Caption:=IntToStr(SendData.RecNo)+' �� '+FloatToStr(cxProgressBar1.Properties.Max);
     Application.ProcessMessages;
     if cnl then
      begin
        cxButton2.Caption:='��������� ������';
        cxButton1.Enabled:=true;
        exit;
      end;
    end;

   txt.SaveToFile(cxButtonEdit2.EditingText+SendDataIDSMENY.AsString+'_'+DateToStr(now)+'.upd');
   last_id:=SendDataID.AsInteger;
   SendData.close;
   cxProgressBar1.Visible:=false;
   upd_replast.Params[0].AsInteger:=last_id;
   upd_replast.Execute;
   INI:=TINIFILE.Create(ExtractFilePath(ParamStr(0))+'config.ini');
   INI.WriteString('LOCALSETTINGS', 'EXTPATH', cxButtonEdit2.EditingText);
   INI.FREE;
   cxButton1.Enabled:=true;
   ShowMessage('������ ������� ���������!');
   Close;
 end;
end;

procedure TfmService.cxButton4Click(Sender: TObject);
var
  b: TMemoryStream;
begin
if tbReports.Locate('NAME', TcxButton(Sender).Hint, []) then
 begin
    b:=TMemoryStream.Create;
    (tbReportsREPORT_FILE as TBlobField).SaveToStream(b);
    b.Position:=0;
    frxReport1.LoadFromStream(b);
    b.Free;
     frxReport1.Variables.Variables['IDSTATION']:=Station;
    if frxReport1.PrepareReport then
     frxReport1.ShowPreparedReport;
    {frxReport1.PrintOptions.ShowDialog:=false;
    frxReport1.PrepareReport(true);
    frxReport1.Print; }
 end;
end;

procedure TfmService.cxButton7Click(Sender: TObject);
var i:Integer;
begin

if MessageDlg('������� ����� �� �����: '+fmMain.Label2.Caption+'?' , mtConfirmation, [mbYes, mbNo], 0) <> mrYes then exit;
if (dm.Orders_item.Active = true) and (dm.Orders_item.RecordCount = 0) then exit;

if dm.Orders_item.UpdatesPending then
  begin
     dm.Orders_item.UpdateTransaction.StartTransaction;
      if dm.Orders_item.ApplyUpdates = 0 then
       begin
         dm.Orders_item.CommitUpdates;
         dm.Orders_item.UpdateTransaction.Commit;
       end
      else
       begin
         raise Exception.Create(dm.Orders_item.RowError.Message);
         if dm.Orders_item.UpdateTransaction.Active then
          dm.Orders_item.UpdateTransaction.Rollback;
       end;
  end;

close;
try
    Vozvrat.Params[0].AsString:= dm.Current_orderUID.AsString;
    Vozvrat.Execute;
    Close_orders.Params[0].AsString:=dm.Current_orderUID.AsString;
    Close_orders.Execute;
    Spisanie.Params[0].AsString:=dm.Current_orderUID.AsString;
    Spisanie.Execute;
except
  MessageBox(self.Handle, '������ �������� �����!', '������!!!', mb_IconError or mb_OK);
  exit;
end;

if FileExists(ExtractFilePath(Application.ExeName)+ 'Reports\Vozvrat.fr3') then
 begin
 for i := 0 to Printer.Printers.Count - 1 do
 if Printer.Printers.Strings[i]=fmMain.tbStationPRINTER.AsString then
  begin
   frxReport1.LoadFromFile(ExtractFilePath(Application.ExeName)+ 'Reports\Vozvrat.fr3',true);
   frxReport1.Variables.Variables['orders']:=''''+dm.Current_orderUID.AsString+'''';
   frxReport1.PrintOptions.Printer:=fmMain.tbStationPRINTER.AsString;
   frxReport1.PrintOptions.ShowDialog:=false;
   if frxReport1.PrepareReport(true) then
     frxReport1.Report.Print;

   break;
  end;
 end else MessageDlg('����: "'+ExtractFilePath(Application.ExeName)+ 'Reports\Vozvrat.fr3"'+' �� ������.', mtError, [mbOk], 0);
  dm.Orders_item.Filtered:=false;
  dm.Current_order.Refresh;
   fmMain.lbCheck.Caption:='';
   fmMain.Label2.Caption:='';
   fmmain.Label3.Caption:='';
   fmmain.Label4.Caption:='';
 fmMain.UpdateGrid;
end;

procedure TfmService.cxButton8Click(Sender: TObject);
var ini:TIniFile;
Hlis:THandle;
 CreateMyForm:procedure(AppHandle: THandle); stdcall;
 DestroyMyForm:procedure; stdcall;
begin
ini:=TIniFile.Create(ExtractFilePath(ParamStr(0))+'config.ini');
if ini.ReadString('LOCALSETTINGS', 'KKM', '') = 'ATOL' then
  Hlis:=LoadLibrary('PLAGINS\ATOLFR.dll')
else if ini.ReadString('LOCALSETTINGS', 'KKM', '') =  'SHTRIH' then
  Hlis:=LoadLibrary('PLAGINS\SHTRIHFR.dll')
else exit;

if Hlis >= 32 then
 begin
  CreateMyForm:=GetProcAddress(Hlis,'CreateMyForm');
  CreateMyForm(Application.Handle);

  DestroyMyForm:=GetProcAddress(Hlis,'DestroyMyForm');
  DestroyMyForm;
  FreeLibrary(Hlis);
 end;
end;

procedure TfmService.cxButtonEdit1PropertiesButtonClick(Sender: TObject;
  AButtonIndex: Integer);
begin
OpenDialog1.Filter:='������ �����������|*.upd|��� �����|*.*';
if OpenDialog1.Execute then
   cxButtonEdit1.EditValue:=OpenDialog1.FileName;
end;

procedure TfmService.cxButtonEdit2PropertiesButtonClick(Sender: TObject;
  AButtonIndex: Integer);
begin
OpenDialog1.Filter:='������ �����������|*.upd|��� �����|*.*';
 if OpenDialog1.Execute then
   cxButtonEdit2.EditValue:=ExtractFilePath(OpenDialog1.FileName);
end;

procedure TfmService.cxPageControl1Change(Sender: TObject);
begin
if cxPageControl1.ActivePageIndex =2 then
 begin
   if dm.Current_order.RecordCount = 0 then
     cxButton7.Enabled:=false else cxButton7.Enabled:=true;
 end;
end;

procedure TfmService.FormCreate(Sender: TObject);
begin
SetConnection(TForm(Self), dm.fdb);
end;

procedure TfmService.FormShow(Sender: TObject);
var ini:TIniFile;
begin
  ini:=TIniFile.Create(ExtractFilePath(ParamStr(0))+'config.ini');
  cxButtonEdit1.EditValue:=ini.ReadString('LOCALSETTINGS', 'UPDPATH', '');
  cxButtonEdit2.EditValue:=ini.ReadString('LOCALSETTINGS', 'EXTPATH', '');
  cxButton8.Visible:=FileExists(ExtractFilePath(ParamStr(0))+ini.ReadString('LOCALSETTINGS', 'KKM', ''));
  INI.Free;
  tbReports.Active:=true;
end;

end.
