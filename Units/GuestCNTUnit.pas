unit GuestCNTUnit;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Menus, cxLookAndFeelPainters, StdCtrls, cxButtons, cxControls,
  cxContainer, cxEdit, cxTextEdit, cxMaskEdit, cxSpinEdit, cxDropDownEdit,
  cxCalc, cxGraphics, cxLookAndFeels;

type
  TGuestCNT = class(TForm)
    cxSpinEdit1: TcxSpinEdit;
    cxButton1: TcxButton;
    cxButton2: TcxButton;
    Label1: TLabel;
    procedure cxButton2Click(Sender: TObject);
    procedure cxButton1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  GuestCNT: TGuestCNT;

implementation

uses DMUnit, DigitUnit;

{$R *.dfm}

procedure TGuestCNT.cxButton1Click(Sender: TObject);
var uid, cnt:String;
begin
uid:=dm.Current_orderUID.AsString;
cnt:=dm.Current_orderGUEST_CNT.AsString;
//dm.Current_order.UpdateTransaction.StartTransaction;
dm.Current_order.Edit;
dm.Current_orderGUEST_CNT.AsInteger:=cxSpinEdit1.EditingValue;
dm.Current_order.post;
//dm.Current_order.UpdateTransaction.Commit;
//dm.addKassProtocol(5, dm.Current_orderUID.AsString, pass, cnt+' > '+cxSpinEdit1.EditingText);
Close;
end;

procedure TGuestCNT.cxButton2Click(Sender: TObject);
begin
Close;
end;

end.