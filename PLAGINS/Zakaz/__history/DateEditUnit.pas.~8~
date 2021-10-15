unit DateEditUnit;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxStyles, cxSchedulerStorage,
  cxSchedulerCustomControls, cxSchedulerDateNavigator, cxContainer, cxEdit,
  Vcl.StdCtrls, cxTextEdit, cxMaskEdit, cxDropDownEdit, cxLookupEdit,
  cxDBLookupEdit, cxDBLookupComboBox, cxDateNavigator, Vcl.WinXPickers, Data.DB,
  dxmdaset, Vcl.Menus, cxButtons, Vcl.WinXCalendars;

type
  TfmDateEdit = class(TForm)
    cxButton1: TcxButton;
    cxButton2: TcxButton;
    btn1: TcxButton;
    btn2: TcxButton;
    btn3: TcxButton;
    btn4: TcxButton;
    Label1: TLabel;
    ComboBox1: TComboBox;
    ComboBox2: TComboBox;
    procedure btn1Click(Sender: TObject);
    procedure ComboBox1Change(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    tm:TDateTime;
  end;

var
  fmDateEdit: TfmDateEdit;

implementation

{$R *.dfm}

procedure TfmDateEdit.btn1Click(Sender: TObject);
begin
Label1.Tag:=TcxButton(Sender).Tag;
Label1.Caption:=TcxButton(Sender).Caption+' '+ComboBox1.Text+':'+ComboBox2.Text;
tm:=TcxButton(Sender).Tag+(StrToInt(ComboBox1.Text)/24)+StrToInt(ComboBox2.Text)/1440;
end;

procedure TfmDateEdit.ComboBox1Change(Sender: TObject);
begin
 Label1.Caption:=FormatDateTime('dd.mm.yyyy', Label1.Tag)+' '+ComboBox1.Text+':'+ComboBox2.Text;
 tm:=Label1.Tag+(StrToInt(ComboBox1.Text)/24)+StrToInt(ComboBox2.Text)/1440;
end;

end.
