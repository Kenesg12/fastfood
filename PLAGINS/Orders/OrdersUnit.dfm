object fmOrders: TfmOrders
  Left = 0
  Top = 0
  BorderStyle = bsDialog
  Caption = #1047#1072#1082#1072#1079#1099
  ClientHeight = 614
  ClientWidth = 899
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
  object cxPageControl1: TcxPageControl
    Left = 0
    Top = 0
    Width = 899
    Height = 37
    Align = alTop
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -24
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 0
    Properties.CustomButtons.Buttons = <>
    OnChange = cxPageControl1Change
    ClientRectBottom = 33
    ClientRectLeft = 4
    ClientRectRight = 895
    ClientRectTop = 4
  end
  object Panel1: TPanel
    Left = 0
    Top = 37
    Width = 899
    Height = 577
    Align = alClient
    TabOrder = 1
    object cxGrid1: TcxGrid
      Left = 1
      Top = 1
      Width = 656
      Height = 575
      Align = alLeft
      TabOrder = 0
      object cxGrid1DBTableView1: TcxGridDBTableView
        Navigator.Buttons.CustomButtons = <>
        DataController.DataSource = OrdersSource
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <>
        DataController.Summary.SummaryGroups = <>
        OptionsSelection.CellSelect = False
        OptionsView.ColumnAutoWidth = True
        OptionsView.GroupByBox = False
        Styles.Content = cxStyle1
        Styles.Header = cxStyle2
        object cxGrid1DBTableView1Column1: TcxGridDBColumn
          Caption = #8470
          DataBinding.FieldName = 'KOD'
          HeaderAlignmentHorz = taCenter
          Options.FilteringPopup = False
          Width = 58
        end
        object cxGrid1DBTableView1Column2: TcxGridDBColumn
          Caption = #1042#1088#1077#1084#1103
          DataBinding.FieldName = 'DT'
          HeaderAlignmentHorz = taCenter
          Options.FilteringPopup = False
          Width = 85
        end
        object cxGrid1DBTableView1Column3: TcxGridDBColumn
          Caption = #1040#1076#1088#1077#1089
          DataBinding.FieldName = 'ADR'
          HeaderAlignmentHorz = taCenter
          Options.FilteringPopup = False
          Width = 116
        end
        object cxGrid1DBTableView1Column4: TcxGridDBColumn
          Caption = #1048#1084#1103' '#1082#1083#1080#1077#1085#1090#1072
          DataBinding.FieldName = 'DESCR'
          HeaderAlignmentHorz = taCenter
          Options.FilteringPopup = False
          Width = 116
        end
        object cxGrid1DBTableView1Column7: TcxGridDBColumn
          Caption = #1058#1077#1083#1077#1092#1086#1085
          DataBinding.FieldName = 'PHONE'
          HeaderAlignmentHorz = taCenter
          Options.FilteringPopup = False
          Width = 85
        end
        object cxGrid1DBTableView1Column5: TcxGridDBColumn
          Caption = #1057#1091#1084#1084#1072
          DataBinding.FieldName = 'TOTAL_SUM'
          HeaderAlignmentHorz = taCenter
          Options.FilteringPopup = False
          Width = 81
        end
        object cxGrid1DBTableView1Column6: TcxGridDBColumn
          Caption = #1055#1086#1083#1091#1095#1077#1085#1086
          DataBinding.FieldName = 'MCASH'
          HeaderAlignmentHorz = taCenter
          Options.FilteringPopup = False
          Width = 98
        end
      end
      object cxGrid1DBTableView2: TcxGridDBTableView
        Navigator.Buttons.CustomButtons = <>
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <>
        DataController.Summary.SummaryGroups = <>
      end
      object cxGrid1DBTableView3: TcxGridDBTableView
        Navigator.Buttons.CustomButtons = <>
        DataController.DataSource = LinesSource
        DataController.DetailKeyFieldNames = 'IDDOCUMENT'
        DataController.MasterKeyFieldNames = 'UID'
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <>
        DataController.Summary.SummaryGroups = <>
        OptionsSelection.CellSelect = False
        OptionsView.ColumnAutoWidth = True
        OptionsView.GroupByBox = False
        Styles.Header = cxStyle3
        object cxGrid1DBTableView3Column1: TcxGridDBColumn
          Caption = #8470
          DataBinding.FieldName = 'RN'
          HeaderAlignmentHorz = taCenter
          Options.FilteringPopup = False
          Width = 50
        end
        object cxGrid1DBTableView3Column2: TcxGridDBColumn
          Caption = #1053#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077
          DataBinding.FieldName = 'NAME'
          HeaderAlignmentHorz = taCenter
          Options.FilteringPopup = False
          Width = 200
        end
        object cxGrid1DBTableView3Column3: TcxGridDBColumn
          Caption = #1062#1077#1085#1072
          DataBinding.FieldName = 'CENA_SALES'
          HeaderAlignmentHorz = taCenter
          Options.FilteringPopup = False
        end
        object cxGrid1DBTableView3Column4: TcxGridDBColumn
          Caption = #1050#1086#1083'-'#1074#1086
          DataBinding.FieldName = 'KOLVO'
          HeaderAlignmentHorz = taCenter
          Options.FilteringPopup = False
        end
        object cxGrid1DBTableView3Column5: TcxGridDBColumn
          Caption = #1057#1091#1084#1084#1072
          DataBinding.FieldName = 'SUM_NAKL'
          HeaderAlignmentHorz = taCenter
          Options.FilteringPopup = False
        end
      end
      object cxGrid1Level1: TcxGridLevel
        Caption = #1044#1086#1089#1090#1072#1074#1082#1072
        GridView = cxGrid1DBTableView1
        object cxGrid1Level2: TcxGridLevel
          Caption = #1057#1090#1088#1086#1082#1080
          GridView = cxGrid1DBTableView3
        end
      end
    end
    object cxButton1: TcxButton
      Left = 720
      Top = 504
      Width = 131
      Height = 49
      Caption = #1047#1072#1082#1088#1099#1090#1100
      ModalResult = 2
      TabOrder = 1
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object cxButton2: TcxButton
      Left = 704
      Top = 40
      Width = 161
      Height = 73
      Caption = #1056#1077#1076#1072#1082#1090#1080#1088#1086#1074#1072#1090#1100' '#1079#1072#1082#1072#1079
      TabOrder = 2
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -19
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      WordWrap = True
      OnClick = cxButton2Click
    end
  end
  object FDConnection1: TFDConnection
    Params.Strings = (
      'Database=C:\Izgara\RDB.AKS'
      'User_Name=SYSDBA'
      'Password=sh6asqz9'
      'CharacterSet=utF8'
      'DriverID=FB')
    LoginPrompt = False
    Left = 96
    Top = 200
  end
  object tbPages: TFDQuery
    Connection = FDConnection1
    SQL.Strings = (
      'select distinct(cast(d.dt as date)) as dt'
      'from documents d'
      'where d.operacii_type = 2'
      'and d.bdel = 0'
      'and d.dt > current_date')
    Left = 248
    Top = 160
    object tbPagesDT: TDateField
      AutoGenerateValue = arDefault
      FieldName = 'DT'
      Origin = 'DT'
      ProviderFlags = []
      ReadOnly = True
    end
  end
  object Orders: TFDQuery
    Connection = FDConnection1
    SQL.Strings = (
      
        'select d.uid, d.id as kod, o.name as operator, c.name as klient,' +
        ' d.dt, d.total_sum - coalesce(d.game, 0) as total_sum,'
      
        'coalesce(i.name, d.num_nakl) as phone, coalesce(i.descr, d.descr' +
        ') as descr,'
      
        'coalesce(mr.name,'#39#39')||'#39' - '#39'||coalesce(dm.name,'#39#39')||'#39' - '#39'||coales' +
        'ce(kv.name,'#39#39') as adr,'
      '(select name from peoples where id = d.iddriver) as drivers,'
      
        'iif(extract(hour from d.dt) between 8 and 19, 500, 700) as deliv' +
        'ery, d.game,'
      
        '(select sum(mkolvo) from tbAccount where idosnovanie = d.uid and' +
        ' idoperacii_type <> 2) as mcash,'
      'gen_id(gen_tbsmeny_id,0) as idsmeny,'
      
        '(select sum(mkolvo) from tbAccount where idosnovanie = d.uid) as' +
        ' oplata'
      'from documents d'
      'inner join contragents c on(d.supplier = c.id)'
      'inner join peoples o on(d.idpeoples = o.id)'
      'left join tbAdress_items i on(d.idadress_item = i.id)'
      'left join tbadress_items kv on(i.pid = kv.id)'
      'left join tbadress_items dm on(kv.pid = dm.id)'
      'left join tbadress_items mr on(dm.pid = mr.id)'
      'left join tbadress_items tw on(mr.pid = tw.id)'
      'where d.bdel = 0'
      'and d.operacii_type = 2'
      'and cast(d.dt as date) = :D;')
    Left = 64
    Top = 304
    ParamData = <
      item
        Name = 'D'
        DataType = ftDate
        ParamType = ptInput
      end>
    object OrdersKOD: TIntegerField
      FieldName = 'KOD'
      Origin = 'ID'
    end
    object OrdersOPERATOR: TWideStringField
      AutoGenerateValue = arDefault
      FieldName = 'OPERATOR'
      Origin = 'NAME'
      ProviderFlags = []
      ReadOnly = True
      Size = 150
    end
    object OrdersKLIENT: TWideStringField
      AutoGenerateValue = arDefault
      FieldName = 'KLIENT'
      Origin = 'NAME'
      ProviderFlags = []
      ReadOnly = True
      Size = 150
    end
    object OrdersDT: TSQLTimeStampField
      FieldName = 'DT'
      Origin = 'DT'
      DisplayFormat = 'hh:nn'
    end
    object OrdersTOTAL_SUM: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'TOTAL_SUM'
      Origin = 'TOTAL_SUM'
      ProviderFlags = []
      ReadOnly = True
      currency = True
    end
    object OrdersPHONE: TWideStringField
      AutoGenerateValue = arDefault
      FieldName = 'PHONE'
      Origin = 'NAME'
      ProviderFlags = []
      ReadOnly = True
      Size = 100
    end
    object OrdersDESCR: TWideStringField
      AutoGenerateValue = arDefault
      FieldName = 'DESCR'
      Origin = 'DESCR'
      ProviderFlags = []
      ReadOnly = True
      Size = 100
    end
    object OrdersADR: TWideStringField
      AutoGenerateValue = arDefault
      FieldName = 'ADR'
      Origin = 'ADR'
      ProviderFlags = []
      ReadOnly = True
      Size = 306
    end
    object OrdersDRIVERS: TWideStringField
      AutoGenerateValue = arDefault
      FieldName = 'DRIVERS'
      Origin = 'NAME'
      ProviderFlags = []
      ReadOnly = True
      Size = 150
    end
    object OrdersDELIVERY: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'DELIVERY'
      Origin = 'DELIVERY'
      ProviderFlags = []
      ReadOnly = True
    end
    object OrdersGAME: TFloatField
      FieldName = 'GAME'
      Origin = 'GAME'
    end
    object OrdersMCASH: TFloatField
      FieldName = 'MCASH'
      Origin = 'MCASH'
      currency = True
    end
    object OrdersUID: TWideStringField
      FieldName = 'UID'
      Origin = 'UID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      FixedChar = True
      Size = 36
    end
    object OrdersIDSMENY: TLargeintField
      AutoGenerateValue = arDefault
      FieldName = 'IDSMENY'
      Origin = 'IDSMENY'
      ProviderFlags = []
      ReadOnly = True
    end
    object OrdersOPLATA: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'OPLATA'
      Origin = 'OPLATA'
      ProviderFlags = []
      ReadOnly = True
    end
  end
  object OrdersSource: TDataSource
    DataSet = Orders
    Left = 128
    Top = 312
  end
  object D_Lines: TFDQuery
    MasterSource = OrdersSource
    MasterFields = 'UID'
    Connection = FDConnection1
    SQL.Strings = (
      
        'select row_number() over (partition by l.iddocument) as rn, p.id' +
        ', l.iddocument, p.name, l.kolvo, l.cena_sales, l.sum_nakl'
      'from d_lines l join d_product p on l.product = p.id'
      'where l.iddocument in('
      'select d.uid'
      'from documents d'
      'where d.bdel = 0'
      'and d.operacii_type = 2'
      'and cast(d.dt as date) = :D)')
    Left = 288
    Top = 256
    ParamData = <
      item
        Name = 'D'
        ParamType = ptInput
      end>
    object D_LinesRN: TLargeintField
      FieldName = 'RN'
      Origin = 'RN'
      Required = True
    end
    object D_LinesID: TIntegerField
      FieldName = 'ID'
      Origin = 'ID'
      Required = True
    end
    object D_LinesNAME: TWideStringField
      FieldName = 'NAME'
      Origin = 'NAME'
      Size = 150
    end
    object D_LinesKOLVO: TFloatField
      FieldName = 'KOLVO'
      Origin = 'KOLVO'
    end
    object D_LinesCENA_SALES: TFloatField
      FieldName = 'CENA_SALES'
      Origin = 'CENA_SALES'
      currency = True
    end
    object D_LinesSUM_NAKL: TFloatField
      FieldName = 'SUM_NAKL'
      Origin = 'SUM_NAKL'
      currency = True
    end
    object D_LinesIDDOCUMENT: TWideStringField
      FieldName = 'IDDOCUMENT'
      Origin = 'IDDOCUMENT'
      FixedChar = True
      Size = 36
    end
  end
  object LinesSource: TDataSource
    DataSet = D_Lines
    Left = 360
    Top = 256
  end
  object cxStyleRepository1: TcxStyleRepository
    PixelsPerInch = 96
    object cxStyle1: TcxStyle
      AssignedValues = [svFont]
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
    end
    object cxStyle3: TcxStyle
      AssignedValues = [svFont]
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
    end
    object cxStyle2: TcxStyle
      AssignedValues = [svFont]
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
    end
  end
  object UpdDoc: TFDCommand
    Connection = FDConnection1
    CommandText.Strings = (
      'update documents '
      'set idsmeny = :id,'
      'provod = 0'
      'where uid = :UID;')
    ParamData = <
      item
        Name = 'ID'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end
      item
        Name = 'UID'
        DataType = ftFixedWideChar
        ParamType = ptInput
        Size = 36
      end>
    Left = 448
    Top = 168
  end
end