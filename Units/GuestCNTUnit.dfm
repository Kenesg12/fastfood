object GuestCNT: TGuestCNT
  Left = 0
  Top = 0
  BorderStyle = bsNone
  Caption = 'GuestCNT'
  ClientHeight = 178
  ClientWidth = 251
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poMainFormCenter
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 72
    Top = 8
    Width = 118
    Height = 19
    Caption = #1050#1086#1083'-'#1074#1086' '#1075#1086#1089#1090#1077#1081
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object cxSpinEdit1: TcxSpinEdit
    Left = 72
    Top = 40
    ParentFont = False
    Properties.Alignment.Horz = taCenter
    Properties.AssignedValues.MinValue = True
    Properties.MaxValue = 99.000000000000000000
    Properties.SpinButtons.Position = sbpHorzLeftRight
    Style.Font.Charset = DEFAULT_CHARSET
    Style.Font.Color = clWindowText
    Style.Font.Height = -37
    Style.Font.Name = 'Tahoma'
    Style.Font.Style = [fsBold]
    Style.IsFontAssigned = True
    TabOrder = 0
    Value = 1
    Width = 105
  end
  object cxButton1: TcxButton
    Left = 24
    Top = 128
    Width = 81
    Height = 33
    Caption = #1055#1088#1080#1084#1077#1085#1080#1090#1100
    TabOrder = 1
    OnClick = cxButton1Click
  end
  object cxButton2: TcxButton
    Left = 136
    Top = 128
    Width = 81
    Height = 33
    Caption = #1054#1090#1084#1077#1085#1072
    TabOrder = 2
    OnClick = cxButton2Click
  end
end
