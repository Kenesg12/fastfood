object fmFormaOplaty: TfmFormaOplaty
  Left = 0
  Top = 0
  BorderStyle = bsNone
  Caption = 'fmFormaOplaty'
  ClientHeight = 377
  ClientWidth = 472
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poMainFormCenter
  OnCreate = FormCreate
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object cxPageControl1: TcxPageControl
    Left = 0
    Top = 41
    Width = 472
    Height = 295
    Align = alClient
    TabOrder = 0
    Properties.ActivePage = cxTabSheet2
    Properties.CustomButtons.Buttons = <>
    Properties.HideTabs = True
    OnChange = cxPageControl1Change
    ClientRectBottom = 291
    ClientRectLeft = 4
    ClientRectRight = 468
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
        Top = 8
        Width = 161
        Height = 50
        Hint = #1054#1087#1083#1072#1090#1072' '#1089#1095#1077#1090#1072' '#1085#1072#1083#1080#1095#1085#1099#1084#1080
        Caption = #1054#1055#1051#1040#1058#1040
        SpeedButtonOptions.CanBeFocused = False
        TabOrder = 0
        OnExit = cxButton1Exit
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        OnClick = cxButton1Click
        OnMouseMove = cxButton9MouseMove
      end
      object cxButton5: TcxButton
        Left = 108
        Top = 81
        Width = 161
        Height = 50
        Caption = #1044#1086#1087#1086#1083#1085#1080#1090#1077#1083#1100#1085#1086
        SpeedButtonOptions.CanBeFocused = False
        TabOrder = 1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        OnClick = cxButton5Click
      end
      object cxButton4: TcxButton
        Left = 108
        Top = 150
        Width = 161
        Height = 50
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
      object Label3: TLabel
        Left = 73
        Top = 116
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
        Left = 51
        Top = 9
        Width = 153
        Height = 40
        Caption = #1054#1087#1083#1072#1090#1080#1090#1100
        SpeedButtonOptions.CanBeFocused = False
        TabOrder = 0
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        OnClick = cxButton3Click
      end
      object cxButton6: TcxButton
        Left = 209
        Top = 9
        Width = 140
        Height = 40
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
        Top = 107
        EditValue = 0c
        ParentFont = False
        Style.Font.Charset = DEFAULT_CHARSET
        Style.Font.Color = clWindowText
        Style.Font.Height = -16
        Style.Font.Name = 'MS Sans Serif'
        Style.Font.Style = []
        Style.IsFontAssigned = True
        TabOrder = 2
        OnClick = cxCurrencyEdit1Click
        Width = 161
      end
      object cxCurrencyEdit2: TcxCurrencyEdit
        Left = 152
        Top = 155
        EditValue = 0c
        ParentFont = False
        Properties.ReadOnly = True
        Style.Font.Charset = DEFAULT_CHARSET
        Style.Font.Color = clWindowText
        Style.Font.Height = -16
        Style.Font.Name = 'MS Sans Serif'
        Style.Font.Style = []
        Style.IsFontAssigned = True
        TabOrder = 3
        Width = 161
      end
      object cxLookupComboBox1: TcxLookupComboBox
        Left = 51
        Top = 58
        ParentFont = False
        Properties.DropDownListStyle = lsFixedList
        Properties.DropDownRows = 25
        Properties.GridMode = True
        Properties.KeyFieldNames = 'ID'
        Properties.ListColumns = <
          item
            FieldName = 'NAME'
          end>
        Properties.ListOptions.GridLines = glNone
        Properties.ListOptions.ShowHeader = False
        Properties.ListSource = FOplatySource
        Style.Font.Charset = DEFAULT_CHARSET
        Style.Font.Color = clWindowText
        Style.Font.Height = -24
        Style.Font.Name = 'Tahoma'
        Style.Font.Style = []
        Style.TextStyle = []
        Style.IsFontAssigned = True
        TabOrder = 4
        Width = 294
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
        OnClick = cxButton8Click
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
        OnClick = cxButton7Click
      end
      object cxDBLookupComboBox1: TcxDBLookupComboBox
        Left = 56
        Top = 73
        DataBinding.DataField = 'IDKLINET'
        DataBinding.DataSource = OrdersSource
        ParentFont = False
        Properties.DropDownListStyle = lsFixedList
        Properties.DropDownRows = 25
        Properties.DropDownSizeable = True
        Properties.KeyFieldNames = 'IDPERSON'
        Properties.ListColumns = <
          item
            FieldName = 'FIO'
          end>
        Properties.ListOptions.AnsiSort = True
        Properties.ListOptions.CaseInsensitive = True
        Properties.ListOptions.GridLines = glNone
        Properties.ListOptions.ShowHeader = False
        Properties.ListSource = PersonSource
        Style.Font.Charset = DEFAULT_CHARSET
        Style.Font.Color = clWindowText
        Style.Font.Height = -16
        Style.Font.Name = 'MS Sans Serif'
        Style.Font.Style = []
        Style.IsFontAssigned = True
        TabOrder = 2
        OnClick = cxDBLookupComboBox1Click
        OnMouseMove = cxButton9MouseMove
        Width = 257
      end
      object cxCurrencyEdit4: TcxCurrencyEdit
        Left = 152
        Top = 120
        EditValue = 0c
        ParentFont = False
        Style.Font.Charset = DEFAULT_CHARSET
        Style.Font.Color = clWindowText
        Style.Font.Height = -16
        Style.Font.Name = 'MS Sans Serif'
        Style.Font.Style = []
        Style.IsFontAssigned = True
        TabOrder = 3
        OnClick = cxCurrencyEdit4Click
        Width = 161
      end
      object cxCurrencyEdit3: TcxCurrencyEdit
        Left = 152
        Top = 165
        EditValue = 0c
        ParentFont = False
        Properties.ReadOnly = True
        Style.Font.Charset = DEFAULT_CHARSET
        Style.Font.Color = clWindowText
        Style.Font.Height = -16
        Style.Font.Name = 'MS Sans Serif'
        Style.Font.Style = []
        Style.IsFontAssigned = True
        TabOrder = 4
        Width = 161
      end
    end
    object cxTabSheet4: TcxTabSheet
      Caption = 'cxTabSheet4'
      ImageIndex = 3
      object Label7: TLabel
        Left = 80
        Top = 118
        Width = 115
        Height = 13
        Caption = #1055#1056#1048#1063#1048#1053#1040' '#1054#1058#1050#1040#1047#1040
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold, fsUnderline]
        ParentFont = False
      end
      object cxButton9: TcxButton
        Left = 108
        Top = 8
        Width = 161
        Height = 50
        Hint = 
          #1044#1072#1085#1085#1072#1103' '#1092#1091#1085#1082#1094#1080#1103' '#1085#1080#1082#1072#1082' '#1085#1077' '#1074#1083#1080#1103#1077#1090' '#1085#1072' '#1089#1086#1089#1090#1086#1103#1085#1080#1077' '#1089#1095#1077#1090#1072'.'#13#10#1055#1088#1086#1089#1090#1086' '#1089#1090#1086#1083' ' +
          #1073#1091#1076#1077#1090' '#1089#1085#1086#1074#1072' '#1076#1086#1089#1090#1091#1087#1077#1085' '#1076#1083#1103' '#1086#1092#1080#1094#1080#1072#1085#1090#1086#1074' '#1080' '#13#10#1086#1085#1080' '#1089#1084#1086#1075#1091#1090' '#1087#1088#1086#1076#1086#1083#1078#1080#1090#1100' '#1089#1074 +
          #1086#1102' '#1088#1072#1073#1086#1090#1091'.'
        Caption = #1053#1077#1086#1087#1083#1072#1095#1080#1074#1072#1090#1100
        SpeedButtonOptions.CanBeFocused = False
        TabOrder = 0
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        OnMouseMove = cxButton9MouseMove
      end
      object cxButton10: TcxButton
        Left = 26
        Top = 64
        Width = 161
        Height = 47
        Hint = #1057#1095#1077#1090' '#1073#1091#1076#1077#1090' '#1091#1076#1072#1083#1077#1085'.'#13#10#1053#1086' '#1074#1089#1103' '#1080#1085#1092#1086#1088#1084#1072#1094#1080#1103' '#1086#1073' '#1091#1076#1072#1083#1077#1085#1080#1080' '#1089#1086#1093#1088#1072#1085#1080#1090#1089#1103'.'
        Caption = #1059#1076#1072#1083#1080#1090#1100' '#1089#1095#1077#1090
        SpeedButtonOptions.CanBeFocused = False
        TabOrder = 1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clRed
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        OnMouseMove = cxButton9MouseMove
      end
      object cxButton11: TcxButton
        Left = 202
        Top = 64
        Width = 161
        Height = 47
        Hint = 
          #1058#1077#1082#1091#1097#1080#1081' '#1089#1095#1077#1090' '#1073#1091#1076#1077#1090' '#1091#1076#1072#1083#1077#1085' '#1080' '#1089#1086#1079#1076#1072#1085' '#1085#1086#1074#1099#1081', '#1077#1097#1077' '#1085#1077' '#1079#1072#1082#1088#1099#1090#1099#1081' '#1089#1095#1077#1090', ' +
          #1082#1086#1087#1080#1103' '#1090#1077#1082#1091#1097#1077#1075#1086'.'
        Caption = #1054#1090#1082#1072#1079#1072#1090#1100#13#10#1089' '#1074#1086#1089#1089#1090#1072#1085#1086#1074#1083#1077#1085#1080#1077#1084
        SpeedButtonOptions.CanBeFocused = False
        TabOrder = 2
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clMaroon
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        OnMouseMove = cxButton9MouseMove
      end
      object ComboBox1: TComboBox
        Left = 80
        Top = 133
        Width = 217
        Height = 28
        Style = csDropDownList
        Font.Charset = RUSSIAN_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 3
        Items.Strings = (
          #1054#1090#1082#1072#1079#1072#1083#1080#1089#1100' '#1086#1090' '#1079#1072#1082#1072#1079#1072
          #1054#1096#1080#1073#1082#1072' '#1089#1082#1080#1076#1082#1080
          #1053#1077' '#1082#1072#1095#1077#1089#1090#1074#1077#1085#1085#1086
          #1054#1096#1080#1073#1082#1072' '#1086#1092#1080#1094#1080#1072#1085#1090#1072)
      end
      object cxButton12: TcxButton
        Left = 108
        Top = 168
        Width = 161
        Height = 43
        Caption = #1053#1072#1079#1072#1076
        SpeedButtonOptions.CanBeFocused = False
        TabOrder = 4
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        OnClick = cxButton12Click
      end
    end
  end
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 472
    Height = 41
    Align = alTop
    TabOrder = 1
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
    object DBText1: TDBText
      Left = 155
      Top = 8
      Width = 70
      Height = 20
      AutoSize = True
      DataField = 'NOMER'
      DataSource = OrdersSource
      Font.Charset = DEFAULT_CHARSET
      Font.Color = 7485192
      Font.Height = -16
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object DBLookupComboBox2: TDBLookupComboBox
      Left = 213
      Top = 4
      Width = 78
      Height = 28
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      KeyField = 'IDORDERS'
      ListField = 'NOMER'
      ListSource = OrdersSource
      ParentFont = False
      TabOrder = 0
    end
    object cxButton13: TcxButton
      Left = 348
      Top = 5
      Width = 26
      Height = 25
      OptionsImage.Glyph.Data = {
        DE010000424DDE01000000000000760000002800000024000000120000000100
        0400000000006801000000000000000000001000000000000000000000000000
        BF0000BF000000BFBF00BF000000BF00BF00BFBF0000C0C0C000808080000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333336633
        3333333333333FF3333333330000333333364463333333333333388F33333333
        00003333333E66433333333333338F38F3333333000033333333E66333333333
        33338FF8F3333333000033333333333333333333333338833333333300003333
        3333446333333333333333FF3333333300003333333666433333333333333888
        F333333300003333333E66433333333333338F38F333333300003333333E6664
        3333333333338F38F3333333000033333333E6664333333333338F338F333333
        0000333333333E6664333333333338F338F3333300003333344333E666433333
        333F338F338F3333000033336664333E664333333388F338F338F33300003333
        E66644466643333338F38FFF8338F333000033333E6666666663333338F33888
        3338F3330000333333EE666666333333338FF33333383333000033333333EEEE
        E333333333388FFFFF8333330000333333333333333333333333388888333333
        0000}
      OptionsImage.NumGlyphs = 2
      SpeedButtonOptions.CanBeFocused = False
      TabOrder = 1
      OnClick = cxButton13Click
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 336
    Width = 472
    Height = 41
    Align = alBottom
    TabOrder = 2
    object Label2: TLabel
      Left = 37
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
    object cxDBCurrencyEdit1: TcxDBCurrencyEdit
      Left = 112
      Top = 8
      DataBinding.DataField = 'MCASH'
      DataBinding.DataSource = OrdersSource
      Enabled = False
      ParentFont = False
      Properties.Alignment.Horz = taLeftJustify
      Properties.ReadOnly = True
      Style.BorderStyle = ebsUltraFlat
      Style.Color = clBtnFace
      Style.Edges = []
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = 7485192
      Style.Font.Height = -19
      Style.Font.Name = 'MS Sans Serif'
      Style.Font.Style = [fsBold]
      Style.TextColor = 7485192
      Style.IsFontAssigned = True
      StyleDisabled.BorderColor = clWhite
      StyleDisabled.Color = clBtnFace
      StyleDisabled.TextColor = 7485192
      TabOrder = 0
      Width = 179
    end
  end
  object OrdersSource: TDataSource
    DataSet = Orders
    Left = 416
    Top = 64
  end
  object frxReport1: TfrxReport
    Version = '5.4.6'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = #1055#1086' '#1091#1084#1086#1083#1095#1072#1085#1080#1102
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 40024.201474062500000000
    ReportOptions.LastChange = 40820.528627800920000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      
        'var t1, t2, t3, t4, t5:Real;                                    ' +
        '                         '
      ''
      'procedure GroupFooter1OnBeforePrint(Sender: TfrxComponent);'
      'begin'
      '       '
      'end;'
      ''
      ''
      'procedure Memo27OnAfterData(Sender: TfrxComponent);'
      'begin'
      '    if Memo22.Value=Memo6.Value then'
      '   begin                   '
      '    Memo24.Visible:=false;        '
      '    Memo6.Visible:=false;          '
      '    Memo23.Visible:=false;    '
      '    Memo20.Visible:=false;          '
      '    Memo25.Visible:=false;'
      '    Memo21.Visible:=false;'
      '    Memo26.Visible:=true;                 '
      '    Memo22.Visible:=true;'
      '    Memo19.Visible:=false;                 '
      '    Memo27.Visible:=false;                      '
      '      '
      '    Memo26.Top:=t1;'
      '    Memo22.Top:=t1;              '
      '   end'
      '  else  '
      '   BEGIN'
      '                                         '
      '   if Memo20.Value=0 then'
      '    begin          '
      '     Memo23.Visible:=false;    '
      '     Memo20.Visible:=false;          '
      ''
      '     t3:=t3-12;'
      '     t4:=t4-12;'
      
        '     t5:=t5-12;                                                 ' +
        '         '
      '    end;'
      '   if Memo19.Value = 0 then'
      '    begin'
      '     Memo19.Visible:=false;'
      '     Memo27.Visible:=false;'
      ''
      '     t4:=t4-12;'
      
        '     t5:=t5-12;                                                 ' +
        '     '
      '    end;             '
      '                       '
      '  if Memo21.Value = 0 then'
      '   begin          '
      '    Memo25.Visible:=false;'
      '    Memo21.Visible:=false;'
      ''
      
        '   t5:=t5-12;                                                   ' +
        '            '
      '   end;'
      '    Memo24.Top:=t1;           '
      '    Memo6.Top:=t1;'
      '    Memo23.Top:=t2;      '
      '    Memo20.Top:=t2;'
      '    Memo19.top:=t3;'
      '    Memo27.top:=t3;      '
      '    Memo25.Top:=t4;      '
      '    Memo21.Top:=t4;'
      '    Memo26.Top:=t5;      '
      '    Memo22.Top:=t5;        '
      '  END;                 '
      '  '
      '  GroupFooter1.Height:=Memo22.Top+Memo22.Height;'
      
        '  Report.Variables.Variables('#39'mcash'#39'):=Report.Variables.Variable' +
        's('#39'mcash'#39') + Memo22.Value;     '
      'end;'
      ''
      ''
      'begin'
      ' t1:=2.5;'
      ' t2:=14.5;'
      ' t3:=26.5;                         '
      ' t4:=38.5;'
      ' t5:=50.5;                     '
      
        ' Report.Variables.Variables('#39'mcash'#39'):=0;                        ' +
        '      '
      'end.')
    OnReportPrint = 'frxReport1OnReportPrint'
    Left = 24
    Top = 216
    Datasets = <
      item
        DataSet = frxReport1.IBXQuery1
        DataSetName = 'IBXQuery1'
      end>
    Variables = <
      item
        Name = ' New Category1'
        Value = Null
      end
      item
        Name = 'orders'
        Value = Null
      end
      item
        Name = 'mcash'
        Value = Null
      end>
    Style = <>
    object Data: TfrxDataPage
      Height = 1000.000000000000000000
      Width = 1000.000000000000000000
      object IBXQuery1: TfrxFDQuery
        UserName = 'IBXQuery1'
        CloseDataSource = True
        BCDToCurrency = False
        IgnoreDupParams = False
        Params = <
          item
            Name = 'orders'
            DataType = ftString
            Expression = '<orders>'
          end>
        SQL.Strings = (
          'SELECT * '
          'FROM PRINT_GUEST_CHECK(:orders)'
          'order by Podrazd    '
          '  ')
        pLeft = 288
        pTop = 180
        Parameters = <
          item
            Name = 'orders'
            DataType = ftString
            Expression = '<orders>'
          end>
      end
    end
    object Page1: TfrxReportPage
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNone
      Font.Height = -13
      Font.Name = 'Arial'
      Font.Style = []
      PaperWidth = 60.000000000000000000
      PaperHeight = 210.000000000000000000
      PaperSize = 256
      LeftMargin = 4.000000000000000000
      RightMargin = 5.000000000000000000
      BottomMargin = 5.000000000000000000
      OnAfterPrint = 'Page1OnAfterPrint'
      object ReportTitle1: TfrxReportTitle
        FillType = ftBrush
        Height = 134.622140000000000000
        Top = 16.000000000000000000
        Width = 192.756030000000000000
        object Memo11: TfrxMemoView
          Left = 7.559060000000000000
          Top = 70.370130000000000000
          Width = 86.929190000000000000
          Height = 11.338590000000000000
          OnBeforePrint = 'Memo11OnBeforePrint'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = 'dd mmm yyyy'
          DisplayFormat.Kind = fkDateTime
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            #1044#1072#1090#1072':[IBXQuery1."START_TIME" #ddd.mm.yy]')
          ParentFont = False
        end
        object Memo12: TfrxMemoView
          Left = 7.559060000000000000
          Top = 84.488250000000000000
          Width = 86.929190000000000000
          Height = 11.338590000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            #1054#1090#1082#1088#1099#1090': [IBXQuery1."START_TIME" #dhh:mm]')
          ParentFont = False
          WordWrap = False
        end
        object Memo13: TfrxMemoView
          Left = 7.559060000000000000
          Top = 97.826840000000000000
          Width = 105.826840000000000000
          Height = 11.338590000000000000
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = 'hh:mm'
          DisplayFormat.Kind = fkDateTime
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            #1047#1072#1082#1088#1099#1090': [IBXQuery1."END_TIME" #dhh:mm]')
          ParentFont = False
          WordWrap = False
        end
        object Memo14: TfrxMemoView
          Left = 7.559060000000000000
          Top = 111.944960000000000000
          Width = 109.606370000000000000
          Height = 15.118120000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftBottom]
          Frame.Width = 1.500000000000000000
          Memo.UTF8W = (
            #1054#1092#1080#1094#1080#1072#1085#1090': [IBXQuery1."OFICIANT"]')
          ParentFont = False
          WordWrap = False
        end
        object Memo15: TfrxMemoView
          Left = 112.196970000000000000
          Top = 98.488250000000000000
          Width = 75.590600000000000000
          Height = 11.338590000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            #1057#1095#1077#1090' '#8470' [IBXQuery1."NOMERZAK"]')
          ParentFont = False
          WordWrap = False
        end
        object Memo16: TfrxMemoView
          Left = 89.078850000000000000
          Top = 70.811070000000000000
          Width = 98.267780000000000000
          Height = 26.456710000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -19
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            #1057#1090#1086#1083'  [IBXQuery1."STOL"]')
          ParentFont = False
          WordWrap = False
        end
        object Memo17: TfrxMemoView
          Left = 91.976500000000000000
          Top = 111.944960000000000000
          Width = 94.488250000000000000
          Height = 15.118120000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftBottom]
          Frame.Width = 1.500000000000000000
          HAlign = haRight
          Memo.UTF8W = (
            #1043#1086#1089#1090#1100': [IBXQuery1."KLIENT"]')
          ParentFont = False
          WordWrap = False
        end
        object Picture1: TfrxPictureView
          Align = baWidth
          Top = 5.000000000000000000
          Width = 192.756030000000000000
          Height = 52.913420000000000000
          Center = True
          FileLink = 'Logo.bmp'
          HightQuality = False
          Transparent = False
          TransparentColor = clWhite
        end
      end
      object GroupHeader1: TfrxGroupHeader
        FillType = ftBrush
        Height = 22.677180000000000000
        Top = 172.000000000000000000
        Width = 192.756030000000000000
        Condition = 'IBXQuery1."PODRAZD"'
        object Memo1: TfrxMemoView
          Left = 5.559060000000000000
          Top = 5.000000000000000000
          Width = 188.976500000000000000
          Height = 15.118120000000000000
          OnBeforePrint = 'Memo1OnBeforePrint'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNone
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Style = fsDash
          Frame.Typ = [ftBottom]
          Frame.Width = 1.500000000000000000
          Memo.UTF8W = (
            '[IBXQuery1."PODRAZD"]')
          ParentFont = False
        end
      end
      object MasterData1: TfrxMasterData
        FillType = ftBrush
        Height = 11.338590000000000000
        Top = 216.000000000000000000
        Width = 192.756030000000000000
        DataSet = frxReport1.IBXQuery1
        DataSetName = 'IBXQuery1'
        RowCount = 0
        object Memo2: TfrxMemoView
          Left = 3.779530000000000000
          Width = 113.385900000000000000
          Height = 11.338590000000000000
          DataField = 'USLUGA'
          DataSet = frxReport1.IBXQuery1
          DataSetName = 'IBXQuery1'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNone
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Color = clTeal
          Frame.ShadowWidth = 1.000000000000000000
          Memo.UTF8W = (
            '[IBXQuery1."USLUGA"]')
          ParentFont = False
          WordWrap = False
          VAlign = vaCenter
        end
        object Memo4: TfrxMemoView
          Left = 143.622140000000000000
          Width = 15.118120000000000000
          Height = 11.338590000000000000
          AutoWidth = True
          DataSet = frxReport1.IBXQuery1
          DataSetName = 'IBXQuery1'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '0.##'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[IBXQuery1."KOLVO"]')
          ParentFont = False
          WordBreak = True
          WordWrap = False
        end
        object Memo5: TfrxMemoView
          Left = 158.740260000000000000
          Width = 34.015770000000000000
          Height = 11.338590000000000000
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNone
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[<IBXQuery1."KOLVO">*<IBXQuery1."CENA"> #n%2,2n]')
          ParentFont = False
          WordBreak = True
          WordWrap = False
        end
        object Memo3: TfrxMemoView
          Left = 117.165430000000000000
          Width = 26.456710000000000000
          Height = 11.338590000000000000
          DataSetName = #1047#1072#1082#1072#1079#1099
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNone
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Color = clTeal
          Frame.ShadowWidth = 1.000000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            '[IBXQuery1."CENA" #n%2,2n]')
          ParentFont = False
        end
      end
      object GroupFooter1: TfrxGroupFooter
        FillType = ftBrush
        Height = 68.031540000000000000
        Top = 248.000000000000000000
        Width = 192.756030000000000000
        object Memo6: TfrxMemoView
          Left = 79.212740000000000000
          Top = 2.559060000000000000
          Width = 105.826840000000000000
          Height = 11.338590000000000000
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.2m'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNone
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Style = fsDot
          HAlign = haRight
          Memo.UTF8W = (
            
              '[SUM(<IBXQuery1."KOLVO">*<IBXQuery1."CENA">,MasterData1) #n%2,2n' +
              ']')
          ParentFont = False
        end
        object Memo20: TfrxMemoView
          Left = 120.212740000000000000
          Top = 13.677180000000000000
          Width = 64.252010000000000000
          Height = 11.338590000000000000
          OnAfterData = 'Memo20OnAfterData'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNone
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            
              '[-SUM(<IBXQuery1."KOLVO">*<IBXQuery1."CENA">*<IBXQuery1."DISCOUN' +
              'T">/100,MasterData1) #n%2,2n]')
          ParentFont = False
        end
        object Memo21: TfrxMemoView
          Left = 97.212740000000000000
          Top = 38.944881890000000000
          Width = 86.929190000000000000
          Height = 11.338590000000000000
          OnAfterData = 'Memo21OnAfterData'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNone
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            
              '[SUM(<IBXQuery1."KOLVO">*<IBXQuery1."CENA">*<IBXQuery1."OBSLUZH"' +
              '>/100,MasterData1) #n%2,2n]')
          ParentFont = False
        end
        object Memo22: TfrxMemoView
          Left = 88.212740000000000000
          Top = 51.692950000000000000
          Width = 98.267780000000000000
          Height = 15.118120000000000000
          OnAfterData = 'Memo22OnAfterData'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            
              '[SUM(<IBXQuery1."KOLVO">*<IBXQuery1."CENA">*(100-<IBXQuery1."DIS' +
              'COUNT">+<IBXQuery1."OBSLUZH">)/100-<IBXQuery1."MDISCOUNT">,Maste' +
              'rData1) #n%2.2n]')
          ParentFont = False
        end
        object Memo23: TfrxMemoView
          Left = 7.779530000000000000
          Top = 13.677180000000000000
          Width = 102.047310000000000000
          Height = 11.338590000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNone
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Style = fsDot
          Memo.UTF8W = (
            #1057#1082#1080#1076#1082#1072' [IBXQuery1."DISCOUNT" #n%g]%:')
          ParentFont = False
        end
        object Memo24: TfrxMemoView
          Left = 7.779530000000000000
          Top = 2.559060000000000000
          Width = 60.472480000000000000
          Height = 11.338590000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNone
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Style = fsDot
          Memo.UTF8W = (
            #1057#1091#1084#1084#1072':')
          ParentFont = False
        end
        object Memo25: TfrxMemoView
          Left = 7.779530000000000000
          Top = 38.795300000000000000
          Width = 79.370130000000000000
          Height = 11.338590000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNone
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Style = fsDot
          Memo.UTF8W = (
            #1054#1073#1089#1083#1091#1078'. [IBXQuery1."OBSLUZH"]%:')
          ParentFont = False
        end
        object Memo26: TfrxMemoView
          Left = 8.559060000000000000
          Top = 51.692950000000000000
          Width = 79.370130000000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Style = fsDot
          Memo.UTF8W = (
            #1055#1086#1076#1080#1090#1086#1075': ')
          ParentFont = False
        end
        object Line1: TfrxLineView
          Left = 3.779530000000000000
          Width = 181.417440000000000000
          Color = clBlack
          Frame.Style = fsDot
          Frame.Typ = [ftTop]
        end
        object Memo19: TfrxMemoView
          Left = 119.992270000000000000
          Top = 26.456710000000000000
          Width = 64.252010000000000000
          Height = 11.338590000000000000
          OnAfterData = 'Memo20OnAfterData'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNone
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '-[SUM(<IBXQuery1."MDISCOUNT">,MasterData1) #n%2.2n]')
          ParentFont = False
        end
        object Memo27: TfrxMemoView
          Left = 7.559060000000000000
          Top = 26.456710000000000000
          Width = 102.047310000000000000
          Height = 11.338590000000000000
          OnAfterData = 'Memo27OnAfterData'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNone
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Style = fsDot
          Memo.UTF8W = (
            #1057#1082#1080#1076#1082#1072' '#1089#1091#1084#1084'.:')
          ParentFont = False
        end
      end
      object ReportSummary1: TfrxReportSummary
        FillType = ftBrush
        Height = 68.031540000000000000
        Top = 336.000000000000000000
        Width = 192.756030000000000000
        OnBeforePrint = 'ReportSummary1OnBeforePrint'
        object Memo8: TfrxMemoView
          Left = 3.779530000000000000
          Top = 6.000000000000000000
          Width = 68.031540000000000000
          Height = 22.677180000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNone
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Fill.BackColor = 13421772
          Memo.UTF8W = (
            #1050' '#1086#1087#1083#1072#1090#1077':')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo7: TfrxMemoView
          Left = 70.960730000000000000
          Top = 6.000000000000000000
          Width = 120.944960000000000000
          Height = 22.677180000000000000
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.2m'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNone
          Font.Height = -19
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Fill.BackColor = 13421772
          HAlign = haRight
          Memo.UTF8W = (
            '[mcash #n%2.2m]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo9: TfrxMemoView
          Align = baWidth
          Top = 28.897650000000000000
          Width = 192.756030000000000000
          Height = 11.338590000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8W = (
            #1042#1086#1079#1085#1072#1075#1088#1072#1078#1076#1077#1085#1080#1077' '#1086#1092#1080#1094#1080#1072#1085#1090#1072#1084)
          ParentFont = False
          WordBreak = True
          VAlign = vaBottom
        end
        object Memo10: TfrxMemoView
          Align = baWidth
          Top = 40.236240000000000000
          Width = 192.756030000000000000
          Height = 11.338590000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8W = (
            #1087#1088#1080#1074#1077#1090#1089#1090#1074#1091#1077#1090#1089#1103', '#1085#1086' '#1074#1089#1077#1075#1076#1072)
          ParentFont = False
          VAlign = vaBottom
        end
        object Memo18: TfrxMemoView
          Align = baWidth
          Top = 51.574830000000000000
          Width = 192.756030000000000000
          Height = 11.338590000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8W = (
            #1086#1089#1090#1072#1077#1090#1089#1103' '#1085#1072' '#1074#1072#1096#1077' '#1091#1089#1084#1086#1090#1088#1077#1085#1080#1077'!')
          ParentFont = False
          VAlign = vaBottom
        end
      end
      object Line2: TfrxLineView
        Left = 268.346630000000000000
        Top = 260.787570000000000000
        Height = 15.118120000000000000
        Color = clBlack
        Diagonal = True
      end
    end
  end
  object PersonSource: TDataSource
    DataSet = tbPerson
    Left = 96
    Top = 288
  end
  object tbPerson: TFDQuery
    Connection = DM.FDB
    SQL.Strings = (
      
        'select id as idPerson, name||'#39' ('#39'||cast(coalesce(mAccount, 0) as' +
        ' numeric(9,2))||'#39')'#39' as FIO'
      'from contragents'
      'where blocked = 0'
      'and id > 0'
      'and c_type = 1'
      'order by name')
    Left = 176
    Top = 289
    object tbPersonIDPERSON: TIntegerField
      FieldName = 'IDPERSON'
      Origin = 'ID'
      Required = True
    end
    object tbPersonFIO: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'FIO'
      Origin = 'FIO'
      ProviderFlags = []
      ReadOnly = True
      Size = 165
    end
  end
  object Orders: TFDQuery
    Connection = DM.FDB
    SQL.Strings = (
      
        'select uid as idOrders, supplier as idKlinet, total_sum as mCash' +
        ', kod as NOMER'
      'from documents'
      'where uid = :uid')
    Left = 424
    Top = 121
    ParamData = <
      item
        Name = 'UID'
        DataType = ftString
        ParamType = ptInput
        Value = Null
      end>
    object OrdersIDKLINET: TIntegerField
      FieldName = 'IDKLINET'
      Origin = 'SUPPLIER'
    end
    object OrdersMCASH: TFloatField
      FieldName = 'MCASH'
      Origin = 'TOTAL_SUM'
    end
    object OrdersNOMER: TIntegerField
      FieldName = 'NOMER'
      Origin = 'KOD'
      Required = True
    end
    object OrdersIDORDERS: TWideStringField
      FieldName = 'IDORDERS'
      Origin = 'UID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      FixedChar = True
      Size = 36
    end
  end
  object Orders_item: TFDQuery
    Connection = DM.FDB
    SQL.Strings = (
      'SELECT'
      '    l.UID as IDORDERS_ITEM,'
      '    p.name,'
      '    l.KOLVO as FKOLVO,'
      
        '    l.cena_sales + coalesce(l.margin, 0) - coalesce(l.MDISCOUNT,' +
        ' 0) as cena,'
      '    p.id as idMenu'
      'FROM'
      '    D_LINES l inner join d_product p on(l.product = p.id)'
      'where l.IDDOCUMENT = :mas_UID'
      'and p.pid <> :pid'
      'and kolvo > 0')
    Left = 240
    Top = 289
    ParamData = <
      item
        Name = 'MAS_UID'
        DataType = ftFixedChar
        ParamType = ptInput
        Size = 36
      end
      item
        Name = 'PID'
        DataType = ftInteger
        ParamType = ptInput
      end>
    object Orders_itemIDORDERS_ITEM: TStringField
      FieldName = 'IDORDERS_ITEM'
      Origin = 'UID'
      Required = True
      FixedChar = True
      Size = 36
    end
    object Orders_itemNAME: TStringField
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
      AutoGenerateValue = arDefault
      FieldName = 'IDMENU'
      Origin = 'ID'
      ProviderFlags = []
      ReadOnly = True
    end
  end
  object Return_order: TFDStoredProc
    Connection = DM.FDB
    StoredProcName = 'RETURN_CLOSED_ORDERS'
    Left = 416
    Top = 233
    ParamData = <
      item
        Position = 1
        Name = 'ORDERS'
        DataType = ftFixedChar
        ParamType = ptInput
        Size = 36
      end>
  end
  object KKM_read: TFDQuery
    Connection = DM.FDB
    SQL.Strings = (
      'select p.name as usluga, l.kolvo as fkolvo, l.cena_sales, '
      
        '(l.mdiscount * l.kolvo) + coalesce(l.mdiscount_sum, 0) as discou' +
        'nt,'
      '(l.margin*l.kolvo) as margin'
      'from D_lines l  inner join d_product p on(l.product=p.id)'
      'where l.iddocument=:mas_UID'
      'and l.kolvo > 0')
    Left = 344
    Top = 289
    ParamData = <
      item
        Name = 'MAS_UID'
        DataType = ftFixedChar
        ParamType = ptInput
        Size = 36
      end>
    object KKM_readUSLUGA: TStringField
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
  end
  object Oplata_orders1: TFDQuery
    Connection = DM.FDB
    Transaction = DM.trReadWrite
    UpdateTransaction = DM.trReadWrite
    SQL.Strings = (
      'SELECT * FROM OPLATA_ORDERS(:orders, :person, :fo, :cash);')
    Left = 24
    Top = 161
    ParamData = <
      item
        Name = 'ORDERS'
        DataType = ftFixedChar
        ParamType = ptInput
        Size = 36
        Value = Null
      end
      item
        Name = 'PERSON'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Name = 'FO'
        DataType = ftSmallint
        ParamType = ptInput
      end
      item
        Name = 'CASH'
        DataType = ftFloat
        Precision = 16
        ParamType = ptInput
      end>
    object Oplata_orders1OPEN_COUNT: TSmallintField
      FieldName = 'OPEN_COUNT'
      Origin = 'OPEN_COUNT'
    end
    object Oplata_orders1STATUS: TSmallintField
      FieldName = 'STATUS'
      Origin = 'STATUS'
    end
    object Oplata_orders1PIC: TIntegerField
      FieldName = 'PIC'
      Origin = 'PIC'
    end
    object Oplata_orders1STOL_LABEL: TStringField
      FieldName = 'STOL_LABEL'
      Origin = 'STOL_LABEL'
      Size = 50
    end
    object Oplata_orders1OFICIANT: TStringField
      FieldName = 'OFICIANT'
      Origin = 'OFICIANT'
    end
  end
  object Close_orders: TFDStoredProc
    Connection = DM.FDB
    Transaction = DM.trReadWrite
    StoredProcName = 'CLOSE_ORDERS'
    Left = 16
    Top = 264
    ParamData = <
      item
        Position = 1
        Name = 'ORDERS'
        DataType = ftFixedChar
        ParamType = ptInput
        Size = 36
      end
      item
        Position = 2
        Name = 'STOL_LABEL'
        DataType = ftString
        ParamType = ptOutput
        Size = 50
      end
      item
        Position = 3
        Name = 'STATUS'
        DataType = ftSmallint
        ParamType = ptOutput
      end
      item
        Position = 4
        Name = 'PIC'
        DataType = ftInteger
        ParamType = ptOutput
      end
      item
        Position = 5
        Name = 'OPEN_COUNT'
        DataType = ftSmallint
        ParamType = ptOutput
        Value = 0
      end>
    object Close_ordersSTOL_LABEL: TStringField
      FieldName = 'STOL_LABEL'
      Origin = 'STOL_LABEL'
      Size = 50
    end
    object Close_ordersSTATUS: TSmallintField
      FieldName = 'STATUS'
      Origin = 'STATUS'
    end
    object Close_ordersPIC: TIntegerField
      FieldName = 'PIC'
      Origin = 'PIC'
    end
    object Close_ordersOPEN_COUNT: TSmallintField
      FieldName = 'OPEN_COUNT'
      Origin = 'OPEN_COUNT'
    end
  end
  object Oplata_orders: TFDCommand
    Connection = DM.FDB
    Transaction = DM.trWrite
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
      '  mcash = iif(:cash = 0, total_sum, :cash)'
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
      ''
      
        '     insert into tbaccount (idPerson, mKolvo, idOperacii_type, i' +
        'dOsnovanie, dt)'
      '     values(:person, :CASH, 17, :orders, current_timestamp);'
      ''
      ''
      'end')
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
    Left = 48
    Top = 289
  end
  object FOplaty: TFDQuery
    Connection = DM.FDB
    Transaction = DM.trRead
    UpdateOptions.AssignedValues = [uvEDelete, uvEInsert, uvEUpdate]
    UpdateOptions.EnableDelete = False
    UpdateOptions.EnableInsert = False
    UpdateOptions.EnableUpdate = False
    SQL.Strings = (
      'select id, name'
      'from TBFORMAOPLATY'
      'where id > 0')
    Left = 416
    Top = 173
    object FOplatyID: TIntegerField
      FieldName = 'ID'
      Origin = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object FOplatyNAME: TWideStringField
      FieldName = 'NAME'
      Origin = 'NAME'
      Size = 100
    end
  end
  object FOplatySource: TDataSource
    DataSet = FOplaty
    Left = 416
    Top = 285
  end
end