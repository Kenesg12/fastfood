unit CardUnit;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, DB, ADODB, Menus, cxLookAndFeelPainters, cxButtons,
  cxGraphics, cxLookAndFeels, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client;

type
  TfmCard = class(TForm)
    Edit1: TEdit;
    Label1: TLabel;
    cxButton1: TcxButton;
    tbCard: TFDQuery;
    tbCardIDPERSON: TIntegerField;
    procedure Edit1KeyPress(Sender: TObject; var Key: Char);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure cxButton1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fmCard: TfmCard;

implementation

uses DMUnit, MainUnit;

{$R *.dfm}

procedure TfmCard.cxButton1Click(Sender: TObject);
begin
Close;
end;

procedure TfmCard.Edit1KeyPress(Sender: TObject; var Key: Char);
begin
if Key=#13 then
 begin
  tbCard.close;
  tbCard.params[0].asstring:= Edit1.Text;
  tbCard.Open;
  if not tbCard.FieldByName('idPerson').IsNull then
   try
    dm.Current_order.Edit;
    dm.Current_orderIDKLINET.AsInteger:=tbCard.FieldByName('idPerson').AsInteger;
    dm.Current_order.Post;
   except
    on e:exception do
      begin
       Application.MessageBox(PWideChar(e.Message), '������!', 0);
       dm.Current_order.Cancel;
      end;
   end;
  close;
  Edit1.Text:='';
 end;


end;

procedure TfmCard.FormClose(Sender: TObject; var Action: TCloseAction);
begin
Edit1.Text:='';
end;

procedure TfmCard.FormShow(Sender: TObject);
begin
Edit1.SetFocus;
end;

end.