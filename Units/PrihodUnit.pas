unit PrihodUnit;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, FIBQuery, pFIBQuery, DB, FIBDataSet, pFIBDataSet,
  pFIBStoredProc, cxStyles, cxCustomData, cxGraphics, cxFilter, cxData,
  cxDataStorage, cxEdit, cxDBData, cxGridLevel, cxGridCustomTableView,
  cxGridTableView, cxGridDBTableView, cxClasses, cxControls, cxGridCustomView,
  cxGrid, Menus, cxLookAndFeelPainters, cxContainer, cxLabel, cxDBLabel,
  cxButtons, cxPC, cxSplitter, ComCtrls, dxtree, dxdbtree;

type
  TfmPrihod = class(TForm)
    D_Product: TpFIBDataSet;
    Check_prod: TpFIBQuery;
    Documents: TpFIBDataSet;
    DocDataSource: TDataSource;
    add_document: TpFIBStoredProc;
    DocumentsUID: TFIBStringField;
    DocumentsKOD: TFIBIntegerField;
    DocumentsDT: TFIBDateTimeField;
    DocumentsSUPPLIER: TFIBIntegerField;
    DocumentsPOSTAVSCHIK: TFIBStringField;
    DocumentsNUM_NAKL: TFIBStringField;
    DocumentsTOTAL_SUM: TFIBFloatField;
    DocumentsIDPEOPLES: TFIBIntegerField;
    DocumentsSUBEKT: TFIBIntegerField;
    DocumentsSKLAD: TFIBStringField;
    DocumentsIDDOGOVOR: TFIBIntegerField;
    DocumentsACCEPT: TFIBBooleanField;
    DocumentsSUM_REAL: TFIBFloatField;
    DocumentsOTVET: TFIBStringField;
    DocumentsOPERACII_TYPE: TFIBIntegerField;
    DataSource1: TDataSource;
    D_LINES: TpFIBDataSet;
    D_LINESUID: TFIBStringField;
    D_LINESIDDOCUMENT: TFIBStringField;
    D_LINESPRODUCT: TFIBIntegerField;
    D_LINESSUM_NAKL: TFIBFloatField;
    D_LINESKOLVO: TFIBFloatField;
    D_LINESCENA_SALES: TFIBFloatField;
    D_LINESINO: TFIBIntegerField;
    D_ProductID: TFIBIntegerField;
    D_ProductNAME: TFIBStringField;
    D_ProductMCENA: TFIBFloatField;
    D_LINESNAME: TStringField;
    D_LINESCENA: TCurrencyField;
    Timer1: TTimer;
    cxPageControl1: TcxPageControl;
    cxTabSheet1: TcxTabSheet;
    cxTabSheet2: TcxTabSheet;
    Panel1: TPanel;
    Edit1: TEdit;
    cxButton1: TcxButton;
    cxButton2: TcxButton;
    cxDBLabel1: TcxDBLabel;
    cxDBLabel2: TcxDBLabel;
    cxButton3: TcxButton;
    cxGrid1: TcxGrid;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1DBTableView1Column1: TcxGridDBColumn;
    cxGrid1DBTableView1Column2: TcxGridDBColumn;
    cxGrid1DBTableView1Column3: TcxGridDBColumn;
    cxGrid1DBTableView1Column4: TcxGridDBColumn;
    cxGrid1DBTableView1Column5: TcxGridDBColumn;
    cxGrid1DBTableView1Column6: TcxGridDBColumn;
    cxGrid1Level1: TcxGridLevel;
    Accept: TpFIBStoredProc;
    cxSplitter1: TcxSplitter;
    Doc_list: TpFIBDataSet;
    DocListSource: TDataSource;
    Doc_listUID: TFIBStringField;
    Doc_listKOD: TFIBIntegerField;
    Doc_listSUPPLIER: TFIBIntegerField;
    Doc_listPOSTAVSCHIK: TFIBStringField;
    Doc_listNUM_NAKL: TFIBStringField;
    Doc_listTOTAL_SUM: TFIBFloatField;
    Doc_listIDPEOPLES: TFIBIntegerField;
    Doc_listSUBEKT: TFIBIntegerField;
    Doc_listOPERACII_TYPE: TFIBIntegerField;
    Doc_listSKLAD: TFIBStringField;
    Doc_listIDDOGOVOR: TFIBIntegerField;
    Doc_listACCEPT: TFIBBooleanField;
    Doc_listSUM_REAL: TFIBFloatField;
    Doc_listOTVET: TFIBStringField;
    cxGrid4: TcxGrid;
    cxGridDBTableView1: TcxGridDBTableView;
    cxGridDBColumn1: TcxGridDBColumn;
    cxGrid1DBTableView1Column9: TcxGridDBColumn;
    cxGridDBColumn2: TcxGridDBColumn;
    cxGridDBColumn3: TcxGridDBColumn;
    cxGrid1DBTableView1Column10: TcxGridDBColumn;
    cxGridDBColumn5: TcxGridDBColumn;
    cxGrid1DBTableView1Column8: TcxGridDBColumn;
    cxGridLevel1: TcxGridLevel;
    cxGrid2: TcxGrid;
    cxGridDBTableView2: TcxGridDBTableView;
    cxGridDBColumn6: TcxGridDBColumn;
    cxGridDBColumn7: TcxGridDBColumn;
    cxGridDBColumn8: TcxGridDBColumn;
    cxGridDBColumn9: TcxGridDBColumn;
    cxGridDBColumn10: TcxGridDBColumn;
    cxGridDBColumn11: TcxGridDBColumn;
    cxGridLevel2: TcxGridLevel;
    LinesList: TpFIBDataSet;
    FIBStringField1: TFIBStringField;
    FIBStringField2: TFIBStringField;
    FIBIntegerField1: TFIBIntegerField;
    FIBFloatField1: TFIBFloatField;
    FIBFloatField2: TFIBFloatField;
    FIBFloatField3: TFIBFloatField;
    FIBIntegerField2: TFIBIntegerField;
    StringField1: TStringField;
    CurrencyField1: TCurrencyField;
    LinesListSource: TDataSource;
    Doc_listDT: TFIBDateField;
    cxTabSheet3: TcxTabSheet;
    pr_group: TpFIBDataSet;
    pr_groupID: TFIBIntegerField;
    pr_groupPID: TFIBIntegerField;
    pr_groupNAME: TFIBStringField;
    pr_groupMARGIN: TFIBFloatField;
    pr_groupSUBEKT: TFIBIntegerField;
    groupSource: TDataSource;
    dxDBTreeView1: TdxDBTreeView;
    cxGrid3: TcxGrid;
    cxGridDBTableView3: TcxGridDBTableView;
    cxGridDBColumn4: TcxGridDBColumn;
    cxGrid1DBTableView1PRODUCT: TcxGridDBColumn;
    cxGrid1DBTableView1KOLVO: TcxGridDBColumn;
    cxGridLevel3: TcxGridLevel;
    cxSplitter2: TcxSplitter;
    StoreSource: TDataSource;
    tbStore: TpFIBDataSet;
    tbStorePRODUCT: TFIBStringField;
    tbStoreKOLVO: TFIBFloatField;
    tbStoreIDPRODUCT: TFIBIntegerField;
    tbStoreAGENT: TFIBStringField;
    tbStoreSUBEKT: TFIBIntegerField;
    cxGrid5: TcxGrid;
    cxGrid2DBTableView1: TcxGridDBTableView;
    cxGrid2DBTableView1Column1: TcxGridDBColumn;
    cxGrid2DBTableView1Column2: TcxGridDBColumn;
    cxGrid2DBTableView1Column3: TcxGridDBColumn;
    cxGrid2DBTableView1Column4: TcxGridDBColumn;
    cxGrid2DBTableView1Column5: TcxGridDBColumn;
    cxGrid2Level1: TcxGridLevel;
    cxSplitter3: TcxSplitter;
    tbStrore_itmes: TpFIBDataSet;
    tbStrore_itmesDT: TFIBDateTimeField;
    tbStrore_itmesTIP_OPER: TFIBStringField;
    tbStrore_itmesKOLVO: TFIBFloatField;
    tbStrore_itmesOSNOV: TFIBIntegerField;
    tbStrore_itmesKASSA: TFIBStringField;
    tbStrore_itmesSKLAD: TFIBStringField;
    tbStrore_itmesCENA: TCurrencyField;
    tbStrore_itmesREM: TFIBFloatField;
    DataSource2: TDataSource;
    procedure Edit1KeyPress(Sender: TObject; var Key: Char);
    procedure FormShow(Sender: TObject);
    function GetGUIDStr: string;
    procedure Timer1Timer(Sender: TObject);
    procedure cxButton1Click(Sender: TObject);
    procedure cxButton2Click(Sender: TObject);
    procedure cxButton3Click(Sender: TObject);
    procedure cxPageControl1Change(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fmPrihod: TfmPrihod;

implementation

uses MainUnit, DMUnit;

{$R *.dfm}

procedure TfmPrihod.cxButton1Click(Sender: TObject);
begin
if D_lines.RecordCount > 0 then
  begin
   D_lines.Edit;
   D_linesKolvo.AsInteger:= D_linesKolvo.AsInteger + 1;
   D_lines.Post;
  end;
end;

procedure TfmPrihod.cxButton2Click(Sender: TObject);
begin
if D_lines.RecordCount > 0 then
 begin
 if D_linesKOLVO.AsInteger > 1 then
  begin
   D_lines.Edit;
   D_linesKolvo.AsInteger:= D_linesKolvo.AsInteger - 1;
   D_lines.Post;
  end
else if D_linesKOLVO.AsInteger = 1 then
    D_lines.Delete;
 end;
end;

procedure TfmPrihod.cxButton3Click(Sender: TObject);
begin
if Documents.RecordCount > 0 then
  begin
Accept.ExecWP([DocumentsUID.AsString]);
Documents.FullRefresh;
if Doc_List.Active then  Doc_List.FullRefresh;
  end;

end;

procedure TfmPrihod.cxPageControl1Change(Sender: TObject);
begin
if cxPageControl1.ActivePageIndex = 1 then
 begin
   Doc_list.Active:=true;
 end
else if cxPageControl1.ActivePageIndex = 2 then
 pr_group.Active:=true;

end;

procedure TfmPrihod.Edit1KeyPress(Sender: TObject; var Key: Char);
begin
if Key = #13 then
 begin
   Check_prod.ExecWP([Edit1.Text]);
   if Check_prod.RecordCount > 0 then
    begin
      if Documents.RecordCount = 0 then
        begin
          Documents.Insert;
          DocumentsUID.AsString:=GetGUIDStr;
          DocumentsDT.AsDateTime:=now;
          DocumentsIDPEOPLES.AsInteger:=pass;
          DocumentsOPERACII_TYPE.AsInteger:=1;
          DocumentsACCEPT.AsInteger:=0;
          Documents.Post;
        end;

      if D_lines.Locate('PRODUCT', Check_prod.FN('PID').AsInteger, [])  then
       begin
        D_lines.Edit;
        D_LINESKOLVO.AsInteger:=D_LINESKOLVO.AsInteger + 1;
       end
      else
       begin
        D_lines.Append;
        D_linesUID.AsString:=GetGUIDStr;
        D_LINESIDDOCUMENT.AsString:=DocumentsUID.AsString;
        D_LINESPRODUCT.AsInteger:=Check_prod.FN('PID').AsInteger;
        D_LINESKOLVO.AsInteger:=1;
       end;

       D_LINES.Post;

    end;
   Edit1.Text:='';
 end;
end;

procedure TfmPrihod.FormShow(Sender: TObject);
begin
self.Top:=fmMain.Top;
self.Left:=fmMain.Left;
self.Height:=fmMain.Height;
self.Width:=fmMain.Width;
Documents.Active:=true;
end;

function TfmPrihod.GetGUIDStr: string;
  var GUID: TGUID;
begin
  Result:='';
  if CreateGuid(GUID) = 0 then
    Result := GUIDToString(GUID);

    Result:=StringReplace(Result,'{','',[]);
    Result:=StringReplace(Result,'}','',[]);
    Result:=StringReplace(Result,'-','',[rfReplaceAll]);
end;

procedure TfmPrihod.Timer1Timer(Sender: TObject);
begin
if (fmPrihod.Active) and (cxPageControl1.ActivePageIndex = 0) then

Edit1.SetFocus;
end;

end.