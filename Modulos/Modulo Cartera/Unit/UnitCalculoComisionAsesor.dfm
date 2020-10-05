object frmCalculoComisionAsesor: TfrmCalculoComisionAsesor
  Left = 427
  Top = 186
  Width = 722
  Height = 290
  Caption = 'Calculo Comisi'#243'n Asesor'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clBlack
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object GroupBox1: TGroupBox
    Left = 0
    Top = 0
    Width = 714
    Height = 41
    Align = alTop
    Caption = 'Rango de Validaci'#243'n'
    TabOrder = 0
    object Label1: TLabel
      Left = 112
      Top = 16
      Width = 31
      Height = 13
      Caption = 'Desde'
    end
    object Label2: TLabel
      Left = 272
      Top = 16
      Width = 28
      Height = 13
      Caption = 'Hasta'
    end
    object Label3: TLabel
      Left = 432
      Top = 16
      Width = 24
      Height = 13
      Caption = 'Tasa'
    end
    object btnProcesar: TButton
      Left = 524
      Top = 10
      Width = 75
      Height = 25
      Caption = '&Procesar'
      TabOrder = 0
      Visible = False
      OnClick = btnProcesarClick
    end
    object cbDesde: TComboBox
      Left = 148
      Top = 12
      Width = 93
      Height = 21
      ItemHeight = 13
      ItemIndex = 0
      TabOrder = 1
      Text = 'Enero'
      Items.Strings = (
        'Enero'
        'Febrero'
        'Marzo'
        'Abril'
        'Mayo'
        'Junio'
        'Julio'
        'Agosto'
        'Septiembre'
        'Octubre'
        'Noviembre'
        'Diciembre')
    end
    object cbHasta: TComboBox
      Left = 312
      Top = 12
      Width = 95
      Height = 21
      ItemHeight = 13
      ItemIndex = 0
      TabOrder = 2
      Text = 'Enero'
      Items.Strings = (
        'Enero'
        'Febrero'
        'Marzo'
        'Abril'
        'Mayo'
        'Junio'
        'Julio'
        'Agosto'
        'Septiembre'
        'Octubre'
        'Noviembre'
        'Diciembre')
    end
    object edTasa: TJvFloatEdit
      Left = 461
      Top = 12
      Width = 52
      Height = 21
      Alignment = taRightJustify
      GroupIndex = -1
      MaxPixel.Font.Charset = DEFAULT_CHARSET
      MaxPixel.Font.Color = clBlack
      MaxPixel.Font.Height = -11
      MaxPixel.Font.Name = 'MS Sans Serif'
      MaxPixel.Font.Style = []
      Modified = False
      SelStart = 0
      SelLength = 0
      PasswordChar = #0
      ReadOnly = False
      TabOrder = 3
      Value = 15
    end
    object btnCalcular: TButton
      Left = 608
      Top = 10
      Width = 75
      Height = 25
      Caption = 'Calcular'
      TabOrder = 4
      OnClick = btnCalcularClick
    end
  end
  object gridData: TDBGrid
    Left = 0
    Top = 41
    Width = 714
    Height = 180
    Align = alClient
    DataSource = DSdata
    TabOrder = 1
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clBlack
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
  end
  object Panel1: TPanel
    Left = 0
    Top = 221
    Width = 714
    Height = 35
    Align = alBottom
    TabOrder = 2
    object btnAExcel: TBitBtn
      Left = 526
      Top = 6
      Width = 91
      Height = 25
      Caption = 'A Excel'
      Enabled = False
      TabOrder = 0
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
      Left = 622
      Top = 5
      Width = 66
      Height = 25
      Caption = '&Cerrar'
      TabOrder = 1
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
    object btnReporte: TBitBtn
      Left = 5
      Top = 5
      Width = 75
      Height = 25
      Caption = '&Reporte'
      Enabled = False
      TabOrder = 2
      OnClick = btnReporteClick
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
  end
  object CDSdata: TClientDataSet
    Active = True
    Aggregates = <>
    FieldDefs = <
      item
        Name = 'ASESOR'
        DataType = ftString
        Size = 100
      end
      item
        Name = 'COMISION'
        DataType = ftCurrency
      end>
    IndexDefs = <>
    Params = <>
    StoreDefs = True
    Left = 264
    Top = 80
    Data = {
      5A0000009619E0BD0100000018000000020000000000030000005A0006415345
      534F52010049000000010005574944544802000200640008434F4D4953494F4E
      080004000000010007535542545950450200490006004D6F6E6579000000}
    object CDSdataASESOR: TStringField
      FieldName = 'ASESOR'
      Size = 100
    end
    object CDSdataCOMISION: TCurrencyField
      FieldName = 'COMISION'
    end
  end
  object CDScolocacion: TClientDataSet
    Active = True
    Aggregates = <>
    FieldDefs = <
      item
        Name = 'ID_ASESOR'
        DataType = ftInteger
      end
      item
        Name = 'DOCUMENTO'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'ASESOR'
        DataType = ftString
        Size = 100
      end
      item
        Name = 'ID_COLOCACION'
        DataType = ftString
        Size = 11
      end
      item
        Name = 'CLIENTE'
        DataType = ftString
        Size = 100
      end
      item
        Name = 'PAGA'
        DataType = ftBoolean
      end
      item
        Name = 'INTERES'
        DataType = ftCurrency
      end
      item
        Name = 'COMISION'
        DataType = ftCurrency
      end
      item
        Name = 'PERIODO'
        DataType = ftInteger
      end
      item
        Name = 'ANHO'
        DataType = ftInteger
      end>
    IndexDefs = <>
    Params = <>
    StoreDefs = True
    Left = 200
    Top = 80
    Data = {
      160100009619E0BD01000000180000000A00000000000300000016010949445F
      415345534F52040001000000000009444F43554D454E544F0100490000000100
      05574944544802000200140006415345534F5201004900000001000557494454
      480200020064000D49445F434F4C4F434143494F4E0100490000000100055749
      445448020002000B0007434C49454E5445010049000000010005574944544802
      00020064000450414741020003000000000007494E5445524553080004000000
      010007535542545950450200490006004D6F6E65790008434F4D4953494F4E08
      0004000000010007535542545950450200490006004D6F6E6579000750455249
      4F444F040001000000000004414E484F04000100000000000000}
    object CDScolocacionID_ASESOR: TIntegerField
      FieldName = 'ID_ASESOR'
    end
    object CDScolocacionDOCUMENTO: TStringField
      FieldName = 'DOCUMENTO'
    end
    object CDScolocacionASESOR: TStringField
      FieldName = 'ASESOR'
      Size = 100
    end
    object CDScolocacionID_COLOCACION: TStringField
      FieldName = 'ID_COLOCACION'
      Size = 11
    end
    object CDScolocacionCLIENTE: TStringField
      FieldName = 'CLIENTE'
      Size = 100
    end
    object CDScolocacionPAGA: TBooleanField
      FieldName = 'PAGA'
    end
    object CDScolocacionINTERES: TCurrencyField
      FieldName = 'INTERES'
    end
    object CDScolocacionCOMISION: TCurrencyField
      FieldName = 'COMISION'
    end
    object CDScolocacionPERIODO: TIntegerField
      FieldName = 'PERIODO'
    end
    object CDScolocacionANHO: TIntegerField
      FieldName = 'ANHO'
    end
  end
  object _ibqColocacion: TIBQuery
    SQL.Strings = (
      
        'SELECT a.ASES_ID, e.DOCUMENTO, ca.ID_COLOCACION, c.FECHA_DESEMBO' +
        'LSO, (e.NOMBRE || '#39' '#39' || e.PRIMER_APELLIDO || '#39' '#39' || e.SEGUNDO_A' +
        'PELLIDO) AS NOMBRE_ASESOR, (p.NOMBRE || '#39' '#39' || p.PRIMER_APELLIDO' +
        ' || '#39' '#39'  || p.SEGUNDO_APELLIDO) AS NOMBRE_CLIENTE FROM ASESOR a'
      'INNER JOIN COLOCACIONASESOR ca ON ca.ASES_ID = a.ASES_ID'
      
        'INNER JOIN "col$colocacion" c ON ca.ID_COLOCACION = c.ID_COLOCAC' +
        'ION'
      'INNER JOIN "gen$empleado" e ON e.ID_EMPLEADO = a.ID_EMPLEADO'
      
        'INNER JOIN "gen$persona" p ON c.ID_PERSONA = p.ID_PERSONA and c.' +
        'ID_IDENTIFICACION = p.ID_IDENTIFICACION'
      
        'WHERE e.TIPO = 2 and (c.FECHA_SALDADO >= :FECHA_INICIAL or c.FEC' +
        'HA_SALDADO IS NULL)'
      'ORDER BY a.ASES_ID')
    Left = 88
    Top = 112
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'FECHA_INICIAL'
        ParamType = ptUnknown
      end>
  end
  object _ibqCalculo: TIBQuery
    SQL.Strings = (
      
        'SELECT SUM(c.CAPITAL_A_PAGAR) as CAPITAL, SUM(c.INTERES_A_PAGAR)' +
        ' as INTERES FROM "col$tablaliquidacion" c'
      
        'WHERE c.ID_COLOCACION = :ID_COLOCACION and c.FECHA_A_PAGAR <= :F' +
        'ECHA_A_PAGAR and  EXTRACT(MONTH FROM c.FECHA_A_PAGAR) = :PERIODO')
    Left = 112
    Top = 112
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'ID_COLOCACION'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'FECHA_A_PAGAR'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'PERIODO'
        ParamType = ptUnknown
      end>
  end
  object _ibqPagado: TIBQuery
    SQL.Strings = (
      
        'SELECT SUM(c.ABONO_CAPITAL) AS CAPITAL,  SUM(c.ABONO_CXC+c.ABONO' +
        '_ANTICIPADO+c.ABONO_SERVICIOS)  AS INTERES FROM "col$extracto" c'
      
        'WHERE c.ID_COLOCACION = :ID_COLOCACION and c.FECHA_EXTRACTO <= :' +
        'FECHA_EXTRACTO and EXTRACT(MONTH FROM c.FECHA_EXTRACTO) = :PERIO' +
        'DO')
    Left = 112
    Top = 136
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'ID_COLOCACION'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'FECHA_EXTRACTO'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'PERIODO'
        ParamType = ptUnknown
      end>
  end
  object _ibqInteres: TIBQuery
    SQL.Strings = (
      
        'SELECT FIRST 1 (c.ABONO_CXC+c.ABONO_SERVICIOS) as INTERES FROM "' +
        'col$extracto" c'
      
        'WHERE c.ID_COLOCACION = :ID_COLOCACION and c.FECHA_EXTRACTO <= :' +
        'FECHA_A_PAGAR'
      'ORDER BY FECHA_EXTRACTO DESC')
    Left = 88
    Top = 136
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'ID_COLOCACION'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'FECHA_A_PAGAR'
        ParamType = ptUnknown
      end>
  end
  object DSdata: TDataSource
    DataSet = CDScolocacion
    Left = 160
    Top = 72
  end
  object SD1: TSaveDialog
    Left = 488
    Top = 208
  end
  object _ibqFecha: TIBQuery
    SQL.Strings = (
      'SELECT FECHA_A_PAGAR FROM "col$tablaliquidacion" t'
      'WHERE t.FECHA_A_PAGAR BETWEEN :FECHA_INICIAL and :FECHA_FINAL'
      'and t.ID_COLOCACION = :ID_COLOCACION')
    Left = 64
    Top = 112
    ParamData = <
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
        Name = 'ID_COLOCACION'
        ParamType = ptUnknown
      end>
  end
  object frxReport1: TfrxReport
    Version = '4.15.13'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 42921.3757326505
    ReportOptions.LastChange = 42928.4256293403
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'begin'
      ''
      'end.')
    Left = 152
    Top = 112
    Datasets = <
      item
        DataSet = frxDBDataset1
        DataSetName = 'frxDBDataset1'
      end>
    Variables = <>
    Style = <>
    object Data: TfrxDataPage
      Height = 1000
      Width = 1000
    end
    object Page1: TfrxReportPage
      PaperWidth = 215.9
      PaperHeight = 279.4
      PaperSize = 1
      LeftMargin = 2.64583333333333
      RightMargin = 2.64583333333333
      TopMargin = 10.00125
      BottomMargin = 10.00125
      object PageHeader1: TfrxPageHeader
        Height = 64
        Top = 16
        Width = 796.000514083333
        object Memo1: TfrxMemoView
          Width = 716
          Height = 20
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8 = (
            'REPORTE DE ASESORES EXTERNOS')
          ParentFont = False
        end
        object Memo10: TfrxMemoView
          Left = 4
          Top = 44
          Width = 112
          Height = 16
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8 = (
            'COLOCACION')
          ParentFont = False
        end
        object Memo11: TfrxMemoView
          Left = 120
          Top = 44
          Width = 220
          Height = 16
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8 = (
            'CLIENTE')
          ParentFont = False
        end
        object Memo12: TfrxMemoView
          Left = 340
          Top = 44
          Width = 92
          Height = 16
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8 = (
            'A'#195#8216'O')
          ParentFont = False
        end
        object Memo13: TfrxMemoView
          Left = 432
          Top = 44
          Width = 88
          Height = 16
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8 = (
            'MES')
          ParentFont = False
        end
        object Memo14: TfrxMemoView
          Left = 520
          Top = 44
          Width = 88
          Height = 16
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8 = (
            'INTERES')
          ParentFont = False
        end
        object Memo15: TfrxMemoView
          Left = 608
          Top = 44
          Width = 88
          Height = 16
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8 = (
            'COMISION')
          ParentFont = False
        end
        object Memo16: TfrxMemoView
          Left = 696
          Top = 44
          Width = 88
          Height = 16
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8 = (
            'SE PAGA')
          ParentFont = False
        end
      end
      object MasterData1: TfrxMasterData
        Height = 20
        Top = 180
        Width = 796.000514083333
        DataSet = frxDBDataset1
        DataSetName = 'frxDBDataset1'
        RowCount = 0
        object Memo5: TfrxMemoView
          Left = 120
          Width = 224
          Height = 16
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[(<frxDBDataset1."CLIENTE">)]')
          ParentFont = False
        end
        object Memo6: TfrxMemoView
          Left = 344
          Width = 88
          Height = 16
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[(<frxDBDataset1."ANHO">)]')
          ParentFont = False
        end
        object Memo7: TfrxMemoView
          Left = 432
          Width = 88
          Height = 16
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[(<frxDBDataset1."PERIODO">)]')
          ParentFont = False
        end
        object Memo8: TfrxMemoView
          Left = 520
          Width = 88
          Height = 16
          ShowHint = False
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8 = (
            '[(<frxDBDataset1."INTERES">)]')
          ParentFont = False
        end
        object Memo9: TfrxMemoView
          Left = 608
          Width = 92
          Height = 16
          ShowHint = False
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8 = (
            '[(<frxDBDataset1."COMISION">)]')
          ParentFont = False
        end
        object CheckBox1: TfrxCheckBoxView
          Left = 701
          Width = 90.89765
          Height = 14.89765
          ShowHint = False
          CheckColor = clBlack
          CheckStyle = csCross
          DataField = 'PAGA'
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
        end
        object Memo4: TfrxMemoView
          Width = 116
          Height = 16
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[(<frxDBDataset1."ID_COLOCACION">)]')
          ParentFont = False
        end
      end
      object GroupHeader1: TfrxGroupHeader
        Height = 20
        Top = 140
        Width = 796.000514083333
        Condition = 'frxDBDataset1."ID_ASESOR"'
        object Memo2: TfrxMemoView
          Left = 4
          Width = 64
          Height = 16
          ShowHint = False
          Memo.UTF8 = (
            'ASESOR:')
        end
        object Memo3: TfrxMemoView
          Left = 244
          Width = 548
          Height = 16
          ShowHint = False
          Memo.UTF8 = (
            '[(<frxDBDataset1."ASESOR">)]')
        end
        object Memo19: TfrxMemoView
          Left = 72
          Width = 168
          Height = 16
          ShowHint = False
          Memo.UTF8 = (
            '[frxDBDataset1."DOCUMENTO"]')
        end
      end
      object GroupFooter1: TfrxGroupFooter
        Height = 17
        Top = 220
        Width = 796.000514083333
        object Memo17: TfrxMemoView
          Left = 384
          Top = 1
          Width = 200
          Height = 16
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8 = (
            'TOTAL COMISION A PAGAR')
          ParentFont = False
        end
        object Memo18: TfrxMemoView
          Left = 588
          Width = 112
          Height = 16
          ShowHint = False
          DisplayFormat.FormatStr = '%2.2m'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8 = (
            '[SUM(<frxDBDataset1."COMISION">,MasterData1)]')
          ParentFont = False
        end
      end
    end
  end
  object frxDBDataset1: TfrxDBDataset
    UserName = 'frxDBDataset1'
    CloseDataSource = False
    DataSource = DSdata
    BCDToCurrency = False
    Left = 192
    Top = 112
  end
  object frxCheckBoxObject1: TfrxCheckBoxObject
    Left = 152
    Top = 136
  end
  object _ibqExtractoDet: TIBQuery
    SQL.Strings = (
      'SELECT COUNT(*) AS CONTEO FROM "col$extractodet" c'
      
        'WHERE c.ID_COLOCACION = :ID_COLOCACION and c.ID_CBTE_COLOCACION ' +
        '= :ID_CBTE_COLOCACION and c.FECHA_EXTRACTO = :FECHA_EXTRACTO and' +
        ' c.TASA_LIQUIDACION >= :TASA_LIQUIDACION')
    Left = 64
    Top = 136
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'ID_COLOCACION'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'ID_CBTE_COLOCACION'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'FECHA_EXTRACTO'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'TASA_LIQUIDACION'
        ParamType = ptUnknown
      end>
  end
  object _ibqExtracto: TIBQuery
    SQL.Strings = (
      'SELECT * FROM "col$extracto" c'
      'WHERE c.ID_COLOCACION = :ID_COLOCACION'
      'and'
      'c.FECHA_EXTRACTO BETWEEN :FECHA_INICIAL and :FECHA_FINAL')
    Left = 64
    Top = 160
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'ID_COLOCACION'
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
  object _ibqReestructurado: TIBQuery
    Left = 88
    Top = 160
  end
end
