object frmAnularAbono: TfrmAnularAbono
  Left = 465
  Top = 176
  Width = 720
  Height = 325
  Caption = 'Anular Abono'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clBlack
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  OnCreate = FormCreate
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Label0: TLabel
    Left = 8
    Top = 8
    Width = 53
    Height = 13
    Caption = 'Colocaci'#243'n'
  end
  object Label_0: TLabel
    Left = 215
    Top = 8
    Width = 37
    Height = 13
    Caption = 'Nombre'
  end
  object Label1: TLabel
    Left = 8
    Top = 32
    Width = 63
    Height = 13
    Caption = 'Comprobante'
  end
  object Label2: TLabel
    Left = 8
    Top = 56
    Width = 66
    Height = 13
    Caption = 'Abono Capital'
  end
  object Label3: TLabel
    Left = 8
    Top = 80
    Width = 76
    Height = 13
    Caption = 'Abono Causado'
  end
  object Label4: TLabel
    Left = 8
    Top = 104
    Width = 84
    Height = 13
    Caption = 'Abono Anticipado'
  end
  object Label5: TLabel
    Left = 8
    Top = 152
    Width = 58
    Height = 13
    Caption = 'Abono Mora'
  end
  object Label6: TLabel
    Left = 8
    Top = 127
    Width = 72
    Height = 13
    Caption = 'Abono Servicio'
  end
  object Label7: TLabel
    Left = 168
    Top = 32
    Width = 64
    Height = 13
    Caption = 'Fecha Abono'
  end
  object Label8: TLabel
    Left = 256
    Top = 56
    Width = 65
    Height = 13
    Caption = 'Fecha Capital'
  end
  object Label9: TLabel
    Left = 256
    Top = 80
    Width = 65
    Height = 13
    Caption = 'Fecha Inter'#233's'
  end
  object Label10: TLabel
    Left = 8
    Top = 190
    Width = 62
    Height = 13
    Caption = 'Nuevo Saldo'
  end
  object Label11: TLabel
    Left = 8
    Top = 216
    Width = 109
    Height = 13
    Caption = 'Nueva Fecha a Capital'
  end
  object Label12: TLabel
    Left = 8
    Top = 240
    Width = 109
    Height = 13
    Caption = 'Nueva Fecha a Inter'#233's'
  end
  object Label13: TLabel
    Left = 352
    Top = 32
    Width = 60
    Height = 13
    Caption = 'Saldo Actual'
  end
  object edColocacion: TEdit
    Left = 66
    Top = 5
    Width = 142
    Height = 21
    Color = clWhite
    ReadOnly = True
    TabOrder = 0
    Text = 'edColocacion'
  end
  object edNombre: TEdit
    Left = 256
    Top = 5
    Width = 441
    Height = 21
    ReadOnly = True
    TabOrder = 1
    Text = 'edNombre'
  end
  object edComprobante: TEdit
    Left = 77
    Top = 29
    Width = 76
    Height = 21
    ReadOnly = True
    TabOrder = 2
    Text = 'edComprobante'
  end
  object edFecha: TEdit
    Left = 240
    Top = 28
    Width = 105
    Height = 21
    ReadOnly = True
    TabOrder = 3
    Text = 'edFecha'
  end
  object edAbonoCapital: TJvCurrencyEdit
    Left = 120
    Top = 54
    Width = 121
    Height = 21
    Alignment = taRightJustify
    ReadOnly = True
    TabOrder = 4
    Value = 1
    HasMaxValue = False
    HasMinValue = False
    ClipBoardCommands = [caCopy]
  end
  object edAbonoCausado: TJvCurrencyEdit
    Left = 120
    Top = 78
    Width = 121
    Height = 21
    Alignment = taRightJustify
    ReadOnly = True
    TabOrder = 5
    Value = 1
    HasMaxValue = False
    HasMinValue = False
    ClipBoardCommands = [caCopy]
  end
  object edAbonoAnticipado: TJvCurrencyEdit
    Left = 120
    Top = 102
    Width = 121
    Height = 21
    Alignment = taRightJustify
    ReadOnly = True
    TabOrder = 6
    Value = 1
    HasMaxValue = False
    HasMinValue = False
    ClipBoardCommands = [caCopy]
  end
  object edAbonoServicio: TJvCurrencyEdit
    Left = 120
    Top = 126
    Width = 121
    Height = 21
    Alignment = taRightJustify
    ReadOnly = True
    TabOrder = 7
    Value = 1
    HasMaxValue = False
    HasMinValue = False
    ClipBoardCommands = [caCopy]
  end
  object edAbonoMora: TJvCurrencyEdit
    Left = 120
    Top = 150
    Width = 121
    Height = 21
    Alignment = taRightJustify
    ReadOnly = True
    TabOrder = 8
    Value = 1
    HasMaxValue = False
    HasMinValue = False
    ClipBoardCommands = [caCopy]
  end
  object edFechaCapitalActual: TEdit
    Left = 328
    Top = 52
    Width = 105
    Height = 21
    ReadOnly = True
    TabOrder = 9
    Text = 'edFecha'
  end
  object edFechaInteresActual: TEdit
    Left = 328
    Top = 76
    Width = 105
    Height = 21
    ReadOnly = True
    TabOrder = 10
    Text = 'edFecha'
  end
  object edNuevoSaldo: TJvCurrencyEdit
    Left = 80
    Top = 184
    Width = 161
    Height = 21
    Alignment = taRightJustify
    ReadOnly = False
    TabOrder = 11
    OnExit = edNuevoSaldoExit
    Value = 5
    HasMaxValue = False
    HasMinValue = False
  end
  object edNuevaFechaCapital: TDateTimePicker
    Left = 123
    Top = 212
    Width = 118
    Height = 21
    CalAlignment = dtaLeft
    Date = 43081.3838083102
    Time = 43081.3838083102
    DateFormat = dfShort
    DateMode = dmComboBox
    Kind = dtkDate
    ParseInput = False
    TabOrder = 12
    OnExit = edNuevaFechaCapitalExit
  end
  object edNuevaFechaInteres: TDateTimePicker
    Left = 123
    Top = 236
    Width = 118
    Height = 21
    CalAlignment = dtaLeft
    Date = 43081.3838083102
    Time = 43081.3838083102
    DateFormat = dfShort
    DateMode = dmComboBox
    Kind = dtkDate
    ParseInput = False
    TabOrder = 13
    OnExit = edNuevaFechaInteresExit
  end
  object Panel1: TPanel
    Left = 0
    Top = 263
    Width = 712
    Height = 28
    Align = alBottom
    Color = clOlive
    TabOrder = 14
    object btnAnular: TBitBtn
      Left = 9
      Top = 2
      Width = 75
      Height = 25
      Caption = '&Anular'
      TabOrder = 0
      OnClick = btnAnularClick
    end
    object btnCerrar: TBitBtn
      Left = 628
      Top = 2
      Width = 75
      Height = 25
      Caption = '&Cerrar'
      TabOrder = 1
      OnClick = btnCerrarClick
    end
  end
  object edSaldoActual: TJvCurrencyEdit
    Left = 432
    Top = 30
    Width = 121
    Height = 21
    Alignment = taRightJustify
    ReadOnly = True
    TabOrder = 15
    Value = 1
    HasMaxValue = False
    HasMinValue = False
    ClipBoardCommands = [caCopy]
  end
end
