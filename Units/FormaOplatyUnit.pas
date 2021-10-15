unit FormaOplatyUnit;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Menus, cxLookAndFeelPainters, StdCtrls, cxButtons, ExtCtrls, AdvPanel,
  cxControls, cxContainer, cxEdit, cxTextEdit, cxCurrencyEdit, DBCtrls, DB,
  ADODB, frxClass, cxGraphics, cxMaskEdit, cxDropDownEdit,
  cxLookupEdit, cxDBLookupEdit, cxDBLookupComboBox, Printers, frxDBSet,
  iniFiles,
  COMObj, OleCtrls, Grids, DBGrids,
  cxPC, cxLookAndFeels, dxBarBuiltInMenu, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client, System.ImageList, Vcl.ImgList,
  cxImageList, dxGDIPlusClasses;

type
  TfmFormaOplaty = class(TForm)
    OrdersSource: TDataSource;
    PersonSource: TDataSource;
    frxDBDataset1: TfrxDBDataset;
    frxReport1: TfrxReport;
    DBText1: TDBText;
    Label1: TLabel;
    Label2: TLabel;
    tbPerson: TFDQuery;
    tbPersonID: TIntegerField;
    tbPersonNAME: TWideStringField;
    Orders: TFDQuery;
    OrdersUID: TWideStringField;
    OrdersKOD: TIntegerField;
    OrdersTOTAL_SUM: TFloatField;
    OrdersSUPPLIER: TIntegerField;
    Orders_item: TFDQuery;
    Orders_itemIDORDERS_ITEM: TWideStringField;
    Orders_itemNAME: TWideStringField;
    Orders_itemFKOLVO: TFloatField;
    Orders_itemCENA: TFloatField;
    Orders_itemIDMENU: TIntegerField;
    KKM_read: TFDQuery;
    KKM_readUSLUGA: TWideStringField;
    KKM_readFKOLVO: TFloatField;
    KKM_readCENA_SALES: TFloatField;
    KKM_readDISCOUNT: TFloatField;
    KKM_readMARGIN: TFloatField;
    KKM_readTOTAL_SUM: TFloatField;
    Spisanie: TFDCommand;
    Close_orders: TFDCommand;
    Oplata: TFDCommand;
    DBText3: TDBText;
    Label7: TLabel;
    OrdersSUMMA: TFloatField;
    cxImageList1: TcxImageList;
    OrdersDELIV: TIntegerField;
    Panel3: TPanel;
    Image1: TImage;
    Panel4: TPanel;
    cxCurrencyEdit5: TcxCurrencyEdit;
    cxCurrencyEdit6: TcxCurrencyEdit;
    cxImageList2: TcxImageList;
    cxButton9: TcxButton;
    cxButton10: TcxButton;
    cxButton11: TcxButton;
    cxButton12: TcxButton;
    cxButton13: TcxButton;
    Label8: TLabel;
    procedure OplataOrders(Klient,Fo:integer; mani:Double; isprint:Boolean);
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure Image1Click(Sender: TObject);
    procedure cxCurrencyEdit5Click(Sender: TObject);
    procedure cxCurrencyEdit6Click(Sender: TObject);
    procedure cxButton10Click(Sender: TObject);
    procedure cxButton11Click(Sender: TObject);
    procedure cxButton12Click(Sender: TObject);
    procedure cxButton13Click(Sender: TObject);
    procedure cxCurrencyEdit5PropertiesChange(Sender: TObject);
    procedure cxButton9Click(Sender: TObject);
  private
    { Private declarations }
    //KKMFULLPRINT:boolean;
  public
    { Public declarations }
  end;

var
  fmFormaOplaty: TfmFormaOplaty;

implementation

uses MainUnit, DMUnit, DigitUnit, LinkConnectionUnit;

{$R *.dfm}

procedure TfmFormaOplaty.cxButton10Click(Sender: TObject);
begin
 cxCurrencyEdit5.Visible:=true;
 cxCurrencyEdit5.Align:=alClient;
 cxCurrencyEdit5.Margins.Right:=0;
 cxCurrencyEdit6.Value:=0;
 cxCurrencyEdit6.Visible:=false;
 cxButton13.Tag:=0;
end;

