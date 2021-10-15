unit ShowReport;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, AdvGlowButton, frxClass, frxPreview, Printers, DB,
  StdCtrls, Menus, cxLookAndFeelPainters, cxButtons,
  iniFiles, cxGraphics, cxLookAndFeels, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client, frxFDComponents, FireDAC.UI.Intf, FireDAC.VCLUI.Wait,
  FireDAC.Comp.UI;

type
  TfmShowReport = class(TForm)
    frxPreview1: TfrxPreview;
    AdvGlowButton1: TcxButton;
    cxButton1: TcxButton;
    cxButton2: TcxButton;
    FDCommand1: TFDCommand;
    tbStation: TFDQuery;
    Current_order: TFDQuery;
    Current_orderINOMER: TIntegerField;
    Current_orderIDWAITER: TIntegerField;
    Current_orderIDKLINET: TIntegerField;
    Current_orderIDKOORD: TIntegerField;
    Current_orderGUEST_CNT: TSmallintField;
    Current_orderMACCOUNT: TFloatField;
    Current_orderOBSLUZH: TCurrencyField;
    Current_orderISBALANS: TIntegerField;
    Current_orderISGAME: TSmallintField;
    Current_orderDT: TSQLTimeStampField;
    Current_orderGAME: TCurrencyField;
    Current_orderDELIVERY: TIntegerField;
    Current_ordercur_bal: TCurrencyField;
    Current_orderSTOL: TWideStringField;
    Current_orderUID: TWideStringField;
    frxReport2: TfrxReport;
    frxFDComponents1: TfrxFDComponents;
    FDGUIxWaitCursor1: TFDGUIxWaitCursor;
    FDCommand2: TFDCommand;
    procedure AdvGlowButton1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormMouseWheel(Sender: TObject; Shift: TShiftState;
      WheelDelta: Integer; MousePos: TPoint; var Handled: Boolean);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure ChChecked(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure cxButton1Click(Sender: TObject);
    procedure cxButton2Click(Sender: TObject);
    procedure ComboBox1Change(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    cls:boolean;
  end;

var
  fmShowReport: TfmShowReport;
  printed,ON_CLOSE_ORDER_SHOWMESSAGE:boolean;
  FDB:TFDConnection;
  DUID:String;
  vcPrinter:TStringlist;
  Station:Integer;
implementation

uses  LinkConnectionUnit;

{$R *.dfm}

procedure TfmShowReport.AdvGlowButton1Click(Sender: TObject);
begin
cls:=true;
close; 
end;

procedure TfmShowReport.ChChecked(Sender: TObject);
begin
TControl(TControl(Sender).Owner.FindComponent('Combo')).Enabled:=not TControl(TControl(Sender).Owner.FindComponent('combo')).Enabled;
end;

procedure TfmShowReport.ComboBox1Change(Sender: TObject);
var ini:TIniFile;
begin
  ini:=TIniFile.Create(ExtractFilePath(ParamStr(0))+'config.ini');
  ini.WriteInteger('FRONTOFFICE', 'PRINTCNT', TComboBox(Sender).ItemIndex);
  ini.Free;
end;

procedure TfmShowReport.cxButton1Click(Sender: TObject);
var i,j:byte;
begin
if vcPrinter.Count = 0 then exit;
    for j := 0 to vcPrinter.Count - 1 do
    for i := 0 to Printer.Printers.Count - 1 do
 if Printer.Printers.Strings[i]=VCPRINTER[j] then
    begin
     frxPreview1.Report.PrintOptions.Printer:=VCPRINTER[j];
     frxPreview1.Report.PrintOptions.ShowDialog:=false;
     frxPreview1.Print;
     printed:=true;
    end;
AdvGlowButton1.Visible:=false;
Cls:=false;
end;

procedure TfmShowReport.cxButton2Click(Sender: TObject);
var MesDlg:TForm; Comb:TComboBox;{ Ch:TCheckBox;} i,j:byte;  ini:TIniFile; mg:String;
begin


 ini:=TIniFile.Create(ExtractFilePath(ParamStr(0))+'config.ini');
if ON_CLOSE_ORDER_SHOWMESSAGE then
 begin
  MesDlg:=CreateMessageDialog('¬ы действительно хотите закрыть счет?'+#13+#13+'                          число копий',mtConfirmation,[mbYES,mbNO]);
  Comb:=TComboBox.Create(MesDlg);
  Comb.Width:=60;
  Comb.Left:=200;
  Comb.Top:=35;
  {Comb.Font.Height:=20;
  Comb.Height:=28;}
  COmb.Font.Style:=[fsBold];
  Comb.Parent:=MesDlg;
  Comb.Items.Insert(0,'1');
  Comb.Items.Insert(1,'2');
  Comb.Items.Insert(2,'3');
  Comb.ItemIndex:=ini.ReadInteger('FRONTOFFICE', 'PRINTCNT', 0);
  Comb.Name:='Combo';
  Comb.Style:=csOwnerDrawFixed;
  Comb.OnChange:=ComboBox1Change;
  if MesDlg.ShowModal <> mrYES then begin MesDlg.Free; exit; end;
  //if Ch.State = cbChecked then

  if Printer.Printers.Count = 0 then begin MessageDlg('ѕринтер не установлен!', mtWarning, [mbOk], 0); MesDlg.Free; exit; end;
  for j := 0 to VCPRINTER.Count - 1 do
  for i := 0 to Printer.Printers.Count - 1 do
 if Printer.Printers.Strings[i]=VCPRINTER[j] then
    begin
     frxPreview1.Report.PrintOptions.Printer:=VCPRINTER[j];
     frxPreview1.Report.PrintOptions.ShowDialog:=false;
     frxPreview1.Report.PrintOptions.Copies:=StrToInt(Comb.Text);
     frxPreview1.Print;
     break;
    end;
  MesDlg.Free;
  AdvGlowButton1.Visible:=false;
 end;

FDCommand2.Params[0].AsString:=DUID;
FDCommand2.Execute;

//Current_order.refresh;
ini.Free;
Cls:=true;
Close;

for i := 0 to Application.ComponentCount - 1 do
  begin
   if Application.Components[i].ClassName = 'TOpenZakazForm' then
    begin
         TForm(Application.Components[i]).Close;
         break;
    end;
  end;
end;

procedure TfmShowReport.FormShow(Sender: TObject);
begin
Current_order.Close;
Current_order.Params[0].AsString:=DUID;
Current_order.Active:=true;

frxPreview1.SetFocus;
Cls:=false;
printed:=false;
if vcPrinter.Count = 0 then
  cxButton1.ShowHint:=true;

frxReport2.LoadFromFile(ExtractFilePath(Application.ExeName)+ 'Reports\GuestCheck.fr3',true);
 frxReport2.Variables.Variables['orders']:=''''+Current_orderUID.AsString+'''';
 frxReport2.Preview:=fmShowReport.frxPreview1;
 fmShowReport.AdvGlowButton1.Visible:=true;

 frxReport2.PrepareReport;
end;

procedure TfmShowReport.FormMouseWheel(Sender: TObject; Shift: TShiftState;
  WheelDelta: Integer; MousePos: TPoint; var Handled: Boolean);
begin
frxPreview1.MouseWheelScroll(WheelDelta, Shift, MousePos);
end;

procedure TfmShowReport.FormCloseQuery(Sender: TObject;
  var CanClose: Boolean);
begin
CanClose:=Cls;
cxButton2.ShowHint:=false;
end;
                                             
procedure TfmShowReport.FormCreate(Sender: TObject);
begin
SetConnection(TForm(Self), FDB);
With tbStation do
 begin
  Open('select s.Printer, s.on_close_order_showmessage from tbStation s join documents d on s.id = d.idstation where d.uid='''+DUID+'''');
  vcPrinter:=TStringList.Create;
  vcPrinter.Delimiter:=',';
  vcPrinter.DelimitedText:=FieldByname('Printer').AsString;
  ON_CLOSE_ORDER_SHOWMESSAGE:= FieldByname('on_close_order_showmessage').AsInteger=1;
 end;
frxFDComponents1.DefaultDatabase:=FDB;

if not ON_CLOSE_ORDER_SHOWMESSAGE then
 cxButton1.Visible:=true
else cxButton1.Visible:=false;
end;

end.
