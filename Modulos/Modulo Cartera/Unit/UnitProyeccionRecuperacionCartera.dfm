object frmProyeccionRecuperacionCartera: TfrmProyeccionRecuperacionCartera
  Left = 516
  Top = 267
  Width = 344
  Height = 124
  Caption = 'Informe Proyecci'#243'n Recuperaci'#243'n Cartera'
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
  object Label1: TLabel
    Left = 8
    Top = 8
    Width = 131
    Height = 13
    Caption = 'Fecha Inicial de Proyecci'#243'n'
  end
  object Label2: TLabel
    Left = 8
    Top = 32
    Width = 126
    Height = 13
    Caption = 'Fecha Final de Proyecci'#243'n'
  end
  object EdFechaInicio: TDateTimePicker
    Left = 160
    Top = 4
    Width = 164
    Height = 21
    CalAlignment = dtaLeft
    Date = 42887.7091465162
    Time = 42887.7091465162
    DateFormat = dfShort
    DateMode = dmComboBox
    Kind = dtkDate
    ParseInput = False
    TabOrder = 0
  end
  object btnExcel: TBitBtn
    Left = 191
    Top = 56
    Width = 131
    Height = 25
    Caption = 'Exportar a Excel'
    TabOrder = 1
    OnClick = btnExcelClick
  end
  object EdFechaFinal: TDateTimePicker
    Left = 160
    Top = 28
    Width = 164
    Height = 21
    CalAlignment = dtaLeft
    Date = 42887.7091465162
    Time = 42887.7091465162
    DateFormat = dfShort
    DateMode = dmComboBox
    Kind = dtkDate
    ParseInput = False
    TabOrder = 2
  end
  object IBQuery1: TIBQuery
    SQL.Strings = (
      
        'SELECT EXTRACT(YEAR FROM t.FECHA_A_PAGAR), EXTRACT(MONTH FROM t.' +
        'FECHA_A_PAGAR), SUM(t.CAPITAL_A_PAGAR), SUM(t.INTERES_A_PAGAR)  ' +
        'FROM "col$colocacion" c'
      
        'INNER JOIN "col$tablaliquidacion" t ON c.ID_COLOCACION = t.ID_CO' +
        'LOCACION'
      
        'WHERE t.FECHA_A_PAGAR >= :FECHA_INICIAL and t.FECHA_A_PAGAR <= :' +
        'FECHA_FINAL'
      'GROUP BY t.FECHA_A_PAGAR')
    Left = 96
    Top = 56
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
      end>
  end
  object CDSdata: TClientDataSet
    Active = True
    Aggregates = <>
    Params = <>
    Left = 136
    Top = 56
    Data = {
      7B0000009619E0BD0100000018000000040000000000030000007B0004414E48
      4F0400010000000000034D45530400010000000000074341504954414C080004
      000000010007535542545950450200490006004D6F6E65790007494E54455245
      53080004000000010007535542545950450200490006004D6F6E6579000000}
    object CDSdataANHO: TIntegerField
      FieldName = 'ANHO'
    end
    object CDSdataMES: TIntegerField
      FieldName = 'MES'
    end
    object CDSdataCAPITAL: TCurrencyField
      FieldName = 'CAPITAL'
    end
    object CDSdataINTERES: TCurrencyField
      FieldName = 'INTERES'
    end
  end
end
