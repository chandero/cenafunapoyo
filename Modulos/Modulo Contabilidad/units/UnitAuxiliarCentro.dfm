object frmAuxiliarCentro: TfrmAuxiliarCentro
  Left = 546
  Top = 226
  Width = 415
  Height = 304
  Caption = 'Auxiliar Centro'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  OnClose = FormClose
  OnCreate = FormCreate
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 407
    Height = 237
    Align = alClient
    TabOrder = 0
    object Label1: TLabel
      Left = 16
      Top = 1
      Width = 63
      Height = 13
      Caption = 'C'#243'digo Inicial'
    end
    object Label2: TLabel
      Left = 183
      Top = 1
      Width = 58
      Height = 13
      Caption = 'C'#243'digo Final'
    end
    object Label3: TLabel
      Left = 14
      Top = 73
      Width = 60
      Height = 13
      Caption = 'Fecha Inicial'
    end
    object Label4: TLabel
      Left = 174
      Top = 73
      Width = 55
      Height = 13
      Caption = 'Fecha Final'
    end
    object EdFechaInicial: TDateTimePicker
      Left = 14
      Top = 89
      Width = 146
      Height = 20
      CalAlignment = dtaLeft
      Date = 37811.6218238194
      Format = 'yyyy/MM/dd'
      Time = 37811.6218238194
      DateFormat = dfShort
      DateMode = dmComboBox
      Kind = dtkDate
      ParseInput = False
      TabOrder = 2
      OnKeyPress = EdFechaInicialKeyPress
    end
    object EdFechaFinal: TDateTimePicker
      Left = 174
      Top = 89
      Width = 141
      Height = 20
      CalAlignment = dtaLeft
      Date = 37811.6219742824
      Format = 'yyyy/MM/dd'
      Time = 37811.6219742824
      DateFormat = dfShort
      DateMode = dmComboBox
      Kind = dtkDate
      ParseInput = False
      TabOrder = 3
      OnKeyPress = EdFechaFinalKeyPress
    end
    object EdCodigoInicial: TMaskEdit
      Left = 16
      Top = 17
      Width = 145
      Height = 21
      EditMask = '!9-9-99-99-99-99-99-99-99-99;0;0'
      MaxLength = 27
      TabOrder = 0
      OnExit = EdCodigoInicialExit
      OnKeyPress = EdCodigoInicialKeyPress
    end
    object EdCodigoFinal: TMaskEdit
      Left = 183
      Top = 17
      Width = 145
      Height = 21
      EditMask = '!9-9-99-99-99-99-99-99-99-99;0;0'
      MaxLength = 27
      TabOrder = 1
      OnExit = EdCodigoFinalExit
      OnKeyPress = EdCodigoFinalKeyPress
    end
    object EdCtaI: TStaticText
      Left = 16
      Top = 40
      Width = 157
      Height = 33
      AutoSize = False
      BorderStyle = sbsSunken
      Color = clWhite
      ParentColor = False
      TabOrder = 4
    end
    object EdCtaF: TStaticText
      Left = 182
      Top = 40
      Width = 157
      Height = 33
      AutoSize = False
      BorderStyle = sbsSunken
      Color = clWhite
      ParentColor = False
      TabOrder = 5
    end
    object RGTipo: TRadioGroup
      Left = 8
      Top = 160
      Width = 339
      Height = 29
      Columns = 2
      ItemIndex = 1
      Items.Strings = (
        'Todos Los Movimientos'
        'Solo Movimientos Cerrados')
      TabOrder = 6
      Visible = False
    end
    object GBDocumento: TGroupBox
      Left = 9
      Top = 112
      Width = 338
      Height = 47
      Caption = 'Filtrar por Documento'
      TabOrder = 7
      object CBtiposid: TDBLookupComboBox
        Left = 6
        Top = 18
        Width = 185
        Height = 21
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        KeyField = 'ID_IDENTIFICACION'
        ListField = 'DESCRIPCION_IDENTIFICACION'
        NullValueKey = 46
        ParentFont = False
        TabOrder = 0
        OnKeyPress = CBtiposidKeyPress
      end
      object EdNumeroIdentificacion: TMemo
        Left = 195
        Top = 17
        Width = 119
        Height = 22
        Alignment = taRightJustify
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        MaxLength = 15
        ParentFont = False
        TabOrder = 1
        WantReturns = False
        WordWrap = False
        OnKeyPress = EdNumeroIdentificacionKeyPress
      end
    end
    object GroupBox1: TGroupBox
      Left = 8
      Top = 193
      Width = 337
      Height = 41
      Caption = 'Centro de Costo'
      TabOrder = 8
      object edCentro: TDBLookupComboBox
        Left = 104
        Top = 11
        Width = 224
        Height = 21
        KeyField = 'ID_AGENCIA'
        ListField = 'DESCRIPCION_AGENCIA'
        ListSource = DSagencia
        TabOrder = 0
      end
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 237
    Width = 407
    Height = 33
    Align = alBottom
    Color = clOlive
    TabOrder = 1
    object CmdAceptar: TBitBtn
      Left = 7
      Top = 5
      Width = 81
      Height = 25
      Caption = '&Aceptar'
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
    object CmdCerrar: TBitBtn
      Left = 310
      Top = 5
      Width = 75
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
      Left = 91
      Top = 5
      Width = 84
      Height = 25
      Caption = '&Reporte'
      Enabled = False
      TabOrder = 2
      OnClick = btnReporteClick
    end
    object btnAExcel: TBitBtn
      Left = 179
      Top = 5
      Width = 91
      Height = 25
      Caption = 'A Excel'
      Enabled = False
      TabOrder = 3
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
  end
  object DSmaster: TDataSource
    DataSet = CDSauxiliar
    Left = 40
    Top = 80
  end
  object CDSauxiliar: TClientDataSet
    Active = True
    Aggregates = <>
    FieldDefs = <
      item
        Name = 'FECHA'
        DataType = ftDate
      end
      item
        Name = 'TIPO'
        DataType = ftString
        Size = 2
      end
      item
        Name = 'NUMERO'
        DataType = ftInteger
      end
      item
        Name = 'CODIGO'
        DataType = ftString
        Size = 18
      end
      item
        Name = 'NOMBREPUC'
        DataType = ftString
        Size = 100
      end
      item
        Name = 'CHEQUE'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'DESCRIPCION'
        DataType = ftString
        Size = 100
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
      end
      item
        Name = 'DOCUMENTO'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'NOMBRE'
        DataType = ftString
        Size = 150
      end
      item
        Name = 'ID'
        DataType = ftInteger
      end
      item
        Name = 'MONTO_BASE'
        DataType = ftCurrency
      end>
    IndexDefs = <>
    Params = <>
    StoreDefs = True
    Left = 24
    Top = 112
    Data = {
      CA0100009619E0BD01000000180000000F000000000003000000CA0105464543
      48410400060000000000045449504F0100490000000100055749445448020002
      000200064E554D45524F040001000000000006434F4449474F01004900000001
      00055749445448020002001200094E4F4D425245505543010049000000010005
      5749445448020002006400064348455155450100490000000100055749445448
      0200020014000B4445534352495043494F4E0100490000000100055749445448
      0200020064000E53414C444F5F414E544552494F520800040000000100075355
      42545950450200490006004D6F6E6579000644454249544F0800040000000100
      07535542545950450200490006004D6F6E657900074352454449544F08000400
      0000010007535542545950450200490006004D6F6E6579000C53414C444F5F41
      435455414C080004000000010007535542545950450200490006004D6F6E6579
      0009444F43554D454E544F010049000000010005574944544802000200140006
      4E4F4D4252450100490000000100055749445448020002009600024944040001
      00000000000A4D4F4E544F5F4241534508000400000001000753554254595045
      0200490006004D6F6E6579000000}
    object CDSauxiliarFECHA: TDateField
      FieldName = 'FECHA'
    end
    object CDSauxiliarTIPO: TStringField
      FieldName = 'TIPO'
      Size = 2
    end
    object CDSauxiliarNUMERO: TIntegerField
      FieldName = 'NUMERO'
    end
    object CDSauxiliarCODIGO: TStringField
      FieldName = 'CODIGO'
      Size = 18
    end
    object CDSauxiliarNOMBREPUC: TStringField
      FieldName = 'NOMBREPUC'
      Size = 100
    end
    object CDSauxiliarCHEQUE: TStringField
      FieldName = 'CHEQUE'
    end
    object CDSauxiliarDESCRIPCION: TStringField
      FieldName = 'DESCRIPCION'
      Size = 100
    end
    object CDSauxiliarSALDO_ANTERIOR: TCurrencyField
      FieldName = 'SALDO_ANTERIOR'
    end
    object CDSauxiliarDEBITO: TCurrencyField
      FieldName = 'DEBITO'
    end
    object CDSauxiliarCREDITO: TCurrencyField
      FieldName = 'CREDITO'
    end
    object CDSauxiliarSALDO_ACTUAL: TCurrencyField
      FieldName = 'SALDO_ACTUAL'
    end
    object CDSauxiliarDOCUMENTO: TStringField
      FieldName = 'DOCUMENTO'
    end
    object CDSauxiliarNOMBRE: TStringField
      FieldName = 'NOMBRE'
      Size = 150
    end
    object CDSauxiliarID: TIntegerField
      FieldName = 'ID'
    end
    object CDSauxiliarMONTO_BASE: TCurrencyField
      FieldName = 'MONTO_BASE'
    end
  end
  object CDSauxiliarext: TClientDataSet
    Active = True
    Aggregates = <>
    FieldDefs = <
      item
        Name = 'ID'
        DataType = ftInteger
      end
      item
        Name = 'DOCUMENTO'
        DataType = ftString
        Size = 50
      end
      item
        Name = 'NOMBRE'
        DataType = ftString
        Size = 200
      end>
    IndexDefs = <>
    IndexFieldNames = 'ID'
    MasterFields = 'ID'
    MasterSource = DSmaster
    PacketRecords = 0
    Params = <>
    StoreDefs = True
    Left = 48
    Top = 112
    Data = {
      5E0000009619E0BD0100000018000000030000000000030000005E0002494404
      0001000000000009444F43554D454E544F010049000000010005574944544802
      0002003200064E4F4D425245010049000000010005574944544802000200C800
      0000}
    object CDSauxiliarextID: TIntegerField
      FieldName = 'ID'
    end
    object CDSauxiliarextDOCUMENTO: TStringField
      FieldName = 'DOCUMENTO'
      Size = 50
    end
    object CDSauxiliarextNOMBRE: TStringField
      FieldName = 'NOMBRE'
      Size = 200
    end
  end
  object IBQPuc: TIBQuery
    Left = 24
    Top = 144
  end
  object IBQsaldoanterior: TIBQuery
    SQL.Strings = (
      
        'SELECT SUM(a.DEBITO) AS DEBITO,  SUM(a.CREDITO) AS CREDITO FROM ' +
        '"con$comprobante" c'
      
        'INNER JOIN "con$auxiliar" a ON a.TIPO_COMPROBANTE = c.TIPO_COMPR' +
        'OBANTE and a.ID_COMPROBANTE = c.ID_COMPROBANTE'
      
        'WHERE c.ESTADO <> :ESTADO and a.FECHA BETWEEN :FECHA_INICIAL and' +
        ' :FECHA_FINAL and a.CODIGO = :CODIGO and a.ID_AGENCIA = :ID_AGEN' +
        'CIA')
    Left = 48
    Top = 144
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'ESTADO'
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
        Name = 'CODIGO'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'ID_AGENCIA'
        ParamType = ptUnknown
      end>
  end
  object IBQmovimiento: TIBQuery
    SQL.Strings = (
      'SELECT '
      't.ABREVIATURA, '
      'a.ID_COMPROBANTE, '
      'a.FECHA, '
      'a.CODIGO, '
      'm.NOMBRE AS NOMBREPUC, '
      'ae.DETALLE, '
      'c.DESCRIPCION, '
      'a.DEBITO, '
      'a.CREDITO, '
      'ae.CHEQUE,'
      'a.ID_PERSONA,'
      'p.PRIMER_APELLIDO, '
      'p.SEGUNDO_APELLIDO, '
      'p.NOMBRE FROM "con$comprobante" c'
      'INNER JOIN "con$tipocomprobante" t ON c.TIPO_COMPROBANTE = t.ID'
      
        'INNER JOIN "con$auxiliar" a ON a.TIPO_COMPROBANTE = c.TIPO_COMPR' +
        'OBANTE and a.ID_COMPROBANTE = c.ID_COMPROBANTE'
      'LEFT JOIN "con$auxiliarext" ae ON a.ID = ae.ID'
      'LEFT JOIN "con$puc" m ON a.CODIGO = m.CODIGO'
      
        'LEFT JOIN "gen$persona" p ON p.ID_IDENTIFICACION = a.ID_IDENTIFI' +
        'CACION and p.ID_PERSONA = a.ID_PERSONA'
      
        'WHERE c.ESTADO <> :ESTADO and a.FECHA BETWEEN :FECHA_INICIAL and' +
        ' :FECHA_FINAL and a.CODIGO = :CODIGO and a.ID_AGENCIA = :ID_AGEN' +
        'CIA'
      'ORDER BY a.CODIGO ASC,   a.FECHA ASC')
    Left = 72
    Top = 144
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'ESTADO'
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
        Name = 'CODIGO'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'ID_AGENCIA'
        ParamType = ptUnknown
      end>
  end
  object frDSauxiliar: TfrDBDataSet
    DataSet = CDSauxiliar
    Left = 88
    Top = 112
  end
  object frDSauxiliarext: TfrDBDataSet
    DataSet = CDSauxiliarext
    Left = 112
    Top = 112
  end
  object IBSQL1: TIBSQL
    SQL.Strings = (
      'SELECT * FROM "con$puc" WHERE CODIGO = :CODIGO')
    Left = 120
    Top = 64
  end
  object IBQtipodocumento: TIBQuery
    SQL.Strings = (
      'select * from "gen$tiposidentificacion"')
    Left = 120
    Top = 124
  end
  object DStiposdocumento: TDataSource
    DataSet = IBQtipodocumento
    Left = 144
    Top = 136
  end
  object prTxReport1: TprTxReport
    ShowProgress = True
    FromPage = 1
    ToPage = 1
    Title = 'Liquidaci'#243'n'
    ExportFromPage = 0
    ExportToPage = 0
    Values = <
      item
        Name = 'TotalDebitos'
        AggFunction = prafSum
        Formula = 'IBQuery1.DEBITO'
        ResetOn = rvtPage
        CalcOn = cvtDataSetNext
        DataSetName = 'IBQuery1'
        Accumulate = True
      end
      item
        Name = 'TotalCreditos'
        AggFunction = prafSum
        Formula = 'IBQuery1.CREDITO'
        ResetOn = rvtPage
        CalcOn = cvtDataSetNext
        DataSetName = 'IBQuery1'
        Accumulate = True
      end
      item
        Group = prTxReport1.fecha
        Name = 'TotalDF'
        AggFunction = prafSum
        Formula = 'IBQuery1.DEBITO'
        ResetOn = rvtGroup
        CalcOn = cvtDataSetNext
        DataSetName = 'IBQuery1'
      end
      item
        Group = prTxReport1.fecha
        Name = 'TotalCF'
        AggFunction = prafSum
        Formula = 'IBQuery1.CREDITO'
        ResetOn = rvtGroup
        CalcOn = cvtDataSetNext
        DataSetName = 'IBQuery1'
      end
      item
        Group = prTxReport1.codigo
        Name = 'TotalDC'
        AggFunction = prafSum
        Formula = 'IBQuery1.DEBITO'
        ResetOn = rvtGroup
        CalcOn = cvtDataSetNext
        DataSetName = 'IBQuery1'
      end
      item
        Group = prTxReport1.codigo
        Name = 'TotalCC'
        AggFunction = prafSum
        Formula = 'IBQuery1.CREDITO'
        ResetOn = rvtGroup
        CalcOn = cvtDataSetNext
        DataSetName = 'IBQuery1'
      end>
    Variables = <
      item
        Name = 'Empresa'
        ValueType = 'prvvtString'
        Value = ''
      end
      item
        Name = 'Hoy'
        ValueType = 'prvvtString'
        Value = ''
      end
      item
        Name = 'empleado'
        ValueType = 'prvvtString'
        Value = ''
      end
      item
        Name = 'FechaI'
        ValueType = 'prvvtString'
        Value = ''
      end
      item
        Name = 'FechaF'
        ValueType = 'prvvtString'
        Value = ''
      end
      item
        Name = 'CodigoI'
        ValueType = 'prvvtString'
        Value = ''
      end
      item
        Name = 'codigoF'
        ValueType = 'prvvtString'
        Value = ''
      end
      item
        Name = 'NomAgencia'
        ValueType = 'prvvtString'
        Value = ''
      end
      item
        Name = 'Estado'
        ValueType = 'prvvtString'
        Value = 'ABIERTO'
      end>
    PrinterName = '\\DEPARTAS02\Epson LX-300'
    ESCModelName = 'Epson printers'
    WrapAfterColumn = 0
    EjectPageAfterPrint = False
    LinesOnPage = 0
    FromLine = 0
    ToLine = 0
    ExportFromLine = 0
    ExportToLine = 0
    Left = 184
    Top = 158
    SystemInfo = (
      'OS: WIN32_NT 5.1.2600 Service Pack 3'
      ''
      'PageSize: 4096'
      'ActiveProcessorMask: $1000'
      'NumberOfProcessors: 1'
      'ProcessorType: 586'
      ''
      'Compiler version: Delphi6'
      'PReport version: 1.9.4')
    object prTxPage1: TprTxPage
      PageType = tptPage
      LineNum = 60
      ColNum = 134
      object prTxHPageHeaderBand1: TprTxHPageHeaderBand
        Height = 6
        UseVerticalBands = False
        PrintOnFirstPage = True
        object prTxMemoObj1: TprTxMemoObj
          dRec.DefVersion = 0
          dRec.Versions = <
            item
              Visible = True
              Memo.Strings = (
                '[Empresa]')
              DeleteEmptyLinesAtEnd = False
              DeleteEmptyLines = False
              CanResizeX = False
              CanResizeY = False
              hAlign = prhLeft
              vAlign = prvTop
              DefaultFont = False
              WordWrap = False
            end>
          dRec.Left = 2
          dRec.Top = 0
          dRec.Right = 18
          dRec.Bottom = 1
          Visible = False
        end
        object prTxMemoObj2: TprTxMemoObj
          dRec.DefVersion = 0
          dRec.Versions = <
            item
              Visible = True
              Memo.Strings = (
                'LIBROS AUXILIARES')
              DeleteEmptyLinesAtEnd = False
              DeleteEmptyLines = False
              CanResizeX = False
              CanResizeY = False
              hAlign = prhLeft
              vAlign = prvTop
              DefaultFont = False
              WordWrap = False
            end>
          dRec.Left = 53
          dRec.Top = 0
          dRec.Right = 70
          dRec.Bottom = 1
          Visible = False
        end
        object prTxMemoObj3: TprTxMemoObj
          dRec.DefVersion = 0
          dRec.Versions = <
            item
              Visible = True
              Memo.Strings = (
                'Fecha de Impresion : [:<yyyy/mm/dd>Hoy]')
              DeleteEmptyLinesAtEnd = False
              DeleteEmptyLines = False
              CanResizeX = False
              CanResizeY = False
              hAlign = prhLeft
              vAlign = prvTop
              DefaultFont = False
              WordWrap = False
            end>
          dRec.Left = 77
          dRec.Top = 0
          dRec.Right = 108
          dRec.Bottom = 1
          Visible = False
        end
        object prTxMemoObj4: TprTxMemoObj
          dRec.DefVersion = 0
          dRec.Versions = <
            item
              Visible = True
              Memo.Strings = (
                
                  '----------------------------------------------------------------' +
                  '----------------------------------------------------------------' +
                  '---------------------------------------------------')
              DeleteEmptyLinesAtEnd = False
              DeleteEmptyLines = False
              CanResizeX = False
              CanResizeY = False
              hAlign = prhLeft
              vAlign = prvTop
              DefaultFont = False
              WordWrap = False
            end>
          dRec.Left = 1
          dRec.Top = 1
          dRec.Right = 134
          dRec.Bottom = 2
          Visible = False
        end
        object prTxCommandObj1: TprTxCommandObj
          dRec.DefVersion = 0
          dRec.Versions = <
            item
              Visible = True
              TxCommands = (
                txcBoldOn)
            end>
          dRec.Left = 1
          dRec.Top = 0
          dRec.Right = 2
          dRec.Bottom = 1
          Visible = False
        end
        object prTxCommandObj2: TprTxCommandObj
          dRec.DefVersion = 0
          dRec.Versions = <
            item
              Visible = True
              TxCommands = (
                txcBoldOff)
            end>
          dRec.Left = 18
          dRec.Top = 0
          dRec.Right = 19
          dRec.Bottom = 1
          Visible = False
        end
        object prTxMemoObj7: TprTxMemoObj
          dRec.DefVersion = 0
          dRec.Versions = <
            item
              Visible = True
              Memo.Strings = (
                'Fecha Inicial    :'
                '  ')
              DeleteEmptyLinesAtEnd = False
              DeleteEmptyLines = False
              CanResizeX = False
              CanResizeY = False
              hAlign = prhLeft
              vAlign = prvTop
              DefaultFont = False
              WordWrap = False
            end>
          dRec.Left = 51
          dRec.Top = 2
          dRec.Right = 70
          dRec.Bottom = 3
          Visible = False
        end
        object prTxMemoObj8: TprTxMemoObj
          dRec.DefVersion = 0
          dRec.Versions = <
            item
              Visible = True
              Memo.Strings = (
                '[:<yyyy/mm/dd>FechaI]')
              DeleteEmptyLinesAtEnd = False
              DeleteEmptyLines = False
              CanResizeX = False
              CanResizeY = False
              hAlign = prhLeft
              vAlign = prvTop
              DefaultFont = False
              WordWrap = False
            end>
          dRec.Left = 71
          dRec.Top = 2
          dRec.Right = 93
          dRec.Bottom = 3
          Visible = False
        end
        object prTxMemoObj19: TprTxMemoObj
          dRec.DefVersion = 0
          dRec.Versions = <
            item
              Visible = True
              Memo.Strings = (
                'Codigo Inicial   :')
              DeleteEmptyLinesAtEnd = False
              DeleteEmptyLines = False
              CanResizeX = False
              CanResizeY = False
              hAlign = prhLeft
              vAlign = prvTop
              DefaultFont = False
              WordWrap = False
            end>
          dRec.Left = 51
          dRec.Top = 3
          dRec.Right = 70
          dRec.Bottom = 4
          Visible = False
        end
        object prTxMemoObj20: TprTxMemoObj
          dRec.DefVersion = 0
          dRec.Versions = <
            item
              Visible = True
              Memo.Strings = (
                '[CodigoI]')
              DeleteEmptyLinesAtEnd = False
              DeleteEmptyLines = False
              CanResizeX = False
              CanResizeY = False
              hAlign = prhLeft
              vAlign = prvTop
              DefaultFont = False
              WordWrap = False
            end>
          dRec.Left = 71
          dRec.Top = 3
          dRec.Right = 93
          dRec.Bottom = 4
          Visible = False
        end
        object prTxMemoObj22: TprTxMemoObj
          dRec.DefVersion = 0
          dRec.Versions = <
            item
              Visible = True
              Memo.Strings = (
                'Fecha Final   :')
              DeleteEmptyLinesAtEnd = False
              DeleteEmptyLines = False
              CanResizeX = False
              CanResizeY = False
              hAlign = prhLeft
              vAlign = prvTop
              DefaultFont = False
              WordWrap = False
            end>
          dRec.Left = 94
          dRec.Top = 2
          dRec.Right = 111
          dRec.Bottom = 3
          Visible = False
        end
        object prTxMemoObj30: TprTxMemoObj
          dRec.DefVersion = 0
          dRec.Versions = <
            item
              Visible = True
              Memo.Strings = (
                '[:<yyyy/mm/dd>FechaF]')
              DeleteEmptyLinesAtEnd = False
              DeleteEmptyLines = False
              CanResizeX = False
              CanResizeY = False
              hAlign = prhLeft
              vAlign = prvTop
              DefaultFont = False
              WordWrap = False
            end>
          dRec.Left = 112
          dRec.Top = 2
          dRec.Right = 134
          dRec.Bottom = 3
          Visible = False
        end
        object prTxMemoObj31: TprTxMemoObj
          dRec.DefVersion = 0
          dRec.Versions = <
            item
              Visible = True
              Memo.Strings = (
                'Codigo Final  :')
              DeleteEmptyLinesAtEnd = False
              DeleteEmptyLines = False
              CanResizeX = False
              CanResizeY = False
              hAlign = prhLeft
              vAlign = prvTop
              DefaultFont = False
              WordWrap = False
            end>
          dRec.Left = 94
          dRec.Top = 3
          dRec.Right = 111
          dRec.Bottom = 4
          Visible = False
        end
        object prTxMemoObj32: TprTxMemoObj
          dRec.DefVersion = 0
          dRec.Versions = <
            item
              Visible = True
              Memo.Strings = (
                '[CodigoF]')
              DeleteEmptyLinesAtEnd = False
              DeleteEmptyLines = False
              CanResizeX = False
              CanResizeY = False
              hAlign = prhLeft
              vAlign = prvTop
              DefaultFont = False
              WordWrap = False
            end>
          dRec.Left = 112
          dRec.Top = 3
          dRec.Right = 134
          dRec.Bottom = 4
          Visible = False
        end
        object prTxMemoObj9: TprTxMemoObj
          dRec.DefVersion = 0
          dRec.Versions = <
            item
              Visible = True
              Memo.Strings = (
                
                  '----------------------------------------------------------------' +
                  '----------------------------------------------------------------' +
                  '----------------------------------------------------------------' +
                  '----------------------------')
              DeleteEmptyLinesAtEnd = False
              DeleteEmptyLines = False
              CanResizeX = False
              CanResizeY = False
              hAlign = prhLeft
              vAlign = prvTop
              DefaultFont = False
              WordWrap = False
            end>
          dRec.Left = 1
          dRec.Top = 5
          dRec.Right = 134
          dRec.Bottom = 6
          Visible = False
        end
        object prTxMemoObj5: TprTxMemoObj
          dRec.DefVersion = 0
          dRec.Versions = <
            item
              Visible = True
              Memo.Strings = (
                'Agencia        :')
              DeleteEmptyLinesAtEnd = False
              DeleteEmptyLines = False
              CanResizeX = False
              CanResizeY = False
              hAlign = prhLeft
              vAlign = prvTop
              DefaultFont = False
              WordWrap = False
            end>
          dRec.Left = 2
          dRec.Top = 2
          dRec.Right = 18
          dRec.Bottom = 3
          Visible = False
        end
        object prTxMemoObj6: TprTxMemoObj
          dRec.DefVersion = 0
          dRec.Versions = <
            item
              Visible = True
              Memo.Strings = (
                '[NomAgencia]')
              DeleteEmptyLinesAtEnd = False
              DeleteEmptyLines = False
              CanResizeX = False
              CanResizeY = False
              hAlign = prhLeft
              vAlign = prvTop
              DefaultFont = False
              WordWrap = False
            end>
          dRec.Left = 19
          dRec.Top = 2
          dRec.Right = 47
          dRec.Bottom = 3
          Visible = False
        end
        object prTxCommandObj3: TprTxCommandObj
          dRec.DefVersion = 0
          dRec.Versions = <
            item
              Visible = True
              TxCommands = (
                txcBoldOn)
            end>
          dRec.Left = 18
          dRec.Top = 2
          dRec.Right = 19
          dRec.Bottom = 3
          Visible = False
        end
        object prTxCommandObj4: TprTxCommandObj
          dRec.DefVersion = 0
          dRec.Versions = <
            item
              Visible = True
              TxCommands = (
                txcBoldOff)
            end>
          dRec.Left = 47
          dRec.Top = 2
          dRec.Right = 48
          dRec.Bottom = 3
          Visible = False
        end
        object prTxMemoObj33: TprTxMemoObj
          dRec.DefVersion = 0
          dRec.Versions = <
            item
              Visible = True
              Memo.Strings = (
                'Usuario        : [empleado]')
              DeleteEmptyLinesAtEnd = False
              DeleteEmptyLines = False
              CanResizeX = False
              CanResizeY = False
              hAlign = prhLeft
              vAlign = prvTop
              DefaultFont = False
              WordWrap = False
            end>
          dRec.Left = 2
          dRec.Top = 3
          dRec.Right = 48
          dRec.Bottom = 4
          Visible = False
        end
        object prTxMemoObj13: TprTxMemoObj
          dRec.DefVersion = 0
          dRec.Versions = <
            item
              Visible = True
              Memo.Strings = (
                'Pagina [Page] de [PagesCount]')
              DeleteEmptyLinesAtEnd = False
              DeleteEmptyLines = False
              CanResizeX = False
              CanResizeY = False
              hAlign = prhLeft
              vAlign = prvTop
              DefaultFont = False
              WordWrap = False
            end>
          dRec.Left = 109
          dRec.Top = 0
          dRec.Right = 133
          dRec.Bottom = 1
          Visible = False
        end
        object prTxCommandObj5: TprTxCommandObj
          dRec.DefVersion = 0
          dRec.Versions = <
            item
              Visible = True
              TxCommands = (
                txcCondensedOn)
            end>
          dRec.Left = 0
          dRec.Top = 0
          dRec.Right = 1
          dRec.Bottom = 1
          Visible = False
        end
        object prTxMemoObj25: TprTxMemoObj
          dRec.DefVersion = 0
          dRec.Versions = <
            item
              Visible = True
              Memo.Strings = (
                'ESTADO ACTUAL MOVIMIENTOS')
              DeleteEmptyLinesAtEnd = False
              DeleteEmptyLines = False
              CanResizeX = False
              CanResizeY = False
              hAlign = prhCenter
              vAlign = prvTop
              DefaultFont = False
              WordWrap = False
            end>
          dRec.Left = 1
          dRec.Top = 4
          dRec.Right = 25
          dRec.Bottom = 5
          Visible = False
        end
        object prTxMemoObj26: TprTxMemoObj
          dRec.DefVersion = 0
          dRec.Versions = <
            item
              Visible = True
              Memo.Strings = (
                '[Estado]')
              DeleteEmptyLinesAtEnd = False
              DeleteEmptyLines = False
              CanResizeX = False
              CanResizeY = False
              hAlign = prhCenter
              vAlign = prvTop
              DefaultFont = False
              WordWrap = False
            end>
          dRec.Left = 25
          dRec.Top = 4
          dRec.Right = 49
          dRec.Bottom = 5
          Visible = False
        end
      end
      object prTxHDetailHeaderBand1: TprTxHDetailHeaderBand
        Height = 2
        UseVerticalBands = False
        DetailBand = prTxReport1.prTxHDetailBand2
        ColCount = 0
        ColDirection = prcdTopBottomLeftRight
        ReprintOnEachPage = False
        LinkToDetail = False
        object prTxMemoObj53: TprTxMemoObj
          dRec.DefVersion = 0
          dRec.Versions = <
            item
              Visible = True
              Memo.Strings = (
                'COMP.')
              DeleteEmptyLinesAtEnd = False
              DeleteEmptyLines = False
              CanResizeX = False
              CanResizeY = False
              hAlign = prhCenter
              vAlign = prvTop
              DefaultFont = False
              WordWrap = False
            end>
          dRec.Left = 1
          dRec.Top = 0
          dRec.Right = 9
          dRec.Bottom = 1
          Visible = False
        end
        object prTxMemoObj55: TprTxMemoObj
          dRec.DefVersion = 0
          dRec.Versions = <
            item
              Visible = True
              Memo.Strings = (
                'DEBITO')
              DeleteEmptyLinesAtEnd = False
              DeleteEmptyLines = False
              CanResizeX = False
              CanResizeY = False
              hAlign = prhCenter
              vAlign = prvTop
              DefaultFont = False
              WordWrap = False
            end>
          dRec.Left = 80
          dRec.Top = 0
          dRec.Right = 96
          dRec.Bottom = 1
          Visible = False
        end
        object prTxMemoObj113: TprTxMemoObj
          dRec.DefVersion = 0
          dRec.Versions = <
            item
              Visible = True
              Memo.Strings = (
                'CREDITO')
              DeleteEmptyLinesAtEnd = False
              DeleteEmptyLines = False
              CanResizeX = False
              CanResizeY = False
              hAlign = prhCenter
              vAlign = prvCenter
              DefaultFont = False
              WordWrap = False
            end>
          dRec.Left = 97
          dRec.Top = 0
          dRec.Right = 114
          dRec.Bottom = 1
          Visible = False
        end
        object prTxMemoObj119: TprTxMemoObj
          dRec.DefVersion = 0
          dRec.Versions = <
            item
              Visible = True
              Memo.Strings = (
                '|')
              DeleteEmptyLinesAtEnd = False
              DeleteEmptyLines = False
              CanResizeX = False
              CanResizeY = False
              hAlign = prhLeft
              vAlign = prvTop
              DefaultFont = False
              WordWrap = False
            end>
          dRec.Left = 9
          dRec.Top = 0
          dRec.Right = 10
          dRec.Bottom = 1
          Visible = False
        end
        object prTxMemoObj121: TprTxMemoObj
          dRec.DefVersion = 0
          dRec.Versions = <
            item
              Visible = True
              Memo.Strings = (
                '|')
              DeleteEmptyLinesAtEnd = False
              DeleteEmptyLines = False
              CanResizeX = False
              CanResizeY = False
              hAlign = prhLeft
              vAlign = prvTop
              DefaultFont = False
              WordWrap = False
            end>
          dRec.Left = 96
          dRec.Top = 0
          dRec.Right = 97
          dRec.Bottom = 1
          Visible = False
        end
        object prTxMemoObj72: TprTxMemoObj
          dRec.DefVersion = 0
          dRec.Versions = <
            item
              Visible = True
              Memo.Strings = (
                '|')
              DeleteEmptyLinesAtEnd = False
              DeleteEmptyLines = False
              CanResizeX = False
              CanResizeY = False
              hAlign = prhLeft
              vAlign = prvTop
              DefaultFont = False
              WordWrap = False
            end>
          dRec.Left = 133
          dRec.Top = 0
          dRec.Right = 134
          dRec.Bottom = 1
          Visible = False
        end
        object prTxMemoObj21: TprTxMemoObj
          dRec.DefVersion = 0
          dRec.Versions = <
            item
              Visible = True
              Memo.Strings = (
                
                  '----------------------------------------------------------------' +
                  '----------------------------------------------------------------' +
                  '----------------------------------------------------')
              DeleteEmptyLinesAtEnd = False
              DeleteEmptyLines = False
              CanResizeX = False
              CanResizeY = False
              hAlign = prhLeft
              vAlign = prvTop
              DefaultFont = False
              WordWrap = False
            end>
          dRec.Left = 1
          dRec.Top = 1
          dRec.Right = 134
          dRec.Bottom = 2
          Visible = False
        end
        object prTxMemoObj15: TprTxMemoObj
          dRec.DefVersion = 0
          dRec.Versions = <
            item
              Visible = True
              Memo.Strings = (
                'DESCRIPCION')
              DeleteEmptyLinesAtEnd = False
              DeleteEmptyLines = False
              CanResizeX = False
              CanResizeY = False
              hAlign = prhCenter
              vAlign = prvCenter
              DefaultFont = False
              WordWrap = False
            end>
          dRec.Left = 10
          dRec.Top = 0
          dRec.Right = 79
          dRec.Bottom = 1
          Visible = False
        end
        object prTxMemoObj16: TprTxMemoObj
          dRec.DefVersion = 0
          dRec.Versions = <
            item
              Visible = True
              Memo.Strings = (
                '|')
              DeleteEmptyLinesAtEnd = False
              DeleteEmptyLines = False
              CanResizeX = False
              CanResizeY = False
              hAlign = prhLeft
              vAlign = prvTop
              DefaultFont = False
              WordWrap = False
            end>
          dRec.Left = 79
          dRec.Top = 0
          dRec.Right = 80
          dRec.Bottom = 1
          Visible = False
        end
        object prTxMemoObj34: TprTxMemoObj
          dRec.DefVersion = 0
          dRec.Versions = <
            item
              Visible = True
              Memo.Strings = (
                '|')
              DeleteEmptyLinesAtEnd = False
              DeleteEmptyLines = False
              CanResizeX = False
              CanResizeY = False
              hAlign = prhLeft
              vAlign = prvTop
              DefaultFont = False
              WordWrap = False
            end>
          dRec.Left = 114
          dRec.Top = 0
          dRec.Right = 115
          dRec.Bottom = 1
          Visible = False
        end
        object prTxMemoObj38: TprTxMemoObj
          dRec.DefVersion = 0
          dRec.Versions = <
            item
              Visible = True
              Memo.Strings = (
                'SALDO')
              DeleteEmptyLinesAtEnd = False
              DeleteEmptyLines = False
              CanResizeX = False
              CanResizeY = False
              hAlign = prhCenter
              vAlign = prvCenter
              DefaultFont = False
              WordWrap = False
            end>
          dRec.Left = 115
          dRec.Top = 0
          dRec.Right = 133
          dRec.Bottom = 1
          Visible = False
        end
      end
      object prTxHDetailBand2: TprTxHDetailBand
        Height = 1
        UseVerticalBands = False
        DataSetName = 'IBQuery1'
        ColCount = 1
        ColDirection = prcdTopBottomLeftRight
        Groups = (
          'codigo'
          'fecha')
        Bands = (
          'prTxHDetailHeaderBand1'
          'prTxHDetailFooterBand1')
        object prTxMemoObj57: TprTxMemoObj
          dRec.DefVersion = 0
          dRec.Versions = <
            item
              Visible = True
              Memo.Strings = (
                '[:<00000>IBQuery1.ID_COMPROBANTE]')
              DeleteEmptyLinesAtEnd = False
              DeleteEmptyLines = False
              CanResizeX = False
              CanResizeY = False
              hAlign = prhRight
              vAlign = prvCenter
              DefaultFont = False
              WordWrap = False
            end>
          dRec.Left = 4
          dRec.Top = 0
          dRec.Right = 9
          dRec.Bottom = 1
          Visible = False
        end
        object prTxMemoObj59: TprTxMemoObj
          dRec.DefVersion = 0
          dRec.Versions = <
            item
              Visible = True
              Memo.Strings = (
                '[:<#,##0.00>IBQuery1.DEBITO]')
              DeleteEmptyLinesAtEnd = False
              DeleteEmptyLines = False
              CanResizeX = False
              CanResizeY = False
              hAlign = prhRight
              vAlign = prvTop
              DefaultFont = False
              WordWrap = False
            end>
          dRec.Left = 80
          dRec.Top = 0
          dRec.Right = 96
          dRec.Bottom = 1
          Visible = False
        end
        object prTxMemoObj65: TprTxMemoObj
          dRec.DefVersion = 0
          dRec.Versions = <
            item
              Visible = True
              Memo.Strings = (
                '|')
              DeleteEmptyLinesAtEnd = False
              DeleteEmptyLines = False
              CanResizeX = False
              CanResizeY = False
              hAlign = prhLeft
              vAlign = prvTop
              DefaultFont = False
              WordWrap = False
            end>
          dRec.Left = 9
          dRec.Top = 0
          dRec.Right = 10
          dRec.Bottom = 1
          Visible = False
        end
        object prTxMemoObj111: TprTxMemoObj
          dRec.DefVersion = 0
          dRec.Versions = <
            item
              Visible = True
              Memo.Strings = (
                '|')
              DeleteEmptyLinesAtEnd = False
              DeleteEmptyLines = False
              CanResizeX = False
              CanResizeY = False
              hAlign = prhLeft
              vAlign = prvTop
              DefaultFont = False
              WordWrap = False
            end>
          dRec.Left = 96
          dRec.Top = 0
          dRec.Right = 97
          dRec.Bottom = 1
          Visible = False
        end
        object prTxMemoObj117: TprTxMemoObj
          dRec.DefVersion = 0
          dRec.Versions = <
            item
              Visible = True
              Memo.Strings = (
                '[:<#,##0.00>IBQuery1.CREDITO]')
              DeleteEmptyLinesAtEnd = False
              DeleteEmptyLines = False
              CanResizeX = False
              CanResizeY = False
              hAlign = prhRight
              vAlign = prvCenter
              DefaultFont = False
              WordWrap = False
            end>
          dRec.Left = 97
          dRec.Top = 0
          dRec.Right = 114
          dRec.Bottom = 1
          Visible = False
        end
        object prTxMemoObj10: TprTxMemoObj
          dRec.DefVersion = 0
          dRec.Versions = <
            item
              Visible = True
              Memo.Strings = (
                '|')
              DeleteEmptyLinesAtEnd = False
              DeleteEmptyLines = False
              CanResizeX = False
              CanResizeY = False
              hAlign = prhLeft
              vAlign = prvTop
              DefaultFont = False
              WordWrap = False
            end>
          dRec.Left = 133
          dRec.Top = 0
          dRec.Right = 134
          dRec.Bottom = 1
          Visible = False
        end
        object prTxMemoObj17: TprTxMemoObj
          dRec.DefVersion = 0
          dRec.Versions = <
            item
              Visible = True
              Memo.Strings = (
                '[IBQuery1.CHEQUE] [IBQuery1.DESCRIPCION]')
              DeleteEmptyLinesAtEnd = False
              DeleteEmptyLines = False
              CanResizeX = False
              CanResizeY = False
              hAlign = prhLeft
              vAlign = prvCenter
              DefaultFont = False
              WordWrap = False
            end>
          dRec.Left = 10
          dRec.Top = 0
          dRec.Right = 79
          dRec.Bottom = 1
          Visible = False
        end
        object prTxMemoObj18: TprTxMemoObj
          dRec.DefVersion = 0
          dRec.Versions = <
            item
              Visible = True
              Memo.Strings = (
                '|')
              DeleteEmptyLinesAtEnd = False
              DeleteEmptyLines = False
              CanResizeX = False
              CanResizeY = False
              hAlign = prhLeft
              vAlign = prvTop
              DefaultFont = False
              WordWrap = False
            end>
          dRec.Left = 79
          dRec.Top = 0
          dRec.Right = 80
          dRec.Bottom = 1
          Visible = False
        end
        object prTxMemoObj39: TprTxMemoObj
          dRec.DefVersion = 0
          dRec.Versions = <
            item
              Visible = True
              Memo.Strings = (
                '|')
              DeleteEmptyLinesAtEnd = False
              DeleteEmptyLines = False
              CanResizeX = False
              CanResizeY = False
              hAlign = prhLeft
              vAlign = prvTop
              DefaultFont = False
              WordWrap = False
            end>
          dRec.Left = 114
          dRec.Top = 0
          dRec.Right = 115
          dRec.Bottom = 1
          Visible = False
        end
        object prTxMemoObj40: TprTxMemoObj
          dRec.DefVersion = 0
          dRec.Versions = <
            item
              Visible = True
              Memo.Strings = (
                '[:<#,#0.00>SALDOACTUAL]')
              DeleteEmptyLinesAtEnd = False
              DeleteEmptyLines = False
              CanResizeX = False
              CanResizeY = False
              hAlign = prhRight
              vAlign = prvCenter
              DefaultFont = False
              WordWrap = False
            end>
          dRec.Left = 115
          dRec.Top = 0
          dRec.Right = 133
          dRec.Bottom = 1
          Visible = False
        end
        object prTxMemoObj28: TprTxMemoObj
          dRec.DefVersion = 0
          dRec.Versions = <
            item
              Visible = True
              Memo.Strings = (
                '[IBQuery1.ABREVIATURA]')
              DeleteEmptyLinesAtEnd = False
              DeleteEmptyLines = False
              CanResizeX = False
              CanResizeY = False
              hAlign = prhLeft
              vAlign = prvTop
              DefaultFont = False
              WordWrap = False
            end>
          dRec.Left = 1
          dRec.Top = 0
          dRec.Right = 3
          dRec.Bottom = 1
          Visible = False
        end
        object prTxHLineObj1: TprTxHLineObj
          dRec.DefVersion = 0
          dRec.Versions = <
            item
              Visible = True
            end>
          dRec.Left = 3
          dRec.Top = 0
          dRec.Right = 4
          dRec.Bottom = 1
          Visible = False
        end
      end
      object prTxHDetailFooterBand1: TprTxHDetailFooterBand
        Height = 2
        UseVerticalBands = False
        DetailBand = prTxReport1.prTxHDetailBand2
        ColCount = 1
        ColDirection = prcdTopBottomLeftRight
        LinkToDetail = True
        object prTxMemoObj60: TprTxMemoObj
          dRec.DefVersion = 0
          dRec.Versions = <
            item
              Visible = True
              Memo.Strings = (
                
                  '================================================================' +
                  '================================================================' +
                  '======================================================')
              DeleteEmptyLinesAtEnd = False
              DeleteEmptyLines = False
              CanResizeX = False
              CanResizeY = False
              hAlign = prhLeft
              vAlign = prvTop
              DefaultFont = False
              WordWrap = False
            end>
          dRec.Left = 1
          dRec.Top = 0
          dRec.Right = 134
          dRec.Bottom = 1
          Visible = False
        end
        object prTxMemoObj61: TprTxMemoObj
          dRec.DefVersion = 0
          dRec.Versions = <
            item
              Visible = True
              Memo.Strings = (
                'TOTAL MOVIMIENTOS -->')
              DeleteEmptyLinesAtEnd = False
              DeleteEmptyLines = False
              CanResizeX = False
              CanResizeY = False
              hAlign = prhLeft
              vAlign = prvTop
              DefaultFont = False
              WordWrap = False
            end>
          dRec.Left = 1
          dRec.Top = 1
          dRec.Right = 28
          dRec.Bottom = 2
          Visible = False
        end
        object prTxMemoObj63: TprTxMemoObj
          dRec.DefVersion = 0
          dRec.Versions = <
            item
              Visible = True
              Memo.Strings = (
                '[:<#,##0.00>TotalDebitos]')
              DeleteEmptyLinesAtEnd = False
              DeleteEmptyLines = False
              CanResizeX = False
              CanResizeY = False
              hAlign = prhRight
              vAlign = prvCenter
              DefaultFont = False
              WordWrap = False
              TxFontOptionsEx = (
                tfoBold)
            end>
          dRec.Left = 80
          dRec.Top = 1
          dRec.Right = 96
          dRec.Bottom = 2
          Visible = False
        end
        object prTxMemoObj64: TprTxMemoObj
          dRec.DefVersion = 0
          dRec.Versions = <
            item
              Visible = True
              Memo.Strings = (
                '[:<#,##0.00>TotalCreditos]')
              DeleteEmptyLinesAtEnd = False
              DeleteEmptyLines = False
              CanResizeX = False
              CanResizeY = False
              hAlign = prhRight
              vAlign = prvCenter
              DefaultFont = False
              WordWrap = False
              TxFontOptionsEx = (
                tfoBold)
            end>
          dRec.Left = 97
          dRec.Top = 1
          dRec.Right = 114
          dRec.Bottom = 2
          Visible = False
        end
        object prTxMemoObj29: TprTxMemoObj
          dRec.DefVersion = 0
          dRec.Versions = <
            item
              Visible = True
              Memo.Strings = (
                '|')
              DeleteEmptyLinesAtEnd = False
              DeleteEmptyLines = False
              CanResizeX = False
              CanResizeY = False
              hAlign = prhLeft
              vAlign = prvTop
              DefaultFont = False
              WordWrap = False
            end>
          dRec.Left = 96
          dRec.Top = 1
          dRec.Right = 97
          dRec.Bottom = 2
          Visible = False
        end
        object prTxMemoObj12: TprTxMemoObj
          dRec.DefVersion = 0
          dRec.Versions = <
            item
              Visible = True
              Memo.Strings = (
                '|')
              DeleteEmptyLinesAtEnd = False
              DeleteEmptyLines = False
              CanResizeX = False
              CanResizeY = False
              hAlign = prhLeft
              vAlign = prvTop
              DefaultFont = False
              WordWrap = False
            end>
          dRec.Left = 114
          dRec.Top = 1
          dRec.Right = 115
          dRec.Bottom = 2
          Visible = False
        end
        object prTxMemoObj56: TprTxMemoObj
          dRec.DefVersion = 0
          dRec.Versions = <
            item
              Visible = True
              Memo.Strings = (
                '|')
              DeleteEmptyLinesAtEnd = False
              DeleteEmptyLines = False
              CanResizeX = False
              CanResizeY = False
              hAlign = prhLeft
              vAlign = prvTop
              DefaultFont = False
              WordWrap = False
            end>
          dRec.Left = 79
          dRec.Top = 1
          dRec.Right = 80
          dRec.Bottom = 2
          Visible = False
        end
      end
      object prTxHGroupHeaderBand1: TprTxHGroupHeaderBand
        Height = 1
        UseVerticalBands = True
        Group = prTxReport1.codigo
        ColCount = 1
        ColDirection = prcdTopBottomLeftRight
        LinkToDetail = True
        StartNewPage = False
        ReprintOnEachPage = False
        object prTxMemoObj23: TprTxMemoObj
          dRec.DefVersion = 0
          dRec.Versions = <
            item
              Visible = True
              Memo.Strings = (
                '[IBQuery1.CODIGO] : [IBQuery1.NOMBRE]')
              DeleteEmptyLinesAtEnd = False
              DeleteEmptyLines = False
              CanResizeX = False
              CanResizeY = False
              hAlign = prhLeft
              vAlign = prvTop
              DefaultFont = False
              WordWrap = False
            end>
          dRec.Left = 1
          dRec.Top = 0
          dRec.Right = 54
          dRec.Bottom = 1
          Visible = False
        end
        object prTxMemoObj43: TprTxMemoObj
          dRec.DefVersion = 0
          dRec.Versions = <
            item
              Visible = True
              Memo.Strings = (
                '[:<#,#0.00>SALDOINICIAL]')
              DeleteEmptyLinesAtEnd = False
              DeleteEmptyLines = False
              CanResizeX = False
              CanResizeY = False
              hAlign = prhRight
              vAlign = prvCenter
              DefaultFont = False
              WordWrap = False
            end>
          dRec.Left = 115
          dRec.Top = 0
          dRec.Right = 133
          dRec.Bottom = 1
          Visible = False
        end
        object prTxMemoObj27: TprTxMemoObj
          dRec.DefVersion = 0
          dRec.Versions = <
            item
              Visible = True
              Memo.Strings = (
                'Saldo Inicial:')
              DeleteEmptyLinesAtEnd = False
              DeleteEmptyLines = False
              CanResizeX = False
              CanResizeY = False
              hAlign = prhLeft
              vAlign = prvTop
              DefaultFont = False
              WordWrap = False
            end>
          dRec.Left = 99
          dRec.Top = 0
          dRec.Right = 114
          dRec.Bottom = 1
          Visible = False
        end
      end
      object prTxHGroupHeaderBand2: TprTxHGroupHeaderBand
        Height = 1
        UseVerticalBands = False
        Group = prTxReport1.fecha
        ColCount = 1
        ColDirection = prcdTopBottomLeftRight
        LinkToDetail = True
        StartNewPage = False
        ReprintOnEachPage = False
        object prTxMemoObj24: TprTxMemoObj
          dRec.DefVersion = 0
          dRec.Versions = <
            item
              Visible = True
              Memo.Strings = (
                '[IBQuery1.FECHADIA]')
              DeleteEmptyLinesAtEnd = False
              DeleteEmptyLines = False
              CanResizeX = False
              CanResizeY = False
              hAlign = prhLeft
              vAlign = prvCenter
              DefaultFont = False
              WordWrap = False
            end>
          dRec.Left = 1
          dRec.Top = 0
          dRec.Right = 24
          dRec.Bottom = 1
          Visible = False
        end
      end
      object prTxHGroupFooterBand2: TprTxHGroupFooterBand
        Height = 2
        UseVerticalBands = False
        Group = prTxReport1.codigo
        ColCount = 1
        ColDirection = prcdTopBottomLeftRight
        LinkToDetail = False
        object prTxMemoObj44: TprTxMemoObj
          dRec.DefVersion = 0
          dRec.Versions = <
            item
              Visible = True
              Memo.Strings = (
                
                  '----------------------------------------------------------------' +
                  '----------------------------------------------------------------' +
                  '----------------------------------------------------------------' +
                  '----------------------------------------------------------------' +
                  '----------------------------------------------------------------' +
                  '----------------------------------------------------------------' +
                  '----------------------------------------------------------------' +
                  '---------------------')
              DeleteEmptyLinesAtEnd = False
              DeleteEmptyLines = False
              CanResizeX = False
              CanResizeY = False
              hAlign = prhLeft
              vAlign = prvTop
              DefaultFont = False
              WordWrap = False
            end>
          dRec.Left = 1
          dRec.Top = 0
          dRec.Right = 134
          dRec.Bottom = 1
          Visible = False
        end
        object prTxMemoObj45: TprTxMemoObj
          dRec.DefVersion = 0
          dRec.Versions = <
            item
              Visible = True
              Memo.Strings = (
                'SubTotal Cuenta    :')
              DeleteEmptyLinesAtEnd = False
              DeleteEmptyLines = False
              CanResizeX = False
              CanResizeY = False
              hAlign = prhLeft
              vAlign = prvTop
              DefaultFont = False
              WordWrap = False
            end>
          dRec.Left = 1
          dRec.Top = 1
          dRec.Right = 27
          dRec.Bottom = 2
          Visible = False
        end
        object prTxMemoObj46: TprTxMemoObj
          dRec.DefVersion = 0
          dRec.Versions = <
            item
              Visible = True
              Memo.Strings = (
                '[:<#,##0.00>TotalDC]')
              DeleteEmptyLinesAtEnd = False
              DeleteEmptyLines = False
              CanResizeX = False
              CanResizeY = False
              hAlign = prhRight
              vAlign = prvCenter
              DefaultFont = False
              WordWrap = False
            end>
          dRec.Left = 80
          dRec.Top = 1
          dRec.Right = 96
          dRec.Bottom = 2
          Visible = False
        end
        object prTxMemoObj47: TprTxMemoObj
          dRec.DefVersion = 0
          dRec.Versions = <
            item
              Visible = True
              Memo.Strings = (
                '|')
              DeleteEmptyLinesAtEnd = False
              DeleteEmptyLines = False
              CanResizeX = False
              CanResizeY = False
              hAlign = prhLeft
              vAlign = prvTop
              DefaultFont = False
              WordWrap = False
            end>
          dRec.Left = 96
          dRec.Top = 1
          dRec.Right = 97
          dRec.Bottom = 2
          Visible = False
        end
        object prTxMemoObj48: TprTxMemoObj
          dRec.DefVersion = 0
          dRec.Versions = <
            item
              Visible = True
              Memo.Strings = (
                '[:<#,##0.00>TotalCC]')
              DeleteEmptyLinesAtEnd = False
              DeleteEmptyLines = False
              CanResizeX = False
              CanResizeY = False
              hAlign = prhRight
              vAlign = prvCenter
              DefaultFont = False
              WordWrap = False
            end>
          dRec.Left = 97
          dRec.Top = 1
          dRec.Right = 114
          dRec.Bottom = 2
          Visible = False
        end
        object prTxMemoObj49: TprTxMemoObj
          dRec.DefVersion = 0
          dRec.Versions = <
            item
              Visible = True
              Memo.Strings = (
                '|')
              DeleteEmptyLinesAtEnd = False
              DeleteEmptyLines = False
              CanResizeX = False
              CanResizeY = False
              hAlign = prhLeft
              vAlign = prvTop
              DefaultFont = False
              WordWrap = False
            end>
          dRec.Left = 114
          dRec.Top = 1
          dRec.Right = 115
          dRec.Bottom = 2
          Visible = False
        end
        object prTxMemoObj54: TprTxMemoObj
          dRec.DefVersion = 0
          dRec.Versions = <
            item
              Visible = True
              Memo.Strings = (
                '|')
              DeleteEmptyLinesAtEnd = False
              DeleteEmptyLines = False
              CanResizeX = False
              CanResizeY = False
              hAlign = prhLeft
              vAlign = prvTop
              DefaultFont = False
              WordWrap = False
            end>
          dRec.Left = 79
          dRec.Top = 1
          dRec.Right = 80
          dRec.Bottom = 2
          Visible = False
        end
      end
    end
    object codigo: TprGroup
      Valid = 'IBQuery1.CODIGO'
      DetailBand = prTxReport1.prTxHDetailBand2
    end
    object fecha: TprGroup
      Valid = 'IBQuery1.FECHADIA'
      DetailBand = prTxReport1.prTxHDetailBand2
    end
  end
  object frOLEExcelExport1: TfrOLEExcelExport
    Left = 256
    Top = 144
  end
  object frReport1: TfrReport
    InitialZoom = pzDefault
    PreviewButtons = [pbZoom, pbLoad, pbSave, pbPrint, pbFind, pbHelp, pbExit]
    StoreInDFM = True
    RebuildPrinter = False
    Left = 280
    Top = 144
    ReportForm = {
      1900000082180000190000000001000100FFFFFFFFFF010000006F080000EA0A
      00000000000000000000000000003600000000000000000000FFFF0000000000
      00000000000000030400466F726D000F000080DC000000780000007C0100002C
      010000040000000200CA0000000B005061676548656164657231000201000000
      00140000000B030000380000003000020001000000000000000000FFFFFF1F00
      000000000000000000000000FFFF000000000002000000010000000000000001
      000000C800000014000000010000000000000200370100000D004D6173746572
      4865616465723100020100000000500000000B03000010000000300004000100
      0000000000000000FFFFFF1F00000000000000000000000000FFFF0000000000
      02000000010000000000000001000000C8000000140000000100000000000002
      00B50100000C0047726F75704865616465723100020100000000680000000B03
      0000100000003000100001000000000000000000FFFFFF1F0000000012004344
      53617578696C6961722E434F4449474F00000000000000FFFF00000000000200
      0000010000000000000001000000C80000001400000001000000000000020032
      0200000C0047726F75704865616465723200020100000000900000000B030000
      100000003000100001000000000000000000FFFFFF1F00000000110043445361
      7578696C6961722E464543484100000000000000FFFF00000000000200000001
      0000000000000001000000C800000014000000010000000000000200A9020000
      0B004D6173746572446174613100020100000000B80000000B0300000E000000
      3000050001000000000000000000FFFFFF1F000000000C006672445361757869
      6C69617200000000000000FFFF00000000000200000001000000000000000100
      0000C800000014000000010000000000000200150300000C0047726F7570466F
      6F7465723100020100000000EC0000000B0300000C0000003000110001000000
      000000000000FFFFFF1F00000000000000000000000000FFFF00000000000200
      0000010000000000000001000000C80000001400000001000000000000020081
      0300000C0047726F7570466F6F74657232000201000000000C0100000B030000
      100000003000110001000000000000000000FFFFFF1F00000000000000000000
      000000FFFF000000000002000000010000000000000001000000C80000001400
      0000010000000000000200FB0300000B0044657461696C446174613100020100
      000000C70000000B030000110000003000080001000000000000000000FFFFFF
      1F000000000F0066724453617578696C69617265787400000000000000FFFF00
      0000000002000000010000000000000001000000C80000001400000001000000
      00000000008C04000005004D656D6F310002000C000000B8000000180000000C
      0000000300000001000000000000000000FFFFFF1F2E02000000000001001300
      5B434453617578696C6961722E5449504F5D2D00000000FFFF00000000000200
      000001000000000500417269616C000800000000000000000000000000010002
      0000000000FFFFFF00000000020000000000000000002305000005004D656D6F
      3200020024000000B80000002C0000000C000000030000000100000000000000
      0000FFFFFF1F2E0004010500303030303000010014005B434453617578696C69
      61722E4E554D45524F5D00000000FFFF00000000000200000001000000000500
      417269616C0008000000000000000000000000000100020000000000FFFFFF00
      00000002000000000000000000B505000005004D656D6F3300020050000000B8
      000000340000000C0000000300000001000000000000000000FFFFFF1F2E0200
      00000000010014005B434453617578696C6961722E4348455155455D00000000
      FFFF00000000000200000001000000000500417269616C000800000000000000
      0000000000000100020000000000FFFFFF00000000020000000000000000004C
      06000005004D656D6F3400020084000000B8000000540100000C000000030000
      0001000000000000000000FFFFFF1F2E020000000000010019005B4344536175
      78696C6961722E4445534352495043494F4E5D00000000FFFF00000000000200
      000001000000000500417269616C000800000000000000000000000000010002
      0000000000FFFFFF0000000002000000000000000000DE06000005004D656D6F
      35000200D8010000B8000000600000000C000000030000000100000000000000
      0000FFFFFF1F2E020301000000010014005B434453617578696C6961722E4445
      4249544F5D00000000FFFF00000000000200000001000000000500417269616C
      0008000000000000000000010000000100020000000000FFFFFF000000000200
      00000000000000007107000005004D656D6F3600020038020000B80000006000
      00000C0000000300000001000000000000000000FFFFFF1F2E02030100000001
      0015005B434453617578696C6961722E4352454449544F5D00000000FFFF0000
      0000000200000001000000000500417269616C00080000000000000000000100
      00000100020000000000FFFFFF00000000020000000000000000001208000005
      004D656D6F3700020098020000B8000000600000000C00000003000000010000
      00000000000000FFFFFF1F2E020301090023232C2323302E30300001001A005B
      434453617578696C6961722E53414C444F5F41435455414C5D00000000FFFF00
      000000000200000001000000000500417269616C000800000000000000000001
      0000000100020000000000FFFFFF0000000002000000000000000000AC080000
      05004D656D6F3800020014000000680000009800000010000000030000000100
      0000000000000000FFFFFF1F2E02000000000001001C0043F36469676F3A205B
      434453617578696C6961722E434F4449474F5D00000000FFFF00000000000200
      000001000000000500417269616C000800000000000000000000000000010002
      0000000000FFFFFF00000000020000000000000000004109000005004D656D6F
      39000200B0000000680000008001000010000000030000000100000000000000
      0000FFFFFF1F2E020000000000010017005B434453617578696C6961722E4E4F
      4D4252455055435D00000000FFFF000000000002000000010000000005004172
      69616C0008000000000000000000000000000100020000000000FFFFFF000000
      0002000000000000000000CA09000006004D656D6F3130000200340200006800
      000060000000100000000300000001000000000000000000FFFFFF1F2E020000
      00000001000A00532E496E696369616C3A00000000FFFF000000000002000000
      01000000000500417269616C000A000000000000000000000000000100020000
      000000FFFFFF00000000020000000000000000006F0A000006004D656D6F3131
      0002009802000068000000600000001000000003000000010000000000000000
      00FFFFFF1F2E0203010A002423232C2323302E30300001001C005B4344536175
      78696C6961722E53414C444F5F414E544552494F525D00000000FFFF00000000
      000200000001000000000500417269616C000800000000000000000001000000
      0100020000000000FFFFFF0000000002000000000000000000010B000006004D
      656D6F3132000200140000009000000060000000100000000300000001000000
      000000000000FFFFFF1F2E020000000000010013005B434453617578696C6961
      722E46454348415D00000000FFFF000000000002000000010000000005004172
      69616C0008000000000000000000010000000100020000000000FFFFFF000000
      0002000000000000000000990B000006004D656D6F3135000200D8010000EC00
      0000600000000C0000000300000001000000000000000000FFFFFF1F2E020301
      000000010019005B53554D28434453617578696C6961722E44454249544F295D
      00000000FFFF00000000000200000001000000000500417269616C0008000000
      000000000000010000000100020000000000FFFFFF0000000002000000000000
      000000320C000006004D656D6F313600020038020000EC000000600000000C00
      00000300000001000000000000000000FFFFFF1F2E02030100000001001A005B
      53554D28434453617578696C6961722E4352454449544F295D00000000FFFF00
      000000000200000001000000000500417269616C000800000000000000000001
      0000000100020000000000FFFFFF0000000002000000000000000000CA0C0000
      06004D656D6F3137000200D80100000F010000600000000C0000000300000001
      000000000000000000FFFFFF1F2E020301000000010019005B53554D28434453
      617578696C6961722E44454249544F295D00000000FFFF000000000002000000
      01000000000500417269616C0008000000000000000000010000000100020000
      000000FFFFFF0000000002000000000000000000630D000006004D656D6F3138
      000200380200000F010000600000000C00000003000000010000000000000000
      00FFFFFF1F2E02030100000001001A005B53554D28434453617578696C696172
      2E4352454449544F295D00000000FFFF00000000000200000001000000000500
      417269616C0008000000000000000000010000000100020000000000FFFFFF00
      00000002000000000000000000FE0D000006004D656D6F313900020014000000
      EC000000A80100000C0000000300000001000000000000000000FFFFFF1F2E02
      000000000001001C00544F54414C204445205B434453617578696C6961722E46
      454348415D00000000FFFF00000000000200000001000000000500417269616C
      0008000000000000000000010000000100020000000000FFFFFF000000000200
      00000000000000009F0E000006004D656D6F3230000200140000000F010000A8
      0100000C0000000300000001000000000000000000FFFFFF1F2E020000000000
      01002200544F54414C204445203A205B434453617578696C6961722E4E4F4D42
      52455055435D00000000FFFF0000000000020000000100000000050041726961
      6C0008000000000000000000010000000100020000000000FFFFFF0000000002
      000000000000000000270F000006004D656D6F32320002001400000014000000
      C8000000140000000300000001000000000000000000FFFFFF1F2E0200000000
      00010009005B454D50524553415D00000000FFFF000000000002000000010000
      00000500417269616C00080000000000000000000A0000000100020000000000
      FFFFFF0000000002000000000000000000C40F000006004D656D6F3233000200
      140000002A000000C8000000100000000300000001000000000000000000FFFF
      FF1F2E02000000000001001E0043F36469676F20496E696369616C3A5B434F44
      49474F494E494349414C5D00000000FFFF000000000002000000010000000005
      00417269616C0008000000000000000000080000000100020000000000FFFFFF
      00000000020000000000000000005D10000006004D656D6F3234000200140000
      003A000000C8000000100000000300000001000000000000000000FFFFFF1F2E
      02000000000001001A0043F36469676F2046696E616C3A5B434F4449474F4649
      4E414C5D00000000FFFF00000000000200000001000000000500417269616C00
      08000000000000000000080000000100020000000000FFFFFF00000000020000
      00000000000000EA10000006004D656D6F3235000200340200002A0000006000
      0000100000000300000001000000000000000000FFFFFF1F2E02000000000001
      000E00466563686120496E696369616C3A00000000FFFF000000000002000000
      01000000000500417269616C0008000000000000000000080000000100020000
      000000FFFFFF00000000020000000000000000007511000006004D656D6F3236
      000200340200003A000000600000001000000003000000010000000000000000
      00FFFFFF1F2E02000000000001000C0046656368612046696E616C3A00000000
      FFFF00000000000200000001000000000500417269616C000800000000000000
      0000080000000100020000000000FFFFFF00000000020000000000000000000C
      12000006004D656D6F3237000200980200002A00000060000000100000000300
      000001000000000000000000FFFFFF1F2C0004020A0044442F4D4D2F59595959
      0001000E005B4645434841494E494349414C5D00000000FFFF00000000000200
      000001000000000500417269616C000800000000000000000008000000010002
      0000000000FFFFFF0000000002000000000000000000A112000006004D656D6F
      3238000200980200003A00000060000000100000000300000001000000000000
      000000FFFFFF1F2C0004020A0044442F4D4D2F595959590001000C005B464543
      484146494E414C5D00000000FFFF000000000002000000010000000005004172
      69616C0008000000000000000000080000000100020000000000FFFFFF000000
      00020000000000000000002B13000006004D656D6F32390002000C0000005000
      000074000000100000000300000001000000000000000000FFFFFF1F2E020000
      00000001000B00434F4D50524F42414E544500000000FFFF0000000000020000
      0001000000000500417269616C00080000000000000000000A00000001000200
      00000000FFFFFF0000000002000000000000000000B513000006004D656D6F33
      3000020084000000500000005001000010000000030000000100000000000000
      0000FFFFFF1F2E02000000000001000B004445534352495043494F4E00000000
      FFFF00000000000200000001000000000500417269616C000800000000000000
      00000A0000000100020000000000FFFFFF00000000020000000000000000003A
      14000006004D656D6F3331000200D40100005000000060000000100000000300
      000001000000000000000000FFFFFF1F2E020301000000010006004445424954
      4F00000000FFFF00000000000200000001000000000500417269616C00080000
      00000000000000020000000100020000000000FFFFFF00000000020000000000
      00000000C014000006004D656D6F333200020034020000500000006000000010
      0000000300000001000000000000000000FFFFFF1F2E02030100000001000700
      4352454449544F00000000FFFF00000000000200000001000000000500417269
      616C0008000000000000000000020000000100020000000000FFFFFF00000000
      020000000000000000004D15000006004D656D6F333300020094020000500000
      0060000000100000000300000001000000000000000000FFFFFF1F2E02030109
      0023232C2323302E3030000100050053414C444F00000000FFFF000000000002
      00000001000000000500417269616C0008000000000000000000020000000100
      020000000000FFFFFF0000000002000000000000000000DE15000006004D656D
      6F33350002001401000014000000DC0000001400000003000000010000000000
      00000000FFFFFF1F2E02000000000001001200494E464F524D4520415558494C
      494152455300000000FFFF00000000000200000001000000000500417269616C
      000A000000000000000000020000000100020000000000FFFFFF000000000200
      00000000000004002D16000005004C696E6531000200110000004C000000E802
      0000000000000100080002000000000000000000FFFFFF002E02000000000000
      0000000000FFFF000000000002000000010000000004007C16000005004C696E
      6532000200140000000F010000E4020000000000000100080002000000000000
      000000FFFFFF002E020000000000000000000000FFFF00000000000200000001
      0000000000002D17000006004D656D6F313300020024000000C7000000740200
      00100000000300000001000000000000000000FFFFFF1F2E0200000000000100
      32005B434453617578696C6961726578742E444F43554D454E544F5D205B4344
      53617578696C6961726578742E4E4F4D4252455D00000000FFFF000000000002
      00000001000000000500417269616C0008000000000000000000000000000100
      020000000000FFFFFF0000000002000000000000000000BC17000006004D656D
      6F31340002001401000030000000DC0000001400000003000000010000000000
      00000000FFFFFF1F2E0200000000000100100043454E54524F3A205B43454E54
      524F5D00000000FFFF00000000000200000001000000000500417269616C000A
      000000000000000000020000000100020000000000FFFFFF0000000002000000
      00000000FEFEFF0700000008002047454E4552414C000000000700454D505245
      5341000000000C004645434841494E494349414C000000000A00464543484146
      494E414C000000000D00434F4449474F494E494349414C000000000B00434F44
      49474F46494E414C00000000060043454E54524F000000000000000002000000
      0C0066724453617578696C696172000000000F0066724453617578696C696172
      65787400000000FC000000000000000000000000000000004D00B7079702CDE0
      E4408F800B87EF2FE540}
  end
  object SD1: TSaveDialog
    Left = 248
    Top = 48
  end
  object IBQagencia: TIBQuery
    SQL.Strings = (
      'SELECT * FROM "gen$agencia"')
    Left = 64
    Top = 200
  end
  object DSagencia: TDataSource
    DataSet = IBQagencia
    Left = 104
    Top = 200
  end
  object IBQsaldoinicial: TIBQuery
    SQL.Strings = (
      'SELECT s.SALDOINICIAL FROM "con$saldosiniciales" s'
      'WHERE s.CODIGO = :CODIGO and s.ID_AGENCIA = :ID_AGENCIA')
    Left = 8
    Top = 152
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
end
