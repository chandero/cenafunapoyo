object frmInformeIngresosGastosporCentro: TfrmInformeIngresosGastosporCentro
  Left = 470
  Top = 239
  Width = 411
  Height = 214
  Caption = 'Ingresos y Gastos por Centro de Costo'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  OnCreate = FormCreate
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 8
    Top = 8
    Width = 31
    Height = 13
    Caption = 'Centro'
  end
  object Label2: TLabel
    Left = 208
    Top = 8
    Width = 36
    Height = 13
    Caption = 'Periodo'
  end
  object edCentro: TDBLookupComboBox
    Left = 48
    Top = 5
    Width = 145
    Height = 21
    KeyField = 'ID_AGENCIA'
    ListField = 'DESCRIPCION_AGENCIA'
    ListSource = DScentro
    TabOrder = 0
  end
  object edPeriodo: TDBLookupComboBox
    Left = 248
    Top = 5
    Width = 126
    Height = 21
    KeyField = 'ID'
    ListField = 'DESCRIPCION'
    ListFieldIndex = 1
    TabOrder = 1
  end
  object bar: TProgressBar
    Left = 8
    Top = 74
    Width = 385
    Height = 17
    Min = 0
    Max = 100
    TabOrder = 2
  end
  object Panel1: TPanel
    Left = 0
    Top = 144
    Width = 403
    Height = 36
    Align = alBottom
    Color = clOlive
    TabOrder = 3
    object CmdAceptar: TBitBtn
      Left = 7
      Top = 5
      Width = 81
      Height = 25
      Caption = '&Procesar'
      TabOrder = 0
      OnClick = CmdAceptarClick
      Glyph.Data = {
        36050000424D3605000000000000360400002800000010000000100000000100
        08000000000000010000D30E0000D30E00000001000000010000008C00000094
        0000009C000000A5000000940800009C100000AD100000AD180000AD210000B5
        210000BD210018B5290000C62900319C310000CE310029AD390031B5420018C6
        420000D6420052A54A0029AD4A0029CE5A006BB5630000FF63008CBD7B00A5C6
        94005AE7A500FF00FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF001B1B1B1B1B13
        04161B1B1B1B1B1B1B1B1B1B1B1B1B0B0A01181B1B1B1B1B1B1B1B1B1B1B160A
        0C030D1B1B1B1B1B1B1B1B1B1B1B050E0C0601191B1B1B1B1B1B1B1B1B130E0C
        170E02001B1B1B1B1B1B1B1B1B0B1517170A0C01181B1B1B1B1B1B1B1B111717
        13130C030D1B1B1B1B1B1B1B1B1B08081B1B070C01191B1B1B1B1B1B1B1B1B1B
        1B1B100C02001B1B1B1B1B1B1B1B1B1B1B1B1B090C01181B1B1B1B1B1B1B1B1B
        1B1B1B130C0F101B1B1B1B1B1B1B1B1B1B1B1B1B141A0F181B1B1B1B1B1B1B1B
        1B1B1B1B1012181B1B1B1B1B1B1B1B1B1B1B1B1B1B191B1B1B1B1B1B1B1B1B1B
        1B1B1B1B1B1B1B1B1B1B1B1B1B1B1B1B1B1B1B1B1B1B1B1B1B1B}
    end
    object btnReporte: TBitBtn
      Left = 91
      Top = 5
      Width = 84
      Height = 25
      Caption = '&Reporte'
      Enabled = False
      TabOrder = 1
      OnClick = btnReporteClick
    end
    object btnAExcel: TBitBtn
      Left = 179
      Top = 5
      Width = 91
      Height = 25
      Caption = 'A Excel'
      Enabled = False
      TabOrder = 2
      OnClick = btnAExcelClick
      Glyph.Data = {
        36050000424D3605000000000000360400002800000010000000100000000100
        08000000000000010000320B0000320B00000001000000010000EFA54A00C684
        6B00BD8C7300CE947300EFB57300FFC67300BD847B00C6947B00B5848400B58C
        8400CE9C8400EFCE94009C9C9C00C6A59C00EFCE9C00F7D69C00C6ADA500F7D6
        A500CEB5AD00D6B5AD00C6BDAD00F7D6AD00D6BDB500DEBDB500DEC6B500E7C6
        B500EFCEB500F7D6B500F7DEB500EFCEBD00F7DEBD00527BC600E7DEC600F7DE
        C600F7E7C600E7CECE00E7D6CE00F7E7D600FFEFD600DEDEDE00FFEFE700FFF7
        E700FFF7EF00FFF7F700FFFFF700FF00FF0039A5FF0000F7FF0094FFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF002D2D08080808
        0808080808080808082D2D2D0D261F1F1C15110E0B0B0B0F082D2D2D0D262F1F
        1F0C0C0C0C0C0C0E082D2D2D10282E2F1F1F1F150E0E0B0E082D2D2D1029252E
        302F1F1F150E0E0B082D2D2D121F1F1F1F302F1F1F0C0C0E082D2D2D132E302F
        2F2F2F2F1F1F1111082D2D2D16312E302F1F1F22211E1B15082D2D2D1631272E
        302F1F1F0C0C0C1C082D2D2D1731312E302F2F1F1F21211B082D2D2D18313131
        2E302F2F1F1F2014082D2D2D1931270C0C2E302F2F1F1F09082D2D2D19313131
        3131312C23020400012D2D2D1D31313131313131240705032D2D2D2D192B2A2A
        2A2A2A2A23070A2D2D2D2D2D191A1A1A1A19191A16062D2D2D2D}
    end
    object CmdCerrar: TBitBtn
      Left = 278
      Top = 5
      Width = 75
      Height = 25
      Caption = '&Cerrar'
      TabOrder = 3
      OnClick = CmdCerrarClick
      Glyph.Data = {
        36050000424D3605000000000000360400002800000010000000100000000100
        08000000000000010000220B0000220B00000001000000010000006400004242
        42008C6363009A666600B9666600BB686800B0717200C3686900C66A6B00C76A
        6D00CF6C6E00D2686900D16D6E00CC6E7100C0797A00D2707200D4707100D572
        7300D0727500D3747600D9757600D8767700E37D7E000080000000960000DC7F
        8000FF00FF00D7868700DA888800D8888A00DA888A00DF898A00E6808100E085
        8500E9818200EE868700E3888900E78C8D00F0878800F18B8C00F28B8C00F18D
        8E00F48C8D00F48E8F00EB8F9000EC969700E49A9800F3919200F7909100F791
        9200F2939400F9909200F9949500FA949500F9969700F0999A00FC999A00FF9D
        9E00F7B58400F5A7A500FACCAA00FBD6BB00FADCDC00FFFFFF00000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        00000000000000000000000000000000000000000000000000001A1A1A1A1A1A
        1A02011A1A1A1A1A1A1A1A1A1A1A02030405011A1A1A1A1A1A1A1A1A0203080B
        0B07010303030303031A1A1A030C0C0C0A09010E1F323B3B031A1A1A030C0C10
        0F0D01181818183B031A1A1A03111114151201181818183B031A1A1A03161616
        201301181717173B031A1A1A0326222D3E1D01171700003B031A1A1A03262337
        3F1E013C3A3A3A3B031A1A1A03272B282A19013C3D3D3D3B031A1A1A03273031
        2921013C3D3D3D3B031A1A1A032734352F24013C3D3D3D3B031A1A1A03273338
        3625013C3D3D3D3B031A1A1A03032E33392C013C3D3D3D3B031A1A1A1A1A0306
        1B1C010303030303031A1A1A1A1A1A1A0303011A1A1A1A1A1A1A}
    end
  end
  object bar2: TProgressBar
    Left = 8
    Top = 98
    Width = 385
    Height = 17
    Min = 0
    Max = 100
    TabOrder = 4
  end
  object bar3: TProgressBar
    Left = 8
    Top = 122
    Width = 385
    Height = 17
    Min = 0
    Max = 100
    TabOrder = 5
  end
  object bar0: TProgressBar
    Left = 9
    Top = 51
    Width = 385
    Height = 17
    Min = 0
    Max = 100
    TabOrder = 6
  end
  object DScentro: TDataSource
    DataSet = IBQcentro
    Left = 8
    Top = 24
  end
  object CDSPuc: TClientDataSet
    Aggregates = <>
    FieldDefs = <
      item
        Name = 'CODIGO'
        Attributes = [faRequired, faFixed]
        DataType = ftString
        Size = 18
      end
      item
        Name = 'ID_AGENCIA'
        Attributes = [faRequired]
        DataType = ftSmallint
      end
      item
        Name = 'CLAVE'
        Attributes = [faRequired]
        DataType = ftString
        Size = 5
      end
      item
        Name = 'NOMBRE'
        Attributes = [faRequired]
        DataType = ftString
        Size = 100
      end
      item
        Name = 'TIPO'
        Attributes = [faRequired]
        DataType = ftString
        Size = 2
      end
      item
        Name = 'CODIGOMAYOR'
        Attributes = [faRequired]
        DataType = ftString
        Size = 18
      end
      item
        Name = 'MOVIMIENTO'
        DataType = ftSmallint
      end
      item
        Name = 'ESBANCO'
        DataType = ftSmallint
      end
      item
        Name = 'INFORME'
        Attributes = [faRequired, faFixed]
        DataType = ftString
        Size = 2
      end
      item
        Name = 'NIVEL'
        Attributes = [faRequired]
        DataType = ftSmallint
      end
      item
        Name = 'NATURALEZA'
        Attributes = [faRequired, faFixed]
        DataType = ftString
        Size = 1
      end
      item
        Name = 'CENTROCOSTO'
        Attributes = [faRequired, faFixed]
        DataType = ftString
        Size = 2
      end
      item
        Name = 'SALDOINICIAL'
        DataType = ftBCD
        Precision = 18
        Size = 3
      end
      item
        Name = 'ESCAPTACION'
        DataType = ftSmallint
      end
      item
        Name = 'ESCOLOCACION'
        DataType = ftSmallint
      end>
    IndexDefs = <>
    Params = <>
    ProviderName = 'DSPpuc'
    StoreDefs = True
    Left = 208
    Top = 32
    object CDSPucCODIGO: TStringField
      FieldName = 'CODIGO'
      Origin = '"con$puc"."CODIGO"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      FixedChar = True
      Size = 18
    end
    object CDSPucID_AGENCIA: TSmallintField
      FieldName = 'ID_AGENCIA'
      Origin = '"con$puc"."ID_AGENCIA"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object CDSPucCLAVE: TStringField
      FieldName = 'CLAVE'
      Origin = '"con$puc"."CLAVE"'
      Required = True
      Size = 5
    end
    object CDSPucNOMBRE: TStringField
      FieldName = 'NOMBRE'
      Origin = '"con$puc"."NOMBRE"'
      Required = True
      Size = 100
    end
    object CDSPucTIPO: TStringField
      FieldName = 'TIPO'
      Origin = '"con$puc"."TIPO"'
      Required = True
      Size = 2
    end
    object CDSPucCODIGOMAYOR: TStringField
      FieldName = 'CODIGOMAYOR'
      Origin = '"con$puc"."CODIGOMAYOR"'
      Required = True
      Size = 18
    end
    object CDSPucMOVIMIENTO: TSmallintField
      FieldName = 'MOVIMIENTO'
      Origin = '"con$puc"."MOVIMIENTO"'
    end
    object CDSPucESBANCO: TSmallintField
      FieldName = 'ESBANCO'
      Origin = '"con$puc"."ESBANCO"'
    end
    object CDSPucINFORME: TStringField
      FieldName = 'INFORME'
      Origin = '"con$puc"."INFORME"'
      Required = True
      FixedChar = True
      Size = 2
    end
    object CDSPucNIVEL: TSmallintField
      FieldName = 'NIVEL'
      Origin = '"con$puc"."NIVEL"'
      Required = True
    end
    object CDSPucNATURALEZA: TStringField
      FieldName = 'NATURALEZA'
      Origin = '"con$puc"."NATURALEZA"'
      Required = True
      FixedChar = True
      Size = 1
    end
    object CDSPucCENTROCOSTO: TStringField
      FieldName = 'CENTROCOSTO'
      Origin = '"con$puc"."CENTROCOSTO"'
      Required = True
      FixedChar = True
      Size = 2
    end
    object CDSPucSALDOINICIAL: TBCDField
      FieldName = 'SALDOINICIAL'
      Origin = '"con$puc"."SALDOINICIAL"'
      Precision = 18
      Size = 3
    end
    object CDSPucESCAPTACION: TSmallintField
      FieldName = 'ESCAPTACION'
      Origin = '"con$puc"."ESCAPTACION"'
    end
    object CDSPucESCOLOCACION: TSmallintField
      FieldName = 'ESCOLOCACION'
      Origin = '"con$puc"."ESCOLOCACION"'
    end
  end
  object IBQcentro: TIBQuery
    SQL.Strings = (
      'SELECT * FROM "gen$agencia"')
    Left = 40
    Top = 24
  end
  object IBQpuc: TIBQuery
    Database = dmGeneral.IBDatabase1
    Transaction = dmGeneral.IBTransaction1
    SQL.Strings = (
      
        'SELECT  *  FROM  "con$puc"  p WHERE p.CODIGO BETWEEN '#39'4000000000' +
        '00000000'#39' AND '#39'799999999999999999'#39
      'ORDER BY p.CODIGO ASC')
    Left = 144
    Top = 32
  end
  object DSPpuc: TDataSetProvider
    DataSet = IBQpuc
    Constraints = True
    Left = 176
    Top = 32
  end
  object IBQmovs: TIBQuery
    SQL.Strings = (
      'SELECT * FROM "con$auxiliar" a WHERE'
      
        'a.CODIGO BETWEEN :CODIGO_INICIAL and :CODIGO_FINAL and a.FECHA B' +
        'ETWEEN :FECHA_INICIAL and :FECHA_FINAL and a.ESTADOAUX = '#39'C'#39' and' +
        ' a.ID_AGENCIA = :ID_AGENCIA')
    Left = 96
    Top = 24
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'CODIGO_INICIAL'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'CODIGO_FINAL'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'FECHA_INICIAL'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'FECHA_FINAL'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'ID_AGENCIA'
        ParamType = ptUnknown
      end>
  end
  object IBQdata: TIBQuery
    Left = 272
    Top = 40
  end
  object CDSdata: TClientDataSet
    Active = True
    Aggregates = <>
    FieldDefs = <
      item
        Name = 'CODIGO'
        DataType = ftString
        Size = 18
      end
      item
        Name = 'NOMBRE'
        DataType = ftString
        Size = 200
      end
      item
        Name = 'CODIGO_MAYOR'
        DataType = ftString
        Size = 18
      end
      item
        Name = 'MOVIMIENTO'
        DataType = ftInteger
      end
      item
        Name = 'NIVEL'
        DataType = ftInteger
      end
      item
        Name = 'SALDO_ANTERIOR'
        DataType = ftCurrency
      end
      item
        Name = 'DEBITO'
        DataType = ftCurrency
      end
      item
        Name = 'CREDITO'
        DataType = ftCurrency
      end
      item
        Name = 'SALDO_ACTUAL'
        DataType = ftCurrency
      end>
    IndexDefs = <
      item
        Name = 'DEFAULT_ORDER'
      end
      item
        Name = 'CHANGEINDEX'
      end>
    IndexFieldNames = 'CODIGO'
    Params = <>
    StoreDefs = True
    Left = 320
    Top = 32
    Data = {
      2D0100009619E0BD0100000018000000090000000000030000002D0106434F44
      49474F0100490000000100055749445448020002001200064E4F4D4252450100
      49000000010005574944544802000200C8000C434F4449474F5F4D41594F5201
      004900000001000557494454480200020012000A4D4F56494D49454E544F0400
      010000000000054E4956454C04000100000000000E53414C444F5F414E544552
      494F52080004000000010007535542545950450200490006004D6F6E65790006
      44454249544F080004000000010007535542545950450200490006004D6F6E65
      7900074352454449544F08000400000001000753554254595045020049000600
      4D6F6E6579000C53414C444F5F41435455414C08000400000001000753554254
      5950450200490006004D6F6E6579000000}
    object CDSdataCODIGO: TStringField
      FieldName = 'CODIGO'
      Size = 18
    end
    object CDSdataNOMBRE: TStringField
      FieldName = 'NOMBRE'
      Size = 200
    end
    object CDSdataCODIGO_MAYOR: TStringField
      FieldName = 'CODIGO_MAYOR'
      Size = 18
    end
    object CDSdataMOVIMIENTO: TIntegerField
      FieldName = 'MOVIMIENTO'
    end
    object CDSdataNIVEL: TIntegerField
      FieldName = 'NIVEL'
    end
    object CDSdataSALDO_ANTERIOR: TCurrencyField
      FieldName = 'SALDO_ANTERIOR'
    end
    object CDSdataDEBITO: TCurrencyField
      FieldName = 'DEBITO'
    end
    object CDSdataCREDITO: TCurrencyField
      FieldName = 'CREDITO'
    end
    object CDSdataSALDO_ACTUAL: TCurrencyField
      FieldName = 'SALDO_ACTUAL'
    end
  end
  object CDSinforme: TClientDataSet
    Active = True
    Aggregates = <>
    FieldDefs = <
      item
        Name = 'CODIGO'
        DataType = ftString
        Size = 18
      end
      item
        Name = 'NOMBRE'
        DataType = ftString
        Size = 200
      end
      item
        Name = 'SALDO_ANTERIOR'
        DataType = ftCurrency
      end
      item
        Name = 'DEBITO'
        DataType = ftCurrency
      end
      item
        Name = 'CREDITO'
        DataType = ftCurrency
      end
      item
        Name = 'SALDO_ACTUAL'
        DataType = ftCurrency
      end>
    IndexDefs = <
      item
        Name = 'DEFAULT_ORDER'
      end
      item
        Name = 'CHANGEINDEX'
      end>
    IndexFieldNames = 'CODIGO'
    Params = <>
    StoreDefs = True
    Left = 352
    Top = 32
    Data = {
      EB0000009619E0BD010000001800000006000000000003000000EB0006434F44
      49474F0100490000000100055749445448020002001200064E4F4D4252450100
      49000000010005574944544802000200C8000E53414C444F5F414E544552494F
      52080004000000010007535542545950450200490006004D6F6E657900064445
      4249544F080004000000010007535542545950450200490006004D6F6E657900
      074352454449544F080004000000010007535542545950450200490006004D6F
      6E6579000C53414C444F5F41435455414C080004000000010007535542545950
      450200490006004D6F6E6579000000}
    object CDSinformeCODIGO: TStringField
      FieldName = 'CODIGO'
      Size = 18
    end
    object CDSinformeNOMBRE: TStringField
      FieldName = 'NOMBRE'
      Size = 200
    end
    object CDSinformeSALDO_ANTERIOR: TCurrencyField
      FieldName = 'SALDO_ANTERIOR'
    end
    object CDSinformeDEBITO: TCurrencyField
      FieldName = 'DEBITO'
    end
    object CDSinformeCREDITO: TCurrencyField
      FieldName = 'CREDITO'
    end
    object CDSinformeSALDO_ACTUAL: TCurrencyField
      FieldName = 'SALDO_ACTUAL'
    end
  end
  object SD1: TSaveDialog
    Left = 248
    Top = 48
  end
  object frReport1: TfrReport
    InitialZoom = pzDefault
    PreviewButtons = [pbZoom, pbLoad, pbSave, pbPrint, pbFind, pbHelp, pbExit]
    RebuildPrinter = False
    Left = 56
    Top = 80
    ReportForm = {19000000}
  end
  object frDBDataSet1: TfrDBDataSet
    DataSet = CDSinforme
    Left = 96
    Top = 64
  end
  object IBQsaldoinicial: TIBQuery
    SQL.Strings = (
      'SELECT s.SALDOINICIAL FROM "con$saldosiniciales" s'
      'WHERE s.CODIGO = :CODIGO and s.ID_AGENCIA = :ID_AGENCIA')
    Left = 16
    Top = 56
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'CODIGO'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'ID_AGENCIA'
        ParamType = ptUnknown
      end>
  end
  object IBQmovant: TIBQuery
    SQL.Strings = (
      
        'SELECT SUM(a.DEBITO-a.CREDITO) as MOVIMIENTOS FROM "con$auxiliar' +
        '" a WHERE a.CODIGO = :CODIGO and a.ID_AGENCIA = :ID_AGENCIA and ' +
        'a.FECHA BETWEEN :FECHA_INICIAL and :FECHA_FINAL and a.ESTADOAUX ' +
        '= '#39'C'#39)
    Left = 48
    Top = 56
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'CODIGO'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'ID_AGENCIA'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'FECHA_INICIAL'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'FECHA_FINAL'
        ParamType = ptUnknown
      end>
  end
end
