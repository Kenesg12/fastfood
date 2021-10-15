unit Edit_ItemsUnit;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Menus, cxLookAndFeelPainters, StdCtrls, cxButtons, cxGraphics,
  cxLookAndFeels, Vcl.ExtCtrls, iniFiles, MassaKDriver100_TLB,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, Data.DB, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client, cxControls, cxContainer, cxEdit, cxTextEdit, cxMaskEdit,
  cxButtonEdit, dxGDIPlusClasses;

type
  TfmEdit_items = class(TForm)
    cxButton1: TcxButton;
    cxButton2: TcxButton;
    cxButton3: TcxButton;
    cxButton4: TcxButton;
    cxButton5: TcxButton;
    cxButton6: TcxButton;
    cxButton7: TcxButton;
    cxButton8: TcxButton;
    cxButton9: TcxButton;
    cxButton10: TcxButton;
    cxButton11: TcxButton;
    cxButton14: TcxButton;
    cxButton15: TcxButton;
    Timer1: TTimer;
    checkWeght: TFDQuery;
    checkWeghtID: TIntegerField;
    checkWeghtMCENA: TCurrencyField;
    checkWeghtNAME: TWideStringField;
    Panel1: TPanel;
    Image1: TImage;
    Label1: TLabel;
    Edit1: TcxButtonEdit;
    procedure cxButton3Click(Sender: TObject);
    procedure cxButton14Click(Sender: TObject);
    procedure cxButton15Click(Sender: TObject);
    procedure cxButton2Click(Sender: TObject);
    function GetWeight: string;
    procedure FormShow(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure Image1Click(Sender: TObject);
    procedure cxButtonEdit1PropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
  private
    { Private declarations }
    Scales: TScales;
  public
    { Public declarations }
    ChgID:Integer;
  end;

var
  fmEdit_items: TfmEdit_items;
  const Sdiv:array[0..4]of Integer = (10000,1000,100,10,1);
implementation

uses MainUnit, DMUnit;

{$R *.dfm}

procedure TfmEdit_items.cxButton14Click(Sender: TObject);
begin
Edit1.Text:='';
DM.orders_item.Delete;

if DM.Orders_item.RecordCount > 0 then
fstMain.SendToDisplay('',
     'TOTAL: '+FormatCurr('# ##0.##', fstMain.cxGrid1DBTableView1.DataController.Summary.FooterSummaryValues[0])+'KZT')
else fstMain.SendToDisplay('','');
close;
end;

procedure TfmEdit_items.cxButton15Click(Sender: TObject);
begin
if Edit1.Text <> '' then
if StrToFloat(Edit1.Text) = 0 then
 Edit1.Text:='';
fmEdit_items.ModalResult:=mrOk;
end;

procedure TfmEdit_items.cxButton2Click(Sender: TObject);
begin
if Edit1.Text <> '' then
 begin
  if pos(Decimal, Edit1.Text) = 0 then
   Edit1.Text:=Edit1.Text+Decimal;
 end else
  Edit1.Text:='0.';
end;

procedure TfmEdit_items.cxButton3Click(Sender: TObject);
begin
Edit1.Text:=Edit1.Text+TButton(Sender).Caption;
end;

procedure TfmEdit_items.cxButtonEdit1PropertiesButtonClick(Sender: TObject;
  AButtonIndex: Integer);
 var Pas_value:String;
begin
 Pas_value:=Edit1.Text;
 Delete(Pas_value,Length(Pas_value),1);
 Edit1.Text:=Pas_value;
end;

procedure TfmEdit_items.FormClose(Sender: TObject; var Action: TCloseAction);
begin
Timer1.Enabled:=false;
end;

procedure TfmEdit_items.FormCreate(Sender: TObject);
var i:Integer;
begin
 fstMain.RoundCornerOf(Panel1);
 for I := 0 to self.ComponentCount-1 do
   if self.Components[i].ClassName = 'TcxButton' then
     if TcxButton(self.Components[i]).Name <> 'cxButton14' then
          fstMain.RoundCornerOf(TcxButton(self.Components[i]));

if WPort > 0 then
  begin
   Scales:=TScales.Create(nil);
   Scales.Connection:='COM'+WPort.ToString;
   if Scales.OpenConnection = 0 then
     Label1.Caption:='Весы подключены'
   else Label1.Caption:='Весы не подключены';
  end;
end;

procedure TfmEdit_items.FormDestroy(Sender: TObject);
begin
if label1.Caption = 'Весы подключены' then
  Scales.CloseConnection;
//if Scales <> nil then FreeAndNil(Scales);
end;

procedure TfmEdit_items.FormShow(Sender: TObject);
begin
ChgID:=0;
if WPort > 0 {label1.Caption = 'Весы подключены'} then
  Timer1.Enabled:=true;
end;

function TfmEdit_items.GetWeight: string;
var res: integer;  s:string;
begin
 Result:='0.000';
 s:=Label1.Caption;
 Label1.Caption:= 'Весы не подключены';
 res:= Scales.ReadWeight;
 Label1.Caption:= s;
 if res = 0 then
  begin
    if (Scales.Stable = 1) then
     begin
      if Scales.Weight > 0 then
       begin
       s:=FloatToStr(Scales.Weight/sdiv[Scales.Division]);
       try
        Result:=s;
        Label1.Caption:='';
       except

       end;
       end else Label1.Caption:='Ожидание веса...';
     end else Label1.Caption:='Масса не стабильна';

  end else Label1.Caption:='Ошибка получения массы';

end;

procedure TfmEdit_items.Image1Click(Sender: TObject);
begin
Edit1.Text:='';
fmEdit_items.ModalResult:=mrCancel;
end;

procedure TfmEdit_items.Timer1Timer(Sender: TObject);
var s:String;
begin
 if label1.Caption = 'Весы не подключены' then
   begin
     Timer1.Enabled:=false;
     exit;
   end;
  s:=GetWeight;
 if s <> '0.000' then
  begin
    if StrToFloat(s) > 0.005 then
      begin
       Edit1.Text:=s;
       Timer1.Enabled:=false;
       checkWeght.Close;
       checkWeght.Params[0].AsInteger:=dm.Orders_itemPRODUCT.AsInteger;
       checkWeght.Active:=true;
       if checkWeght.RecordCount > 0 then
         begin
          if MessageDlg('Заменить штучный товар на весовой?', mtConfirmation,[mbYes, mbNo], 0) = mrYes then
            ChgID:=checkWeghtID.AsInteger;
         end;
       cxButton15.Click;
      end;
  end;
end;

end.
