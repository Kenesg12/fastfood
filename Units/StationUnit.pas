unit StationUnit;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxGraphics, Menus, cxLookAndFeelPainters, StdCtrls, cxButtons,
  cxControls, cxContainer, cxEdit, cxTextEdit, cxMaskEdit, cxDropDownEdit,
  cxLookupEdit, cxDBLookupEdit, cxDBLookupComboBox, DB,
  IniFiles, cxLookAndFeels, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client;

type
  TfmStation = class(TForm)
    StationSource: TDataSource;
    cxLookupComboBox1: TcxLookupComboBox;
    cxButton1: TcxButton;
    tbStation: TFDQuery;
    tbStationID: TIntegerField;
    tbStationNAME: TWideStringField;
    procedure FormCreate(Sender: TObject);
    procedure cxButton1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fmStation: TfmStation;

implementation

uses DMUnit, MainUnit;

{$R *.dfm}

procedure TfmStation.cxButton1Click(Sender: TObject);
var ini:Tinifile;
begin
  if cxLookupCombobox1.EditingValue > 0 then
   begin
     ini:=TIniFile.Create(ExtractFilePath(ParamStr(0))+'config.ini');
     ini.WriteInteger('DATABASE', 'STATION', cxLookupCombobox1.EditingValue);
     ini.Free;
     Station:=cxLookupComboBox1.EditingValue;
     Close;
   end;
end;

procedure TfmStation.FormCreate(Sender: TObject);
begin
tbStation.Active:=true;
end;

end.
