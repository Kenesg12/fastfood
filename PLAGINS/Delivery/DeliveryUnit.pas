unit DeliveryUnit;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Error, FireDAC.UI.Intf, FireDAC.Phys.Intf, FireDAC.Stan.Def,
  FireDAC.Stan.Pool, FireDAC.Stan.Async, FireDAC.Phys, Data.DB,
  FireDAC.Comp.Client, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxContainer, cxEdit, cxStyles, cxCustomData, cxFilter,
  cxData, cxDataStorage, cxNavigator, cxDBData, dxBarBuiltInMenu, Vcl.Menus,
  FireDAC.Stan.Param, FireDAC.DatS, FireDAC.DApt.Intf, FireDAC.DApt,
  FireDAC.Phys.FB, FireDAC.Phys.FBDef, FireDAC.Comp.DataSet, cxClasses,
  Vcl.StdCtrls, cxButtons, Vcl.Touch.Keyboard, cxPC, cxTextEdit, cxGridLevel,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxGridCustomView,
  cxGrid, cxDBEdit, cxMaskEdit, cxDropDownEdit, cxLookupEdit, cxDBLookupEdit,
  cxDBLookupComboBox, iniFiles, FireDAC.VCLUI.Wait, FireDAC.Comp.UI,
  FireDAC.VCLUI.Error;

