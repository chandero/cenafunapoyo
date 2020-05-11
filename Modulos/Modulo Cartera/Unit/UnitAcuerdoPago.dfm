object frmAcuerdoPago: TfrmAcuerdoPago
  Left = 400
  Top = 141
  Width = 704
  Height = 508
  Caption = 'Acuerdo de Pago'
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
  object Label1: TLabel
    Left = 8
    Top = 8
    Width = 53
    Height = 13
    Caption = 'Colocaci'#243'n'
  end
  object Asociado: TLabel
    Left = 208
    Top = 8
    Width = 44
    Height = 13
    Caption = 'Asociado'
  end
  object Label2: TLabel
    Left = 8
    Top = 40
    Width = 90
    Height = 13
    Caption = 'Fecha del Acuerdo'
  end
  object Label3: TLabel
    Left = 8
    Top = 72
    Width = 116
    Height = 13
    Caption = 'Descripci'#243'n del Acuerdo'
  end
  object Label4: TLabel
    Left = 8
    Top = 152
    Width = 40
    Height = 13
    Caption = 'Acuerdo'
  end
  object Label9: TLabel
    Left = 208
    Top = 40
    Width = 27
    Height = 13
    Caption = 'Saldo'
  end
  object edColocacion: TEdit
    Left = 72
    Top = 6
    Width = 121
    Height = 21
    MaxLength = 11
    TabOrder = 0
    Text = 'edColocacion'
  end
  object edAsociado: TEdit
    Left = 256
    Top = 5
    Width = 401
    Height = 21
    TabOrder = 1
    Text = 'edAsociado'
  end
  object edFecha: TDateTimePicker
    Left = 105
    Top = 37
    Width = 97
    Height = 21
    CalAlignment = dtaLeft
    Date = 43887.4405148148
    Time = 43887.4405148148
    DateFormat = dfShort
    DateMode = dmComboBox
    Kind = dtkDate
    ParseInput = False
    TabOrder = 2
  end
  object edObservacion: TMemo
    Left = 8
    Top = 88
    Width = 649
    Height = 49
    TabOrder = 3
  end
  object DBGAcuerdo: TDBGrid
    Left = 8
    Top = 168
    Width = 681
    Height = 129
    DataSource = DSacuerdo
    TabOrder = 4
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    OnCellClick = DBGAcuerdoCellClick
    Columns = <
      item
        Expanded = False
        FieldName = 'ID'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'FECHA'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'VALOR'
        Width = 121
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CUMPLIDO'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'FECHA_CUMPLIDO'
        Width = 100
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'VALOR_PAGADO'
        Width = 106
        Visible = True
      end>
  end
  object Panel1: TPanel
    Left = 8
    Top = 440
    Width = 649
    Height = 33
    TabOrder = 5
    object btnCerrar: TBitBtn
      Left = 568
      Top = 5
      Width = 75
      Height = 25
      Caption = 'Cerrar'
      TabOrder = 0
      OnClick = btnCerrarClick
    end
    object btnActualizar: TBitBtn
      Left = 4
      Top = 5
      Width = 75
      Height = 25
      Caption = 'Actualizar'
      TabOrder = 1
      OnClick = btnActualizarClick
    end
  end
  object Panel2: TPanel
    Left = 8
    Top = 304
    Width = 649
    Height = 121
    TabOrder = 6
    object Label5: TLabel
      Left = 8
      Top = 8
      Width = 30
      Height = 13
      Caption = 'Fecha'
    end
    object Label6: TLabel
      Left = 168
      Top = 8
      Width = 24
      Height = 13
      Caption = 'Valor'
    end
    object Label7: TLabel
      Left = 264
      Top = 8
      Width = 43
      Height = 13
      Caption = 'Cumplido'
    end
    object Label8: TLabel
      Left = 328
      Top = 8
      Width = 76
      Height = 13
      Caption = 'Fecha Cumplido'
    end
    object Label10: TLabel
      Left = 8
      Top = 73
      Width = 53
      Height = 13
      Caption = 'A Partir Del'
    end
    object Label11: TLabel
      Left = 167
      Top = 74
      Width = 24
      Height = 13
      Caption = 'Valor'
    end
    object Label12: TLabel
      Left = 272
      Top = 72
      Width = 33
      Height = 13
      Caption = 'Cuotas'
    end
    object Label13: TLabel
      Left = 448
      Top = 9
      Width = 64
      Height = 13
      Caption = 'Valor Pagado'
    end
    object edFechaAcuerdo: TDateTimePicker
      Left = 8
      Top = 32
      Width = 89
      Height = 21
      CalAlignment = dtaLeft
      Date = 43888.6074930093
      Time = 43888.6074930093
      DateFormat = dfShort
      DateMode = dmComboBox
      Kind = dtkDate
      ParseInput = False
      TabOrder = 0
    end
    object edValorAcuerdo: TJvCurrencyEdit
      Left = 112
      Top = 32
      Width = 137
      Height = 21
      Alignment = taRightJustify
      ReadOnly = False
      TabOrder = 1
      HasMaxValue = False
      HasMinValue = False
    end
    object edCumplido: TCheckBox
      Left = 280
      Top = 32
      Width = 25
      Height = 17
      TabOrder = 2
    end
    object edFechaCumplido: TDateTimePicker
      Left = 322
      Top = 32
      Width = 89
      Height = 21
      CalAlignment = dtaLeft
      Date = 43888.6074930093
      Time = 43888.6074930093
      DateFormat = dfShort
      DateMode = dmComboBox
      Kind = dtkDate
      ParseInput = False
      TabOrder = 3
    end
    object Panel3: TPanel
      Left = 551
      Top = 1
      Width = 97
      Height = 119
      Align = alRight
      Color = clOlive
      TabOrder = 4
      object btnAgregar: TBitBtn
        Left = 14
        Top = 3
        Width = 75
        Height = 25
        Caption = 'Agregar'
        TabOrder = 0
        OnClick = btnAgregarClick
      end
      object btnModificar: TBitBtn
        Left = 14
        Top = 34
        Width = 75
        Height = 25
        Caption = 'Modificar'
        TabOrder = 1
        OnClick = btnModificarClick
      end
      object btnEliminar: TBitBtn
        Left = 14
        Top = 64
        Width = 75
        Height = 25
        Caption = 'Eliminar'
        TabOrder = 2
        OnClick = btnEliminarClick
      end
    end
    object edFechaMultiple: TDateTimePicker
      Left = 8
      Top = 88
      Width = 89
      Height = 21
      CalAlignment = dtaLeft
      Date = 43888.6074930093
      Time = 43888.6074930093
      DateFormat = dfShort
      DateMode = dmComboBox
      Kind = dtkDate
      ParseInput = False
      TabOrder = 5
    end
    object edValorMultiple: TJvCurrencyEdit
      Left = 111
      Top = 88
      Width = 137
      Height = 21
      Alignment = taRightJustify
      ReadOnly = False
      TabOrder = 6
      HasMaxValue = False
      HasMinValue = False
    end
    object edCuotas: TJvIntegerEdit
      Left = 264
      Top = 88
      Width = 49
      Height = 21
      Alignment = taRightJustify
      ReadOnly = False
      TabOrder = 7
      Value = 0
      MaxValue = 0
      MinValue = 0
      HasMaxValue = False
      HasMinValue = False
    end
    object btnAgregarMultiples: TBitBtn
      Left = 322
      Top = 85
      Width = 75
      Height = 25
      Caption = 'Agregar'
      TabOrder = 8
      OnClick = btnAgregarMultiplesClick
    end
    object edValorPagado: TJvCurrencyEdit
      Left = 413
      Top = 31
      Width = 137
      Height = 21
      Alignment = taRightJustify
      ReadOnly = False
      TabOrder = 9
      HasMaxValue = False
      HasMinValue = False
    end
  end
  object edSaldoActual: TJvCurrencyEdit
    Left = 256
    Top = 38
    Width = 137
    Height = 21
    Alignment = taRightJustify
    ReadOnly = False
    TabOrder = 7
    HasMaxValue = False
    HasMinValue = False
  end
  object CDSacuerdo: TClientDataSet
    Active = True
    Aggregates = <>
    FieldDefs = <
      item
        Name = 'ID'
        DataType = ftInteger
      end
      item
        Name = 'FECHA'
        DataType = ftDate
      end
      item
        Name = 'VALOR'
        DataType = ftCurrency
      end
      item
        Name = 'CUMPLIDO'
        DataType = ftBoolean
      end
      item
        Name = 'FECHA_CUMPLIDO'
        DataType = ftDate
      end
      item
        Name = 'VALOR_PAGADO'
        DataType = ftCurrency
      end>
    IndexDefs = <
      item
        Name = 'DEFAULT_ORDER'
      end
      item
        Name = 'CHANGEINDEX'
      end
      item
        Name = 'CDSacuerdoIndexFECHA'
        Fields = 'FECHA'
      end>
    IndexName = 'CDSacuerdoIndexFECHA'
    Params = <>
    StoreDefs = True
    Left = 208
    Top = 144
    Data = {
      BC0000009619E0BD010000001800000006000000000003000000BC0002494404
      0001000000000005464543484104000600000000000556414C4F520800040000
      00010007535542545950450200490006004D6F6E6579000843554D504C49444F
      02000300000000000E46454348415F43554D504C49444F04000600000000000C
      56414C4F525F50414741444F0800040000000100075355425459504502004900
      06004D6F6E65790001000D44454641554C545F4F524445520200820000000000}
    object CDSacuerdoID: TIntegerField
      DisplayWidth = 12
      FieldName = 'ID'
    end
    object CDSacuerdoFECHA: TDateField
      DisplayWidth = 22
      FieldName = 'FECHA'
    end
    object CDSacuerdoVALOR: TCurrencyField
      DisplayWidth = 24
      FieldName = 'VALOR'
    end
    object CDSacuerdoCUMPLIDO: TBooleanField
      DisplayWidth = 15
      FieldName = 'CUMPLIDO'
    end
    object CDSacuerdoFECHA_CUMPLIDO: TDateField
      DisplayWidth = 20
      FieldName = 'FECHA_CUMPLIDO'
    end
    object CDSacuerdoVALOR_PAGADO: TCurrencyField
      FieldName = 'VALOR_PAGADO'
    end
  end
  object DSacuerdo: TDataSource
    DataSet = CDSacuerdo
    Left = 176
    Top = 144
  end
  object IBQacuerdo: TIBQuery
    Left = 256
    Top = 64
  end
  object IBTransaction1: TIBTransaction
    Left = 288
    Top = 64
  end
  object IBQtabla: TIBQuery
    Left = 320
    Top = 64
  end
end