procedure TfmFormaOplaty.cxButton11Click(Sender: TObject);
begin
 cxCurrencyEdit6.Visible:=true;
  cxCurrencyEdit6.Align:=alClient;
  cxCurrencyEdit6.Properties.ReadOnly:=true;
  cxCurrencyEdit6.Value:=OrdersSUMMA.AsCurrency;
  cxCurrencyEdit6.Margins.Left:=0;
  cxCurrencyEdit5.Value:=0;
 cxCurrencyEdit5.Visible:=false;
 cxButton13.Tag:=1;
end;

procedure TfmFormaOplaty.cxButton12Click(Sender: TObject);
begin
   cxCurrencyEdit6.Visible:=true;
  cxCurrencyEdit6.Align:=alClient;
  cxCurrencyEdit6.Margins.Left:=8;
  cxCurrencyEdit6.Value:=0;
  cxCurrencyEdit6.Properties.ReadOnly:=false;
 cxCurrencyEdit5.Visible:=true;
  cxCurrencyEdit5.Align:=alLeft;
  cxCurrencyEdit5.Width:=165;
  cxCurrencyEdit5.Margins.Right:=8;
  cxCurrencyEdit5.Value:=0;
  cxButton13.Tag:=2;
end;

procedure TfmFormaOplaty.cxButton13Click(Sender: TObject);
begin

 case cxButton13.Tag of
  0: begin
      if cxCurrencyEdit5.Value = 0 then
         OplataOrders(OrdersSUPPLIER.AsInteger,1, OrdersSUMMA.AsCurrency, true)
      else if cxCurrencyEdit5.Value < OrdersSUMMA.AsCurrency then
            MessageDlg('�� ���������� ������� ��� ������!',mtWarning,[mbOk],0)
      else OplataOrders(OrdersSUPPLIER.AsInteger,1, cxCurrencyEdit5.Value, true);
     end;
  1: OplataOrders(OrdersSUPPLIER.AsInteger,2, 0, true);
  2: begin
      if (cxCurrencyEdit5.Value + cxCurrencyEdit6.Value < OrdersSUMMA.AsCurrency) then
          exit
      else if cxCurrencyEdit5.Value >= OrdersSUMMA.AsCurrency then
          OplataOrders(OrdersSUPPLIER.AsInteger,1, cxCurrencyEdit5.Value, true)
      else if cxCurrencyEdit6.Value >= OrdersSUMMA.AsCurrency  then
          OplataOrders(OrdersSUPPLIER.AsInteger,2, 0, true)
      else
          OplataOrders(OrdersSUPPLIER.AsInteger,100, cxCurrencyEdit5.Value, true);
     end;
 end;
end;

procedure TfmFormaOplaty.cxButton9Click(Sender: TObject);
begin
  OplataOrders(OrdersSUPPLIER.AsInteger,1, OrdersSUMMA.AsCurrency, true);
end;