type
  TfmDelivery = class(TForm)
    TOWNSource: TDataSource;
    cxLookupComboBox1: TcxLookupComboBox;
    MKRSource: TDataSource;
    DomSource: TDataSource;
    cxLookupComboBox2: TcxLookupComboBox;
    cxLookupComboBox3: TcxLookupComboBox;
    KVSource: TDataSource;
    cxLookupComboBox4: TcxLookupComboBox;
    cxLookupComboBox5: TcxLookupComboBox;
    DataSource1: TDataSource;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    cxDBTextEdit1: TcxDBTextEdit;
    DataSource2: TDataSource;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    cxGrid1: TcxGrid;
    cxGrid1DBTableView1Column1: TcxGridDBColumn;
    cxTextEdit1: TcxTextEdit;
    Label6: TLabel;
    cxStyleRepository1: TcxStyleRepository;
    cxStyle1: TcxStyle;
    cxPageControl1: TcxPageControl;
    cxTabSheet1: TcxTabSheet;
    cxTabSheet2: TcxTabSheet;
    cxButton1: TcxButton;
    cxButton2: TcxButton;
    cxButton3: TcxButton;
    DriversSource: TDataSource;
    cxLookupComboBox6: TcxLookupComboBox;
    Label7: TLabel;
    TouchKeyboard1: TTouchKeyboard;
    MKR: TFDQuery;
    TOWN: TFDQuery;
    DOM: TFDQuery;
    KV: TFDQuery;
    Phone: TFDQuery;
    tbDrivers: TFDQuery;
    LOOKUPPHONE: TFDQuery;
    LOOKUPPHONEID: TIntegerField;
    findadr: TFDQuery;
    findadrIDPHONE: TIntegerField;
    findadrIDKV: TIntegerField;
    findadrIDDOM: TIntegerField;
    findadrIDMKR: TIntegerField;
    findadrIDTOWN: TIntegerField;
    TouchKeyboard2: TTouchKeyboard;
    TouchKeyboard3: TTouchKeyboard;
    cxButton4: TcxButton;
    TOWNID: TIntegerField;
    TOWNIDTYPE: TIntegerField;
    TOWNNAME: TWideStringField;
    DOMID: TIntegerField;
    DOMIDTYPE: TIntegerField;
    DOMNAME: TWideStringField;
    DOMPID: TIntegerField;
    KVID: TIntegerField;
    KVIDTYPE: TIntegerField;
    KVNAME: TWideStringField;
    KVPID: TIntegerField;
    LOOKUPPHONENAME: TWideStringField;
    tbDriversID: TIntegerField;
    tbDriversNAME: TWideStringField;
    PhoneID: TIntegerField;
    PhoneIDTYPE: TIntegerField;
    PhoneNAME: TWideStringField;
    PhonePID: TIntegerField;
    PhoneDESCR: TWideStringField;
    Doc: TFDQuery;
    DocUID: TWideStringField;
    DocIDADRESS_ITEM: TIntegerField;
    DocIDDRIVER: TIntegerField;
    FDGUIxWaitCursor1: TFDGUIxWaitCursor;
    FDGUIxErrorDialog1: TFDGUIxErrorDialog;
    MKRID: TIntegerField;
    MKRIDTYPE: TIntegerField;
    MKRNAME: TWideStringField;
    MKRPID: TIntegerField;
    procedure FormShow(Sender: TObject);
    procedure cxLookupComboBox1PropertiesValidate(Sender: TObject;
      var DisplayValue: Variant; var ErrorText: TCaption; var Error: Boolean);
    procedure cxLookupComboBox2PropertiesValidate(Sender: TObject;
      var DisplayValue: Variant; var ErrorText: TCaption; var Error: Boolean);
    procedure cxLookupComboBox3PropertiesValidate(Sender: TObject;
      var DisplayValue: Variant; var ErrorText: TCaption; var Error: Boolean);
    procedure cxLookupComboBox1Exit(Sender: TObject);
    procedure cxLookupComboBox2Exit(Sender: TObject);
    procedure cxLookupComboBox3Exit(Sender: TObject);
    procedure cxLookupComboBox4PropertiesValidate(Sender: TObject;
      var DisplayValue: Variant; var ErrorText: TCaption; var Error: Boolean);
    procedure cxLookupComboBox4Exit(Sender: TObject);
    procedure cxLookupComboBox5Exit(Sender: TObject);
    procedure cxLookupComboBox5PropertiesValidate(Sender: TObject;
      var DisplayValue: Variant; var ErrorText: TCaption; var Error: Boolean);
    procedure cxLookupComboBox1KeyPress(Sender: TObject; var Key: Char);
    procedure cxLookupComboBox2KeyPress(Sender: TObject; var Key: Char);
    procedure cxLookupComboBox3KeyPress(Sender: TObject; var Key: Char);
    procedure cxLookupComboBox4KeyPress(Sender: TObject; var Key: Char);
    procedure cxLookupComboBox5KeyPress(Sender: TObject; var Key: Char);
    procedure cxDBTextEdit1Exit(Sender: TObject);
    procedure cxTextEdit1PropertiesChange(Sender: TObject);
    procedure cxGrid1DBTableView1CellClick(Sender: TcxCustomGridTableView;
      ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
      AShift: TShiftState; var AHandled: Boolean);
    procedure cxTextEdit1Enter(Sender: TObject);
    procedure cxLookupComboBox1Enter(Sender: TObject);
    procedure cxButton1Click(Sender: TObject);
    procedure cxButton2Click(Sender: TObject);
    procedure cxLookupComboBox5PropertiesChange(Sender: TObject);
    procedure setPhone(idph:Integer);
    procedure cxLookupComboBox2PropertiesChange(Sender: TObject);
    procedure cxLookupComboBox1PropertiesChange(Sender: TObject);
    procedure cxLookupComboBox3PropertiesChange(Sender: TObject);
    procedure cxLookupComboBox4PropertiesChange(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure MKRAfterScroll(DataSet: TDataSet);
    procedure cxButton4Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
    town_name, mkr_name, dom_name, kv_name, ph_name:String;
  public
    { Public declarations }
  end;

var
  fmDelivery: TfmDelivery;
  FDB:TFDConnection;
  DUID:String;
implementation


{$R *.dfm}

uses LinkConnectionUnit;

procedure TfmDelivery.cxButton1Click(Sender: TObject);
begin
cxTextEdit1.EditValue:='';
Doc.edit;
DocIDADRESS_ITEM.asInteger:=cxLookupComboBox5.EditingValue;
DocIDDRIVER.AsInteger:=cxLookupComboBox6.EditingValue;
Doc.Post;

end;

procedure TfmDelivery.cxButton2Click(Sender: TObject);
begin
if cxLookupComboBox5.EditingValue = null then exit;
cxTextEdit1.EditValue:='';
Doc.Edit;
DocIDADRESS_ITEM.asInteger:=cxLookupComboBox5.EditingValue;
DocIDDRIVER.AsInteger:=cxLookupComboBox6.EditingValue;
Doc.Post;
end;

procedure TfmDelivery.cxButton4Click(Sender: TObject);
begin
Doc.Active:=true;
if TButton(Sender).Caption ='RU' then
   begin
     ActivateKeyboardLayout(LoadKeyboardLayout('00000419',0),0);
     TButton(Sender).Caption :='EN';
   end
else if TButton(Sender).Caption ='EN' then
      begin
        ActivateKeyboardLayout(LoadKeyboardLayout('00000409',0),0);// - Eng
        TButton(Sender).Caption :='RU';
      end;
end;

procedure TfmDelivery.cxDBTextEdit1Exit(Sender: TObject);
begin
if phone.Modified then phone.Post;

end;

procedure TfmDelivery.cxGrid1DBTableView1CellClick(
  Sender: TcxCustomGridTableView; ACellViewInfo: TcxGridTableDataCellViewInfo;
  AButton: TMouseButton; AShift: TShiftState; var AHandled: Boolean);
begin
setPhone(LOOKUPPHONEID.AsInteger);
end;

procedure TfmDelivery.cxLookupComboBox1Enter(Sender: TObject);
begin
cxPageControl1.ActivePageIndex:=0;
end;

procedure TfmDelivery.cxLookupComboBox1Exit(Sender: TObject);
begin
if (cxLookupComboBox1.EditingValue = null) and (town_name <> '') then
 begin
   town.Insert;
   TOWNIDTYPE.AsInteger:=1;
   TOWNNAME.AsString:=town_name;
   town.Post;
   cxLookupComboBox1.EditValue:=town.Lookup('NAME', town_name, 'ID');
 end;
 //AdvSmoothTouchKeyBoard1.Keys.Add
end;

procedure TfmDelivery.cxLookupComboBox1KeyPress(Sender: TObject; var Key: Char);
begin
if key = #13 then
 cxLookupComboBox2.SetFocus;
end;

procedure TfmDelivery.cxLookupComboBox1PropertiesChange(Sender: TObject);
begin
if cxLookupComboBox1.EditingText = '' then
 begin
 cxLookupComboBox2.Enabled:=false;
 cxLookupComboBox2.Text:='';
 end
else cxLookupComboBox2.Enabled:=true;
end;

procedure TfmDelivery.cxLookupComboBox1PropertiesValidate(Sender: TObject;
  var DisplayValue: Variant; var ErrorText: TCaption; var Error: Boolean);
begin
town_name:=cxLookupComboBox1.EditingText;
end;

procedure TfmDelivery.cxLookupComboBox2Exit(Sender: TObject);
begin
if (cxLookupComboBox2.EditingValue = null) and (mkr_name <> '') then
 begin
   mkr.Insert;
   mkrIDTYPE.AsInteger:=2;
   mkrNAME.AsString:=mkr_name;
   MKRPID.AsInteger:=cxLookupComboBox1.EditingValue;
   mkr.Post;
   cxLookupComboBox2.EditValue:=mkr.Lookup('NAME', mkr_name, 'ID');
   cxLookupComboBox3.SetFocus;
 end;
end;

procedure TfmDelivery.cxLookupComboBox2KeyPress(Sender: TObject; var Key: Char);
begin
if key = #13 then
 cxLookupComboBox3.SetFocus;
end;

procedure TfmDelivery.cxLookupComboBox2PropertiesChange(Sender: TObject);
begin
if cxLookupComboBox2.EditingText = '' then
 begin
 cxLookupComboBox3.Enabled:=false;
 cxLookupComboBox3.Text:='';
 end
else cxLookupComboBox3.Enabled:=true;

end;

procedure TfmDelivery.cxLookupComboBox2PropertiesValidate(Sender: TObject;
  var DisplayValue: Variant; var ErrorText: TCaption; var Error: Boolean);
begin
mkr_name:=cxLookupComboBox2.EditingText;
if mkr_name = '' then
 begin
   cxLookupComboBox3.Enabled:=false;
   cxLookupComboBox4.Enabled:=false;
   cxLookupComboBox5.Enabled:=false;
   cxDBTextEdit1.Enabled:=false;
 end;
end;

procedure TfmDelivery.cxLookupComboBox3Exit(Sender: TObject);
begin
if (cxLookupComboBox3.EditingValue = null) and (dom_name <> '') then
 begin
   dom.Insert;
   domIDTYPE.AsInteger:=3;
   domNAME.AsString:=dom_name;
   domPID.AsInteger:=cxLookupComboBox2.EditingValue;
   dom.Post;
   cxLookupComboBox3.EditValue:=domID.AsInteger;//  dom.Lookup('NAME', dom_name, 'ID');
   cxLookupComboBox4.SetFocus;
 end;
end;

procedure TfmDelivery.cxLookupComboBox3KeyPress(Sender: TObject; var Key: Char);
begin
if key = #13 then
 cxLookupComboBox4.SetFocus;
end;

procedure TfmDelivery.cxLookupComboBox3PropertiesChange(Sender: TObject);
begin
if cxLookupComboBox3.EditingText = '' then
 begin
 cxLookupComboBox4.Enabled:=false;
 cxLookupComboBox4.Text:='';
 end
else cxLookupComboBox4.Enabled:=true;
end;

procedure TfmDelivery.cxLookupComboBox3PropertiesValidate(Sender: TObject;
  var DisplayValue: Variant; var ErrorText: TCaption; var Error: Boolean);
begin
dom_name:=cxLookupComboBox3.EditingText;
if dom_name = '' then
 begin
   cxLookupComboBox4.Enabled:=false;
   cxLookupComboBox5.Enabled:=false;
   cxDBTextEdit1.Enabled:=false;
 end;
end;

procedure TfmDelivery.cxLookupComboBox4Exit(Sender: TObject);
begin
if (cxLookupComboBox4.EditingValue = null) and (KV_name <> '') then
 begin
   kv.Insert;
   kvIDTYPE.AsInteger:=4;
   kvNAME.AsString:=kv_name;
   kvPID.AsInteger:=cxLookupComboBox3.EditingValue;
   kv.Post;
   cxLookupComboBox4.EditValue:=kvID.AsInteger;// kv.Lookup('NAME', kv_name, 'ID');
   cxLookupComboBox5.SetFocus;
 end;
end;

procedure TfmDelivery.cxLookupComboBox4KeyPress(Sender: TObject; var Key: Char);
begin
if key = #13 then
 cxLookupComboBox5.SetFocus;
end;

procedure TfmDelivery.cxLookupComboBox4PropertiesChange(Sender: TObject);
begin
if cxLookupComboBox4.EditingText = '' then
 begin
 cxLookupComboBox5.Enabled:=false;
 cxLookupComboBox5.Text:='';
 end
else cxLookupComboBox5.Enabled:=true;
end;

procedure TfmDelivery.cxLookupComboBox4PropertiesValidate(Sender: TObject;
  var DisplayValue: Variant; var ErrorText: TCaption; var Error: Boolean);
begin
kv_name:=cxLookupComboBox4.EditingText;
if kv_name = '' then
 begin
   cxLookupComboBox5.Enabled:=false;
   cxDBTextEdit1.Enabled:=false;
 end;
end;

procedure TfmDelivery.cxLookupComboBox5Exit(Sender: TObject);
begin
if (cxLookupComboBox5.EditingValue = null) and (ph_name <> '') then
 begin
   phone.Insert;
   phoneIDTYPE.AsInteger:=5;
   phoneNAME.AsString:=ph_name;
   phonePID.AsInteger:=cxLookupComboBox4.EditingValue;
   phone.Post;
   cxLookupComboBox5.EditValue:=phoneID.AsInteger;// phone.Lookup('NAME', ph_name, 'ID');
   cxDBTextEdit1.SetFocus;
   LOOKUPPHONE.Active:=false;
   LOOKUPPHONE.Active:=true;
 end;
end;

procedure TfmDelivery.cxLookupComboBox5KeyPress(Sender: TObject; var Key: Char);
begin
if key = #13 then
 cxDBTextEdit1.SetFocus;
end;

procedure TfmDelivery.cxLookupComboBox5PropertiesChange(Sender: TObject);
begin
if cxLookupComboBox5.Text = '' then
  begin
   cxButton1.Enabled:= false;
   cxButton2.Enabled:= false;
   cxDBTextEdit1.Enabled:=false;
   cxDBTextEdit1.Text:='';
  end
else
 begin
   cxButton1.Enabled:= true;
   cxButton2.Enabled:= true;
   cxDBTextEdit1.Enabled:=true;
 end;

end;

procedure TfmDelivery.cxLookupComboBox5PropertiesValidate(Sender: TObject;
  var DisplayValue: Variant; var ErrorText: TCaption; var Error: Boolean);
begin
ph_name:=cxLookupComboBox5.EditingText;
if ph_name = '' then
   cxDBTextEdit1.Enabled:=false;

end;

procedure TfmDelivery.cxTextEdit1Enter(Sender: TObject);
begin
cxPageControl1.ActivePageIndex:=1;
end;

procedure TfmDelivery.cxTextEdit1PropertiesChange(Sender: TObject);
begin
if cxTextEdit1.EditingText = '' then
 begin
  cxTextEdit1.Text:='';
  LOOKUPPHONE.Filter:='';
  cxTextEdit1.SetFocus;
 end else

LOOKUPPHONE.Filter:= LOOKUPPHONENAME.FieldName+' LIKE ''%'+cxTextEdit1.EditingText+'%''';
end;

procedure TfmDelivery.FormClose(Sender: TObject; var Action: TCloseAction);
VAR INI:TINIFILE;
begin
ini:=TIniFile.Create(ExtractFilePath(Application.ExeName)+'config.ini');
ini.WriteInteger('DATABASE', 'IDDRIVER', cxLookupComboBox6.EditingValue);
ini.Free;

ActivateKeyboardLayout(LoadKeyboardLayout('00000409',0),0);// - Eng
//LoadKeyboardLayout('00000409',KLF_ACTIVATE); //- us
//LoadKeyboardLayout('00000409', 1);  //Возвращаем инглиш клавиатуру
end;

procedure TfmDelivery.FormCreate(Sender: TObject);
begin
SetConnection(TForm(Self), FDB);
Doc.params[0].AsString:=DUID;
Doc.Active:=true;
end;

procedure TfmDelivery.FormShow(Sender: TObject);
var ini:TIniFile;  hk:HKL;
begin
TOWN.Active:=true;
MKR.Active:=true;
Dom.Active:=true;
KV.Active:=true;
phone.Active:=true;
LOOKUPPHONE.Active:=TRUE;
tbDrivers.Active:=true;
ini:=TIniFile.Create(ExtractFilePath(Application.ExeName)+'config.ini');
cxLookupComboBox6.EditValue:=ini.ReadInteger('DATABASE', 'IDDRIVER', tbDriversID.AsInteger);
ini.Free;
setPhone(DocIDADRESS_ITEM.AsInteger);
if cxLookupComboBox1.Text = '' then
 begin
  cxLookupComboBox1.EditValue:=TownID.AsInteger;
  cxLookupComboBox3.Enabled:=false;
   cxLookupComboBox4.Enabled:=false;
   cxLookupComboBox5.Enabled:=false;
   cxDBTextEdit1.Enabled:=false;
 end;

ActivateKeyboardLayout(LoadKeyboardLayout('00000419',0),0);// - Rus
cxButton4.Caption:='EN';
//LoadKeyboardLayout('00000419',KLF_ACTIVATE); //- rus
//LoadKeyboardLayout('00000419', 1);  //Русская раскладка

end;

procedure TfmDelivery.MKRAfterScroll(DataSet: TDataSet);
begin
//
end;

procedure TfmDelivery.setPhone(idph: Integer);
begin
findadr.Active:=false;
findadr.ParamByName('ID').AsInteger:=idph;
findadr.Active:=true;
town.Locate('ID', findadrIDTOWN.AsInteger, []);
cxLookupComboBox1.EditValue:=findadrIDTOWN.AsInteger;
MKR.Locate('ID', findadrIDMKR.AsInteger, []);
cxLookupComboBox2.EditValue:=findadrIDMKR.AsInteger;
DOM.Locate('ID', findadrIDDOM.AsInteger, []);
cxLookupComboBox3.EditValue:=findadrIDDOM.AsInteger;
KV.Locate('ID', findadrIDKV.AsInteger, []);
cxLookupComboBox4.EditValue:=findadrIDKV.AsInteger;
PHONE.Locate('ID', findadrIDPHONE.AsInteger, []);
cxLookupComboBox5.EditValue:=findadrIDPHONE.AsInteger;
end;

end.
