object fmDateEdit: TfmDateEdit
  Left = 0
  Top = 0
  BorderStyle = bsNone
  Caption = 'fmDateEdit'
  ClientHeight = 373
  ClientWidth = 559
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
  object Label1: TLabel
    Left = 48
    Top = 8
    Width = 309
    Height = 42
    Caption = '22.12.2019 12:00'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -35
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object cxButton1: TcxButton
    Left = 314
    Top = 292
    Width = 119
    Height = 57
    Caption = 'OK'
    ModalResult = 1
    SpeedButtonOptions.CanBeFocused = False
    TabOrder = 0
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -27
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object cxButton2: TcxButton
    Left = 438
    Top = 292
    Width = 99
    Height = 57
    Caption = #1054#1090#1084#1077#1085#1072
    ModalResult = 2
    TabOrder = 1
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -27
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object btn1: TcxButton
    Tag = 1
    Left = 48
    Top = 72
    Width = 177
    Height = 65
    Caption = '23.12.2019'
    SpeedButtonOptions.CanBeFocused = False
    TabOrder = 2
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -27
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    OnClick = btn1Click
  end
  object btn2: TcxButton
    Tag = 2
    Left = 48
    Top = 143
    Width = 177
    Height = 65
    Caption = '24.12.2019'
    SpeedButtonOptions.CanBeFocused = False
    TabOrder = 3
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -27
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    OnClick = btn1Click
  end
  object btn3: TcxButton
    Tag = 3
    Left = 48
    Top = 213
    Width = 177
    Height = 65
    Caption = '25.12.2019'
    SpeedButtonOptions.CanBeFocused = False
    TabOrder = 4
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -27
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    OnClick = btn1Click
  end
  object btn4: TcxButton
    Tag = 4
    Left = 48
    Top = 284
    Width = 177
    Height = 65
    Caption = '26.12.2019'
    SpeedButtonOptions.CanBeFocused = False
    TabOrder = 5
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -27
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    OnClick = btn1Click
  end
  object ComboBox1: TComboBox
    Left = 344
    Top = 71
    Width = 89
    Height = 56
    Style = csDropDownList
    DropDownCount = 11
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -40
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ItemIndex = 0
    ParentFont = False
    TabOrder = 6
    Text = '10'
    OnChange = ComboBox1Change
    Items.Strings = (
      '10'
      '11'
      '12'
      '13'
      '14'
      '15'
      '16'
      '17'
      '18'
      '19'
      '20'
      '21'
      '22'
      '23')
  end
  object ComboBox2: TComboBox
    Left = 439
    Top = 71
    Width = 89
    Height = 56
    Style = csDropDownList
    DropDownCount = 2
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -40
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ItemIndex = 0
    ParentFont = False
    TabOrder = 7
    Text = '00'
    OnChange = ComboBox1Change
    Items.Strings = (
      '00'
      '30')
  end
end
