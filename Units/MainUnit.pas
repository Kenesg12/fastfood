unit MainUnit;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Menus, cxGraphics, cxLookAndFeels, iniFiles, Registry,
  cxLookAndFeelPainters, cxControls, cxContainer, cxEdit, cxStyles,
  cxCustomData, cxFilter, cxData, cxDataStorage, cxNavigator, Math,
  cxDataControllerConditionalFormattingRulesManagerDialog, Data.DB, cxDBData,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, cxClasses, FireDAC.Comp.Client,
  FireDAC.Comp.DataSet, dxDateRanges, cxLabel, Vcl.ExtCtrls, CPort,
  System.Actions, Vcl.ActnList, Vcl.PlatformDefaultStyleActnCtrls, Vcl.ActnMan,
  cxImageList, frxClass, System.ImageList, Vcl.ImgList, Vcl.Touch.Keyboard,
  Vcl.StdCtrls, cxTextEdit, cxMaskEdit, cxDropDownEdit, cxLookupEdit,
  cxDBLookupEdit, cxDBLookupComboBox, dxGDIPlusClasses, cxButtons, CPortCtl,
  cxGridLevel, cxGridCustomTableView, cxGridTableView, cxGridDBTableView,
  cxGridCustomView, cxGrid;

type
  MyItem = class(TPanel)
    private
     FCardType:byte;
    public
    id:Integer;
    Img:TImage;
    Txt:TLabel;
    Cena:TLabel;
    Stop:TImage;
    procedure crtClick(Sender: TObject; Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
    procedure SetType(AValue:byte);
    constructor create(AOwner: TComponent); override;
    destructor destroy; override;

    property isItem:byte read FCardType write SetType;
  end;
type
  TfstMain = class(TForm)
    ImageList1: TImageList;
    PersonSource: TDataSource;
    DBLookupComboBox1: TcxDBLookupComboBox;
    frxReport1: TfrxReport;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    TrayIcon1: TTrayIcon;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    cxGrid1: TcxGrid;
    cxGrid1DBTableView1Column1: TcxGridDBColumn;
    cxGrid1DBTableView1Column2: TcxGridDBColumn;
    cxGrid1DBTableView1Column3: TcxGridDBColumn;
    New_order: TFDCommand;
    Demo_time: TTimer;
    Check_pass: TFDQuery;
    cxImageList1: TcxImageList;
    cxDBLookupComboBox1: TcxDBLookupComboBox;
    DataSource1: TDataSource;
    lbCheck: TLabel;
    ActionManager1: TActionManager;
    Action1: TAction;
    Action2: TAction;
    Action3: TAction;
    Action4: TAction;
    ButTrayIcon: TButton;
    tbStation: TFDQuery;
    tbStationID: TIntegerField;
    tbStationNAME: TWideStringField;
    tbStationPRINTER: TWideStringField;
    tbStationBCARD_KLIENT: TBooleanField;
    tbStationBCARD_OFICIANT: TSmallintField;
    tbStationBPRINT_ON_CLOSE: TBooleanField;
    tbStationBPAY_ON_STATION: TBooleanField;
    tbStationBCHANG_SCREEN: TBooleanField;
    tbStationON_CLOSE_ORDER_SHOWMESSAGE: TBooleanField;
    tbStationCAN_SHOW_ZADEN: TBooleanField;
    tbStationCAN_SHOW_REPORTS: TBooleanField;
    tbStationBKOMPLEX: TBooleanField;
    tbStationCAN_DELETE_ORDER: TBooleanField;
    tbStationIDKOORD: TIntegerField;
    tbPerson: TFDQuery;
    tbPersonID: TIntegerField;
    tbPersonNAME: TWideStringField;
    tbPersonUSEDISCOUNT: TBooleanField;
    tbPersonDISCOUNT: TCurrencyField;
    tbPersonUSEOBSLUZH: TBooleanField;
    Menu_items: TFDQuery;
    tbDiscounts: TFDQuery;
    tbDiscountsID: TIntegerField;
    tbDiscountsIDCLIENT: TIntegerField;
    tbDiscountsIDCLASSIF: TIntegerField;
    tbDiscountsWEEK_DAY: TSmallintField;
    tbDiscountsDTSTART: TSmallintField;
    tbDiscountsDTEND: TSmallintField;
    tbDiscountsDISCOUNT: TCurrencyField;
    tbDiscountsMDISCOUNT: TFloatField;
    Check_prod: TFDQuery;
    Check_prodID: TIntegerField;
    Check_prodMCENA: TCurrencyField;
    Check_prodNAME: TWideStringField;
    Check_prodIDCLASSIF: TIntegerField;
    up_id: TFDQuery;
    Delete_Zakaz: TFDCommand;
    cxImageList2: TcxImageList;
    cxStyleRepository1: TcxStyleRepository;
    cxStyle1: TcxStyle;
    cxGrid1DBTableView1Column4: TcxGridDBColumn;
    ComLed1: TComLed;
    dComPort: TComPort;
    Panel2: TPanel;
    Panel3: TPanel;
    Panel5: TPanel;
    Panel6: TPanel;
    Panel7: TPanel;
    Panel4: TPanel;
    Image1: TImage;
    Label1: TLabel;
    Menu_itemsID: TIntegerField;
    Menu_itemsPID: TIntegerField;
    Menu_itemsMR: TLargeintField;
    Menu_itemsPOS_X: TSmallintField;
    Menu_itemsPOS_Y: TSmallintField;
    Menu_itemsIDSTATION: TIntegerField;
    Menu_itemsNAME: TWideStringField;
    Menu_itemsCAPTION: TWideStringField;
    Menu_itemsIDPRODUCT: TIntegerField;
    Menu_itemsBACK_COLOR: TIntegerField;
    Menu_itemsFONT_COLOR: TIntegerField;
    Menu_itemsFONT_SIZE: TIntegerField;
    Menu_itemsFONT_NAME: TWideStringField;
    Menu_itemsSTOPLIST: TSmallintField;
    Menu_itemsCENA: TFloatField;
    Menu_itemsIDPODRAZD: TIntegerField;
    Menu_itemsOBSLUZH: TCurrencyField;
    Menu_itemsBOBSLUZH: TSmallintField;
    Menu_itemsBDISCOUNT: TSmallintField;
    Menu_itemsIDCLASSIF: TIntegerField;
    Menu_itemsPID_NAME: TWideStringField;
    Image2: TImage;
    cxStyle2: TcxStyle;
    cxStyle3: TcxStyle;
    Label5: TLabel;
    cxButton11: TcxButton;
    Label6: TLabel;
    cxButton1: TcxButton;
    Panel9: TPanel;
    Memo1: TMemo;
    Image3: TImage;
    Label7: TLabel;
    MenuPanel: TPanel;
    Image4: TImage;
    Label8: TLabel;
    Image5: TImage;
    Label9: TLabel;
    Image6: TImage;
    Label10: TLabel;
    Image7: TImage;
    GridPanel1: TGridPanel;
    cxImageList3: TcxImageList;
    ClearBtn: TImage;
    PayButton: TImage;
    cxImageList4: TcxImageList;
    GridPanel2: TGridPanel;
    GridPanel3: TGridPanel;
    Panel1: TPanel;
    GridPanel5: TGridPanel;
    Image8: TImage;
    Image9: TImage;
    Image10: TImage;
    Image11: TImage;
    Image12: TImage;
    Image13: TImage;
    Image14: TImage;
    Image15: TImage;
    Image16: TImage;
    Image17: TImage;
    Image18: TImage;
    Panel8: TPanel;
    GridPanel6: TGridPanel;
    Image19: TImage;
    Image20: TImage;
    Image21: TImage;
    Image22: TImage;
    Image23: TImage;
    Image24: TImage;
    Image25: TImage;
    Image26: TImage;
    Image27: TImage;
    Image28: TImage;
    Image29: TImage;
    Panel10: TPanel;
    GridPanel7: TGridPanel;
    Image32: TImage;
    Image33: TImage;
    Image34: TImage;
    Image35: TImage;
    Image36: TImage;
    Image37: TImage;
    Image38: TImage;
    Image39: TImage;
    Image40: TImage;
    Panel11: TPanel;
    GridPanel8: TGridPanel;
    Image42: TImage;
    Image43: TImage;
    Image44: TImage;
    GridPanel4: TGridPanel;
    Image46: TImage;
    Image47: TImage;
    Image48: TImage;
    GridPanel9: TGridPanel;
    Panel12: TPanel;
    GridPanel10: TGridPanel;
    Image49: TImage;
    Image50: TImage;
    Image51: TImage;
    Panel13: TPanel;
    GridPanel11: TGridPanel;
    Image52: TImage;
    Image53: TImage;
    Image54: TImage;
    Panel14: TPanel;
    GridPanel12: TGridPanel;
    Image55: TImage;
    Image56: TImage;
    Image57: TImage;
    Panel15: TPanel;
    GridPanel13: TGridPanel;
    Image58: TImage;
    Image59: TImage;
    Panel16: TPanel;
    cxImageList5: TcxImageList;
    cxImageList6: TcxImageList;
    Image30: TImage;
    procedure FormCreate(Sender: TObject);
    function WordLength(s: String; wt: Integer): String;
    procedure cxDBLookupComboBox1Click(Sender: TObject);
    procedure TrayIcon1Click(Sender: TObject);
    procedure cxGrid1DBTableView1CustomDrawCell(Sender: TcxCustomGridTableView;
      ACanvas: TcxCanvas; AViewInfo: TcxGridTableDataCellViewInfo;
      var ADone: Boolean);
    procedure cxGrid1DBTableView1CellClick(Sender: TcxCustomGridTableView;
      ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
      AShift: TShiftState; var AHandled: Boolean);
    procedure cxGrid1DBTableView1DataControllerSummaryAfterSummary(
      ASender: TcxDataSummary);
    procedure Demo_timeTimer(Sender: TObject);
    procedure paint_menugrid;
    procedure DBLookupComboBox1PropertiesEditValueChanged(Sender: TObject);
    procedure CommentsAfterOpen(DataSet: TDataSet);
    procedure Action3Execute(Sender: TObject);
    procedure cxGrid1DBTableView1Column1CustomDrawFooterCell(
      Sender: TcxGridTableView; ACanvas: TcxCanvas;
      AViewInfo: TcxGridColumnHeaderViewInfo; var ADone: Boolean);
    procedure ChagResolution(W, H: Integer);
    procedure LoadPlugins(const AFolder, AFileExt: String);
    procedure LoadPlugin(const AFileName: String);
    procedure createBtn(cap, act:String);
    procedure BtnClick(Sender: TObject);
    procedure SendToDisplay(fstr,sstr:String);
    procedure RoundCornerOf(Control: TWinControl) ;
    procedure Image1Click(Sender: TObject);
    procedure Image2Click(Sender: TObject);
    procedure cxButton1Click(Sender: TObject);
    procedure cxButton11Click(Sender: TObject);
    procedure Memo1KeyPress(Sender: TObject; var Key: Char);
    procedure Image3Click(Sender: TObject);
    procedure Image4Click(Sender: TObject);
    procedure ClearBtnClick(Sender: TObject);
    procedure Image5Click(Sender: TObject);
    procedure Image6Click(Sender: TObject);
    procedure Image7Click(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure openCheck;
    procedure BtnState(Img:TImage;act:Boolean);
    procedure Image9MouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure Image46MouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure Image44MouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
  private
    { Private declarations }
    DBFile, uScan:String;
    Demo_t,podrazdID, fonColor:Integer;
    ColCnt,SrollStep:Byte;
    SizeKoof:Double;
  public
    { Public declarations }
  end;
TLoadDLLForm = function(ATApp : TApplication; S: TScreen; D:TFDConnection; id:Integer):THandle;
var
  fstMain: TfstMain;
  License_value:Byte;
  pass, Station,place:Integer;
  fastpay:smallint;
  spis,SrvPrint:Boolean;
  LoadDLLForm : TLoadDLLForm;
  prnts:TStringList;
  DPort, WPort:Byte;
  Decimal:char;
const demover:Boolean = false; //���� ������.
  KeyBtn: array[0..61] of Char = ('�','�','�','�','�','�','�','�','�','�','�','�','�','�','�','�',
                                  '�','�','�','�','�','�','�','�','�','�','�','�','�','�','�',
                                  'f',#0,'d','u','l','t',#0,'p','b','q','r','k','v','y','j','g',
                                  'h','c','n','e','a',#0,'w','x','i','o','s','m',#0,#0,'z');
resourcestring
   rsPluginsLoadError = 'One or more plugins has failed to load:' + sLineBreak + '%s';
implementation

uses DMUnit, DigitUnit, Edit_ItemsUnit, FormaOplatyUnit, CardUnit,
  DataBase_regUnit, StationUnit, LinkConnectionUnit, GuestCNTUnit;

{$R *.dfm}
function GetModuleFileName(Module: HModule): string;
var
   Buff: string;
   BuffSize: Cardinal;
begin
   Result := '';
   if (Module > HINSTANCE_ERROR) then
     begin
       BuffSize := MAX_PATH + 1;
       SetLength(Buff, BuffSize);
       BuffSize := Winapi.Windows.GetModuleFileName(Module, PChar(Buff), BuffSize);
       if BuffSize > 0 then
         Result := Copy(Buff, 1, BuffSize);
     end;
end;

function GetModules: string;
const
   cBPLinfo ='����������� ������:';
var
   P: PLibModule;  fn:String;
begin
   Result := '';
   if Assigned(LibModuleList) and Assigned(LibModuleList.Next) then
     begin
       P := LibModuleList.Next;
       Result := cBPLinfo;
       while Assigned(P) do
         begin
           fn:= GetModuleFileName(P.Instance);
           if CopyFile(PWideChar(fn),PWideChar(ExtractFilePath(ParamStr(0))+'bpl\'+ExtractFileName(fn)),true) then

           Result := Result + #13#10 + '  ' + fn;
           P := P.Next;
         end;
     end;
end;

procedure TfstMain.Action3Execute(Sender: TObject);
begin
 if dm.Current_order.RecordCount = 0 then exit;

{ if (dm.Current_orderISBALANS.AsInteger = 1) and (dm.Current_orderMACCOUNT.AsCurrency < cxGrid1DBTableView1.DataController.Summary.FooterSummaryValues[0]) then
  begin
    MessageDlg('����� ��������!'+#13+'�������: '+FormatCurr('0.0', dm.Current_orderMACCOUNT.AsCurrency), mtError, [mbOk], 0);
    exit;
  end;  }

 if (dm.Orders_item.Active = true) and (dm.Orders_item.RecordCount = 0) then
  begin
   if MessageDlg('������� ����?',mtConfirmation,[mbYes,mbNo],0) = mrYes then
     begin
      Delete_Zakaz.Params[0].AsString:=dm.Current_orderUID.AsString;
      Delete_Zakaz.Execute;
      dm.Current_order.Refresh;
      lbCheck.Caption:='';
     end;
   exit;
  end
 else if dm.Orders_item.Active=false then exit
 else
  try
    dm.Current_order.Edit;
    dm.Current_orderTOTAL_SUM.AsCurrency:=cxGrid1DBTableView1.DataController.Summary.FooterSummaryValues[0];
    dm.Current_order.Post;
  except
  end;
  fmFormaOplaty.cxCurrencyEdit5.EditValue:=0;
  fmFormaOplaty.cxCurrencyEdit6.EditValue:=0;
  fmFormaOplaty.Orders.Close;
  fmFormaOplaty.Orders.Params[0].AsString:= dm.Current_orderUID.AsString;
 fmFormaOplaty.Orders.Open;
 fmFormaOplaty.ShowModal;

 Image3.OnClick(nil);       //home
 SendToDisplay('','');
end;

procedure TfstMain.ChagResolution(W, H: Integer);
//var i,j:Integer;
begin
   SizeKoof:= H/1024;
   fstMain.ClientWidth:=W;
   fstMain.ClientHeight:=H;
   Panel2.Width:=trunc(Panel2.Width*(W/1440));

   {StringGrid1.DefaultColWidth:=trunc(StringGrid1.DefaultColWidth*(W/1440));
   StringGrid1.DefaultRowHeight:=trunc(StringGrid1.DefaultRowHeight*(H/1024));   }
   cxDBLookupComboBox1.Width:= trunc(cxDBLookupComboBox1.Width*W/1440);
   cxButton11.Left:=cxDBLookupComboBox1.Left+cxDBLookupComboBox1.Width+8;
   DBLookupComboBox1.Width:= trunc(DBLookupComboBox1.Width*W/1440);
   DBLookupComboBox1.Left:= cxButton11.Left+cxButton11.Width+24;
   cxDBLookupComboBox1.Style.Font.Size:=trunc(cxDBLookupComboBox1.Style.Font.Size*SizeKoof);
   DBLookupComboBox1.Style.Font.Size:=trunc(DBLookupComboBox1.Style.Font.Size*SizeKoof);
   Label6.Left:= DBLookupComboBox1.Left;
   cxButton1.Left:= DBLookupComboBox1.Left+DBLookupComboBox1.Width+25;

   ClearBtn.Width:= trunc(ClearBtn.Height*SizeKoof);//trunc(ClearBtn.Width*W/1440);
   ClearBtn.Height:=trunc(ClearBtn.Height*SizeKoof);
   ClearBtn.Left:=trunc(ClearBtn.Left*(W/1440));
   ClearBtn.Top:=trunc(ClearBtn.Top*SizeKoof);

   PayButton.Width:= trunc(PayButton.Width*W/1440);
   PayButton.Height:= trunc(PayButton.Height*SizeKoof);
   PayButton.Left:=ClearBtn.Left*2+ClearBtn.Width;
   PayButton.Top:=trunc(PayButton.Top*SizeKoof);

   Label3.Top:=trunc(Label3.Top*SizeKoof);
   Label3.Font.Size:=trunc(Label3.Font.Size*SizeKoof);
   Label4.Top:=trunc(Label4.Top*SizeKoof);
   Label4.Font.Size:=trunc(Label4.Font.Size*SizeKoof);

   Label2.Font.Size:=trunc(Label2.Font.Size*SizeKoof);
   Label2.Left:=PayButton.Left+PayButton.Width+trunc(8*W/1440);
   Label2.Top:=PayButton.Top+trunc(25*W/1440);
   Panel3.Height:=trunc(Panel3.Height*SizeKoof);
   Panel6.Height:=trunc(Panel6.Height*SizeKoof);
   Panel5.Height:=trunc(Panel5.Height*SizeKoof);
   Panel7.Height:=trunc(Panel7.Height*SizeKoof);
   Label7.Font.Size:=trunc(Label7.Font.Size*SizeKoof);
   Label1.Font.Size:=trunc(Label1.Font.Size*SizeKoof);
   Label8.Font.Size:=trunc(Label8.Font.Size*SizeKoof);
   Label9.Font.Size:=trunc(Label9.Font.Size*SizeKoof);
   Label10.Font.Size:=trunc(Label10.Font.Size*SizeKoof);

   Image3.Height:=trunc(Image3.Height*SizeKoof);
   Image1.Height:=trunc(Image1.Height*SizeKoof);

   Image5.Height:=trunc(Image5.Height*SizeKoof);
   Image6.Height:=trunc(Image6.Height*SizeKoof);
   Image7.Height:=trunc(Image7.Height*SizeKoof);

   Image3.Left:=trunc(Image3.Left*SizeKoof);
   Image1.Left:=trunc(Image1.Left*SizeKoof);

   Image5.Left:=trunc(Image5.Left*SizeKoof);
   Image6.Left:=trunc(Image6.Left*SizeKoof);
   Image7.Left:=trunc(Image7.Left*SizeKoof);

   Label7.Left:=Image3.Left;
   Label1.Left:=Image1.Left;
   Label8.Left:=Image5.Left;
   Label9.Left:=Image6.Left;
   Label10.Left:=Image7.Left;

   cxStyle1.Font.Size:=trunc(cxStyle1.Font.Size*SizeKoof);
   cxStyle1.Font.Style:=[fsbold];
   cxStyle2.Font.Size:=trunc(cxStyle2.Font.Size*SizeKoof);
   cxStyle3.Font.Size:=trunc(cxStyle3.Font.Size*SizeKoof);
   Memo1.Font.Size:= trunc(Memo1.Font.Size*SizeKoof);

end;

procedure TfstMain.ClearBtnClick(Sender: TObject);
begin
 if dm.Orders_item.RecordCount = 0 then exit;

 while dm.Orders_item.Eof <> true do
  dm.Orders_item.Delete;
end;

procedure TfstMain.CommentsAfterOpen(DataSet: TDataSet);
begin
showMessage('open');
end;

procedure TfstMain.createBtn(cap, act: String);
var btn:TcxButton;
begin
 btn:=TcxButton.Create(Panel4);
 btn.Caption:=cap;
 btn.Font.Style:=[fsBold];
 btn.Align:=alRight;
 btn.Height:=54;
 btn.Width:=106;
 btn.Hint:=act;
 btn.OnClick:=btnClick;
 btn.Parent:=Panel4;
end;

procedure TfstMain.cxButton11Click(Sender: TObject);
begin
  if Panel9.Visible then
    Panel9.Visible := false
  else if dm.Orders_item.RecordCount > 0 then
  begin
    Panel9.Visible := true;
    Panel9.BringToFront;
    Memo1.Lines.Text := dm.Orders_itemCOMMENTS.AsString;
    Memo1.SetFocus;
    Panel9.Tag:=0;
    Panel9.Height:=round(Panel9.Width * 0.31);
    Panel9.Top:=fstMain.Height - Panel9.Height-Panel4.Height;
  end;
end;

procedure TfstMain.cxButton1Click(Sender: TObject);
begin
if dm.Current_order.RecordCount = 0 then exit;

fmCard:=TfmCard.Create(Self);
fmCard.ShowModal;
fmCard.Free;
end;

procedure TfstMain.BtnState(Img:TImage;act: Boolean);
begin
 Img.Picture.Bitmap:=nil;
 if act then
  cxImageList4.GetBitmap(Img.Tag+0,Img.Picture.Bitmap)
 else cxImageList4.GetBitmap(Img.Tag+1,Img.Picture.Bitmap);

 Img.Enabled:=act;
end;

procedure TfstMain.BtnClick(Sender: TObject);
var
  Hndl: THandle;
begin
  Hndl:=LoadLibrary(PChar(TButton(Sender).Hint));
  if Hndl = 0 then
    begin
      ShowMessage('������ �������� dll "'+TButton(Sender).Hint+'"');
    end
    else
    begin
      @LoadDLLForm := GetProcAddress(Hndl, 'LoadDLLForm');
      if @LoadDLLForm <> nil then
      begin
        LoadDLLForm(Application,Screen, dm.FDB, pass);
      end
      else
      begin
        FreeLibrary(Handle);
        ShowMessage('Could not load library');
      end;
    end;
end;

procedure TfstMain.cxDBLookupComboBox1Click(Sender: TObject);
begin
if dm.Orders_item.RecordCount = 0 then
    dm.Orders_item.Cancel;
end;

procedure TfstMain.cxGrid1DBTableView1CellClick(Sender: TcxCustomGridTableView;
  ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
  AShift: TShiftState; var AHandled: Boolean);
begin
if dm.Orders_item.RecordCount=0 then exit;
if ACellViewInfo.Item.Caption = '���-��' then
 begin
  // if tbMenu.Locate('idMenu',dm.Orders_itemPRODUCT.AsInteger,[]) then
   begin
    fmEdit_items.Label1.Caption:= dm.Orders_itemNAME.AsString;
    fmEdit_items.Edit1.Text:='';
    fmEdit_items.ShowModal;
    if fmEdit_items.Edit1.Text <>'' then
       try
        dm.Orders_item.Edit;
        dm.Orders_itemKOLVO.AsFloat:=StrToFloat(fmEdit_items.Edit1.Text);
        if fmEdit_items.ChgID > 0 then
         begin
          dm.Orders_itemPRODUCT.AsInteger:=fmEdit_items.ChgID;
          dm.Orders_itemCENA_SALES.AsCurrency:=fmEdit_items.checkWeghtMCENA.AsCurrency;
          dm.Orders_itemNAME.AsString:=fmEdit_items.checkWeghtNAME.AsString;
         end;
        dm.Orders_item.Post;
        SendToDisplay(IntToStr(dm.Orders_itemKOLVO.AsInteger)+' x '+FormatCurr('# ##0.##', dm.Orders_itemCENA_SALES.AsCurrency)+' = '+FormatCurr('# ##0.##', dm.Orders_itemKOLVO.AsFloat * dm.Orders_itemCENA_SALES.AsCurrency),
      'TOTAL: '+FormatCurr('# ##0.##', cxGrid1DBTableView1.DataController.Summary.FooterSummaryValues[0])+'KZT');
       except
       end;

   end;
 end;

end;

procedure TfstMain.cxGrid1DBTableView1Column1CustomDrawFooterCell(
  Sender: TcxGridTableView; ACanvas: TcxCanvas;
  AViewInfo: TcxGridColumnHeaderViewInfo; var ADone: Boolean);
var saldo:Currency;
begin
if dm.Current_orderISBALANS.AsInteger = 1 then
   begin
if VarisNull(cxGrid1DBTableView1.DataController.Summary.FooterSummaryValues[0]) then
 saldo:=dm.Current_orderMACCOUNT.AsCurrency else saldo:=dm.Current_orderMACCOUNT.AsCurrency - cxGrid1DBTableView1.DataController.Summary.FooterSummaryValues[0];
AviewInfo.Text:=Format('�������: %n', [saldo]);
if saldo < 0 then
  ACanvas.Font.Color:=clred else ACanvas.Font.Color:=clDefault;
   end;
end;

procedure TfstMain.cxGrid1DBTableView1CustomDrawCell(
  Sender: TcxCustomGridTableView; ACanvas: TcxCanvas;
  AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
begin
  if AViewInfo.Item.Caption = 'add' then
   begin
      ACanvas.Canvas.FillRect(AviewInfo.Bounds);
      cxImageList2.Draw(ACanvas.Canvas, AViewInfo.Bounds, 0);
      ADone:=true;
   end;
  if AViewInfo.GridRecord.Values[3] = 1 then
   ACanvas.Font.Color :=clRed;
end;

procedure TfstMain.cxGrid1DBTableView1DataControllerSummaryAfterSummary(
  ASender: TcxDataSummary);
begin
  if dm.Current_order.Active = false then exit;
  if ASender.FooterSummaryValues[0] = null then
   begin
    Label2.Caption:='';
    Label3.Caption:='';
    Label4.Caption:='';
   end else
    begin
     Label2.Caption:=Format('%n',[StrToFloat(ASender.FooterSummaryValues[0])]);
     Label3.Caption:='�������: '+Format('%n',[StrToFloat(ASender.FooterSummaryValues[2])]);
     Label4.Caption:='������: '+Format('%n',[StrToFloat(ASender.FooterSummaryValues[1])]);
    end;
end;

procedure TfstMain.DBLookupComboBox1PropertiesEditValueChanged(Sender: TObject);
begin
if (dm.Current_order.RecordCount = 0) or (dm.Orders_item.Active = false) then exit;
Menu_items.Filter:='';
dm.Current_order.Edit;
dm.Current_orderIDKLINET.AsInteger:=DBLookupComboBox1.EditingValue;
dm.Current_order.Post;
tbDiscounts.Close;
tbDiscounts.Params[0].Value :=DBLookupComboBox1.EditingValue;
tbDiscounts.Open;

  dm.Orders_item.First;
  while dm.Orders_item.Eof <> true do
   begin
    dm.Orders_item.Edit;
    try

     //dm.Orders_itemMDISCOUNT.AsCurrency:=dm.Orders_itemCENA_SALES.AsCurrency * tbDiscounts.Lookup('idclassif',dm.Orders_itemIDCLASSIF.asinteger,'Discount')/100;
     dm.Orders_itemDISCOUNT.AsFloat:=tbDiscounts.Lookup('idclassif',dm.Orders_itemIDCLASSIF.asinteger,'Discount');
     if Menu_items.Locate('ID', dm.Orders_itemIDMENU.AsInteger, []) then
       begin
        dm.Orders_itemM_BDISCOUNT.AsBoolean:= (tbPersonUSEDISCOUNT.AsBoolean) and (Menu_itemsBDISCOUNT.AsInteger=1);
        dm.Orders_itemM_BOBSLUZH.AsBoolean:= (Menu_itemsBOBSLUZH.AsInteger=1) and (tbPersonUSEOBSLUZH.AsBoolean);
       end;
     dm.Orders_item.Post;
   except
     dm.Orders_item.Cancel;
    end;
    dm.Orders_item.Next;
   end;

end;

procedure TfstMain.Demo_timeTimer(Sender: TObject);
begin
 if Demo_t < GetTickCount then
  begin
    Demo_time.Enabled:=false;
    trayIcon1.OnClick(nil);
    MessageDlg('�� ����������� ����-������ ��������.'+#13'���������� �� ������������ �������� �� ����� ������������ www.aksau.kz',mtInformation,[mbOk],0);
    Application.Terminate;
  end;
end;

procedure TfstMain.FormCreate(Sender: TObject);
var  Rep, NeedRep:integer;
Hlis:THandle; //f_EvalPeriod:function:byte; stdcall;
ini:TIniFile;
 f_CheckLic:function:byte; stdcall;
 CreateMyForm:Function(AppHandle: THandle):byte; stdcall;
 DestroyMyForm:procedure; stdcall;
  DevMode : TDeviceMode;
//  Flags  : dword;
 reg: TRegistry;
begin
  reg := TRegistry.Create;
  try
    reg.RootKey := HKEY_CURRENT_USER;
    if reg.OpenKey('Control Panel\International', true) then
      Decimal := reg.ReadString('sDecimal')[1];
    reg.CloseKey;
  finally
    reg.Free;
  end;
SetConnection(TForm(Self), dm.FDB);
if Demover then
 begin
     MessageDlg('�� ����������� ����-������ ���������!', mtWarning, [mbOk], 0);
 end
else
 begin
  @f_CheckLic := nil;
    Hlis := LoadLibrary(PWideChar(ExtractFilePath(ParamStr(0)) + 'lib\License.dll'));
    if Hlis >= 32 then
    begin
      if not FileExists(ExtractFilePath(ParamStr(0)) + 'sys.lic') then
        try
          @CreateMyForm := GetProcAddress(Hlis, 'CreateMyForm');
          @f_CheckLic := GetProcAddress(Hlis, 'fCheckLic');
          CreateMyForm(Application.Handle);
          License_value := f_CheckLic();

          @DestroyMyForm := GetProcAddress(Hlis, 'DestroyMyForm');
          DestroyMyForm;
          if License_value <> 1 then
          begin
            if not FileExists(ExtractFilePath(ParamStr(0)) + 'sys.lic') then
              MessageDlg('������ �� �����������!', mtWarning, [mbOk], 0);
            Application.Terminate;
            FreeLibrary(Hlis);
            exit;
          end;
        except
          MessageBox(Application.Handle,
            '������ ���������� License.dll ������ ���� ������ 3.0.0.0',
            '������!', mb_IconWarning or mb_OK);
          Application.Terminate;
        end
      else
        try
          @f_CheckLic := GetProcAddress(Hlis, 'fCheckLic');
          License_value := f_CheckLic();
          if License_value <> 1 then
          begin
            Application.Terminate;
            exit;
          end;
        except
          MessageBox(Application.Handle,
            '������ ���������� License.dll ������ ���� ������ 4.0.0.0',
            '������!', mb_IconWarning or mb_OK);
          Application.Terminate;
        end;
    end
    else
    begin
      MessageDlg('��������� ������������!' + #13 + '�������������� ���������!',
        mtWarning, [mbOk], 0);
      Application.Terminate;
    end;
    FreeLibrary(Hlis);
 end;


  ini:=TIniFile.Create(ExtractFilePath(Application.ExeName)+'config.ini');
  try
   DBFile:=ini.ReadString('DATABASE', 'DB', '');
   if DBFile = '' then
         begin
          MessageDlg('��������! ����������� ���������� � ���� ������!'+#13+'��� ����������� ������ ������� ���� ���� ������.',mtWarning,[mbOk],0);
          Application.CreateForm(TfmDatabase_reg, fmDatabase_reg);
          fmDatabase_reg.ShowModal;
          if fmDatabase_reg.DataBase <> '' then
           begin
            DBFile:=fmDatabase_reg.DataBase;
            ini.WriteString('DATABASE', 'DB', fmDatabase_reg.DataBase);
            fmDatabase_reg.Free;
           end
           else begin Application.Terminate; exit; end;
         end;
    Station:=ini.ReadInteger('DATABASE', 'Station', 0);
    place:=ini.ReadInteger('DATABASE', 'Place', 0);
     if station = 0 then
         begin
           dm.fdb.Params.UserName:='SYSDBA';
           dm.fDB.Params.Password:='masterkey';
           dm.fDB.Params.Database:=DBFile;
           try
             dm.FDB.Connected := True;
           except
             on e:Exception do
                begin
                  MessageDlg(e.Message, mtWarning,[mbOk],0);
                 end;
            end;
           if dm.FDB.Connected then
              begin
               Application.CreateForm(TfmStation, fmStation);
               fmStation.ShowModal;
               fmStation.Free;
               if Station = 0 then
                  begin
                    MessageDlg('��� ������ � �������!',mtWarning, [mbOk],0);
                    Application.Terminate;
                    exit;
                  end;
              end else
                    begin
                     MessageDlg('��� ������ � �������!',mtWarning, [mbOk],0);
                     Application.Terminate;
                     exit;
                    end;

         end;

     Rep:=ini.ReadInteger('DATABASE', 'StationRep', 1);
     NeedRep:=ini.ReadInteger('DATABASE', 'NeedRep', 0);
     WPort:=ini.ReadInteger('DATABASE','WPORT',0);
     FastPay:=ini.ReadInteger('LOCALSETTINGS', 'FASTPAY', 0);
     spis:=ini.ReadBool('LOCALSETTINGS', 'SPIS', false);
     DPort:=ini.ReadInteger('LOCALSETTINGS','DPORT',0);
     if ini.ReadBool('LOCALSETTINGS', 'NOCOMMENT', false) then
      begin
          cxDBLookupComboBox1.Visible:=false;
          Label5.Visible:=false;
      end;

  finally

  end;

 dm.FDB.Connected:=false;
 if NeedRep <> 0 then
   DBFile:=extractFilePath(Application.ExeName)+'Database\KDB.AKS';

 with dm.FDB.Params do begin
  {UserName := 'CLNT'+IntToStr(Rep);
  Password := 'CLNT'+IntToStr(Rep);
  Add('rolename=RDB$ADMIN'); }
  Database := DBFile;
 end;

 try
  dm.FDB.Connected:=true;
 except
  on E:exception do
   begin
    Messagedlg(e.Message, mtWarning, [mbOk], 0);
    Application.Terminate;
    exit;
   end;
 end;


{ if dm.Fdb.ExecSQLScalar('select max(DT) from DOCUMENTS where OPERACII_TYPE = 2')>now then
  begin
    if MessageDlg('�������� ��������� ����� �� ���������!'+#13+'��� ����� ����������?',mtError, [mbYes,mbNo], 0) <> mrYes then
      Application.Terminate;
  end; }

if License_value = 0 then
 begin
  Demo_t:=GetTickCount+300000;
  demo_time.Enabled:=true;
 end;


//**************************************************
  DigitForm:=TDigitForm.Create(self);
  DigitForm.ShowModal;
  if DigitForm.Edit1.Text <> '' then
   begin
    Check_pass.Close;
    Check_pass.Params[0].AsString:=DigitForm.Edit1.Text;
    Check_pass.Open;
    if Check_pass.FieldByName('IDPERSON').AsInteger = 0 then
      begin
       Application.Terminate;
       exit;
      end
    else pass:=Check_pass.FieldByName('IDPERSON').AsInteger;
   end else
    begin
      Application.Terminate;
      exit;
    end;
  DigitForm.Free;

  tbStation.Close;
  tbStation.Params[0].AsInteger:=Station;
  tbStation.Open;

  prnts:=TStringList.Create;
  prnts.Delimiter:=',';
  prnts.DelimitedText:=tbStationPrinter.AsString;


   if tbStationBCARD_KLIENT.AsBoolean then   //����������� �������� �� ������� �� �����
   begin
     DBLookUpComboBox1.Enabled:=false;
     cxButton1.Visible:=true;
   end
  else
   begin
     DBLookUpComboBox1.Enabled:=true;
     cxButton1.Visible:=false;
   end;
 dm.tbWaiter.Active:=true;
 dm.tbPerson.Active:=true;
 dm.Current_order.Close;
 dm.Current_order.Params[0].AsInteger:=Station;
 dm.Current_order.Open;
 DBLookupComboBox1.Enabled:= dm.Current_order.RecordCount > 0;

// dm.Menu_tree.OpenWP([Station]);
// dm.tbMenu_by_cod.OpenWP([Station]);
// dm.tbMenu_last.OpenWP([Station]);
 dm.Comments.Active:=true;

  tbDiscounts.Active:=true;
  LoadPlugins(ExtractFilePath(ParamStr(0))+'FstModuls', '.dll');

  tbPerson.Active:=true;
  lbCheck.Caption:=dm.Current_orderCHET.AsString;
  SrvPrint:=dm.FDB.ExecSQLScalar('select SERVER_PRINT from tbStation where id = '+IntToStr(Station)) = 1;
// ��������� ���������� ������.
SizeKoof:=1;
if dm.FDB.ExecSQLScalar('select Resolution from tbStation where id = '+IntToStr(Station)) = 0 then
 begin
   fstMain.ClientWidth:=ini.ReadInteger('FORM', 'WIDTH', 800);
   fstMain.ClientHeight:=ini.ReadInteger('FORM', 'HEIGHT', 600);
 end
else
 begin
   ChagResolution(GetSystemMetrics(Sm_Cxscreen), GetSystemMetrics(Sm_CYscreen));
  // ChagResolution(ini.ReadInteger('FORM', 'WIDTH',1440 {1024}), ini.ReadInteger('FORM', 'HEIGHT',1024 {768}));
 end;
if tbStationBCHANG_SCREEN.AsBoolean then      //�������� ������������ ������ �� 800�600
 begin
  ZeroMemory(@DevMode, sizeof(TDeviceMode));
  DevMode.dmSize:=sizeof(TDeviceMode);
  if dm.FDB.ExecSQLScalar('select Resolution from tbStation where id = '+IntToStr(Station)) = 0 then
   begin
    DevMode.dmPelsWidth :=ini.ReadInteger('FORM', 'WIDTH', 800);
    DevMode.dmPelsHeight:=ini.ReadInteger('FORM', 'HEIGHT', 600);
   end else
    begin
    DevMode.dmPelsWidth :=ini.ReadInteger('FORM', 'WIDTH', 1024);
    DevMode.dmPelsHeight:=ini.ReadInteger('FORM', 'HEIGHT', 768);
    end;
  DevMode.dmFields:=DM_PELSWIDTH+DM_PELSHEIGHT;
  intToStr(ChangeDisplaySettings(DevMode,4));
 end;
ini.Free;

  try
     ColCnt:=5;
     SrollStep:=0;
     Menu_items.Close;
     Menu_items.Params[0].AsInteger:=ColCnt;
     Menu_items.Params[1].AsInteger:=Station;
     Menu_items.Open;

     PodrazdID:=0;
     Menu_items.Filter:=Menu_itemsPID.FieldName+' is null ';
     FonColor:=clWhite;
     paint_menugrid;
   except
     on e:Exception do
      ShowMessage(e.Message);
   end;

 //RoundCornerOf(PayButton);
 //RoundCornerOf(ClearBtn);
 RoundCornerOf(cxDBLookupComboBox1);
 //RoundCornerOf(cxButton14);
end;

procedure TfstMain.FormKeyPress(Sender: TObject; var Key: Char);
var Kolvo_str, str:String;  Kolvo:Double;
begin
 if Panel9.Visible then exit;

  if (Key = #13) and (uScan <> '') then
   begin
     str:=uScan;
   Kolvo:=1;
   if (str[1]+str[2] = '21') or (str[1]+str[2] = '28') then
     begin
      if length(str) < 8 then Kolvo:=0 else
       begin
        Kolvo_str:=str;
        delete(kolvo_str,1,7);
        delete(kolvo_str,6,1);

        if str[1]+str[2] = '21' then
          Kolvo:=StrToFloat(kolvo_Str)/1000
        else Kolvo:=StrToInt(kolvo_Str);
       end;
       delete(str,8, length(str));
     end;

    if dm.Current_order.RecordCount = 0 then   // ��������� ���� ���� �� ������
      OpenCheck;

     Check_prod.Close;
     Check_prod.Params[0].AsString:=str;
     Check_prod.Active:=true;
     if Check_prod.RecordCount > 0 then
        begin
         if dm.Orders_item.Locate('product', Check_prod.FieldByName('ID').AsInteger, []) then
           dm.Orders_item.Edit
         else
           begin
            dm.Orders_item.Append;
            dm.Orders_itemIDDOCUMENT.AsString:=dm.Current_orderUID.AsString;
            dm.Orders_itemPRODUCT.AsInteger:=Check_prod.FieldByName('ID').AsInteger;
            dm.Orders_itemCENA_SALES.AsCurrency:=Check_prod.FieldByName('MCENA').AsCurrency;
            dm.Orders_itemNAME.AsString:=Check_prod.FieldByName('NAME').AsString;
            dm.Orders_itemIDPODRAZD.AsInteger:=Menu_itemsIDPODRAZD.AsInteger;
            dm.Orders_itemIDCLASSIF.AsInteger:=Check_prod.FieldByName('IDCLASSIF').AsInteger;
            dm.Orders_itemMDISCOUNT.AsCurrency:=Check_prod.FieldByName('MCENA').AsCurrency;//*tbDiscounts.Lookup('idclassif;idclient',VarArrayOf([Check_prod.FieldByName('IDCLASSIF').AsInteger,DBLookupComboBox1.EditingValue]),'Discount')/100;
           end;
          dm.Orders_itemKOLVO.AsFloat:=dm.Orders_itemKOLVO.AsFloat + Kolvo;
          dm.Orders_item.Post;
        end;
     uScan:='';
   end
  else uScan:=uScan+Key;
end;

procedure TfstMain.Image1Click(Sender: TObject);
//var i,j:Integer;
begin
up_id.Close;
up_id.Params[0].AsInteger:=PodrazdID;
up_id.Open;
if UP_ID.RecordCount = 0 then
 begin
   BtnState(Image1,false);
   BtnState(Image3,false);
   Menu_items.Filter:=Menu_itemsPID.FieldName+' is null';
   PodrazdID:=0;
 end
else
 begin
   Menu_items.Filter:=Menu_itemsPID.FieldName+' = '+up_id.FieldByName('ID').AsString;
   PodrazdID:=up_id.FieldByName('ID').asinteger;
 end;
  SrollStep:=0;
  Paint_menugrid;
end;

procedure TfstMain.Image2Click(Sender: TObject);
begin
TrayIcon1.Visible:=true;
trayIcon1.ShowBalloonHint;
fstMain.Hide;
end;

procedure TfstMain.Image3Click(Sender: TObject);
begin
  BtnState(Image1,false);
  BtnState(Image3,false);
  Menu_items.Filter:=Menu_itemsPID.FieldName+' is null';
  PodrazdID:=0;
  if (Panel9.Visible = true) then
    begin
      Panel9.Visible := false;
      Panel9.Tag := 0;
    end;
  SrollStep:=0;
  Paint_menugrid;
end;

procedure TfstMain.Image44MouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
var i,lng:Integer;
begin

  if Image44.Tag = 0 then
  begin
    ActivateKeyboardLayout(LoadKeyboardLayout('00000419', 0), 0);
    Image44.Picture.Bitmap:=nil;
    cxImageList6.GetBitmap(Image44.Tag,Image44.Picture.Bitmap);
    Image44.Tag:=1;
    lng:=0;
  end
  else if Image44.Tag = 1 then
  begin
    ActivateKeyboardLayout(LoadKeyboardLayout('00000409', 0), 0); // - Eng
    Image44.Picture.Bitmap:=nil;
    cxImageList6.GetBitmap(Image44.Tag,Image44.Picture.Bitmap);
    Image44.Tag:=0;
    lng:=31;
  end;

  for I := 0 to GridPanel5.ControlCount-1 do
     begin
      TImage(GridPanel5.Controls[i]).Picture.Bitmap := nil;
      cxImageList5.GetBitmap(TImage(GridPanel5.Controls[i]).Tag+lng, TImage(GridPanel5.Controls[i]).Picture.Bitmap);
     end;
  for I := 0 to GridPanel6.ControlCount-1 do
     begin
      TImage(GridPanel6.Controls[i]).Picture.Bitmap := nil;
      cxImageList5.GetBitmap(TImage(GridPanel6.Controls[i]).Tag+lng, TImage(GridPanel6.Controls[i]).Picture.Bitmap);
     end;
  for I := 0 to GridPanel7.ControlCount-1 do
     begin
      TImage(GridPanel7.Controls[i]).Picture.Bitmap := nil;
      cxImageList5.GetBitmap(TImage(GridPanel7.Controls[i]).Tag+lng, TImage(GridPanel7.Controls[i]).Picture.Bitmap);
     end;
end;

procedure TfstMain.Image46MouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
Memo1.Lines.Text:='';
 BtnState(Image1,false);
  BtnState(Image3,false);
  Menu_items.Filter:=Menu_itemsPID.FieldName+' is null';
  PodrazdID:=0;
  SrollStep:=0;
  Paint_menugrid;
end;

procedure TfstMain.Image4Click(Sender: TObject);
begin
if MessageDlg('������� ���������?', mtConfirmation, [mbYes, mbNo], 0) = mrYes then

Close;
end;

procedure TfstMain.Image5Click(Sender: TObject);
begin
  if Panel9.Visible then
    Panel9.Visible := false
  else
  begin
    Panel9.Visible := true;
    Panel9.BringToFront;
    Memo1.Lines.Text := '';
    Memo1.SetFocus;
    Panel9.Tag:=1;
    Panel9.Height:=round(Panel9.Width * 0.31);
    Panel9.Top:=fstMain.Height - Panel9.Height-Panel4.Height;
  end;
end;

procedure TfstMain.Image6Click(Sender: TObject);
begin
  if SrollStep > 0 then
   begin
     SrollStep:=SrollStep-1;
     paint_menugrid;
   end;
end;

procedure TfstMain.Image7Click(Sender: TObject);
begin
  if Menu_items.RecordCount > SrollStep * Colcnt + 25 then
   begin
     inc(SrollStep);
     paint_menugrid;
   end;
end;

procedure TfstMain.Image9MouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
var key:Char;
begin
 if TImage(Sender).Tag > 61 then
   begin
     if TImage(Sender).Tag = 72 then  key:='.'
     else if TImage(Sender).Tag = 73 then key:=#8
     else if TImage(Sender).Tag = 74 then key:=#13
     else if TImage(Sender).Tag = 75 then key:=' '
     else key:= IntToStr(TImage(Sender).Tag-62)[1];
   end
 else if Image44.Tag = 1 then
    key:=KeyBtn[TImage(Sender).Tag]
 else  key:=KeyBtn[TImage(Sender).Tag+31];
 if key <> #0 then
   Memo1KeyPress(nil,key);
 if key = #8 then
   Memo1.Lines.Text:=copy(Memo1.Lines.Text,1,length(Memo1.Lines.Text)-1)
 else if (key = #13) and (Length(Memo1.Lines.Text) > 0) then BtnState(Image3,true)
 else if (key <> #0) then Memo1.Lines.Text:=Memo1.Lines.Text+key;
 Memo1.SelStart:=Length(Memo1.Lines.Text);
 Memo1.SelLength:=0;
end;

procedure TfstMain.LoadPlugin(const AFileName: String);
type
TGetGroup = function:string;
TGetName = function:string;
TGetMDIName = function:string;
var
  Handle: THandle;
  GetGroup:TGetGroup;
  GetName: TGetName;
  GetMDIName: TGetMDIName;
begin
   Handle := LoadLibrary(PChar(AFileName));
  if Handle = 0 then
    begin
      ShowMessage('O����� �������� dll "'+AFileName+'"');
    end
    else
    try
      @GetGroup := GetProcAddress(Handle, 'GetGroup');
      @GetName := GetProcAddress(Handle, 'GetName');
      @GetMDIName := GetProcAddress(Handle, 'GetMDIName');
      if (@GetGroup <> nil) and (@GetName <> nil) then
      begin
        createBtn(GetName, AFileName);
      end
      else
          ShowMessage('Could not load library');
   finally
     //FreeLibrary(Handle);
   end;
end;

procedure TfstMain.LoadPlugins(const AFolder, AFileExt: String);
function PluginOK(const APluginName, AFileExt: String): Boolean;
  begin
    Result := (AFileExt = '');
    if Result then
      Exit;
    Result := SameFileName(ExtractFileExt(APluginName), AFileExt);
  end;
var
  Path: String;
  SR: TSearchRec;
  Failures: TStringList;
  FailedPlugins: TStringList;
begin
  Path := IncludeTrailingPathDelimiter(AFolder);
  Failures := TStringList.Create;
  FailedPlugins := TStringList.Create;
  try
    if FindFirst(Path + '*.*', faNormal, SR) = 0 then
    try
      repeat
        if ((SR.Attr and faDirectory) = 0) and
           PluginOK(SR.Name, AFileExt) then
        try
          LoadPlugin(Path + SR.Name);
        except
          on E: Exception do
          begin
            FailedPlugins.Add(SR.Name);
            Failures.Add(Format('%s: %s', [SR.Name, E.Message]));
          end;
        end;
      until FindNext(SR) <> 0;
    finally
      FindClose(SR);
    end;
    if Failures.Count > 0 then
      showMessage(Format(rsPluginsLoadError, [Failures.Text]));
  finally
    FreeAndNil(FailedPlugins);
    FreeAndNil(Failures);
  end;
end;

procedure TfstMain.Memo1KeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
  begin
   if Panel9.Tag = 0 then
     begin
      dm.Orders_item.Edit;
      dm.Orders_itemCOMMENTS.AsString := Memo1.Lines.Strings[0];
      dm.Orders_item.Post;
      Panel9.Visible := false;
     end
   else if Panel9.Tag = 1 then
     begin
      if Memo1.Lines.Strings[0] <> '' then
        begin
         Menu_items.Filter:='upper('+Menu_itemsCAPTION.FieldName+') like ''%'+AnsiUpperCase(Memo1.Lines.Strings[0])+'%''';
         SrollStep:=0;
         Paint_menugrid;
        end;
      Panel9.Visible := false;
     end;
  end
else if Panel9.Tag = 1 then
 begin
   if Length(Memo1.Lines.Strings[0]) > 0 then
        begin
          if key = #8 then
           begin
            if length(Memo1.Lines.Strings[0])>1 then
              begin
                var str:=Memo1.Lines.Strings[0];
                delete(str,length(str),1);
                Menu_items.Filter:='upper('+Menu_itemsCAPTION.FieldName+') like ''%'+AnsiUpperCase(str)+'%''';
              end
            else begin
             if PodrazdID = 0 then
                Menu_items.Filter:=Menu_itemsPID.FieldName+' is null'
             else Menu_items.Filter:=Menu_itemsPID.FieldName+' = '+PodrazdID.ToString;
            end;
           end
          else Menu_items.Filter:='upper('+Menu_itemsCAPTION.FieldName+') like ''%'+AnsiUpperCase(Memo1.Lines.Strings[0]+Key)+'%''';
          SrollStep:=0;
          Paint_menugrid;
        end;
 end;
end;

procedure TfstMain.openCheck;
begin
  dm.adddoc.Params[0].AsInteger:=tbStationID.AsInteger;
  dm.adddoc.Params[1].AsInteger:=pass;
  dm.adddoc.Execute;

  dm.Current_order.Refresh;
  dm.Current_order.Last;
  lbCheck.Caption:=dm.Current_orderCHET.AsString;
  DBLookupComboBox1.Enabled:=true;
end;

procedure TfstMain.paint_menugrid;
var i:Integer;
begin
 if GridPanel1.ControlCount = 0 then
  for i:= 0 to 24 do
   with MyItem.Create(GridPanel1) do
     isItem:=0;

 BtnState(Image6,SrollStep > 0);
 BtnState(Image7,Menu_items.RecordCount > SrollStep * ColCnt + 25);
 {Image6.Visible:= SrollStep > 0;
 Label9.Visible:= SrollStep > 0;
 Image7.Visible:= Menu_items.RecordCount > SrollStep * ColCnt + 25;
 Label10.Visible:= Menu_items.RecordCount > SrollStep * ColCnt + 25; }

 for I := 1 to 25 do
  begin

   if Menu_items.RecordCount < i + SrollStep * ColCnt then
     (GridPanel1.Controls[i-1] as MyItem).isItem:=0
   else
    begin

      Menu_items.RecNo:= i + SrollStep * ColCnt;


      with (GridPanel1.Controls[i-1] as MyItem) do
      begin
        if Menu_itemsIDPRODUCT.IsNull then
          isItem:=1
        else isItem:=2;
        Txt.Caption:=Menu_itemsCAPTION.AsString;
        Cena.Caption:=FormatCurr('# ##0',Menu_itemsCena.AsCurrency);
        id:=Menu_itemsID.AsInteger;
        Stop.Visible:=Menu_itemsSTOPLIST.AsInteger=1;
      end

    end;
  end;

end;

procedure TfstMain.RoundCornerOf(Control: TWinControl);
var
   R: TRect;
   Rgn: HRGN;
begin
   with Control do
   begin
     R := ClientRect;
     rgn := CreateRoundRectRgn(R.Left, R.Top, R.Right, R.Bottom, 20, 20) ;
     Perform(EM_GETRECT, 0, lParam(@r)) ;
     InflateRect(r, - 4, - 4) ;
     Perform(EM_SETRECTNP, 0, lParam(@r)) ;
     SetWindowRgn(Handle, rgn, True) ;
     Invalidate;
   end;
end;

procedure TfstMain.SendToDisplay(fstr, sstr: String);
function ora_LPAD(S: string; Len: integer; Filler : char = ' '): string;
begin
  if Length(S) >= Len
    then Result := Copy(S, 1, Len) // ������ ��� �������� ��������� LPAD
    else Result :=
           Copy(StringOfChar(Filler, (Len-Length(S))+1),
           1, Len-Length(S)) + S;
end;
begin
 if DPort > 0 then
  begin
   if not dComPort.Connected then
    try
     dComPort.Port:='COM'+INtToStr(DPort);
     dComPort.Open;
     ComLed1.Visible:=true;
    except
     on e:Exception do
      begin
       ShowMessage(e.Message);
       exit;
      end;
    end;
   dComPort.WriteStr(ora_LPAD(fstr,20)+ora_LPAD(sstr,20));
  end;
end;

procedure TfstMain.TrayIcon1Click(Sender: TObject);
begin
TrayIcon1.Visible:=false;
Show;
end;

function TfstMain.WordLength(s: String; wt: Integer): String;
var b:boolean; i,j:Integer;  a,c:String;
begin
b:=false;
i:=1;
j:=wt;
if s<>'' then
while b<>true do
 begin
 if (i=j) and (s[i+1]<> ' ') then
  begin
   a:=s;
   c:=s;
   Delete(a,i+1,length(s)-i);
   Delete(c,1,i);
   s:=a+' '+c;
   j:=wt+j+1;
  end;
 inc(i);
 if i=Length(s) then b:=true;
 end;
 Result:=s;
end;

{ MyItem }

constructor MyItem.create(AOwner: TComponent);
begin
  inherited;
  Self.Align:=alClient;
  Self.BevelOuter:=bvNone;
  Self.ShowCaption:=false;
  Parent:=TWinControl(AOwner);

  Img:=TImage.Create(Self);
  Img.Stretch:=true;
  Img.Align:=alClient;
  Img.OnMouseDown:= crtClick;
  Img.Parent:=Self;

  Txt:=TLabel.Create(self);
  Txt.Align:=alClient;
  Txt.Alignment:=taCenter;
  Txt.AlignWithMargins:=true;
  Txt.Margins.Left:=trunc(10*fstMain.SizeKoof);
  Txt.Margins.Right:=trunc(10*fstMain.SizeKoof);
  Txt.Margins.Top:=trunc(10*fstMain.SizeKoof);
  Txt.WordWrap:=true;
  Txt.OnMouseDown:=crtClick;
  Txt.Parent:=Self;

  Cena:=TLabel.Create(Self);
  Cena.Align:=alClient;
  Cena.Alignment:=taCenter;
  Cena.AlignWithMargins:=true;
  Cena.Font.Color:=clWhite;
  Cena.Font.Size:=trunc(20*fstMain.SizeKoof);
  Cena.Margins.Bottom:=trunc(10*fstMain.SizeKoof);
  Cena.Margins.Left:=trunc(10*fstMain.SizeKoof);
  Cena.Margins.Right:=trunc(10*fstMain.SizeKoof);
  Cena.Margins.Top:=trunc(85*fstMain.SizeKoof);
  Cena.OnMouseDown:=crtClick;
  Cena.Parent:=Self;

  Stop:=TImage.Create(Self);
  Stop.Canvas.Brush.Color:=RGB(47,112,217);
  Stop.Canvas.Rectangle(0,0,32,32);
  fstMain.cxImageList3.GetBitmap(0,Stop.Picture.Bitmap);
  Stop.Stretch:=true;
  Stop.Left:=trunc(15*fstMain.SizeKoof);
  Stop.Height:=32;
  Stop.Width:=32;
  Stop.Parent:=Self;
  Stop.Transparent:=true;
  Stop.Visible:=false;
end;

procedure MyItem.crtClick(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
 if DemoVer then
 begin
   if dm.Orders_item.RecordCount > 2 then
      begin
        MessageDlg('�� ����������� ����-������ ���������!', mtWarning, [mbOk], 0);
        exit;
      end;
 end;

 if Self.Stop.Visible then exit;

 if dm.Current_order.RecordCount = 0 then   // ��������� ���� ���� �� ������
   fstMain.openCheck;

 if self.FCardType = 1 then
   begin
     fstMain.BtnState(fstMain.Image3,true);
     fstMain.BtnState(fstMain.Image1,true);
     fstMain.PodrazdID:=Self.id;
     fstMain.Menu_items.Filter:=fstMain.Menu_itemsPID.FieldName+' = '+Self.id.ToString;
     fstMain.SrollStep:=0;
     fstMain.paint_menugrid;
   end

 else if fstMain.Menu_items.Locate('ID', Self.id) then
   begin
     if dm.Orders_item.Locate('product', fstMain.Menu_itemsIDPRODUCT.AsInteger, []) and
     (WPort = 0) then
      begin
       dm.Orders_item.Edit;
       dm.Orders_itemKOLVO.AsFloat:=dm.Orders_itemKOLVO.AsFloat + 1;
      end
     else
      begin
       dm.Orders_item.Append;
       dm.Orders_itemIDDOCUMENT.AsString:=dm.Current_orderUID.AsString;
       dm.Orders_itemPRODUCT.AsInteger:=fstMain.Menu_itemsIDPRODUCT.AsInteger;
       dm.Orders_itemCENA_SALES.AsCurrency:=fstMain.Menu_itemsCENA.AsCurrency;
       dm.Orders_itemNAME.AsString:=fstMain.Menu_itemsCAPTION.AsString;
       dm.Orders_itemGROUP_NAME.AsString:=fstMain.Menu_ItemsPid_name.AsString;
       DM.Orders_itemIDPODRAZD.AsInteger:=fstMain.Menu_itemsIDPODRAZD.AsInteger;
       dm.Orders_itemIDCLASSIF.AsInteger:=fstMain.Menu_itemsIDCLASSIF.AsInteger;
       dm.Orders_itemM_OBSLUZH.AsFloat:= fstMain.Menu_itemsOBSLUZH.AsFloat + dm.Current_orderOBSLUZH.AsFloat;
       dm.Orders_itemM_BOBSLUZH.AsBoolean:= (fstMain.Menu_itemsBOBSLUZH.AsInteger=1) and (fstMain.tbPersonUSEOBSLUZH.AsBoolean);
       dm.Orders_itemM_BDISCOUNT.AsBoolean:=(fstMain.tbPersonUSEDISCOUNT.AsBoolean) and (fstMain.Menu_itemsBDISCOUNT.AsInteger=1);
       if fstMain.tbDiscounts.Locate('idclassif',fstMain.Menu_itemsIDCLASSIF.AsInteger, []) then
          dm.Orders_itemDISCOUNT.AsCurrency:=fstMain.tbDiscountsDiscount.AsFloat;
       dm.Orders_itemIDMENU.AsInteger:=fstMain.Menu_itemsID.AsInteger;
       // �������� ���-�� ����� ������
       //fmEdit_items.Edit1.Text:=''; fmEdit_items.ShowModal; if fmEdit_items.Edit1.Text <>'' then dm.Orders_itemKOLVO.AsFloat:=StrToFloat(fmEdit_items.Edit1.Text) else
       dm.Orders_itemKOLVO.AsFloat:=1;
      end;

     dm.Orders_item.Post;
     fstMain.SendToDisplay(IntToStr(dm.Orders_itemKOLVO.AsInteger)+' x '+FormatCurr('# ##0.##', dm.Orders_itemCENA_SALES.AsCurrency)+' = '+FormatCurr('# ##0.##', dm.Orders_itemKOLVO.AsFloat * dm.Orders_itemCENA_SALES.AsCurrency),
     'TOTAL: '+FormatCurr('# ##0.##', fstMain.cxGrid1DBTableView1.DataController.Summary.FooterSummaryValues[0])+'KZT');
   end;

end;

destructor MyItem.destroy;
begin

  inherited;
end;

procedure MyItem.SetType(AValue: byte);
begin

 FCardType:=AValue;
 if AValue = 0 then
  Self.Visible:=false
 else
  begin
   Self.Visible:=true;
  if AValue = 1 then   //folder
   begin
    Txt.Font.Size:=trunc(20*fstMain.SizeKoof);
    Txt.Font.Color:=clWhite;
    Txt.Margins.Bottom:=trunc(10*fstMain.SizeKoof);;
    Cena.Visible:=false;
    Img.Picture.Bitmap:=nil;
    fstMain.cxImageList1.GetBitmap(0,Img.Picture.Bitmap);
    Stop.Top:=Self.Height-Stop.Height-trunc(10*fstMain.SizeKoof);
   end
  else
   begin
    Txt.Font.Size:=trunc(14*fstMain.SizeKoof);
    Txt.Font.Color:=$00C06B5C;
    Txt.Margins.Bottom:=trunc(55*fstMain.SizeKoof);
    Cena.Visible:=true;
    Img.Picture.Bitmap:=nil;
    fstMain.cxImageList1.GetBitmap(1,Img.Picture.Bitmap);
    Stop.Top:=Self.Height-Stop.Height-trunc(10*fstMain.SizeKoof);
   end;
  end;
end;

end.
