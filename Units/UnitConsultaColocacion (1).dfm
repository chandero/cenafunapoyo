object frmConsultaColocacion: TfrmConsultaColocacion
  Left = 150
  Top = 148
  Width = 572
  Height = 411
  Caption = 'Consulta de Colocaci'#243'n'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clBlack
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnClose = FormClose
  OnCreate = FormCreate
  OnKeyPress = FormKeyPress
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object GroupBox1: TGroupBox
    Left = 2
    Top = 0
    Width = 555
    Height = 88
    Caption = 'Colocaci'#243'n'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 0
    object Label18: TLabel
      Left = 122
      Top = 16
      Width = 149
      Height = 13
      Caption = 'N'#250'mero Colocaci'#243'n y/o Pagar'#233
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label1: TLabel
      Left = 10
      Top = 38
      Width = 86
      Height = 14
      Caption = 'Tipo Identificaci'#243'n'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
    end
    object Label2: TLabel
      Left = 298
      Top = 38
      Width = 103
      Height = 14
      Caption = 'N'#250'mero Identificaci'#243'n'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
    end
    object Label3: TLabel
      Left = 10
      Top = 62
      Width = 37
      Height = 14
      Caption = 'Nombre'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
    end
    object Label31: TLabel
      Left = 12
      Top = 14
      Width = 39
      Height = 13
      Caption = 'Agencia'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object EdTipoIdentificacion: TStaticText
      Left = 100
      Top = 36
      Width = 187
      Height = 21
      AutoSize = False
      BevelEdges = []
      BevelInner = bvLowered
      BorderStyle = sbsSunken
      Color = clWhite
      ParentColor = False
      TabOrder = 3
    end
    object EdNumeroIdentificacion: TStaticText
      Left = 404
      Top = 36
      Width = 147
      Height = 21
      Alignment = taRightJustify
      AutoSize = False
      BevelEdges = []
      BevelInner = bvLowered
      BorderStyle = sbsSunken
      Color = clWhite
      ParentColor = False
      TabOrder = 4
    end
    object EdNombre: TStaticText
      Left = 50
      Top = 58
      Width = 501
      Height = 21
      AutoSize = False
      BevelEdges = []
      BevelInner = bvLowered
      BorderStyle = sbsSunken
      Color = clWhite
      ParentColor = False
      TabOrder = 5
    end
    object CmdBuscar: TBitBtn
      Left = 377
      Top = 12
      Width = 65
      Height = 21
      Caption = 'Buscar ...'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 6
      TabStop = False
      OnClick = CmdBuscarClick
      Glyph.Data = {
        36050000424D3605000000000000360400002800000010000000100000000100
        08000000000000010000320B0000320B000000010000000100005A6B7300AD7B
        73004A637B00EFBD8400B58C8C00A5948C00C6948C00B59C8C00BD9C8C00F7BD
        8C00BD949400C6949400CE949400C69C9400CEAD9400F7CE9400C6A59C00CEA5
        9C00D6A59C00C6AD9C00CEAD9C00D6AD9C00F7CE9C00F7D69C004A7BA500CEAD
        A500D6B5A500DEBDA500F7D6A500DEBDAD00DEC6AD00E7C6AD00FFDEAD00FFE7
        AD00CEB5B500F7DEB500F7E7B500FFE7B500FFEFB500D6BDBD00DED6BD00E7DE
        BD00FFE7BD006B9CC600EFDEC600FFEFC600FFF7C600F7E7CE00FFF7CE00F7EF
        D600F7F7D600FFF7D600FFFFD6002184DE00F7F7DE00FFFFDE001884E700188C
        E700FFFFE700188CEF00218CEF00B5D6EF00F7F7EF00FFF7EF00FFFFEF00FFFF
        F700FF00FF004AB5FF0052B5FF0052BDFF00FFFFFF00FFFFFF00FFFFFF00FFFF
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
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0042020A424242
        424242424242424242422B39180B42424242424242424242424243443C180B42
        4242424242424242424242444438180B42424242424242424242424244433918
        0A424242424242424242424242444335004201101A114242424242424242453D
        05072F343434291942424242424242221A2D34343437403E0442424242424206
        231C303437404146284242424242421B210F30373A414140310D42424242421F
        20032434373A3A37321342424242421D25030F2D37373737311042424242420D
        2D2D1C162430333429424242424242421E463F0F0316252E0842424242424242
        4227312D21252314424242424242424242420E141B1B42424242}
    end
    object EdAgencia: TDBLookupComboBox
      Left = 52
      Top = 14
      Width = 69
      Height = 21
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      KeyField = 'ID_AGENCIA'
      ListField = 'DESCRIPCION_AGENCIA'
      ListSource = DSAgencia
      ParentFont = False
      TabOrder = 0
      OnKeyPress = EdAgenciaKeyPress
    end
    object EdNumeroColocacion: TMaskEdit
      Left = 276
      Top = 12
      Width = 93
      Height = 21
      EditMask = '99999999999;1;_'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      MaxLength = 11
      ParentFont = False
      TabOrder = 1
      Text = '           '
      OnExit = EdNumeroColocacionExit
      OnKeyPress = EdNumeroColocacionKeyPress
    end
    object Button1: TButton
      Left = 496
      Top = 64
      Width = 49
      Height = 17
      Caption = 'Button1'
      TabOrder = 2
      Visible = False
    end
  end
  object GroupBox2: TGroupBox
    Left = 0
    Top = 87
    Width = 557
    Height = 227
    Caption = 'Informaci'#243'n de la Colocaci'#243'n'
    Enabled = False
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 1
    object Label4: TLabel
      Left = 8
      Top = 16
      Width = 59
      Height = 13
      Caption = 'Clasificaci'#243'n'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label5: TLabel
      Left = 158
      Top = 16
      Width = 28
      Height = 13
      Caption = 'L'#237'nea'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label6: TLabel
      Left = 306
      Top = 16
      Width = 43
      Height = 13
      Caption = 'Inversi'#243'n'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label7: TLabel
      Left = 452
      Top = 16
      Width = 45
      Height = 13
      Caption = 'Respaldo'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label8: TLabel
      Left = 8
      Top = 54
      Width = 42
      Height = 13
      Caption = 'Garant'#237'a'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label9: TLabel
      Left = 138
      Top = 54
      Width = 86
      Height = 13
      Caption = 'Fecha Colocaci'#243'n'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label10: TLabel
      Left = 252
      Top = 54
      Width = 80
      Height = 13
      Caption = 'Valor Colocaci'#243'n'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label11: TLabel
      Left = 480
      Top = 54
      Width = 72
      Height = 13
      Caption = 'Plazo (En Dias)'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label12: TLabel
      Left = 300
      Top = 90
      Width = 66
      Height = 13
      Caption = 'Tasa Efectiva'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label13: TLabel
      Left = 370
      Top = 90
      Width = 51
      Height = 13
      Caption = 'Tasa Mora'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label14: TLabel
      Left = 8
      Top = 128
      Width = 67
      Height = 13
      Caption = 'Tipo de Cuota'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label15: TLabel
      Left = 176
      Top = 128
      Width = 42
      Height = 13
      Caption = 'Am. Capi'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label16: TLabel
      Left = 226
      Top = 128
      Width = 42
      Height = 13
      Caption = 'Am. Inter'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label17: TLabel
      Left = 382
      Top = 128
      Width = 55
      Height = 13
      Caption = 'Valor Cuota'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label23: TLabel
      Left = 276
      Top = 128
      Width = 44
      Height = 13
      Caption = 'P. Gracia'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label24: TLabel
      Left = 6
      Top = 90
      Width = 63
      Height = 13
      Caption = 'Tipo de Tasa'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label25: TLabel
      Left = 122
      Top = 90
      Width = 89
      Height = 13
      Caption = 'Tasa Variable Tipo'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label26: TLabel
      Left = 236
      Top = 90
      Width = 60
      Height = 13
      Caption = 'Puntos Adic.'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label20: TLabel
      Left = 366
      Top = 54
      Width = 60
      Height = 13
      Caption = 'Saldo Actual'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label21: TLabel
      Left = 452
      Top = 90
      Width = 63
      Height = 13
      Caption = 'Tasa M'#225'xima'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label22: TLabel
      Left = 478
      Top = 130
      Width = 65
      Height = 13
      Caption = 'Tasa Nominal'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label30: TLabel
      Left = 328
      Top = 128
      Width = 46
      Height = 13
      Caption = 'Dias Prorr'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label53: TLabel
      Left = 223
      Top = 171
      Width = 131
      Height = 13
      Caption = 'Aprobador de la Colocaci'#243'n'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label54: TLabel
      Left = 369
      Top = 170
      Width = 68
      Height = 13
      Caption = 'Nota Contable'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label27: TLabel
      Left = 7
      Top = 170
      Width = 91
      Height = 13
      Caption = 'Capital Pago Hasta'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label28: TLabel
      Left = 117
      Top = 170
      Width = 91
      Height = 13
      Caption = 'Inter'#233's Pago Hasta'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label19: TLabel
      Left = 459
      Top = 171
      Width = 89
      Height = 13
      Caption = 'Cuotas Pendientes'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object EdValorCuota: TStaticText
      Left = 380
      Top = 144
      Width = 91
      Height = 21
      Alignment = taRightJustify
      AutoSize = False
      BevelInner = bvLowered
      BevelKind = bkTile
      Color = clMoneyGreen
      ParentColor = False
      TabOrder = 0
    end
    object EdClasificacion: TStaticText
      Left = 8
      Top = 30
      Width = 143
      Height = 21
      AutoSize = False
      BorderStyle = sbsSunken
      Color = clWhite
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentColor = False
      ParentFont = False
      TabOrder = 1
    end
    object EdLinea: TStaticText
      Left = 156
      Top = 30
      Width = 145
      Height = 21
      AutoSize = False
      BorderStyle = sbsSunken
      Color = clWhite
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentColor = False
      ParentFont = False
      TabOrder = 2
    end
    object EdInversion: TStaticText
      Left = 306
      Top = 30
      Width = 139
      Height = 21
      AutoSize = False
      BorderStyle = sbsSunken
      Color = clWhite
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentColor = False
      ParentFont = False
      TabOrder = 3
    end
    object EdRespaldo: TStaticText
      Left = 452
      Top = 30
      Width = 97
      Height = 21
      AutoSize = False
      BorderStyle = sbsSunken
      Color = clWhite
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentColor = False
      ParentFont = False
      TabOrder = 4
    end
    object EdGarantia: TStaticText
      Left = 8
      Top = 68
      Width = 127
      Height = 21
      AutoSize = False
      BorderStyle = sbsSunken
      Color = clWhite
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentColor = False
      ParentFont = False
      TabOrder = 5
    end
    object EdFechaColocacion: TStaticText
      Left = 138
      Top = 68
      Width = 111
      Height = 21
      Alignment = taRightJustify
      AutoSize = False
      BorderStyle = sbsSunken
      Color = clWhite
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentColor = False
      ParentFont = False
      TabOrder = 6
    end
    object EdValorColocacion: TStaticText
      Left = 252
      Top = 68
      Width = 111
      Height = 21
      Alignment = taRightJustify
      AutoSize = False
      BorderStyle = sbsSunken
      Color = clWhite
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentColor = False
      ParentFont = False
      TabOrder = 7
    end
    object EdPlazo: TStaticText
      Left = 482
      Top = 68
      Width = 69
      Height = 21
      Alignment = taRightJustify
      AutoSize = False
      BorderStyle = sbsSunken
      Color = clWhite
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentColor = False
      ParentFont = False
      TabOrder = 8
    end
    object EdTipoTasa: TStaticText
      Left = 8
      Top = 104
      Width = 111
      Height = 21
      AutoSize = False
      BorderStyle = sbsSunken
      Color = clWhite
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentColor = False
      ParentFont = False
      TabOrder = 9
    end
    object EdTasaVariable: TStaticText
      Left = 122
      Top = 104
      Width = 111
      Height = 21
      AutoSize = False
      BorderStyle = sbsSunken
      Color = clWhite
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentColor = False
      ParentFont = False
      TabOrder = 10
    end
    object EdPuntos: TStaticText
      Left = 236
      Top = 104
      Width = 63
      Height = 21
      Alignment = taRightJustify
      AutoSize = False
      BorderStyle = sbsSunken
      Color = clWhite
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentColor = False
      ParentFont = False
      TabOrder = 11
    end
    object EdTasaEfectiva: TStaticText
      Left = 302
      Top = 104
      Width = 67
      Height = 21
      Alignment = taRightJustify
      AutoSize = False
      BorderStyle = sbsSunken
      Color = clWhite
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentColor = False
      ParentFont = False
      TabOrder = 12
    end
    object EdTasaMora: TStaticText
      Left = 372
      Top = 104
      Width = 65
      Height = 21
      Alignment = taRightJustify
      AutoSize = False
      BorderStyle = sbsSunken
      Color = clWhite
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentColor = False
      ParentFont = False
      TabOrder = 13
    end
    object EdTipoCuota: TStaticText
      Left = 8
      Top = 144
      Width = 163
      Height = 21
      AutoSize = False
      BorderStyle = sbsSunken
      Caption = 'CUOTA VARIABLE ANTICIPADA'
      Color = clWhite
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentColor = False
      ParentFont = False
      TabOrder = 14
    end
    object EdAmortizaCapital: TStaticText
      Left = 174
      Top = 144
      Width = 45
      Height = 21
      Alignment = taRightJustify
      AutoSize = False
      BorderStyle = sbsSunken
      Color = clWhite
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentColor = False
      ParentFont = False
      TabOrder = 15
    end
    object EdAmortizaInteres: TStaticText
      Left = 222
      Top = 144
      Width = 47
      Height = 21
      Alignment = taRightJustify
      AutoSize = False
      BorderStyle = sbsSunken
      Color = clWhite
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentColor = False
      ParentFont = False
      TabOrder = 16
    end
    object EdPeriodoGracia: TStaticText
      Left = 272
      Top = 144
      Width = 49
      Height = 21
      Alignment = taRightJustify
      AutoSize = False
      BorderStyle = sbsSunken
      Color = clWhite
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentColor = False
      ParentFont = False
      TabOrder = 17
    end
    object EdSaldoColocacion: TStaticText
      Left = 366
      Top = 68
      Width = 111
      Height = 21
      Alignment = taRightJustify
      AutoSize = False
      BorderStyle = sbsSunken
      Color = clWhite
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentColor = False
      ParentFont = False
      TabOrder = 18
    end
    object EdTasaMaxima: TStaticText
      Left = 440
      Top = 104
      Width = 47
      Height = 21
      Alignment = taRightJustify
      AutoSize = False
      BorderStyle = sbsSunken
      Color = clWhite
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentColor = False
      ParentFont = False
      TabOrder = 19
    end
    object EdTasaNominal: TStaticText
      Left = 480
      Top = 146
      Width = 65
      Height = 21
      Alignment = taRightJustify
      AutoSize = False
      BorderStyle = sbsSunken
      Color = clWhite
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentColor = False
      ParentFont = False
      TabOrder = 20
    end
    object EdDiasProrroga: TStaticText
      Left = 324
      Top = 144
      Width = 53
      Height = 21
      Alignment = taRightJustify
      AutoSize = False
      BorderStyle = sbsSunken
      Color = clWhite
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentColor = False
      ParentFont = False
      TabOrder = 21
    end
    object EdTasaMaximaNominal: TStaticText
      Left = 488
      Top = 104
      Width = 47
      Height = 21
      Alignment = taRightJustify
      AutoSize = False
      BorderStyle = sbsSunken
      Color = clWhite
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentColor = False
      ParentFont = False
      TabOrder = 22
    end
    object EdFechaCapital: TStaticText
      Left = 8
      Top = 185
      Width = 93
      Height = 21
      Alignment = taRightJustify
      AutoSize = False
      BorderStyle = sbsSunken
      Color = clWhite
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentColor = False
      ParentFont = False
      TabOrder = 23
    end
    object EdFechaInteres: TStaticText
      Left = 118
      Top = 185
      Width = 89
      Height = 21
      Alignment = taRightJustify
      AutoSize = False
      BorderStyle = sbsSunken
      Color = clWhite
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentColor = False
      ParentFont = False
      TabOrder = 24
    end
    object EdEnteAprobador: TStaticText
      Left = 222
      Top = 185
      Width = 131
      Height = 21
      Alignment = taRightJustify
      AutoSize = False
      BorderStyle = sbsSunken
      Color = clWhite
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentColor = False
      ParentFont = False
      TabOrder = 25
    end
    object EdNotaContable: TStaticText
      Left = 370
      Top = 185
      Width = 75
      Height = 21
      Alignment = taRightJustify
      AutoSize = False
      BorderStyle = sbsSunken
      Color = clWhite
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentColor = False
      ParentFont = False
      TabOrder = 26
    end
    object EdTotalCuotas: TStaticText
      Left = 460
      Top = 185
      Width = 85
      Height = 21
      Alignment = taRightJustify
      AutoSize = False
      BorderStyle = sbsSunken
      Color = clWhite
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentColor = False
      ParentFont = False
      TabOrder = 27
    end
  end
  object Panel4: TPanel
    Left = 0
    Top = 348
    Width = 564
    Height = 29
    Align = alBottom
    Color = clOlive
    TabOrder = 2
    TabStop = True
    object CmdCerrar: TBitBtn
      Left = 476
      Top = 3
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
    object CmdNuevo: TBitBtn
      Left = 394
      Top = 3
      Width = 75
      Height = 25
      Caption = '&Nuevo'
      TabOrder = 0
      OnClick = CmdNuevoClick
      Glyph.Data = {
        36050000424D3605000000000000360400002800000010000000100000000100
        08000000000000010000420B0000420B00000001000000010000CE630000FFD6
        AD00FFE7C600FFEFDE00FFEFE700FFF7EF0042B5F7008CD6F700B5DEF700FF00
        FF003184FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
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
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00090909090909
        090909090909090909090900000000000000000000000000000009000B0B0505
        0303030402020101010009000B0B0B050505030303020202010009000B0B0B0B
        0505050303040201010009000B0B0B0B0B0B050503030302010009000B0B0B0B
        0B0B0B0505030402010009000B0B0B0B0B0B0B0B050A0A0A010009000B0B0B0B
        0B0B0B0B0B0A060A010009000B0B0B0B0B0B0B0A0A0A060A0A0A09000B0B0B0B
        0B0B0B0A07080808070A09000B0B0B0B0B0B0B0A0A0A080A0A0A090000000000
        00000000000A080A000009090000000000000000000A0A0A0009090909090909
        0909090909090909090909090909090909090909090909090909}
    end
    object CmdTablaLiq: TBitBtn
      Left = 7
      Top = 3
      Width = 75
      Height = 25
      Caption = '&Tabla Liq.'
      TabOrder = 2
      OnClick = CmdTablaLiqClick
      Glyph.Data = {
        36050000424D3605000000000000360400002800000010000000100000000100
        08000000000000010000420B0000420B00000001000000010000CE630000CE63
        6300FF9C9C00FFD6A500FFD6AD00FFDEB500FFE7C600FFEFD600FFF7E700FFFF
        F700FF00FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
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
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000A0A0A0A0A0A
        0A0A0A0A0A0A0A0A0A0A0A0000000000000000000000000000000A000B0B0908
        070605040404040404000A000B010109010106010104010104000A000B0B0B0B
        090807060504040404000A000B01010B020208020205020204000A000B0B0B0B
        0B0B09080706050404000A000B01010B02020B020208020204000A000B0B0B0B
        0B0B0B0B0908070305000A000B01010B02020B02020B020206000A000B0B0B0B
        0B0B0B0B0B0B090807000A000B0B0B0B0B0B0B0B0B0B0B0908000A0000000000
        000000000000000000000A0A000000000000000000000000000A0A0A0A0A0A0A
        0A0A0A0A0A0A0A0A0A0A0A0A0A0A0A0A0A0A0A0A0A0A0A0A0A0A}
    end
    object CmdGarantias: TBitBtn
      Left = 87
      Top = 3
      Width = 75
      Height = 25
      Caption = '&Garant'#237'as'
      TabOrder = 3
      OnClick = CmdGarantiasClick
      Glyph.Data = {
        36050000424D3605000000000000360400002800000010000000100000000100
        08000000000000010000230B0000230B0000000100000001000098586A009860
        6A00A16A6A00B6737300C07B7300EA8F3800FFA13800FFB55200CA847B00D48F
        7B00EAB67300FF00FF00D4B6AB00EFC68C00F7D6AD00F7DEBD00F7E7CE00F7EF
        E700FFF7EF00FFF4F400FFFFFF00000000000000000000000000000000000000
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
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        00000000000000000000000000000000000000000000000000000B0B0B0B0B0B
        0B0B0B0B0B0B0B0B0B0B0B0B0B0B0B0B0B0B0B0B0B0B0B0B0B0B0B0B0B0B0B0B
        0B0B0B0B0B0B0B0B0B0B0B0B020202020202020202020202020B0B0013111010
        101010100F0F0F0E0E020B001213111010101010100F0F0F0E020B0112121111
        111110101010100F0F020B011412121211111110101010100F020B0314141414
        12121111111110100F020B0314141414141212121111111010020B0414141414
        141414121212121211020B0414141414141414141414121212020B0806060606
        0606060606060606060B0B0906060606020B0B0B0B0B0B0B0B0B0B0B09090909
        0B0B0B0B0B0B0B0B0B0B0B0B0B0B0B0B0B0B0B0B0B0B0B0B0B0B}
    end
  end
  object Panel1: TPanel
    Left = 0
    Top = 313
    Width = 556
    Height = 33
    TabOrder = 3
    object Label29: TLabel
      Left = 4
      Top = 11
      Width = 32
      Height = 13
      Caption = 'Asesor'
    end
    object DBListAsesor: TDBLookupComboBox
      Left = 48
      Top = 8
      Width = 409
      Height = 21
      KeyField = 'ASES_ID'
      ListField = 'ASESOR'
      ListSource = DSAsesor
      TabOrder = 0
    end
    object btnCambiarAsesor: TButton
      Left = 464
      Top = 6
      Width = 75
      Height = 22
      Caption = 'Cambiar'
      TabOrder = 1
      OnClick = btnCambiarAsesorClick
    end
  end
  object IBQuery1: TIBQuery
    Database = dmGeneral.IBDatabase1
    Transaction = dmGeneral.IBTransaction1
    Left = 32
    Top = 282
  end
  object IBQuery: TIBQuery
    Database = dmGeneral.IBDatabase1
    Transaction = dmGeneral.IBTransaction1
    SQL.Strings = (
      'SELECT '
      '  "col$colocacion".ID_COLOCACION,'
      '  "col$colocacion".ID_IDENTIFICACION,'
      '  "col$colocacion".ID_PERSONA,'
      '  "col$colocacion".FECHA_DESEMBOLSO,'
      '  "col$colocacion".VALOR_DESEMBOLSO,'
      
        '  ("col$colocacion".VALOR_DESEMBOLSO -  "col$colocacion".ABONOS_' +
        'CAPITAL) AS SALDO_ACTUAL,'
      '  "col$colocacion".PLAZO_COLOCACION,'
      '  "col$colocacion".TIPO_INTERES,'
      '  "col$colocacion".TASA_INTERES_CORRIENTE,'
      '  "col$colocacion".TASA_INTERES_MORA,'
      '  "col$colocacion".PUNTOS_INTERES,'
      '  "col$colocacion".AMORTIZA_CAPITAL,'
      '  "col$colocacion".AMORTIZA_INTERES,'
      '  "col$colocacion".PERIODO_GRACIA,'
      '  "col$colocacion".DIAS_PRORROGADOS,'
      '  "col$colocacion".VALOR_CUOTA,'
      '  "col$colocacion".FECHA_CAPITAL,'
      '  "col$colocacion".FECHA_INTERES,'
      '  "col$enteaprobador"."DESCRIPCION_ENTE_APROBADOR",'
      '  "col$colocacion"."NOTA_CONTABLE",'
      '  "col$estado".DESCRIPCION_ESTADO_COLOCACION,'
      '  "col$estado".ES_PREJURIDICO,'
      '  "col$estado".ES_JURIDICO,'
      '  "col$estado".ES_CASTIGADO,'
      '  "col$estado".ES_NOVISADO,'
      '  "col$estado".ES_ANULADO,'
      '  "col$estado".ES_CANCELADO,'
      '  "col$clasificacion".DESCRIPCION_CLASIFICACION,'
      '  "col$inversion".DESCRIPCION_INVERSION,'
      '  "col$lineas".DESCRIPCION_LINEA,'
      '  "col$respaldo".DESCRIPCION_RESPALDO,'
      '  "col$garantia".DESCRIPCION_GARANTIA,'
      '  "col$tiposcuota".DESCRIPCION_TIPO_CUOTA,'
      '  "col$tiposcuota".CAPITAL,'
      '  "col$tiposcuota".INTERES,'
      '  "col$tiposcuota".TIPO_CUOTA'
      'FROM'
      '  "col$colocacion"'
      
        '  INNER JOIN "col$clasificacion" ON ("col$colocacion".ID_CLASIFI' +
        'CACION = "col$clasificacion".ID_CLASIFICACION)'
      
        '  INNER JOIN "col$estado" ON ("col$colocacion".ID_ESTADO_COLOCAC' +
        'ION = "col$estado".ID_ESTADO_COLOCACION)'
      
        '  INNER JOIN "col$enteaprobador" ON ("col$colocacion".ID_ENTE_AP' +
        'ROBADOR = "col$enteaprobador".ID_ENTE_APROBADOR)'
      
        '  INNER JOIN "col$respaldo" ON ("col$colocacion".ID_RESPALDO = "' +
        'col$respaldo".ID_RESPALDO)'
      
        '  INNER JOIN "col$inversion" ON ("col$colocacion".ID_INVERSION =' +
        ' "col$inversion".ID_INVERSION)'
      
        '  INNER JOIN "col$lineas" ON ("col$colocacion".ID_LINEA = "col$l' +
        'ineas".ID_LINEA)'
      
        '  INNER JOIN "col$garantia" ON ("col$colocacion".ID_GARANTIA = "' +
        'col$garantia".ID_GARANTIA)'
      
        '  LEFT OUTER JOIN "col$tasavariables" ON ("col$colocacion".ID_IN' +
        'TERES = "col$tasavariables".ID_INTERES)'
      
        '  INNER JOIN "col$tiposcuota" ON ("col$colocacion".ID_TIPO_CUOTA' +
        ' = "col$tiposcuota".ID_TIPOS_CUOTA)'
      
        '  LEFT OUTER JOIN "gen$persona" ON ("col$colocacion".ID_IDENTIFI' +
        'CACION = "gen$persona".ID_IDENTIFICACION) AND ("col$colocacion".' +
        'ID_PERSONA = "gen$persona".ID_PERSONA) '
      
        'JOIN "gen$tiposidentificacion" ON ("col$colocacion".ID_IDENTIFIC' +
        'ACION = "gen$tiposidentificacion".ID_IDENTIFICACION)'
      ' WHERE'
      '(ID_AGENCIA = :"ID_AGENCIA") AND'
      '(ID_COLOCACION = :"ID_COLOCACION")')
    Left = 8
    Top = 282
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
  object IBCuotas: TIBQuery
    Database = dmGeneral.IBDatabase1
    Transaction = dmGeneral.IBTransaction1
    Left = 56
    Top = 280
  end
  object IBQAgencia: TIBQuery
    SQL.Strings = (
      'select * from "gen$agencia"')
    Left = 136
    Top = 8
  end
  object DSAgencia: TDataSource
    DataSet = IBQAgencia
    Left = 168
    Top = 8
  end
  object DSAsesor: TDataSource
    DataSet = IBQAsesor
    Left = 88
    Top = 312
  end
  object IBQAsesor: TIBQuery
    Database = dmGeneral.IBDatabase1
    Transaction = dmGeneral.IBTransaction1
    SQL.Strings = (
      
        'SELECT a.ASES_ID, e.NOMBRE || '#39' '#39' || e.PRIMER_APELLIDO || '#39' '#39' ||' +
        ' e.SEGUNDO_APELLIDO AS ASESOR FROM ASESOR a'
      'INNER JOIN "gen$empleado" e ON e.ID_EMPLEADO = a.ID_EMPLEADO'
      'ORDER BY ASESOR')
    Left = 120
    Top = 312
  end
  object IBQueryChangeAsesor: TIBQuery
    Left = 104
    Top = 280
  end
  object IBTransaction1: TIBTransaction
    Left = 136
    Top = 280
  end
end