procedure TfmFormaOplaty.cxCurrencyEdit5Click(Sender: TObject);
begin
 DigitForm:=TDigitForm.Create(self);
 DigitForm.Edit1.PasswordChar:=Char(#0);
 DigitForm.st:=false;
 DigitForm.ShowModal;
 if DigitForm.Edit1.Text <>'' then
  begin
   cxCurrencyEdit5.Value:=StrToFloat(DigitForm.Edit1.Text);
   cxCurrencyEdit6.Value:=OrdersSUMMA.AsCurrency - cxCurrencyEdit5.Value;
  end;
 DigitForm.Free;
end;

procedure TfmFormaOplaty.cxCurrencyEdit5PropertiesChange(Sender: TObject);
begin
if cxButton13.Tag = 0 then
  begin
   if cxCurrencyEdit5.Value > OrdersSUMMA.AsFloat then
     Label8.Caption:=FormatCurr('# ### ##0.##', cxCurrencyEdit5.Value-OrdersSUMMA.AsFloat)
   else Label8.Caption:='0';
  end
else if cxButton13.Tag = 2 then
 begin
   if cxCurrencyEdit5.Value > OrdersSUMMA.AsFloat + cxCurrencyEdit6.Value then
     Label8.Caption:=FormatCurr('# ### ##0.##', cxCurrencyEdit5.Value-OrdersSUMMA.AsFloat-cxCurrencyEdit6.Value)
   else Label8.Caption:='0';
 end
else Label8.Caption:='0';

end;

procedure TfmFormaOplaty.cxCurrencyEdit6Click(Sender: TObject);
begin
 if cxCurrencyEdit6.Properties.ReadOnly then exit;

 DigitForm:=TDigitForm.Create(self);
 DigitForm.Edit1.PasswordChar:=Char(#0);
 DigitForm.st:=false;
 DigitForm.ShowModal;
 if DigitForm.Edit1.Text <>'' then
  begin
   cxCurrencyEdit6.Value:=StrToFloat(DigitForm.Edit1.Text);
   cxCurrencyEdit5.Value:=OrdersSUMMA.AsCurrency - cxCurrencyEdit6.Value;
  end;
 DigitForm.Free;
end;

procedure TfmFormaOplaty.FormClose(Sender: TObject; var Action: TCloseAction);
begin
 tbPerson.Active:=false;
end;

procedure TfmFormaOplaty.FormCreate(Sender: TObject);
begin
 SetConnection(TForm(Self), dm.FDB);
 fstMain.RoundCornerOf(Panel3);

 cxCurrencyEdit5.Properties.Images:=cxImageList2;
with cxCurrencyEdit5.Properties.Buttons do
        begin
          with Add as TcxEditButton do
            begin
             Kind := bkGlyph;
             Default := true;
             LeftAlignment:=true;
             ImageIndex:=0;
            end;
        end;
cxCurrencyEdit6.Properties.Images:=cxImageList2;
with cxCurrencyEdit6.Properties.Buttons do
        begin
          with Add as TcxEditButton do
            begin
             Kind := bkGlyph;
             Default := true;
             LeftAlignment:=true;
             ImageIndex:=1;
            end;
        end;

end;

procedure TfmFormaOplaty.FormShow(Sender: TObject);
begin

cxCurrencyEdit5.Visible:=true;
 cxCurrencyEdit5.Align:=alClient;
 cxCurrencyEdit5.Margins.Right:=0;
 cxCurrencyEdit6.Visible:=false;

 cxButton13.Tag:=0;

end;

procedure TfmFormaOplaty.Image1Click(Sender: TObject);
begin
Close;
end;

procedure TfmFormaOplaty.OplataOrders(Klient, Fo: integer; mani:Double; isprint:Boolean);
Label 1, 2;
var i,c,j:byte; ini:TIniFile; repFilename:String;
begin

 try
    Close_orders.params[0].asstring:=dm.Current_orderUID.AsString;
    Close_orders.Execute();
  if spis then
    Spisanie.params[0].asstring:=dm.Current_orderUID.AsString;
    Spisanie.Execute();
 except on e:exception do
  begin
   showMessage(e.Message);
   exit;
  end;
 end;

if SrvPrint then // ���������� �� ������-������
      begin
        dm.Orders_item.Filter:='';
        dm.Orders_item.First;
        while dm.Orders_item.Eof <> true do
        begin
          dm.FDCommand1.Execute
            ('insert into TBPRINTED_ORDER(IDDOC, IDPRODUCT, KOLVO, DESCR, PLACE) values('''
            + dm.Current_orderUID.AsString + ''', ' + dm.Orders_itemIDMENU.AsString +
            ', ' + dm.Orders_itemkolvo.AsString + ', ''' +
            dm.Orders_itemCOMMENTS.AsString+ ''','+place.ToString+');');
          dm.Orders_item.Next;
        end;
      end
else
 begin
 if dm.All_Podrazd.Active=false then
   begin
     dm.All_Podrazd.params[0].asInteger:=Station;      //��� ������������� ������ �������
     dm.All_Podrazd.open;
   end;
//���� ���� ������������ �� ���������� ������ �� ������
 if FileExists(ExtractFilePath(Application.ExeName)+'Reports\Service.fr3') then
   begin
     if dm.All_Podrazd.RecordCount > 0 then
      begin
        dm.Orders_item.Filter:='';
        dm.All_Podrazd.First;
        while dm.All_Podrazd.Eof <> true do
          begin
            dm.Orders_item.Filter:=dm.Orders_itemIDPODRAZD.FieldName+' in ('+dm.All_PodrazdID.AsString+')';
            dm.Orders_item.Filtered:=true;

            if (dm.Orders_item.RecordCount > 0) and (Printer.Printers.Count > 0) then
               begin
                 for i := 0 to Printer.Printers.Count - 1 do
                   if Printer.Printers.Strings[i]=dm.All_podrazdPRINTERNAME.AsString then
                      begin
                       //frxReport1.LoadFromFile(ExtractFilePath(Application.ExeName)+'Reports\Service.fr3',true);
                        if FileExists(ExtractFilePath(Application.ExeName)+'Reports\'+dm.All_PodrazdFILE_NAME.AsString) then
                           frxReport1.LoadFromFile(ExtractFilePath(Application.ExeName)+'Reports\'+dm.All_PodrazdFILE_NAME.AsString,true)
                        else  MessageDlg('�� ������ ����:'+#13+ExtractFilePath(Application.ExeName)+'Reports\'+dm.All_PodrazdFILE_NAME.AsString, mtError, [mbOk], 0);
                        frxReport1.Variables.Variables['station']:=''''+fstMain.tbStationNAME.AsString+'''';
                        frxReport1.Variables.Variables['Chet']:=''''+fstMain.lbCheck.Caption+'''';
                        frxReport1.Variables.Variables['Oficiant']:=''''+dm.Current_orderOFFICIANT.AsString+'''';
                        frxReport1.Variables.Variables['Stol']:=''''+dm.Current_orderSTOL.AsString+'''';
                        //frxReport1.Variables.Variables['Podrazd']:=''''+dm.All_PodrazdNAME.AsString+'''';

                        frxReport1.PrintOptions.Printer:=dm.All_podrazdPRINTERNAME.AsString;
                        frxReport1.PrintOptions.ShowDialog:=false;
                        frxReport1.PrintOptions.Copies:=1;

                        if frxReport1.PrepareReport then
                          frxReport1.Print;
                        break;
                       end;
                 end;
            dm.Orders_item.Filtered:=false;
            dm.All_Podrazd.Next
          end;




      end;   //if dm.AllPodrazd.VisibleRecordCount > 0

     //dm.tbPrinters.Next;
   end;      //While dmTbPrinters.Eof <> true

 end;

  Oplata.params[0].asstring:=dm.Current_orderUID.AsString;
  Oplata.params[1].asInteger:=Klient;
  Oplata.params[2].asInteger:=Fo;
  Oplata.params[3].asFloat:=mani;
  Oplata.Execute();

 fstMain.PayButton.Tag:=0;
 if SrvPrint then
    dm.FDCommand1.Execute('insert into TBPRINTED_ORDER(IDDOC,PLACE) values(''' +
        dm.Current_orderUID.AsString + ''','+place.ToString+');')
 else
  begin
   if OrdersDELIV.AsInteger = 0 then
    repFilename:='Reports\GuestCheck.fr3'
   else repFilename:='Reports\Dostavka.fr3';
   ini:=TIniFile.Create(ExtractFilePath(ParamStr(0))+'config.ini');

   if FileExists(ExtractFilePath(Application.ExeName)+ repFilename) then
     begin

      if (isprint) and (Printer.Printers.Count > 0) then
       for j := 0 to prnts.Count - 1 do
        for i := 0 to Printer.Printers.Count - 1 do
         if Printer.Printers.Strings[i]= prnts[j] then
            begin
             frxReport1.LoadFromFile(ExtractFilePath(Application.ExeName)+ repFilename,true);
             frxReport1.Variables.Variables['orders']:=''''+dm.Current_orderUID.AsString+'''';
             frxReport1.PrintOptions.Printer:=prnts[j];
             frxReport1.PrintOptions.ShowDialog:=false;
             if frxReport1.PrepareReport(true) then
               for c := 0 to ini.ReadInteger('DATABASE', 'PRINTCOPIES', 1) - 1 do
                frxReport1.Report.Print;
            end;
     end;
  end;

   ini.Free;
   dm.Current_order.Refresh;
   fstMain.DBLookupComboBox1.Enabled:=false;
   fstMain.lbCheck.Caption:='';
   fstMain.Label2.Caption:='';
   fstMain.Label3.Caption:='';
   fstMain.Label4.Caption:='';
   Close;
end;

end.
