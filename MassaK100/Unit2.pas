unit Unit2;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, MassaKDriver100_TLB,
  Vcl.ExtCtrls;

type
  TForm2 = class(TForm)
    Button1: TButton;
    Label1: TLabel;
    Timer1: TTimer;
    procedure Button1Click(Sender: TObject);
    function GetWeight: string;
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Timer1Timer(Sender: TObject);
  private
    { Private declarations }
    Scales: TScales;
  public
    { Public declarations }
  end;

var
  Form2: TForm2;
const Sdiv:array[0..4]of Integer = (10000,1000,100,10,1);

implementation

{$R *.dfm}

procedure TForm2.Button1Click(Sender: TObject);
begin

    Timer1.Enabled:=true;

end;

procedure TForm2.FormClose(Sender: TObject; var Action: TCloseAction);
var res:Integer;
begin
 res:=Scales.CloseConnection;
if res=0 then
      begin
       ShowMessage('отключение произведено успешно');
    end
   else
    begin
      ShowMessage('ошибка отключения');
    end;
end;

procedure TForm2.FormCreate(Sender: TObject);
var res:integer;
begin
  Scales:=TScales.Create(nil);
  Scales.Connection:='COM7';
  res:=Scales.OpenConnection;
  if res=0 then
   begin
    ShowMessage('подключение произведено успешнo');
   end
  else
   begin
    ShowMessage('ошибка подключения');
   end;
end;

function TForm2.GetWeight: string;
var res: integer;  s:string;
begin
 Result:='0.000';
 res:= Scales.ReadWeight;
 if res = 0 then
  begin
    if (Scales.Stable = 1) then
     begin
      if Scales.Weight > 0 then
       begin
       s:=FloatToStr(Scales.Weight/sdiv[Scales.Division]);
       try
        Result:=s;// Insert(s, Result, Length(s)-(4-Scales.Division));
       except

       end;
       end else Label1.Caption:='Ожидание веса...';
     end else Label1.Caption:='Масса не стабильна';

  end else Label1.Caption:='Ошибка получения массы';

end;

procedure TForm2.Timer1Timer(Sender: TObject);
var s:String;
begin
 s:=GetWeight;
 if s <> '0.000' then
  begin
    Label1.Caption:=s;
    Timer1.Enabled:=false;
  end;
end;

end.
