object frmPaginarPapel: TfrmPaginarPapel
  Left = 635
  Top = 284
  Width = 410
  Height = 255
  Caption = 'Paginaci'#243'n de Papel'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clBlack
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object RGTipo: TRadioGroup
    Left = 0
    Top = 0
    Width = 309
    Height = 97
    Caption = 'Paginar Papel para'
    ItemIndex = 0
    Items.Strings = (
      '132 Columnas Papel Estandar Americano'
      '80 Columnas Papel Carta '
      '80 Columnas Papel Carta Gr'#225'fico')
    TabOrder = 0
    TabStop = True
  end
  object Panel1: TPanel
    Left = 309
    Top = 0
    Width = 93
    Height = 221
    Align = alRight
    Color = clOlive
    TabOrder = 3
    TabStop = True
    object CmdProcesar: TBitBtn
      Left = 4
      Top = 6
      Width = 87
      Height = 25
      Caption = '&Procesar'
      TabOrder = 0
      OnClick = CmdProcesarClick
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
    object CmdCerrar: TBitBtn
      Left = 4
      Top = 32
      Width = 87
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
  end
  object GroupBox1: TGroupBox
    Left = 0
    Top = 160
    Width = 309
    Height = 61
    Caption = 'Caracter'#237'sticas de Impresi'#243'n'
    TabOrder = 2
    TabStop = True
    object Label1: TLabel
      Left = 10
      Top = 18
      Width = 78
      Height = 13
      Caption = 'Desde la P'#225'gina'
    end
    object Label2: TLabel
      Left = 10
      Top = 36
      Width = 98
      Height = 13
      Caption = 'Cantidad de P'#225'ginas'
    end
    object EdPagina: TJvIntegerEdit
      Left = 120
      Top = 14
      Width = 81
      Height = 21
      Alignment = taRightJustify
      ReadOnly = False
      TabOrder = 0
      Value = 0
      MaxValue = 0
      MinValue = 0
      HasMaxValue = False
      HasMinValue = False
    end
    object EdCantidad: TJvIntegerEdit
      Left = 120
      Top = 36
      Width = 81
      Height = 21
      Alignment = taRightJustify
      ReadOnly = False
      TabOrder = 1
      Value = 0
      MaxValue = 0
      MinValue = 0
      HasMaxValue = False
      HasMinValue = False
    end
  end
  object GroupBox2: TGroupBox
    Left = 0
    Top = 102
    Width = 309
    Height = 55
    Caption = 'T'#237'tulo de P'#225'ginas'
    TabOrder = 1
    TabStop = True
    object EdEncabezado: TMemo
      Left = 3
      Top = 14
      Width = 302
      Height = 36
      TabOrder = 0
      WantReturns = False
    end
  end
  object CDS: TClientDataSet
    Active = True
    Aggregates = <>
    Params = <>
    Left = 246
    Top = 38
    Data = {
      3B0000009619E0BD0100000018000000020000000000030000003B000949445F
      504147494E41040001000000000006504147494E4104000100000000000000}
    object CDSID_PAGINA: TIntegerField
      FieldName = 'ID_PAGINA'
    end
    object CDSPAGINA: TIntegerField
      FieldName = 'PAGINA'
    end
  end
  object Reporte1: TprTxReport
    Values = <>
    Variables = <
      item
        Name = 'EMPRESA'
        ValueType = 'prvvtString'
        Value = 'CREDISERVIR LTDA'
      end
      item
        Name = 'NIT'
        ValueType = 'prvvtString'
        Value = '890.505363-6'
      end
      item
        Name = 'ENCABEZADO'
        ValueType = 'prvvtString'
        Value = 'MAYOR Y BALANCE'
      end>
    EjectPageAfterPrint = False
    Left = 274
    Top = 38
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
      ColNum = 132
      object prTxHDetailBand1: TprTxHDetailBand
        Height = 1
        UseVerticalBands = False
        DataSetName = 'CDS'
        ColCount = 1
        ColDirection = prcdTopBottomLeftRight
        StartNewPage = True
        object prTxMemoObj1: TprTxMemoObj
          dRec.DefVersion = 0
          dRec.Versions = <
            item
              Visible = True
              Memo.Strings = (
                'Pag # [:<0000>CDS.ID_PAGINA]')
              DeleteEmptyLinesAtEnd = False
              DeleteEmptyLines = False
              CanResizeX = False
              CanResizeY = False
              hAlign = prhLeft
              vAlign = prvTop
              DefaultFont = False
              WordWrap = False
            end>
          dRec.Left = 91
          dRec.Top = 0
          dRec.Right = 106
          dRec.Bottom = 1
          Visible = False
        end
        object prTxMemoObj2: TprTxMemoObj
          dRec.DefVersion = 0
          dRec.Versions = <
            item
              Visible = True
              Memo.Strings = (
                '[ENCABEZADO]')
              DeleteEmptyLinesAtEnd = False
              DeleteEmptyLines = False
              CanResizeX = True
              CanResizeY = False
              hAlign = prhCenter
              vAlign = prvTop
              DefaultFont = False
              WordWrap = False
            end>
          dRec.Left = 1
          dRec.Top = 0
          dRec.Right = 29
          dRec.Bottom = 1
          Visible = False
        end
        object prTxMemoObj3: TprTxMemoObj
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
          dRec.Left = 30
          dRec.Top = 0
          dRec.Right = 60
          dRec.Bottom = 1
          Visible = False
        end
        object prTxMemoObj4: TprTxMemoObj
          dRec.DefVersion = 0
          dRec.Versions = <
            item
              Visible = True
              Memo.Strings = (
                'NIT [NIT]')
              DeleteEmptyLinesAtEnd = False
              DeleteEmptyLines = False
              CanResizeX = False
              CanResizeY = False
              hAlign = prhLeft
              vAlign = prvTop
              DefaultFont = False
              WordWrap = False
            end>
          dRec.Left = 61
          dRec.Top = 0
          dRec.Right = 86
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
                txcCondensedOff
                txcNormal)
            end>
          dRec.Left = 0
          dRec.Top = 0
          dRec.Right = 1
          dRec.Bottom = 1
          Visible = False
        end
      end
    end
  end
  object Reporte2: TprTxReport
    Values = <>
    Variables = <
      item
        Name = 'EMPRESA'
        ValueType = 'prvvtString'
        Value = 'CREDISERVIR LTDA'
      end
      item
        Name = 'NIT'
        ValueType = 'prvvtString'
        Value = '890.505363-6'
      end
      item
        Name = 'ENCABEZADO'
        ValueType = 'prvvtString'
        Value = ''
      end>
    EjectPageAfterPrint = False
    Left = 274
    Top = 64
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
      ColNum = 80
      object prTxHDetailBand1: TprTxHDetailBand
        Height = 1
        UseVerticalBands = False
        DataSetName = 'CDS'
        ColCount = 1
        ColDirection = prcdTopBottomLeftRight
        StartNewPage = True
        object prTxMemoObj1: TprTxMemoObj
          dRec.DefVersion = 0
          dRec.Versions = <
            item
              Visible = True
              Memo.Strings = (
                'Pag # [:<0000>CDS.ID_PAGINA]')
              DeleteEmptyLinesAtEnd = False
              DeleteEmptyLines = False
              CanResizeX = False
              CanResizeY = False
              hAlign = prhLeft
              vAlign = prvTop
              DefaultFont = False
              WordWrap = False
            end>
          dRec.Left = 65
          dRec.Top = 0
          dRec.Right = 80
          dRec.Bottom = 1
          Visible = False
        end
        object prTxMemoObj2: TprTxMemoObj
          dRec.DefVersion = 0
          dRec.Versions = <
            item
              Visible = True
              Memo.Strings = (
                '[ENCABEZADO]')
              DeleteEmptyLinesAtEnd = False
              DeleteEmptyLines = False
              CanResizeX = True
              CanResizeY = False
              hAlign = prhLeft
              vAlign = prvTop
              DefaultFont = False
              WordWrap = False
            end>
          dRec.Left = 2
          dRec.Top = 0
          dRec.Right = 25
          dRec.Bottom = 1
          Visible = False
        end
        object prTxMemoObj3: TprTxMemoObj
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
          dRec.Left = 26
          dRec.Top = 0
          dRec.Right = 45
          dRec.Bottom = 1
          Visible = False
        end
        object prTxMemoObj4: TprTxMemoObj
          dRec.DefVersion = 0
          dRec.Versions = <
            item
              Visible = True
              Memo.Strings = (
                'NIT [NIT]')
              DeleteEmptyLinesAtEnd = False
              DeleteEmptyLines = False
              CanResizeX = False
              CanResizeY = False
              hAlign = prhLeft
              vAlign = prvTop
              DefaultFont = False
              WordWrap = False
            end>
          dRec.Left = 46
          dRec.Top = 0
          dRec.Right = 64
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
                txcCondensedOff
                txcNormal)
            end>
          dRec.Left = 0
          dRec.Top = 0
          dRec.Right = 1
          dRec.Bottom = 1
          Visible = False
        end
      end
    end
  end
  object frPaginacion: TfrReport
    Dataset = frDBDSPaginacion
    InitialZoom = pzDefault
    PreviewButtons = [pbZoom, pbLoad, pbSave, pbPrint, pbFind, pbHelp, pbExit]
    StoreInDFM = True
    RebuildPrinter = False
    Left = 224
    Top = 72
    ReportForm = {
      19000000FE030000190000000011004850204C617365724A6574207031353035
      00FFFFFFFFFF010000006F080000EA0A00000000000000000000000000000000
      000000FFFF00000000FFFF000000000000000000000000030400466F726D000F
      000080DC000000780000007C0100002C010000040000000200EA0000000B004D
      6173746572446174613100020100000000100000000B03000014000000360005
      0001000000000000000000FFFFFF1F000000001000667244424453506167696E
      6163696F6E00000000000000FFFF000000000002000000010000000000000001
      000000C8000000140000000100000000000000007101000005004D656D6F3100
      02002000000012000000C4020000100000000300000001000000000000000000
      FFFFFF1F2E020000000000010009005B454D50524553415D00000000FFFF0000
      0000000200000001000000000500417269616C00080000000000000000000200
      00000100020000000000FFFFFF0000000002000000000000000000FB01000005
      004D656D6F3200020020000000120000000C0100001000000003000000010000
      00000000000000FFFFFF1F2E02000000000001000C005B454E434142455A4144
      4F5D00000000FFFF00000000000200000001000000000500417269616C000800
      0000000000000000000000000100020000000000FFFFFF000000000200000000
      00000000008302000005004D656D6F330002001C020000120000007C00000010
      0000000300000001000000000000000000FFFFFF1F2E02000000000001000A00
      4E49542E205B4E49545D00000000FFFF00000000000200000001000000000500
      417269616C0008000000000000000000000000000100020000000000FFFFFF00
      000000020000000000000000000603000005004D656D6F340002009802000012
      00000020000000100000000300000001000000000000000000FFFFFF1F2E0200
      0000000001000500506167202300000000FFFF00000000000200000001000000
      000500417269616C0008000000000000000000000000000100020000000000FF
      FFFF00000000020000000000000000009803000005004D656D6F35000200C002
      00001200000023000000100000000300000001000000000000000000FFFFFF1F
      2E000401030030303000010011005B4344532E2249445F504147494E41225D00
      000000FFFF00000000000200000001000000000500417269616C000800000000
      0000000000010000000100020000000000FFFFFF000000000200000000000000
      FEFEFF0400000008002047656E6572616C000000000700454D50524553410000
      00000A00454E434142455A41444F0000000003004E4954000000000000000000
      000000FC000000000000000000000000000000004D00FDC905A4EA06E5409137
      FA95EC06E540}
  end
  object frDBDSPaginacion: TfrDBDataSet
    DataSet = CDS
    OpenDataSource = False
    Left = 224
    Top = 104
  end
end
