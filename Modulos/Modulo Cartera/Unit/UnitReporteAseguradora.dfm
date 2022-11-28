object frmReporteAseguradora: TfrmReporteAseguradora
  Left = 350
  Top = 129
  Width = 749
  Height = 363
  Caption = 'Reporte Aseguradora'
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
  object Label1: TLabel
    Left = 4
    Top = 10
    Width = 76
    Height = 13
    Caption = 'Fecha de Corte:'
  end
  object Label2: TLabel
    Left = 184
    Top = 8
    Width = 55
    Height = 13
    Caption = 'Edad Limite'
  end
  object Label3: TLabel
    Left = 296
    Top = 8
    Width = 60
    Height = 13
    Caption = 'Monto Limite'
  end
  object EdFechaCorte: TDateTimePicker
    Left = 84
    Top = 6
    Width = 87
    Height = 21
    CalAlignment = dtaLeft
    Date = 38014.6921062963
    Time = 38014.6921062963
    Color = clWhite
    DateFormat = dfShort
    DateMode = dmComboBox
    Kind = dtkDate
    ParseInput = False
    TabOrder = 0
  end
  object btnProcesar: TBitBtn
    Left = 640
    Top = 4
    Width = 75
    Height = 25
    Caption = '&Procesar'
    TabOrder = 1
    OnClick = btnProcesarClick
  end
  object DBGaseguradora: TDBGrid
    Left = 8
    Top = 32
    Width = 721
    Height = 265
    Color = clWhite
    DataSource = DSaseguradora
    TabOrder = 2
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clBlack
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'ID_PERSONA'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'FECHA_NACIMIENTO'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'SEXO'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'NOMBRE'
        Width = 300
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'SALDO'
        Width = 81
        Visible = True
      end>
  end
  object btnCerrar: TBitBtn
    Left = 648
    Top = 302
    Width = 75
    Height = 25
    Caption = 'Cerrar'
    TabOrder = 3
    OnClick = btnCerrarClick
  end
  object btnExportar: TBitBtn
    Left = 8
    Top = 302
    Width = 113
    Height = 25
    Caption = 'Exportar a Excel'
    TabOrder = 4
    OnClick = btnExportarClick
  end
  object EdEdad: TJvIntegerEdit
    Left = 248
    Top = 4
    Width = 41
    Height = 21
    Alignment = taRightJustify
    Color = clWhite
    ReadOnly = False
    TabOrder = 5
    Value = 70
    MaxValue = 0
    MinValue = 0
    HasMaxValue = False
    HasMinValue = False
  end
  object EdMonto: TJvCurrencyEdit
    Left = 367
    Top = 5
    Width = 121
    Height = 21
    Alignment = taRightJustify
    Color = clWhite
    ReadOnly = False
    TabOrder = 6
    Value = 10000000
    HasMaxValue = False
    HasMinValue = False
  end
  object DSaseguradora: TDataSource
    DataSet = CDSaseguradora
    Left = 336
    Top = 32
  end
  object CDSaseguradora: TClientDataSet
    Active = True
    Aggregates = <>
    FieldDefs = <
      item
        Name = 'ID_PERSONA'
        DataType = ftInteger
      end
      item
        Name = 'FECHA_NACIMIENTO'
        DataType = ftDate
      end
      item
        Name = 'SEXO'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'NOMBRE'
        DataType = ftString
        Size = 500
      end
      item
        Name = 'SALDO'
        DataType = ftCurrency
      end
      item
        Name = 'PAGARE'
        DataType = ftString
        Size = 11
      end>
    IndexDefs = <>
    Params = <>
    StoreDefs = True
    Left = 368
    Top = 32
    Data = {
      B70000009619E0BD010000001800000006000000000003000000B7000A49445F
      504552534F4E4104000100000000001046454348415F4E4143494D49454E544F
      0400060000000000045345584F01004900000001000557494454480200020014
      00064E4F4D425245020049000000010005574944544802000200F4010553414C
      444F080004000000010007535542545950450200490006004D6F6E6579000650
      41474152450100490000000100055749445448020002000B000000}
    object CDSaseguradoraID_PERSONA: TIntegerField
      FieldName = 'ID_PERSONA'
    end
    object CDSaseguradoraFECHA_NACIMIENTO: TDateField
      FieldName = 'FECHA_NACIMIENTO'
    end
    object CDSaseguradoraSEXO: TStringField
      FieldName = 'SEXO'
    end
    object CDSaseguradoraNOMBRE: TStringField
      FieldName = 'NOMBRE'
      Size = 500
    end
    object CDSaseguradoraSALDO: TCurrencyField
      FieldName = 'SALDO'
    end
    object CDSaseguradoraPAGARE: TStringField
      FieldName = 'PAGARE'
      Size = 11
    end
  end
  object IBQcartera: TIBQuery
    SQL.Strings = (
      'SELECT p.ID_PERSONA, p.FECHA_NACIMIENTO, p.SEXO, '
      
        '(p.NOMBRE || '#39' '#39' || p.PRIMER_APELLIDO || '#39' '#39' || p.SEGUNDO_APELLI' +
        'DO) AS NOMBRE, '
      'c.DEUDA, c.FECHA_DESEMBOLSO, c.ID_COLOCACION'
      'FROM "col$causaciondiaria" c '
      
        'INNER JOIN "gen$persona" p ON c.ID_IDENTIFICACION = p.ID_IDENTIF' +
        'ICACION and c.ID_PERSONA = p.ID_PERSONA'
      'WHERE c.FECHA_CORTE = :FECHA_CORTE and p.ID_TIPO_PERSONA = 1'
      'ORDER BY p.ID_PERSONA, c.DEUDA DESC')
    Left = 400
    Top = 32
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'FECHA_CORTE'
        ParamType = ptUnknown
      end>
  end
  object Save: TSaveDialog
    Left = 216
    Top = 304
  end
  object CDSdatos: TClientDataSet
    Active = True
    Aggregates = <>
    FieldDefs = <
      item
        Name = 'ID_PERSONA'
        DataType = ftInteger
      end
      item
        Name = 'FECHA_NACIMIENTO'
        DataType = ftDate
      end
      item
        Name = 'SEXO'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'NOMBRE'
        DataType = ftString
        Size = 500
      end
      item
        Name = 'SALDO'
        DataType = ftCurrency
      end>
    IndexDefs = <>
    Params = <>
    StoreDefs = True
    Left = 368
    Top = 64
    Data = {
      9C0000009619E0BD0100000018000000050000000000030000009C000A49445F
      504552534F4E4104000100000000001046454348415F4E4143494D49454E544F
      0400060000000000045345584F01004900000001000557494454480200020014
      00064E4F4D425245020049000000010005574944544802000200F4010553414C
      444F080004000000010007535542545950450200490006004D6F6E6579000000}
    object CDSdatosID_PERSONA: TIntegerField
      FieldName = 'ID_PERSONA'
    end
    object CDSdatosFECHA_NACIMIENTO: TDateField
      FieldName = 'FECHA_NACIMIENTO'
    end
    object CDSdatosSEXO: TStringField
      FieldName = 'SEXO'
    end
    object CDSdatosNOMBRE: TStringField
      FieldName = 'NOMBRE'
      Size = 500
    end
    object CDSdatosSALDO: TCurrencyField
      FieldName = 'SALDO'
    end
  end
end
