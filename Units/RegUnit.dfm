object fmRegistry: TfmRegistry
  Left = 0
  Top = 0
  BorderStyle = bsDialog
  Caption = #1060#1086#1088#1084#1072' '#1088#1077#1075#1080#1089#1090#1072#1088#1094#1080#1080' '#1087#1088#1086#1076#1091#1082#1090#1072' '#1082#1086#1084#1087#1072#1085#1080#1080' '#1040#1050#1057#1040#1059
  ClientHeight = 286
  ClientWidth = 479
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  FormStyle = fsStayOnTop
  OldCreateOrder = False
  Position = poScreenCenter
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 479
    Height = 41
    Align = alTop
    Color = clInfoBk
    ParentBackground = False
    TabOrder = 0
    ExplicitWidth = 504
    object Label10: TLabel
      Left = 21
      Top = 12
      Width = 250
      Height = 16
      Caption = '* '#1042#1089#1077' '#1087#1086#1083#1103' '#1076#1086#1083#1078#1085#1099' '#1073#1099#1090#1100' '#1079#1072#1087#1086#1083#1085#1077#1085#1099
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clRed
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 41
    Width = 479
    Height = 120
    Align = alTop
    Color = clBtnHighlight
    ParentBackground = False
    TabOrder = 1
    ExplicitWidth = 504
    object Label7: TLabel
      Left = 19
      Top = 22
      Width = 10
      Height = 19
      Caption = '*'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clRed
      Font.Height = -16
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label8: TLabel
      Left = 19
      Top = 75
      Width = 10
      Height = 19
      Caption = '*'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clRed
      Font.Height = -16
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label9: TLabel
      Left = 19
      Top = 49
      Width = 10
      Height = 19
      Caption = '*'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clRed
      Font.Height = -16
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object cxTextEdit5: TcxTextEdit
      Left = 35
      Top = 20
      Hint = #1042#1074#1077#1076#1080#1090#1077' '#1042#1072#1096#1077' '#1080#1084#1103'.'
      ParentFont = False
      ParentShowHint = False
      ShowHint = True
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -11
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = [fsItalic]
      Style.IsFontAssigned = True
      TabOrder = 0
      Text = #1048#1084#1103
      OnEnter = cxTextEdit2Enter
      OnExit = cxTextEdit5Exit
      OnKeyPress = cxTextEdit5KeyPress
      Width = 198
    end
    object cxTextEdit6: TcxTextEdit
      Left = 35
      Top = 47
      Hint = #1042#1074#1077#1076#1080#1090#1077' '#1085#1072#1079#1074#1072#1085#1080#1077' '#1042#1072#1096#1077#1081' '#1086#1088#1075#1072#1085#1080#1079#1072#1094#1080#1080'.'
      ParentFont = False
      ParentShowHint = False
      ShowHint = True
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -11
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = [fsItalic]
      Style.IsFontAssigned = True
      TabOrder = 1
      Text = #1053#1072#1079#1074#1072#1085#1080#1077' '#1086#1088#1075#1072#1085#1080#1079#1072#1094#1080#1080
      OnEnter = cxTextEdit6Enter
      OnExit = cxTextEdit6Exit
      OnKeyPress = cxTextEdit6KeyPress
      Width = 198
    end
    object cxTextEdit7: TcxTextEdit
      Left = 35
      Top = 74
      Hint = #1042#1074#1077#1076#1080#1090#1077' '#1042#1072#1096#1091' '#1101#1083#1077#1082#1090#1088#1086#1085#1085#1091#1102' '#1087#1086#1095#1090#1091'.'
      ParentFont = False
      ParentShowHint = False
      ShowHint = True
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -11
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = [fsItalic]
      Style.IsFontAssigned = True
      TabOrder = 2
      Text = 'e-mail'
      OnEnter = cxTextEdit7Enter
      OnExit = cxTextEdit7Exit
      OnKeyPress = cxTextEdit7KeyPress
      Width = 198
    end
    object cxTextEdit2: TcxTextEdit
      Left = 280
      Top = 20
      Hint = #1055#1086#1083#1091#1095#1077#1085#1085#1099#1081' '#1072#1082#1090#1080#1074#1072#1094#1080#1086#1085#1085#1099#1081' '#1082#1086#1076' '#1086#1090#1087#1088#1072#1074#1100#1090#1077' '#1088#1072#1079#1088#1072#1073#1086#1090#1095#1080#1082#1072#1084'.'
      Enabled = False
      ParentFont = False
      ParentShowHint = False
      Properties.ReadOnly = True
      ShowHint = True
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -11
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = [fsItalic]
      Style.IsFontAssigned = True
      TabOrder = 3
      Text = #1050#1086#1076' '#1072#1082#1090#1080#1074#1072#1094#1080#1080
      Width = 177
    end
    object cxButton4: TcxButton
      Left = 280
      Top = 56
      Width = 177
      Height = 39
      Hint = 
        #1053#1072#1078#1084#1080#1090#1077' '#1076#1083#1103' '#1087#1086#1083#1091#1095#1077#1085#1080#1103' '#1082#1086#1076#1072' '#1072#1082#1090#1080#1074#1072#1094#1080#1080' '#1087#1086#1089#1083#1077' '#1079#1072#1087#1086#1083#1085#1077#1085#1080#1103' '#1074#1089#1077#1093' '#1087#1086#1083#1077#1081 +
        ' '
      Caption = #1055#1086#1083#1091#1095#1080#1090#1100' '#1082#1086#1076' '#1072#1082#1090#1080#1074#1072#1094#1080#1080
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clGreen
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      ParentShowHint = False
      ShowHint = True
      TabOrder = 4
      OnClick = cxButton4Click
      SpeedButtonOptions.CanBeFocused = False
    end
  end
  object Panel3: TPanel
    Left = 0
    Top = 161
    Width = 479
    Height = 125
    Align = alClient
    Color = clInactiveBorder
    ParentBackground = False
    TabOrder = 2
    ExplicitWidth = 504
    object cxTextEdit1: TcxTextEdit
      Left = 35
      Top = 26
      Hint = #1042#1074#1077#1076#1080#1090#1077' '#1086#1090#1074#1077#1090#1085#1099#1081' '#1082#1086#1076
      ParentFont = False
      ParentShowHint = False
      ShowHint = True
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clRed
      Style.Font.Height = -13
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = [fsItalic]
      Style.IsFontAssigned = True
      TabOrder = 0
      Text = #1050#1083#1102#1095' '#1072#1082#1090#1080#1074#1072#1094#1080#1080
      OnEnter = cxTextEdit1Enter
      OnExit = cxTextEdit1Exit
      Width = 198
    end
    object cxButton1: TcxButton
      Left = 280
      Top = 26
      Width = 177
      Height = 24
      Hint = #1053#1072#1078#1084#1080#1090#1077' '#1076#1083#1103' '#1088#1077#1075#1080#1089#1090#1088#1072#1094#1080#1080' '#1087#1088#1086#1075#1088#1072#1084#1084#1099'.'
      Caption = #1040#1082#1090#1080#1074#1080#1088#1086#1074#1072#1090#1100
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clRed
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      ParentShowHint = False
      ShowHint = True
      TabOrder = 1
      OnClick = cxButton1Click
    end
    object cxButton2: TcxButton
      Left = 280
      Top = 75
      Width = 177
      Height = 25
      Caption = #1054#1090#1084#1077#1085#1072
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 2
      OnClick = cxButton2Click
    end
    object cxButton3: TcxButton
      Left = 35
      Top = 75
      Width = 198
      Height = 25
      Caption = #1044#1077#1084#1086
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 3
      OnClick = cxButton3Click
    end
  end
end
