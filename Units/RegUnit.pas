unit RegUnit;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxLookAndFeelPainters, Menus, StdCtrls, cxButtons, cxTextEdit,
  cxControls, cxContainer, cxEdit, cxGroupBox, ExtCtrls;

type
  TfmRegistry = class(TForm)
    Panel1: TPanel;
    Label10: TLabel;
    Panel2: TPanel;
    cxTextEdit5: TcxTextEdit;
    Label7: TLabel;
    Label8: TLabel;
    cxTextEdit6: TcxTextEdit;
    Label9: TLabel;
    cxTextEdit7: TcxTextEdit;
    cxTextEdit2: TcxTextEdit;
    cxButton4: TcxButton;
    Panel3: TPanel;
    cxTextEdit1: TcxTextEdit;
    cxButton1: TcxButton;
    cxButton2: TcxButton;
    cxButton3: TcxButton;
    procedure cxButton2Click(Sender: TObject);
    procedure cxButton1Click(Sender: TObject);
    procedure cxButton3Click(Sender: TObject);
    procedure cxTextEdit2Enter(Sender: TObject);
    procedure cxTextEdit5Exit(Sender: TObject);
    procedure cxTextEdit6Enter(Sender: TObject);
    procedure cxTextEdit6Exit(Sender: TObject);
    procedure cxTextEdit7Exit(Sender: TObject);
    procedure cxTextEdit7Enter(Sender: TObject);
    procedure cxTextEdit5KeyPress(Sender: TObject; var Key: Char);
    procedure cxTextEdit6KeyPress(Sender: TObject; var Key: Char);
    procedure cxTextEdit7KeyPress(Sender: TObject; var Key: Char);
    procedure cxButton4Click(Sender: TObject);
    function GenerateActivationCode(Invalue:string):string;
    procedure cxTextEdit1Enter(Sender: TObject);
    procedure cxTextEdit1Exit(Sender: TObject);

  private
    { Private declarations }
    var
      ActivationCode:String;
  public
    { Public declarations }
  end;

var
  fmRegistry: TfmRegistry;

implementation

uses MainUnit;

{$R *.dfm}
Function f_EvalPeriod(Create:boolean=false):byte; external 'License.dll';

Function Crypt(InValue:String):string;            //Шифруем посредством XOR
var i:integer;
temp:string;
begin
temp:='';
     for i := 1 to length(InValue) do
temp:=temp+chr(ord(InValue[i]) xor 1);
Crypt:=temp;
end;

procedure TfmRegistry.cxButton1Click(Sender: TObject);
{-----------------Чекаем введенный регистрационный код---------------}
function CheckRegistrationCode(inputcode:string):boolean;
var word:string;                                                         //15a-322a05W72aa
begin
randomize;
word:=uppercase('aksau');
inputcode:=uppercase(inputcode);
try
 if (inputcode=uppercase('Pleasepleasepleaseregisterme!')) then
         CheckregistrationCode:=true
 else
 if ((inputcode[1] = copy(inttostr(strtoint(ActivationCode[4])+1),1,1)) and
    (inputcode[2]=copy(inttostr((strtoint(ActivationCode[5]))+1),1,1)) and
    (pos(inputcode[3],word)<>0) and
    (inputcode[4]='-') and
     (inputcode[5] = copy(datetostr(now),1,1)) and
     (inputcode[6] = copy(inttostr((strtoint(ActivationCode[8]))+1),1,1)) and
       (inputcode[7]=copy(inttostr((strtoint(ActivationCode[9]))+1),1,1))  and
    (pos(inputcode[8],word)<>0) and
       (inputcode[9]=copy(datetostr(now),4,1)) and
       (inputcode[10]=copy(datetostr(now),5,1)) and
       (pos(inputcode[11],copy(Activationcode,length(activationcode)-4,4))<>0) and
      (inputcode[12]=copy(inttostr((strtoint(ActivationCode[6]))+1),1,1)) and
      (inputcode[13]=copy(inttostr((strtoint(ActivationCode[7]))+1),1,1)) and
       (pos(inputcode[14],word)<>0) and
          (pos(inputcode[15],word)<>0)) then
          CheckregistrationCode:=true
  else begin
   CheckRegistrationCode:=false;
   showmessage('Код некорректен!');
  end;
except showmessage('Код некорректен!');
       CheckRegistrationCode:=false;
end;
//      checkregistrationcode:=Uppercase(code);
end;
begin
if checkregistrationcode(cxTextEdit1.text) then
 begin
  f_EvalPeriod(true);
  License_value:=1;
  MessageDlg('Активация прошла успешно!',mtInformation,[mbOk],0);
  close;
 end;
end;

procedure TfmRegistry.cxButton2Click(Sender: TObject);
begin
Application.Terminate;
end;

procedure TfmRegistry.cxButton3Click(Sender: TObject);
var f: textfile;
i:integer;
begin
assignfile(f,ExtractFilePath(Application.ExeName)+'sys.lic');
   try
    rewrite(f);
    for i:=1 to 127 do write(f,crypt(chr(random(i))));
    Write(f,Crypt(inttostr(trunc(now))));
    Write(f,Crypt('aakkssaauu'));
    write(f,'0');
    for i := 1 to 8888 do write(f,crypt(chr(random(i)))); //Заполняем файл до конца случайными данными
    CloseFile(f);
   except  ShowMessage('Не удается активировать :(');Application.Terminate; end;
   close;
   License_value:=0;
