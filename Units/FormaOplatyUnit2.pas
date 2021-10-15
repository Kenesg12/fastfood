unit FormaOplatyUnit;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Menus, cxLookAndFeelPainters, cxGraphics, frxClass, DB,
  DBCtrls, StdCtrls, cxMaskEdit, cxDropDownEdit, cxLookupEdit,
  cxDBLookupEdit, cxDBLookupComboBox, cxControls, cxContainer, cxEdit,
  cxTextEdit, cxCurrencyEdit, cxButtons, ExtCtrls, AdvPanel, Dialogs,
  comObj, IniFiles, OleCtrls, {DrvFRLib_TLB,} cxDBEdit, cxPC,
  cxLookAndFeels, dxBarBuiltInMenu, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.Client,
  FireDAC.Comp.DataSet;

type
  TfmFormaOplaty = class(TForm)
    OrdersSource: TDataSource;
    frxReport1: TfrxReport;
    PersonSource: TDataSource;
    cxPageControl1: TcxPageControl;
    cxTabSheet1: TcxTabSheet;
    cxButton1: TcxButton;
    cxButton5: TcxButton;
    cxButton4: TcxButton;
    cxTabSheet2: TcxTabSheet;
    cxButton3: TcxButton;
    cxButton6: TcxButton;
    cxCurrencyEdit1: TcxCurrencyEdit;
    Label3: TLabel;
    cxCurrencyEdit2: TcxCurrencyEdit;
    Label4: TLabel;
    cxTabSheet3: TcxTabSheet;
    cxTabSheet4: TcxTabSheet;
    cxButton9: TcxButton;
    cxButton10: TcxButton;
    cxButton11: TcxButton;
    Label7: TLabel;
    ComboBox1: TComboBox;
    cxButton12: TcxButton;
    cxButton8: TcxButton;
    cxButton7: TcxButton;
    cxDBLookupComboBox1: TcxDBLookupComboBox;
    Label6: TLabel;
    Label5: TLabel;
    cxCurrencyEdit4: TcxCurrencyEdit;
    cxCurrencyEdit3: TcxCurrencyEdit;
    Panel1: TPanel;
    Label1: TLabel;
    DBText1: TDBText;
    DBLookupComboBox2: TDBLookupComboBox;
    cxButton13: TcxButton;
    Panel2: TPanel;
    Label2: TLabel;
    cxDBCurrencyEdit1: TcxDBCurrencyEdit;
    tbPerson: TFDQuery;
    tbPersonIDPERSON: TIntegerField;
    tbPersonFIO: TStringField;
    Orders: TFDQuery;
    OrdersIDKLINET: TIntegerField;
    OrdersMCASH: TFloatField;
    OrdersNOMER: TIntegerField;
    Orders_item: TFDQuery;
    Orders_itemIDORDERS_ITEM: TStringField;
    Orders_itemNAME: TStringField;
    Orders_itemFKOLVO: TFloatField;
    Orders_itemCENA: TFloatField;
    Orders_itemIDMENU: TIntegerField;
    Return_order: TFDStoredProc;
    KKM_read: TFDQuery;
    KKM_readUSLUGA: TStringField;
    KKM_readFKOLVO: TFloatField;
    KKM_readCENA_SALES: TFloatField;
    KKM_readDISCOUNT: TFloatField;
    KKM_readMARGIN: TFloatField;
    Oplata_orders1: TFDQuery;
    Oplata_orders1OPEN_COUNT: TSmallintField;
    Oplata_orders1STATUS: TSmallintField;
    Oplata_orders1PIC: TIntegerField;
    Oplata_orders1STOL_LABEL: TStringField;
    Oplata_orders1OFICIANT: TStringField;
    Close_orders: TFDStoredProc;
    Close_ordersSTOL_LABEL: TStringField;
    Close_ordersSTATUS: TSmallintField;
    Close_ordersPIC: TIntegerField;
    Close_ordersOPEN_COUNT: TSmallintField;
    Oplata_orders: TFDCommand;
    FOplaty: TFDQuery;
    FOplatyID: TIntegerField;
    FOplatySource: TDataSource;
    cxLookupComboBox1: TcxLookupComboBox;
    OrdersIDORDERS: TWideStringField;
    FOplatyNAME: TWideStringField;
    procedure cxCurrencyEdit1Click(Sender: TObject);
    procedure cxButton3Click(Sender: TObject);
    procedure OplataOrders(Klient,Fo:integer; mani:Double);
    procedure cxButton4Click(Sender: TObject);
    procedure DBText2Click(Sender: TObject);
    procedure cxButton5Click(Sender: TObject);
    procedure cxButton1Click(Sender: TObject);
    procedure cxButton6Click(Sender: TObject);
    procedure cxButton7Click(Sender: TObject);
    procedure cxButton8Click(Sender: TObject);
    procedure cxCurrencyEdit4Click(Sender: TObject);
    procedure cxButton12Click(Sender: TObject);
    procedure cxButton13Click(Sender: TObject);
    procedure cxButton9MouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure FormShow(Sender: TObject);
    procedure cxDBLookupComboBox1Click(Sender: TObject);
    procedure cxButton1Exit(Sender: TObject);
    procedure OrdersAfterScroll(DataSet: TDataSet);
    function ShtrihFP: Boolean;
    procedure cxButton14Click(Sender: TObject);
    procedure cxPageControl1Change(Sender: TObject);
    procedure FormCreate(Sender: TObject);

  private
    { Private declarations }
    Help_cur:boolean;
  public
    { Public declarations }
  end;

