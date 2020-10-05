object frmGenerarCodigoReversionCartera: TfrmGenerarCodigoReversionCartera
  Left = 486
  Top = 203
  Width = 381
  Height = 128
  Caption = 'frmGenerarCodigoReversionCartera'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object btnGenerar: TBitBtn
    Left = 8
    Top = 32
    Width = 89
    Height = 25
    Caption = 'Generar C'#243'digo'
    TabOrder = 0
    OnClick = btnGenerarClick
  end
  object edCodigo: TEdit
    Left = 112
    Top = 34
    Width = 241
    Height = 21
    ReadOnly = True
    TabOrder = 1
  end
  object btnCerrar: TBitBtn
    Left = 280
    Top = 64
    Width = 75
    Height = 25
    Caption = 'Cerrar'
    TabOrder = 2
    OnClick = btnCerrarClick
  end
  object btnGuardar: TButton
    Left = 8
    Top = 64
    Width = 75
    Height = 25
    Caption = 'Guardar'
    TabOrder = 3
    OnClick = btnGuardarClick
  end
  object rgOpcion: TRadioGroup
    Left = 8
    Top = 0
    Width = 345
    Height = 29
    Caption = 'Tipo C'#243'digo'
    Columns = 2
    ItemIndex = 0
    Items.Strings = (
      'Anular Abono'
      'Certificaci'#243'n de Cartera')
    TabOrder = 4
  end
  object IBQguardar: TIBQuery
    SQL.Strings = (
      
        'INSERT INTO GEN$CODIGOAPROBACION (COAP_TIPO, COAP_DESCRIPCION, C' +
        'OAP_ESTADO, COAP_CODIGO, COAP_GENERADO) VALUES (:COAP_TIPO,  :CO' +
        'AP_DESCRIPCION, :COAP_ESTADO, :COAP_CODIGO, :COAP_GENERADO)')
    Left = 96
    Top = 48
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'COAP_TIPO'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'COAP_DESCRIPCION'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'COAP_ESTADO'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'COAP_CODIGO'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'COAP_GENERADO'
        ParamType = ptUnknown
      end>
  end
end
