object fmFormaOplaty: TfmFormaOplaty
  Left = 0
  Top = 0
  BorderStyle = bsNone
  Caption = 'fmFormaOplaty'
  ClientHeight = 657
  ClientWidth = 425
  Color = clSilver
  TransparentColor = True
  TransparentColorValue = clSilver
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poMainFormCenter
  OnClose = FormClose
  OnCreate = FormCreate
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Panel3: TPanel
    Left = 8
    Top = 8
    Width = 407
    Height = 630
    Caption = 'Panel3'
    Color = 14315561
    ParentBackground = False
    ShowCaption = False
    TabOrder = 0
    object Image1: TImage
      Left = 361
      Top = 0
      Width = 32
      Height = 64
      Center = True
      Picture.Data = {
        0B546478504E47496D61676589504E470D0A1A0A0000000D4948445200000040
        000000400806000000AA6971DE000000017352474200AECE1CE9000000046741
        4D410000B18F0BFC6105000000097048597300000EC300000EC301C76FA86400
        0001C449444154785EEDD9E16DC230140460E8048CC408ED066CD8113A523B00
        123D933B8956217949ECD846F749112524F6BBFB01541CCCCCCCCCCCCCCCD6BB
        DD6E171C9F7C5A04D63FA53D709C79AA0D0CFF8D23F9E2E9ACB0AEC24B1B255C
        AFD70F0CA3F092B504ACF73FBCD42DE14978C95202D679165EEA9430135E3695
        80FBE7C2CBFE2560D3C860C9AA12705F347C52E47D6756DA78D87FD6A20171FD
        A2F0384EBC757F1C20225402AEEB27BC709088C912F07A7FE18503458C9680F3
        FD86170E16F1A7043CEF3FBC70C0887B09787C9DF0C24123D275AF155E38702E
        7D85170EBE559FE18501D6EA3BBC30C852AF115E18286AB7F06F7C2C8A617E86
        6731C7E371D1F5CD4AE171443FEA1E85FE77681A42AC0D2FFD9680E1B78697FE
        4AC0D0B9C24B3F2560D8A5DFEDA39F0EED9780219786BF7FD4F1EF88764BC070
        ABC20BCF45B4570286DA145EF85A443B2560982CE185D744D42F0143640D2FBC
        36A25E09D8BC4878E13D11754AC0C6C5C20BEF8D28FAABF4286C7A1EF69EB43A
        BC708D29E9E7B9775EBE2F6C3C55C2E6F0C2B5C6D40B2F1860AC846CE1856B3E
        AA1F5E30C86309D9C30BD74EDA092F182895502CBC60FDF4E6DB567833333333
        3333EBCAE1F00B49AB11280D91AFF40000000049454E44AE426082}
      Proportional = True
      OnClick = Image1Click
    end
    object DBText1: TDBText
      Left = 205
      Top = 41
      Width = 77
      Height = 25
      AutoSize = True
      DataField = 'KOD'
      DataSource = OrdersSource
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -21
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label1: TLabel
      Left = 34
      Top = 42
      Width = 173
      Height = 24
      Caption = #1054#1087#1083#1072#1090#1072' '#1089#1095#1077#1090#1072'  '#8470' '
      Font.Charset = RUSSIAN_CHARSET
      Font.Color = clWhite
      Font.Height = -21
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
    end
    object DBText3: TDBText
      Left = 132
      Top = 530
      Width = 80
      Height = 24
      AutoSize = True
      DataField = 'SUMMA'
      DataSource = OrdersSource
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -19
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label2: TLabel
      Left = 35
      Top = 531
      Width = 95
      Height = 22
      Caption = #1053#1072' '#1089#1091#1084#1084#1091':'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -19
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label7: TLabel
      Left = 64
      Top = 570
      Width = 66
      Height = 22
      Caption = #1057#1076#1072#1095#1072':'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -19
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label8: TLabel
      Left = 134
      Top = 569
      Width = 12
      Height = 23
      Caption = '0'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -19
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Panel4: TPanel
      Left = 34
      Top = 97
      Width = 338
      Height = 52
      BevelOuter = bvNone
      Caption = 'Panel4'
      ShowCaption = False
      TabOrder = 0
      object cxCurrencyEdit5: TcxCurrencyEdit
        AlignWithMargins = True
        Left = 0
        Top = 0
        Margins.Left = 0
        Margins.Top = 0
        Margins.Right = 0
        Margins.Bottom = 0
        Align = alClient
        EditValue = 0.000000000000000000
        ParentFont = False
        Properties.DisplayFormat = ',0.##;-,0.##'
        Properties.OnChange = cxCurrencyEdit5PropertiesChange
        Style.Font.Charset = DEFAULT_CHARSET
        Style.Font.Color = 14315561
        Style.Font.Height = -21
        Style.Font.Name = 'Tahoma'
        Style.Font.Style = [fsBold]
        Style.LookAndFeel.NativeStyle = False
        Style.TextStyle = []
        Style.IsFontAssigned = True
        StyleDisabled.LookAndFeel.NativeStyle = False
        StyleFocused.LookAndFeel.NativeStyle = False
        StyleHot.LookAndFeel.NativeStyle = False
        TabOrder = 0
        OnClick = cxCurrencyEdit5Click
        Width = 338
      end
      object cxCurrencyEdit6: TcxCurrencyEdit
        AlignWithMargins = True
        Left = 8
        Top = 0
        Margins.Left = 8
        Margins.Top = 0
        Margins.Right = 0
        Margins.Bottom = 0
        Align = alClient
        EditValue = 0.000000000000000000
        ParentFont = False
        Properties.DisplayFormat = ',0.##;-,0.##'
        Style.Font.Charset = DEFAULT_CHARSET
        Style.Font.Color = 14315561
        Style.Font.Height = -21
        Style.Font.Name = 'Tahoma'
        Style.Font.Style = [fsBold]
        Style.LookAndFeel.Kind = lfUltraFlat
        Style.LookAndFeel.NativeStyle = False
        Style.TextStyle = []
        Style.TransparentBorder = True
        Style.IsFontAssigned = True
        StyleDisabled.LookAndFeel.Kind = lfUltraFlat
        StyleDisabled.LookAndFeel.NativeStyle = False
        StyleFocused.LookAndFeel.Kind = lfUltraFlat
        StyleFocused.LookAndFeel.NativeStyle = False
        StyleHot.LookAndFeel.Kind = lfUltraFlat
        StyleHot.LookAndFeel.NativeStyle = False
        TabOrder = 1
        Visible = False
        OnClick = cxCurrencyEdit6Click
        Width = 330
      end
    end
    object cxButton9: TcxButton
      Left = 35
      Top = 167
      Width = 218
      Height = 64
      Caption = #1041#1077#1079' '#1089#1076#1072#1095#1080
      Colors.Default = 547307312
      Colors.DefaultText = clWhite
      Colors.Normal = 547307312
      LookAndFeel.Kind = lfUltraFlat
      LookAndFeel.NativeStyle = False
      SpeedButtonOptions.CanBeFocused = False
      TabOrder = 1
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -24
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      OnClick = cxButton9Click
    end
    object cxButton10: TcxButton
      Left = 35
      Top = 249
      Width = 337
      Height = 50
      Caption = #1053#1072#1083#1080#1095#1085#1072#1103
      Colors.Default = clWhite
      Colors.DefaultText = 14315561
      LookAndFeel.Kind = lfFlat
      LookAndFeel.NativeStyle = False
      OptionsImage.Glyph.SourceDPI = 96
      OptionsImage.Glyph.Data = {
        89504E470D0A1A0A0000000D494844520000002B0000002B08020000006E3FE6
        97000000017352474200AECE1CE90000000467414D410000B18F0BFC61050000
        00097048597300000EC300000EC301C76FA86400000356494441545847ED975B
        48145118C77766F632BBEECD55D75B7643CDCAB24852A4222CC2A21B5246E453
        4405490F3ED9DBFAD043F4280A1511BD5418149992292504969A6D612679CFBC
        6C5E76DDDDD975672FB3D3B7CEAC493EEC9C51B1607F0C3BE73B673EBEFF9CF3
        9DEFCC622CCB4AD6149CBFAF1D5105510521A20AFE0505E22B52CF98B7F6BDC3
        CF84DCB7A62A8AF3B42A8598F7113F0796597FBD997ADEE184AB7DC0C34911C1
        7F9807415632690F347EA16A3F381930E6E919A36126C66DFE700702C879D0D6
        E7A969B27E1EA617C273E098242B55517E3CBE608B8AEF12069A82DE096FF9C3
        5F3FA67D388625E9A51949725D0CE1A2999F337EB8BC7E365E23BD7B2505A4F0
        0E02405040D1C1DB2F669EB53BE0E5F332546545865D1B4902C7C084ACAC6AB4
        D67DA46026CEE4EB6E142728A418EF1609843CB051CCF7712F37F7D78F1AF66C
        56427868C34FAA41565614A794E3306A1EF6B8E960E82161A065E2C29653C8FE
        768C534B4D678D15A7132EECD79332A1130020AC82DDCD543C9A7CD7E38636A4
        5B6589115E9D1B5A0E84C964E29B9190CB70171DEC18F0041816361E347C0196
        61588D92900B5EF5A5A0ED050879FFADED418B1DA4800919A056123A25BE2F4B
        55B8439DB3815493C80506B91E402A3477B9EA3A9D9D83F49CF74FC6C908AC30
        3BE65C812E3F7335EBC10210BBCFE26BEF9F83B580F230E364401986498C5AE9
        ADD2A4BDE94AFE39018854B09851ABBFA5DBF5A4D50952C0CC4E23AB2E2627EA
        A5DC684490976D296971B2D203B137CF27EA630830BB47698BDDCF0D09014181
        653670A7D956FDDAF6B2D30929C9F7CE337F28C8F3C2930F9F0E5C4308080A20
        FF1FB73AAA1BAD354DB65937C3F786F1F8586F58166425D710028202A38ED8B9
        9E84C6C8B4BFF2E9D4E06468D501A8C450AC1ACC545BBF074C8D12CF4C599D93
        09F8364A5FBD37617331E094A095420618D484DBCB4C3999294780F20435245E
        52A0BB7CD8003A789F4820EF85AE11BAEA95B5B5778EB71701514FE56AAF1519
        74AA504A0A44CC6E9CA102E621BAC1EC7CF3D5CD1D95C9B1D263BB3507B7C7A4
        C317034A7840CC6E84CF902339EA93B95A52CEBB6F5B475E3A140BE7356A7840
        8C8295457C4D1C9AF2D57FA2B8A36193517E628F46DCFF8515A8CACB64ED5721
        AA20AA204454C1DA2B90487E038DBC7B394C4A7BB40000000049454E44AE4260
        82}
      SpeedButtonOptions.CanBeFocused = False
      TabOrder = 2
      Font.Charset = DEFAULT_CHARSET
      Font.Color = 14315561
      Font.Height = -27
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      OnClick = cxButton10Click
    end
    object cxButton11: TcxButton
      Left = 35
      Top = 311
      Width = 337
      Height = 50
      Caption = #1041#1077#1079#1085#1072#1083#1080#1095#1085#1072#1103
      Colors.Default = clWhite
      Colors.DefaultText = 14315561
      LookAndFeel.Kind = lfFlat
      LookAndFeel.NativeStyle = False
      OptionsImage.Glyph.SourceDPI = 96
      OptionsImage.Glyph.Data = {
        89504E470D0A1A0A0000000D494844520000002B0000002B08020000006E3FE6
        97000000017352474200AECE1CE90000000467414D410000B18F0BFC61050000
        00097048597300000EC300000EC301C76FA8640000018649444154584763FCFF
        FF3FC3800226283D7060D405A32E008151178CBA0004465DC0C040B85EF8F2E3
        DFA7EFFFC8A83E58981945F9589818A15C5C80800B7EFFFD3F6BF7BB45073F7C
        FEF10F2A4434E06063CA71178A771060C6EB0A02B170FBF9AF65473E92613D10
        FCF8F56FC6EE77D79EFC84F27100026170EACEF7C4694FA40459D795C8418588
        062ECDF73F7FFFB73047C65499132A840D104E891017F27232918AF83899E1DA
        F100C2619030F50990A121CD0E11211E3C7DF71B18060BB265CC54F08501B12E
        201B1074C1688944642C0093559CBD20540813609AC0082A00161D7C4F4C3A00
        6AC7074EDEFEA65970CBA5E93E944F0A00EA02EA059A00E5E300A3E960D40520
        40C005E044CDF0E9FB5F60AA2615810D200C08E4C6CB8F7E244C7DFAFD173975
        2310002BE885D9D2BA721C503E3640200CB464D8733D85810641F9A400602992
        ED2E44B04221100640F0EF3FC3EB4F7FFEFC25A00C13303232F27132F170108A
        68822EA03518F479810E60D405A32E008151178CBA000406DA050C0C0047AA36
        5FDA1615870000000049454E44AE426082}
      SpeedButtonOptions.CanBeFocused = False
      TabOrder = 3
      Font.Charset = DEFAULT_CHARSET
      Font.Color = 14315561
      Font.Height = -27
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      OnClick = cxButton11Click
    end
    object cxButton12: TcxButton
      Left = 35
      Top = 373
      Width = 337
      Height = 50
      Caption = #1057#1084#1077#1096#1072#1085#1085#1072#1103
      Colors.Default = clWhite
      Colors.DefaultText = 14315561
      LookAndFeel.Kind = lfFlat
      LookAndFeel.NativeStyle = False
      OptionsImage.Glyph.SourceDPI = 96
      OptionsImage.Glyph.Data = {
        89504E470D0A1A0A0000000D494844520000002B0000002B08020000006E3FE6
        97000000017352474200AECE1CE90000000467414D410000B18F0BFC61050000
        00097048597300000EC300000EC301C76FA864000001D949444154584763FCFF
        FF3FC3800226283D7060D405A32E008151178CBA0004465D403B17FCFC436C75
        431317FCF9FBBF73C3EB4B0F7F40F97801155CF0F71F94010140EB4B17BF5871
        F4E3E6B39FA1427801155CD0B8FA15D05608FBC3D7BFC58B5EECB9FCC551873B
        DE410022881F50C1053B2F7E2E5FFAF2F3F77F2F3EFCE9DCF866DF952F468A9C
        D541A2D242AC50157801155A28E6557781D6FB18F3024DDA7BF98BBE02676BA4
        98942051D60301D55C0061DB6971D70613EB7B08A0725E606264E0E120CD4C2A
        BBE0F0F5AF752B1109931840651700732630250273E3DF7FC43A8284740034BD
        69F5AB1D17D173F9BA12393E4E66280706783881114214202D25FEFEFBBF61D5
        AB4D673E21974227DB947939C90F4BD274B23233368489D9697243F9D40024BB
        FDDBCF7FC2BC2C500E3500692EF8F8ED6FC3EA571B4F7F3252E2F436E265A646
        3A26C18C4FDFFF4EDCF676DFE5AF7AF21C9DD1E27521627E267C50394A003025
        1203FEFCFD5730FF9966C1ADB0BE47EFBEFC810802830428F8E5C75F08973C40
        545EF8F5E77FC786D7C00A1758E3D50489490A22D20130533031311099F1B002
        6273E399BBDF775EFC1261CDAF24CE46897D98800A351385801AA9993230EA82
        511780C0A80B465D0002A32E60600000F020256F3B4B42B70000000049454E44
        AE426082}
      SpeedButtonOptions.CanBeFocused = False
      TabOrder = 4
      Font.Charset = DEFAULT_CHARSET
      Font.Color = 14315561
      Font.Height = -27
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      OnClick = cxButton12Click
    end
    object cxButton13: TcxButton
      Left = 35
      Top = 457
      Width = 337
      Height = 50
      Caption = #1054#1087#1083#1072#1090#1072
      Colors.Default = 16756602
      Colors.DefaultText = clWhite
      LookAndFeel.Kind = lfFlat
      LookAndFeel.NativeStyle = False
      SpeedButtonOptions.CanBeFocused = False
      SpeedButtonOptions.Flat = True
      TabOrder = 5
      Font.Charset = DEFAULT_CHARSET
      Font.Color = 14315561
      Font.Height = -27
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      OnClick = cxButton13Click
    end
  end
  object OrdersSource: TDataSource
    DataSet = Orders
    Left = 328
    Top = 48
  end
  object PersonSource: TDataSource
    DataSet = tbPerson
    Left = 96
    Top = 48
  end
  object frxDBDataset1: TfrxDBDataset
    UserName = 'Service'
    CloseDataSource = False
    FieldAliases.Strings = (
      '-UID=UID'
      '-IDDOCUMENT=IDDOCUMENT'
      '-PRODUCT=PRODUCT'
      'KOLVO=FKOLVO'
      '-SUM_NAKL=SUM_NAKL'
      '-BDEL=BDEL'
      '-BONUS=BONUS'
      '-INO=INO'
      '-CENA_ZAKUP=CENA_ZAKUP'
      '-CENA_SALES=CENA_SALES'
      '-PRODUCT_RAS=PRODUCT_RAS'
      'IDLINKS=comment'
      '-DISCOUNT=DISCOUNT'
      '-OSTATOK=OSTATOK'
      '-MDISCOUNT=MDISCOUNT'
      '-MDISCOUNT_SUM=MDISCOUNT_SUM'
      '-MARGIN=MARGIN'
      '-ADDED_PEOPLE=ADDED_PEOPLE'
      '-add=add'
      '-caption=caption'
      '-nodis=nodis'
      '-summ=summ'
      '-disc=disc'
      '-IDCLASSIF=IDCLASSIF'
      '-IDPODRAZD=IDPODRAZD'
      '-M_BOBSLUZH=M_BOBSLUZH'
      '-M_OBSLUZH=M_OBSLUZH'
      '-M_BDISCOUNT=M_BDISCOUNT'
      'NAME=VCNAME'
      '-GROUP_NAME=GROUP_NAME')
    DataSet = DM.Orders_item
    BCDToCurrency = False
    Left = 24
    Top = 176
  end
  object frxReport1: TfrxReport
    Version = '6.9.12'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    PrintOptions.ShowDialog = False
    ReportOptions.CreateDate = 40010.395328229200000000
    ReportOptions.LastChange = 40335.737722430600000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'begin'
      ''
      'end.')
    OnReportPrint = 'frxReport1OnReportPrint'
    Left = 24
    Top = 224
    Datasets = <
      item
        DataSet = frxDBDataset1
        DataSetName = 'Service'
      end>
    Variables = <
      item
        Name = ' New Category1'
        Value = Null
      end
      item
        Name = 'station'
        Value = Null
      end
      item
        Name = 'Chet'
        Value = Null
      end
      item
        Name = 'Oficiant'
        Value = Null
      end
      item
        Name = 'Stol'
        Value = Null
      end
      item
        Name = 'Podrazd'
        Value = Null
      end>
    Style = <>
    object Data: TfrxDataPage
      Height = 1000.000000000000000000
      Width = 1000.000000000000000000
    end
    object Page1: TfrxReportPage
      PaperWidth = 60.000000000000000000
      PaperHeight = 297.000000000000000000
      PaperSize = 256
      LeftMargin = 3.000000000000000000
      RightMargin = 3.000000000000000000
      TopMargin = 5.000000000000000000
      BottomMargin = 10.000000000000000000
      Frame.Typ = []
      MirrorMode = []
      object ReportTitle1: TfrxReportTitle
        FillType = ftBrush
        FillGap.Top = 0
        FillGap.Left = 0
        FillGap.Bottom = 0
        FillGap.Right = 0
        Frame.Typ = []
        Height = 68.031540000000000000
        Top = 18.897650000000000000
        Width = 204.094620000000000000
        object Memo1: TfrxMemoView
          AllowVectorExport = True
          Left = 3.779530000000000000
          Top = 31.559060000000000000
          Width = 181.417440000000000000
          Height = 11.338590000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[<Date>]  [Time #dhh:mm]')
          ParentFont = False
        end
        object Line1: TfrxLineView
          AllowVectorExport = True
          Left = 3.779530000000000000
          Top = 6.000000000000000000
          Width = 192.756030000000000000
          Color = clBlack
          Frame.Style = fsDot
          Frame.Typ = [ftTop]
          Frame.Width = 3.000000000000000000
        end
        object Memo2: TfrxMemoView
          AllowVectorExport = True
          Left = 4.047310000000000000
          Top = 20.000000000000000000
          Width = 90.708720000000000000
          Height = 11.338590000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            #1089#1095#1077#1090' [Chet]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo3: TfrxMemoView
          AllowVectorExport = True
          Left = 3.779530000000000000
          Top = 43.456710000000000000
          Width = 94.488250000000000000
          Height = 15.118120000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[Oficiant]')
          ParentFont = False
        end
        object Memo4: TfrxMemoView
          AllowVectorExport = True
          Left = 110.047310000000000000
          Top = 42.795300000000000000
          Width = 79.370130000000000000
          Height = 15.118120000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[Podrazd]')
          ParentFont = False
        end
        object Memo5: TfrxMemoView
          AllowVectorExport = True
          Left = 73.252010000000000000
          Top = 20.897650000000000000
          Width = 117.165430000000000000
          Height = 22.677180000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -19
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[Stol]')
          ParentFont = False
          WordWrap = False
        end
        object Line2: TfrxLineView
          AllowVectorExport = True
          Left = 3.779530000000000000
          Top = 60.472480000000000000
          Width = 188.976500000000000000
          Color = clBlack
          Frame.Style = fsDot
          Frame.Typ = [ftTop]
          Frame.Width = 3.000000000000000000
        end
        object Memo8: TfrxMemoView
          AllowVectorExport = True
          Left = 3.779530000000000000
          Top = 4.779530000000000000
          Width = 185.196970000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            #1057#1090#1072#1085#1094#1080#1103':[station]')
          ParentFont = False
        end
      end
      object MasterData1: TfrxMasterData
        FillType = ftBrush
        FillGap.Top = 0
        FillGap.Left = 0
        FillGap.Bottom = 0
        FillGap.Right = 0
        Frame.Typ = []
        Height = 33.456710000000000000
        Top = 147.401670000000000000
        Width = 204.094620000000000000
        DataSet = frxDBDataset1
        DataSetName = 'Service'
        RowCount = 0
        object Memo6: TfrxMemoView
          AllowVectorExport = True
          Left = 7.779530000000000000
          Width = 154.960730000000000000
          Height = 15.118120000000000000
          DataSet = frxDBDataset1
          DataSetName = 'Service'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[Service."vcName"]')
          ParentFont = False
          WordBreak = True
          Wysiwyg = False
        end
        object Memo7: TfrxMemoView
          AllowVectorExport = True
          Left = 162.401670000000000000
          Width = 26.456710000000000000
          Height = 18.897650000000000000
          DataField = 'FKOLVO'
          DataSet = frxDBDataset1
          DataSetName = 'Service'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            '[Service."FKOLVO"]')
          ParentFont = False
        end
        object Memo9: TfrxMemoView
          AllowVectorExport = True
          Left = 7.000000000000000000
          Top = 14.598330000000000000
          Width = 194.488250000000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsItalic]
          Frame.Typ = []
          Memo.UTF8W = (
            '[<Service."comment">]')
          ParentFont = False
        end
      end
      object ReportSummary1: TfrxReportSummary
        FillType = ftBrush
        FillGap.Top = 0
        FillGap.Left = 0
        FillGap.Bottom = 0
        FillGap.Right = 0
        Frame.Typ = []
        Height = 49.133890000000000000
        Top = 241.889920000000000000
        Width = 204.094620000000000000
        object Line3: TfrxLineView
          AllowVectorExport = True
          Left = 3.779530000000000000
          Top = 35.779530000000000000
          Width = 185.196970000000000000
          Color = clBlack
          Frame.Style = fsDash
          Frame.Typ = [ftTop]
          Frame.Width = 2.000000000000000000
        end
      end
    end
  end
  object tbPerson: TFDQuery
    UpdateOptions.AssignedValues = [uvEDelete, uvEInsert, uvEUpdate]
    UpdateOptions.EnableDelete = False
    UpdateOptions.EnableInsert = False
    UpdateOptions.EnableUpdate = False
    SQL.Strings = (
      
        'select id, name||'#39' ('#39'||cast(coalesce(mAccount, 0) as numeric(9,2' +
        '))||'#39')'#39' as name'
      'from contragents'
      'where blocked = 0'
      'and id > 0'
      'and c_type = 1'
      'order by name')
    Left = 16
    Top = 80
    object tbPersonID: TIntegerField
      FieldName = 'ID'
      Origin = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object tbPersonNAME: TWideStringField
      AutoGenerateValue = arDefault
      FieldName = 'NAME'
      Origin = 'NAME'
      ProviderFlags = []
      ReadOnly = True
      Size = 165
    end
  end
  object Orders: TFDQuery
    ConnectionName = 'FDCONN'
    SQL.Strings = (
      
        'select UID, KOD, Total_Sum-coalesce(mcash,0) as Total_Sum, suppl' +
        'ier, total_sum as summa, coalesce(idadress_item,0) as deliv'
      'from Documents'
      'where uid = :uid')
    Left = 320
    Top = 96
    ParamData = <
      item
        Name = 'UID'
        DataType = ftFixedWideChar
        ParamType = ptInput
        Size = 36
      end>
    object OrdersUID: TWideStringField
      FieldName = 'UID'
      Origin = 'UID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      FixedChar = True
      Size = 36
    end
    object OrdersKOD: TIntegerField
      FieldName = 'KOD'
      Origin = 'KOD'
      Required = True
    end
    object OrdersTOTAL_SUM: TFloatField
      FieldName = 'TOTAL_SUM'
      Origin = 'TOTAL_SUM'
    end
    object OrdersSUPPLIER: TIntegerField
      FieldName = 'SUPPLIER'
      Origin = 'SUPPLIER'
    end
    object OrdersSUMMA: TFloatField
      FieldName = 'SUMMA'
      currency = True
    end
    object OrdersDELIV: TIntegerField
      FieldName = 'DELIV'
    end
  end
  object Orders_item: TFDQuery
    MasterSource = OrdersSource
    MasterFields = 'UID'
    ConnectionName = 'FDCONN'
    SQL.Strings = (
      'SELECT'
      '    UID as IDORDERS_ITEM,'
      
        '    (select name from d_product where id = D_LINES.product) as n' +
        'ame,'
      '    KOLVO as FKOLVO,'
      
        '    cena_sales + coalesce(margin, 0) - coalesce(MDISCOUNT, 0) as' +
        ' cena,'
      '    product as idMenu'
      'FROM'
      '    D_LINES'
      'where IDDOCUMENT = :UID'
      'and kolvo > 0')
    Left = 304
    Top = 200
    ParamData = <
      item
        Name = 'UID'
        DataType = ftFixedWideChar
        ParamType = ptInput
        Size = 74
        Value = Null
      end>
    object Orders_itemIDORDERS_ITEM: TWideStringField
      FieldName = 'IDORDERS_ITEM'
      Origin = 'UID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      FixedChar = True
      Size = 36
    end
    object Orders_itemNAME: TWideStringField
      AutoGenerateValue = arDefault
      FieldName = 'NAME'
      Origin = 'NAME'
      ProviderFlags = []
      ReadOnly = True
      Size = 150
    end
    object Orders_itemFKOLVO: TFloatField
      FieldName = 'FKOLVO'
      Origin = 'KOLVO'
    end
    object Orders_itemCENA: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'CENA'
      Origin = 'CENA'
      ProviderFlags = []
      ReadOnly = True
    end
    object Orders_itemIDMENU: TIntegerField
      FieldName = 'IDMENU'
      Origin = 'PRODUCT'
      Required = True
    end
  end
  object KKM_read: TFDQuery
    MasterSource = OrdersSource
    MasterFields = 'UID'
    ConnectionName = 'FDCONN'
    SQL.Strings = (
      'select p.name as usluga, l.kolvo as fkolvo, l.cena_sales,'
      
        '(l.mdiscount * l.kolvo) + coalesce(l.mdiscount_sum, 0) as discou' +
        'nt,'
      '(l.margin*l.kolvo) as margin, d.total_sum'
      'from D_lines l  inner join d_product p on(l.product=p.id)'
      'inner join documents d on(l.iddocument = d.uid)'
      'where l.iddocument=:UID'
      'and l.kolvo > 0')
    Left = 80
    Top = 112
    ParamData = <
      item
        Name = 'UID'
        DataType = ftFixedWideChar
        ParamType = ptInput
        Size = 36
      end>
    object KKM_readUSLUGA: TWideStringField
      FieldName = 'USLUGA'
      Origin = 'USLUGA'
      Size = 150
    end
    object KKM_readFKOLVO: TFloatField
      FieldName = 'FKOLVO'
      Origin = 'FKOLVO'
    end
    object KKM_readCENA_SALES: TFloatField
      FieldName = 'CENA_SALES'
      Origin = 'CENA_SALES'
    end
    object KKM_readDISCOUNT: TFloatField
      FieldName = 'DISCOUNT'
      Origin = 'DISCOUNT'
    end
    object KKM_readMARGIN: TFloatField
      FieldName = 'MARGIN'
      Origin = 'MARGIN'
    end
    object KKM_readTOTAL_SUM: TFloatField
      FieldName = 'TOTAL_SUM'
      Origin = 'TOTAL_SUM'
    end
  end
  object Spisanie: TFDCommand
    CommandText.Strings = (
      'execute block (ID d_uuid = :ID)'
      'as'
      'declare variable PROD integer;'
      'declare variable S_DT d_datetime;'
      'declare variable KOLVO d_product_count;'
      'declare variable OSNOV D_UUID;'
      'declare variable amount d_currency;'
      'declare variable pid integer;'
      'declare variable idprod integer;'
      'declare variable fkolvo d_product_count;'
      'declare variable camount d_currency;'
      'begin'
      '  for select L.PRODUCT, D.DT, L.KOLVO, L.UID, L.SUM_NAKL'
      '      from DOCUMENTS D'
      '      inner join D_LINES L on (D.UID = L.IDDOCUMENT)'
      '      inner join d_product p on(l.product = p.id)'
      '      where D.UID = :ID and'
      '            p.pid > 0 and'
      '            L.BDEL = 0 and'
      '            D.BDEL = 0'
      '      into :PROD, :S_DT, :KOLVO, :OSNOV, :AMOUNT'
      '  do'
      '  begin'
      ''
      '  if (exists(select *'
      '               from TBCALCK'
      '               where IDPRODUCT = :PROD and'
      '                     ACT = 1 and'
      '                     SPIS_ONSALES = 1)) then'
      '    begin'
      ''
      
        '        for select f.product, f.kolvo *:kolvo, f.cost_koof * :am' +
        'ount'
      '        from FULL_CALCK(:PROD, :S_DT)  F'
      '        where not f.subekt is null'
      '        into :idprod, :fkolvo, :camount do'
      '         begin'
      
        '           if (exists(select * from dimension where idproduct = ' +
        ':idprod)) then'
      
        '            select first 1 id from dimension where idproduct = :' +
        'idprod into :pid;'
      '        else'
      '          begin'
      '            insert into dimension (idproduct, idsubekt)'
      
        '            values(:IDPROD, (select first 1 id from tbSubekt whe' +
        're id > 0))'
      '            returning id into :pid;'
      '          end'
      ''
      '         insert into resources (pid, kolvo, idosnov, amount)'
      '          values(:pid, -:fkolvo, :osnov, :camount);'
      '         end'
      ''
      '    end'
      ''
      '    else'
      '    begin'
      ''
      
        '         if (exists(select * from dimension where idproduct = :P' +
        'ROD)) then'
      
        '            select first 1 id from dimension where idproduct = :' +
        'PROD into :pid;'
      '        else'
      '          begin'
      '            insert into dimension (idproduct, idsubekt)'
      
        '            values(:PROD, (select first 1 id from tbSubekt where' +
        ' id > 0))'
      '            returning id into :pid;'
      '          end'
      ''
      '         insert into resources (pid, kolvo, idosnov, amount)'
      '          values(:pid, -:kolvo, :osnov, :amount);'
      '   end'
      '  end'
      'end')
    ParamData = <
      item
        Name = 'ID'
        ParamType = ptInput
      end
      item
        Name = 'PROD'
        ParamType = ptInput
      end
      item
        Name = 'S_DT'
        ParamType = ptInput
      end
      item
        Name = 'KOLVO'
        ParamType = ptInput
      end
      item
        Name = 'OSNOV'
        ParamType = ptInput
      end
      item
        Name = 'AMOUNT'
        ParamType = ptInput
      end
      item
        Name = 'IDPROD'
        ParamType = ptInput
      end
      item
        Name = 'FKOLVO'
        ParamType = ptInput
      end
      item
        Name = 'CAMOUNT'
        ParamType = ptInput
      end
      item
        Name = 'PID'
        ParamType = ptInput
      end>
    Left = 256
    Top = 200
  end
  object Close_orders: TFDCommand
    CommandText.Strings = (
      'EXECUTE PROCEDURE CLOSE_ORDERS'
      '(:ORDERS)')
    ParamData = <
      item
        Name = 'ORDERS'
        ParamType = ptInput
      end>
    Left = 240
    Top = 120
  end
  object Oplata: TFDCommand
    CommandText.Strings = (
      'EXECUTE block (ORDERS D_UUID = :ORDERS,'
      '    PERSON integer = :PERSON,'
      '    FORMAOPLATY integer = :FORMAOPLATY,'
      '    CASH d_currency = :CASH)'
      ''
      'AS'
      'begin'
      '  update documents'
      '  set idFormaOplaty = :formaoplaty,'
      '  mcash = :cash'
      '  where uid = :orders;'
      ''
      
        '  if (not exists(select* from tbAccount where idOsnovanie=:order' +
        's and idOperacii_type=2)) then'
      '    begin'
      
        '     insert into tbaccount (idPerson, mKolvo, idOperacii_type, i' +
        'dOsnovanie, dt)'
      '     select supplier, -total_sum, 2, uid, closed_time'
      '     from documents where uid = :orders;'
      '    end'
      ''
      '   if (:formaoplaty = 100) then'
      '    begin'
      
        '      insert into tbaccount (idPerson, mKolvo, idOperacii_type, ' +
        'idOsnovanie, dt)'
      '      values(:person, :CASH, 101, :orders, current_timestamp);'
      
        '      insert into tbaccount (idPerson, mKolvo, idOperacii_type, ' +
        'idOsnovanie, dt)'
      
        '      values(:person, (select total_sum-:CASH from documents whe' +
        're uid = :orders), 102,'
      '      :orders, current_timestamp);'
      '    end'
      '   else'
      '    begin'
      
        '     insert into tbaccount (idPerson, mKolvo, idOperacii_type, i' +
        'dOsnovanie, dt)'
      
        '     values(:person, (select total_sum from documents where uid ' +
        '= :orders), 17,'
      '     :orders, current_timestamp);'
      '    end'
      ''
      'end'
      ''
      '')
    ParamData = <
      item
        Name = 'ORDERS'
        ParamType = ptInput
      end
      item
        Name = 'PERSON'
        ParamType = ptInput
      end
      item
        Name = 'FORMAOPLATY'
        ParamType = ptInput
      end
      item
        Name = 'CASH'
        ParamType = ptInput
      end>
    Left = 240
    Top = 336
  end
  object cxImageList1: TcxImageList
    SourceDPI = 96
    FormatVersion = 1
    Left = 196
    Top = 237
    Bitmap = {
      494C010102000800040010001000FFFFFFFF2110FFFFFFFFFFFFFFFF424D3600
      0000000000003600000028000000400000001000000001002000000000000010
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000001001B0A2C0189186D02D5219602FA219602FA186E02D60A2D018A0001
      001C000000000000000000000000000000000000000000000000000000000000
      00000000021907073A87131392D51A1AC9FA1A1AC9FA131393D608083B890000
      021B000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000413
      005A1F8D02F3229C02FF229C02FF229C02FF229C02FF229C02FF229C02FF1F8E
      02F40414005D0000000000000000000000000000000000000000000000000303
      18581919BCF21B1BD1FF1B1BD1FF1B1BD1FF1B1BD1FF1B1BD1FF1B1BD1FF1919
      BDF303031A5B0000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000000413005A229A
      02FE229C02FF229C02FF229C02FF229C02FF229C02FF229C02FF229C02FF229C
      02FF229A02FE0414005D00000000000000000000000000000000030318571B1B
      CEFD1B1BD1FF1B1BD1FF1B1BD1FF1B1BD1FF1B1BD1FF1B1BD1FF1B1BD1FF1B1B
      D1FF1B1BCFFE03031A5B00000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000001001A1F8C02F2229C
      02FF229C02FF229C02FF93CE83FF8BCB79FF229C02FF229C02FF229C02FF229C
      02FF229C02FF1F8E02F40001001C0000000000000000000001181818BBF11B1B
      D1FF8F8FE8FF8F8FE8FF1B1BD1FF1B1BD1FF1B1BD1FF1B1BD1FF8F8FE8FF8F8F
      E8FF1B1BD1FF1919BDF30000021B000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000092A0186229C02FF229C
      02FF229C02FF93CE83FFFFFFFFFFFEFFFEFF78C365FF229C02FF229C02FF229C
      02FF229C02FF229C02FF0A2D018A0000000000000000070738851B1BD1FF1B1B
      D1FF8C8CE8FFFFFFFFFF8F8FE8FF1B1BD1FF1B1BD1FF8F8FE8FFFFFFFFFF8C8C
      E8FF1B1BD1FF1B1BD1FF08083B89000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000176A01D2229C02FF229C
      02FF93CE83FFFFFFFFFFFFFFFFFFFFFFFFFFFCFEFCFF68BC52FF229C02FF229C
      02FF229C02FF229C02FF186E02D6000000000000000012128DD21B1BD1FF1B1B
      D1FF1B1BD1FF8C8CE8FFFFFFFFFF8F8FE8FF8F8FE8FFFFFFFFFF8C8CE8FF1B1B
      D1FF1B1BD1FF1B1BD1FF141493D6000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000209202F6229C02FF229C
      02FF8FCD7EFFFFFFFFFF8FCD7EFF9AD28CFFFFFFFFFFF8FCF7FF5AB542FF229C
      02FF229C02FF229C02FF219602FA00000000000000001919C3F61B1BD1FF1B1B
      D1FF1B1BD1FF1B1BD1FF8C8CE8FFFFFFFFFFFFFFFFFF8C8CE8FF1B1BD1FF1B1B
      D1FF1B1BD1FF1B1BD1FF1B1BC9FA000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000209202F6229C02FF229C
      02FF229C02FF57B43FFF229C02FF239D03FFB2DCA6FFFFFFFFFFF3FAF1FF4DAF
      33FF229C02FF229C02FF219602FA00000000000000001919C3F61B1BD1FF1B1B
      D1FF1B1BD1FF1B1BD1FF8F8FE8FFFFFFFFFFFFFFFFFF8F8FE8FF1B1BD1FF1B1B
      D1FF1B1BD1FF1B1BD1FF1B1BC9FA000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000176901D1229C02FF229C
      02FF229C02FF229C02FF229C02FF229C02FF279E08FFC6E5BDFFFFFFFFFFECF6
      E9FF42AA26FF229C02FF186D02D5000000000000000012128CD11B1BD1FF1B1B
      D1FF1B1BD1FF8F8FE8FFFFFFFFFF8C8CE8FF8C8CE8FFFFFFFFFF8F8FE8FF1B1B
      D1FF1B1BD1FF1B1BD1FF131392D5000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000092A0185229C02FF229C
      02FF229C02FF229C02FF229C02FF229C02FF229C02FF2FA210FFD7EDD1FFE3F2
      DFFF3DA821FF229C02FF0A2C01890000000000000000070737831B1BD1FF1B1B
      D1FF8F8FE8FFFFFFFFFF8C8CE8FF1B1BD1FF1B1BD1FF8C8CE8FFFFFFFFFF8F8F
      E8FF1B1BD1FF1B1BD1FF07073A87000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000100181F8B02F1229C
      02FF229C02FF229C02FF229C02FF229C02FF229C02FF229C02FF39A61CFF3DA8
      21FF229C02FF1F8D02F30001001B0000000000000000000001171818B9F01B1B
      D1FF8C8CE8FF8C8CE8FF1B1BD1FF1B1BD1FF1B1BD1FF1B1BD1FF8C8CE8FF8C8C
      E8FF1B1BD1FF1919BCF200000219000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000004120057229A
      02FD229C02FF229C02FF229C02FF229C02FF229C02FF229C02FF229C02FF229C
      02FF229A02FE0413005A00000000000000000000000000000000020216541B1B
      CDFD1B1BD1FF1B1BD1FF1B1BD1FF1B1BD1FF1B1BD1FF1B1BD1FF1B1BD1FF1B1B
      D1FF1B1BCEFD0303185800000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000411
      00561F8C02F1229C02FF229C02FF229C02FF229C02FF229C02FF229C02FF1F8C
      02F20413005A0000000000000000000000000000000000000000000000000202
      16541818B9F01B1BD1FF1B1BD1FF1B1BD1FF1B1BD1FF1B1BD1FF1B1BD1FF1919
      BBF1030318570000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000010018092A0185176901D1209202F6209202F6176A01D2092A01860001
      0019000000000000000000000000000000000000000000000000000000000000
      0000000001170707378312128CD11919C3F61919C3F612128DD2070738850000
      0118000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000424D3E000000000000003E000000
      2800000040000000100000000100010000000000800000000000000000000000
      000000000000000000000000FFFFFF0000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000}
    DesignInfo = 15532228
    ImageInfo = <
      item
        ImageClass = 'TdxSmartImage'
        Image.Data = {
          3C3F786D6C2076657273696F6E3D22312E302220656E636F64696E673D225554
          462D38223F3E0D0A3C7376672076657273696F6E3D22312E312220786D6C6E73
          3D22687474703A2F2F7777772E77332E6F72672F323030302F7376672220786D
          6C6E733A786C696E6B3D22687474703A2F2F7777772E77332E6F72672F313939
          392F786C696E6B2220783D223070782220793D22307078222076696577426F78
          3D2230203020333220333222207374796C653D22656E61626C652D6261636B67
          726F756E643A6E6577203020302033322033323B2220786D6C3A73706163653D
          227072657365727665223E262331333B262331303B2623393B2623393B3C7374
          796C6520747970653D22746578742F6373732220786D6C3A73706163653D2270
          72657365727665223E2E57686974657B66696C6C3A234646464646463B7D2623
          31333B262331303B2623393B2E477265656E7B66696C6C3A233033394332333B
          7D3C2F7374796C653E0D0A3C672069643D22D0A1D0BBD0BED0B95F31223E0D0A
          09093C672069643D22416464223E0D0A0909093C636972636C6520636C617373
          3D22477265656E222063783D223136222063793D2231362220723D223134222F
          3E0D0A09093C2F673E0D0A093C2F673E0D0A3C672069643D22D0A1D0BBD0BED0
          B95F32223E0D0A09093C706F6C79676F6E20636C6173733D2257686974652220
          706F696E74733D22382C31382031342C32342032352C31322032322C39203134
          2C31382031312C3135202623393B222F3E0D0A093C2F673E0D0A3C2F7376673E
          0D0A}
      end
      item
        ImageClass = 'TdxSmartImage'
        Image.Data = {
          3C3F786D6C2076657273696F6E3D22312E302220656E636F64696E673D225554
          462D38223F3E0D0A3C7376672076657273696F6E3D22312E31222069643D22D0
          A1D0BBD0BED0B95F312220786D6C6E733D22687474703A2F2F7777772E77332E
          6F72672F323030302F7376672220786D6C6E733A786C696E6B3D22687474703A
          2F2F7777772E77332E6F72672F313939392F786C696E6B2220783D2230707822
          20793D22307078222076696577426F783D223020302033322033322220737479
          6C653D22656E61626C652D6261636B67726F756E643A6E657720302030203332
          2033323B2220786D6C3A73706163653D227072657365727665223E262331333B
          262331303B2623393B2623393B3C7374796C6520747970653D22746578742F63
          73732220786D6C3A73706163653D227072657365727665223E2E57686974657B
          66696C6C3A234646464646463B7D262331333B262331303B2623393B2E526564
          7B66696C6C3A234431314331433B7D3C2F7374796C653E0D0A3C672069643D22
          D0A1D0BBD0BED0B95F32223E0D0A09093C7061746820636C6173733D22526564
          2220643D224D31362C3263372E372C302C31342C362E332C31342C313463302C
          372E372D362E332C31342D31342C313453322C32332E372C322C313643322C38
          2E332C382E332C322C31362C327A222F3E0D0A09093C7061746820636C617373
          3D2257686974652220643D224D32342C32326C2D322C326C2D362D366C2D362C
          366C2D322D326C362D366C2D362D366C322D326C362C366C362D366C322C326C
          2D362C364C32342C32327A222F3E0D0A093C2F673E0D0A3C2F7376673E0D0A}
      end>
  end
  object cxImageList2: TcxImageList
    SourceDPI = 96
    Height = 43
    Width = 36
    FormatVersion = 1
    DesignInfo = 22020232
    ImageInfo = <
      item
        ImageClass = 'TdxPNGImage'
        Image.Data = {
          89504E470D0A1A0A0000000D49484452000000240000002B08020000009F34BD
          1A000000017352474200AECE1CE90000000467414D410000B18F0BFC61050000
          00097048597300000EC300000EC301C76FA8640000023149444154584763FCFF
          FF3F03BD001394A60B18B58C2A60D432AA8051CBA80286AF652417C4F75EFD5A
          7FF2D3EFBFFF6D34B86D34B8A0A2C401927DF6FECBDFE5473F2E3AF8E1C4ED6F
          5021A2010996FDFBCF70EEDEF79D17BEFC05B218188EDEF876F1E10F88149180
          84609CBBEFFDFCFDEFDF7DF9CBC9C6C4C6C2F8F1DB5F264686F200D1583B01A8
          0A8200681931E0F6F39F7AC5B76D6BEF6D38F5F1CFDF7F40CF5D7AF8DDA2EAAE
          4ED1ED17EF7F43151102C406E3FD57BF8089424E84D5D7848F998911E8275D39
          8E281B7E5549B6AB4F880D4C6283F1FAD39F21BD8F58981867A44959AA919608
          E18058CB7EFEF95FB1E4C5CE8B5F207EF234E205A67B05513620977840420201
          06E3AA631F571CFBF8E0D56F609C010313685F8E8790B62C075405214072A606
          5A79F7C5AFB3F7BE6F3AF3F9F2A31FBC9C4CCB0B6495C4D8A0D2F801D032F2C0
          FB2F7F52673CD52CB83561EB1BA81021406C6A5C7FEA5350CFA315473F42F90C
          0C02DCCCA62A9C40C6D377BF21220401B196E9C87200B35AFFD637476E7CFBFB
          8F0118F4B79FFFDA78FA13504A45821DA286202036CEFEFCFDBFE6C4C7CE8D6F
          7EFEFECFC1C6C4CAC4F0F9C73F601AB1D6E0EA8F970096295075780109090458
          220293C692C3EFD79EF804641B287044DB0AD8697203D30854052140AC3A2000
          66296079E167C207F419906BA4C4E96DC44BBC4D404072D27FFEFECFEA131FBF
          FDFCA727CFE165C80B15250E906C1925808440A01C8C5A4615306A1955C0A865
          5401C3D53206060038EA9481A55BD19B0000000049454E44AE426082}
      end
      item
        ImageClass = 'TdxPNGImage'
        Image.Data = {
          89504E470D0A1A0A0000000D49484452000000240000002B08020000009F34BD
          1A000000017352474200AECE1CE90000000467414D410000B18F0BFC61050000
          00097048597300000EC300000EC301C76FA8640000012249444154584763FCFF
          FF3F03BD001394A60B18B58C2A60D432AA8051CBA802462DA30AC057EADF79F1
          6BDEBEF79F7FFC83F209014E36C6787B016D590E281F03E0B32CA4F7D1B5273F
          A11CE2809420EB9E3A05280703E0B34CBBE8B6BA14FBE42449289F104898FAF4
          E9BBDFD7FA55A17C0C802FCE80CEF8FCFD1F1F273391889793400AC0E733ADC2
          DB501629804C9F511D0C9AA40F0C466921D600333E281F1940743132823960F0
          FFFF86D39FF12710A01A9C40B3E05660F74328870800540CD402E56003C337CE
          068D65C0E807666A609C1389A0DA70037CA9D1AFF321B02C867288036A92EC1B
          CAE4A01C0C80CFB207AF7FCDDA4D42A9CFC7C9E46FCA67A6C209E563007C9651
          1D8C267DAA8051CBA802462DA30A18B58C2A808E9631300000CA05E8C9F68695
          320000000049454E44AE426082}
      end>
  end
end