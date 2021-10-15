object fmCheck: TfmCheck
  Left = 0
  Top = 0
  BorderStyle = bsDialog
  Caption = 'fmCheck'
  ClientHeight = 314
  ClientWidth = 384
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object cxPageControl1: TcxPageControl
    Left = 0
    Top = 41
    Width = 384
    Height = 232
    Align = alClient
    TabOrder = 0
    Properties.ActivePage = cxTabSheet3
    Properties.CustomButtons.Buttons = <>
    Properties.HideTabs = True
    ClientRectBottom = 228
    ClientRectLeft = 4
    ClientRectRight = 380
    ClientRectTop = 4
    object cxTabSheet1: TcxTabSheet
      Caption = 'cxTabSheet1'
      ImageIndex = 0
      ExplicitLeft = 0
      ExplicitTop = 0
      ExplicitWidth = 0
      ExplicitHeight = 0
      object cxButton1: TcxButton
        Left = 108
        Top = 14
        Width = 161
        Height = 65
        Caption = #1053#1072#1083#1080#1095#1085#1099#1084#1080
        SpeedButtonOptions.CanBeFocused = False
        TabOrder = 0
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        OnClick = cxButton1Click
      end
      object cxButton2: TcxButton
        Left = 108
        Top = 103
        Width = 161
        Height = 49
        Caption = #1041#1077#1079' '#1095#1077#1082#1072
        SpeedButtonOptions.CanBeFocused = False
        TabOrder = 1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        OnClick = cxButton2Click
      end
      object cxButton4: TcxButton
        Left = 108
        Top = 169
        Width = 161
        Height = 34
        Caption = #1054#1090#1084#1077#1085#1072
        SpeedButtonOptions.CanBeFocused = False
        TabOrder = 2
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        OnClick = cxButton4Click
      end
    end
    object cxTabSheet2: TcxTabSheet
      Caption = 'cxTabSheet2'
      ImageIndex = 1
      ExplicitLeft = 0
      ExplicitTop = 0
      ExplicitWidth = 0
      ExplicitHeight = 0
      object Label3: TLabel
        Left = 73
        Top = 121
        Width = 75
        Height = 16
        Caption = #1055#1086#1083#1091#1095#1077#1085#1086
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label4: TLabel
        Left = 98
        Top = 165
        Width = 47
        Height = 16
        Caption = #1057#1076#1072#1095#1072
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object cxButton3: TcxButton
        Left = 43
        Top = 14
        Width = 153
        Height = 43
        Caption = #1053#1072#1083#1080#1095#1085#1099#1084#1080
        SpeedButtonOptions.CanBeFocused = False
        TabOrder = 0
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object cxButton6: TcxButton
        Left = 129
        Top = 61
        Width = 144
        Height = 43
        Caption = #1053#1072#1079#1072#1076
        SpeedButtonOptions.CanBeFocused = False
        TabOrder = 1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        OnClick = cxButton6Click
      end
      object cxCurrencyEdit1: TcxCurrencyEdit
        Left = 152
        Top = 112
        ParentFont = False
        Style.Font.Charset = DEFAULT_CHARSET
        Style.Font.Color = clWindowText
        Style.Font.Height = -16
        Style.Font.Name = 'MS Sans Serif'
        Style.Font.Style = [fsBold]
        Style.IsFontAssigned = True
        TabOrder = 2
        Width = 161
      end
      object cxCurrencyEdit2: TcxCurrencyEdit
        Left = 152
        Top = 155
        ParentFont = False
        Properties.ReadOnly = True
        Style.Font.Charset = DEFAULT_CHARSET
        Style.Font.Color = clWindowText
        Style.Font.Height = -16
        Style.Font.Name = 'MS Sans Serif'
        Style.Font.Style = [fsBold]
        Style.IsFontAssigned = True
        TabOrder = 3
        Width = 161
      end
      object cxButton14: TcxButton
        Left = 210
        Top = 14
        Width = 153
        Height = 42
        Caption = #1041#1077#1079#1085#1072#1083#1080#1095#1085#1099#1081
        SpeedButtonOptions.CanBeFocused = False
        TabOrder = 4
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
    end
    object cxTabSheet3: TcxTabSheet
      Caption = 'cxTabSheet3'
      ImageIndex = 2
      ExplicitLeft = 0
      ExplicitTop = 0
      ExplicitWidth = 0
      ExplicitHeight = 0
      object Label6: TLabel
        Left = 66
        Top = 122
        Width = 67
        Height = 26
        Caption = #1055#1086#1083#1091#1095#1077#1085#1086#13#10#1085#1072#1083#1080#1095#1085#1099#1084#1080
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label5: TLabel
        Left = 66
        Top = 167
        Width = 83
        Height = 26
        Caption = #1048#1079' '#1085#1080#1093' '#1074' '#1076#1086#1083#1075#13#10#1082#1083#1080#1077#1085#1090#1091
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object cxButton8: TcxButton
        Left = 43
        Top = 14
        Width = 153
        Height = 49
        Caption = #1054#1087#1083#1072#1095#1077#1085#1086
        SpeedButtonOptions.CanBeFocused = False
        TabOrder = 0
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object cxButton7: TcxButton
        Left = 224
        Top = 14
        Width = 89
        Height = 49
        Caption = #1053#1072#1079#1072#1076
        SpeedButtonOptions.CanBeFocused = False
        TabOrder = 1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object cxDBLookupComboBox1: TcxDBLookupComboBox
        Left = 56
        Top = 76
        DataBinding.DataField = 'SUPPLIER'
        ParentFont = False
        Properties.DropDownListStyle = lsFixedList
        Properties.DropDownRows = 25
        Properties.DropDownSizeable = True
        Properties.KeyFieldNames = 'ID'
        Properties.ListColumns = <
          item
            FieldName = 'NAME'
          end>
        Properties.ListOptions.AnsiSort = True
        Properties.ListOptions.CaseInsensitive = True
        Properties.ListOptions.GridLines = glNone
        Properties.ListOptions.ShowHeader = False
        Style.Font.Charset = DEFAULT_CHARSET
        Style.Font.Color = clWindowText
        Style.Font.Height = -16
        Style.Font.Name = 'MS Sans Serif'
        Style.Font.Style = []
        Style.IsFontAssigned = True
        TabOrder = 2
        Width = 257
      end
      object cxCurrencyEdit4: TcxCurrencyEdit
        Left = 152
        Top = 120
        ParentFont = False
        Style.Font.Charset = DEFAULT_CHARSET
        Style.Font.Color = clWindowText
        Style.Font.Height = -16
        Style.Font.Name = 'MS Sans Serif'
        Style.Font.Style = [fsBold]
        Style.IsFontAssigned = True
        TabOrder = 3
        Width = 161
      end
      object cxCurrencyEdit3: TcxCurrencyEdit
        Left = 152
        Top = 165
        ParentFont = False
        Properties.ReadOnly = True
        Style.Font.Charset = DEFAULT_CHARSET
        Style.Font.Color = clWindowText
        Style.Font.Height = -16
        Style.Font.Name = 'MS Sans Serif'
        Style.Font.Style = [fsBold]
        Style.IsFontAssigned = True
        TabOrder = 4
        Width = 161
      end
    end
  end
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 384
    Height = 41
    Align = alTop
    TabOrder = 1
    object DBText1: TDBText
      Left = 160
      Top = 8
      Width = 70
      Height = 20
      AutoSize = True
      DataField = 'KOD'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = 7485192
      Font.Height = -16
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label1: TLabel
      Left = 10
      Top = 8
      Width = 150
      Height = 20
      Caption = #1054#1087#1083#1072#1090#1072' '#1089#1095#1077#1090#1072'  '#8470' '
      Font.Charset = RUSSIAN_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 273
    Width = 384
    Height = 41
    Align = alBottom
    TabOrder = 2
    object Label2: TLabel
      Left = 48
      Top = 16
      Width = 75
      Height = 16
      Caption = #1053#1072' '#1089#1091#1084#1084#1091':'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object DBText2: TDBText
      Left = 125
      Top = 11
      Width = 80
      Height = 24
      AutoSize = True
      DataField = 'TOTAL_SUM'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = 7485192
      Font.Height = -19
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
  end
  object tbPerson: TFDQuery
    ConnectionName = 'FDCONN'
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
  object PersonSource: TDataSource
    DataSet = tbPerson
    Left = 16
    Top = 128
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
    BCDToCurrency = False
    Left = 24
    Top = 176
  end
  object frxReport1: TfrxReport
    Version = '6.3.3'
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
    Left = 248
    Top = 240
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
  object Oplata: TFDCommand
    CommandText.Strings = (
      'EXECUTE PROCEDURE OPLATA_ORDERS_FROM_MAIN'
      '(:ORDERS,'
      '    :PERSON,'
      '    :FORMAOPLATY,'
      '    :CASH)')
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
    Left = 312
    Top = 144
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
  object Orders: TFDQuery
    ConnectionName = 'FDCONN'
    SQL.Strings = (
      'select UID, KOD, Total_Sum, supplier'
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
  end
  object OrdersSource: TDataSource
    DataSet = Orders
    Left = 328
    Top = 48
  end
end
