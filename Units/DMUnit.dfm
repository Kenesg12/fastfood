object DM: TDM
  OldCreateOrder = False
  OnCreate = DataModuleCreate
  Height = 650
  Width = 926
  object Current_orderSource: TDataSource
    DataSet = Current_order
    Left = 464
    Top = 72
  end
  object Orders_itemSource: TDataSource
    DataSet = Orders_item
    Left = 576
    Top = 80
  end
  object WaiterSource: TDataSource
    DataSet = tbWaiter
    Left = 656
    Top = 72
  end
  object PersonSource: TDataSource
    DataSet = tbPerson
    Left = 730
    Top = 72
  end
  object CommentsSource: TDataSource
    DataSet = Comments
    Left = 352
    Top = 224
  end
  object Orders_listSource: TDataSource
    DataSet = Orders_list1
    Left = 264
    Top = 288
  end
  object frxDialogControls1: TfrxDialogControls
    Left = 160
    Top = 192
  end
  object trWrite: TFDTransaction
    Options.Isolation = xiSnapshot
    Options.AutoStart = False
    Options.AutoStop = False
    Options.DisconnectAction = xdRollback
    Options.EnableNested = False
    Connection = FDB
    Left = 736
    Top = 224
  end
  object trReadWrite: TFDTransaction
    Options.AutoStart = False
    Options.AutoStop = False
    Options.DisconnectAction = xdRollback
    Options.EnableNested = False
    Connection = FDB
    Left = 656
    Top = 224
  end
  object trRead: TFDTransaction
    Options.ReadOnly = True
    Options.AutoStop = False
    Connection = FDB
    Left = 592
    Top = 224
  end
  object FDB: TFDConnection
    Params.Strings = (
      'CharacterSet=UtF8'
      'User_Name=SYSDBA'
      'Password=masterkey'
      'ExtendedMetadata=True'
      'DriverID=FB')
    LoginPrompt = False
    Transaction = trRead
    UpdateTransaction = trWrite
    Left = 576
    Top = 304
  end
  object FDGUIxWaitCursor1: TFDGUIxWaitCursor
    Provider = 'Forms'
    Left = 648
    Top = 304
  end
  object Check_Smena: TFDQuery
    Connection = FDB
    UpdateOptions.AssignedValues = [uvEDelete, uvEInsert, uvEUpdate]
    UpdateOptions.EnableDelete = False
    UpdateOptions.EnableInsert = False
    UpdateOptions.EnableUpdate = False
    SQL.Strings = (
      'select distinct idWaiter'
      'from tbZakazy'
      
        'where idKoord in(select idKoord from tbKoord where idHall in (se' +
        'lect idHall from tbHall where idStation=:station))'
      
        'and idSmeny = (select idSmeny from tbSmeny where dtTimeEnd is nu' +
        'll)')
    Left = 160
    Top = 48
    ParamData = <
      item
        Name = 'STATION'
        ParamType = ptInput
      end>
  end
  object Check_Access: TFDQuery
    Connection = FDB
    UpdateOptions.AssignedValues = [uvEDelete, uvEInsert, uvEUpdate]
    UpdateOptions.EnableDelete = False
    UpdateOptions.EnableInsert = False
    UpdateOptions.EnableUpdate = False
    SQL.Strings = (
      
        'select case when bin_and(r.access_mask, bin_shl(1, a.id)) > 0 th' +
        'en 1 else 0 end as bAccess'
      'from peoples p inner join tbRights r on(p.idaccess = r.id),'
      'access_items a'
      'where p.bdel = 0 and a.id = :idtype'
      'and p.id = :idperson')
    Left = 248
    Top = 48
    ParamData = <
      item
        Name = 'IDTYPE'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Name = 'IDPERSON'
        DataType = ftInteger
        ParamType = ptInput
      end>
    object Check_AccessBACCESS: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'BACCESS'
      Origin = 'BACCESS'
      ProviderFlags = []
      ReadOnly = True
    end
  end
  object Current_order: TFDQuery
    AfterOpen = Current_orderAfterOpen
    Connection = FDB
    Transaction = trRead
    UpdateTransaction = trWrite
    FetchOptions.AssignedValues = [evItems]
    UpdateOptions.AssignedValues = [uvEDelete, uvEInsert, uvEUpdate, uvCountUpdatedRecords, uvCheckRequired, uvCheckReadOnly, uvCheckUpdatable]
    UpdateOptions.CheckRequired = False
    SQL.Strings = (
      
        'select d.kod as inomer,  d.idpeoples as idwaiter, d.supplier as ' +
        'idKlinet,'
      'k.name as stol, d.uid,'
      '      '#39#1057#1095#1077#1090' '#8470#39'||d.kod as chet, GUEST_CNT,'
      
        'c.mAccount - coalesce((select sum(l.kolvo * ((l.cena_sales * (10' +
        '0 - coalesce((select bDiscount from d_classif where id = (select' +
        ' Podrazd from find_podrazd((select pid from d_product where id =' +
        ' l.product))))*'
      
        '             case when (l.mdiscount <> 0) then 100 * l.mdiscount' +
        ' / l.cena_sales'
      '             else (case'
      
        '             when (select usediscount from contragents where id ' +
        '= g.supplier) = 1 then'
      
        '             (select case when (extract(hour from current_timest' +
        'amp) between dtstart and dtend) or (dtstart = dtend)  then disco' +
        'unt else 0 end'
      '             from tbdiscount where idclient = g.supplier'
      
        '             and idClassif = (select Podrazd from find_podrazd((' +
        'select pid from d_product where id = l.product)))'
      
        '             and week_day = extract(weekday from current_timesta' +
        'mp))'
      
        '             else (select discount from contragents where id = g' +
        '.supplier) end) end, 0) +'
      
        '             coalesce(l.m_bobsluzh * l.m_obsluzh, 0)) * 0.01))) ' +
        'from d_lines l inner join documents g on(l.iddocument = g.uid)'
      
        '             where g.bdel = 0 and g.supplier = c.id and g.provod' +
        ' = 0 and g.operacii_type = 2 and l.bdel = 0), 0) as mAccount, co' +
        'alesce(k.obsluzh, 0) as obsluzh,'
      
        '             coalesce((select param_state from tborg_items where' +
        ' param_name = '#39'USELIMIT'#39'), 0) as isbalans,'
      
        '(select name from peoples where id = d.idpeoples) as OFFICIANT, ' +
        'd.total_sum, d.IDSTATION'
      '     from documents d'
      '     inner join contragents c on(d.supplier = c.id)'
      '     left join tbKoord k on(d.idKoord = k.id)'
      '     where d.provod = 0-- d.closed_time is null'
      '     and d.idstation in(:s,0)'
      '     and d.operacii_type = 2'
      '     and d.idsmeny = gen_id(gen_tbsmeny_id, 0)'
      'order by d.kod')
    Left = 464
    Top = 24
    ParamData = <
      item
        Name = 'S'
        DataType = ftInteger
        ParamType = ptInput
      end>
    object Current_orderINOMER: TIntegerField
      FieldName = 'INOMER'
      Origin = 'KOD'
    end
    object Current_orderIDWAITER: TIntegerField
      FieldName = 'IDWAITER'
      Origin = 'IDPEOPLES'
    end
    object Current_orderIDKLINET: TIntegerField
      FieldName = 'IDKLINET'
      Origin = 'SUPPLIER'
    end
    object Current_orderSTOL: TWideStringField
      AutoGenerateValue = arDefault
      FieldName = 'STOL'
      Origin = 'NAME'
      ProviderFlags = []
      ReadOnly = True
      Size = 100
    end
    object Current_orderUID: TWideStringField
      FieldName = 'UID'
      Origin = 'UID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      FixedChar = True
      Size = 36
    end
    object Current_orderCHET: TWideStringField
      AutoGenerateValue = arDefault
      FieldName = 'CHET'
      Origin = 'CHET'
      ProviderFlags = []
      ReadOnly = True
      Size = 17
    end
    object Current_orderGUEST_CNT: TSmallintField
      AutoGenerateValue = arDefault
      FieldName = 'GUEST_CNT'
      Origin = 'GUEST_CNT'
    end
    object Current_orderMACCOUNT: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'MACCOUNT'
      Origin = 'MACCOUNT'
      ProviderFlags = []
      ReadOnly = True
    end
    object Current_orderOBSLUZH: TCurrencyField
      AutoGenerateValue = arDefault
      FieldName = 'OBSLUZH'
      Origin = 'OBSLUZH'
      ProviderFlags = []
      ReadOnly = True
    end
    object Current_orderISBALANS: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'ISBALANS'
      Origin = 'ISBALANS'
      ProviderFlags = []
      ReadOnly = True
    end
    object Current_orderOFFICIANT: TWideStringField
      AutoGenerateValue = arDefault
      FieldName = 'OFFICIANT'
      Origin = 'OFFICIANT'
      ProviderFlags = []
      ReadOnly = True
      Size = 150
    end
    object Current_orderTOTAL_SUM: TFloatField
      FieldName = 'TOTAL_SUM'
      Origin = 'TOTAL_SUM'
    end
    object Current_orderIDSTATION: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'IDSTATION'
      Origin = 'IDSTATION'
    end
  end
  object tbWaiter: TFDQuery
    Connection = FDB
    UpdateOptions.AssignedValues = [uvEDelete, uvEInsert, uvEUpdate]
    UpdateOptions.EnableDelete = False
    UpdateOptions.EnableInsert = False
    UpdateOptions.EnableUpdate = False
    SQL.Strings = (
      'select id as idPerson,name as vcFIO'
      'from peoples'
      'where idAccess > 0'
      '')
    Left = 656
    Top = 24
    object tbWaiterIDPERSON: TIntegerField
      FieldName = 'IDPERSON'
      Origin = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object tbWaiterVCFIO: TWideStringField
      FieldName = 'VCFIO'
      Origin = 'NAME'
      Required = True
      Size = 150
    end
  end
  object tbPerson: TFDQuery
    Connection = FDB
    UpdateOptions.AssignedValues = [uvEDelete, uvEInsert, uvEUpdate]
    UpdateOptions.EnableDelete = False
    UpdateOptions.EnableInsert = False
    UpdateOptions.EnableUpdate = False
    SQL.Strings = (
      'SELECT'
      '    ID,'
      '    NAME as fio'
      'FROM'
      '    CONTRAGENTS '
      'where c_type = 1'
      'and blocked = 0')
    Left = 728
    Top = 32
    object tbPersonID: TIntegerField
      FieldName = 'ID'
      Origin = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object tbPersonFIO: TWideStringField
      FieldName = 'FIO'
      Origin = 'NAME'
      Size = 150
    end
  end
  object Comments: TFDQuery
    Connection = FDB
    UpdateOptions.AssignedValues = [uvEDelete, uvEInsert, uvEUpdate]
    UpdateOptions.EnableDelete = False
    UpdateOptions.EnableInsert = False
    UpdateOptions.EnableUpdate = False
    SQL.Strings = (
      'select id, name'
      'from tbcomments')
    Left = 336
    Top = 176
    object CommentsID: TIntegerField
      FieldName = 'ID'
      Origin = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object CommentsNAME: TWideStringField
      FieldName = 'NAME'
      Origin = 'NAME'
      Size = 100
    end
  end
  object All_Podrazd: TFDQuery
    Connection = FDB
    UpdateOptions.AssignedValues = [uvEDelete, uvEInsert, uvEUpdate]
    UpdateOptions.EnableDelete = False
    UpdateOptions.EnableInsert = False
    UpdateOptions.EnableUpdate = False
    SQL.Strings = (
      
        'select list(m.id, '#39', '#39') as id, p.name as printername, coalesce(l' +
        '.file_name, '#39'Service.fr3'#39') as file_name'
      'from tbMenu m inner join tbprinter_links l on(m.id = l.idlink)'
      'inner join tbprinters p on(l.idprinter = p.id)'
      'where m.idproduct is null'
      'and m.idstation = :s'
      'group by p.name, file_name')
    Left = 496
    Top = 168
    ParamData = <
      item
        Name = 'S'
        DataType = ftInteger
        ParamType = ptInput
      end>
    object All_PodrazdID: TWideMemoField
      AutoGenerateValue = arDefault
      FieldName = 'ID'
      Origin = 'ID'
      ProviderFlags = []
      ReadOnly = True
      BlobType = ftWideMemo
    end
    object All_PodrazdPRINTERNAME: TWideStringField
      AutoGenerateValue = arDefault
      FieldName = 'PRINTERNAME'
      Origin = 'PRINTERNAME'
      ProviderFlags = []
      ReadOnly = True
      Size = 100
    end
    object All_PodrazdFILE_NAME: TWideStringField
      AutoGenerateValue = arDefault
      FieldName = 'FILE_NAME'
      Origin = 'FILE_NAME'
      ProviderFlags = []
      ReadOnly = True
      Size = 100
    end
  end
  object tbPrinters111: TFDQuery
    Connection = FDB
    UpdateOptions.AssignedValues = [uvEDelete, uvEInsert, uvEUpdate]
    UpdateOptions.EnableDelete = False
    UpdateOptions.EnableInsert = False
    UpdateOptions.EnableUpdate = False
    SQL.Strings = (
      'select id, name'
      'from tbprinters;')
    Left = 560
    Top = 168
    object tbPrinters111ID: TIntegerField
      FieldName = 'ID'
      Origin = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object tbPrinters111NAME: TWideStringField
      FieldName = 'NAME'
      Origin = 'NAME'
      Size = 100
    end
  end
  object Orders_list1: TFDQuery
    Connection = FDB
    SQL.Strings = (
      'select dt, kolvo'
      'from tbmenu_added_log'
      'where idLines = :uid'
      'order by dt')
    Left = 352
    Top = 288
    ParamData = <
      item
        Name = 'UID'
        DataType = ftFixedWideChar
        ParamType = ptInput
        Size = 36
      end>
    object Orders_list1DT: TSQLTimeStampField
      FieldName = 'DT'
      Origin = 'DT'
    end
    object Orders_list1KOLVO: TFloatField
      FieldName = 'KOLVO'
      Origin = 'KOLVO'
    end
  end
  object frxFDComponents1: TfrxFDComponents
    DefaultDatabase = FDB
    Left = 264
    Top = 184
  end
  object adddoc: TFDCommand
    Connection = FDB
    Transaction = trWrite
    CommandText.Strings = (
      'insert into documents(idkoord, idstation, idpeoples, dt)'
      
        'values((select k.id from tbkoord k join tbhall h on k.idhall = h' +
        '.id where h.idstation = :idstation rows 1), :idstation, :idpeopl' +
        'es, current_timestamp);')
    ParamData = <
      item
        Name = 'IDSTATION'
        ParamType = ptInput
      end
      item
        Name = 'IDPEOPLES'
        ParamType = ptInput
      end>
    Left = 360
    Top = 96
  end
  object MemData1: TFDQuery
    CachedUpdates = True
    FilterChanges = [rtModified, rtInserted]
    IndexFieldNames = 'IDDOCUMENT'
    MasterSource = Current_orderSource
    MasterFields = 'UID'
    Connection = FDB
    Transaction = trRead
    UpdateTransaction = trWrite
    FetchOptions.AssignedValues = [evItems]
    FetchOptions.Items = [fiBlobs, fiDetails]
    UpdateOptions.AssignedValues = [uvEDelete, uvEInsert, uvEUpdate, uvCountUpdatedRecords, uvCheckReadOnly, uvCheckUpdatable]
    UpdateOptions.CountUpdatedRecords = False
    UpdateOptions.CheckReadOnly = False
    UpdateOptions.CheckUpdatable = False
    SQL.Strings = (
      'select L.UID,'
      '       L.KOLVO,'
      '       L.CENA_SALES, '
      '       L.PRODUCT, '
      '       L.OSTATOK, '
      '       l.IDDOCUMENT,'
      '       l.COMMENTS,'
      '       l.M_OBSLUZH,'
      '       l.M_BOBSLUZH,'
      '       l.M_BDISCOUNT,'
      '       l.DISCOUNT,'
      '       l.NAME,'
      '       l.GROUP_NAME'
      'from D_LINES L'
      'inner join D_PRODUCT P on (L.PRODUCT = P.ID)'
      'where L.IDDOCUMENT = :UID')
    Left = 481
    Top = 282
    ParamData = <
      item
        Name = 'UID'
        DataType = ftFixedChar
        ParamType = ptInput
        Size = 36
        Value = Null
      end>
    object MemData1UID: TStringField
      FieldName = 'UID'
      Origin = 'UID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      FixedChar = True
      Size = 36
    end
    object MemData1KOLVO: TFloatField
      FieldName = 'KOLVO'
      Origin = 'KOLVO'
    end
    object MemData1CENA_SALES: TFloatField
      FieldName = 'CENA_SALES'
      Origin = 'CENA_SALES'
    end
    object MemData1PRODUCT: TIntegerField
      FieldName = 'PRODUCT'
      Origin = 'PRODUCT'
      Required = True
    end
    object MemData1OSTATOK: TFloatField
      FieldName = 'OSTATOK'
      Origin = 'OSTATOK'
    end
    object MemData1IDDOCUMENT: TStringField
      FieldName = 'IDDOCUMENT'
      Origin = 'IDDOCUMENT'
      FixedChar = True
      Size = 36
    end
    object MemData1COMMENTS: TStringField
      FieldName = 'COMMENTS'
      Origin = 'COMMENTS'
      Size = 255
    end
    object MemData1M_OBSLUZH: TCurrencyField
      FieldName = 'M_OBSLUZH'
      Origin = 'M_OBSLUZH'
    end
    object MemData1M_BOBSLUZH: TSmallintField
      FieldName = 'M_BOBSLUZH'
      Origin = 'M_BOBSLUZH'
      Required = True
    end
    object MemData1M_BDISCOUNT: TSmallintField
      FieldName = 'M_BDISCOUNT'
      Origin = 'M_BDISCOUNT'
      Required = True
    end
    object MemData1DISCOUNT: TCurrencyField
      FieldName = 'DISCOUNT'
      Origin = 'DISCOUNT'
    end
    object MemData1NAME: TStringField
      FieldName = 'NAME'
      Origin = 'NAME'
      Size = 100
    end
    object MemData1GROUP_NAME: TStringField
      FieldName = 'GROUP_NAME'
      Origin = 'GROUP_NAME'
      Size = 100
    end
    object MemData1idpodrazd: TIntegerField
      FieldKind = fkInternalCalc
      FieldName = 'idpodrazd'
    end
    object MemData1del: TIntegerField
      FieldKind = fkInternalCalc
      FieldName = 'del'
    end
    object MemData1summa: TCurrencyField
      FieldKind = fkCalculated
      FieldName = 'summa'
      currency = False
      Calculated = True
    end
    object MemData1add_kolvo: TFloatField
      FieldKind = fkInternalCalc
      FieldName = 'add_kolvo'
    end
    object MemData1cur_kolvo: TFloatField
      FieldKind = fkInternalCalc
      FieldName = 'cur_kolvo'
    end
  end
  object Orders_item: TFDQuery
    AfterScroll = Orders_itemAfterScroll
    OnCalcFields = Orders_itemCalcFields
    IndexFieldNames = 'IDDOCUMENT'
    MasterSource = Current_orderSource
    MasterFields = 'UID'
    Connection = FDB
    UpdateOptions.AssignedValues = [uvCheckRequired]
    UpdateOptions.CheckRequired = False
    SQL.Strings = (
      'SELECT'
      '    UID,'
      '    IDDOCUMENT,'
      '    PRODUCT,'
      '    KOLVO,'
      '    SUM_NAKL,'
      '    BDEL,'
      '    BONUS,'
      '    INO,'
      '    CENA_ZAKUP,'
      '    CENA_SALES,'
      '    PRODUCT_RAS,'
      '    COMMENTS,'
      '    MDISCOUNT,'
      '    OSTATOK,'
      '    DISCOUNT,'
      '    MDISCOUNT_SUM,'
      '    MARGIN,'
      '    ADDED_PEOPLE,  '
      
        '    (select podrazd from find_podrazd((select pid from d_product' +
        ' where id = l.product))) as idclassif,'
      
        '     (select out_id from find_printed((select first 1 pid from t' +
        'bMenu where idProduct = l.product and idStation ='
      
        '(select idStation from tbHall where id = (select idHall from tbK' +
        'oord where id = (select idKoord from documents where uid = l.idd' +
        'ocument)))))) as idpodrazd,'
      ' NAME, Group_name, M_BOBSLUZH, M_OBSLUZH, M_BDISCOUNT,'
      '/* (select count(*)'
      
        'from d_product p join product_classificators c on p.id = c.idpro' +
        'duct'
      'where p.id = l.product'
      'and p.isweight = 0) as clr*/'
      
        '(select id from tbMenu where idstation = (select idstation from ' +
        'documents where uid = l.iddocument) and idproduct = l.product ro' +
        'ws 1) as IDMENU'
      'FROM'
      '    D_LINES l'
      'where iddocument=:UID '
      'and kolvo > 0'
      '')
    Left = 576
    Top = 32
    ParamData = <
      item
        Name = 'UID'
        ParamType = ptInput
      end>
    object Orders_itemUID: TWideStringField
      FieldName = 'UID'
      Origin = 'UID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      FixedChar = True
      Size = 36
    end
    object Orders_itemIDDOCUMENT: TWideStringField
      FieldName = 'IDDOCUMENT'
      Origin = 'IDDOCUMENT'
      FixedChar = True
      Size = 36
    end
    object Orders_itemPRODUCT: TIntegerField
      FieldName = 'PRODUCT'
      Origin = 'PRODUCT'
      Required = True
    end
    object Orders_itemKOLVO: TFloatField
      FieldName = 'KOLVO'
      Origin = 'KOLVO'
    end
    object Orders_itemSUM_NAKL: TFloatField
      FieldName = 'SUM_NAKL'
      Origin = 'SUM_NAKL'
    end
    object Orders_itemBDEL: TBooleanField
      FieldName = 'BDEL'
      Origin = 'BDEL'
      Required = True
    end
    object Orders_itemBONUS: TBooleanField
      FieldName = 'BONUS'
      Origin = 'BONUS'
      Required = True
    end
    object Orders_itemINO: TIntegerField
      FieldName = 'INO'
      Origin = 'INO'
    end
    object Orders_itemCENA_ZAKUP: TFloatField
      FieldName = 'CENA_ZAKUP'
      Origin = 'CENA_ZAKUP'
    end
    object Orders_itemCENA_SALES: TFloatField
      FieldName = 'CENA_SALES'
      Origin = 'CENA_SALES'
      currency = True
    end
    object Orders_itemPRODUCT_RAS: TBooleanField
      FieldName = 'PRODUCT_RAS'
      Origin = 'PRODUCT_RAS'
      Required = True
    end
    object Orders_itemMDISCOUNT: TFloatField
      FieldName = 'MDISCOUNT'
      Origin = 'MDISCOUNT'
    end
    object Orders_itemOSTATOK: TFloatField
      FieldName = 'OSTATOK'
      Origin = 'OSTATOK'
    end
    object Orders_itemDISCOUNT: TCurrencyField
      FieldName = 'DISCOUNT'
      Origin = 'DISCOUNT'
    end
    object Orders_itemMDISCOUNT_SUM: TFloatField
      FieldName = 'MDISCOUNT_SUM'
      Origin = 'MDISCOUNT_SUM'
    end
    object Orders_itemMARGIN: TFloatField
      FieldName = 'MARGIN'
      Origin = 'MARGIN'
    end
    object Orders_itemADDED_PEOPLE: TIntegerField
      FieldName = 'ADDED_PEOPLE'
      Origin = 'ADDED_PEOPLE'
    end
    object Orders_itemIDCLASSIF: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'IDCLASSIF'
      Origin = 'IDCLASSIF'
      ProviderFlags = []
    end
    object Orders_itemIDPODRAZD: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'IDPODRAZD'
      Origin = 'IDPODRAZD'
      ProviderFlags = []
    end
    object Orders_itemNAME: TWideStringField
      FieldName = 'NAME'
      Origin = 'NAME'
      Size = 100
    end
    object Orders_itemGROUP_NAME: TWideStringField
      FieldName = 'GROUP_NAME'
      Origin = 'GROUP_NAME'
      Size = 100
    end
    object Orders_itemM_BOBSLUZH: TBooleanField
      FieldName = 'M_BOBSLUZH'
      Origin = 'M_BOBSLUZH'
      Required = True
    end
    object Orders_itemM_OBSLUZH: TCurrencyField
      FieldName = 'M_OBSLUZH'
      Origin = 'M_OBSLUZH'
    end
    object Orders_itemM_BDISCOUNT: TBooleanField
      FieldName = 'M_BDISCOUNT'
      Origin = 'M_BDISCOUNT'
      Required = True
    end
    object Orders_itemadd: TStringField
      FieldKind = fkCalculated
      FieldName = 'add'
      Calculated = True
    end
    object Orders_itemcaption: TStringField
      FieldKind = fkCalculated
      FieldName = 'caption'
      Calculated = True
    end
    object Orders_itemnodis: TFloatField
      FieldKind = fkCalculated
      FieldName = 'nodis'
      Calculated = True
    end
    object Orders_itemsumm: TCurrencyField
      FieldKind = fkCalculated
      FieldName = 'summ'
      DisplayFormat = '# ### ##0.##'
      Calculated = True
    end
    object Orders_itemdisc: TCurrencyField
      FieldKind = fkCalculated
      FieldName = 'disc'
      Calculated = True
    end
    object Orders_itemCOMMENTS: TWideStringField
      FieldName = 'COMMENTS'
      Size = 255
    end
    object Orders_itemIDMENU: TIntegerField
      FieldName = 'IDMENU'
    end
  end
  object frxBarCodeObject1: TfrxBarCodeObject
    Left = 144
    Top = 256
  end
  object FDCommand1: TFDCommand
    Connection = FDB
    Transaction = trWrite
    Left = 160
    Top = 360
  end
end
