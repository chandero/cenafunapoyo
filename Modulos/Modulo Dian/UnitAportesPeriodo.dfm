object frmAportesPeriodo: TfrmAportesPeriodo
  Left = 478
  Top = 284
  Width = 393
  Height = 217
  Caption = 'Aportes del Periodo'
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
  object Bar2: TJvSpecialProgress
    Left = 0
    Top = 135
    Width = 275
    Height = 15
    BorderStyle = bsSingle
    Color = clBtnHighlight
    EndColor = clBlue
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -11
    Font.Name = 'Arial'
    Font.Style = []
    ParentColor = False
    ParentFont = False
    Solid = True
    Step = 1
    TextCentered = True
    TextOption = toPercent
  end
  object Bar1: TJvSpecialProgress
    Left = 0
    Top = 119
    Width = 275
    Height = 15
    BorderStyle = bsSingle
    Color = clBtnHighlight
    EndColor = clMaroon
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -11
    Font.Name = 'Arial'
    Font.Style = []
    ParentColor = False
    ParentFont = False
    Solid = True
    Step = 1
    TextCentered = True
    TextOption = toPercent
  end
  object GroupBox1: TGroupBox
    Left = 1
    Top = 0
    Width = 273
    Height = 63
    Caption = 'Periodo, Monto y Total de Aportes'
    TabOrder = 0
    object Label1: TLabel
      Left = 8
      Top = 16
      Width = 19
      Height = 13
      Alignment = taCenter
      Caption = 'A'#241'o'
    end
    object Label2: TLabel
      Left = 46
      Top = 18
      Width = 40
      Height = 13
      Alignment = taCenter
      AutoSize = False
      Caption = 'Monto'
    end
    object Label5: TLabel
      Left = 135
      Top = 18
      Width = 69
      Height = 17
      Alignment = taCenter
      AutoSize = False
      Caption = 'Total Aportes'
    end
    object EdMonto: TJvCurrencyEdit
      Left = 45
      Top = 33
      Width = 93
      Height = 21
      Hint = 'Monto desde el cu'#225'l se debe reportar'
      Alignment = taRightJustify
      ParentShowHint = False
      ReadOnly = False
      ShowHint = True
      TabOrder = 1
      Value = 5000000
      HasMaxValue = False
      HasMinValue = False
    end
    object EdPeriodo: TJvYearEdit
      Left = 6
      Top = 33
      Width = 35
      Height = 21
      Alignment = taRightJustify
      ReadOnly = False
      TabOrder = 0
      Value = 2009
      MaxValue = 9999
      MinValue = 0
      HasMaxValue = True
      HasMinValue = True
      WindowsillYear = 71
    end
    object JvTotal: TJvCurrencyEdit
      Left = 139
      Top = 32
      Width = 131
      Height = 21
      Hint = 'Saldo Total de Aportes al 31 de Diciembre del A'#241'o Evaluado'
      Alignment = taRightJustify
      ParentShowHint = False
      ReadOnly = False
      ShowHint = True
      TabOrder = 2
      Value = 1
      HasMaxValue = False
      HasMinValue = False
    end
  end
  object Panel1: TPanel
    Left = 277
    Top = 0
    Width = 99
    Height = 153
    Color = clOlive
    TabOrder = 1
    object btnProcesar: TBitBtn
      Left = 4
      Top = 6
      Width = 93
      Height = 25
      Caption = '&Procesar'
      TabOrder = 0
      OnClick = btnProcesarClick
      Glyph.Data = {
        36050000424D3605000000000000360400002800000010000000100000000100
        08000000000000010000D30E0000D30E000000010000000100004A7BB500296B
        C600527BC600186BD600528CD6003194D600397BE7005284E700107BEF00317B
        EF001084EF0029ADEF0039ADEF0010B5EF0008BDEF000073F7001873F7002973
        F7000884F7000894F70018A5F70000CEF70018DEF70063DEF700FF00FF000073
        FF00007BFF000084FF00008CFF000094FF00009CFF0000A5FF0010A5FF0039A5
        FF0052A5FF005AA5FF0000ADFF0029ADFF0031ADFF0000B5FF006BB5FF0084B5
        FF0000BDFF0008BDFF0010BDFF0000C6FF0008C6FF006BC6FF0000CEFF0018CE
        FF0000D6FF0008D6FF0010D6FF0021D6FF0031D6FF0000DEFF0018DEFF0029DE
        FF0042DEFF0000E7FF0010E7FF0018E7FF0039E7FF0000EFFF0018EFFF0039EF
        FF004AEFFF0000F7FF0008F7FF0029F7FF0031F7FF0042F7FF004AF7FF005AF7
        FF0000FFFF0008FFFF0018FFFF0021FFFF0031FFFF0039FFFF00FFFFFF00FFFF
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
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00181818181818
        1818181818181818181818181802181818181818181818181818181818090201
        18181818181818181818181818061A0F02181818181818181818181818181E1C
        1C0218181818181818181818181818271C1D0202181818181818181818181818
        272E1E1E02181818181818181818181818272B241E0218181818181818180202
        022D4B462C240202181818181818252D3F43434A42311F02181818181818212D
        3F433F374A4A412E021818181818182E3E42474C4A4A4B4D0218181818181818
        1836444A43322702181818181818181818181836433F241F0218181818181818
        1818181818363A34230218181818181818181818181818362202}
    end
    object btnCerrar: TBitBtn
      Left = 4
      Top = 64
      Width = 93
      Height = 25
      Caption = '&Cerrar'
      TabOrder = 1
      OnClick = btnCerrarClick
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
    object btnAExcel: TBitBtn
      Left = 4
      Top = 32
      Width = 91
      Height = 25
      Caption = 'Excel'
      TabOrder = 2
      Visible = False
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
  object GroupBox2: TGroupBox
    Left = 1
    Top = 60
    Width = 274
    Height = 60
    Caption = 'Fecha Corte y Fecha de Revalorizaci'#243'n'
    TabOrder = 2
    object Label3: TLabel
      Left = 5
      Top = 16
      Width = 58
      Height = 13
      Caption = 'Fecha Corte'
    end
    object Label4: TLabel
      Left = 137
      Top = 15
      Width = 128
      Height = 13
      Caption = 'Fecha Revalorizaci'#243'n Apor'
    end
    object dtFecha: TDateTimePicker
      Left = 137
      Top = 31
      Width = 114
      Height = 21
      CalAlignment = dtaLeft
      Date = 40271.5034424537
      Time = 40271.5034424537
      DateFormat = dfShort
      DateMode = dmComboBox
      Kind = dtkDate
      ParseInput = False
      TabOrder = 0
    end
    object EdFechaCorte: TDateTimePicker
      Left = 5
      Top = 31
      Width = 122
      Height = 21
      CalAlignment = dtaLeft
      Date = 40271.5034424537
      Time = 40271.5034424537
      DateFormat = dfShort
      DateMode = dmComboBox
      Kind = dtkDate
      ParseInput = False
      TabOrder = 1
    end
  end
  object IBQuery1: TIBQuery
    Database = dmGeneral.IBDatabase1
    Transaction = dmGeneral.IBTransaction1
    Left = 314
    Top = 150
  end
  object Cds1: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 260
    Top = 65528
    object Cds1Tipo: TIntegerField
      FieldName = 'Tipo'
    end
    object Cds1Codigo: TIntegerField
      FieldName = 'Codigo'
    end
    object Cds1SubCodigo: TIntegerField
      FieldName = 'SubCodigo'
    end
    object Cds1NumeroIde: TStringField
      FieldName = 'NumeroIde'
      Size = 14
    end
    object Cds1DigitoIde: TStringField
      FieldName = 'DigitoIde'
      Size = 1
    end
    object Cds1TipoIde: TStringField
      FieldName = 'TipoIde'
      Size = 1
    end
    object Cds1Nombre: TStringField
      FieldName = 'Nombre'
      Size = 60
    end
    object Cds1Primer: TCurrencyField
      FieldName = 'Primer'
    end
    object Cds1Segundo: TCurrencyField
      FieldName = 'Segundo'
    end
    object Cds1TercerValor: TCurrencyField
      FieldName = 'TercerValor'
    end
    object Cds1Direccion: TStringField
      FieldName = 'Direccion'
      Size = 40
    end
    object Cds1DptoMun: TStringField
      FieldName = 'DptoMun'
      Size = 5
    end
  end
  object sd1: TSaveDialog
    DefaultExt = '*.xls'
    Filter = 'Hoja de C'#225'lculo de Excel(*.xls)|*.xls'
    InitialDir = '%SYSTEMROOT%'
    Left = 294
    Top = 68
  end
  object IBSQL2: TIBSQL
    Database = dmGeneral.IBDatabase1
    Transaction = dmGeneral.IBTransaction1
    Left = 244
    Top = 2
  end
  object IBSQL1: TIBQuery
    Database = dmGeneral.IBDatabase1
    Transaction = dmGeneral.IBTransaction1
    Left = 200
    Top = 65528
  end
  object IBSQL3: TIBSQL
    Database = dmGeneral.IBDatabase1
    Transaction = dmGeneral.IBTransaction1
    Left = 328
    Top = 144
  end
  object CdSaldo: TClientDataSet
    Active = True
    Aggregates = <>
    FieldDefs = <
      item
        Name = 'TIPO_DOC'
        DataType = ftInteger
      end
      item
        Name = 'NUMERO'
        DataType = ftString
        Size = 15
      end
      item
        Name = 'DV'
        DataType = ftString
        Size = 1
      end
      item
        Name = 'P_APELLIDO'
        DataType = ftString
        Size = 50
      end
      item
        Name = 'S_APELLIDO'
        DataType = ftString
        Size = 50
      end
      item
        Name = 'P_NOMBRE'
        DataType = ftString
        Size = 50
      end
      item
        Name = 'S_NOMBRE'
        DataType = ftString
        Size = 50
      end
      item
        Name = 'RAZON'
        DataType = ftString
        Size = 255
      end
      item
        Name = 'DIRECCION'
        DataType = ftString
        Size = 255
      end
      item
        Name = 'DPTO'
        DataType = ftString
        Size = 2
      end
      item
        Name = 'MCP'
        DataType = ftString
        Size = 3
      end
      item
        Name = 'PAIS'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'SALDO'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'PARTICIPACIONE'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'PARTICIPACIONF'
        DataType = ftString
        Size = 20
      end>
    IndexDefs = <>
    Params = <>
    StoreDefs = True
    Left = 176
    Top = 65528
    Data = {
      B70100009619E0BD01000000180000000F000000000003000000B70108544950
      4F5F444F430400010000000000064E554D45524F010049000000010005574944
      5448020002000F0002445601004900000001000557494454480200020001000A
      505F4150454C4C49444F01004900000001000557494454480200020032000A53
      5F4150454C4C49444F010049000000010005574944544802000200320008505F
      4E4F4D425245010049000000010005574944544802000200320008535F4E4F4D
      42524501004900000001000557494454480200020032000552415A4F4E020049
      000000010005574944544802000200FF0009444952454343494F4E0200490000
      00010005574944544802000200FF00044450544F010049000000010005574944
      5448020002000200034D43500100490000000100055749445448020002000300
      045041495301004900000001000557494454480200020014000553414C444F01
      004900000001000557494454480200020014000E50415254494349504143494F
      4E4501004900000001000557494454480200020014000E504152544943495041
      43494F4E4601004900000001000557494454480200020014000000}
    object CdSaldoTIPO_DOC: TIntegerField
      FieldName = 'TIPO_DOC'
    end
    object CdSaldoNUMERO: TStringField
      FieldName = 'NUMERO'
      Size = 15
    end
    object CdSaldoDV: TStringField
      FieldName = 'DV'
      Size = 1
    end
    object CdSaldoP_APELLIDO: TStringField
      FieldName = 'P_APELLIDO'
      Size = 50
    end
    object CdSaldoS_APELLIDO: TStringField
      FieldName = 'S_APELLIDO'
      Size = 50
    end
    object CdSaldoP_NOMBRE: TStringField
      FieldName = 'P_NOMBRE'
      Size = 50
    end
    object CdSaldoS_NOMBRE: TStringField
      FieldName = 'S_NOMBRE'
      Size = 50
    end
    object CdSaldoRAZON: TStringField
      FieldName = 'RAZON'
      Size = 255
    end
    object CdSaldoDIRECCION: TStringField
      FieldName = 'DIRECCION'
      Size = 255
    end
    object CdSaldoDPTO: TStringField
      FieldName = 'DPTO'
      Size = 2
    end
    object CdSaldoMCP: TStringField
      FieldName = 'MCP'
      Size = 3
    end
    object CdSaldoPAIS: TStringField
      FieldName = 'PAIS'
    end
    object CdSaldoSALDO: TStringField
      FieldName = 'SALDO'
    end
    object CdSaldoPARTICIPACIONE: TStringField
      FieldName = 'PARTICIPACIONE'
    end
    object CdSaldoPARTICIPACIONF: TStringField
      FieldName = 'PARTICIPACIONF'
    end
  end
  object save: TSaveDialog
    Left = 152
    Top = 65528
  end
  object IBSQLPor: TIBSQL
    Database = dmGeneral.IBDatabase1
    SQL.Strings = (
      'SELECT VALOR_DEBITO FROM "cap$extracto"'
      'WHERE ID_TIPO_CAPTACION = 1'
      'AND   NUMERO_CUENTA = :NM'
      'AND   DIGITO_CUENTA = :DG'
      'AND FECHA_MOVIMIENTO = :FECHA'
      'AND ID_AGENCIA = :ID_AGENCIA')
    Transaction = dmGeneral.IBTransaction1
    Left = 128
    Top = 120
  end
end