var
  fmFormaOplaty: TfmFormaOplaty;

implementation

uses DMUnit, DigitUnit, MainUnit, LinkConnectionUnit;

{$R *.dfm}

procedure TfmFormaOplaty.cxButton12Click(Sender: TObject);
begin
 cxPageControl1.ActivePageIndex:=0;
end;

procedure TfmFormaOplaty.cxButton13Click(Sender: TObject);
begin
 Help_cur:=true;

end;

procedure TfmFormaOplaty.cxButton14Click(Sender: TObject);
begin
{ if cxCurrencyEdit2.Value < 0 then      //Безналичным
  begin
   if MessageDlg('Из них '+format('%m', [-cxCurrencyEdit2.Value])+' наличными.'+#10#13+'Продолжить?',mtConfirmation,[mbYes, mbNo],0) = mrYes then
   OplataOrders(OrdersIDKLINET.AsInteger,2, cxCurrencyEdit1.Value);
  end
 else OplataOrders(OrdersIDKLINET.AsInteger,2, cxCurrencyEdit1.Value);

  }
end;

procedure TfmFormaOplaty.cxButton1Click(Sender: TObject);
begin
if cxButton1.Cursor = crHelp then
   begin
    Help_cur := false;
    cxButton1.ShowHint:=true;
    exit;
   end;
 cxButton1.ShowHint:=false;
cxPageControl1.ActivePageIndex:=1;
end;

procedure TfmFormaOplaty.cxButton1Exit(Sender: TObject);
begin
TcxButton(Sender).ShowHint:=false;
end;

procedure TfmFormaOplaty.cxButton3Click(Sender: TObject);
begin
//ShowMessage(FOplatyName.AsString); exit;
 if cxCurrencyEdit2.Value < 0 then
    MessageDlg('Не достаточно средств для оплаты!',mtWarning,[mbOk],0)
 else
   OplataOrders(OrdersIDKLINET.AsInteger,FOplatyID.AsInteger, cxCurrencyEdit1.Value);
end;

procedure TfmFormaOplaty.cxButton4Click(Sender: TObject);
begin
Close;
end;

procedure TfmFormaOplaty.cxButton5Click(Sender: TObject);
begin
if cxButton5.Caption = 'Дополнительно' then
 cxPageControl1.ActivePageIndex:=3
else cxButton9.Click;
end;

procedure TfmFormaOplaty.cxButton6Click(Sender: TObject);
begin
cxPageControl1.ActivePageIndex:=0;
end;

procedure TfmFormaOplaty.cxButton7Click(Sender: TObject);
begin
cxPageControl1.ActivePageIndex:=0;
end;

procedure TfmFormaOplaty.cxButton8Click(Sender: TObject);
begin
 if cxDBLookupComboBox1.Text = '' then exit;
 OplataOrders(cxDBLookupComboBox1.EditValue,3, cxCurrencyEdit4.Value);
end;

procedure TfmFormaOplaty.cxButton9MouseMove(Sender: TObject; Shift: TShiftState;
  X, Y: Integer);
begin
 if (TcxButton(Sender).Cursor = crHelp) and (Help_cur = false) then
   TcxButton(Sender).Cursor:=crDefault
 else if (TcxButton(Sender).Cursor = crDefault) and (Help_cur = true) then
  TcxButton(Sender).Cursor:=crHelp;

end;

procedure TfmFormaOplaty.cxCurrencyEdit1Click(Sender: TObject);
begin
 DigitForm.Edit1.PasswordChar:=Char(#0);
 DigitForm.st:=false;
 DigitForm.ShowModal;
 if DigitForm.Edit1.Text <>'' then
  begin
   cxCurrencyEdit1.Value:=StrToFloat(DigitForm.Edit1.Text);
   cxCurrencyEdit2.Value:=cxCurrencyEdit1.Value-OrdersMCASH.AsFloat;
  end;

end;

procedure TfmFormaOplaty.cxCurrencyEdit4Click(Sender: TObject);
begin
 DigitForm.Edit1.PasswordChar:=Char(#0);
 DigitForm.st:=false;
 DigitForm.ShowModal;
 if DigitForm.Edit1.Text <>'' then
  begin
   cxCurrencyEdit4.Value:=StrToFloat(DigitForm.Edit1.Text);
   cxCurrencyEdit3.Value:=OrdersMCASH.AsFloat-cxCurrencyEdit4.Value;
  end;
end;

procedure TfmFormaOplaty.cxDBLookupComboBox1Click(Sender: TObject);
begin
if cxDBLookupComboBox1.Cursor = crHelp then
   begin
    Help_cur := false;
    cxDBLookupComboBox1.ShowHint:=true;
   end;
 cxDBLookupComboBox1.ShowHint:=false;
end;

procedure TfmFormaOplaty.cxPageControl1Change(Sender: TObject);
begin
if cxPageControl1.ActivePageIndex = 1 then
 begin
   FOplaty.Open;
   cxLookupComboBox1.EditValue:=FOplatyID.AsVariant;
 end;
end;

procedure TfmFormaOplaty.DBText2Click(Sender: TObject);
begin
cxCurrencyEdit1.Value:=OrdersMCASH.AsCurrency;
cxCurrencyEdit3.Value:=OrdersMCASH.AsCurrency;
cxCurrencyEdit2.Value:=0;
cxCurrencyEdit4.Value:=0;
end;

procedure TfmFormaOplaty.FormCreate(Sender: TObject);
begin
SetConnection(TForm(Self), dm.FDB);
FOplaty.Open;

end;

procedure TfmFormaOplaty.FormShow(Sender: TObject);
begin
Help_cur:=false;
cxPageControl1.ActivePageIndex:=0;
cxLookupComboBox1.EditValue:=FOplatyID.AsInteger;
end;

procedure TfmFormaOplaty.OplataOrders(Klient, Fo: integer; mani:Double);
label 1, 2;
var ini:TIniFile; ECR: OleVariant;  charg:Double;
begin


//Закрытие счета в базе
Oplata_orders.params[0].asstring:= OrdersIDORDERS.AsString;
  Oplata_orders.params[1].asinteger:=Klient;
  Oplata_orders.params[2].asinteger:=Fo;
  {if Fo > 1 then
   Oplata_orders.params[3].value:= -cxCurrencyEdit2.EditingValue
  else }
  Oplata_orders.params[3].value:=cxDBCurrencyEdit1.EditingValue;;
  //Oplata_orders.params[4].value:=0;
  Oplata_orders.Transaction.StartTransaction;
  Oplata_orders.execute;
  Oplata_orders.Transaction.Commit;


   frxReport1.LoadFromFile(ExtractFilePath(Application.ExeName)+ 'Reports\GuestCheck.fr3',true);
   frxReport1.Variables.Variables['orders']:=''''+OrdersIDORDERS.AsString+'''';
   frxReport1.PrintOptions.Printer:=fmMain.tbStationPRINTER.AsString;
   frxReport1.PrintOptions.ShowDialog:=false;
   frxReport1.PrepareReport(true);
   frxReport1.Print;



//fmMain.ViewKarta(Stol[fmMain.pc1.ActivePageIndex, cur_id].stolGuid);
{if DBLookupComboBox2.Visible = true then
 begin
  Orders.Refresh;
  if Orders.RecordCount=0 then
   begin
    Orders.Close;
    Close;
   end
   else if Orders.RecordCount=1 then
    DBLookupCombobox2.Visible:=false
  else DBLookupCombobox2.KeyValue:=OrdersIDORDERS.AsString;
 end else }
  begin
   ORders.Close;
   close;
  end;
end;

procedure TfmFormaOplaty.OrdersAfterScroll(DataSet: TDataSet);
begin
cxCurrencyEdit1.Value:=OrdersMCASH.AsCurrency;
cxCurrencyEdit3.Value:=OrdersMCASH.AsCurrency;
cxCurrencyEdit2.Value:=0;
cxCurrencyEdit4.Value:=0;
cxPageControl1.ActivePageIndex:=0;
end;

function TfmFormaOplaty.ShtrihFP: Boolean;
var  name40:String[40]; //DrvFR1:TDrvFR;
ini:TIniFile;
begin
(*DrvFr1:=TDrvFr.Create(Self);
Result:=false;
 if DRVFR1.Connect <> S_OK then
 begin
  beep;
  ShowMessage(drvFR1.ResultCodeDescription);
  exit;
 end;
 if drvFR1.ECRMode = 8 then  begin                   //Если открыт чек продажи, то отмена чека
          if drvFR1.ECRMode8Status = 0 then begin
             drvFR1.ContinuePrint;
             drvFR1.Free;
             exit;
          end;
 end;


          drvFR1.CheckType:=0;
          drvFR1.FirstLineNumber:=1;
          drvFR1.LastLineNumber:=157;
          drvFR1.Draw;
          if drvFR1.OpenCheck <> S_OK then
           begin
            ShowMessage(drvFR1.ResultCodeDescription);
           // MessageDlg('Ошибка открытия счета!'+#13+'Проверьте состояние ФП!',mtWarning,[mbOk],0);
           exit;
           end;
           DRVFR1.Department:=1;
           {DRVFR1.Tax1:=1;
           DRVFR1.Tax2:=0;
           DRVFR1.Tax3:=0;
           DRVFR1.Tax4:=0;}
           ini:=TIniFile.Create(ExtractFilePath(Application.ExeName)+'config.ini');
           Orders_item.ReOpenWP([OrdersIDORDERS.AsString, ini.ReadInteger('LOCALSETTINGS', 'NOFISCAL', 0)]);
           ini.Free;
           Orders_item.First;
          while Orders_item.Eof<>true do
           begin
            Name40:=Orders_itemNAME.AsString;

            DRVFR1.Summ1:=Orders_itemCENA.AsCurrency*Orders_itemFKOLVO.AsFloat;
            DRVFR1.Price:=Orders_itemCENA.AsCurrency;
            DRVFR1.Quantity:=Orders_itemFKOLVO.AsFloat;
            DRVFR1.StringforPrinting:=Name40;
            if drvFR1.Sale <> S_OK then
             begin
              ShowMessage(drvFR1.ResultCodeDescription);
             end;
            Orders_item.Next;
           end;

       DRVFR1.StringforPrinting := '-----------------------------------';
       drvFR1.CheckSubTotal;
//       if fmCash.cxCurrencyEdit2.Value >= drvFR1.Summ1 then
//       DRVFR1.Summ1 :=fmCash.cxCurrencyEdit2.Value;
       drvFR1.Summ2:=0;
       drvFR1.Summ3:=0;
       drvFR1.Summ4:=0;
       drvFR1.DiscountOnCheck := 0;


       if drvFR1.CloseCheck <> S_OK then
        begin
         ShowMessage(drvFR1.ResultCodeDescription);
        end; *)
 Result:=true;
end;

end.
