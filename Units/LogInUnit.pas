unit LogInUnit;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, AdvPanel, DB, ADODB, Registry, CryptUnit, Menus,
  cxLookAndFeelPainters, cxButtons, FIBQuery, pFIBQuery;

type
  TLogIn = class(TForm)
    AdvPanel1: TAdvPanel;
    Label1: TLabel;
    Password: TEdit;
    Button1: TcxButton;
    Check_pass: TpFIBQuery;
    procedure PasswordKeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormShow(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure PasswordClick(Sender: TObject);
    procedure cxButton1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  LogIn: TLogIn; 
  pass:Integer;
  Familiya,Ima:Shortstring;
  Station:Integer;

implementation

uses DMUnit, DigitUnit;


{$R *.dfm}

procedure TLogIn.PasswordClick(Sender: TObject);
begin
 AddStr:='';
 //Application.CreateForm(TDigitForm, DigitForm);
 DigitForm.Edit1.PasswordChar:='*';
 DigitForm.ShowModal;
 Password.Text:=AddStr;
 Button1.Click;
end;

procedure TLogIn.PasswordKeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if Key=ord(#13) then
 Button1.Click;
end;

procedure TLogIn.FormShow(Sender: TObject);
begin
 Password.Text:='';
end;

Function ReadComputerName:string;
var
 i:DWORD;
 p:PChar;
begin
 i:=255;
 GetMem(p, i);
 GetComputerName(p, i);
 Result:=String(p);
 FreeMem(p);
end;




procedure TLogIn.cxButton1Click(Sender: TObject);
begin
    pass:=0;
    Check_pass.ExecWP([Encrypt(PassWord.Text)]);

      if not Check_pass.FieldByName('IDPERSON').IsNull then
        pass:=Check_pass.FieldByName('IDPERSON').AsInteger;

  close;
end;

procedure TLogIn.FormCreate(Sender: TObject);
var DBFile:String; reg:TRegistry;
begin
  reg:=TRegistry.Create;
  try
    reg.RootKey:=HKEY_CURRENT_USER;
     if reg.KeyExists('Software\AKSAU') then
      begin
        if reg.OpenKey('Software\AKSAU',true) then
           begin
             DBFile:=reg.ReadString('DB');
             Station:=reg.ReadInteger('Station');
             reg.CloseKey;
           end;
      end
     else
      begin
        if reg.OpenKey('Software\AKSAU',true) then
           begin
             reg.WriteString('DB',ExtractFilePath(Application.ExeName)+'DB.AKS');
             DBFile:=ExtractFilePath(Application.ExeName)+'DB.AKS';
             reg.WriteInteger('Station',1);
             Station:=1;
             reg.CloseKey;
           end;
      end;
   finally
    reg.Free;
   end;
 try
  dm.DB.DatabaseName:=DBFile;
  dm.DB.Connected:=true;
  dm.IBDatabase1.DatabaseName:=DBFile;
  dm.IBDatabase1.Connected:=true;
 except
  ShowMessage('�� ������� ������������ � �������!');
  Application.Terminate;
 end;

end;

end.
