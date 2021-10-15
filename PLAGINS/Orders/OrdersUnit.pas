unit OrdersUnit;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Error, FireDAC.UI.Intf, FireDAC.Phys.Intf, FireDAC.Stan.Def,
  FireDAC.Stan.Pool, FireDAC.Stan.Async, FireDAC.Phys, FireDAC.VCLUI.Wait,
  Data.DB, FireDAC.Comp.Client, LinkConnectionUnit, FireDAC.Phys.FB,
  FireDAC.Phys.FBDef, FireDAC.Stan.Param, FireDAC.DatS, FireDAC.DApt.Intf,
  FireDAC.DApt, FireDAC.Comp.DataSet, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, dxBarBuiltInMenu, cxPC, System.Actions, Vcl.ActnList,
  Vcl.ButtonGroup, Vcl.ToolWin, Vcl.ActnMan, Vcl.ActnCtrls, Vcl.ActnMenus,
  cxStyles, cxCustomData, cxFilter, cxData, cxDataStorage, cxEdit, cxNavigator,
  cxDataControllerConditionalFormattingRulesManagerDialog, cxDBData,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, Vcl.ExtCtrls,
  cxGridLevel, cxClasses, cxGridCustomView, cxGrid, Vcl.Grids, Vcl.DBGrids,
  Vcl.Menus, Vcl.StdCtrls, cxButtons;

type
  TfmOrders = class(TForm)
    FDConnection1: TFDConnection;
    tbPages: TFDQuery;
    tbPagesDT: TDateField;
    cxPageControl1: TcxPageControl;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    cxGrid1: TcxGrid;
    Orders: TFDQuery;
    OrdersSource: TDataSource;
    Panel1: TPanel;
    cxGrid1DBTableView1Column1: TcxGridDBColumn;
    cxGrid1DBTableView1Column2: TcxGridDBColumn;
    cxGrid1DBTableView1Column3: TcxGridDBColumn;
    cxGrid1DBTableView1Column4: TcxGridDBColumn;
    OrdersKOD: TIntegerField;
    OrdersOPERATOR: TWideStringField;
    OrdersKLIENT: TWideStringField;
    OrdersDT: TSQLTimeStampField;
    OrdersTOTAL_SUM: TFloatField;
    OrdersPHONE: TWideStringField;
    OrdersDESCR: TWideStringField;
    OrdersADR: TWideStringField;
    OrdersDRIVERS: TWideStringField;
    OrdersDELIVERY: TIntegerField;
    OrdersGAME: TFloatField;
    OrdersMCASH: TFloatField;
    cxGrid1DBTableView1Column5: TcxGridDBColumn;
    cxGrid1DBTableView1Column6: TcxGridDBColumn;
    cxGrid1DBTableView2: TcxGridDBTableView;
    cxGrid1Level2: TcxGridLevel;
    cxGrid1DBTableView3: TcxGridDBTableView;
    cxGrid1DBTableView3Column1: TcxGridDBColumn;
    cxGrid1DBTableView3Column2: TcxGridDBColumn;
    cxGrid1DBTableView3Column3: TcxGridDBColumn;
    D_Lines: TFDQuery;
    LinesSource: TDataSource;
    OrdersUID: TWideStringField;
    D_LinesRN: TLargeintField;
    D_LinesID: TIntegerField;
    D_LinesNAME: TWideStringField;
    D_LinesKOLVO: TFloatField;
    D_LinesCENA_SALES: TFloatField;
    D_LinesSUM_NAKL: TFloatField;
    cxGrid1DBTableView3Column4: TcxGridDBColumn;
    cxGrid1DBTableView3Column5: TcxGridDBColumn;
    D_LinesIDDOCUMENT: TWideStringField;
    cxStyleRepository1: TcxStyleRepository;
    cxStyle1: TcxStyle;
    cxStyle3: TcxStyle;
    cxStyle2: TcxStyle;
    cxButton1: TcxButton;
    cxButton2: TcxButton;
    OrdersIDSMENY: TLargeintField;
    UpdDoc: TFDCommand;
    OrdersOPLATA: TFloatField;
    cxGrid1DBTableView1Column7: TcxGridDBColumn;
    procedure FormCreate(Sender: TObject);
    procedure Action1Execute(Sender: TObject);
    procedure cxPageControl1Change(Sender: TObject);
    procedure cxButton2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fmOrders: TfmOrders;
  FDB:TFDConnection;

implementation

{$R *.dfm}

procedure TfmOrders.Action1Execute(Sender: TObject);
begin
//
end;

procedure TfmOrders.cxButton2Click(Sender: TObject);
var i:Integer;
begin
 if OrdersOPLATA.AsCurrency >=0 then
  begin
    MessageDlg('���� ��� �������!', mtWarning, [mbOk], 0);
    exit;
  end;
  for i := 0 to Application.ComponentCount - 1 do
  begin
    if Application.Components[i].ClassName = 'TDM' then
     begin
       UpdDoc.Params[0].AsInteger:=ordersIDSMENY.AsInteger;
       UpdDoc.Params[1].AsString:=ordersUID.AsString;
       UpdDoc.Execute;
       TFDQuery(TDataModule(Application.Components[i]).FindComponent('Current_order')).Refresh;
       if TFDQuery(TDataModule(Application.Components[i]).FindComponent('Current_order')).Locate('UID', OrdersUID.AsString, []) then
        close;
     end;
  end;
end;

procedure TfmOrders.cxPageControl1Change(Sender: TObject);
begin
if cxPageControl1.ActivePage.Tag > 0 then
 begin
  Orders.Params[0].AsDate:=cxPageControl1.ActivePage.Tag;
  Orders.Refresh;
  d_lines.Params[0].AsDate:=cxPageControl1.ActivePage.Tag;
  d_lines.Refresh;
 end;
end;

procedure TfmOrders.FormCreate(Sender: TObject);
begin
SetConnection(TForm(Self), FDB);
tbPages.Active:=true;
Orders.Params[0].AsDate:=tbPagesDT.AsDateTime;
D_Lines.Params[0].AsDate:=tbPagesDT.AsDateTime;
Orders.Active:=true;
while tbPages.Eof <> true do
 begin
   with TcxTabSheet.Create(cxPageControl1) do
    begin
     PageControl:=cxPageControl1;
     Caption:=tbPagesDT.AsString;
     Tag:=trunc(tbPagesDT.AsDateTime);
    end;
   tbPages.Next;
 end;
 D_Lines.Active:=true;
end;

end.