object frmInformeCausacionyProvision: TfrmInformeCausacionyProvision
  Left = 524
  Top = 318
  Width = 547
  Height = 80
  Caption = 'Informe Causaci'#243'n y Provisi'#243'n de Cartera'
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
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 537
    Height = 41
    TabOrder = 0
    object Label1: TLabel
      Left = 8
      Top = 11
      Width = 129
      Height = 13
      Caption = 'Fecha de Corte Causaci'#243'n:'
    end
    object edFechaCorte: TDateTimePicker
      Left = 144
      Top = 8
      Width = 97
      Height = 21
      CalAlignment = dtaLeft
      Date = 43243.480648669
      Time = 43243.480648669
      DateFormat = dfShort
      DateMode = dmComboBox
      Kind = dtkDate
      ParseInput = False
      TabOrder = 0
    end
    object btnAExcel: TButton
      Left = 250
      Top = 6
      Width = 75
      Height = 25
      Caption = 'A &Excel'
      TabOrder = 1
      OnClick = btnAExcelClick
    end
    object btnCerrar: TButton
      Left = 456
      Top = 8
      Width = 75
      Height = 25
      Caption = '&Cerrar'
      TabOrder = 2
      OnClick = btnCerrarClick
    end
  end
  object IBQdata: TIBQuery
    SQL.Strings = (
      'SELECT * FROM CARTERA_MES_REPORTE(:FECHA_CORTE)')
    Left = 344
    Top = 8
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'FECHA_CORTE'
        ParamType = ptUnknown
      end>
  end
  object CDSdata: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'DSPdata'
    Left = 424
    Top = 8
  end
  object DSPdata: TDataSetProvider
    DataSet = IBQdata
    Constraints = True
    Left = 384
    Top = 8
  end
  object SD1: TSaveDialog
    Left = 368
    Top = 8
  end
end
