object FrmRecuperarInforme: TFrmRecuperarInforme
  Left = 413
  Top = 188
  Width = 336
  Height = 198
  BorderIcons = [biSystemMenu]
  Caption = 'Recuperar Informe Desembolso'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clBlack
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poMainFormCenter
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 217
    Height = 65
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 0
    object Label2: TLabel
      Left = 2
      Top = 9
      Width = 64
      Height = 13
      Caption = 'Colocaci'#243'n'
    end
    object EDcolocacion: TEdit
      Left = 69
      Top = 8
      Width = 145
      Height = 21
      Color = clWhite
      MaxLength = 11
      TabOrder = 0
      OnKeyPress = EDcolocacionKeyPress
    end
  end
  object Panel2: TPanel
    Left = 217
    Top = 0
    Width = 96
    Height = 65
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 1
    object BitBtn1: TBitBtn
      Left = 6
      Top = 5
      Width = 84
      Height = 25
      Caption = '&Buscar'
      TabOrder = 0
      OnClick = BitBtn1Click
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
    object BitBtn2: TBitBtn
      Left = 6
      Top = 33
      Width = 84
      Height = 25
      Caption = '&Cerrar'
      TabOrder = 1
      OnClick = BitBtn2Click
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
  object IBQuery1: TIBQuery
    Database = dmGeneral.IBDatabase1
    Transaction = dmGeneral.IBTransaction1
    SQL.Strings = (
      'select * from "gen$agencia"')
    Left = 16
    Top = 16
  end
  object DataSource1: TDataSource
    DataSet = IBQuery1
    Left = 40
    Top = 16
  end
  object IBQuerytabla: TIBQuery
    Database = dmGeneral.IBDatabase1
    Transaction = IBtranreporte
    SQL.Strings = (
      
        'select ID_COLOCACION,CUOTA_NUMERO, FECHA_A_PAGAR, CAPITAL_A_PAGA' +
        'R, INTERES_A_PAGAR, (CAPITAL_A_PAGAR + INTERES_A_PAGAR) as TOTAL' +
        'CUOTA from "col$tablaliquidacion"')
    Left = 250
    Top = 92
    object IBQuerytablaID_COLOCACION: TIBStringField
      FieldName = 'ID_COLOCACION'
      Origin = '"col$tablaliquidacion"."ID_COLOCACION"'
      Required = True
      FixedChar = True
      Size = 11
    end
    object IBQuerytablaCUOTA_NUMERO: TIntegerField
      FieldName = 'CUOTA_NUMERO'
      Origin = '"col$tablaliquidacion"."CUOTA_NUMERO"'
      Required = True
    end
    object IBQuerytablaFECHA_A_PAGAR: TDateField
      FieldName = 'FECHA_A_PAGAR'
      Origin = '"col$tablaliquidacion"."FECHA_A_PAGAR"'
      Required = True
    end
    object IBQuerytablaCAPITAL_A_PAGAR: TIBBCDField
      FieldName = 'CAPITAL_A_PAGAR'
      Origin = '"col$tablaliquidacion"."CAPITAL_A_PAGAR"'
      Precision = 18
      Size = 3
    end
    object IBQuerytablaINTERES_A_PAGAR: TIBBCDField
      FieldName = 'INTERES_A_PAGAR'
      Origin = '"col$tablaliquidacion"."INTERES_A_PAGAR"'
      Precision = 18
      Size = 3
    end
    object IBQuerytablaTOTALCUOTA: TIBBCDField
      FieldName = 'TOTALCUOTA'
      Required = True
      Precision = 18
      Size = 3
    end
  end
  object IBQuerycolocacion: TIBQuery
    Database = dmGeneral.IBDatabase1
    Transaction = IBtranreporte
    SQL.Strings = (
      'SELECT '
      '  "col$colocacion".ID_COLOCACION,'
      ' "col$colocacion".ID_PERSONA,'
      '  "gen$persona".NOMBRE,'
      '  "gen$persona".PRIMER_APELLIDO,'
      '  "gen$persona".SEGUNDO_APELLIDO,'
      '  "gen$tiposidentificacion".DESCRIPCION_IDENTIFICACION,'
      '  "col$clasificacion".DESCRIPCION_CLASIFICACION,'
      '  "col$lineas".DESCRIPCION_LINEA,'
      '  "col$inversion".DESCRIPCION_INVERSION,'
      '  "col$respaldo".DESCRIPCION_RESPALDO,'
      '  "col$garantia".DESCRIPCION_GARANTIA,'
      '  "col$colocacion".FECHA_DESEMBOLSO,'
      '  "col$colocacion".VALOR_DESEMBOLSO,'
      '  "col$colocacion".PLAZO_COLOCACION,'
      '  "col$colocacion".FECHA_VENCIMIENTO,'
      '  "col$colocacion".TIPO_INTERES,'
      '  "col$tasavariables".DESCRIPCION_TASA,'
      '  "col$colocacion".TASA_INTERES_CORRIENTE,'
      '  "col$colocacion".TASA_INTERES_MORA,'
      '  "col$colocacion".PUNTOS_INTERES,'
      '  "col$tiposcuota".DESCRIPCION_TIPO_CUOTA,'
      '  "col$colocacion".AMORTIZA_CAPITAL,'
      '  "col$colocacion".AMORTIZA_INTERES,'
      '  "col$colocacion".PERIODO_GRACIA,'
      '  "col$colocacion".VALOR_CUOTA,'
      '  "col$colocacion".FECHA_CAPITAL,'
      '  "col$colocacion".FECHA_INTERES,'
      
        '  "col$colocacion".NUMERO_CUENTA,   "col$colocacion".NOTA_CONTAB' +
        'LE,'
      '  "gen$empleado".PRIMER_APELLIDO AS PRIMER_APELLIDO1,'
      '  "gen$empleado".SEGUNDO_APELLIDO AS SEGUNDO_APELLIDO1,'
      '  "gen$empleado".NOMBRE AS NOMBRE1'
      'FROM'
      '  "col$colocacion"'
      
        '  INNER JOIN "gen$persona" ON ("col$colocacion".ID_PERSONA = "ge' +
        'n$persona".ID_PERSONA) AND ("col$colocacion".ID_IDENTIFICACION =' +
        ' "gen$persona".ID_IDENTIFICACION)'
      
        '  INNER JOIN "gen$tiposidentificacion" ON ("gen$persona".ID_IDEN' +
        'TIFICACION = "gen$tiposidentificacion".ID_IDENTIFICACION)'
      
        '  INNER JOIN "col$clasificacion" ON ("col$colocacion".ID_CLASIFI' +
        'CACION = "col$clasificacion".ID_CLASIFICACION)'
      
        '  INNER JOIN "col$lineas" ON ("col$colocacion".ID_LINEA = "col$l' +
        'ineas".ID_LINEA)'
      
        '  INNER JOIN "col$inversion" ON ("col$colocacion".ID_INVERSION =' +
        ' "col$inversion".ID_INVERSION)'
      
        '  INNER JOIN "col$respaldo" ON ("col$colocacion".ID_RESPALDO = "' +
        'col$respaldo".ID_RESPALDO)'
      
        '  INNER JOIN "col$garantia" ON ("col$colocacion".ID_GARANTIA = "' +
        'col$garantia".ID_GARANTIA)'
      
        '  LEFT OUTER JOIN "col$tasavariables" ON ("col$colocacion".ID_IN' +
        'TERES = "col$tasavariables".ID_INTERES)'
      
        '  INNER JOIN "col$tiposcuota" ON ("col$colocacion".ID_TIPO_CUOTA' +
        ' = "col$tiposcuota".ID_TIPOS_CUOTA)'
      
        '  INNER JOIN "gen$empleado" ON ("col$colocacion".ID_EMPLEADO = "' +
        'gen$empleado".ID_EMPLEADO)')
    Left = 184
    Top = 90
  end
  object IBQueryGarPersonal: TIBQuery
    Database = dmGeneral.IBDatabase1
    Transaction = IBtranreporte
    SQL.Strings = (
      'SELECT '
      '  "gen$persona".PRIMER_APELLIDO,'
      '  "gen$persona".SEGUNDO_APELLIDO,'
      '  "gen$persona".NOMBRE,'
      '  "col$colgarantias".ID_COLOCACION,'
      '  "col$colgarantias".ID_PERSONA'
      'FROM'
      '  "col$colgarantias"'
      
        '  INNER JOIN "gen$persona" ON ("col$colgarantias".ID_PERSONA = "' +
        'gen$persona".ID_PERSONA) AND ("col$colgarantias".ID_IDENTIFICACI' +
        'ON = "gen$persona".ID_IDENTIFICACION)'
      '')
    Left = 156
    Top = 94
  end
  object frCompositeReport1: TfrCompositeReport
    InitialZoom = pzDefault
    PreviewButtons = [pbZoom, pbLoad, pbSave, pbPrint, pbFind, pbHelp, pbExit]
    RebuildPrinter = False
    DoublePassReport = False
    Left = 128
    Top = 64
    ReportForm = {19000000}
  end
  object frReport1: TfrReport
    InitialZoom = pzDefault
    PreviewButtons = [pbZoom, pbLoad, pbSave, pbPrint, pbFind, pbHelp, pbExit]
    RebuildPrinter = False
    OnGetValue = frReport1GetValue
    Left = 64
    Top = 16
    ReportForm = {19000000}
  end
  object frDBDataSet2: TfrDBDataSet
    DataSet = IBQueryGarPersonal
    Left = 72
    Top = 128
  end
  object frDBDataSet1: TfrDBDataSet
    DataSet = IBQueryGarReal
    Left = 120
    Top = 128
  end
  object frDBDataSet3: TfrDBDataSet
    DataSet = IBQuerycontable
    Left = 160
    Top = 128
  end
  object frDBDataSet4: TfrDBDataSet
    DataSet = CDliquidacion
    Left = 16
    Top = 136
  end
  object IBtranreporte: TIBTransaction
    DefaultDatabase = dmGeneral.IBDatabase1
    Left = 248
    Top = 64
  end
  object IBQuerycontable: TIBQuery
    Database = dmGeneral.IBDatabase1
    Transaction = IBtranreporte
    SQL.Strings = (
      'select ID_COLOCACION,"col$concol"."CODIGO",NOMBRE,DEBITO,CREDITO'
      'FROM "col$concol" left join "con$puc" ON'
      
        '("col$concol"."CODIGO" = "con$puc"."CODIGO" and "col$concol"."ID' +
        '_AGENCIA" = "con$puc"."ID_AGENCIA")'
      
        'where ("col$concol".ID_AGENCIA = :"ID_AGENCIA") AND ("col$concol' +
        '".ID_COLOCACION = :"ID_COLOCACION") ORDER BY CREDITO,"col$concol' +
        '"."CODIGO"')
    Left = 116
    Top = 90
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'ID_AGENCIA'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'ID_COLOCACION'
        ParamType = ptUnknown
      end>
  end
  object IBQueryGarReal: TIBQuery
    Database = dmGeneral.IBDatabase1
    Transaction = IBtranreporte
    SQL.Strings = (
      'SELECT '
      '  "col$colgarantiasreal".ID_COLOCACION,'
      '  "col$colgarantiasreal".NUMERO_ESCRITURA,'
      '  "col$colgarantiasreal".FECHA_ESCRITURA,'
      '  "col$colgarantiasreal".NOMBRE_NOTARIA,'
      '  "col$colgarantiasreal".CIUDAD_ESCRITURA,'
      '  "col$colgarantiasreal".MATRICULA_INMOBILIARIA,'
      '  "col$colgarantiasreal".FECHA_REGISTRO,'
      '  "col$colgarantiasreal".AVALUO,'
      '  "col$colgarantiasreal".CUENTAS_DE_ORDEN,'
      '  "col$colgarantiasreal".POLIZA_INCENDIO,'
      '  "col$colgarantiasreal".VALOR_ASEGURADO,'
      '  "col$colgarantiasreal".FECHA_INICIAL_POLIZA,'
      '  "col$colgarantiasreal".FECHA_FINAL_POLIZA,'
      '  "col$colgarantiasreal".CODIGO_ASEGURADORA'
      'FROM'
      '  "col$colgarantiasreal"')
    Left = 212
    Top = 92
  end
  object CDliquidacion: TClientDataSet
    Active = True
    Aggregates = <>
    FieldDefs = <
      item
        Name = 'cuota_numero'
        DataType = ftInteger
      end
      item
        Name = 'fecha_a_pagar'
        DataType = ftDate
      end
      item
        Name = 'capital_a_pagar'
        DataType = ftCurrency
      end
      item
        Name = 'interes_a_pagar'
        DataType = ftCurrency
      end
      item
        Name = 'otros'
        DataType = ftCurrency
      end
      item
        Name = 'saldo'
        DataType = ftCurrency
      end
      item
        Name = 'totalcuota'
        DataType = ftCurrency
      end>
    IndexDefs = <>
    Params = <>
    StoreDefs = True
    Left = 48
    Top = 64
    Data = {
      080100009619E0BD01000000180000000700000000000300000008010C63756F
      74615F6E756D65726F04000100000000000D66656368615F615F706167617204
      000600000000000F6361706974616C5F615F7061676172080004000000010007
      535542545950450200490006004D6F6E6579000F696E74657265735F615F7061
      676172080004000000010007535542545950450200490006004D6F6E65790005
      6F74726F73080004000000010007535542545950450200490006004D6F6E6579
      000573616C646F080004000000010007535542545950450200490006004D6F6E
      6579000A746F74616C63756F7461080004000000010007535542545950450200
      490006004D6F6E6579000000}
    object CDliquidacioncuota: TIntegerField
      FieldName = 'cuota_numero'
    end
    object CDliquidacionfecha_pago: TDateField
      FieldName = 'fecha_a_pagar'
    end
    object CDliquidacioncapital: TCurrencyField
      FieldName = 'capital_a_pagar'
    end
    object CDliquidacioninteres: TCurrencyField
      FieldName = 'interes_a_pagar'
    end
    object CDliquidacionotros: TCurrencyField
      FieldName = 'otros'
    end
    object CDliquidacionsaldo: TCurrencyField
      FieldName = 'saldo'
    end
    object CDliquidaciontotalcuota: TCurrencyField
      FieldName = 'totalcuota'
    end
  end
  object IBentidad: TIBQuery
    Database = dmGeneral.IBDatabase1
    Transaction = IBTransaction6
    SQL.Strings = (
      'select * from "gen$entidades"')
    Left = 248
    Top = 24
  end
  object IBTransaction6: TIBTransaction
    DefaultDatabase = dmGeneral.IBDatabase1
    Left = 280
    Top = 64
  end
  object frDBDataSet5: TfrDBDataSet
    DataSet = IBentidad
    Left = 216
    Top = 64
  end
  object IBhorario: TIBQuery
    Database = dmGeneral.IBDatabase1
    Transaction = IBTransaction6
    SQL.Strings = (
      'SELECT * FROM "gen$horario"'
      'ORDER BY ID_HORARIO')
    Left = 216
    Top = 8
  end
  object CDSDescuento: TClientDataSet
    Active = True
    Aggregates = <>
    FieldDefs = <
      item
        Name = 'ID_DESCUENTO'
        DataType = ftInteger
      end
      item
        Name = 'DESCONTAR'
        DataType = ftBoolean
      end
      item
        Name = 'DESCRIPCION_DESCUENTO'
        DataType = ftString
        Size = 200
      end>
    IndexDefs = <>
    Params = <
      item
        DataType = ftUnknown
        Name = 'ID_SOLICITUD'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'ID_AGENCIA'
        ParamType = ptUnknown
      end>
    StoreDefs = True
    Left = 16
    Top = 64
    Data = {
      6B0000009619E0BD0100000018000000030000000000030000006B000C49445F
      4445534355454E544F040001000000000009444553434F4E5441520200030000
      000000154445534352495043494F4E5F4445534355454E544F01004900000001
      0005574944544802000200C8000000}
    object CDSDescuentoID_DESCUENTO: TIntegerField
      FieldName = 'ID_DESCUENTO'
    end
    object CDSDescuentoDESCONTAR: TBooleanField
      FieldName = 'DESCONTAR'
    end
    object CDSDescuentoDESCRIPCION_DESCUENTO: TStringField
      FieldName = 'DESCRIPCION_DESCUENTO'
      Size = 200
    end
  end
  object CDSADescontar: TClientDataSet
    Active = True
    Aggregates = <>
    FieldDefs = <
      item
        Name = 'ID_DESCUENTO'
        DataType = ftInteger
      end
      item
        Name = 'CODIGO'
        DataType = ftString
        Size = 200
      end
      item
        Name = 'CUOTA_NUMERO'
        DataType = ftInteger
      end
      item
        Name = 'VALOR'
        DataType = ftCurrency
      end>
    IndexDefs = <>
    Params = <>
    StoreDefs = True
    Left = 80
    Top = 64
    Data = {
      810000009619E0BD01000000180000000400000000000300000081000C49445F
      4445534355454E544F040001000000000006434F4449474F0100490000000100
      05574944544802000200C8000C43554F54415F4E554D45524F04000100000000
      000556414C4F52080004000000010007535542545950450200490006004D6F6E
      6579000000}
    object CDSADescontarID_DESCUENTO: TIntegerField
      FieldName = 'ID_DESCUENTO'
    end
    object CDSADescontarCODIGO: TStringField
      FieldName = 'CODIGO'
      Size = 200
    end
    object CDSADescontarCUOTA: TIntegerField
      FieldName = 'CUOTA_NUMERO'
    end
    object CDSADescontarVALOR: TCurrencyField
      FieldName = 'VALOR'
    end
  end
  object NLetra1: TNLetra
    Numero = 0
    Letras = 'Cero'
    Left = 280
    Top = 96
  end
  object IBQDescuento: TIBQuery
    Left = 24
    Top = 96
  end
<<<<<<< HEAD
  object IBSQL4: TIBSQL
    Database = dmGeneral.IBDatabase1
    Transaction = IBtranreporte
    Left = 64
    Top = 96
  end
=======
>>>>>>> 171925b3cf59501bab9dd1664befb26ff80c6cee
end
