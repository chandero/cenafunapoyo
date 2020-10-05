object frmInformeProyeccionRecuperacionCartera: TfrmInformeProyeccionRecuperacionCartera
  Left = 484
  Top = 347
  Width = 401
  Height = 138
  Caption = 'Informe Proyecci'#243'n de Recuperaci'#243'n de Cartera'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 8
    Top = 8
    Width = 60
    Height = 13
    Caption = 'Fecha Inicial'
  end
  object Label2: TLabel
    Left = 206
    Top = 8
    Width = 55
    Height = 13
    Caption = 'Fecha Final'
  end
  object DateTimePicker1: TDateTimePicker
    Left = 78
    Top = 6
    Width = 93
    Height = 21
    CalAlignment = dtaLeft
    Date = 43315.4744001736
    Time = 43315.4744001736
    DateFormat = dfShort
    DateMode = dmComboBox
    Kind = dtkDate
    ParseInput = False
    TabOrder = 0
  end
  object DateTimePicker2: TDateTimePicker
    Left = 275
    Top = 6
    Width = 94
    Height = 21
    CalAlignment = dtaLeft
    Date = 43315.4744670486
    Time = 43315.4744670486
    DateFormat = dfShort
    DateMode = dmComboBox
    Kind = dtkDate
    ParseInput = False
    TabOrder = 1
  end
end
