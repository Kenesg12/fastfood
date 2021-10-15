unit DigitUnit;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Buttons, StdCtrls, AdvGlassButton, AdvPanel, ExtCtrls, Menus,
  cxLookAndFeelPainters, cxButtons, cxControls, cxContainer, cxEdit, cxTextEdit,
  cxGraphics, cxLookAndFeels, Registry;

type
  TDigitForm = class(TForm)
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
    cxButton12: TcxButton;
    cxButton13: TcxButton;
    cxButton14: TcxButton;
    Edit1: TEdit;
    procedure FormShow(Sender: TObject);
    procedure cxButton2Click(Sender: TObject);
    Procedure ButtonClick(Sender:TObject);
    procedure cxButton12Click(Sender: TObject);
    procedure cxButton13Click(Sender: TObject);
    procedure cxButton14Click(Sender: TObject);
    procedure Edit1KeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    st:Boolean;
  end;

var
  DigitForm: TDigitForm;
  AddStr:String;
implementation



{$R *.dfm}

uses MainUnit;

procedure TDigitForm.FormClose(Sender: TObject; var Action: TCloseAction);
begin
Addstr:=Edit1.Text;
end;

procedure TDigitForm.FormCreate(Sender: TObject);
var i:Integer;
begin
Edit1.Font.Color:=rgb(48, 63, 159);
  for I := 0 to self.ComponentCount-1 do
    begin
      if self.Components[i].ClassName = 'TcxButton' then
        begin
          TcxButton(self.Components[i]).Colors.Default:=rgb(48, 63, 159);
          TcxButton(self.Components[i]).Colors.DefaultText:=clWhite;
          TcxButton(self.Components[i]).Colors.HotText:=rgb(48, 63, 159);
        end;
    end;
end;

procedure TDigitForm.FormShow(Sender: TObject);
begin
 Edit1.Text:='';
end;

procedure TDigitForm.ButtonClick(Sender: TObject);
begin
 Edit1.Text:=Edit1.Text+TButton(Sender).Caption;
end;

procedure TDigitForm.cxButton12Click(Sender: TObject);
begin
Edit1.Text:='';
Close;
end;

procedure TDigitForm.cxButton13Click(Sender: TObject);
var Pas_value:String;
begin
 Pas_value:=Edit1.Text;
 Delete(Pas_value,Length(Pas_value),1);
 Edit1.Text:=Pas_value;
end;

procedure TDigitForm.cxButton14Click(Sender: TObject);
begin
 Close;
end;

procedure TDigitForm.cxButton2Click(Sender: TObject);
begin
if (Edit1.Text <> '') and (pos(Decimal,Edit1.Text)=0) then
    Edit1.Text := Edit1.Text + Decimal;
end;

procedure TDigitForm.Edit1KeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if Key=ord(#13) then
  cxButton14.Click;

end;

end.