object frmRetencionesPracticadasVal: TfrmRetencionesPracticadasVal
  Left = 223
  Top = 225
  Width = 384
  Height = 150
  Caption = 'Retenciones Practicadas'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clBlack
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object GroupBox1: TGroupBox
    Left = 0
    Top = 0
    Width = 273
    Height = 93
    Caption = 'Periodo y Monto a Evaluar'
    TabOrder = 0
    object Label1: TLabel
      Left = 12
      Top = 103
      Width = 36
      Height = 13
      Alignment = taCenter
      Caption = 'Periodo'
    end
    object Label2: TLabel
      Left = 113
      Top = 105
      Width = 137
      Height = 13
      Alignment = taCenter
      AutoSize = False
      Caption = 'Monto'
    end
    object Label3: TLabel
      Left = 3
      Top = 24
      Width = 16
      Height = 13
      Caption = 'Nit:'
    end
    object Label4: TLabel
      Left = 6
      Top = 56
      Width = 39
      Height = 13
      Caption = 'Fecha 1'
    end
    object Label5: TLabel
      Left = 136
      Top = 56
      Width = 39
      Height = 13
      Caption = 'Fecha 2'
    end
    object EdMonto: TJvCurrencyEdit
      Left = 112
      Top = 120
      Width = 137
      Height = 21
      Alignment = taRightJustify
      ReadOnly = False
      TabOrder = 1
      HasMaxValue = False
      HasMinValue = False
    end
    object EdPeriodo: TJvYearEdit
      Left = 10
      Top = 120
      Width = 71
      Height = 21
      Alignment = taRightJustify
      ReadOnly = False
      TabOrder = 0
      Value = 2004
      MaxValue = 9999
      MinValue = 0
      HasMaxValue = True
      HasMinValue = True
      WindowsillYear = 71
    end
    object nit: TEdit
      Left = 23
      Top = 20
      Width = 121
      Height = 21
      TabOrder = 2
      Text = 'nit'
    end
    object fecha1: TDateTimePicker
      Left = 49
      Top = 53
      Width = 86
      Height = 21
      CalAlignment = dtaLeft
      Date = 39281.6937329977
      Time = 39281.6937329977
      DateFormat = dfShort
      DateMode = dmComboBox
      Kind = dtkDate
      ParseInput = False
      TabOrder = 3
    end
    object fecha2: TDateTimePicker
      Left = 181
      Top = 54
      Width = 87
      Height = 21
      CalAlignment = dtaLeft
      Date = 39281.6939572454
      Time = 39281.6939572454
      DateFormat = dfShort
      DateMode = dmComboBox
      Kind = dtkDate
      ParseInput = False
      TabOrder = 4
    end
  end
  object Panel1: TPanel
    Left = 275
    Top = 0
    Width = 99
    Height = 93
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
      Caption = 'A Excel'
      TabOrder = 2
      Visible = False
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
  object lbs1: TStaticText
    Left = 2
    Top = 98
    Width = 273
    Height = 49
    AutoSize = False
    BorderStyle = sbsSunken
    Caption = 
      'Este proceso puede tomar algunos minutos, por favor sea paciente' +
      '. El sistema puede aparentar estar bloqueado.'
    Color = clCaptionText
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -12
    Font.Name = 'Arial'
    Font.Style = []
    ParentColor = False
    ParentFont = False
    TabOrder = 2
    Visible = False
  end
  object Bar: TProgressBar
    Left = 0
    Top = 96
    Width = 369
    Height = 17
    Min = 0
    Max = 100
    TabOrder = 3
  end
  object IBQuery1: TIBQuery
    Database = dmGeneral.IBDatabase1
    Transaction = dmGeneral.IBTransaction1
    Left = 218
    Top = 6
  end
  object Cds1: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 248
    Top = 8
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
  object IBSQL1: TIBSQL
    Database = dmGeneral.IBDatabase1
    Transaction = dmGeneral.IBTransaction1
    Left = 242
    Top = 6
  end
  object sd1: TSaveDialog
    DefaultExt = '*.xls'
    Filter = 'Hoja de C'#225'lculo de Excel(*.xls)|*.xls'
    InitialDir = '%SYSTEMROOT%'
    Left = 294
    Top = 36
  end
  object IBQuery2: TIBQuery
    SQL.Strings = (
      'SELECT'
      '  "con$retefuentecsc".CSC,'
      
        '  ("gen$persona".PRIMER_APELLIDO || '#39' '#39' || "gen$persona".SEGUNDO' +
        '_APELLIDO || '#39' '#39' || "gen$persona".NOMBRE) AS NOMBRE,'
      '  "gen$tiposidentificacion".DESCRIPCION_IDENTIFICACION,'
      '  "con$retefuente".ID_PERSONA,'
      '  "con$puc".NOMBRE,'
      '  SUM("con$retefuente".MONTO_RETENCION) AS MONTO,'
      '  AVG("con$retefuente".TASA_RETENCION) AS TASA,'
      '  SUM("con$retefuente".VALOR_RETENCION) AS RETENCION'
      'FROM'
      '  "con$retefuente"'
      
        '  INNER JOIN "gen$persona" ON ("con$retefuente".ID_IDENTIFICACIO' +
        'N = "gen$persona".ID_IDENTIFICACION) AND ("con$retefuente".ID_PE' +
        'RSONA = "gen$persona".ID_PERSONA)'
      
        '  INNER JOIN "con$puc" ON ("con$retefuente".CODIGO = "con$puc".C' +
        'ODIGO)'
      
        '  INNER JOIN "gen$tiposidentificacion" ON ("con$retefuente".ID_I' +
        'DENTIFICACION = "gen$tiposidentificacion".ID_IDENTIFICACION)'
      
        ' INNER JOIN "con$retefuentecsc" ON ("con$retefuente".ID_PERSONA ' +
        '= "con$retefuentecsc".ID_PERSONA)'
      'WHERE'
      '  "con$retefuente".ID_PERSONA <> '#39'8000429726'#39' and'
      '  "con$retefuente".ID_PERSONA <> '#39'27761782'#39' and'
      '  "con$retefuente".ID_PERSONA <> '#39'88138518'#39' and'
      '  "con$retefuente".ID_PERSONA <> '#39'5464643'#39' and'
      '  "con$retefuente".ID_PERSONA <> '#39'88136069'#39
      'GROUP BY'
      '  "con$retefuentecsc".CSC,'
      
        '  "gen$persona".PRIMER_APELLIDO, "gen$persona".SEGUNDO_APELLIDO,' +
        ' "gen$persona".NOMBRE,'
      '  "gen$tiposidentificacion".DESCRIPCION_IDENTIFICACION,'
      '  "con$retefuente".ID_PERSONA,'
      '  "con$puc".NOMBRE'
      'HAVING SUM(MONTO_RETENCION) >= 1000000'
      'ORDER BY   "con$retefuente".ID_PERSONA ASC'
      '')
    Left = 180
    Top = 14
  end
  object prReport1: TprReport
    FromPage = 1
    ToPage = 1
    Values = <
      item
        Group = prReport1.gPersona
        Name = 'TOTALMONTO'
        AggFunction = prafSum
        Formula = 'IBQuery1.MONTO'
        ResetOn = rvtGroup
        CalcOn = cvtDataSetNext
        DataSetName = 'IBQuery1'
      end
      item
        Group = prReport1.gPersona
        Name = 'TOTALRETENCION'
        AggFunction = prafSum
        Formula = 'IBQuery1.RETENCION'
        ResetOn = rvtGroup
        CalcOn = cvtDataSetNext
        DataSetName = 'IBQuery1'
      end>
    Variables = <
      item
        Name = 'EMPRESA'
        ValueType = 'prvvtString'
        Value = 'CREDISERVIR LTDA'
      end
      item
        Name = 'NUMERO'
        ValueType = 'prvvtInteger'
        Value = 1
      end
      item
        Name = 'ANOG'
        ValueType = 'prvvtInteger'
        Value = 2004
      end
      item
        Name = 'NIT'
        ValueType = 'prvvtString'
        Value = '890.505.363-6'
      end
      item
        Name = 'CIUDAD'
        ValueType = 'prvvtString'
        Value = 'OCANA N.S.'
      end
      item
        Name = 'FECHA'
        ValueType = 'prvvtDateTime'
        Value = 38390d
      end>
    PrinterName = 'Virtual printer'
    PreviewParams.Options = []
    PreviewParams.ShowToolbars = [prptPreviewCommon]
    Left = 18
    Top = 54
    SystemInfo = (
      'OS: WIN32_NT 5.1.2600 Service Pack 2'
      ''
      'PageSize: 4096'
      'ActiveProcessorMask: $1000'
      'NumberOfProcessors: 1'
      'ProcessorType: 586'
      ''
      'Compiler version: Delphi6'
      'PReport version: 1.9.4')
    LOGPIXELSX = 96
    LOGPIXELSY = 96
    object prPage2: TprPage
      Width = 2159
      Height = 1397
      PaperSize = -1
      Orientation = poPortrait
      lMargin = 10
      rMargin = 10
      tMargin = 10
      bMargin = 10
      PageScaleInfo.PaperSize = -1
      PageScaleInfo.PageHeight = 1397
      object prHGroupHeaderBand2: TprHGroupHeaderBand
        Height = 146
        UseVerticalBands = False
        Group = prReport1.gPersona
        ColCount = 1
        ColDirection = prcdTopBottomLeftRight
        LinkToDetail = False
        StartNewPage = True
        ReprintOnEachPage = False
        object prMemoObj28: TprMemoObj
          dRec.DefVersion = 0
          dRec.Versions = <
            item
              Visible = True
              Memo.Strings = (
                
                  'CERTIFICADO DE RETENCION NUMERO [:<0000>NUMERO] A'#209'O GRAVABLE: [A' +
                  'NOG] PERIODO DE ENERO 1 A DICIEMBRE 31')
              lBorder.Show = False
              lBorder.Style = psSolid
              lBorder.Color = clBlack
              lBorder.Width = 1
              rBorder.Show = False
              rBorder.Style = psSolid
              rBorder.Color = clBlack
              rBorder.Width = 1
              tBorder.Show = False
              tBorder.Style = psSolid
              tBorder.Color = clBlack
              tBorder.Width = 1
              bBorder.Show = False
              bBorder.Style = psSolid
              bBorder.Color = clBlack
              bBorder.Width = 1
              FillColor = clWhite
              hAlign = prhLeft
              vAlign = prvTop
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -13
              Font.Name = 'Arial'
              Font.Style = []
              Rotate90 = False
              DeleteEmptyLinesAtEnd = False
              DeleteEmptyLines = False
              CanResizeX = False
              CanResizeY = False
              WordWrap = False
              FontSize = 10
            end>
          dRec.Left = 5
          dRec.Top = 5
          dRec.Right = 708
          dRec.Bottom = 24
          Visible = False
        end
        object prMemoObj29: TprMemoObj
          dRec.DefVersion = 0
          dRec.Versions = <
            item
              Visible = True
              Memo.Strings = (
                '[EMPRESA]')
              lBorder.Show = False
              lBorder.Style = psSolid
              lBorder.Color = clBlack
              lBorder.Width = 1
              rBorder.Show = False
              rBorder.Style = psSolid
              rBorder.Color = clBlack
              rBorder.Width = 1
              tBorder.Show = False
              tBorder.Style = psSolid
              tBorder.Color = clBlack
              tBorder.Width = 1
              bBorder.Show = False
              bBorder.Style = psSolid
              bBorder.Color = clBlack
              bBorder.Width = 1
              FillColor = clWhite
              hAlign = prhLeft
              vAlign = prvTop
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -13
              Font.Name = 'Arial'
              Font.Style = [fsBold]
              Rotate90 = False
              DeleteEmptyLinesAtEnd = False
              DeleteEmptyLines = False
              CanResizeX = False
              CanResizeY = False
              WordWrap = False
              FontSize = 10
            end>
          dRec.Left = 5
          dRec.Top = 25
          dRec.Right = 188
          dRec.Bottom = 44
          Visible = False
        end
        object prMemoObj30: TprMemoObj
          dRec.DefVersion = 0
          dRec.Versions = <
            item
              Visible = True
              Memo.Strings = (
                'NIT')
              lBorder.Show = False
              lBorder.Style = psSolid
              lBorder.Color = clBlack
              lBorder.Width = 1
              rBorder.Show = False
              rBorder.Style = psSolid
              rBorder.Color = clBlack
              rBorder.Width = 1
              tBorder.Show = False
              tBorder.Style = psSolid
              tBorder.Color = clBlack
              tBorder.Width = 1
              bBorder.Show = False
              bBorder.Style = psSolid
              bBorder.Color = clBlack
              bBorder.Width = 1
              FillColor = clWhite
              hAlign = prhLeft
              vAlign = prvTop
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -13
              Font.Name = 'Arial'
              Font.Style = []
              Rotate90 = False
              DeleteEmptyLinesAtEnd = False
              DeleteEmptyLines = False
              CanResizeX = False
              CanResizeY = False
              WordWrap = False
              FontSize = 10
            end>
          dRec.Left = 189
          dRec.Top = 25
          dRec.Right = 214
          dRec.Bottom = 46
          Visible = False
        end
        object prMemoObj31: TprMemoObj
          dRec.DefVersion = 0
          dRec.Versions = <
            item
              Visible = True
              Memo.Strings = (
                '[NIT]')
              lBorder.Show = False
              lBorder.Style = psSolid
              lBorder.Color = clBlack
              lBorder.Width = 1
              rBorder.Show = False
              rBorder.Style = psSolid
              rBorder.Color = clBlack
              rBorder.Width = 1
              tBorder.Show = False
              tBorder.Style = psSolid
              tBorder.Color = clBlack
              tBorder.Width = 1
              bBorder.Show = False
              bBorder.Style = psSolid
              bBorder.Color = clBlack
              bBorder.Width = 1
              FillColor = clWhite
              hAlign = prhLeft
              vAlign = prvTop
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -13
              Font.Name = 'Arial'
              Font.Style = []
              Rotate90 = False
              DeleteEmptyLinesAtEnd = False
              DeleteEmptyLines = False
              CanResizeX = False
              CanResizeY = False
              WordWrap = False
              FontSize = 10
            end>
          dRec.Left = 215
          dRec.Top = 25
          dRec.Right = 352
          dRec.Bottom = 44
          Visible = False
        end
        object prMemoObj32: TprMemoObj
          dRec.DefVersion = 0
          dRec.Versions = <
            item
              Visible = True
              Memo.Strings = (
                'DIRECCION:')
              lBorder.Show = False
              lBorder.Style = psSolid
              lBorder.Color = clBlack
              lBorder.Width = 1
              rBorder.Show = False
              rBorder.Style = psSolid
              rBorder.Color = clBlack
              rBorder.Width = 1
              tBorder.Show = False
              tBorder.Style = psSolid
              tBorder.Color = clBlack
              tBorder.Width = 1
              bBorder.Show = False
              bBorder.Style = psSolid
              bBorder.Color = clBlack
              bBorder.Width = 1
              FillColor = clWhite
              hAlign = prhLeft
              vAlign = prvTop
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -13
              Font.Name = 'Arial'
              Font.Style = []
              Rotate90 = False
              DeleteEmptyLinesAtEnd = False
              DeleteEmptyLines = False
              CanResizeX = False
              CanResizeY = False
              WordWrap = False
              FontSize = 10
            end>
          dRec.Left = 353
          dRec.Top = 25
          dRec.Right = 436
          dRec.Bottom = 44
          Visible = False
        end
        object prShapeObj5: TprShapeObj
          dRec.DefVersion = 0
          dRec.Versions = <
            item
              Visible = True
            end>
          dRec.Left = 5
          dRec.Top = 43
          dRec.Right = 712
          dRec.Bottom = 56
          Visible = False
        end
        object prMemoObj5: TprMemoObj
          dRec.DefVersion = 0
          dRec.Versions = <
            item
              Visible = True
              Memo.Strings = (
                'RETUVO A ')
              lBorder.Show = False
              lBorder.Style = psSolid
              lBorder.Color = clBlack
              lBorder.Width = 1
              rBorder.Show = False
              rBorder.Style = psSolid
              rBorder.Color = clBlack
              rBorder.Width = 1
              tBorder.Show = False
              tBorder.Style = psSolid
              tBorder.Color = clBlack
              tBorder.Width = 1
              bBorder.Show = False
              bBorder.Style = psSolid
              bBorder.Color = clBlack
              bBorder.Width = 1
              FillColor = clWhite
              hAlign = prhLeft
              vAlign = prvTop
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -13
              Font.Name = 'Arial'
              Font.Style = []
              Rotate90 = False
              DeleteEmptyLinesAtEnd = False
              DeleteEmptyLines = False
              CanResizeX = False
              CanResizeY = False
              WordWrap = False
              FontSize = 10
            end>
          dRec.Left = 7
          dRec.Top = 53
          dRec.Right = 86
          dRec.Bottom = 70
          Visible = False
        end
        object prMemoObj6: TprMemoObj
          dRec.DefVersion = 0
          dRec.Versions = <
            item
              Visible = True
              Memo.Strings = (
                '[IBQuery1.NOMBRE]')
              lBorder.Show = False
              lBorder.Style = psSolid
              lBorder.Color = clBlack
              lBorder.Width = 1
              rBorder.Show = False
              rBorder.Style = psSolid
              rBorder.Color = clBlack
              rBorder.Width = 1
              tBorder.Show = False
              tBorder.Style = psSolid
              tBorder.Color = clBlack
              tBorder.Width = 1
              bBorder.Show = False
              bBorder.Style = psSolid
              bBorder.Color = clBlack
              bBorder.Width = 1
              FillColor = clWhite
              hAlign = prhLeft
              vAlign = prvTop
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -13
              Font.Name = 'Arial'
              Font.Style = [fsBold]
              Rotate90 = False
              DeleteEmptyLinesAtEnd = False
              DeleteEmptyLines = False
              CanResizeX = False
              CanResizeY = False
              WordWrap = False
              FontSize = 10
            end>
          dRec.Left = 88
          dRec.Top = 52
          dRec.Right = 355
          dRec.Bottom = 71
          Visible = False
        end
        object prMemoObj7: TprMemoObj
          dRec.DefVersion = 0
          dRec.Versions = <
            item
              Visible = True
              Memo.Strings = (
                'IDENTIFICACION NIT / CC')
              lBorder.Show = False
              lBorder.Style = psSolid
              lBorder.Color = clBlack
              lBorder.Width = 1
              rBorder.Show = False
              rBorder.Style = psSolid
              rBorder.Color = clBlack
              rBorder.Width = 1
              tBorder.Show = False
              tBorder.Style = psSolid
              tBorder.Color = clBlack
              tBorder.Width = 1
              bBorder.Show = False
              bBorder.Style = psSolid
              bBorder.Color = clBlack
              bBorder.Width = 1
              FillColor = clWhite
              hAlign = prhLeft
              vAlign = prvTop
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -13
              Font.Name = 'Arial'
              Font.Style = []
              Rotate90 = False
              DeleteEmptyLinesAtEnd = False
              DeleteEmptyLines = False
              CanResizeX = False
              CanResizeY = False
              WordWrap = False
              FontSize = 10
            end>
          dRec.Left = 356
          dRec.Top = 52
          dRec.Right = 513
          dRec.Bottom = 71
          Visible = False
        end
        object prMemoObj8: TprMemoObj
          dRec.DefVersion = 0
          dRec.Versions = <
            item
              Visible = True
              Memo.Strings = (
                '[IBQuery1.ID_PERSONA]')
              lBorder.Show = False
              lBorder.Style = psSolid
              lBorder.Color = clBlack
              lBorder.Width = 1
              rBorder.Show = False
              rBorder.Style = psSolid
              rBorder.Color = clBlack
              rBorder.Width = 1
              tBorder.Show = False
              tBorder.Style = psSolid
              tBorder.Color = clBlack
              tBorder.Width = 1
              bBorder.Show = False
              bBorder.Style = psSolid
              bBorder.Color = clBlack
              bBorder.Width = 1
              FillColor = clWhite
              hAlign = prhLeft
              vAlign = prvTop
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -13
              Font.Name = 'Arial'
              Font.Style = [fsBold]
              Rotate90 = False
              DeleteEmptyLinesAtEnd = False
              DeleteEmptyLines = False
              CanResizeX = False
              CanResizeY = False
              WordWrap = False
              FontSize = 10
            end>
          dRec.Left = 516
          dRec.Top = 52
          dRec.Right = 693
          dRec.Bottom = 71
          Visible = False
        end
        object prMemoObj9: TprMemoObj
          dRec.DefVersion = 0
          dRec.Versions = <
            item
              Visible = True
              Memo.Strings = (
                'CIUDAD DONDE SE EFECTUO LA RETENCION:')
              lBorder.Show = False
              lBorder.Style = psSolid
              lBorder.Color = clBlack
              lBorder.Width = 1
              rBorder.Show = False
              rBorder.Style = psSolid
              rBorder.Color = clBlack
              rBorder.Width = 1
              tBorder.Show = False
              tBorder.Style = psSolid
              tBorder.Color = clBlack
              tBorder.Width = 1
              bBorder.Show = False
              bBorder.Style = psSolid
              bBorder.Color = clBlack
              bBorder.Width = 1
              FillColor = clWhite
              hAlign = prhLeft
              vAlign = prvTop
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -13
              Font.Name = 'Arial'
              Font.Style = []
              Rotate90 = False
              DeleteEmptyLinesAtEnd = False
              DeleteEmptyLines = False
              CanResizeX = False
              CanResizeY = False
              WordWrap = False
              FontSize = 10
            end>
          dRec.Left = 8
          dRec.Top = 72
          dRec.Right = 299
          dRec.Bottom = 91
          Visible = False
        end
        object prMemoObj10: TprMemoObj
          dRec.DefVersion = 0
          dRec.Versions = <
            item
              Visible = True
              Memo.Strings = (
                'CIUDAD DONDE SE CONSIGNO LA RETENCION:')
              lBorder.Show = False
              lBorder.Style = psSolid
              lBorder.Color = clBlack
              lBorder.Width = 1
              rBorder.Show = False
              rBorder.Style = psSolid
              rBorder.Color = clBlack
              rBorder.Width = 1
              tBorder.Show = False
              tBorder.Style = psSolid
              tBorder.Color = clBlack
              tBorder.Width = 1
              bBorder.Show = False
              bBorder.Style = psSolid
              bBorder.Color = clBlack
              bBorder.Width = 1
              FillColor = clWhite
              hAlign = prhLeft
              vAlign = prvTop
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -13
              Font.Name = 'Arial'
              Font.Style = []
              Rotate90 = False
              DeleteEmptyLinesAtEnd = False
              DeleteEmptyLines = False
              CanResizeX = False
              CanResizeY = False
              WordWrap = False
              FontSize = 10
            end>
          dRec.Left = 7
          dRec.Top = 91
          dRec.Right = 308
          dRec.Bottom = 110
          Visible = False
        end
        object prMemoObj11: TprMemoObj
          dRec.DefVersion = 0
          dRec.Versions = <
            item
              Visible = True
              Memo.Strings = (
                '[CIUDAD]')
              lBorder.Show = False
              lBorder.Style = psSolid
              lBorder.Color = clBlack
              lBorder.Width = 1
              rBorder.Show = False
              rBorder.Style = psSolid
              rBorder.Color = clBlack
              rBorder.Width = 1
              tBorder.Show = False
              tBorder.Style = psSolid
              tBorder.Color = clBlack
              tBorder.Width = 1
              bBorder.Show = False
              bBorder.Style = psSolid
              bBorder.Color = clBlack
              bBorder.Width = 1
              FillColor = clWhite
              hAlign = prhLeft
              vAlign = prvTop
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -13
              Font.Name = 'Arial'
              Font.Style = []
              Rotate90 = False
              DeleteEmptyLinesAtEnd = False
              DeleteEmptyLines = False
              CanResizeX = False
              CanResizeY = False
              WordWrap = False
              FontSize = 10
            end>
          dRec.Left = 312
          dRec.Top = 72
          dRec.Right = 413
          dRec.Bottom = 91
          Visible = False
        end
        object prMemoObj12: TprMemoObj
          dRec.DefVersion = 0
          dRec.Versions = <
            item
              Visible = True
              Memo.Strings = (
                '[CIUDAD]')
              lBorder.Show = False
              lBorder.Style = psSolid
              lBorder.Color = clBlack
              lBorder.Width = 1
              rBorder.Show = False
              rBorder.Style = psSolid
              rBorder.Color = clBlack
              rBorder.Width = 1
              tBorder.Show = False
              tBorder.Style = psSolid
              tBorder.Color = clBlack
              tBorder.Width = 1
              bBorder.Show = False
              bBorder.Style = psSolid
              bBorder.Color = clBlack
              bBorder.Width = 1
              FillColor = clWhite
              hAlign = prhLeft
              vAlign = prvTop
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -13
              Font.Name = 'Arial'
              Font.Style = []
              Rotate90 = False
              DeleteEmptyLinesAtEnd = False
              DeleteEmptyLines = False
              CanResizeX = False
              CanResizeY = False
              WordWrap = False
              FontSize = 10
            end>
          dRec.Left = 311
          dRec.Top = 91
          dRec.Right = 412
          dRec.Bottom = 110
          Visible = False
        end
        object prMemoObj13: TprMemoObj
          dRec.DefVersion = 0
          dRec.Versions = <
            item
              Visible = True
              Memo.Strings = (
                'FECHA EXPEDICION:[:<yyyy/mm/dd>FECHA]')
              lBorder.Show = False
              lBorder.Style = psSolid
              lBorder.Color = clBlack
              lBorder.Width = 1
              rBorder.Show = False
              rBorder.Style = psSolid
              rBorder.Color = clBlack
              rBorder.Width = 1
              tBorder.Show = False
              tBorder.Style = psSolid
              tBorder.Color = clBlack
              tBorder.Width = 1
              bBorder.Show = False
              bBorder.Style = psSolid
              bBorder.Color = clBlack
              bBorder.Width = 1
              FillColor = clWhite
              hAlign = prhLeft
              vAlign = prvTop
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -13
              Font.Name = 'Arial'
              Font.Style = []
              Rotate90 = False
              DeleteEmptyLinesAtEnd = False
              DeleteEmptyLines = False
              CanResizeX = False
              CanResizeY = False
              WordWrap = False
              FontSize = 10
            end>
          dRec.Left = 422
          dRec.Top = 80
          dRec.Right = 691
          dRec.Bottom = 101
          Visible = False
        end
        object prShapeObj6: TprShapeObj
          dRec.DefVersion = 0
          dRec.Versions = <
            item
              Visible = True
            end>
          dRec.Left = 5
          dRec.Top = 107
          dRec.Right = 712
          dRec.Bottom = 120
          Visible = False
        end
        object prMemoObj37: TprMemoObj
          dRec.DefVersion = 0
          dRec.Versions = <
            item
              Visible = True
              Memo.Strings = (
                'CONCEPTO')
              lBorder.Show = True
              lBorder.Style = psSolid
              lBorder.Color = clBlack
              lBorder.Width = 1
              rBorder.Show = True
              rBorder.Style = psSolid
              rBorder.Color = clBlack
              rBorder.Width = 1
              tBorder.Show = True
              tBorder.Style = psSolid
              tBorder.Color = clBlack
              tBorder.Width = 1
              bBorder.Show = True
              bBorder.Style = psSolid
              bBorder.Color = clBlack
              bBorder.Width = 1
              FillColor = clWhite
              hAlign = prhCenter
              vAlign = prvCenter
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -13
              Font.Name = 'Arial'
              Font.Style = [fsBold]
              Rotate90 = False
              DeleteEmptyLinesAtEnd = False
              DeleteEmptyLines = False
              CanResizeX = False
              CanResizeY = False
              WordWrap = False
              FontSize = 10
            end>
          dRec.Left = 16
          dRec.Top = 116
          dRec.Right = 243
          dRec.Bottom = 141
          Visible = False
        end
        object prMemoObj38: TprMemoObj
          dRec.DefVersion = 0
          dRec.Versions = <
            item
              Visible = True
              Memo.Strings = (
                'MONTO SUJETO')
              lBorder.Show = True
              lBorder.Style = psSolid
              lBorder.Color = clBlack
              lBorder.Width = 1
              rBorder.Show = True
              rBorder.Style = psSolid
              rBorder.Color = clBlack
              rBorder.Width = 1
              tBorder.Show = True
              tBorder.Style = psSolid
              tBorder.Color = clBlack
              tBorder.Width = 1
              bBorder.Show = True
              bBorder.Style = psSolid
              bBorder.Color = clBlack
              bBorder.Width = 1
              FillColor = clWhite
              hAlign = prhCenter
              vAlign = prvCenter
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -13
              Font.Name = 'Arial'
              Font.Style = [fsBold]
              Rotate90 = False
              DeleteEmptyLinesAtEnd = False
              DeleteEmptyLines = False
              CanResizeX = False
              CanResizeY = False
              WordWrap = False
              FontSize = 10
            end>
          dRec.Left = 258
          dRec.Top = 116
          dRec.Right = 377
          dRec.Bottom = 141
          Visible = False
        end
        object prMemoObj39: TprMemoObj
          dRec.DefVersion = 0
          dRec.Versions = <
            item
              Visible = True
              Memo.Strings = (
                'TASA')
              lBorder.Show = True
              lBorder.Style = psSolid
              lBorder.Color = clBlack
              lBorder.Width = 1
              rBorder.Show = True
              rBorder.Style = psSolid
              rBorder.Color = clBlack
              rBorder.Width = 1
              tBorder.Show = True
              tBorder.Style = psSolid
              tBorder.Color = clBlack
              tBorder.Width = 1
              bBorder.Show = True
              bBorder.Style = psSolid
              bBorder.Color = clBlack
              bBorder.Width = 1
              FillColor = clWhite
              hAlign = prhCenter
              vAlign = prvCenter
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -13
              Font.Name = 'Arial'
              Font.Style = [fsBold]
              Rotate90 = False
              DeleteEmptyLinesAtEnd = False
              DeleteEmptyLines = False
              CanResizeX = False
              CanResizeY = False
              WordWrap = False
              FontSize = 10
            end>
          dRec.Left = 384
          dRec.Top = 116
          dRec.Right = 465
          dRec.Bottom = 141
          Visible = False
        end
        object prMemoObj40: TprMemoObj
          dRec.DefVersion = 0
          dRec.Versions = <
            item
              Visible = True
              Memo.Strings = (
                'RETENCION')
              lBorder.Show = True
              lBorder.Style = psSolid
              lBorder.Color = clBlack
              lBorder.Width = 1
              rBorder.Show = True
              rBorder.Style = psSolid
              rBorder.Color = clBlack
              rBorder.Width = 1
              tBorder.Show = True
              tBorder.Style = psSolid
              tBorder.Color = clBlack
              tBorder.Width = 1
              bBorder.Show = True
              bBorder.Style = psSolid
              bBorder.Color = clBlack
              bBorder.Width = 1
              FillColor = clWhite
              hAlign = prhCenter
              vAlign = prvCenter
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -13
              Font.Name = 'Arial'
              Font.Style = [fsBold]
              Rotate90 = False
              DeleteEmptyLinesAtEnd = False
              DeleteEmptyLines = False
              CanResizeX = False
              CanResizeY = False
              WordWrap = False
              FontSize = 10
            end>
          dRec.Left = 474
          dRec.Top = 116
          dRec.Right = 633
          dRec.Bottom = 141
          Visible = False
        end
        object prShapeObj7: TprShapeObj
          dRec.DefVersion = 0
          dRec.Versions = <
            item
              Visible = True
            end>
          dRec.Left = 6
          dRec.Top = 138
          dRec.Right = 713
          dRec.Bottom = 149
          Visible = False
        end
      end
      object prHDetailBand3: TprHDetailBand
        Height = 30
        UseVerticalBands = False
        DataSetName = 'IBQuery1'
        ColCount = 0
        ColDirection = prcdTopBottomLeftRight
        Groups = (
          'gPersona')
        object prMemoObj33: TprMemoObj
          dRec.DefVersion = 0
          dRec.Versions = <
            item
              Visible = True
              Memo.Strings = (
                '[IBQuery1.NOMBRE1]')
              lBorder.Show = False
              lBorder.Style = psSolid
              lBorder.Color = clBlack
              lBorder.Width = 1
              rBorder.Show = False
              rBorder.Style = psSolid
              rBorder.Color = clBlack
              rBorder.Width = 1
              tBorder.Show = False
              tBorder.Style = psSolid
              tBorder.Color = clBlack
              tBorder.Width = 1
              bBorder.Show = False
              bBorder.Style = psSolid
              bBorder.Color = clBlack
              bBorder.Width = 1
              FillColor = clWhite
              hAlign = prhLeft
              vAlign = prvTop
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -13
              Font.Name = 'Arial'
              Font.Style = []
              Rotate90 = False
              DeleteEmptyLinesAtEnd = False
              DeleteEmptyLines = False
              CanResizeX = False
              CanResizeY = False
              WordWrap = False
              FontSize = 10
            end>
          dRec.Left = 16
          dRec.Top = 4
          dRec.Right = 243
          dRec.Bottom = 25
          Visible = False
        end
        object prMemoObj34: TprMemoObj
          dRec.DefVersion = 0
          dRec.Versions = <
            item
              Visible = True
              Memo.Strings = (
                '[:<#,#0.00>IBQuery1.MONTO]')
              lBorder.Show = False
              lBorder.Style = psSolid
              lBorder.Color = clBlack
              lBorder.Width = 1
              rBorder.Show = False
              rBorder.Style = psSolid
              rBorder.Color = clBlack
              rBorder.Width = 1
              tBorder.Show = False
              tBorder.Style = psSolid
              tBorder.Color = clBlack
              tBorder.Width = 1
              bBorder.Show = False
              bBorder.Style = psSolid
              bBorder.Color = clBlack
              bBorder.Width = 1
              FillColor = clWhite
              hAlign = prhRight
              vAlign = prvTop
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -13
              Font.Name = 'Arial'
              Font.Style = []
              Rotate90 = False
              DeleteEmptyLinesAtEnd = False
              DeleteEmptyLines = False
              CanResizeX = False
              CanResizeY = False
              WordWrap = False
              FontSize = 10
            end>
          dRec.Left = 260
          dRec.Top = 4
          dRec.Right = 377
          dRec.Bottom = 25
          Visible = False
        end
        object prMemoObj35: TprMemoObj
          dRec.DefVersion = 0
          dRec.Versions = <
            item
              Visible = True
              Memo.Strings = (
                '[:<#0.00%>IBQuery1.TASA]')
              lBorder.Show = False
              lBorder.Style = psSolid
              lBorder.Color = clBlack
              lBorder.Width = 1
              rBorder.Show = False
              rBorder.Style = psSolid
              rBorder.Color = clBlack
              rBorder.Width = 1
              tBorder.Show = False
              tBorder.Style = psSolid
              tBorder.Color = clBlack
              tBorder.Width = 1
              bBorder.Show = False
              bBorder.Style = psSolid
              bBorder.Color = clBlack
              bBorder.Width = 1
              FillColor = clWhite
              hAlign = prhRight
              vAlign = prvTop
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -13
              Font.Name = 'Arial'
              Font.Style = []
              Rotate90 = False
              DeleteEmptyLinesAtEnd = False
              DeleteEmptyLines = False
              CanResizeX = False
              CanResizeY = False
              WordWrap = False
              FontSize = 10
            end>
          dRec.Left = 386
          dRec.Top = 2
          dRec.Right = 453
          dRec.Bottom = 25
          Visible = False
        end
        object prMemoObj36: TprMemoObj
          dRec.DefVersion = 0
          dRec.Versions = <
            item
              Visible = True
              Memo.Strings = (
                '[:<#,#0.00>IBQuery1.RETENCION]')
              lBorder.Show = False
              lBorder.Style = psSolid
              lBorder.Color = clBlack
              lBorder.Width = 1
              rBorder.Show = False
              rBorder.Style = psSolid
              rBorder.Color = clBlack
              rBorder.Width = 1
              tBorder.Show = False
              tBorder.Style = psSolid
              tBorder.Color = clBlack
              tBorder.Width = 1
              bBorder.Show = False
              bBorder.Style = psSolid
              bBorder.Color = clBlack
              bBorder.Width = 1
              FillColor = clWhite
              hAlign = prhRight
              vAlign = prvTop
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -13
              Font.Name = 'Arial'
              Font.Style = []
              Rotate90 = False
              DeleteEmptyLinesAtEnd = False
              DeleteEmptyLines = False
              CanResizeX = False
              CanResizeY = False
              WordWrap = False
              FontSize = 10
            end>
          dRec.Left = 474
          dRec.Top = 2
          dRec.Right = 633
          dRec.Bottom = 25
          Visible = False
        end
      end
      object prHGroupFooterBand1: TprHGroupFooterBand
        Height = 120
        UseVerticalBands = False
        Group = prReport1.gPersona
        ColCount = 0
        ColDirection = prcdTopBottomLeftRight
        LinkToDetail = False
        object prShapeObj2: TprShapeObj
          dRec.DefVersion = 0
          dRec.Versions = <
            item
              Visible = True
            end>
          dRec.Left = 8
          dRec.Top = -2
          dRec.Right = 715
          dRec.Bottom = 11
          Visible = False
        end
        object prMemoObj22: TprMemoObj
          dRec.DefVersion = 0
          dRec.Versions = <
            item
              Visible = True
              Memo.Strings = (
                'TOTAL RETENCIONES')
              lBorder.Show = False
              lBorder.Style = psSolid
              lBorder.Color = clBlack
              lBorder.Width = 1
              rBorder.Show = False
              rBorder.Style = psSolid
              rBorder.Color = clBlack
              rBorder.Width = 1
              tBorder.Show = False
              tBorder.Style = psSolid
              tBorder.Color = clBlack
              tBorder.Width = 1
              bBorder.Show = False
              bBorder.Style = psSolid
              bBorder.Color = clBlack
              bBorder.Width = 1
              FillColor = clWhite
              hAlign = prhLeft
              vAlign = prvTop
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -13
              Font.Name = 'Arial'
              Font.Style = [fsBold]
              Rotate90 = False
              DeleteEmptyLinesAtEnd = False
              DeleteEmptyLines = False
              CanResizeX = False
              CanResizeY = False
              WordWrap = False
              FontSize = 10
            end>
          dRec.Left = 19
          dRec.Top = 9
          dRec.Right = 244
          dRec.Bottom = 28
          Visible = False
        end
        object prMemoObj23: TprMemoObj
          dRec.DefVersion = 0
          dRec.Versions = <
            item
              Visible = True
              Memo.Strings = (
                '[:<#,#0.00>TOTALMONTO]')
              lBorder.Show = False
              lBorder.Style = psSolid
              lBorder.Color = clBlack
              lBorder.Width = 1
              rBorder.Show = False
              rBorder.Style = psSolid
              rBorder.Color = clBlack
              rBorder.Width = 1
              tBorder.Show = False
              tBorder.Style = psSolid
              tBorder.Color = clBlack
              tBorder.Width = 1
              bBorder.Show = False
              bBorder.Style = psSolid
              bBorder.Color = clBlack
              bBorder.Width = 1
              FillColor = clWhite
              hAlign = prhRight
              vAlign = prvTop
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -13
              Font.Name = 'Arial'
              Font.Style = [fsBold]
              Rotate90 = False
              DeleteEmptyLinesAtEnd = False
              DeleteEmptyLines = False
              CanResizeX = False
              CanResizeY = False
              WordWrap = False
              FontSize = 10
            end>
          dRec.Left = 259
          dRec.Top = 5
          dRec.Right = 378
          dRec.Bottom = 30
          Visible = False
        end
        object prMemoObj24: TprMemoObj
          dRec.DefVersion = 0
          dRec.Versions = <
            item
              Visible = True
              Memo.Strings = (
                '[:<#,#0.00>TOTALRETENCION]')
              lBorder.Show = False
              lBorder.Style = psSolid
              lBorder.Color = clBlack
              lBorder.Width = 1
              rBorder.Show = False
              rBorder.Style = psSolid
              rBorder.Color = clBlack
              rBorder.Width = 1
              tBorder.Show = False
              tBorder.Style = psSolid
              tBorder.Color = clBlack
              tBorder.Width = 1
              bBorder.Show = False
              bBorder.Style = psSolid
              bBorder.Color = clBlack
              bBorder.Width = 1
              FillColor = clWhite
              hAlign = prhRight
              vAlign = prvTop
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -13
              Font.Name = 'Arial'
              Font.Style = [fsBold]
              Rotate90 = False
              DeleteEmptyLinesAtEnd = False
              DeleteEmptyLines = False
              CanResizeX = False
              CanResizeY = False
              WordWrap = False
              FontSize = 10
            end>
          dRec.Left = 476
          dRec.Top = 6
          dRec.Right = 633
          dRec.Bottom = 29
          Visible = False
        end
        object prRichObj1: TprRichObj
          dRec.DefVersion = 0
          dRec.Versions = <
            item
              Visible = True
              lBorder.Show = False
              lBorder.Style = psSolid
              lBorder.Color = clBlack
              lBorder.Width = 1
              rBorder.Show = False
              rBorder.Style = psSolid
              rBorder.Color = clBlack
              rBorder.Width = 1
              tBorder.Show = False
              tBorder.Style = psSolid
              tBorder.Color = clBlack
              tBorder.Width = 1
              bBorder.Show = False
              bBorder.Style = psSolid
              bBorder.Color = clBlack
              bBorder.Width = 1
              DeleteEmptyLinesAtEnd = False
              DeleteEmptyLines = False
              CanResizeY = False
              WordWrap = True
              RichText = {
                3B0100007B5C727466315C616E73695C616E7369637067313235325C64656666
                305C6465666C616E67333038327B5C666F6E7474626C7B5C66305C6673776973
                735C66707271325C6663686172736574302053797374656D3B7D7D0D0A5C7669
                65776B696E64345C7563315C706172645C625C66305C66733230205365206578
                70696465206573746520636572746966696361646F2070617261206461722063
                756D706C696D69656E746F20616C206465637265746F2032333030206172745C
                27656463756C6F2032332064652064696369656D627265206465203139393620
                79207365675C2766616E206573706563696669636163695C2766336E2064656C
                206465637265746F20333830206172745C27656463756C6F20372064656C2032
                37206465206665627265726F20646520313939360D0A5C706172207D0D0A00}
            end>
          dRec.Left = 11
          dRec.Top = 33
          dRec.Right = 372
          dRec.Bottom = 114
          Visible = False
        end
        object prMemoObj25: TprMemoObj
          dRec.DefVersion = 0
          dRec.Versions = <
            item
              Visible = True
              Memo.Strings = (
                'FIRMA AGENTE RETENEDOR')
              lBorder.Show = False
              lBorder.Style = psSolid
              lBorder.Color = clBlack
              lBorder.Width = 1
              rBorder.Show = False
              rBorder.Style = psSolid
              rBorder.Color = clBlack
              rBorder.Width = 1
              tBorder.Show = True
              tBorder.Style = psSolid
              tBorder.Color = clBlack
              tBorder.Width = 1
              bBorder.Show = False
              bBorder.Style = psSolid
              bBorder.Color = clBlack
              bBorder.Width = 1
              FillColor = clWhite
              hAlign = prhCenter
              vAlign = prvCenter
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -13
              Font.Name = 'Arial'
              Font.Style = []
              Rotate90 = False
              DeleteEmptyLinesAtEnd = False
              DeleteEmptyLines = False
              CanResizeX = False
              CanResizeY = False
              WordWrap = False
              FontSize = 10
            end>
          dRec.Left = 393
          dRec.Top = 93
          dRec.Right = 706
          dRec.Bottom = 114
          Visible = False
        end
        object prShapeObj4: TprShapeObj
          dRec.DefVersion = 0
          dRec.Versions = <
            item
              Visible = True
            end>
          dRec.Left = 7
          dRec.Top = 25
          dRec.Right = 714
          dRec.Bottom = 42
          Visible = False
        end
      end
    end
    object gPersona: TprGroup
      Valid = 'IBQuery1.ID_PERSONA'
      DetailBand = prReport1.prHDetailBand3
    end
  end
  object prTxReport1: TprTxReport
    FromPage = 1
    ToPage = 2
    Values = <
      item
        Group = prTxReport1.gPersona
        Name = 'TOTALMONTO'
        AggFunction = prafSum
        Formula = 'IBQuery1.MONTO'
        ResetOn = rvtGroup
        CalcOn = cvtDataSetNext
        DataSetName = 'IBQuery1'
      end
      item
        Group = prTxReport1.gPersona
        Name = 'TOTALRETENCION'
        AggFunction = prafSum
        Formula = 'IBQuery1.RETENCION'
        ResetOn = rvtGroup
        CalcOn = cvtDataSetNext
        DataSetName = 'IBQuery1'
      end>
    Variables = <
      item
        Name = 'EMPRESA'
        ValueType = 'prvvtString'
        Value = 'CREDISERVIR LTDA'
      end
      item
        Name = 'NIT'
        ValueType = 'prvvtString'
        Value = '890.505.363-6'
      end
      item
        Name = 'NUMERO'
        ValueType = 'prvvtInteger'
        Value = 1
      end
      item
        Name = 'ANOG'
        ValueType = 'prvvtInteger'
        Value = 2004
      end
      item
        Name = 'DIRECCION'
        ValueType = 'prvvtString'
        Value = 'CRA 12 N 10 00'
      end
      item
        Name = 'FECHA'
        ValueType = 'prvvtDateTime'
        Value = 38405d
      end
      item
        Name = 'CIUDAD'
        ValueType = 'prvvtString'
        Value = 'OCANA'
      end>
    PrinterName = 'EPSON FX-2190 ESC/P'
    ESCModelName = 'Epson printers'
    WrapAfterColumn = 0
    FromLine = 1
    ToLine = 2
    Left = 40
    Top = 56
    SystemInfo = (
      'OS: WIN32_NT 5.1.2600 Service Pack 2'
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
      LineNum = 33
      ColNum = 130
      object prTxHGroupHeaderBand1: TprTxHGroupHeaderBand
        Height = 9
        UseVerticalBands = False
        Group = prTxReport1.gPersona
        ColCount = 1
        ColDirection = prcdTopBottomLeftRight
        LinkToDetail = False
        StartNewPage = True
        ReprintOnEachPage = False
        object prTxMemoObj1: TprTxMemoObj
          dRec.DefVersion = 0
          dRec.Versions = <
            item
              Visible = True
              Memo.Strings = (
                
                  'CERTIFICADO DE RETENCION NUMERO [:<0000>IBQuery1.CSC] ANO GRAVAB' +
                  'LE: [ANOG] PERIODO DE ENERO 1 A DICIEMBRE 31')
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
          dRec.Right = 92
          dRec.Bottom = 1
          Visible = False
        end
        object prTxCommandObj1: TprTxCommandObj
          dRec.DefVersion = 0
          dRec.Versions = <
            item
              Visible = True
              TxCommands = (
                txcReset
                txcCondensedOn)
            end>
          dRec.Left = 0
          dRec.Top = 0
          dRec.Right = 1
          dRec.Bottom = 1
          Visible = False
        end
        object prTxMemoObj2: TprTxMemoObj
          dRec.DefVersion = 0
          dRec.Versions = <
            item
              Visible = True
              Memo.Strings = (
                '[EMPRESA]')
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
          dRec.Right = 20
          dRec.Bottom = 2
          Visible = False
        end
        object prTxMemoObj3: TprTxMemoObj
          dRec.DefVersion = 0
          dRec.Versions = <
            item
              Visible = True
              Memo.Strings = (
                'NIT:')
              DeleteEmptyLinesAtEnd = False
              DeleteEmptyLines = False
              CanResizeX = False
              CanResizeY = False
              hAlign = prhLeft
              vAlign = prvTop
              DefaultFont = False
              WordWrap = False
            end>
          dRec.Left = 20
          dRec.Top = 1
          dRec.Right = 24
          dRec.Bottom = 2
          Visible = False
        end
        object prTxMemoObj4: TprTxMemoObj
          dRec.DefVersion = 0
          dRec.Versions = <
            item
              Visible = True
              Memo.Strings = (
                '[NIT]')
              DeleteEmptyLinesAtEnd = False
              DeleteEmptyLines = False
              CanResizeX = False
              CanResizeY = False
              hAlign = prhLeft
              vAlign = prvTop
              DefaultFont = False
              WordWrap = False
            end>
          dRec.Left = 24
          dRec.Top = 1
          dRec.Right = 38
          dRec.Bottom = 2
          Visible = False
        end
        object prTxMemoObj5: TprTxMemoObj
          dRec.DefVersion = 0
          dRec.Versions = <
            item
              Visible = True
              Memo.Strings = (
                'DIRECCION:[DIRECCION]')
              DeleteEmptyLinesAtEnd = False
              DeleteEmptyLines = False
              CanResizeX = False
              CanResizeY = False
              hAlign = prhLeft
              vAlign = prvTop
              DefaultFont = False
              WordWrap = False
            end>
          dRec.Left = 39
          dRec.Top = 1
          dRec.Right = 92
          dRec.Bottom = 2
          Visible = False
        end
        object prTxHLineObj1: TprTxHLineObj
          dRec.DefVersion = 0
          dRec.Versions = <
            item
              Visible = True
            end>
          dRec.Left = 1
          dRec.Top = 2
          dRec.Right = 92
          dRec.Bottom = 3
          Visible = False
        end
        object prTxMemoObj6: TprTxMemoObj
          dRec.DefVersion = 0
          dRec.Versions = <
            item
              Visible = True
              Memo.Strings = (
                'RETUVO A:')
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
          dRec.Top = 3
          dRec.Right = 10
          dRec.Bottom = 4
          Visible = False
        end
        object prTxMemoObj7: TprTxMemoObj
          dRec.DefVersion = 0
          dRec.Versions = <
            item
              Visible = True
              Memo.Strings = (
                '[IBQuery1.NOMBRE]')
              DeleteEmptyLinesAtEnd = False
              DeleteEmptyLines = False
              CanResizeX = False
              CanResizeY = False
              hAlign = prhLeft
              vAlign = prvTop
              DefaultFont = False
              WordWrap = False
              TxFontOptionsEx = (
                tfoBold)
            end>
          dRec.Left = 10
          dRec.Top = 3
          dRec.Right = 53
          dRec.Bottom = 4
          Visible = False
        end
        object prTxMemoObj8: TprTxMemoObj
          dRec.DefVersion = 0
          dRec.Versions = <
            item
              Visible = True
              Memo.Strings = (
                'IDENTIFICACION NIT/CC')
              DeleteEmptyLinesAtEnd = False
              DeleteEmptyLines = False
              CanResizeX = False
              CanResizeY = False
              hAlign = prhLeft
              vAlign = prvTop
              DefaultFont = False
              WordWrap = False
            end>
          dRec.Left = 54
          dRec.Top = 3
          dRec.Right = 75
          dRec.Bottom = 4
          Visible = False
        end
        object prTxMemoObj9: TprTxMemoObj
          dRec.DefVersion = 0
          dRec.Versions = <
            item
              Visible = True
              Memo.Strings = (
                '[IBQuery1.ID_PERSONA]')
              DeleteEmptyLinesAtEnd = False
              DeleteEmptyLines = False
              CanResizeX = False
              CanResizeY = False
              hAlign = prhLeft
              vAlign = prvTop
              DefaultFont = False
              WordWrap = False
              TxFontOptionsEx = (
                tfoBold)
            end>
          dRec.Left = 76
          dRec.Top = 3
          dRec.Right = 92
          dRec.Bottom = 4
          Visible = False
        end
        object prTxMemoObj10: TprTxMemoObj
          dRec.DefVersion = 0
          dRec.Versions = <
            item
              Visible = True
              Memo.Strings = (
                'CIUDAD DONDE SE EFECTUO LA RETENCION:')
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
          dRec.Top = 4
          dRec.Right = 38
          dRec.Bottom = 5
          Visible = False
        end
        object prTxMemoObj11: TprTxMemoObj
          dRec.DefVersion = 0
          dRec.Versions = <
            item
              Visible = True
              Memo.Strings = (
                '[CIUDAD]')
              DeleteEmptyLinesAtEnd = False
              DeleteEmptyLines = False
              CanResizeX = False
              CanResizeY = False
              hAlign = prhLeft
              vAlign = prvTop
              DefaultFont = False
              WordWrap = False
            end>
          dRec.Left = 40
          dRec.Top = 4
          dRec.Right = 63
          dRec.Bottom = 5
          Visible = False
        end
        object prTxMemoObj12: TprTxMemoObj
          dRec.DefVersion = 0
          dRec.Versions = <
            item
              Visible = True
              Memo.Strings = (
                'CIUDAD DONDE SE CONSIGNO LA RETENCION:')
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
          dRec.Right = 39
          dRec.Bottom = 6
          Visible = False
        end
        object prTxMemoObj13: TprTxMemoObj
          dRec.DefVersion = 0
          dRec.Versions = <
            item
              Visible = True
              Memo.Strings = (
                '[CIUDAD]')
              DeleteEmptyLinesAtEnd = False
              DeleteEmptyLines = False
              CanResizeX = False
              CanResizeY = False
              hAlign = prhLeft
              vAlign = prvTop
              DefaultFont = False
              WordWrap = False
            end>
          dRec.Left = 40
          dRec.Top = 5
          dRec.Right = 63
          dRec.Bottom = 6
          Visible = False
        end
        object prTxMemoObj14: TprTxMemoObj
          dRec.DefVersion = 0
          dRec.Versions = <
            item
              Visible = True
              Memo.Strings = (
                'FECHA EXPEDICION')
              DeleteEmptyLinesAtEnd = False
              DeleteEmptyLines = False
              CanResizeX = False
              CanResizeY = False
              hAlign = prhCenter
              vAlign = prvTop
              DefaultFont = False
              WordWrap = False
            end>
          dRec.Left = 67
          dRec.Top = 4
          dRec.Right = 87
          dRec.Bottom = 5
          Visible = False
        end
        object prTxMemoObj15: TprTxMemoObj
          dRec.DefVersion = 0
          dRec.Versions = <
            item
              Visible = True
              Memo.Strings = (
                '[:<yyyy/MM/dd>FECHA]')
              DeleteEmptyLinesAtEnd = False
              DeleteEmptyLines = False
              CanResizeX = False
              CanResizeY = False
              hAlign = prhCenter
              vAlign = prvTop
              DefaultFont = False
              WordWrap = False
            end>
          dRec.Left = 67
          dRec.Top = 5
          dRec.Right = 87
          dRec.Bottom = 6
          Visible = False
        end
        object prTxHLineObj2: TprTxHLineObj
          dRec.DefVersion = 0
          dRec.Versions = <
            item
              Visible = True
            end>
          dRec.Left = 1
          dRec.Top = 6
          dRec.Right = 92
          dRec.Bottom = 7
          Visible = False
        end
        object prTxMemoObj16: TprTxMemoObj
          dRec.DefVersion = 0
          dRec.Versions = <
            item
              Visible = True
              Memo.Strings = (
                'CONCEPTO')
              DeleteEmptyLinesAtEnd = False
              DeleteEmptyLines = False
              CanResizeX = False
              CanResizeY = False
              hAlign = prhCenter
              vAlign = prvTop
              DefaultFont = False
              WordWrap = False
              TxFontOptionsEx = (
                tfoBold)
            end>
          dRec.Left = 1
          dRec.Top = 7
          dRec.Right = 47
          dRec.Bottom = 8
          Visible = False
        end
        object prTxMemoObj17: TprTxMemoObj
          dRec.DefVersion = 0
          dRec.Versions = <
            item
              Visible = True
              Memo.Strings = (
                'MONTO SUJETO')
              DeleteEmptyLinesAtEnd = False
              DeleteEmptyLines = False
              CanResizeX = False
              CanResizeY = False
              hAlign = prhCenter
              vAlign = prvTop
              DefaultFont = False
              WordWrap = False
              TxFontOptionsEx = (
                tfoBold)
            end>
          dRec.Left = 48
          dRec.Top = 7
          dRec.Right = 65
          dRec.Bottom = 8
          Visible = False
        end
        object prTxMemoObj18: TprTxMemoObj
          dRec.DefVersion = 0
          dRec.Versions = <
            item
              Visible = True
              Memo.Strings = (
                'TASA')
              DeleteEmptyLinesAtEnd = False
              DeleteEmptyLines = False
              CanResizeX = False
              CanResizeY = False
              hAlign = prhCenter
              vAlign = prvTop
              DefaultFont = False
              WordWrap = False
              TxFontOptionsEx = (
                tfoBold)
            end>
          dRec.Left = 66
          dRec.Top = 7
          dRec.Right = 74
          dRec.Bottom = 8
          Visible = False
        end
        object prTxMemoObj19: TprTxMemoObj
          dRec.DefVersion = 0
          dRec.Versions = <
            item
              Visible = True
              Memo.Strings = (
                'RETENCION')
              DeleteEmptyLinesAtEnd = False
              DeleteEmptyLines = False
              CanResizeX = False
              CanResizeY = False
              hAlign = prhCenter
              vAlign = prvTop
              DefaultFont = False
              WordWrap = False
              TxFontOptionsEx = (
                tfoBold)
            end>
          dRec.Left = 75
          dRec.Top = 7
          dRec.Right = 90
          dRec.Bottom = 8
          Visible = False
        end
        object prTxHLineObj3: TprTxHLineObj
          dRec.DefVersion = 0
          dRec.Versions = <
            item
              Visible = True
            end>
          dRec.Left = 1
          dRec.Top = 8
          dRec.Right = 92
          dRec.Bottom = 9
          Visible = False
        end
      end
      object prTxHDetailBand1: TprTxHDetailBand
        Height = 1
        UseVerticalBands = False
        DataSetName = 'IBQuery1'
        ColCount = 0
        ColDirection = prcdTopBottomLeftRight
        Groups = (
          'gPersona')
        object prTxMemoObj20: TprTxMemoObj
          dRec.DefVersion = 0
          dRec.Versions = <
            item
              Visible = True
              Memo.Strings = (
                '[IBQuery1.NOMBRE1]')
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
          dRec.Right = 47
          dRec.Bottom = 1
          Visible = False
        end
        object prTxMemoObj21: TprTxMemoObj
          dRec.DefVersion = 0
          dRec.Versions = <
            item
              Visible = True
              Memo.Strings = (
                '[:<#,#0.00>IBQuery1.MONTO]')
              DeleteEmptyLinesAtEnd = False
              DeleteEmptyLines = False
              CanResizeX = False
              CanResizeY = False
              hAlign = prhRight
              vAlign = prvTop
              DefaultFont = False
              WordWrap = False
            end>
          dRec.Left = 48
          dRec.Top = 0
          dRec.Right = 65
          dRec.Bottom = 1
          Visible = False
        end
        object prTxMemoObj22: TprTxMemoObj
          dRec.DefVersion = 0
          dRec.Versions = <
            item
              Visible = True
              Memo.Strings = (
                '[:<#.00%>IBQuery1.TASAN]')
              DeleteEmptyLinesAtEnd = False
              DeleteEmptyLines = False
              CanResizeX = False
              CanResizeY = False
              hAlign = prhRight
              vAlign = prvTop
              DefaultFont = False
              WordWrap = False
            end>
          dRec.Left = 66
          dRec.Top = 0
          dRec.Right = 74
          dRec.Bottom = 1
          Visible = False
        end
        object prTxMemoObj23: TprTxMemoObj
          dRec.DefVersion = 0
          dRec.Versions = <
            item
              Visible = True
              Memo.Strings = (
                '[:<#,0.00>IBQuery1.RETENCION]')
              DeleteEmptyLinesAtEnd = False
              DeleteEmptyLines = False
              CanResizeX = False
              CanResizeY = False
              hAlign = prhRight
              vAlign = prvTop
              DefaultFont = False
              WordWrap = False
            end>
          dRec.Left = 75
          dRec.Top = 0
          dRec.Right = 90
          dRec.Bottom = 1
          Visible = False
        end
      end
      object prTxHGroupFooterBand1: TprTxHGroupFooterBand
        Height = 8
        UseVerticalBands = False
        Group = prTxReport1.gPersona
        ColCount = 0
        ColDirection = prcdTopBottomLeftRight
        LinkToDetail = False
        object prTxMemoObj24: TprTxMemoObj
          dRec.DefVersion = 0
          dRec.Versions = <
            item
              Visible = True
              Memo.Strings = (
                'TOTAL RETENCIONES')
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
          dRec.Right = 47
          dRec.Bottom = 2
          Visible = False
        end
        object prTxHLineObj4: TprTxHLineObj
          dRec.DefVersion = 0
          dRec.Versions = <
            item
              Visible = True
            end>
          dRec.Left = 1
          dRec.Top = 0
          dRec.Right = 92
          dRec.Bottom = 1
          Visible = False
        end
        object prTxMemoObj25: TprTxMemoObj
          dRec.DefVersion = 0
          dRec.Versions = <
            item
              Visible = True
              Memo.Strings = (
                '[:<#,0.00>TOTALMONTO]')
              DeleteEmptyLinesAtEnd = False
              DeleteEmptyLines = False
              CanResizeX = False
              CanResizeY = False
              hAlign = prhRight
              vAlign = prvTop
              DefaultFont = False
              WordWrap = False
              TxFontOptionsEx = (
                tfoBold)
            end>
          dRec.Left = 48
          dRec.Top = 1
          dRec.Right = 65
          dRec.Bottom = 2
          Visible = False
        end
        object prTxMemoObj26: TprTxMemoObj
          dRec.DefVersion = 0
          dRec.Versions = <
            item
              Visible = True
              Memo.Strings = (
                '[:<#,0.00>TOTALRETENCION]')
              DeleteEmptyLinesAtEnd = False
              DeleteEmptyLines = False
              CanResizeX = False
              CanResizeY = False
              hAlign = prhRight
              vAlign = prvTop
              DefaultFont = False
              WordWrap = False
              TxFontOptionsEx = (
                tfoBold)
            end>
          dRec.Left = 75
          dRec.Top = 1
          dRec.Right = 90
          dRec.Bottom = 2
          Visible = False
        end
        object prTxMemoObj27: TprTxMemoObj
          dRec.DefVersion = 0
          dRec.Versions = <
            item
              Visible = True
              Memo.Strings = (
                'Se expide este certificado para dar cumplimiento'
                'al decreto 2300 articulo 23 de diciembre de 1996'
                'y segun especificacion del decreto 380 articulo'
                '7 del 27 de febrero de 1996')
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
          dRec.Top = 3
          dRec.Right = 50
          dRec.Bottom = 8
          Visible = False
        end
        object prTxMemoObj28: TprTxMemoObj
          dRec.DefVersion = 0
          dRec.Versions = <
            item
              Visible = True
              Memo.Strings = (
                'FIRMA AGENTE RETENEDOR')
              DeleteEmptyLinesAtEnd = False
              DeleteEmptyLines = False
              CanResizeX = False
              CanResizeY = False
              hAlign = prhCenter
              vAlign = prvTop
              DefaultFont = False
              WordWrap = False
            end>
          dRec.Left = 51
          dRec.Top = 7
          dRec.Right = 91
          dRec.Bottom = 8
          Visible = False
        end
        object prTxHLineObj5: TprTxHLineObj
          dRec.DefVersion = 0
          dRec.Versions = <
            item
              Visible = True
            end>
          dRec.Left = 51
          dRec.Top = 6
          dRec.Right = 91
          dRec.Bottom = 7
          Visible = False
        end
        object prTxHLineObj6: TprTxHLineObj
          dRec.DefVersion = 0
          dRec.Versions = <
            item
              Visible = True
            end>
          dRec.Left = 1
          dRec.Top = 2
          dRec.Right = 92
          dRec.Bottom = 3
          Visible = False
        end
      end
    end
    object gPersona: TprGroup
      Valid = 'IBQuery1.ID_PERSONA'
      DetailBand = prTxReport1.prTxHDetailBand1
    end
  end
end
