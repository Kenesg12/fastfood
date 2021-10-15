unit DMUnit;

interface

uses
  SysUtils, Classes, DB, Dialogs, windows, Winsvc
  , IniFiles,  frxChart, frxChBox, frxDCtrl, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Error, FireDAC.UI.Intf, FireDAC.Phys.Intf, FireDAC.Stan.Def,
  FireDAC.Stan.Pool, FireDAC.Stan.Async, FireDAC.Phys, FireDAC.Phys.FB,
  FireDAC.Phys.FBDef, FireDAC.VCLUI.Wait, FireDAC.Comp.UI, FireDAC.Comp.Client,
  FireDAC.Stan.Param, FireDAC.DatS, FireDAC.DApt.Intf, FireDAC.DApt,
  FireDAC.Comp.DataSet, frxClass, frxFDComponents, frxBarcode;

type
  TDM = class(TDataModule)
    Current_orderSource: TDataSource;
    Orders_itemSource: TDataSource;
    WaiterSource: TDataSource;
    PersonSource: TDataSource;
    CommentsSource: TDataSource;
    Orders_listSource: TDataSource;
    frxDialogControls1: TfrxDialogControls;
    trWrite: TFDTransaction;
    trReadWrite: TFDTransaction;
    trRead: TFDTransaction;
    FDB: TFDConnection;
    FDGUIxWaitCursor1: TFDGUIxWaitCursor;
    Check_Smena: TFDQuery;
    Check_Access: TFDQuery;
    Check_AccessBACCESS: TIntegerField;
    Current_order: TFDQuery;
    Current_orderINOMER: TIntegerField;
    Current_orderIDWAITER: TIntegerField;
    Current_orderIDKLINET: TIntegerField;
    Current_orderSTOL: TWideStringField;
    Current_orderUID: TWideStringField;
    Current_orderCHET: TWideStringField;
    Current_orderGUEST_CNT: TSmallintField;
    Current_orderMACCOUNT: TFloatField;
    Current_orderOBSLUZH: TCurrencyField;
    Current_orderISBALANS: TIntegerField;
    Current_orderOFFICIANT: TWideStringField;
    Current_orderTOTAL_SUM: TFloatField;
    Current_orderIDSTATION: TIntegerField;
    tbWaiter: TFDQuery;
    tbWaiterIDPERSON: TIntegerField;
    tbWaiterVCFIO: TWideStringField;
    tbPerson: TFDQuery;
    tbPersonID: TIntegerField;
    tbPersonFIO: TWideStringField;
    Comments: TFDQuery;
    CommentsID: TIntegerField;
    CommentsNAME: TWideStringField;
    All_Podrazd: TFDQuery;
    tbPrinters111: TFDQuery;
    tbPrinters111ID: TIntegerField;
    tbPrinters111NAME: TWideStringField;
    Orders_list1: TFDQuery;
    Orders_list1DT: TSQLTimeStampField;
    Orders_list1KOLVO: TFloatField;
    frxFDComponents1: TfrxFDComponents;
    All_PodrazdID: TWideMemoField;
    All_PodrazdPRINTERNAME: TWideStringField;
    All_PodrazdFILE_NAME: TWideStringField;
    adddoc: TFDCommand;
    MemData1: TFDQuery;
    MemData1UID: TStringField;
    MemData1KOLVO: TFloatField;
    MemData1CENA_SALES: TFloatField;
    MemData1PRODUCT: TIntegerField;
    MemData1OSTATOK: TFloatField;
    MemData1IDDOCUMENT: TStringField;
    MemData1COMMENTS: TStringField;
    MemData1M_OBSLUZH: TCurrencyField;
    MemData1M_BOBSLUZH: TSmallintField;
    MemData1M_BDISCOUNT: TSmallintField;
    MemData1DISCOUNT: TCurrencyField;
    MemData1NAME: TStringField;
    MemData1GROUP_NAME: TStringField;
    MemData1idpodrazd: TIntegerField;
    MemData1del: TIntegerField;
    MemData1summa: TCurrencyField;
    MemData1add_kolvo: TFloatField;
    MemData1cur_kolvo: TFloatField;
    Orders_item: TFDQuery;
    Orders_itemUID: TWideStringField;
    Orders_itemIDDOCUMENT: TWideStringField;
    Orders_itemPRODUCT: TIntegerField;
    Orders_itemKOLVO: TFloatField;
    Orders_itemSUM_NAKL: TFloatField;
    Orders_itemBDEL: TBooleanField;
    Orders_itemBONUS: TBooleanField;
    Orders_itemINO: TIntegerField;
    Orders_itemCENA_ZAKUP: TFloatField;
    Orders_itemCENA_SALES: TFloatField;
    Orders_itemPRODUCT_RAS: TBooleanField;
    Orders_itemMDISCOUNT: TFloatField;
    Orders_itemOSTATOK: TFloatField;
    Orders_itemDISCOUNT: TCurrencyField;
    Orders_itemMDISCOUNT_SUM: TFloatField;
    Orders_itemMARGIN: TFloatField;
    Orders_itemADDED_PEOPLE: TIntegerField;
    Orders_itemIDCLASSIF: TIntegerField;
    Orders_itemIDPODRAZD: TIntegerField;
    Orders_itemNAME: TWideStringField;
    Orders_itemGROUP_NAME: TWideStringField;
    Orders_itemM_BOBSLUZH: TBooleanField;
    Orders_itemM_OBSLUZH: TCurrencyField;
    Orders_itemM_BDISCOUNT: TBooleanField;
    Orders_itemadd: TStringField;
    Orders_itemcaption: TStringField;
    Orders_itemnodis: TFloatField;
    Orders_itemsumm: TCurrencyField;
    Orders_itemdisc: TCurrencyField;
    frxBarCodeObject1: TfrxBarCodeObject;
    FDCommand1: TFDCommand;
    Orders_itemCOMMENTS: TWideStringField;
    Orders_itemIDMENU: TIntegerField;
    procedure DBAfterConnect(Sender: TObject);
    procedure StartService(ServiceName: string);
    function ServiceGetStatus(sService: string): DWord;
    procedure Current_orderAfterOpen(DataSet: TDataSet);
    procedure DataModuleCreate(Sender: TObject);
    procedure Orders_itemCalcFields(DataSet: TDataSet);
    procedure Orders_itemAfterScroll(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DM: TDM;

implementation

uses MainUnit, LinkConnectionUnit;

{$R *.dfm}

procedure TDM.Current_orderAfterOpen(DataSet: TDataSet);
begin
Orders_item.Open;
fstMain.tbDiscounts.Close;
fstMain.tbDiscounts.Params[0].Value:=Current_orderIDKLINET.AsInteger;
fstMain.tbDiscounts.Open;
end;

procedure TDM.DataModuleCreate(Sender: TObject);
begin
SetConnectionDM(TDataModule(self), fdb);
end;

procedure TDM.DBAfterConnect(Sender: TObject);
var ini:TIniFile;
begin
ini:=TIniFile.create(ExtractFilePath(ParamStr(0))+'config.ini');
if ini.ReadInteger('DATABASE', 'NeedRep', 0) = 1 then
 begin
if ServiceGetStatus('aksau_rep') = SERVICE_STOPPED then
//   StartService('aksau_rep');
 end;
ini.Free;
end;

procedure TDM.Orders_itemAfterScroll(DataSet: TDataSet);
begin
 if fstMain.Panel9.Visible then
    fstMain.Memo1.Lines.Text := Orders_itemCOMMENTS.AsString;
end;

procedure TDM.Orders_itemCalcFields(DataSet: TDataSet);
begin
 Orders_itemcaption.AsString:=Format('%g',[Orders_itemKOLVO.AsFloat])+' x '+Format('%g',[Orders_itemCENA_SALES.AsFloat * (1 + (Orders_itemM_OBSLUZH.AsFloat * integer(Orders_itemM_BOBSLUZH.asboolean) - integer(Orders_itemM_BDISCOUNT.AsBoolean) * Orders_itemDISCOUNT.AsFloat)/100)])+' = '+Format('%g',[Orders_itemKOLVO.AsFloat*Orders_itemCENA_SALES.AsFloat*(1 + (Orders_itemM_OBSLUZH.AsFloat * Integer(Orders_itemM_BOBSLUZH.AsBoolean) - integer(Orders_itemM_BDISCOUNT.AsBoolean) * Orders_itemDISCOUNT.AsFloat)/100)]);
 Orders_itemsumm.AsCurrency:=(Orders_itemCENA_SALES.AsCurrency*(1 + (Orders_itemM_OBSLUZH.AsFloat * Integer(Orders_itemM_BOBSLUZH.AsBoolean) - integer(Orders_itemM_BDISCOUNT.AsBoolean) * Orders_itemDISCOUNT.AsFloat)/100))*Orders_itemKOLVO.AsFloat;
if Orders_itemDISCOUNT.AsFloat > 0 then
   Orders_itemdisc.AsCurrency:=Orders_itemdisc.AsCurrency;
 Orders_itemdisc.AsCurrency:=Orders_itemKOLVO.AsFloat*Orders_itemCENA_SALES.AsFloat* integer(Orders_itemM_BDISCOUNT.AsBoolean) * Orders_itemDISCOUNT.AsFloat/100;
 Orders_itemnoDis.AsCurrency:=Orders_itemKOLVO.AsFloat*Orders_itemCENA_SALES.AsFloat*integer(Orders_itemM_BOBSLUZH.AsBoolean) * Orders_itemM_OBSLUZH.AsFloat/100;

end;

function TDM.ServiceGetStatus(sService: string): DWord;
var
h_manager, h_svc: SC_Handle;
service_status: TServiceStatus;
hStat: DWord;
begin
 hStat := 1;
 h_manager := OpenSCManager(nil ,nil, SC_MANAGER_CONNECT);
 if h_manager > 0 then
  begin
    h_svc := OpenService(h_manager,PChar(sService), SERVICE_QUERY_STATUS);
   if h_svc > 0 then
    begin
     if(QueryServiceStatus(h_svc, service_status)) then
       hStat := service_status.dwCurrentState;
     CloseServiceHandle(h_svc);
    end;
    CloseServiceHandle(h_manager);
  end;
 Result := hStat;
end;

procedure TDM.StartService(ServiceName: string);
var
  schService,
    schSCManager: Dword;
  p: PChar;
begin
  p := nil;
  schSCManager := OpenSCManager(nil, nil, SC_MANAGER_ALL_ACCESS);
  if schSCManager = 0 then
    RaiseLastWin32Error;
  try
    schService := OpenService(schSCManager, PChar(ServiceName),
      SERVICE_ALL_ACCESS);
    if schService = 0 then
      RaiseLastWin32Error;
    try
      if not Winsvc.startService(schService, 0, p) then
        RaiseLastWin32Error;
    finally
      CloseServiceHandle(schService);
    end;
  finally
    CloseServiceHandle(schSCManager);
  end;
end;

end.