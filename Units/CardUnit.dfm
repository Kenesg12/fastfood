object fmCard: TfmCard
  Left = 0
  Top = 0
  BorderStyle = bsNone
  Caption = 'fmCard'
  ClientHeight = 60
  ClientWidth = 268
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  FormStyle = fsStayOnTop
  OldCreateOrder = False
  Position = poMainFormCenter
  OnClose = FormClose
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 8
    Top = 11
    Width = 250
    Height = 13
    Caption = '------------'#1055#1088#1086#1074#1077#1076#1080#1090#1077' '#1082#1083#1080#1077#1085#1090#1089#1082#1091#1102' '#1082#1072#1088#1090#1091'------------'
  end
  object Edit1: TEdit
    Left = 40
    Top = 96
    Width = 153
    Height = 21
    TabOrder = 0
    OnKeyPress = Edit1KeyPress
  end
  object cxButton1: TcxButton
    Left = 48
    Top = 30
    Width = 177
    Height = 25
    Caption = #1054#1090#1084#1077#1085#1072
    SpeedButtonOptions.CanBeFocused = False
    TabOrder = 1
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    OnClick = cxButton1Click
  end
  object tbCard: TFDQuery
    ConnectionName = 'FDCONN'
    UpdateOptions.AssignedValues = [uvEDelete, uvEInsert, uvEUpdate]
    UpdateOptions.EnableDelete = False
    UpdateOptions.EnableInsert = False
    UpdateOptions.EnableUpdate = False
    SQL.Strings = (
      'select c.idpeople as idperson'
      'from tbCards c left join contragents p on(c.idPeople=p.id)'
      'where c.Code=:code ')
    Left = 224
    Top = 8
    ParamData = <
      item
        Name = 'CODE'
        DataType = ftWideString
        ParamType = ptInput
        Size = 100
      end>
    object tbCardIDPERSON: TIntegerField
      FieldName = 'IDPERSON'
      Origin = 'IDPEOPLE'
    end
  end
end
