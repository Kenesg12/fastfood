﻿object fmService: TfmService
  Left = 0
  Top = 0
  BorderStyle = bsDialog
  Caption = #1057#1077#1088#1074#1080#1089
  ClientHeight = 295
  ClientWidth = 446
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  OnCreate = FormCreate
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 8
    Top = 212
    Width = 3
    Height = 13
  end
  object cxPageControl1: TcxPageControl
    Left = 0
    Top = 0
    Width = 446
    Height = 295
    Align = alClient
    TabOrder = 0
    Properties.ActivePage = cxTabSheet1
    Properties.CustomButtons.Buttons = <>
    OnChange = cxPageControl1Change
    ClientRectBottom = 291
    ClientRectLeft = 4
    ClientRectRight = 442
    ClientRectTop = 24
    object cxTabSheet1: TcxTabSheet
      Caption = #1054#1090#1095#1077#1090#1099
      ImageIndex = 0
      object cxButton4: TcxButton
        Left = 48
        Top = 48
        Width = 113
        Height = 25
        Hint = 'ZADEN'
        Caption = #1050#1088#1072#1090#1082#1080#1081' '#1079#1072' '#1076#1077#1085#1100
        TabOrder = 0
        OnClick = cxButton4Click
      end
      object cxButton5: TcxButton
        Left = 48
        Top = 104
        Width = 113
        Height = 25
        Hint = 'ZADEN_FULL'
        Caption = #1055#1086#1076#1088#1086#1073#1085#1086
        TabOrder = 1
        OnClick = cxButton4Click
      end
      object cxButton6: TcxButton
        Left = 48
        Top = 160
        Width = 121
        Height = 28
        Hint = 'ZADEN_FULL_LIST'
        Caption = #1055#1086#1076#1088#1086#1073#1085#1086' '#1087#1086' '#1090#1086#1074#1072#1088#1072#1084
        TabOrder = 2
        OnClick = cxButton4Click
      end
      object cxButton8: TcxButton
        Left = 208
        Top = 48
        Width = 113
        Height = 25
        Caption = #1054#1082#1085#1086' '#1088#1072#1073#1086#1090#1099' '#1089' '#1050#1050#1052
        Colors.DefaultText = clRed
        TabOrder = 3
        OnClick = cxButton8Click
      end
    end
    object cxTabSheet2: TcxTabSheet
      Caption = #1054#1073#1084#1077#1085' '#1076#1072#1085#1085#1099#1084#1080
      ImageIndex = 1
      object cxProgressBar1: TcxProgressBar
        Left = 0
        Top = 246
        Align = alBottom
        TabOrder = 0
        Visible = False
        Width = 438
      end
      object cxButton2: TcxButton
        Left = 48
        Top = 195
        Width = 257
        Height = 25
        Caption = #1042#1099#1075#1088#1091#1079#1080#1090#1100' '#1076#1072#1085#1085#1099#1077
        SpeedButtonOptions.CanBeFocused = False
        TabOrder = 1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clRed
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        OnClick = cxButton2Click
      end
      object cxButtonEdit2: TcxButtonEdit
        Left = 48
        Top = 168
        Properties.Buttons = <
          item
            Default = True
            Kind = bkEllipsis
          end>
        Properties.OnButtonClick = cxButtonEdit2PropertiesButtonClick
        TabOrder = 2
        Text = 'cxButtonEdit2'
        Width = 257
      end
      object cxButton1: TcxButton
        Left = 48
        Top = 124
        Width = 257
        Height = 25
        Caption = #1047#1072#1075#1088#1091#1079#1080#1090#1100' '#1076#1072#1085#1085#1099#1077
        SpeedButtonOptions.CanBeFocused = False
        TabOrder = 3
        OnClick = cxButton1Click
      end
      object cxButtonEdit1: TcxButtonEdit
        Left = 48
        Top = 97
        Properties.Buttons = <
          item
            Default = True
            Kind = bkEllipsis
          end>
        Properties.OnButtonClick = cxButtonEdit1PropertiesButtonClick
        TabOrder = 4
        Text = 'cxButtonEdit1'
        Width = 257
      end
      object cxButton3: TcxButton
        Left = 48
        Top = 24
        Width = 129
        Height = 41
        Caption = #1054#1087#1077#1088#1072#1094#1080#1080
        TabOrder = 5
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
    end
    object cxTabSheet3: TcxTabSheet
      Caption = #1042#1086#1079#1074#1088#1072#1090' '#1090#1086#1074#1072#1088#1072
      ImageIndex = 2
      object cxButton7: TcxButton
        Left = 40
        Top = 40
        Width = 97
        Height = 25
        Caption = #1042#1077#1088#1085#1091#1090#1100' '#1090#1086#1074#1072#1088'?'
        TabOrder = 0
        OnClick = cxButton7Click
      end
    end
    object Депозит: TcxTabSheet
      Caption = #1044#1077#1087#1086#1079#1080#1090
      ImageIndex = 3
    end
  end
  object OpenDialog1: TOpenDialog
    Left = 336
    Top = 72
  end
  object frxReport1: TfrxReport
    Version = '5.4.6'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 40094.669762002300000000
    ReportOptions.LastChange = 43088.118742442100000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'var ini: TiniFile;'
      'Begin'
      
        ' ini:= TiniFile.create(ExtractFilePath(Application.exename)+'#39'con' +
        'fig.ini'#39');'
      ' Set('#39'IDSTATION'#39', ini.readinteger('#39'DATABASE'#39', '#39'STATION'#39', 0));'
      'End.')
    OnReportPrint = 'frxReport1OnReportPrint'
    Left = 256
    Top = 24
    Datasets = <
      item
        DataSet = frxReport1.FDQuery1
        DataSetName = 'IBXQuery1'
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
        Name = 'start'
        Value = Null
      end
      item
        Name = 'idstation'
        Value = Null
      end>
    Style = <>
    object Data: TfrxDataPage
      Height = 1000.000000000000000000
      Width = 1000.000000000000000000
      object FDQuery1: TfrxFDQuery
        UserName = 'IBXQuery1'
        CloseDataSource = True
        BCDToCurrency = False
        IgnoreDupParams = False
        Params = <
          item
            Name = 'id'
            DataType = ftInteger
            Expression = '<idstation>'
          end>
        SQL.Strings = (
          'SELECT o.group_name as Podrazd,'
          
            'o.name as usluga, sum(o.sum_nakl) as summa, SUM(o.kolvo) as kolv' +
            'o,'
          'SUM(o.margin*o.kolvo)as obsluzh,'
          'sum(o.mdiscount)as disc, o.cena_sales as cena,'
          's.name as station,'
          
            '(select dtstart from tbsmeny where id = gen_id(gen_tbsmeny_id, 0' +
            '))    '
          'FROM documents p'
          '     INNER JOIN d_lines o ON  (o.iddocument = p.uid)'
          '    INNER JOIN D_product m  ON (m.id = o.product)'
          '    inner join tbKoord kr on(p.idkoord = kr.id)'
          '    inner join tbHall h on(kr.idhall = h.id)'
          '    inner join tbStation s on(h.idstation = s.id)'
          
            'WHERE  p.bDel = 0 and iif(p.idSmeny = p.iddriver, p.idSmeny, p.i' +
            'ddriver) = gen_id(gen_tbsmeny_id, 0)'
          
            'and p.operacii_type = 2 and p.idstation = :id  and p.idformaopla' +
            'ty > 0'
          'and not p.closed_time is null         '
          
            'GROUP BY s.name, o.group_name,  o.name, o.cena_sales, p.supplier' +
            '  ')
        pLeft = 240
        pTop = 100
        Parameters = <
          item
            Name = 'id'
            DataType = ftInteger
            Expression = '<idstation>'
          end>
      end
    end
    object Page1: TfrxReportPage
      PaperWidth = 80.000000000000000000
      PaperHeight = 297.000000000000000000
      PaperSize = 256
      LeftMargin = 5.000000000000000000
      RightMargin = 5.000000000000000000
      TopMargin = 10.000000000000000000
      BottomMargin = 10.000000000000000000
      EndlessHeight = True
      VGuides.Strings = (
        '162.51979'
        '192.75603'
        '219.21274'
        '3.77953')
      object ReportTitle1: TfrxReportTitle
        FillType = ftBrush
        Height = 92.598447170000000000
        Top = 16.000000000000000000
        Width = 264.567100000000000000
        object Memo2: TfrxMemoView
          Left = 3.779530000000000000
          Width = 254.637910000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWhite
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Fill.BackColor = clBlack
          HAlign = haCenter
          Memo.UTF8W = (
            #1040#1082#1090' '#1088#1077#1072#1083#1080#1079#1072#1094#1080#1080)
          ParentFont = False
        end
        object Memo3: TfrxMemoView
          Left = 3.779530000000000000
          Top = 36.354360000000000000
          Width = 256.637910000000000000
          Height = 18.897650000000000000
          DisplayFormat.FormatStr = 'mm.dd.yyyy  hh:nn'
          DisplayFormat.Kind = fkDateTime
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNone
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8W = (
            'c [IBXQuery1."DTSTART" #ddd mmmm yyyy'#1075'. hh:mm]')
          ParentFont = False
        end
        object Line1: TfrxLineView
          Left = 3.779530000000000000
          Top = 76.370130000000000000
          Width = 261.149721020000000000
          Color = clBlack
          Frame.Style = fsDash
          Frame.Typ = [ftTop]
          Frame.Width = 2.000000000000000000
        end
        object Memo15: TfrxMemoView
          Left = 3.779530000000000000
          Top = 54.692950000000000000
          Width = 257.637910000000000000
          Height = 18.897650000000000000
          DisplayFormat.FormatStr = 'mm.dd.yyyy  hh:nn'
          DisplayFormat.Kind = fkDateTime
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNone
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8W = (
            #1087#1086' [<Date>+<Time> #ddd mmmm yyyy'#1075'. hh:mm]')
          ParentFont = False
        end
        object IBXQuery1STATION: TfrxMemoView
          Left = 4.118120000000000000
          Top = 18.897650000000000000
          Width = 257.008040000000000000
          Height = 15.118120000000000000
          DataSet = frxReport1.FDQuery1
          DataSetName = 'IBXQuery1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Width = 1.500000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            #1052#1077#1089#1090#1086' '#1087#1088#1086#1076#1072#1078#1080': [IBXQuery1."STATION"]')
          ParentFont = False
        end
      end
      object MasterData1: TfrxMasterData
        FillType = ftBrush
        Height = 18.897650000000000000
        Top = 184.000000000000000000
        Width = 264.567100000000000000
        DataSet = frxReport1.FDQuery1
        DataSetName = 'IBXQuery1'
        RowCount = 0
        object Memo5: TfrxMemoView
          Left = 219.212740000000000000
          Width = 45.354360000000000000
          Height = 18.897650000000000000
          DataSet = frxReport1.FDQuery1
          DataSetName = 'IBXQuery1'
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNone
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haRight
          Memo.UTF8W = (
            '[IBXQuery1."SUMMA" #n%2.0n]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo6: TfrxMemoView
          Left = 162.519790000000000000
          Width = 30.236240000000000000
          Height = 18.897650000000000000
          DataSet = frxReport1.FDQuery1
          DataSetName = 'IBXQuery1'
          DisplayFormat.FormatStr = '0.##'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNone
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8W = (
            '[IBXQuery1."CENA"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo4: TfrxMemoView
          Left = 3.779530000000000000
          Width = 166.299320000000000000
          Height = 18.897650000000000000
          DataField = 'USLUGA'
          DataSet = frxReport1.FDQuery1
          DataSetName = 'IBXQuery1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftTop, ftBottom]
          Memo.UTF8W = (
            '[IBXQuery1."USLUGA"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo7: TfrxMemoView
          Left = 191.204700000000000000
          Width = 30.236240000000000000
          Height = 18.897650000000000000
          DisplayFormat.FormatStr = '0.##'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            '[IBXQuery1."KOLVO"]')
          ParentFont = False
          VAlign = vaCenter
        end
      end
      object ReportSummary1: TfrxReportSummary
        FillType = ftBrush
        Height = 37.795300000000000000
        Top = 268.000000000000000000
        Width = 264.567100000000000000
        object Line2: TfrxLineView
          Left = 3.779530000000000000
          Top = 3.000000000000000000
          Width = 260.637910000000000000
          Color = clBlack
          Frame.Style = fsDash
          Frame.Typ = [ftTop]
          Frame.Width = 2.000000000000000000
        end
        object Memo13: TfrxMemoView
          Left = 3.779530000000000000
          Top = 7.559060000000000000
          Width = 64.252010000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNone
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            #1048#1058#1054#1043#1054':')
          ParentFont = False
        end
        object Memo14: TfrxMemoView
          Left = 68.031540000000000000
          Top = 7.559060000000000000
          Width = 194.385900000000000000
          Height = 18.897650000000000000
          DisplayFormat.FormatStr = '%2.2m'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNone
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            '[SUM(<IBXQuery1."SUMMA">,MasterData1,3)]')
          ParentFont = False
        end
      end
      object GroupHeader1: TfrxGroupHeader
        FillType = ftBrush
        Height = 34.708671180000000000
        Top = 128.000000000000000000
        Width = 264.567100000000000000
        Condition = '<IBXQuery1."PODRAZD">'
        object Memo9: TfrxMemoView
          Left = 162.519790000000000000
          Top = 19.519597170000000000
          Width = 30.236240000000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftBottom]
          Frame.Width = 1.500000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            #1062#1077#1085#1072)
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo10: TfrxMemoView
          Left = 192.756030000000000000
          Top = 19.519597170000000000
          Width = 26.456710000000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftBottom]
          Frame.Width = 1.500000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            #1050#1086#1083)
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo11: TfrxMemoView
          Left = 219.212740000000000000
          Top = 19.519597170000000000
          Width = 45.354360000000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftBottom]
          Frame.Width = 1.500000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            #1057#1091#1084#1084#1072)
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo8: TfrxMemoView
          Left = 3.779530000000000000
          Top = 19.590551180000000000
          Width = 158.740260000000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftBottom]
          Frame.Width = 1.500000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            #1053#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077)
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo1: TfrxMemoView
          Left = 3.401574800000000000
          Top = 0.314960630000000000
          Width = 260.787570000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold, fsItalic]
          Frame.Typ = [ftBottom]
          Frame.Width = 1.500000000000000000
          Memo.UTF8W = (
            '[IBXQuery1."PODRAZD"]')
          ParentFont = False
        end
      end
      object GroupFooter1: TfrxGroupFooter
        FillType = ftBrush
        Height = 22.677180000000000000
        Top = 224.000000000000000000
        Width = 264.567100000000000000
        object Memo12: TfrxMemoView
          Left = 162.519790000000000000
          Width = 102.047310000000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 1.500000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            '[SUM(<IBXQuery1."SUMMA">,MasterData1) #n%2.0n]')
          ParentFont = False
        end
        object Memo16: TfrxMemoView
          Left = 3.779530000000000000
          Width = 158.740260000000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 1.500000000000000000
          Memo.UTF8W = (
            #1055#1086#1076#1080#1090#1086#1075': ')
          ParentFont = False
        end
      end
    end
  end
  object tbReports: TFDQuery
    ConnectionName = 'FDCONN'
    UpdateOptions.AssignedValues = [uvEDelete, uvEInsert, uvEUpdate]
    UpdateOptions.EnableDelete = False
    UpdateOptions.EnableInsert = False
    UpdateOptions.EnableUpdate = False
    SQL.Strings = (
      'SELECT'
      '    ID,'
      '    NAME,'
      '    REPORT_FILE'
      'FROM'
      '    TBREPORTS '
      'WHERE SYS = 1'
      '')
    Left = 224
    Top = 216
    object tbReportsID: TFDAutoIncField
      FieldName = 'ID'
      Origin = 'ID'
      ProviderFlags = [pfInWhere, pfInKey]
      ReadOnly = True
    end
    object tbReportsNAME: TWideStringField
      FieldName = 'NAME'
      Origin = 'NAME'
      Size = 100
    end
    object tbReportsREPORT_FILE: TBlobField
      FieldName = 'REPORT_FILE'
      Origin = 'REPORT_FILE'
    end
  end
  object SendData: TFDQuery
    ConnectionName = 'FDCONN'
    SQL.Strings = (
      'select t.id, gen_id(gen_tbsmeny_id, 0) as idsmeny'
      'from ibe$log_tables t'
      'where t.id > (select idLogs from rep$last)'
      'order by t.id')
    Left = 392
    Top = 176
    object SendDataID: TIntegerField
      FieldName = 'ID'
    end
    object SendDataIDSMENY: TIntegerField
      FieldName = 'IDSMENY'
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
      ''
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
        Name = 'PID'
        ParamType = ptInput
      end>
    Left = 24
    Top = 232
  end
  object Vozvrat: TFDCommand
    CommandText.Strings = (
      'update d_lines l'
      'set l.kolvo = -l.kolvo'
      'where l.iddocument = :iddoc;')
    ParamData = <
      item
        Name = 'IDDOC'
        ParamType = ptInput
      end>
    Left = 80
    Top = 232
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
    Left = 144
    Top = 232
  end
  object QTxt: TFDQuery
    ConnectionName = 'FDCONN'
    SQL.Strings = (
      'execute block (cur_key integer = :cur_key)'
      'returns(SQL_SCRP blob sub_type 1 segment size 80)'
      'as'
      'declare variable TAB_NAME varchar(67) character set UTF8;'
      'declare variable IUD char(1) character set UTF8;'
      'declare variable FIELD_NAME varchar(67) character set UTF8;'
      'declare variable NEW_VALUE varchar(255) character set UTF8;'
      
        'declare variable INS_FIELDS blob sub_type 1 segment size 80 char' +
        'acter set UTF8;'
      
        'declare variable RES_FIELDS blob sub_type 1 segment size 80 char' +
        'acter set UTF8;'
      'declare variable KEY_FIELD varchar(67) character set UTF8;'
      'declare variable KEY_VALUE char(36) character set UTF8;'
      'declare variable CNT integer;'
      'BEGIN'
      ''
      'sql_scrp = '#39#39';'
      ''
      
        '  execute statement  '#39'select t.table_name, t.operation from ibe$' +
        'log_tables t'#39'||ASCII_CHAR(13) || ASCII_CHAR(10)||'
      '      '#39'where t.id = '#39'||:cur_key'
      '     into :tab_name, :iud;'
      ''
      '           ins_fields = '#39#39';'
      '           res_fields = '#39#39';'
      '           if (:iud = '#39'I'#39') then'
      '            begin'
      
        '             for select k.key_field, k.key_value, f.field_name, ' +
        'f.new_value'
      
        '               from ibe$log_keys k inner join ibe$log_fields f o' +
        'n(k.log_tables_id=f.log_tables_id)'
      '               where k.log_tables_id = :cur_key'
      
        '              into :key_field, :key_value, :field_name, :new_val' +
        'ue do'
      '               begin'
      '                if (ins_fields = '#39#39') then'
      '                 begin'
      '                  ins_fields = :field_name;'
      '                  res_fields = '#39#39#39#39'||:new_value||'#39#39#39#39';'
      '                 end'
      '                else'
      '                 begin'
      '                  ins_fields = :ins_fields||'#39', '#39'||:field_name;'
      
        '                  res_fields = :res_fields||'#39', '#39#39#39'||:new_value||' +
        #39#39#39#39';'
      '                 end'
      '               end'
      ''
      '              if (:ins_fields <> '#39#39') then'
      
        '              sql_scrp = :sql_scrp||'#39'update or insert into '#39'||:t' +
        'ab_name||'#39'('#39'||:ins_fields||'#39')'#39'|| ASCII_CHAR(13) || ASCII_CHAR(10' +
        ')||'#39'values('#39'||:res_fields||'#39');'#39'||ASCII_CHAR(13) || ASCII_CHAR(10' +
        ');'
      ''
      '            end'
      ''
      '           else  if (:iud = '#39'U'#39') then'
      '            begin'
      
        '             for select k.key_field, k.key_value, f.field_name, ' +
        'f.new_value'
      
        '             from ibe$log_keys k inner join ibe$log_fields f on(' +
        'k.log_tables_id=f.log_tables_id)'
      '             where k.log_tables_id = :cur_key'
      
        '              into :key_field, :key_value, :field_name, :new_val' +
        'ue do'
      '               begin'
      '                 if (ins_fields = '#39#39') then'
      '                  begin'
      
        '                   if (:new_value is null) then ins_fields = '#39'se' +
        't '#39'||:field_name||'#39' = null'#39';'
      
        '                   else ins_fields = '#39'set '#39'||:field_name||'#39' = '#39#39 +
        #39'||:new_value||'#39#39#39#39';'
      '                  end'
      '                else'
      
        '                  if (:new_value is null) then ins_fields = :ins' +
        '_fields||'#39', '#39'||:field_name||'#39' = null'#39';'
      
        '                  else ins_fields = :ins_fields||'#39', '#39'||:field_na' +
        'me||'#39' = '#39#39#39'||:new_value||'#39#39#39#39';'
      '               end'
      '             if (ins_fields <> '#39#39') then'
      
        '              sql_scrp = :sql_scrp||'#39'update '#39'||:tab_name|| ASCII' +
        '_CHAR(13) || ASCII_CHAR(10)||:ins_fields|| ASCII_CHAR(13) || ASC' +
        'II_CHAR(10) ||'#39'where '#39'||:key_field||'#39' = '#39#39#39'||:key_value||'#39#39#39';'#39'||' +
        ' ASCII_CHAR(13) || ASCII_CHAR(10);'
      ''
      '            end'
      '           else if (:iud = '#39'D'#39') then'
      '            begin'
      ''
      
        '              select k.key_field, k.key_value from ibe$log_keys ' +
        'k'
      '              where k.log_tables_id = :cur_key'
      '              into :key_field, :key_value;'
      ''
      
        '              sql_scrp = :sql_scrp||'#39'delete from '#39'||:tab_name||'#39 +
        ' where '#39'||:key_field||'#39' = '#39#39#39'||:key_value||'#39#39#39';'#39'|| ASCII_CHAR(13' +
        ') || ASCII_CHAR(10);'
      ''
      '            end'
      ''
      ' suspend;'
      ''
      'END')
    Left = 288
    Top = 224
    ParamData = <
      item
        Name = 'CUR_KEY'
        ParamType = ptInput
      end
      item
        Name = 'TAB_NAME'
        ParamType = ptInput
      end
      item
        Name = 'IUD'
        ParamType = ptInput
      end
      item
        Name = 'KEY_FIELD'
        ParamType = ptInput
      end
      item
        Name = 'KEY_VALUE'
        ParamType = ptInput
      end
      item
        Name = 'FIELD_NAME'
        ParamType = ptInput
      end
      item
        Name = 'NEW_VALUE'
        ParamType = ptInput
      end
      item
        Name = 'INS_FIELDS'
        ParamType = ptInput
      end
      item
        Name = 'RES_FIELDS'
        ParamType = ptInput
      end
      item
        Name = 'SQL_SCRP'
        ParamType = ptInput
      end>
  end
  object upd_replast: TFDCommand
    CommandText.Strings = (
      'update rep$last set idlogs = :cur_key;')
    ParamData = <
      item
        Name = 'CUR_KEY'
        ParamType = ptInput
      end>
    Left = 360
    Top = 216
  end
  object LoadData: TFDCommand
    CommandText.Strings = (
      'execute block (PATH_FILE varchar(1000) = :PATH_FILE)'
      'as'
      'declare variable I integer;'
      'declare variable FIRST_KEY integer;'
      'declare variable CUR_KEY integer;'
      'declare variable TAB_NAME varchar(67);'
      'declare variable IUD char(1);'
      'declare variable INS_FIELDS blob sub_type 1 segment size 80;'
      'declare variable RES_FIELDS blob sub_type 1 segment size 80;'
      'declare variable KEY_FIELD varchar(67);'
      'declare variable KEY_VALUE D_UUID;'
      'declare variable FIELD_NAME varchar(67);'
      'declare variable NEW_VALUE varchar(255);'
      'BEGIN'
      ''
      
        'IF (coalesce((select rdb$external_file from rdb$relations where ' +
        'rdb$relation_name = '#39'TABLES_REP'#39'), :path_file) <> :path_file || ' +
        #39'TABLES'#39') THEN'
      ' BEGIN      --exception error_accept;'
      
        '            EXECUTE STATEMENT '#39'DROP TABLE TABLES_REP'#39' WITH AUTON' +
        'OMOUS TRANSACTION;'
      
        '            EXECUTE STATEMENT '#39'DROP TABLE FIELDS_REP'#39' WITH AUTON' +
        'OMOUS TRANSACTION;'
      
        '            EXECUTE STATEMENT '#39'DROP TABLE KEYS_REP'#39' WITH AUTONOM' +
        'OUS TRANSACTION;'
      ' END'
      
        'SELECT COUNT(*) FROM RDB$RELATIONS WHERE RDB$RELATION_NAME = '#39'TA' +
        'BLES_REP'#39' INTO i;'
      ''
      'if (:i = 0) then'
      'BEGIN'
      
        'EXECUTE STATEMENT '#39'CREATE TABLE TABLES_REP EXTERNAL '#39' || ASCII_C' +
        'HAR(39) || :path_file || '#39'TABLES'#39' || ASCII_CHAR(39) || '#39' ('
      '    ID          NUMERIC(18,0) NOT NULL,'
      '    TABLE_NAME  VARCHAR(67) NOT NULL,'
      '    OPERATION   VARCHAR(1) NOT NULL,'
      '    DATE_TIME   TIMESTAMP NOT NULL,'
      '    USER_NAME   VARCHAR(67) NOT NULL'
      ');'#39' WITH AUTONOMOUS TRANSACTION;'
      ''
      
        'EXECUTE STATEMENT '#39'CREATE TABLE FIELDS_REP EXTERNAL '#39' || ASCII_C' +
        'HAR(39) || PATH_FILE || '#39'FIELDS'#39' || ASCII_CHAR(39) || '#39' ('
      '    LOG_TABLES_ID  NUMERIC(18,0) NOT NULL,'
      '    FIELD_NAME     VARCHAR(67) NOT NULL,'
      '    OLD_VALUE      VARCHAR(255),'
      '    NEW_VALUE      VARCHAR(255)'
      ');'#39' WITH AUTONOMOUS TRANSACTION;'
      ''
      
        'EXECUTE STATEMENT '#39'CREATE TABLE KEYS_REP EXTERNAL '#39' || ASCII_CHA' +
        'R(39) || PATH_FILE || '#39'KEYS'#39' || ASCII_CHAR(39) || '#39' ('
      '    LOG_TABLES_ID  NUMERIC(18,0) NOT NULL,'
      '    KEY_FIELD      VARCHAR(67) NOT NULL,'
      '    KEY_VALUE      VARCHAR(255)'
      ');'#39' WITH AUTONOMOUS TRANSACTION;'
      ''
      'END'
      ''
      '    select coalesce(srvlogs, 0)+1 from rep$last into :first_key;'
      ''
      
        '    for execute statement('#39'select t.id, t.table_name, t.operatio' +
        'n'
      '        from TABLES_REP t'
      '        where t.id > '#39'||:first_key||'#39' order by t.id'#39')'
      '        into :cur_key, :tab_name, :iud do'
      '         BEGIN'
      '           ins_fields = '#39#39';'
      '           res_fields = '#39#39';'
      '           if (:iud = '#39'I'#39') then'
      '            begin'
      
        '             for execute statement('#39'select k.key_field, k.key_va' +
        'lue, f.field_name, f.new_value'
      
        '             from KEYS_REP k inner join FIELDS_REP f on(k.log_ta' +
        'bles_id=f.log_tables_id)'
      '             where k.log_tables_id = :id'#39')(id := :cur_key)'
      
        '             into :key_field, :key_value, :field_name, :new_valu' +
        'e do'
      '               begin'
      '                if (ins_fields = '#39#39') then'
      '                 begin'
      '                  ins_fields = :field_name;'
      
        '                  res_fields = '#39#39#39#39'||replace(:new_value, '#39#39#39#39', '#39 +
        #39#39#39#39#39')||'#39#39#39#39';'
      '                 end'
      '                else'
      '                 begin'
      '                  ins_fields = :ins_fields||'#39', '#39'||:field_name;'
      
        '                  res_fields = :res_fields||'#39', '#39#39#39'||replace(:new' +
        '_value, '#39#39#39#39', '#39#39#39#39#39#39')||'#39#39#39#39';'
      '                 end'
      '               end'
      ''
      
        '               execute statement('#39'update or insert into '#39'||:tab_' +
        'name||'#39'('#39'||:ins_fields||'#39')'#39'|| ASCII_CHAR(13) || ASCII_CHAR(10) |' +
        '|'#39'values('#39'||:res_fields||'#39');'#39');'
      ''
      '            end'
      ''
      '           else if (:iud = '#39'U'#39') then'
      '            begin'
      
        '             for execute statement('#39'select k.key_field, k.key_va' +
        'lue, f.field_name, f.new_value'
      
        '             from KEYS_REP k inner join FIELDS_REP f on(k.log_ta' +
        'bles_id=f.log_tables_id)'
      '             where k.log_tables_id = :id'#39')(id := :cur_key)'
      
        '              into :key_field, :key_value, :field_name, :new_val' +
        'ue do'
      '               begin'
      '                 if (ins_fields = '#39#39') then'
      '                  begin'
      
        '                   if (:new_value is null) then ins_fields = '#39'se' +
        't '#39'||:field_name||'#39' = null'#39';'
      
        '                   else ins_fields = '#39'set '#39'||:field_name||'#39' = '#39#39 +
        #39'||replace(:new_value, '#39#39#39#39', '#39#39#39#39#39#39')||'#39#39#39#39';'
      '                  end'
      '                else'
      
        '                  if (:new_value is null) then ins_fields = :ins' +
        '_fields||'#39', '#39'||:field_name||'#39' = null'#39';'
      
        '                  else ins_fields = :ins_fields||'#39', '#39'||:field_na' +
        'me||'#39' = '#39#39#39'||replace(:new_value, '#39#39#39#39', '#39#39#39#39#39#39')||'#39#39#39#39';'
      '               end'
      '              if (:ins_fields <> '#39#39') then'
      
        '              execute statement('#39'update '#39'||:tab_name|| ASCII_CHA' +
        'R(13) || ASCII_CHAR(10)||:ins_fields|| ASCII_CHAR(13) || ASCII_C' +
        'HAR(10) ||'#39'where '#39'||:key_field||'#39' = '#39#39#39'||:key_value||'#39#39#39#39');'
      ''
      '            end'
      '           else if (:iud = '#39'D'#39') then'
      '            begin'
      
        '              execute statement('#39'select k.key_field, k.key_value' +
        ' from ibe$log_keys k where k.log_tables_id = :id'#39')(id := :cur_ke' +
        'y)'
      '              into :key_field, :key_value;'
      
        '              execute statement ('#39'delete from '#39'||:tab_name||'#39' wh' +
        'ere '#39'||:key_field||'#39' = '#39#39#39'||:key_value||'#39#39#39#39');'
      '            end'
      '         END'
      ''
      '   if (:first_key < :cur_key) then'
      '   update rep$last'
      '   set srvlogs = :cur_key;'
      ''
      '            /*EXECUTE STATEMENT '#39'DROP TABLE TABLES_REP'#39';'
      '            EXECUTE STATEMENT '#39'DROP TABLE FIELDS_REP'#39';'
      '            EXECUTE STATEMENT '#39'DROP TABLE KEYS_REP'#39';*/'
      ' '
      'END')
    ParamData = <
      item
        Name = 'PATH_FILE'
        ParamType = ptInput
      end
      item
        Name = 'I'
        ParamType = ptInput
      end
      item
        Name = 'FIRST_KEY'
        ParamType = ptInput
      end
      item
        Name = 'CUR_KEY'
        ParamType = ptInput
      end
      item
        Name = 'TAB_NAME'
        ParamType = ptInput
      end
      item
        Name = 'IUD'
        ParamType = ptInput
      end
      item
        Name = 'KEY_FIELD'
        ParamType = ptInput
      end
      item
        Name = 'KEY_VALUE'
        ParamType = ptInput
      end
      item
        Name = 'FIELD_NAME'
        ParamType = ptInput
      end
      item
        Name = 'NEW_VALUE'
        ParamType = ptInput
      end
      item
        Name = 'INS_FIELDS'
        ParamType = ptInput
      end
      item
        Name = 'RES_FIELDS'
        ParamType = ptInput
      end>
    Left = 352
    Top = 24
  end
end
