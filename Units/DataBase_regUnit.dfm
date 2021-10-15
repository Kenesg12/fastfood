object fmDatabase_reg: TfmDatabase_reg
  Left = 0
  Top = 0
  BorderStyle = bsDialog
  Caption = #1056#1077#1075#1080#1089#1090#1088#1072#1094#1080#1103' '#1073#1072#1079#1099' '#1076#1072#1085#1085#1099#1093
  ClientHeight = 169
  ClientWidth = 318
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  PixelsPerInch = 96
  TextHeight = 13
  object cxComboBox1: TcxComboBox
    Left = 40
    Top = 40
    Properties.Items.Strings = (
      #1059#1076#1072#1083#1077#1085#1085#1099#1081
      #1051#1086#1082#1072#1083#1100#1085#1099#1081)
    TabOrder = 0
    Text = #1059#1076#1072#1083#1077#1085#1085#1099#1081
    OnClick = cxComboBox1Click
    Width = 105
  end
  object cxLabel1: TcxLabel
    Left = 40
    Top = 24
    Caption = #1057#1077#1088#1074#1077#1088
    ParentFont = False
    Style.Font.Charset = DEFAULT_CHARSET
    Style.Font.Color = clWindowText
    Style.Font.Height = -11
    Style.Font.Name = 'Tahoma'
    Style.Font.Style = [fsBold]
    Style.IsFontAssigned = True
  end
  object cxTextEdit1: TcxTextEdit
    Left = 168
    Top = 40
    TabOrder = 2
    Width = 121
  end
  object cxLabel2: TcxLabel
    Left = 168
    Top = 24
    Caption = #1048#1084#1103' '#1089#1077#1088#1074#1077#1088#1072
    ParentFont = False
    Style.Font.Charset = DEFAULT_CHARSET
    Style.Font.Color = clWindowText
    Style.Font.Height = -11
    Style.Font.Name = 'Tahoma'
    Style.Font.Style = [fsBold]
    Style.IsFontAssigned = True
  end
  object cxButtonEdit1: TcxButtonEdit
    Left = 40
    Top = 90
    Properties.Buttons = <
      item
        Default = True
        Kind = bkEllipsis
      end>
    Properties.OnButtonClick = cxButtonEdit1PropertiesButtonClick
    TabOrder = 4
    Width = 249
  end
  object cxLabel3: TcxLabel
    Left = 40
    Top = 74
    Caption = #1060#1072#1081#1083' '#1073#1072#1079#1099' '#1076#1072#1085#1085#1099#1093
    ParentFont = False
    Style.Font.Charset = DEFAULT_CHARSET
    Style.Font.Color = clWindowText
    Style.Font.Height = -11
    Style.Font.Name = 'Tahoma'
    Style.Font.Style = [fsBold]
    Style.IsFontAssigned = True
  end
  object cxButton1: TcxButton
    Left = 40
    Top = 128
    Width = 105
    Height = 25
    Caption = #1057#1086#1093#1088#1072#1085#1080#1090#1100
    TabOrder = 6
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    OnClick = cxButton1Click
  end
  object cxButton2: TcxButton
    Left = 168
    Top = 128
    Width = 99
    Height = 25
    Caption = #1054#1090#1084#1077#1085#1072
    TabOrder = 7
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    OnClick = cxButton2Click
  end
  object OpenDialog1: TOpenDialog
    Left = 216
    Top = 64
  end
end