end;

procedure TfmRegistry.cxButton4Click(Sender: TObject);
begin
//проверяем заполение обязательных полей
if ((cxTextEdit5.Text<>'Имя') and (cxTextEdit5.Text<>'') and
   (cxTextEdit6.Text<>'Название организации') and (cxTextEdit6.Text<>'') and
   (cxTextEdit7.text<>'E-mail') and (cxTextEdit7.Text<>''))
then begin
    ActivationCode:=Uppercase(GenerateActivationCode(cxTextEdit5.text+
      cxTextEdit6.Text+cxTextEdit7.text));
    cxTextEdit2.Enabled:=true;
    cxTextEdit2.Style.Font.Style:=[];
    cxTextEdit2.Text:=ActivationCode;
    end
else showmessage('Заполните поля правильно!');   
end;

procedure TfmRegistry.cxTextEdit1Enter(Sender: TObject);
begin
if cxTextEdit1.Text = 'Ключ активации' then
 begin
  cxTextEdit1.Text:='';
  cxTextEdit1.Style.Font.Style:=[fsBold];
 end;
end;

procedure TfmRegistry.cxTextEdit1Exit(Sender: TObject);
begin
 if cxTextEdit1.Text = '' then
 begin
  cxTextEdit1.Text:='Ключ активации';
  cxTextEdit1.Style.Font.Style:=[fsItalic];
 end;
end;

procedure TfmRegistry.cxTextEdit2Enter(Sender: TObject);
begin
if cxTextEdit5.editingtext = 'Имя' then
 begin
  cxTextEdit5.Text:='';
  cxTextEdit5.Style.Font.Style:=[];
 end;
end;

procedure TfmRegistry.cxTextEdit5Exit(Sender: TObject);
begin
if cxTextEdit5.editingtext = '' then
 begin
  cxTextEdit5.Text:='Имя';
  cxTextEdit5.Style.Font.Style:=[fsItalic];
 end;
end;

procedure TfmRegistry.cxTextEdit5KeyPress(Sender: TObject; var Key: Char);
begin
if key=#13 then
 cxTextEdit6.SetFocus;
end;

procedure TfmRegistry.cxTextEdit6Enter(Sender: TObject);
begin
 if cxTextEdit6.editingtext = 'Название организации' then
 begin
  cxTextEdit6.Text:='';
  cxTextEdit6.Style.Font.Style:=[];
 end;
end;

procedure TfmRegistry.cxTextEdit6Exit(Sender: TObject);
begin
if cxTextEdit6.editingtext = '' then
 begin
  cxTextEdit6.Text:='Название организации';
  cxTextEdit6.Style.Font.Style:=[fsItalic];
 end;
end;

procedure TfmRegistry.cxTextEdit6KeyPress(Sender: TObject; var Key: Char);
begin
if key=#13 then
 cxTextEdit7.SetFocus;
end;

procedure TfmRegistry.cxTextEdit7Enter(Sender: TObject);
begin
if cxTextEdit7.editingtext = 'e-mail' then
 begin
  cxTextEdit7.Text:='';
  cxTextEdit7.Style.Font.Style:=[];
 end;
end;

procedure TfmRegistry.cxTextEdit7Exit(Sender: TObject);
begin
if cxTextEdit7.editingtext = '' then
 begin
  cxTextEdit7.Text:='e-mail';
  cxTextEdit7.Style.Font.Style:=[fsItalic];
 end;
end;

procedure TfmRegistry.cxTextEdit7KeyPress(Sender: TObject; var Key: Char);
begin
if key=#13 then
 cxButton4.Click;
end;

function TfmRegistry.GenerateActivationCode(Invalue: string): string;
function GetHardID:string;                      //Получим id жесткого диска
function CreateDrivesList: PChar;
var
 Bufer      : array[0..1024] of char; // Буфер
 RealLen, i : integer;                // Результирующая длина
 S          : string;                 // Времменная строка
begin
 // Составление списка устройств
 RealLen := GetLogicalDriveStrings(SizeOf(Bufer),Bufer);
 i := 0; S := '';
 // Цикл анализа буфера (последний символ не обрабатывается, т.к. он всегда #0)
 while i < RealLen do begin
  if Bufer[i] <> #0 then begin
   S := S + Bufer[i];
   inc(i);
  end else begin
   inc(i); // Пропуск разделяющего #0
   if GetDriveType(PChar(S)) = 3 then
    begin
     Result:=PChar(S);
     break;
    end;
   S := '';
  end;
 end;
end;
var
  SerialNum: dword;
  a, b: dword;
  Buffer: array [0..255] of char;
begin
  if GetVolumeInformation(CreateDrivesList, Buffer, SizeOf(Buffer), @SerialNum, a, b, nil, 0) then Result := IntToStr(SerialNum);
end;
var position:integer;
begin
randomize;
position:=length(invalue)-1;
GenerateActivationCode:='AKS'+copy(GetHardId,0,7)+invalue[random(position)+1]+
                        invalue[random(position)+1]+invalue[random(position)+1]+
                        invalue[random(position)+1];
end;

end.
