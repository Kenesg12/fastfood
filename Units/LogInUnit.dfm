object LogIn: TLogIn
  Left = 953
  Top = 504
  BorderStyle = bsNone
  Caption = 'LogIn'
  ClientHeight = 101
  ClientWidth = 163
  Color = clBtnShadow
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  OnCreate = FormCreate
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object AdvPanel1: TAdvPanel
    Left = 0
    Top = 0
    Width = 163
    Height = 101
    Align = alClient
    BevelOuter = bvNone
    Color = clWhite
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
    UseDockManager = True
    Version = '1.7.7.2'
    AutoHideChildren = False
    BorderColor = clGray
    BorderShadow = True
    Caption.Color = clHighlight
    Caption.ColorTo = clBlue
    Caption.Font.Charset = DEFAULT_CHARSET
    Caption.Font.Color = clHighlightText
    Caption.Font.Height = -11
    Caption.Font.Name = 'Tahoma'
    Caption.Font.Style = []
    Caption.Indent = 2
    Caption.ShadeLight = 255
    CollapsColor = clBtnFace
    CollapsDelay = 0
    ColorTo = 14938354
    ShadowColor = clBlack
    ShadowOffset = 0
    StatusBar.BorderColor = clSilver
    StatusBar.BorderStyle = bsSingle
    StatusBar.Font.Charset = DEFAULT_CHARSET
    StatusBar.Font.Color = clBlack
    StatusBar.Font.Height = -11
    StatusBar.Font.Name = 'Tahoma'
    StatusBar.Font.Style = []
    StatusBar.Color = 14938354
    StatusBar.ColorTo = clWhite
    FullHeight = 0
    object Label1: TLabel
      Left = 20
      Top = 12
      Width = 71
      Height = 13
      Caption = #1055#1072#1088#1086#1083#1100' '#1074#1093#1086#1076#1072
    end
    object Password: TEdit
      Left = 20
      Top = 30
      Width = 120
      Height = 21
      Hint = #1055#1072#1088#1086#1083#1100' '#1072#1074#1090#1086#1088#1080#1079#1072#1094#1080#1080
      BorderStyle = bsNone
      ParentShowHint = False
      PasswordChar = '*'
      ShowHint = False
      TabOrder = 0
      OnClick = PasswordClick
      OnKeyUp = PasswordKeyUp
    end
    object Button1: TcxButton
      Left = 20
      Top = 64
      Width = 120
      Height = 25
      Caption = 'OK'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = 7485192
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 1
      OnClick = cxButton1Click
      SpeedButtonOptions.CanBeFocused = False
    end
  end
  object Check_pass: TpFIBQuery
    Transaction = DM.ReadTransaction
    Database = DM.DB
    SQL.Strings = (
      'select idPerson, vcFIO'
      'from tbPerson'
      'where vcPass_in=:pass')
    Left = 72
    Top = 24
    qoStartTransaction = True
    qoFreeHandleAfterExecute = True
  end
end
