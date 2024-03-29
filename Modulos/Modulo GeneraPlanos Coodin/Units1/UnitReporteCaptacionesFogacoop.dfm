object frmReporteCaptacionesFogacoop: TfrmReporteCaptacionesFogacoop
  Left = 317
  Top = 266
  Width = 342
  Height = 139
  Caption = 'Reporte de Captaciones para Fogacoop'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clBlack
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poMainFormCenter
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 334
    Height = 29
    Align = alTop
    TabOrder = 0
    object Label1: TLabel
      Left = 72
      Top = 6
      Width = 73
      Height = 13
      Caption = 'Fecha de Corte'
    end
    object EdFechaCorte: TDateTimePicker
      Left = 150
      Top = 4
      Width = 95
      Height = 21
      CalAlignment = dtaLeft
      Date = 38035.4625860764
      Time = 38035.4625860764
      DateFormat = dfShort
      DateMode = dmComboBox
      Kind = dtkDate
      ParseInput = False
      TabOrder = 0
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 77
    Width = 334
    Height = 28
    Align = alBottom
    Color = clOlive
    TabOrder = 1
    object CmdProceso: TBitBtn
      Left = 4
      Top = 2
      Width = 101
      Height = 25
      Caption = '&Iniciar Proceso'
      TabOrder = 0
      OnClick = CmdProcesoClick
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
      Left = 256
      Top = 2
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
  end
  object IBQuery1: TIBQuery
    Database = dmGeneral.IBDatabase1
    Transaction = dmGeneral.IBTransaction1
    Left = 414
    Top = 65532
  end
  object IBQuery2: TIBQuery
    Database = dmGeneral.IBDatabase1
    Transaction = dmGeneral.IBTransaction1
    Left = 442
    Top = 65532
  end
  object IBQuery3: TIBQuery
    Database = dmGeneral.IBDatabase1
    Transaction = dmGeneral.IBTransaction1
    Left = 468
    Top = 65532
  end
  object SaveDialog1: TSaveDialog
    Left = 496
    Top = 65532
  end
  object IBSQL1: TIBSQL
    Database = dmGeneral.IBDatabase1
    Transaction = dmGeneral.IBTransaction1
    Left = 388
    Top = 65532
  end
  object CDSaldosRojo: TClientDataSet
    Active = True
    Aggregates = <>
    Params = <>
    Left = 32
    Top = 32
    Data = {
      EB0000009619E0BD010000001800000008000000000003000000EB000A49445F
      4147454E43494104000100000000001149445F5449504F5F434150544143494F
      4E04000100000000000D4E554D45524F5F4355454E544104000100000000000D
      44494749544F5F4355454E544104000100000000001149445F4944454E544946
      49434143494F4E04000100000000000A49445F504552534F4E41010049000000
      01000557494454480200020014000841534F434941444F010049000000010005
      57494454480200020014000553414C444F080004000000010007535542545950
      450200490006004D6F6E6579000000}
    object CDSaldosRojoID_AGENCIA: TIntegerField
      FieldName = 'ID_AGENCIA'
    end
    object CDSaldosRojoID_TIPO_CAPTACION: TIntegerField
      FieldName = 'ID_TIPO_CAPTACION'
    end
    object CDSaldosRojoNUMERO_CUENTA: TIntegerField
      FieldName = 'NUMERO_CUENTA'
    end
    object CDSaldosRojoDIGITO_CUENTA: TIntegerField
      FieldName = 'DIGITO_CUENTA'
    end
    object CDSaldosRojoID_IDENTIFICACION: TIntegerField
      FieldName = 'ID_IDENTIFICACION'
    end
    object CDSaldosRojoID_PERSONA: TStringField
      FieldName = 'ID_PERSONA'
    end
    object CDSaldosRojoASOCIADO: TStringField
      FieldName = 'ASOCIADO'
    end
    object CDSaldosRojoSALDO: TCurrencyField
      FieldName = 'SALDO'
    end
  end
  object CDSinAportes: TClientDataSet
    Active = True
    Aggregates = <>
    Params = <>
    Left = 120
    Top = 32
    Data = {
      EB0000009619E0BD010000001800000008000000000003000000EB000A49445F
      4147454E43494104000100000000001149445F5449504F5F434150544143494F
      4E04000100000000000D4E554D45524F5F4355454E544104000100000000000D
      44494749544F5F4355454E544104000100000000001149445F4944454E544946
      49434143494F4E04000100000000000A49445F504552534F4E41010049000000
      01000557494454480200020014000841534F434941444F010049000000010005
      57494454480200020014000553414C444F080004000000010007535542545950
      450200490006004D6F6E6579000000}
    object IntegerField1: TIntegerField
      FieldName = 'ID_AGENCIA'
    end
    object IntegerField2: TIntegerField
      FieldName = 'ID_TIPO_CAPTACION'
    end
    object IntegerField3: TIntegerField
      FieldName = 'NUMERO_CUENTA'
    end
    object IntegerField4: TIntegerField
      FieldName = 'DIGITO_CUENTA'
    end
    object IntegerField5: TIntegerField
      FieldName = 'ID_IDENTIFICACION'
    end
    object StringField1: TStringField
      FieldName = 'ID_PERSONA'
    end
    object StringField2: TStringField
      FieldName = 'ASOCIADO'
    end
    object CurrencyField1: TCurrencyField
      FieldName = 'SALDO'
    end
  end
  object IBSQL2: TIBSQL
    Database = dmGeneral.IBDatabase1
    Transaction = dmGeneral.IBTransaction1
    Left = 248
  end
  object IBSQL3: TIBSQL
    Database = dmGeneral.IBDatabase1
    Transaction = dmGeneral.IBTransaction1
    Left = 272
  end
  object SinAportes: TfrReport
    InitialZoom = pzDefault
    PreviewButtons = [pbZoom, pbLoad, pbSave, pbPrint, pbFind, pbHelp, pbExit]
    RebuildPrinter = False
    OnGetValue = SinAportesGetValue
    Left = 96
    Top = 32
    ReportForm = {19000000}
  end
  object frDBSinAportes: TfrDBDataSet
    DataSet = CDSinAportes
    Left = 144
    Top = 32
  end
  object frDBSaldosrojo: TfrDBDataSet
    DataSet = CDSaldosRojo
    Left = 56
    Top = 32
  end
  object SaldosRojo: TfrReport
    InitialZoom = pzDefault
    PreviewButtons = [pbZoom, pbLoad, pbSave, pbPrint, pbFind, pbHelp, pbExit]
    RebuildPrinter = False
    Left = 8
    Top = 32
    ReportForm = {19000000}
  end
end
