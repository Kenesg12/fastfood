unit OpenZakazUnit;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Menus, cxLookAndFeelPainters, cxGraphics, DBGridEh, DBLookupEh,
  dxDockControl, frxClass, frxDBSet, frxADOComponents, DB, DBSumLst, ADODB,
  AdvAlertWindow, XPMan, ImgList, ExtCtrls, cxTextEdit, cxMaskEdit,
  cxDropDownEdit, cxLookupEdit, cxDBLookupEdit, cxDBLookupComboBox,
  AdvShapeButton, ComCtrls, dxtree, dxdbtree, Grids, BaseGrid, AdvGrid,
  dxDockPanel, cxControls, cxContainer, cxEdit, cxGroupBox, StdCtrls, cxButtons,
  Mask, DBCtrlsEh, GridsEh, GradientLabel, AdvPanel, Printers;

type
  TOpenZakazForm = class(TForm)
    Timer1: TTimer;
    ImageList1: TImageList;
    Panel1: TAdvPanel;
    DBGrid2: TDBGridEh;
    Panel4: TAdvPanel;
    Panel3: TAdvPanel;
    StolLabel: TLabel;
    Label2: TLabel;
    MainMenu1: TMainMenu;
    GradientLabel1: TGradientLabel;
    Summa: TGradientLabel;
    XPManifest1: TXPManifest;
    Mess: TAdvAlertWindow;
    DBCheckBoxEh1: TDBCheckBoxEh;
    DBNumberEditEh1: TDBNumberEditEh;
    Panel6: TAdvPanel;
    AdvPanel2: TAdvPanel;
    DBGrid1: TDBGridEh;
    Get_menu_struc: TADOQuery;
    Get_menu_strucNAME: TWideStringField;
    Get_menu_strucIDMENU_STRUC: TIntegerField;
    Orders_item: TADOQuery;
    Orders_count: TADOQuery;
    Orders_countSIPICE: TSmallintField;
    Orders_countKOORD: TWideStringField;
    Current_Order: TADOQuery;
    Current_OrderINOMER: TIntegerField;
    Current_OrderIDORDERS: TIntegerField;
    Orders_itemUSLUGA: TWideStringField;
    Orders_itemFKOLVO: TBCDField;
    Orders_itemMCENA: TBCDField;
    Orders_itemITOGO: TBCDField;
    Order_itemSource: TDataSource;
    Orders_itemadd: TStringField;
    View_Menu_Kat: TADOQuery;
    DBSumList1: TDBSumList;
    Delete_Zakaz: TADOQuery;
    Vremen_orders_item: TADOQuery;
    VremenSource: TDataSource;
    tbWaiter: TADOQuery;
    WaiterSource: TDataSource;
    tbWaiterIDPERSON: TIntegerField;
    tbWaiterVCI: TWideStringField;
    Current_OrderIDWAITER: TIntegerField;
    Vremen_orders_itemIDMENU: TIntegerField;
    frxReport1: TfrxReport;
    frxADOComponents1: TfrxADOComponents;
    frxDBDataset1: TfrxDBDataset;
    Get_Vremen: TADOQuery;
    tbPerson: TADOQuery;
    PersonSource: TDataSource;
    Current_OrderIDKLIENT: TIntegerField;
    CurrentOrderSource: TDataSource;
    Chang_klient: TADOQuery;
    Orders_itemIDORDERS_ITEM: TIntegerField;
    Orders_user: TADOQuery;
    Orders_userNOMER: TIntegerField;
    Chang_Waiter: TADOQuery;
    get_orders: TADOQuery;
    get_ordersIDORDERS: TIntegerField;
    DataSource1: TDataSource;
    Count_Order: TADOQuery;
    Count_OrderSIPICE: TSmallintField;
    Count_OrderIDORDERS: TIntegerField;
    Current_OrderSTOL: TWideStringField;
    frxReport2: TfrxReport;
    Delete_ZakazOPEN_ORDERS: TSmallintField;
    Delete_ZakazCLOSE_ORDERS: TSmallintField;
    Orders_itemIDMENU: TIntegerField;
    tbPersonIDPERSON: TIntegerField;
    tbPersonFIO: TWideStringField;
    tbMenu1: TADOQuery;
    Vremen_orders_itemVCNAME: TStringField;
    Vremen_orders_itemSUMMA: TFloatField;
    Vremen_orders_itemFKOLVO: TBCDField;
    Orders_itemKLIENT: TIntegerField;
    Orders_itemBKOMPLEX: TSmallintField;
    Orders_itemIKOMPLEX: TSmallintField;
    bKomplex_chang: TADOQuery;
    Update_menu_list: TADOQuery;
    Vremen_orders_itemIDORDERS: TIntegerField;
    Current_OrderIDZAKAZ: TIntegerField;
    Calck_game: TADOQuery;
    No_action_menu: TADOQuery;
    No_action_menuISEXISTS: TIntegerField;
    Get_parent: TADOQuery;
    dxDockSite1: TdxDockSite;
    DockPanel1: TdxDockPanel;
    dxLayoutDockSite1: TdxLayoutDockSite;
    dxDockPanel2: TdxDockPanel;
    dxLayoutDockSite2: TdxLayoutDockSite;
    dxDockingManager1: TdxDockingManager;
    StringGrid2: TAdvStringGrid;
    AdvPanel1: TAdvPanel;
    StringGrid1: TAdvStringGrid;
    TreeMenuSource: TDataSource;
    dxDockPanel1: TdxDockPanel;
    dxLayoutDockSite3: TdxLayoutDockSite;
    Label1: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Vremen_orders_itemIDCASH_ORDER_ITEM: TIntegerField;
    tbMenu1IDMENU: TIntegerField;
    tbMenu1IDMENU_STRUC: TIntegerField;
    tbMenu1FKOD: TBCDField;
    tbMenu1VCNAME: TWideStringField;
    tbMenu1MCENA: TFloatField;
    tbMenu1QUAE: TIntegerField;
    View_Menu_KatIDMENU: TIntegerField;
    View_Menu_KatVCNAME: TWideStringField;
    View_Menu_KatIND: TIntegerField;
    Get_parentIDMENU_STRUC: TIntegerField;
    Vremen_orders_itemmcena: TCurrencyField;
    tbMenu1STAGE: TIntegerField;
    View_Menu_KatFKOLVO: TFloatField;
    dxDBTreeView1: TdxDBTreeView;
    dxDockPanel3: TdxDockPanel;
    dxLayoutDockSite5: TdxLayoutDockSite;
    dxDockPanel4: TdxDockPanel;
    dxLayoutDockSite4: TdxLayoutDockSite;
    DBGridEh1: TDBGridEh;
    tbMenu_by_kod: TADOQuery;
    tbMenu_by_kodIDMENU: TIntegerField;
    tbMenu_by_kodFKOD: TBCDField;
    tbMenu_by_kodVCNAME: TWideStringField;
    Menu_By_KodSource: TDataSource;
    DBGridEh2: TDBGridEh;
    tbMenu_last: TADOQuery;
    Menu_LastSource: TDataSource;
    tbMenu_lastIDMENU: TIntegerField;
    tbMenu_lastVCNAME: TWideStringField;
    tbMenu_favorit: TADOQuery;
    FavoritSource: TDataSource;
    DBGridEh3: TDBGridEh;
    tbMenu_favoritIDMENU: TIntegerField;
    tbMenu_favoritVCNAME: TWideStringField;
    cxButton3: TcxButton;
    cxGroupBox1: TcxGroupBox;
    cxButton1: TcxButton;
    cxButton2: TcxButton;
    cxButton4: TcxButton;
    cxButton5: TcxButton;
    GroupBox1: TcxGroupBox;
    AdvShapeButton1: TAdvShapeButton;
    cxGroupBox2: TcxGroupBox;
    cxButton6: TcxButton;
    cxButton7: TcxButton;
    cxButton8: TcxButton;
    cxButton9: TcxButton;
    cxButton10: TcxButton;
    cxButton12: TcxButton;
    cxButton13: TcxButton;
    cxButton14: TcxButton;
    cxButton15: TcxButton;
    cxButton16: TcxButton;
    cxButton17: TcxButton;
    cxButton18: TcxButton;
    cxButton19: TcxButton;
    cxButton20: TcxButton;
    cxButton21: TcxButton;
    cxButton22: TcxButton;
    cxButton23: TcxButton;
    cxButton24: TcxButton;
    cxButton25: TcxButton;
    cxButton26: TcxButton;
    DBLookupComboBox1: TcxDBLookupComboBox;
    DBLookupComboBox2: TcxDBLookupComboBox;
    tbWaiterVCF: TWideStringField;
    AdvGlowButton1: TcxButton;
    SpeedButton7: TcxButton;
    SpeedButton2: TcxButton;
    SpeedButton8: TcxButton;
    cxButton27: TcxButton;
    cxButton28: TcxButton;
    cxButton29: TcxButton;
    DBLookupComboboxEh1: TDBLookupComboboxEh;
    cxButton11: TcxButton;
    tbMenu1PODRAZD: TIntegerField;
    tbMenu1FULL_NAME: TWideStringField;
    All_Podrazd: TADOQuery;
    All_PodrazdIDMENU_STRUC: TIntegerField;
    All_PodrazdVCPRINTER: TWideStringField;
    All_PodrazdVCNAME: TWideStringField;
    Vremen_orders_itemIDPODRAZD: TIntegerField;
    function WordLength(s:String;wt:Integer):String;
    procedure StringGrid2DrawCell(Sender: TObject; ACol, ARow: Integer;
      Rect: TRect; State: TGridDrawState);
    procedure StringGrid2SelectCell(Sender: TObject; ACol, ARow: Integer;
      var CanSelect: Boolean);
    procedure StringGrid1Exit(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Timer1Timer(Sender: TObject);
    procedure Panel4MouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure SpeedButton7Click(Sender: TObject);
    procedure StringGrid11DrawCell(Sender: TObject; ACol, ARow: Integer;
      Rect: TRect; State: TGridDrawState);
    procedure StringGrid1MouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure DBGrid1CellClick(Column: TColumnEh);
    procedure DBGridEh1CellClick(Column: TColumnEh);
    procedure DBGridEh1DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumnEh; State: TGridDrawState);
    procedure DBGrid2KeyPress(Sender: TObject; var Key: Char);
    procedure AdvShapeButton1Click(Sender: TObject);
    procedure DBCheckBoxEh1MouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure DBNumberEditEh1Click(Sender: TObject);
    procedure DBLookupComboboxEh1Change(Sender: TObject);
    procedure Vremen_orders_itemCalcFields(DataSet: TDataSet);
    procedure Orders_itemAfterOpen(DataSet: TDataSet);
    procedure DBSumList1SumListChanged(Sender: TObject);
    procedure StringGrid1DragOver(Sender, Source: TObject; X, Y: Integer;
      State: TDragState; var Accept: Boolean);
    procedure StringGrid1DragDrop(Sender, Source: TObject; X, Y: Integer);
    procedure Vremen_orders_itemAfterInsert(DataSet: TDataSet);
    procedure dxDBTreeView1Click(Sender: TObject);
    procedure dxDockSite1ShowControl(Sender: TdxDockSite;
      AControl: TdxCustomDockControl);
    function Decimal_Chang(input:String):String;
    procedure StringGrid1DrawCell(Sender: TObject; ACol, ARow: Integer;
      Rect: TRect; State: TGridDrawState);
    procedure tbMenu_by_kodFilterRecord(DataSet: TDataSet; var Accept: Boolean);
    procedure DBGridEh2CellClick(Column: TColumnEh);
    procedure DBGridEh3CellClick(Column: TColumnEh);
    procedure cxButton1Click(Sender: TObject);
    procedure cxButton2Click(Sender: TObject);
    procedure cxButton3Click(Sender: TObject);
    procedure cxButton4Click(Sender: TObject);
    procedure cxButton5Click(Sender: TObject);
    procedure cxButton6Click(Sender: TObject);
    procedure cxButton9Click(Sender: TObject);
    procedure cxButton10Click(Sender: TObject);
    procedure cxButton7Click(Sender: TObject);
    procedure cxButton8Click(Sender: TObject);
    procedure cxButton11Click(Sender: TObject);
    procedure DBLookupComboBox2Click(Sender: TObject);
    procedure cxButton12Click(Sender: TObject);
    procedure cxButton13Click(Sender: TObject);
    procedure cxButton23Click(Sender: TObject);
    procedure cxButton24Click(Sender: TObject);
    procedure cxButton25Click(Sender: TObject);
    procedure cxButton26Click(Sender: TObject);
    procedure DBGrid2CellClick(Column: TColumnEh);
    procedure ChangGuest(ID:Integer);
    procedure ChangWaiter(ID:Integer; waitername:String);
    procedure DBLookupComboBox1Click(Sender: TObject);
    procedure AdvGlowButton1Click(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure SpeedButton8Click(Sender: TObject);
    procedure cxButton27Click(Sender: TObject);
    procedure cxButton29Click(Sender: TObject);
    procedure printService;
    procedure cxButton28Click(Sender: TObject);
    procedure Vremen_orders_itemBeforePost(DataSet: TDataSet);
   // procedure ShowForm

  private
    { Private declarations }
    KatID, podrazdID, dragX, dragY:Integer;
    StrPodraz:array [0..7]of String;
    idPodraz :array [0..7] of Integer;
    idMenu:array [0..7,0..6]of Integer;
    index:array [0..7,0..6]of ShortInt;
    kolvo:array [0..7, 0..6]of byte;
   public
    { Public declarations }
  end;

var
  OpenZakazForm: TOpenZakazForm;
   podzakaz:Integer;


 // podzak:array[0..8] of LongInt;
  HideForm:Byte;
  Siz:Integer;
  Otch:boolean;
implementation

uses DMUnit, MainUnit, DigitUnit,  CardUnit,
  RazdelUnit, ShowReport, CashUnit;


{$R *.dfm}

function ScrollBarVisible(Handle : HWnd; Style : Longint) : Boolean;
begin
   Result := (GetWindowLong(Handle, GWL_STYLE) and Style) <> 0;
end;

function TOpenZakazForm.WordLength(s: String; wt: Integer): String;
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

procedure TOpenZakazForm.StringGrid2DrawCell(Sender: TObject; ACol, ARow: Integer;
  Rect: TRect; State: TGridDrawState);
var s:string;
begin
   with Sender as TDrawGrid, Canvas do
    begin
      if ACol=0 then
       Font.Color:=RGB(0,221,22)
      else if ACol=1 then
        Font.Color:=RGB(255,255,128)
      else if ACol=2 then
       Font.Color:=RGB(31,252,241)
      else if ACol=3 then
       Font.Color:=RGB(249,120,128)
      else if ACol=4 then
       Font.Color:=RGB(100,221,122)
      else if ACol=5 then
       Font.Color:=RGB(250,21,254)
      else if ACol=6 then
       Font.Color:=RGB(0,221,222)
      else if ACol=7 then
       Font.Color:=RGB(200,221,22);
       s:=WordLength(StrPodraz[ACol],7);
       DrawText(StringGrid2.Canvas.Handle,PChar(S),Length(S),Rect,DT_WORDBREAK or DT_CENTER);

    end;
end;

procedure TOpenZakazForm.StringGrid2SelectCell(Sender: TObject; ACol,
  ARow: Integer; var CanSelect: Boolean);
var j,i:Integer;
begin
if StrPodraz[ACol]='' then exit;
//podrazd:=Get_menu_struc.Lookup('name','БАР'{StrPodraz[ACol]},'idMenu_Struc');
//Устанавливаем цвет шрифта для каждого подразделения
Siz:=7;
if ACol=0 then
 StringGrid1.Font.Color:=RGB(0,221,22)
else if ACol=1 then
 StringGrid1.Font.Color:=RGB(255,255,128)
else if ACol=2 then
 StringGrid1.Font.Color:=RGB(31,252,241)
else if ACol=3 then
 StringGrid1.Font.Color:=RGB(249,120,128)
else if ACol=4 then
 StringGrid1.Font.Color:=RGB(100,221,122)
else if ACol=5 then
 StringGrid1.Font.Color:=RGB(250,21,254)
else if ACol=6 then
 StringGrid1.Font.Color:=RGB(0,221,222)
else if ACol=7 then
 StringGrid1.Font.Color:=RGB(200,221,22);


   PodrazdID:=IDPodraz[ACol];
 for i:=0 to 7 do
  for j:=0 to 5 do
   begin
    StringGrid1.cells[i,j]:='';
    index[i,j]:=-1;
    kolvo[i,j]:=0;
   end;
  i:=0;
 J:=0;
With View_Menu_Kat  do
   begin
    Active:=false;
    Parameters.ParamByName('Station').Value:=IntToStr(Station)+';';
    Parameters.ParamByName('Menu_Struc').Value:=IdPodraz[ACol];
    Parameters.ParamByName('Orders').Value:=Podzakaz;
    Active:=true;
    first;
   While eof<>true do
    begin
       idMenu[i,j]:=FieldByName('idMenu').AsInteger;
       index[i,j]:=FieldByName('ind').AsInteger;
       if Vremen_orders_item.Locate('idMenu',idMenu[i,j],[]) then
         kolvo[i,j]:=FieldByName('Fkolvo').AsInteger+Vremen_orders_itemFKOLVO.AsInteger
       else kolvo[i,j]:=FieldByName('Fkolvo').AsInteger;
       StringGrid1.Cells[i,j]:=FieldByName('vcName').AsString;
       inc(i);
       IF i > 7 then
        begin
         i:=0; j:=j+1;
        end;
      next;
    end;
   end;
end;

procedure TOpenZakazForm.tbMenu_by_kodFilterRecord(DataSet: TDataSet;
  var Accept: Boolean);
begin
Accept:=false;
if AnsiUpperCase(copy(tbMenu_by_kodFKOD.AsString,1,Length(Label6.Caption)))= AnsiUpperCase(Label6.Caption) then
   Accept:=true;
end;

procedure TOpenZakazForm.StringGrid1Exit(Sender: TObject);
begin
 Timer1.Enabled:=false;
end;

procedure TOpenZakazForm.FormShow(Sender: TObject);
var zaknomer:integer;
begin
  AdvGlowButton1.Down:=false;
  fmMain.Can_Access.Active:=false;
  fmMain.Can_Access.Parameters.ParamByName('person').Value:=pass;
  fmMain.Can_Access.Active:=true;
  tbWaiter.Active:=true;
  if (fmMain.Can_AccessBACCESS.AsInteger <> 1)then
   begin
    DBLookupComboBOx2.Enabled:=false;
    AdvGlowButton1.Visible:=false;
   end
  else
   begin
    DBLookupComboBox2.Enabled:=true;
    AdvGlowButton1.Visible:=true;
   end;
  if Stol[predop].StolType > 0 then
   begin
    cxGroupBox1.Visible:=true;
    if Stol[predop].timeLb.Font.Color = clYellow then
     cxButton1.Caption:='Остановить' else
    cxButton1.Caption:='Включить';
   end
  else cxGroupBox1.Visible:=false;
 tbPerson.Active:=true;

 if fmMain.tbStationBCARD_KLIENT.AsInteger = 0 then
  begin
  DBLookupComboBox1.Enabled:=true;
  AdvShapeButton1.Visible:=false;
  end
 else
  begin
   DBLookupCombobox1.Enabled:=false;
   AdvShapeButton1.Visible:=true;
  end;
  cxButton11.Visible:=true;



    With Current_Order do
      begin
      Active:=false;
      Parameters.ParamByName('waiter').Value:=pass;
      Parameters.ParamByName('koord').Value:=Stol[predop].stolGuid;
      Active:=true;
      zaknomer:=FieldByname('iNomer').AsInteger;
      Podzakaz:=FieldByname('idOrders').AsInteger;
      if Stol[predop].zakaz = 0 then
       begin
        cxButton1.Caption:='Включить';
        stol[predop].zakaz:=Current_OrderIDZAKAZ.AsInteger;
       end;
       Label2.Caption:='Счет№'+intToStr(zaknomer);
       StolLabel.Caption:='Стол '+Current_OrderSTOL.AsString;
     end;

   With Count_Order do                                          // Количесво подзаказов
   begin
    Active:=false;
    Parameters.ParamByName('zakaz').Value:=Stol[predop].zakaz;
    Active:=true;
    dblookupcomboboxeh1.KeyValue:=Podzakaz;
    If RecordCount = 1 then
     dbLookupComboBoxEh1.Visible:=false
    else dbLookupComboBoxEh1.Visible:=true;
   end;


  DBNumberEditEh1.Visible:=false;
  if fmMain.tbStationBKOMPLEX.AsInteger = 1 then //Доступность Выбирать комплексный обед
   begin
    DBCheckBoxEh1.Visible:=true;
    if DBCheckBoxEh1.State = cbChecked then
     DBNumberEditEh1.Visible:=true;
   end
  else
    DBCheckBoxEh1.Visible:=false;

With Orders_item do
   begin          
    Active:=false;            
    Parameters.ParamBYName('order').Value:=Podzakaz;
    Active:=true;

   end;
  Panel1.BringToFront;
  Timer1.Enabled:=true;
end;

procedure TOpenZakazForm.Orders_itemAfterOpen(DataSet: TDataSet);
begin
if DBCheckBoxEh1.Visible then
 begin
  if DBCheckBoxEh1.State = cbChecked then
    DBNumberEditEh1.Visible:=true
  else
   DBNumberEditEh1.Visible:=false;
  end;
end;

procedure TOpenZakazForm.FormCreate(Sender: TObject);
var i:Integer;
begin
  StringGrid2.Color:=RGB(7,1,52);
  i:=0;
With Get_menu_struc  do
   begin
    Active:=false;
    Parameters.ParamByName('st').Value:=IntToStr(Station)+';';
    Active:=true;
    first;
   While eof<>true do
    begin
     StrPodraz[i]:=FieldByName('Name').AsString;
     IdPodraz[i]:=FieldByname('IdMenu_Struc').AsInteger;
     inc(i);
     next;
    end;
   end;
   StringGrid1.Color:=RGB(7,1,52);

   if fmMain.tbStationBCARD_KLIENT.AsInteger = 1 then   //Доступность Выбирать ли клиента по карте
   begin
     DBLookUpComboBox1.Enabled:=false;
     AdvShapeButton1.Visible:=true;
   end
  else
   begin
     DBLookUpComboBox1.Enabled:=true;
     AdvShapeButton1.Visible:=false;
   end;
 tbMenu.Active:=false;
 tbMenu.Parameters.ParamByName('station').Value:=IntToStr(Station)+';';
 tbMenu.Active:=true;

 tbMenu_by_kod.Active:=false;
 tbMenu_by_kod.Parameters.ParamByName('station').Value:=IntToStr(Station)+';';
 tbMenu_by_kod.Active:=true;
end;

procedure TOpenZakazForm.DBLookupComboBox1Click(Sender: TObject);
begin
ChangGuest(DBLookupComboBox1.EditingValue);
end;

procedure TOpenZakazForm.DBLookupComboboxEh1Change(Sender: TObject);
begin
if dbLookupComboBoxEh1.Text <> '' then
 begin
  get_orders.Active:=false;
  get_orders.Parameters.ParamByName('zakaz').Value:=stol[predop].zakaz;
  get_orders.Parameters.ParamByName('pice').Value:=StrToint(dbLookupComboBoxEh1.Text);
  get_orders.Active:=true;
  Podzakaz:=get_ordersIDORDERS.AsInteger;
  with Orders_item do
   begin
     active:=false;
     parameters.ParamByName('order').Value:=Podzakaz;
     active:=true;
   end;

 end;
end;

procedure TOpenZakazForm.DBNumberEditEh1Click(Sender: TObject);
begin
  DIGITForm.cxButton2.Enabled:=false;
  DigitForm.Edit1.PasswordChar:=Char(#0);
  DigitForm.st:=false;
  DigitForm.ShowModal;
  if (DigitForm.Edit1.Text<>'')and(DigitForm.Edit1.Text<>'0') then
   begin
     DBNumberEditEh1.Text:=DigitForm.Edit1.Text;
     bKomplex_chang.Active:=false;
     bKomplex_chang.Parameters.ParamByName('bit').Value:=1;
     bKomplex_chang.Parameters.ParamByName('quantity').Value:=StrToInt(DigitForm.Edit1.Text);
     bKomplex_chang.Parameters.ParamByName('orders').Value:=Podzakaz;
     bKomplex_chang.ExecSQL;
     Orders_item.Active:=false;
     Orders_item.Active:=true;
   end;
end;

procedure TOpenZakazForm.DBSumList1SumListChanged(Sender: TObject);
begin
Summa.Caption:=Format('%m',[DBSumList1.SumCollection[0].SumValue]);
end;

function TOpenZakazForm.Decimal_Chang(input: String): String;
begin
 if Pos(',',input)<>0 then
  begin
   delete(input,Pos(',',input),1);
  end;

end;

procedure TOpenZakazForm.dxDBTreeView1Click(Sender: TObject);
begin
if tbMenuSTAGE.AsInteger > 0 then
 begin
    if DBGrid1.Font.Color=clRed then  Mess.Show
    else
     begin
      if Vremen_orders_item.Locate('idMenu',tbMenuIDMENU.AsInteger,[]) then
        Vremen_orders_item.Edit
      else
       begin
        Vremen_orders_item.Insert;
        Vremen_orders_itemIDMENU.AsInteger:=tbMenuIDMENU.AsInteger;
       end;
      Vremen_orders_itemFKOLVO.AsFloat:=Vremen_orders_itemFKOLVO.AsFloat+1;
      Vremen_orders_item.Post;
     end;
 end
else
 begin
  if dxDBTreeView1.Selected.Expanded then
    dxDBTreeView1.Selected.Collapse(false)
  else
  dxDBTreeView1.Selected.Expand(false);
 end;
end;

procedure TOpenZakazForm.dxDockSite1ShowControl(Sender: TdxDockSite;
  AControl: TdxCustomDockControl);
begin
 tbMenu.First;
  if TdxDockPanel(AControl).Name = 'DockPanel1' then
   dxDBTreeView1.FullCollapse
  else if TdxDockPanel(AControl).Name = 'dxDockPanel1' then
    begin
     Label1.Caption:='';
     Label6.Caption:='';
     Label7.Caption:='1';
     tbMenu_by_kod.Filtered:=false;
    end
  else if TdxDockPanel(AControl).Name = 'dxDockPanel4' then
   begin
    tbMenu_last.Active:=false;
    tbMenu_last.Parameters.ParamByName('station').Value:=IntToStr(Station)+';';
    tbMenu_last.Active:=true;
   end
  else if TdxDockPanel(AControl).Name = 'dxDockPanel3' then
   begin
    tbMenu_favorit.Active:=false;
    tbMenu_favorit.Parameters.ParamByName('station').Value:=IntToStr(Station)+';';
    tbMenu_favorit.Active:=true;
   end
end;

procedure TOpenZakazForm.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
StringGrid1.Repaint;
Timer1.Enabled:=false;
end;

procedure TOpenZakazForm.Timer1Timer(Sender: TObject);
begin      
inc(HideForm);
if HideForm>30 then
  close;
end;

procedure TOpenZakazForm.Vremen_orders_itemAfterInsert(DataSet: TDataSet);
begin
 Vremen_orders_itemIDORDERS.AsInteger:=Podzakaz;
end;

procedure TOpenZakazForm.Vremen_orders_itemBeforePost(DataSet: TDataSet);
begin
 if not Vremen_orders_itemIDMENU.IsNull then
 Vremen_orders_itemIDPODRAZD.AsInteger:=tbMenu.Lookup('idMenu',Vremen_orders_itemIDMENU.AsInteger,'PODRAZD');
end;

procedure TOpenZakazForm.Vremen_orders_itemCalcFields(DataSet: TDataSet);
begin
  Vremen_orders_itemSUMMA.AsCurrency:=Vremen_orders_itemmcena.AsCurrency*Vremen_orders_itemFKOLVO.AsFloat;
end;

procedure TOpenZakazForm.Panel4MouseMove(Sender: TObject;
  Shift: TShiftState; X, Y: Integer);
begin
HideForm:=0;
end;

procedure TOpenZakazForm.printService;
var i:byte;
begin
if Vremen_orders_item.RecordCount=0 then exit;
All_Podrazd.Active:=true;
All_Podrazd.First;
while All_Podrazd.Eof<>true do
 begin
  Vremen_orders_itemidPodrazd.AsString;
  Vremen_orders_item.Filtered:=true;
  Vremen_orders_item.Filter:=Vremen_orders_itemidPodrazd.FieldName+' = '''+All_PodrazdIDMENU_STRUC.AsString+'''';
  if Vremen_orders_item.RecordCount<>0 then
   begin
    for i := 0 to Printer.Printers.Count - 1 do
           if Printer.Printers.Strings[i]=All_PodrazdVCPRINTER.AsString then
         begin
          frxReport1.LoadFromFile(ExtractFilePath(Application.ExeName)+'Reports\Service.fr3',true);
          frxReport1.Variables.Variables['station']:=''''+fmMain.tbStationVCNAME.AsString+'''';
          frxReport1.Variables.Variables['Chet']:=''''+Label2.Caption+'''';
          frxReport1.Variables.Variables['Oficiant']:=''''+DBLookupComboBox2.Text+'''';
          frxReport1.Variables.Variables['Stol']:=''''+StolLabel.Caption+'''';
          frxReport1.Variables.Variables['Podrazd']:=''''+All_PodrazdVCNAME.AsString+'''';
          frxReport1.PrintOptions.Printer:=All_PodrazdVCPRINTER.AsString;
          frxReport1.PrintOptions.ShowDialog:=false;
          frxReport1.PrepareReport(true);
          frxReport1.Print;
          break;
         end;
   end;
  All_Podrazd.Next;
 end;
 Vremen_orders_item.Filtered:=false;

With Get_Vremen do
Begin
  Vremen_orders_item.UpdateBatch(arAll);
  Active:=false;
  Parameters.ParamByName('orders').Value:=Podzakaz;
  ExecSQL;
 End; 
end;

procedure TOpenZakazForm.AdvGlowButton1Click(Sender: TObject);
var i,j,n:integer;
begin
if AdvGlowButton1.Caption='Настойка меню' then
   AdvGlowButton1.Caption:='Сохранить'
else
 Begin
   AdvGlowButton1.Caption:='Настойка меню';
   n:=0;
   for i := 0 to 5 do
     for j := 0 to 7 do
      begin
       inc(n);              //ShowMessage(intToStr(n)+' '+tbMenu.Lookup('idMenu',idMenu[j,i],'vcName'));
       Update_menu_list.Active:=false;
       Update_menu_list.Parameters.ParamByName('nomer').Value:=n;
       Update_menu_list.Parameters.ParamByName('menu').Value:=idMenu[j,i];
       Update_menu_list.ExecSQL;
      end;
 End;
end;

procedure TOpenZakazForm.AdvShapeButton1Click(Sender: TObject);
begin
if DBLookupComboBoxEh1.Text = '' then exit;
Application.CreateForm(TfmCard, fmCard);
fmCard.ShowModal;
fmCard.Free;
end;

procedure TOpenZakazForm.ChangGuest(ID: Integer);
begin
Chang_klient.Active:=false;
Chang_klient.Parameters.ParamByName('orders').Value:=Podzakaz;
Chang_klient.Parameters.ParamByName('klient').Value:=ID;
Chang_klient.ExecSQL;
end;

procedure TOpenZakazForm.ChangWaiter(ID: Integer; waitername:String);
begin
with Chang_Waiter do
 begin
  Active:=false;
  Parameters.ParamByName('zakaz').Value:=stol[predop].zakaz;
  Parameters.ParamByName('waiter').Value:=ID;
  ExecSql;
  Stol[predop].oficiant.Caption:=waitername;
 end;
end;

procedure TOpenZakazForm.cxButton10Click(Sender: TObject);
begin
with Orders_user do
 begin
   Active:=false;
   Parameters.ParamByName('pass').Value:=pass;
   Parameters.ParamByName('koord').Value:=stol[predop].stolGuid;
   Active:=true;
   Locate('NOMER',predop+1,[]);
   Next;
   predop:=FieldByName('NOmer').AsInteger-1;
   OpenZakazForm.FormShow(nil);
 end;
end;

procedure TOpenZakazForm.cxButton11Click(Sender: TObject);
begin
if DBLookupComboBoxEh1.Text = '' then exit;
if Stol[predop].StolType <> 0 then
 try
   Calck_game.Active:=false;
   Calck_game.Parameters.ParamByName('zakaz').Value:=Stol[predop].zakaz;
   Calck_game.ExecSQL;
   Orders_item.Active:=false;
   Orders_item.Active:=true;
 except
  MessageDlg('Не настроены тарифы!',mtWarning,[mbOk],0);
 end;

if (Orders_item.RecordCount = 0)then                           //Удаление счета если заказ пуст и настройка вида стола по параметрам
if MessageDlg('В счете нет заказов!'+#13+'Удалить счет?',mtConfirmation,[mbYes,mbNo],0)=mrYes then
 begin
  if (Stol[predop].StolType <> 0)and(Count_Order.RecordCount = 1) then
    begin
      Stol[predop].min:=0;
      Stol[predop].WorkTime:=0;
      Stol[predop].timeLb.Caption:='';
      if Device=1 then
       begin
        @Out32:=nil;
        Hlib:=LoadLibrary('inpout32.dll');
        if Hlib >= 32 then
         begin
          @Out32:=GetProcAddress(Hlib,'Out32');
          Out32(portNumber, fmMain.IntToBin(PortData,Stol[predop].StolType,'0'));
         end;
        FreeLibrary(hLib);
       end
       else
       fmMain.KEWrite(Stol[predop].StolType,0);
    end;
   Delete_Zakaz.Active:=false;
   Delete_Zakaz.Parameters.ParamByName('orders').Value:=Podzakaz;
   Delete_Zakaz.Active:=true;
   if fmMain.tbStationBPAY_ON_STATION.AsInteger = 1 then
    begin
      if (Delete_ZakazOPEN_ORDERS.AsInteger = 0) and (Delete_ZakazCLOSE_ORDERS.AsInteger = 0) then
       begin
         Stol[predop].oficiant.Caption:='';
         fmMain.ChangImg(Stol[predop].Img,fmMain.tbKoord.Lookup('idKoord',stol[predop].StolGUID,'vcPic'));
         Stol[predop].status := '0';
       end
      else if (Delete_ZakazOPEN_ORDERS.AsInteger > 0) and (Delete_ZakazCLOSE_ORDERS.AsInteger = 0) then
       begin
         Stol[predop].oficiant.Caption:=Delete_ZakazOPEN_ORDERS.AsString+' - '+DBLookupComboBox2.Text;
         fmMain.ChangImg(Stol[predop].Img,fmMain.tbKoord.Lookup('idKoord',stol[predop].StolGUID,'vcPic')+'1');
         Stol[predop].status := '1';
       end
      else if (Delete_ZakazOPEN_ORDERS.AsInteger > 0) and (Delete_ZakazCLOSE_ORDERS.AsInteger > 0) then
        begin
         Stol[predop].oficiant.Caption:='('+Delete_ZakazOPEN_ORDERS.AsString+'-'+Delete_ZakazCLOSE_ORDERS.AsString+'): '+DBLookupComboBox2.Text;
         fmMain.ChangImg(Stol[predop].Img,fmMain.tbKoord.Lookup('idKoord',stol[predop].StolGUID,'vcPic')+'2');
         Stol[predop].status := '3';
        end
      else if (Delete_ZakazOPEN_ORDERS.AsInteger = 0) and (Delete_ZakazCLOSE_ORDERS.AsInteger > 0) then
       begin
         Stol[predop].oficiant.Caption:=Delete_ZakazCLOSE_ORDERS.AsString+' - '+DBLookupComboBox2.Text;
         fmMain.ChangImg(Stol[predop].Img,fmMain.tbKoord.Lookup('idKoord',stol[predop].StolGUID,'vcPic')+'2');
         Stol[predop].status := '2';
       end;
    end
   else
    begin
      if (Delete_ZakazOPEN_ORDERS.AsInteger = 0) then
       begin
         Stol[predop].oficiant.Caption:='';
         fmMain.ChangImg(Stol[predop].Img,fmMain.tbKoord.Lookup('idKoord',stol[predop].StolGUID,'vcPic'));
         Stol[predop].status := '0';
         Stol[predop].timeLb.Caption:='';
       end
      else if (Delete_ZakazOPEN_ORDERS.AsInteger > 0) then
       begin
         Stol[predop].oficiant.Caption:=Delete_ZakazOPEN_ORDERS.AsString+' - '+DBLookupComboBox2.Text;
         fmMain.ChangImg(Stol[predop].Img,fmMain.tbKoord.Lookup('idKoord',stol[predop].StolGUID,'vcPic')+'1');
         Stol[predop].status := '1';
       end;
    end;

   add:=false;
   close;
   exit;
 end else exit;


 frxReport2.LoadFromFile(ExtractFilePath(Application.ExeName)+ 'Reports\GuestCheck.fr3',true);
 frxReport2.Variables.Variables['orders']:=Podzakaz;
 frxReport2.Preview:=fmShowReport.frxPreview1;
 fmShowReport.AdvGlowButton1.Visible:=true;

 if frxReport2.PrepareReport(true) then
  fmShowReport.ShowModal;
 DBLookupComboBoxEh1.KeyValue:=Count_OrderIDORDERS.AsInteger;
 Timer1.Enabled:=true;

end;

procedure TOpenZakazForm.cxButton12Click(Sender: TObject);
begin
 Label6.Caption:=Label6.Caption+TcxButton(Sender).Caption;
   tbMenu_by_kod.Filtered:=true;
   tbMenu_by_kod.Filter:=tbMenu_by_kodFKOD.FieldName+'>='''+Label6.Caption+'''';

 try
  Label1.Caption:=tbMenu.Lookup('fKod',StrToFloat(Label6.Caption),'full_name');
 except
  Label1.Caption:='Нет блюда с таким кодом!';
 end;
end;

procedure TOpenZakazForm.cxButton13Click(Sender: TObject);
begin
 Label6.Caption:=Label6.Caption+'.';

 tbMenu_by_kod.Filter:=tbMenu_by_kodFKOD.FieldName+'>='''+Label6.Caption+'''';
end;

procedure TOpenZakazForm.cxButton1Click(Sender: TObject);
begin
 if cxButton1.Caption = 'Включить' then
 BEGIN
      fmMain.Get_Work_time.Active:=false;
      fmMain.Get_Work_time.Parameters.ParamByName('zakaz').Value:=Stol[predop].zakaz;
      fmMain.Get_Work_time.Active:=true;
      Stol[predop].WorkTime:=fmMain.Get_Work_timeWORKTIME.AsInteger/86400;
      Stol[predop].min:=fmMain.Get_Work_timeOUT_MIN.AsInteger/86400;
      Stol[predop].t:=GetTickCount;
      With fmMain.Add_Events do
       begin
        Active:=false;
        Parameters.ParamByName('zak').Value:=Stol[predop].zakaz;
        Parameters.ParamByName('oper').Value:=9;
        ExecSQL;
       end;
     Stol[predop].timeLb.Font.Color:=clYellow;
     if Stol[predop].status <> '3' then
      begin
       fmMain.ChangImg(Stol[predop].Img,fmMain.tbKoord.Lookup('idKoord',stol[predop].StolGUID,'vcPic')+'1');
       Stol[predop].status:='1';
      end;
     if Device=1 then
      begin
       @Out32:=nil;
       Hlib:=LoadLibrary('inpout32.dll');
       if Hlib >= 32 then
        begin
         @Out32:=GetProcAddress(Hlib,'Out32');
         Out32(portNumber, fmMain.IntToBin(PortData,Stol[predop].StolType,'1'));
        end;
       FreeLibrary(hLib);
      end
      else
     fmMain.KEWrite(Stol[predop].StolType,1);
 END
else
 BEGIN
     Stol[predop].timeLb.Font.Color:=clRed;
     if Stol[predop].status <> '3' then
      begin
       fmMain.ChangImg(Stol[predop].Img,fmMain.tbKoord.Lookup('idKoord',stol[predop].StolGUID,'vcPic')+'3');
       Stol[predop].status:='4';
      end;
   With fmMain.Add_Events do
        begin
         Active:=false;
         Parameters.ParamByName('zak').Value:=Stol[predop].zakaz;
         Parameters.ParamByName('oper').Value:=12;
         ExecSQL;
        end;
   if Device=1 then
    begin
       @Out32:=nil;
       Hlib:=LoadLibrary('inpout32.dll');
       if Hlib >= 32 then
        begin
         @Out32:=GetProcAddress(Hlib,'Out32');
         Out32(portNumber, fmMain.IntToBin(PortData,Stol[predop].StolType,'0'));
        end;
       FreeLibrary(hLib);
      end
   else
     fmMain.KEWrite(Stol[predop].StolType,0);
 END;
 Close;
end;

procedure TOpenZakazForm.cxButton23Click(Sender: TObject);
begin
Label7.Caption:=IntToStr(StrToInt(Label7.Caption)+1);
end;

procedure TOpenZakazForm.cxButton24Click(Sender: TObject);
begin
if StrToInt(Label7.Caption)>1 then
 Label7.Caption:=IntToStr(StrToInt(Label7.Caption)-1);
end;

procedure TOpenZakazForm.cxButton25Click(Sender: TObject);
var str:String;
begin
 if Label6.Caption ='' then exit;

 if Length(Label6.Caption)=1 then
  begin
   Label6.Caption:='';
   Label1.Caption:='';
   tbMenu_by_kod.Filtered:=false;
  end
 else
  try
   str:=Label6.Caption;
   Delete(str,Length(str),1);
   Label6.Caption:=str;
   Label1.Caption:=tbMenu.Lookup('fKod',StrToFloat(Label6.Caption),'vcName');
   tbMenu_by_kod.Filter:=tbMenu_by_kodFKOD.FieldName+'>='''+Label6.Caption+'''';
 except
  Label1.Caption:='Нет блюда с таким кодом!';
 end;
end;

procedure TOpenZakazForm.cxButton26Click(Sender: TObject);
begin
  if (Label1.Caption = '') or (Label1.Caption = 'Нет блюда с таким кодом!') then exit;

    if DBGrid1.Font.Color=clred then  Mess.Show
    else
     begin
      if Vremen_orders_item.Locate('idMenu',tbMenu.Lookup('fKod',StrToFloat(Label6.Caption),'idMenu'),[]) then
        Vremen_orders_item.Edit
      else
       begin
        Vremen_orders_item.Insert;
        Vremen_orders_itemIDMENU.AsInteger:=tbMenu.Lookup('fKod',StrToFloat(Label6.Caption),'idMenu');
       end;
      Vremen_orders_itemFKOLVO.AsFloat:=Vremen_orders_itemFKOLVO.AsFloat+StrToInt(Label7.Caption);
      Vremen_orders_item.Post;
     end;
end;

procedure TOpenZakazForm.cxButton27Click(Sender: TObject);
begin
If DBGrid1.Font.Color=clGreen then
 begin
  DBGrid1.FixedColor:=clred;
  DBGrid1.Font.Color:=clred;
 end
Else begin
 if Mess.IsVisible then Mess.CloseAlert;
  DBGrid1.FixedColor:=clSkyBlue;
  DBGrid1.Font.Color:=clGreen;
 end;
end;

procedure TOpenZakazForm.cxButton28Click(Sender: TObject);
begin
printService;
close;
end;

procedure TOpenZakazForm.cxButton29Click(Sender: TObject);
begin
printService;
 With Orders_item do
   begin
     if DBCheckBoxEh1.State = cbChecked then
      begin
       bKomplex_chang.Active:=false;
       bKomplex_chang.Parameters.ParamByName('bit').Value:=1;
       bKomplex_chang.Parameters.ParamByName('quantity').Value:=StrToInt(DBNumberEditEh1.Text);
       bKomplex_chang.Parameters.ParamByName('orders').Value:=Podzakaz;
       bKomplex_chang.ExecSQL;
      end;
     Active:=false;
     Active:=true;
     Panel1.BringToFront;
   end;
end;

procedure TOpenZakazForm.SpeedButton2Click(Sender: TObject);
var j,i:Integer;
begin
 Siz:=7;
 for i:=0 to 7 do
 for j:=0 to 5 do
  begin
   StringGrid1.cells[i,j]:='';
   index[i,j]:=-1;
   kolvo[i,j]:=0;
  end;
  i:=0;
 J:=0;
 Get_parent.Active:=false;
 Get_parent.Parameters.ParamByName('struc').Value:=KatID;
 Get_parent.Active:=true;
 KatID:=Get_parentIDMENU_STRUC.AsInteger;
With View_Menu_Kat  do
   begin
    Active:=false;
    Parameters.ParamByName('Station').Value:=IntToStr(Station)+';';
    Parameters.ParamByName('Menu_Struc').Value:=KatID;
    Parameters.ParamByName('Orders').Value:=Podzakaz;
    Active:=true;
    first;
   While eof<>true do
    begin
     StringGrid1.cells[i,j]:=FieldByName('vcName').AsString;
     idMenu[i,j]:=FieldByName('idMenu').AsInteger;
     index[i,j]:=FieldByName('ind').AsInteger;
     if Vremen_orders_item.Locate('idMenu',idMenu[i,j],[]) then
         kolvo[i,j]:=FieldByName('Fkolvo').AsInteger+Vremen_orders_itemFKOLVO.AsInteger
       else kolvo[i,j]:=FieldByname('FKolvo').AsInteger;
     inc(i);
     IF i > 7then
      begin
       i:=0; j:=j+1;
       if j> 5 then break;
      end;
      next;
    end;
   end;
end;

procedure TOpenZakazForm.cxButton2Click(Sender: TObject);
begin
 fmCash.Minut.Text:='';
 fmCash.Mani.Text:='';
 fmCash.ShowModal;
 close;
end;

procedure TOpenZakazForm.cxButton3Click(Sender: TObject);
begin
peremen:=true;
per:=0;
close;
end;

procedure TOpenZakazForm.cxButton4Click(Sender: TObject);
begin
Timer1.Enabled:=false;
Application.CreateForm(TRazdelForm, RazdelForm);
With RazdelForm.RazdelQuery1 do
 begin
  Active:=false;
  Parameters.ParamByName('zakaz').Value:=stol[predop].zakaz;
  Parameters.ParamByName('pice').Value:=StrToInt(dblookupcomboboxeh1.Text);
  Active:=true;
 end;
 With RazdelForm.RazdelQuery2 do
 begin
  Active:=false;
  Parameters.ParamByName('zakaz').Value:=stol[predop].zakaz;
  Parameters.ParamByName('pice').Value:=StrToInt(dblookupcomboboxeh1.Text);
  Active:=true;
 end;
RazdelForm.ShowModal;

Timer1.Enabled:=true;
end;

procedure TOpenZakazForm.cxButton5Click(Sender: TObject);
var i,j:Integer;
begin
 With Vremen_orders_item do
   begin
    Active:=false;
    parameters.ParamByName('orders').Value:=Podzakaz;
    Active:=true;
    Panel6.BringToFront;



    DBGrid1.FixedColor:=clMoneyGreen;
    DBGrid1.Font.Color:=clGreen;
    for i:=0 to 7 do
     for j:=0 to 5 do
      begin
       StringGrid1.cells[i,j]:='';
       index[i,j]:=-1;
       kolvo[i,j]:=0;
      end;
   end;
 AdvGlowButton1.Down:=false;
 AdvGlowButton1.Caption:='Настойка меню';
end;

procedure TOpenZakazForm.cxButton6Click(Sender: TObject);
begin
  if Mess.IsVisible then Mess.CloseAlert;
close;
end;

procedure TOpenZakazForm.cxButton7Click(Sender: TObject);
begin
if DBGrid2.DataSource.DataSet.RecordCount = 0 then exit;
No_action_menu.Active:=false;
No_action_menu.Parameters.ParamByName('menu').Value:=Orders_itemIDMENU.AsInteger;
No_action_menu.Active:=true;
if No_action_menuISEXISTS.AsInteger > 0 then exit;

fmMain.Can_Access.Active:=false;
fmMain.Can_Access.Parameters.ParamByName('person').Value:=pass;
fmMain.Can_Access.Active:=true;
if fmMain.Can_AccessBACCESS.AsInteger = 0 then exit;

  Application.CreateForm(TTrashForm, TrashForm);
  TrashForm.Label1.Caption:=Orders_itemUSLUGA.AsString;
  TrashForm.Label4.Caption:='0';
  Timer1.Enabled:=false;
  TrashForm.ShowModal;
  Timer1.Enabled:=true;
  TrashForm.Free;
end;

procedure TOpenZakazForm.cxButton8Click(Sender: TObject);
begin
if DBLookupComboBoxEh1.Text = '' then exit;
No_action_menu.Active:=false;
No_action_menu.Parameters.ParamByName('menu').Value:=Orders_itemIDMENU.AsInteger;
No_action_menu.Active:=true;
if No_action_menuISEXISTS.AsInteger > 0 then exit;

if Orders_item.RecordCount = 0 then
exit;

  Application.CreateForm(TPermestForm, PermestForm);
  PermestForm.Label1.Caption:=Orders_itemUSLUGA.AsString;
  PermestForm.Label4.Caption:='0';
  With PermestForm.Koord do
   begin
    Active:=false;
    Parameters.ParamByName('order_item').Value:=Orders_itemIDORDERS_ITEM.AsInteger;
    Parameters.ParamByName('pass').Value:=pass;
    Active:=true;
   end;
  Timer1.Enabled:=false;
  PermestForm.ShowModal;
  Timer1.Enabled:=true;
  PermestForm.Free;
end;

procedure TOpenZakazForm.cxButton9Click(Sender: TObject);
begin
with Orders_user do
 begin
   Active:=false;
   Parameters.ParamByName('pass').Value:=pass;
   Parameters.ParamByName('koord').Value:=stol[predop].stolGuid;
   Active:=true;
   Locate('NOMER',predop+1,[]);
   Prior;
   predop:=FieldByName('NOmer').AsInteger-1;
   OpenZakazForm.FormShow(nil);
 end;
end;

procedure TOpenZakazForm.DBLookupComboBox2Click(Sender: TObject);
begin
ChangWaiter(DBLookupComboBox2.EditValue, DBLookupComboBox2.Text);
end;

procedure TOpenZakazForm.SpeedButton7Click(Sender: TObject);
var i,j:Integer;
begin
if KatID=0 then exit;
   With View_Menu_Kat  do
   begin
    Active:=false;
    Parameters.ParamByName('Menu_Struc').Value:=KatID;
    Parameters.ParamByName('Station').Value:=intToStr(Station)+';';
    Parameters.ParamByName('Orders').Value:=Podzakaz;
    Active:=true;
    first;
    if RecordCount>48 then
     begin
       for i:=0 to 7 do
        for j:=0 to 5 do
         begin
          StringGrid1.cells[i,j]:='';
          index[i,j]:=-1;
          kolvo[i,j]:=0;
         end;
       i:=0;
       J:=0;
       First;
      While eof<>true do
       begin
        StringGrid1.cells[i,j]:=FieldByName('vcname').AsString;
        idMenu[i,j]:=FieldByName('idMenu').AsInteger;
        index[i,j]:=FieldByName('ind').AsInteger;
        if Vremen_orders_item.Locate('idMenu',idMenu[i,j],[]) then
         kolvo[i,j]:=FieldByName('Fkolvo').AsInteger+Vremen_orders_itemFKOLVO.AsInteger
       else kolvo[i,j]:=FieldByName('fkolvo').AsInteger;
        next;
        inc(i);
        IF i > 7 then
         begin
         i:=0; j:=j+1;
         if j > 5 then break;
         end;
       end;
      end;
   end;
end;

procedure TOpenZakazForm.SpeedButton8Click(Sender: TObject);
var i,j:Integer;
begin
if KatID=0 then exit;

   With View_Menu_Kat  do
   begin
    Active:=false;
    Parameters.ParamByName('Menu_Struc').Value:=KatID;
    Parameters.ParamByName('Station').Value:=intToStr(Station)+';';
    Parameters.ParamByName('Orders').Value:=Podzakaz;
    Active:=true;
    first;
    if RecordCount>48 then
     begin
       for i:=0 to 7 do
        for j:=0 to 5 do
         begin
          StringGrid1.cells[i,j]:='';
          index[i,j]:=-1;
          kolvo[i,j]:=0;
         end;
       i:=0;
       J:=0;
       RecNo:=49;
      While eof<>true do
       begin
        StringGrid1.cells[i,j]:=FieldByName('vcname').AsString;
        idMenu[i,j]:=FieldByName('idMenu').AsInteger;
        index[i,j]:=FieldByName('ind').AsInteger;
        if Vremen_orders_item.Locate('idMenu',idMenu[i,j],[]) then
         kolvo[i,j]:=FieldByName('Fkolvo').AsInteger+Vremen_orders_itemFKOLVO.AsInteger
       else kolvo[i,j]:=FieldByName('fkolvo').AsInteger;
        next;
        inc(i);
        IF i > 7 then
         begin
         i:=0; j:=j+1;
         if j>5 then break;
         end;
       end;
      end;
   end;
end;

procedure TOpenZakazForm.StringGrid11DrawCell(Sender: TObject; ACol,
  ARow: Integer; Rect: TRect; State: TGridDrawState);
begin
 {  with Sender as TDrawGrid, Canvas do
    begin

       s:=WordLength(StrMenu[ACol,ARow],Siz);
       DrawText(StringGrid1.Canvas.Handle,PChar(S),Length(S),Rect,DT_WORDBREAK or DT_CENTER);

    end;  }

end;

procedure TOpenZakazForm.StringGrid1DragDrop(Sender, Source: TObject; X,
  Y: Integer);
  var SenderStr, SourceStr:String; dragIdMenu:Integer;  ACol,ARow:Integer;
begin
StringGrid1.MouseToCell(x,y,ACol,Arow);
SenderStr:=StringGrid1.Cells[dragX,dragY];
SourceStr:=StringGrid1.Cells[Acol,ARow];
dragIdMenu:=idMenu[dragX,dragY];
StringGrid1.Cells[ACol,ARow]:=SenderStr;
StringGrid1.Cells[dragX,dragY]:=SourceStr;
idMenu[dragX,dragY]:=idMenu[ACol,ARow];
idMenu[ACol,ARow]:=dragIdMenu;
StringGrid1.Repaint;
end;

procedure TOpenZakazForm.StringGrid1DragOver(Sender, Source: TObject; X,
  Y: Integer; State: TDragState; var Accept: Boolean);
begin
Accept:=true;
end;

procedure TOpenZakazForm.StringGrid1DrawCell(Sender: TObject; ACol,
  ARow: Integer; Rect: TRect; State: TGridDrawState);
var Rt:TRect;
begin
 if index[Acol,ARow]= 2 then
  ImageList1.Draw(TAdvStringGrid(Sender).Canvas,Rect.Left+45,Rect.Top+45, 3 )
 else
 if index[Acol, Arow] = 11 then
  ImageList1.Draw(TAdvStringGrid(Sender).Canvas,Rect.Left+22,Rect.Top+22, 7 );
 if kolvo[Acol,ARow]>0 then
  begin
   if View_Menu_Kat.Locate('idMenu',idMenu[Acol,Arow],[]) then
    begin
     if Vremen_orders_item.Lookup('idMenu',idMenu[Acol,Arow],'fKolvo')>0 then
      Kolvo[Acol,Arow]:=View_Menu_KatFKOLVO.AsInteger+Vremen_orders_item.Lookup('idmenu',idMenu[Acol,Arow],'fKolvo')
     else Kolvo[Acol,Arow]:=View_Menu_KatFKOLVO.AsInteger;
    end
   else kolvo[Acol,Arow]:=Vremen_orders_item.Lookup('idMenu',idMenu[Acol,Arow],'fKolvo');
   Rt.Top:=Rect.Top+45;
   Rt.Left:=Rect.Left;
   rt.Right:=Rect.Left+15;
   rt.Bottom:=Rect.Top+100;
   ImageList1.Draw(TAdvStringGrid(Sender).Canvas,Rect.Left-1,Rect.Top+44, 4 );
   TAdvStringGrid(Sender).Canvas.Font.Color:=RGB(7,14,22);
   DrawText(TAdvStringGrid(Sender).Canvas.Handle,PChar(IntToStr(kolvo[ACol,ARow])),Length(IntToStr(kolvo[ACol,ARow])),Rt,DT_WORDBREAK or DT_CENTER);
  end;
end;

procedure TOpenZakazForm.StringGrid1MouseDown(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
var j,i, Col,Row:Integer;
begin
if AdvGlowButton1.Caption='Сохранить' then
 begin
  StringGrid1.MouseToCell(x,y,dragX,dragY);
  StringGrid1.BeginDrag(false);
  exit;
 end;

Col:=StringGrid1.Selection.Left;
Row:=StringGrid1.Selection.Top;
if StringGrid1.cells[Col,Row]='' then exit;
 Siz:=10;
if Index[Col,Row]=0 then
 begin
    if DBGrid1.Font.Color=clred then  Mess.Show
    else
     begin
         if Vremen_orders_item.Locate('idMenu',idMenu[col,row],[]) then
           Vremen_orders_item.Edit
         else
          begin
           Vremen_orders_item.Insert;
           Vremen_orders_itemIDMENU.AsInteger:=idMenu[col,row];
          end;
         Vremen_orders_itemFKOLVO.AsFloat:=Vremen_orders_itemFKOLVO.AsFloat+1;
         Vremen_orders_item.Post;
         if kolvo[col,row]= 0 then kolvo[col,row]:=1;
         StringGrid1.Repaint;
     end;

 end else
 if Index[Col,Row]=1 then
 begin
 StringGrid1.Font.Style:=[];
 KatID:=idMenu[Col,Row];
  for i:=0 to 7 do
   for j:=0 to 5 do
    begin
     StringGrid1.Cells[i,j]:='';
     index[i,j]:=-1;
     kolvo[i,j]:=0;
    end;
  i:=0;
 J:=0;
   With View_Menu_Kat  do
   begin
    Active:=false;
    Parameters.ParamByName('Station').Value:=IntToStr(Station)+';';
    Parameters.ParamByName('Menu_Struc').Value:=idMenu[Col,Row];
    Parameters.ParamByName('Orders').Value:=Podzakaz;
    Active:=true;
    first;
   While eof<>true do
    begin
     if (i = Col) and (j = Row) then  Index[i,j]:=11
     else 
       begin
        idMenu[i,j]:=FieldByName('idMenu').AsInteger;
        index[i,j]:=FieldByName('ind').AsInteger;
        if Vremen_orders_item.Locate('idMenu',idMenu[i,j],[]) then
          kolvo[i,j]:=FieldByName('Fkolvo').AsInteger+Vremen_orders_itemFKOLVO.AsInteger
        else kolvo[i,j]:=FieldByName('Fkolvo').AsInteger;
        StringGrid1.Cells[i,j]:=FieldByName('vcName').AsString;
        next;
       end;
       inc(i);
       IF i > 7 then
        begin
         i:=0; j:=j+1;
        end;

    end;
   end;

 StringGrid1.Repaint;
 end else
 if Index[Col,Row]=2 then                          //если составное
  begin
    if DBGrid1.Font.Color=clred then  Mess.Show
    else
     begin
         if Vremen_orders_item.Locate('idMenu',idMenu[col,row],[]) then
           Vremen_orders_item.Edit
         else
          begin
           Vremen_orders_item.Insert;
           Vremen_orders_itemIDMENU.AsInteger:=idMenu[col,row];
          end;
         Vremen_orders_itemFKOLVO.AsFloat:=Vremen_orders_itemFKOLVO.AsFloat+1;
         Vremen_orders_item.Post;
         if kolvo[col,row]= 0 then kolvo[col,row]:=1;
 StringGrid1.Font.Style:=[];
 KatID:=idMenu[Col,Row];
  for i:=0 to 7 do
   for j:=0 to 5 do
    begin
     StringGrid1.Cells[i,j]:='';
     index[i,j]:=-1;
     kolvo[i,j]:=0;
    end;
  i:=0;
 J:=0;
   With View_Menu_Kat  do
   begin
    Active:=false;
    Parameters.ParamByName('Station').Value:=IntToStr(Station)+';';
    Parameters.ParamByName('Menu_Struc').Value:=idMenu[Col,Row];
    Parameters.ParamByName('Orders').Value:=Podzakaz;
    Active:=true;
    first;
   While eof<>true do
    begin
     if (i = Col) and (j = Row) then  Index[i,j]:=11
     else
       begin
        idMenu[i,j]:=FieldByName('idMenu').AsInteger;
        index[i,j]:=FieldByName('ind').AsInteger;
        if Vremen_orders_item.Locate('idMenu',idMenu[i,j],[]) then
         kolvo[i,j]:=FieldByName('Fkolvo').AsInteger+Vremen_orders_itemFKOLVO.AsInteger
        else kolvo[i,j]:=FieldByName('Fkolvo').AsInteger;
        StringGrid1.Cells[i,j]:=FieldByName('vcName').AsString;
        next;
       end;
       inc(i);
       IF i > 7 then
        begin
         i:=0; j:=j+1;
        end;
    end;
   end;

 StringGrid1.Repaint;
// Parent_or_no.Active:=false;
     end;
  end;                                  // конец если составное

end;

procedure TOpenZakazForm.DBCheckBoxEh1MouseUp(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
if DBGrid2.DataSource.DataSet.RecordCount = 0 then exit;

bKomplex_chang.Active:=false;
if DBCheckBoxEh1.State = cbChecked then
 begin
  bKomplex_chang.Parameters.ParamByName('bit').Value:=1;
  bKomplex_chang.Parameters.ParamByName('quantity').Value:=StrToInt(DBNumberEditEh1.Text);
  DBNumberEditEh1.Visible:=true;
 end
else
 begin
  bKomplex_chang.Parameters.ParamByName('bit').Value:=0;
  DBNumberEditEh1.Visible:=false;
 end;
bKomplex_chang.Parameters.ParamByName('orders').Value:=Podzakaz;
bKomplex_chang.ExecSQL;
Orders_item.Active:=false;
Orders_item.Active:=true;

end;

procedure TOpenZakazForm.DBGrid1CellClick(Column: TColumnEh);
begin
if Vremen_orders_item.RecordCount <> 0 then
 begin
   if Column.FieldName = 'FKOLVO' then
     begin
      DigitForm.Edit1.PasswordChar:=Char(#0);
      DigitForm.st:=false;
      DigitForm.ShowModal;
      if DigitForm.Edit1.Text<>'' then
       begin
        Vremen_orders_item.Edit;
        Vremen_orders_itemFKOLVO.AsFloat:=StrToFloat(DigitForm.Edit1.Text);
        Vremen_orders_item.Post;
       end;
     end
   else if COlumn.FieldName = 'VCNAME' then
    begin
      if DBGrid1.Font.Color = clred then
        begin
          if Vremen_orders_itemFKOLVO.AsFloat <= 1 then
             Vremen_orders_item.Delete
          else
           begin
             Vremen_orders_item.Edit;
             Vremen_orders_itemFKOLVO.AsFloat:=Vremen_orders_itemFKOLVO.AsFloat - 1;
             Vremen_orders_item.Post;
           end;
        end
      else
        begin
        Vremen_orders_item.Edit;
        Vremen_orders_itemFKOLVO.AsFloat:=Vremen_orders_itemFKOLVO.AsFloat+1;
        Vremen_orders_item.Post;
        end;
    end;
 end;
StringGrid1.Repaint;
end;

procedure TOpenZakazForm.DBGrid2CellClick(Column: TColumnEh);
begin
if Orders_item.RecordCount=0 then exit;
if Column.FieldName = 'add' then
 begin
  if tbMenu.Locate('idMenu',Orders_itemIDMENU.AsInteger,[]) then
   begin
    DigitForm.Edit1.PasswordChar:=Char(#0);
    DigitForm.st:=false;
    DigitForm.ShowModal;
    if DigitForm.Edit1.Text <>'' then
      With Vremen_orders_item do
       begin
        cxButton5.Click;
        Insert;
        Vremen_orders_itemIDMENU.AsInteger:=Orders_itemIDMENU.AsInteger;
        Vremen_orders_itemFKOLVO.AsFloat:=StrToFloat(DigitForm.Edit1.Text);
        Post;
       end;
   end;
 end;
end;

procedure TOpenZakazForm.DBGrid2KeyPress(Sender: TObject; var Key: Char);
begin
if Key=#13 then ShowMessage('1');
end;

procedure TOpenZakazForm.DBGridEh1CellClick(Column: TColumnEh);

begin
 if DBGrid1.Font.Color=clred then  Mess.Show
    else
     begin
      if Vremen_orders_item.Locate('idMenu',tbMenu_by_kodIDMENU.AsInteger,[]) then
        Vremen_orders_item.Edit
      else
       begin
        Vremen_orders_item.Insert;
        Vremen_orders_itemIDMENU.AsInteger:=tbMenu_by_kodIDMENU.AsInteger;
       end;
      Vremen_orders_itemFKOLVO.AsFloat:=Vremen_orders_itemFKOLVO.AsFloat+1;
      Vremen_orders_item.Post;
     end;
end;

procedure TOpenZakazForm.DBGridEh1DrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumnEh;
  State: TGridDrawState);
begin
if (Column.FieldName = 'add')and(Orders_item.RecordCount <> 0) then
 ImageList1.Draw(TDBGridEh(Sender).Canvas,Rect.Left+12,Rect.Top, 0 );
end;



procedure TOpenZakazForm.DBGridEh2CellClick(Column: TColumnEh);
begin
 if DBGrid1.Font.Color=clred then  Mess.Show
    else
     begin
      if Vremen_orders_item.Locate('idMenu',tbMenu_lastIDMENU.AsInteger,[]) then
        Vremen_orders_item.Edit
      else
       begin
        Vremen_orders_item.Insert;
        Vremen_orders_itemIDMENU.AsInteger:=tbMenu_lastIDMENU.AsInteger;
       end;
      Vremen_orders_itemFKOLVO.AsFloat:=Vremen_orders_itemFKOLVO.AsFloat+1;
      Vremen_orders_item.Post;
     end;
end;

procedure TOpenZakazForm.DBGridEh3CellClick(Column: TColumnEh);
begin
 if DBGrid1.Font.Color=clred then  Mess.Show
    else
     begin
      if Vremen_orders_item.Locate('idMenu',tbMenu_favoritIDMENU.AsInteger,[]) then
        Vremen_orders_item.Edit
      else
       begin
        Vremen_orders_item.Insert;
        Vremen_orders_itemIDMENU.AsInteger:=tbMenu_favoritIDMENU.AsInteger;
       end;
      Vremen_orders_itemFKOLVO.AsFloat:=Vremen_orders_itemFKOLVO.AsFloat+1;
      Vremen_orders_item.Post;
     end;
end;

end.

