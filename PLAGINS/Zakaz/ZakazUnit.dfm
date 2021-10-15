object fmZakaz: TfmZakaz
  Left = 0
  Top = 0
  BorderStyle = bsNone
  Caption = 'fmZakaz'
  ClientHeight = 600
  ClientWidth = 800
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  OnClose = FormClose
  OnCreate = FormCreate
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Label8: TLabel
    Left = 525
    Top = 313
    Width = 122
    Height = 13
    Caption = #1044#1072#1090#1072' '#1080' '#1074#1088#1077#1084#1103' '#1079#1072#1082#1072#1079#1072
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object cxPageControl1: TcxPageControl
    Left = 0
    Top = 376
    Width = 800
    Height = 224
    Align = alBottom
    TabOrder = 0
    Properties.ActivePage = cxTabSheet1
    Properties.CustomButtons.Buttons = <>
    Properties.HideTabs = True
    ClientRectBottom = 220
    ClientRectLeft = 4
    ClientRectRight = 796
    ClientRectTop = 4
    object cxTabSheet1: TcxTabSheet
      Caption = 'cxTabSheet1'
      ImageIndex = 0
      object TouchKeyboard1: TTouchKeyboard
        Left = 0
        Top = 0
        Width = 792
        Height = 216
        Align = alClient
        GradientEnd = clSilver
        GradientStart = clGray
        Layout = 'Standard'
      end
    end
    object cxTabSheet2: TcxTabSheet
      Caption = 'cxTabSheet2'
      ImageIndex = 1
      ExplicitLeft = 0
      ExplicitTop = 0
      ExplicitWidth = 0
      ExplicitHeight = 0
      object TouchKeyboard2: TTouchKeyboard
        Left = 0
        Top = 0
        Width = 255
        Height = 216
        Align = alLeft
        GradientEnd = clSilver
        GradientStart = clGray
        Layout = 'NumPad'
      end
      object TouchKeyboard3: TTouchKeyboard
        Left = 520
        Top = 0
        Width = 272
        Height = 216
        Align = alRight
        GradientEnd = clSilver
        GradientStart = clGray
        Layout = 'NumPad'
      end
    end
  end
  object cxButton1: TcxButton
    Left = 108
    Top = 309
    Width = 147
    Height = 52
    Caption = #1057#1054#1061#1056#1040#1053#1048#1058#1068
    Enabled = False
    ModalResult = 2
    TabOrder = 1
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlue
    Font.Height = -21
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    OnClick = cxButton1Click
  end
  object cxButton2: TcxButton
    Left = 264
    Top = 309
    Width = 145
    Height = 52
    Caption = #1054#1055#1051#1040#1058#1040
    Enabled = False
    ModalResult = 1
    TabOrder = 2
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clPurple
    Font.Height = -23
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    OnClick = cxButton2Click
  end
  object cxButton3: TcxButton
    Left = 1
    Top = 309
    Width = 97
    Height = 52
    Caption = #1054#1058#1052#1045#1053#1040
    ModalResult = 2
    SpeedButtonOptions.CanBeFocused = False
    TabOrder = 3
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clRed
    Font.Height = -21
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object cxButton4: TcxButton
    Left = 432
    Top = 308
    Width = 74
    Height = 52
    Caption = 'RU'
    SpeedButtonOptions.CanBeFocused = False
    TabOrder = 4
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -23
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    OnClick = cxButton4Click
  end
  object cxDBDateEdit1: TcxDBDateEdit
    Left = 524
    Top = 328
    DataBinding.DataField = 'DT'
    DataBinding.DataSource = DocSource
    ParentFont = False
    Properties.DateButtons = [btnNow]
    Properties.DisplayFormat = 'dd.mm.yyyy hh:nn'
    Properties.EditFormat = 'dd.mm.yyyy hh:nn'
    Properties.Kind = ckDateTime
    Properties.ReadOnly = False
    Properties.View = cavTouchUI
    Style.Font.Charset = DEFAULT_CHARSET
    Style.Font.Color = clWindowText
    Style.Font.Height = -21
    Style.Font.Name = 'Tahoma'
    Style.Font.Style = []
    Style.IsFontAssigned = True
    TabOrder = 5
    OnEnter = cxTextEdit1Enter
    Width = 205
  end
  object cxPageControl2: TcxPageControl
    Left = 0
    Top = 0
    Width = 800
    Height = 302
    Align = alTop
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 6
    Properties.ActivePage = cxTabSheet3
    Properties.CustomButtons.Buttons = <>
    OnChange = cxPageControl2Change
    ClientRectBottom = 298
    ClientRectLeft = 4
    ClientRectRight = 796
    ClientRectTop = 30
    object cxTabSheet3: TcxTabSheet
      Caption = #1055#1086' '#1072#1076#1088#1077#1089#1091
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      ImageIndex = 0
      ParentFont = False
      object Label1: TLabel
        Left = 196
        Top = 8
        Width = 111
        Height = 13
        Caption = #1059#1083#1080#1094#1072'\'#1084#1080#1082#1088#1086#1088#1072#1081#1086#1085
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label2: TLabel
        Left = 20
        Top = 64
        Width = 25
        Height = 13
        Caption = #1044#1086#1084
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label3: TLabel
        Left = 198
        Top = 64
        Width = 55
        Height = 13
        Caption = #1050#1074#1072#1088#1090#1080#1088#1072
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label4: TLabel
        Left = 20
        Top = 115
        Width = 51
        Height = 13
        Caption = #1058#1077#1083#1077#1092#1086#1085
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label5: TLabel
        Left = 20
        Top = 8
        Width = 36
        Height = 13
        Caption = #1043#1086#1088#1086#1076
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label7: TLabel
        Left = 260
        Top = 109
        Width = 61
        Height = 13
        Caption = #1042#1054#1044#1048#1058#1045#1051#1068
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label9: TLabel
        Left = 20
        Top = 183
        Width = 74
        Height = 13
        Caption = #1048#1084#1103' '#1082#1083#1080#1077#1085#1090#1072
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object cxLookupComboBox1: TcxLookupComboBox
        Left = 16
        Top = 24
        ParentFont = False
        Properties.DropDownListStyle = lsEditList
        Properties.GridMode = True
        Properties.KeyFieldNames = 'ID'
        Properties.ListColumns = <
          item
            FieldName = 'NAME'
          end>
        Properties.ListOptions.GridLines = glNone
        Properties.ListOptions.RowSelect = False
        Properties.ListOptions.ShowHeader = False
        Properties.ListSource = TOWNSource
        Properties.OnChange = cxLookupComboBox1PropertiesChange
        Properties.OnValidate = cxLookupComboBox1PropertiesValidate
        Style.Font.Charset = DEFAULT_CHARSET
        Style.Font.Color = clWindowText
        Style.Font.Height = -16
        Style.Font.Name = 'Tahoma'
        Style.Font.Style = []
        Style.IsFontAssigned = True
        TabOrder = 0
        OnEnter = cxLookupComboBox1Enter
        OnExit = cxLookupComboBox1Exit
        OnKeyPress = cxLookupComboBox1KeyPress
        Width = 153
      end
      object cxLookupComboBox2: TcxLookupComboBox
        Left = 195
        Top = 24
        ParentFont = False
        Properties.AutoSelect = False
        Properties.DropDownListStyle = lsEditList
        Properties.GridMode = True
        Properties.HideSelection = False
        Properties.KeyFieldNames = 'ID'
        Properties.ListColumns = <
          item
            FieldName = 'NAME'
          end>
        Properties.ListOptions.GridLines = glNone
        Properties.ListOptions.RowSelect = False
        Properties.ListOptions.ShowHeader = False
        Properties.ListSource = MKRSource
        Properties.OnChange = cxLookupComboBox2PropertiesChange
        Properties.OnValidate = cxLookupComboBox2PropertiesValidate
        Style.Font.Charset = DEFAULT_CHARSET
        Style.Font.Color = clWindowText
        Style.Font.Height = -16
        Style.Font.Name = 'Tahoma'
        Style.Font.Style = []
        Style.IsFontAssigned = True
        TabOrder = 1
        OnEnter = cxLookupComboBox1Enter
        OnExit = cxLookupComboBox2Exit
        OnKeyPress = cxLookupComboBox2KeyPress
        Width = 169
      end
      object cxLookupComboBox3: TcxLookupComboBox
        Left = 16
        Top = 77
        ParentFont = False
        Properties.DropDownListStyle = lsEditList
        Properties.GridMode = True
        Properties.KeyFieldNames = 'ID'
        Properties.ListColumns = <
          item
            FieldName = 'NAME'
          end>
        Properties.ListOptions.GridLines = glNone
        Properties.ListOptions.RowSelect = False
        Properties.ListOptions.ShowHeader = False
        Properties.ListSource = DomSource
        Properties.OnChange = cxLookupComboBox3PropertiesChange
        Properties.OnValidate = cxLookupComboBox3PropertiesValidate
        Style.Font.Charset = DEFAULT_CHARSET
        Style.Font.Color = clWindowText
        Style.Font.Height = -16
        Style.Font.Name = 'Tahoma'
        Style.Font.Style = []
        Style.IsFontAssigned = True
        TabOrder = 2
        OnEnter = cxLookupComboBox1Enter
        OnExit = cxLookupComboBox3Exit
        OnKeyPress = cxLookupComboBox3KeyPress
        Width = 153
      end
      object cxLookupComboBox4: TcxLookupComboBox
        Left = 196
        Top = 77
        ParentFont = False
        Properties.DropDownListStyle = lsEditList
        Properties.GridMode = True
        Properties.KeyFieldNames = 'ID'
        Properties.ListColumns = <
          item
            FieldName = 'NAME'
          end>
        Properties.ListOptions.GridLines = glNone
        Properties.ListOptions.RowSelect = False
        Properties.ListOptions.ShowHeader = False
        Properties.ListSource = KVSource
        Properties.OnChange = cxLookupComboBox4PropertiesChange
        Properties.OnValidate = cxLookupComboBox4PropertiesValidate
        Style.Font.Charset = DEFAULT_CHARSET
        Style.Font.Color = clWindowText
        Style.Font.Height = -16
        Style.Font.Name = 'Tahoma'
        Style.Font.Style = []
        Style.IsFontAssigned = True
        TabOrder = 3
        OnEnter = cxLookupComboBox1Enter
        OnExit = cxLookupComboBox4Exit
        OnKeyPress = cxLookupComboBox4KeyPress
        Width = 153
      end
      object cxLookupComboBox5: TcxLookupComboBox
        Left = 16
        Top = 129
        ParentFont = False
        Properties.DropDownListStyle = lsEditList
        Properties.GridMode = True
        Properties.KeyFieldNames = 'ID'
        Properties.ListColumns = <
          item
            FieldName = 'NAME'
          end>
        Properties.ListOptions.GridLines = glNone
        Properties.ListOptions.RowSelect = False
        Properties.ListOptions.ShowHeader = False
        Properties.ListSource = DataSource1
        Properties.OnChange = cxLookupComboBox5PropertiesChange
        Properties.OnValidate = cxLookupComboBox5PropertiesValidate
        Style.Font.Charset = DEFAULT_CHARSET
        Style.Font.Color = clWindowText
        Style.Font.Height = -16
        Style.Font.Name = 'Tahoma'
        Style.Font.Style = []
        Style.IsFontAssigned = True
        TabOrder = 4
        OnEnter = cxTextEdit1Enter
        OnExit = cxLookupComboBox5Exit
        OnKeyPress = cxLookupComboBox5KeyPress
        Width = 225
      end
      object cxLookupComboBox6: TcxLookupComboBox
        Left = 260
        Top = 128
        ParentFont = False
        Properties.DropDownListStyle = lsFixedList
        Properties.GridMode = True
        Properties.KeyFieldNames = 'ID'
        Properties.ListColumns = <
          item
            FieldName = 'NAME'
          end>
        Properties.ListOptions.GridLines = glNone
        Properties.ListOptions.RowSelect = False
        Properties.ListOptions.ShowHeader = False
        Properties.ListSource = DriversSource
        Style.Font.Charset = DEFAULT_CHARSET
        Style.Font.Color = clWindowText
        Style.Font.Height = -16
        Style.Font.Name = 'Tahoma'
        Style.Font.Style = []
        Style.IsFontAssigned = True
        TabOrder = 5
        Width = 225
      end
      object cxDBTextEdit1: TcxDBTextEdit
        Left = 16
        Top = 202
        DataBinding.DataField = 'DESCR'
        DataBinding.DataSource = DataSource1
        ParentFont = False
        Style.Font.Charset = DEFAULT_CHARSET
        Style.Font.Color = clWindowText
        Style.Font.Height = -16
        Style.Font.Name = 'Tahoma'
        Style.Font.Style = []
        Style.IsFontAssigned = True
        TabOrder = 6
        OnEnter = cxLookupComboBox1Enter
        OnExit = cxDBTextEdit1Exit
        OnKeyPress = cxDBTextEdit1KeyPress
        Width = 393
      end
      object Panel1: TPanel
        Left = 522
        Top = 0
        Width = 270
        Height = 268
        Align = alRight
        TabOrder = 7
        object cxTextEdit1: TcxTextEdit
          Left = 1
          Top = 1
          Align = alTop
          Properties.OnChange = cxTextEdit1PropertiesChange
          TabOrder = 0
          OnEnter = cxTextEdit1Enter
          Width = 268
        end
        object cxGrid1: TcxGrid
          Left = 1
          Top = 25
          Width = 268
          Height = 242
          Align = alClient
          TabOrder = 1
          object cxGrid1DBTableView1: TcxGridDBTableView
            Navigator.Buttons.CustomButtons = <>
            OnCellClick = cxGrid1DBTableView1CellClick
            DataController.DataSource = DataSource2
            DataController.Summary.DefaultGroupSummaryItems = <>
            DataController.Summary.FooterSummaryItems = <>
            DataController.Summary.SummaryGroups = <>
            OptionsData.CancelOnExit = False
            OptionsData.Deleting = False
            OptionsData.DeletingConfirmation = False
            OptionsData.Editing = False
            OptionsData.Inserting = False
            OptionsSelection.CellSelect = False
            OptionsView.ColumnAutoWidth = True
            OptionsView.GroupByBox = False
            OptionsView.Header = False
            object cxGrid1DBTableView1Column1: TcxGridDBColumn
              DataBinding.FieldName = 'NAME'
              Styles.Content = cxStyle1
            end
          end
          object cxGrid1Level1: TcxGridLevel
            GridView = cxGrid1DBTableView1
          end
        end
      end
    end
    object cxTabSheet4: TcxTabSheet
      Caption = #1057#1072#1084#1086#1074#1099#1074#1086#1079
      ImageIndex = 1
      ExplicitLeft = 0
      ExplicitTop = 0
      ExplicitWidth = 0
      ExplicitHeight = 0
      object Label6: TLabel
        Left = 16
        Top = 31
        Width = 74
        Height = 13
        Caption = #1048#1084#1103' '#1082#1083#1080#1077#1085#1090#1072
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label10: TLabel
        Left = 16
        Top = 95
        Width = 51
        Height = 13
        Caption = #1058#1077#1083#1077#1092#1086#1085
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object cxDBTextEdit2: TcxDBTextEdit
        Left = 12
        Top = 50
        DataBinding.DataField = 'DESCR'
        DataBinding.DataSource = DocSource
        ParentFont = False
        Style.Font.Charset = DEFAULT_CHARSET
        Style.Font.Color = clWindowText
        Style.Font.Height = -16
        Style.Font.Name = 'Tahoma'
        Style.Font.Style = []
        Style.IsFontAssigned = True
        TabOrder = 0
        OnEnter = cxLookupComboBox1Enter
        OnExit = cxDBTextEdit1Exit
        OnKeyPress = cxDBTextEdit2KeyPress
        Width = 393
      end
      object cxDBTextEdit3: TcxDBTextEdit
        Left = 12
        Top = 114
        DataBinding.DataField = 'NUM_NAKL'
        DataBinding.DataSource = DocSource
        ParentFont = False
        Style.Font.Charset = DEFAULT_CHARSET
        Style.Font.Color = clWindowText
        Style.Font.Height = -16
        Style.Font.Name = 'Tahoma'
        Style.Font.Style = []
        Style.IsFontAssigned = True
        TabOrder = 1
        OnEnter = cxLookupComboBox1Enter
        OnExit = cxDBTextEdit1Exit
        OnKeyPress = cxDBTextEdit2KeyPress
        Width = 393
      end
    end
  end
  object cxButton5: TcxButton
    Left = 735
    Top = 326
    Width = 50
    Height = 34
    Caption = '...'
    TabOrder = 7
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -33
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    OnClick = cxButton5Click
  end
  object TOWNSource: TDataSource
    DataSet = TOWN
    Left = 664
    Top = 144
  end
  object MKRSource: TDataSource
    DataSet = MKR
    Left = 672
    Top = 96
  end
  object DomSource: TDataSource
    DataSet = DOM
    Left = 584
    Top = 64
  end
  object KVSource: TDataSource
    DataSet = KV
    Left = 592
    Top = 128
  end
  object DataSource1: TDataSource
    DataSet = Phone
    Left = 744
    Top = 128
  end
  object DataSource2: TDataSource
    DataSet = LOOKUPPHONE
    Left = 584
    Top = 232
  end
  object cxStyleRepository1: TcxStyleRepository
    Left = 504
    Top = 16
    PixelsPerInch = 96
    object cxStyle1: TcxStyle
      AssignedValues = [svFont]
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Tahoma'
      Font.Style = []
    end
  end
  object DriversSource: TDataSource
    DataSet = tbDrivers
    Left = 744
    Top = 216
  end
  object MKR: TFDQuery
    MasterSource = TOWNSource
    MasterFields = 'ID'
    UpdateOptions.AssignedValues = [uvGeneratorName, uvCheckRequired, uvCheckReadOnly, uvCheckUpdatable]
    UpdateOptions.GeneratorName = 'GEN_TBADRESS_ITEMS_ID'
    UpdateOptions.UpdateTableName = 'TBADRESS_ITEMS'
    UpdateOptions.KeyFields = 'ID'
    SQL.Strings = (
      'SELECT'
      '    ID,'
      '    IDTYPE,'
      '    NAME, PID'
      'FROM'
      '    TBADRESS_ITEMS '
      'WHERE IDTYPE = 2'
      'AND PID = :ID;')
    Left = 720
    Top = 104
    ParamData = <
      item
        Name = 'ID'
        DataType = ftInteger
        ParamType = ptInput
      end>
    object MKRID: TIntegerField
      FieldName = 'ID'
      Origin = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object MKRIDTYPE: TIntegerField
      FieldName = 'IDTYPE'
      Origin = 'IDTYPE'
    end
    object MKRNAME: TWideStringField
      FieldName = 'NAME'
      Origin = 'NAME'
      Size = 100
    end
    object MKRPID: TIntegerField
      FieldName = 'PID'
      Origin = 'PID'
    end
  end
  object TOWN: TFDQuery
    FetchOptions.AssignedValues = [evItems]
    UpdateOptions.AssignedValues = [uvEDelete, uvEInsert, uvEUpdate, uvGeneratorName, uvCheckRequired, uvCheckReadOnly, uvCheckUpdatable]
    UpdateOptions.GeneratorName = 'GEN_TBADRESS_ITEMS_ID'
    UpdateOptions.UpdateTableName = 'TBADRESS_ITEMS'
    UpdateOptions.KeyFields = 'ID'
    SQL.Strings = (
      'SELECT'
      '    ID,'
      '    IDTYPE,'
      '    NAME'
      'FROM'
      '    TBADRESS_ITEMS '
      'WHERE IDTYPE = 1;')
    Left = 720
    Top = 152
    object TOWNID: TIntegerField
      FieldName = 'ID'
      Origin = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object TOWNIDTYPE: TIntegerField
      FieldName = 'IDTYPE'
      Origin = 'IDTYPE'
    end
    object TOWNNAME: TWideStringField
      FieldName = 'NAME'
      Origin = 'NAME'
      Size = 100
    end
  end
  object DOM: TFDQuery
    IndexFieldNames = 'PID'
    MasterSource = MKRSource
    MasterFields = 'ID'
    UpdateOptions.AssignedValues = [uvGeneratorName, uvCheckRequired, uvCheckReadOnly, uvCheckUpdatable]
    UpdateOptions.GeneratorName = 'GEN_TBADRESS_ITEMS_ID'
    UpdateOptions.CheckRequired = False
    UpdateOptions.CheckReadOnly = False
    UpdateOptions.CheckUpdatable = False
    UpdateOptions.UpdateTableName = 'TBADRESS_ITEMS'
    UpdateOptions.KeyFields = 'ID'
    SQL.Strings = (
      'SELECT'
      '    ID,'
      '    IDTYPE,'
      '    NAME, PID'
      'FROM'
      '    TBADRESS_ITEMS '
      'WHERE IDTYPE = 3'
      'AND PID = :ID;')
    Left = 536
    Top = 56
    ParamData = <
      item
        Name = 'ID'
        DataType = ftInteger
        ParamType = ptInput
        Size = 4
        Value = Null
      end>
    object DOMID: TIntegerField
      FieldName = 'ID'
      Origin = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object DOMIDTYPE: TIntegerField
      FieldName = 'IDTYPE'
      Origin = 'IDTYPE'
    end
    object DOMNAME: TWideStringField
      FieldName = 'NAME'
      Origin = 'NAME'
      Size = 100
    end
    object DOMPID: TIntegerField
      FieldName = 'PID'
      Origin = 'PID'
    end
  end
  object KV: TFDQuery
    IndexFieldNames = 'PID'
    MasterSource = DomSource
    MasterFields = 'ID'
    FetchOptions.AssignedValues = [evItems]
    FetchOptions.Items = [fiBlobs, fiDetails]
    UpdateOptions.AssignedValues = [uvEDelete, uvEInsert, uvEUpdate, uvGeneratorName, uvCheckRequired, uvCheckReadOnly, uvCheckUpdatable]
    UpdateOptions.GeneratorName = 'GEN_TBADRESS_ITEMS_ID'
    UpdateOptions.CheckRequired = False
    UpdateOptions.CheckReadOnly = False
    UpdateOptions.CheckUpdatable = False
    UpdateOptions.UpdateTableName = 'TBADRESS_ITEMS'
    UpdateOptions.KeyFields = 'ID'
    SQL.Strings = (
      'SELECT'
      '    ID,'
      '    IDTYPE,'
      '    NAME, PID'
      'FROM'
      '    TBADRESS_ITEMS '
      'WHERE IDTYPE = 4'
      'AND PID = :ID;')
    Left = 536
    Top = 120
    ParamData = <
      item
        Name = 'ID'
        DataType = ftInteger
        ParamType = ptInput
        Size = 4
        Value = Null
      end>
    object KVID: TIntegerField
      FieldName = 'ID'
      Origin = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object KVIDTYPE: TIntegerField
      FieldName = 'IDTYPE'
      Origin = 'IDTYPE'
    end
    object KVNAME: TWideStringField
      FieldName = 'NAME'
      Origin = 'NAME'
      Size = 100
    end
    object KVPID: TIntegerField
      FieldName = 'PID'
      Origin = 'PID'
    end
  end
  object Phone: TFDQuery
    IndexFieldNames = 'PID'
    MasterSource = KVSource
    MasterFields = 'ID'
    FetchOptions.AssignedValues = [evItems]
    FetchOptions.Items = [fiBlobs, fiDetails]
    UpdateOptions.AssignedValues = [uvEDelete, uvEInsert, uvEUpdate, uvGeneratorName, uvCheckRequired, uvCheckReadOnly, uvCheckUpdatable]
    UpdateOptions.GeneratorName = 'GEN_TBADRESS_ITEMS_ID'
    UpdateOptions.CheckRequired = False
    UpdateOptions.CheckReadOnly = False
    UpdateOptions.CheckUpdatable = False
    UpdateOptions.UpdateTableName = 'TBADRESS_ITEMS'
    UpdateOptions.KeyFields = 'ID'
    SQL.Strings = (
      'SELECT'
      '    ID,'
      '    IDTYPE,'
      '    NAME, PID, DESCR'
      'FROM'
      '    TBADRESS_ITEMS '
      'WHERE IDTYPE = 5'
      'AND PID = :ID;')
    Left = 624
    Top = 152
    ParamData = <
      item
        Name = 'ID'
        DataType = ftInteger
        ParamType = ptInput
        Size = 4
        Value = Null
      end>
    object PhoneID: TIntegerField
      FieldName = 'ID'
      Origin = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object PhoneIDTYPE: TIntegerField
      FieldName = 'IDTYPE'
      Origin = 'IDTYPE'
    end
    object PhoneNAME: TWideStringField
      FieldName = 'NAME'
      Origin = 'NAME'
      Size = 100
    end
    object PhonePID: TIntegerField
      FieldName = 'PID'
      Origin = 'PID'
    end
    object PhoneDESCR: TWideStringField
      FieldName = 'DESCR'
      Origin = 'DESCR'
      Size = 100
    end
  end
  object tbDrivers: TFDQuery
    SQL.Strings = (
      'select id, name'
      'from peoples'
      'where idaccess is null')
    Left = 672
    Top = 216
    object tbDriversID: TIntegerField
      FieldName = 'ID'
      Origin = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object tbDriversNAME: TWideStringField
      FieldName = 'NAME'
      Origin = 'NAME'
      Required = True
      Size = 150
    end
  end
  object LOOKUPPHONE: TFDQuery
    Filtered = True
    SQL.Strings = (
      'SELECT ID, NAME'
      'FROM tbadress_items'
      'WHERE IDTYPE = 5')
    Left = 512
    Top = 232
    object LOOKUPPHONEID: TIntegerField
      FieldName = 'ID'
      Origin = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object LOOKUPPHONENAME: TWideStringField
      FieldName = 'NAME'
      Origin = 'NAME'
      Size = 100
    end
  end
  object findadr: TFDQuery
    SQL.Strings = (
      
        'SELECT i.ID as idphone, i.pid as idkv, (select pid from tbadress' +
        '_items where id = i.pid) as iddom,'
      
        '(select pid from tbadress_items where id = (select pid from tbad' +
        'ress_items where id = i.pid)) as idmkr,'
      
        '(select pid from tbadress_items where id = (select pid from tbad' +
        'ress_items where id = (select pid from tbadress_items where id =' +
        ' i.pid))) as idtown'
      'FROM tbadress_items i'
      'WHERE i.id = :id')
    Left = 688
    Top = 64
    ParamData = <
      item
        Name = 'ID'
        DataType = ftInteger
        ParamType = ptInput
      end>
    object findadrIDPHONE: TIntegerField
      FieldName = 'IDPHONE'
      Origin = 'ID'
      Required = True
    end
    object findadrIDKV: TIntegerField
      FieldName = 'IDKV'
      Origin = 'PID'
    end
    object findadrIDDOM: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'IDDOM'
      Origin = 'IDDOM'
      ProviderFlags = []
      ReadOnly = True
    end
    object findadrIDMKR: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'IDMKR'
      Origin = 'IDMKR'
      ProviderFlags = []
      ReadOnly = True
    end
    object findadrIDTOWN: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'IDTOWN'
      Origin = 'IDTOWN'
      ProviderFlags = []
      ReadOnly = True
    end
  end
  object Doc: TFDQuery
    SQL.Strings = (
      
        'select uid, dt, idstation, descr, IDADRESS_ITEM, IDDRIVER, num_n' +
        'akl'
      'from documents'
      'where uid = :uid;')
    Left = 704
    Top = 40
    ParamData = <
      item
        Name = 'UID'
        DataType = ftFixedWideChar
        ParamType = ptInput
        Size = 36
      end>
    object DocUID: TWideStringField
      FieldName = 'UID'
      Origin = 'UID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      FixedChar = True
      Size = 36
    end
    object DocIDADRESS_ITEM: TIntegerField
      FieldName = 'IDADRESS_ITEM'
      Origin = 'IDADRESS_ITEM'
    end
    object DocIDDRIVER: TIntegerField
      FieldName = 'IDDRIVER'
      Origin = 'IDDRIVER'
    end
    object DocDT: TSQLTimeStampField
      FieldName = 'DT'
      Origin = 'DT'
    end
    object DocDESCR: TWideStringField
      FieldName = 'DESCR'
      Origin = 'DESCR'
      Size = 255
    end
    object DocIDSTATION: TIntegerField
      FieldName = 'IDSTATION'
      Origin = 'IDSTATION'
      Required = True
    end
    object DocNUM_NAKL: TWideStringField
      FieldName = 'NUM_NAKL'
    end
  end
  object FDGUIxWaitCursor1: TFDGUIxWaitCursor
    Provider = 'Forms'
    Left = 584
  end
  object FDGUIxErrorDialog1: TFDGUIxErrorDialog
    Provider = 'Forms'
    Left = 616
    Top = 88
  end
  object DocSource: TDataSource
    DataSet = Doc
    Left = 760
    Top = 48
  end
end
