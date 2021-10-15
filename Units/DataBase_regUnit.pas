unit DataBase_regUnit;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxGraphics, cxButtonEdit,
  cxTextEdit, cxLabel, cxControls, cxContainer, cxEdit, cxMaskEdit,
  cxDropDownEdit, Menus, cxLookAndFeelPainters, StdCtrls, cxButtons,
  cxLookAndFeels;

type
  TfmDatabase_reg = class(TForm)
    cxComboBox1: TcxComboBox;
    cxLabel1: TcxLabel;
    cxTextEdit1: TcxTextEdit;
    cxLabel2: TcxLabel;
    cxButtonEdit1: TcxButtonEdit;
    cxLabel3: TcxLabel;
    cxButton1: TcxButton;
    cxButton2: TcxButton;
    OpenDialog1: TOpenDialog;
    procedure cxComboBox1Click(Sender: TObject);
    procedure cxButton2Click(Sender: TObject);
    procedure cxButton1Click(Sender: TObject);
    procedure cxButtonEdit1PropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
  private
    { Private declarations }
  public
    { Public declarations }
    DataBase:String;
  end;

var
  fmDatabase_reg: TfmDatabase_reg;

implementation

{$R *.dfm}

procedure TfmDatabase_reg.cxButton1Click(Sender: TObject);
begin
if cxButtonEdit1.Text = '' then exit;
if (cxComboBox1.ItemIndex=0) and (cxTextEdit1.Text = '') then exit;


   if cxComboBox1.ItemIndex = 0 then
      DataBase:='\\'+cxTextEdit1.Text+'\'+cxButtonEdit1.Text
   else DataBase:=cxButtonEdit1.Text;
   close;


end;

procedure TfmDatabase_reg.cxButton2Click(Sender: TObject);
begin
Close;
end;

procedure TfmDatabase_reg.cxButtonEdit1PropertiesButtonClick(Sender: TObject;
  AButtonIndex: Integer);
begin
 if OpenDialog1.Execute then
   cxButtonEdit1.Text:=OpenDialog1.FileName;
end;

procedure TfmDatabase_reg.cxComboBox1Click(Sender: TObject);
begin
 if cxComboBox1.ItemIndex = 1 then
  begin
    cxLabel2.Visible:=false;
    cxTextEdit1.Visible:=false;
  end
 else
  begin
   cxLabel2.Visible:=true;
   cxTextEdit1.Visible:=true;
  end;
 
end;

end.
