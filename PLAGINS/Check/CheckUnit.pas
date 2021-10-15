unit CheckUnit;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Error, FireDAC.UI.Intf, FireDAC.Phys.Intf, FireDAC.Stan.Def,
  FireDAC.Stan.Pool, FireDAC.Stan.Async, FireDAC.Phys, Data.DB,
  FireDAC.Comp.Client, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, dxBarBuiltInMenu, Vcl.Menus, cxContainer, cxEdit,
  FireDAC.Stan.Param, FireDAC.DatS, FireDAC.DApt.Intf, FireDAC.DApt, frxClass,
  frxDBSet, FireDAC.Comp.DataSet, Vcl.DBCtrls, Vcl.ExtCtrls, cxMaskEdit,
  cxDropDownEdit, cxLookupEdit, cxDBLookupEdit, cxDBLookupComboBox, cxTextEdit,
  cxCurrencyEdit, Vcl.StdCtrls, cxButtons, cxPC;

type
  TfmCheck = class(TForm)
    cxPageControl1: TcxPageControl;
    cxTabSheet1: TcxTabSheet;
    cxButton1: TcxButton;
    cxButton2: TcxButton;
    cxButton4: TcxButton;
    cxTabSheet2: TcxTabSheet;
    Label3: TLabel;
    Label4: TLabel;
    cxButton3: TcxButton;
    cxButton6: TcxButton;
    cxCurrencyEdit1: TcxCurrencyEdit;
    cxCurrencyEdit2: TcxCurrencyEdit;
    cxButton14: TcxButton;
    cxTabSheet3: TcxTabSheet;
    Label6: TLabel;
    Label5: TLabel;
    cxButton8: TcxButton;
    cxButton7: TcxButton;
    cxDBLookupComboBox1: TcxDBLookupComboBox;
    cxCurrencyEdit4: TcxCurrencyEdit;
    cxCurrencyEdit3: TcxCurrencyEdit;
    Panel1: TPanel;
    DBText1: TDBText;
    Label1: TLabel;
    Panel2: TPanel;
    Label2: TLabel;
    DBText2: TDBText;
    tbPerson: TFDQuery;
    tbPersonID: TIntegerField;
    tbPersonNAME: TWideStringField;
    PersonSource: TDataSource;
    KKM_read: TFDQuery;
    KKM_readUSLUGA: TWideStringField;
    KKM_readFKOLVO: TFloatField;
    KKM_readCENA_SALES: TFloatField;
    KKM_readDISCOUNT: TFloatField;
    KKM_readMARGIN: TFloatField;
    KKM_readTOTAL_SUM: TFloatField;
    frxDBDataset1: TfrxDBDataset;
    frxReport1: TfrxReport;
    Spisanie: TFDCommand;
    Orders_item: TFDQuery;
    Orders_itemIDORDERS_ITEM: TWideStringField;
    Orders_itemNAME: TWideStringField;
    Orders_itemFKOLVO: TFloatField;
    Orders_itemCENA: TFloatField;
    Orders_itemIDMENU: TIntegerField;
    Oplata: TFDCommand;
    Close_orders: TFDCommand;
    Orders: TFDQuery;
    OrdersUID: TWideStringField;
    OrdersKOD: TIntegerField;
    OrdersTOTAL_SUM: TFloatField;
    OrdersSUPPLIER: TIntegerField;
    OrdersSource: TDataSource;
    procedure cxButton1Click(Sender: TObject);
    procedure cxButton2Click(Sender: TObject);
    procedure cxButton4Click(Sender: TObject);
    procedure cxButton6Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fmCheck: TfmCheck;
  FDB:TFDConnection;
  IDUSER:Integer;

implementation

{$R *.dfm}

procedure TfmCheck.cxButton1Click(Sender: TObject);
begin
{if fastpay = 1 then
  OplataOrders(OrdersSUPPLIER.AsInteger,1, cxCurrencyEdit1.Value, true)
else }
cxPageControl1.ActivePageindex:=1;
end;

procedure TfmCheck.cxButton2Click(Sender: TObject);
begin
 {if fastpay = 1 then
 OplataOrders(OrdersSUPPLIER.AsInteger,1, cxCurrencyEdit1.Value, false)
else }
cxPageControl1.ActivePageindex:=2;
cxCurrencyEdit3.EditValue:=OrdersTOTAL_SUM.AsCurrency;
end;

procedure TfmCheck.cxButton4Click(Sender: TObject);
begin
Close;
end;

procedure TfmCheck.cxButton6Click(Sender: TObject);
begin
cxPageControl1.ActivePageIndex := 0;
end;

procedure TfmCheck.FormShow(Sender: TObject);
begin
cxPageControl1.ActivePageIndex := 0;
end;

end.