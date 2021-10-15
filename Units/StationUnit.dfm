object fmStation: TfmStation
  Left = 0
  Top = 0
  BorderStyle = bsDialog
  Caption = #1042#1099#1073#1077#1088#1080#1090#1077' '#1089#1090#1072#1085#1094#1080#1102
  ClientHeight = 93
  ClientWidth = 401
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object cxLookupComboBox1: TcxLookupComboBox
    Left = 24
    Top = 32
    Properties.KeyFieldNames = 'ID'
    Properties.ListColumns = <
      item
        FieldName = 'NAME'
      end>
    Properties.ListOptions.GridLines = glNone
    Properties.ListOptions.ShowHeader = False
    Properties.ListSource = StationSource
    TabOrder = 0
    Width = 257
  end
  object cxButton1: TcxButton
    Left = 287
    Top = 21
    Width = 96
    Height = 43
    Caption = 'OK'
    TabOrder = 1
    OnClick = cxButton1Click
  end
  object StationSource: TDataSource
    DataSet = tbStation
    Left = 96
    Top = 56
  end
  object tbStation: TFDQuery
    Connection = DM.FDB
    Transaction = DM.trRead
    SQL.Strings = (
      'select id, name'
      'from tbStation;')
    Left = 192
    Top = 48
    object tbStationID: TIntegerField
      FieldName = 'ID'
      Origin = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object tbStationNAME: TWideStringField
      FieldName = 'NAME'
      Origin = 'NAME'
      Size = 100
    end
  end
end