unit ButonsUnit;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, cxLookAndFeels,
  cxLookAndFeelPainters, Vcl.Menus, Vcl.StdCtrls, cxButtons, iniFiles, frxClass,
  FireDAC.Comp.Client, Vcl.ExtCtrls, cxGraphics, dxGDIPlusClasses;

type
  TfmButtons = class(TForm)
    Panel1: TPanel;
    Image1: TImage;
    procedure createBtn(cap, act: String);
    procedure LoadPlugins(const AFolder, AFileExt: String);
    procedure LoadPlugin(const AFileName: String);
    procedure BtnClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure Image1Click(Sender: TObject);
  private
    { Private declarations }

  public
    { Public declarations }
    btnCnt: Smallint;
  end;

  TLoadDLLForm = function(ATApp: TApplication; S: TScreen; D: TFDConnection;
    id: Integer): THandle;

var
  fmButtons: TfmButtons;
  LoadDLLForm: TLoadDLLForm;

resourcestring
  rsPluginsLoadError = 'One or more plugins has failed to load:' +
    sLineBreak + '%s';

implementation

{$R *.dfm}

uses MainUnit, DigitUnit, DMUnit;

procedure TfmButtons.BtnClick(Sender: TObject);
var
  Hndl: THandle;
begin
  Hndl := LoadLibrary(PChar(TButton(Sender).Hint));
  if Hndl = 0 then
  begin
    ShowMessage('Ошибка загрузки dll "' + TButton(Sender).Hint + '"');
  end
  else
  begin
    @LoadDLLForm := GetProcAddress(Hndl, 'LoadDLLForm');
    if @LoadDLLForm <> nil then
    begin
      fmButtons.Hide;
      LoadDLLForm(Application, Screen, dm.FDB, pass);
      fmButtons.Close;
    end
    else
    begin
      FreeLibrary(Handle);
      ShowMessage('Could not load library');
    end;
  end;
end;

procedure TfmButtons.createBtn(cap, act: String);
var
  btn: TcxButton;
begin
  btn := TcxButton.Create(self);
  btn.Caption := cap;
  btn.Font.Size := 24;
  btn.Align := alBottom;
  btn.Height := 53;
  btn.AlignWithMargins:=true;
  btn.SpeedButtonOptions.CanBeFocused:=false;
  btn.SpeedButtonOptions.Flat:=true;
  btn.LookAndFeel.NativeStyle:=false;
  btn.Colors.DefaultText:=rgb(48, 63, 159);
  btn.Colors.HotText:=rgb(63, 81, 181);
  btn.Margins.Bottom:=5;
  btn.Margins.Top:=5;
  btn.Margins.Left:=10;
  btn.Margins.Right:=10;
  btn.Hint := act;
  btn.OnClick := BtnClick;
  btn.Parent := self;
  btnCnt := btnCnt + 1;
end;

procedure TfmButtons.FormCreate(Sender: TObject);
begin
  Panel1.Color:=rgb(48, 63, 159);
  self.Color:=rgb(48, 63, 159);
  btnCnt := 0;
  LoadPlugins(ExtractFilePath(ParamStr(0)) + 'Moduls', '.dll');
  fmButtons.Height := btnCnt * 63 + 40;
end;

procedure TfmButtons.Image1Click(Sender: TObject);
begin
 Close;
end;

procedure TfmButtons.LoadPlugin(const AFileName: String);
type
  TGetGroup = function: string;
  TGetName = function: string;
  TGetMDIName = function: string;
var
  Handle: THandle;
  GetGroup: TGetGroup;
  GetName: TGetName;
  GetMDIName: TGetMDIName;
begin
  Handle := LoadLibrary(PChar(AFileName));
  if Handle = 0 then
  begin
    ShowMessage('Ошибка загрузки dll "' + AFileName + '"');
  end
  else
    try
      @GetGroup := GetProcAddress(Handle, 'GetGroup');
      @GetName := GetProcAddress(Handle, 'GetName');
      @GetMDIName := GetProcAddress(Handle, 'GetMDIName');
      if (@GetGroup <> nil) and (@GetName <> nil) then
      begin
        createBtn(GetName, AFileName);
      end
      else
        ShowMessage('Could not load library');
    finally
      // FreeLibrary(Handle);
    end;
end;

procedure TfmButtons.LoadPlugins(const AFolder, AFileExt: String);
  function PluginOK(const APluginName, AFileExt: String): Boolean;
  begin
    Result := (AFileExt = '');
    if Result then
      Exit;
    Result := SameFileName(ExtractFileExt(APluginName), AFileExt);
  end;

var
  Path: String;
  SR: TSearchRec;
  Failures: TStringList;
  FailedPlugins: TStringList;
begin
  Path := IncludeTrailingPathDelimiter(AFolder);
  Failures := TStringList.Create;
  FailedPlugins := TStringList.Create;
  try
    if FindFirst(Path + '*.*', faNormal, SR) = 0 then
      try
        repeat
          if ((SR.Attr and faDirectory) = 0) and PluginOK(SR.Name, AFileExt)
          then
            try
              LoadPlugin(Path + SR.Name);
            except
              on E: Exception do
              begin
                FailedPlugins.Add(SR.Name);
                Failures.Add(Format('%s: %s', [SR.Name, E.Message]));
              end;
            end;
        until FindNext(SR) <> 0;
      finally
        FindClose(SR);
      end;
    if Failures.Count > 0 then
      ShowMessage(Format(rsPluginsLoadError, [Failures.Text]));
  finally
    FreeAndNil(FailedPlugins);
    FreeAndNil(Failures);
  end;
end;

end.
