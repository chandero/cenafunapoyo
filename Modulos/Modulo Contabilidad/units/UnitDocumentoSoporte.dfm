object frmDocumentoSoporte: TfrmDocumentoSoporte
  Left = 377
  Top = 101
  Width = 697
  Height = 509
  Caption = 'Documento Soporte'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnClose = FormClose
  OnCreate = FormCreate
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 16
    Top = 117
    Width = 56
    Height = 13
    Caption = 'Descripci'#243'n'
  end
  object Label4: TLabel
    Left = 48
    Top = 336
    Width = 62
    Height = 13
    Caption = 'DSA N'#250'mero'
  end
  object Label7: TLabel
    Left = 48
    Top = 354
    Width = 51
    Height = 13
    Caption = 'Respuesta'
  end
  object Panel1: TPanel
    Left = 571
    Top = 0
    Width = 118
    Height = 475
    Align = alRight
    Color = clOlive
    TabOrder = 0
    object btnGenerar: TBitBtn
      Left = 4
      Top = 17
      Width = 109
      Height = 32
      Caption = '&Generar'
      Default = True
      TabOrder = 0
      OnClick = btnGenerarClick
      Glyph.Data = {
        DE010000424DDE01000000000000760000002800000024000000120000000100
        0400000000006801000000000000000000001000000000000000000000000000
        80000080000000808000800000008000800080800000C0C0C000808080000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
        3333333333333333333333330000333333333333333333333333F33333333333
        00003333344333333333333333388F3333333333000033334224333333333333
        338338F3333333330000333422224333333333333833338F3333333300003342
        222224333333333383333338F3333333000034222A22224333333338F338F333
        8F33333300003222A3A2224333333338F3838F338F33333300003A2A333A2224
        33333338F83338F338F33333000033A33333A222433333338333338F338F3333
        0000333333333A222433333333333338F338F33300003333333333A222433333
        333333338F338F33000033333333333A222433333333333338F338F300003333
        33333333A222433333333333338F338F00003333333333333A22433333333333
        3338F38F000033333333333333A223333333333333338F830000333333333333
        333A333333333333333338330000333333333333333333333333333333333333
        0000}
      NumGlyphs = 2
    end
    object btnCerrar: TBitBtn
      Left = 6
      Top = 56
      Width = 106
      Height = 25
      Caption = '&Cerrar'
      TabOrder = 1
      OnClick = btnCerrarClick
      Glyph.Data = {
        DE010000424DDE01000000000000760000002800000024000000120000000100
        0400000000006801000000000000000000001000000000000000000000000000
        80000080000000808000800000008000800080800000C0C0C000808080000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00388888888877
        F7F787F8888888888333333F00004444400888FFF444448888888888F333FF8F
        000033334D5007FFF4333388888888883338888F0000333345D50FFFF4333333
        338F888F3338F33F000033334D5D0FFFF43333333388788F3338F33F00003333
        45D50FEFE4333333338F878F3338F33F000033334D5D0FFFF43333333388788F
        3338F33F0000333345D50FEFE4333333338F878F3338F33F000033334D5D0FFF
        F43333333388788F3338F33F0000333345D50FEFE4333333338F878F3338F33F
        000033334D5D0EFEF43333333388788F3338F33F0000333345D50FEFE4333333
        338F878F3338F33F000033334D5D0EFEF43333333388788F3338F33F00003333
        4444444444333333338F8F8FFFF8F33F00003333333333333333333333888888
        8888333F00003333330000003333333333333FFFFFF3333F00003333330AAAA0
        333333333333888888F3333F00003333330000003333333333338FFFF8F3333F
        0000}
      NumGlyphs = 2
    end
  end
  object edDescripcion: TMemo
    Left = 16
    Top = 133
    Width = 361
    Height = 57
    TabOrder = 1
  end
  object edDSA: TJvIntegerEdit
    Left = 117
    Top = 333
    Width = 88
    Height = 21
    Alignment = taRightJustify
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    ReadOnly = True
    TabOrder = 2
    Value = 0
    MaxValue = 0
    MinValue = 0
    HasMaxValue = False
    HasMinValue = False
    ClipBoardCommands = [caCopy]
  end
  object GroupBox1: TGroupBox
    Left = 16
    Top = 8
    Width = 361
    Height = 105
    Caption = 'Datos del Proveedor'
    TabOrder = 3
    object Label3: TLabel
      Left = 3
      Top = 14
      Width = 102
      Height = 13
      Caption = 'Tipo de Identificaci'#243'n'
    end
    object Label5: TLabel
      Left = 207
      Top = 15
      Width = 118
      Height = 13
      Caption = 'N'#250'mero de Identificaci'#243'n'
    end
    object Label6: TLabel
      Left = 8
      Top = 55
      Width = 37
      Height = 13
      Caption = 'Nombre'
    end
    object edIdIdentificacion: TDBLookupComboBox
      Left = 3
      Top = 30
      Width = 198
      Height = 21
      KeyField = 'ID_IDENTIFICACION'
      ListField = 'DESCRIPCION_IDENTIFICACION'
      ListSource = dsTiposIdentificacion
      TabOrder = 0
    end
    object edIdPersona: TEdit
      Left = 206
      Top = 30
      Width = 152
      Height = 21
      TabOrder = 1
    end
    object edNombre: TEdit
      Left = 4
      Top = 72
      Width = 349
      Height = 21
      ReadOnly = True
      TabOrder = 2
    end
  end
  object edRespuesta: TMemo
    Left = 48
    Top = 369
    Width = 305
    Height = 89
    TabOrder = 4
  end
  object DBGridData: TDBGrid
    Left = 14
    Top = 200
    Width = 515
    Height = 120
    TabOrder = 5
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    OnColExit = DBGridDataColExit
    OnDrawColumnCell = DBGridDataDrawColumnCell
    OnKeyPress = DBGridDataKeyPress
    Columns = <
      item
        Expanded = False
        FieldName = 'CODIGO'
        Width = 86
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CUENTA'
        Width = 171
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'DEBITO'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CREDITO'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'TASA'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'PARA_DSA'
        Title.Caption = 'DSA'
        Visible = True
      end>
  end
  object DBCheckBox1: TDBCheckBox
    Left = 392
    Top = 16
    Width = 97
    Height = 17
    Caption = 'DBCheckBox1'
    TabOrder = 6
    ValueChecked = 'True'
    ValueUnchecked = 'False'
  end
  object IBQuery1: TIBQuery
    Database = dmGeneral.IBDatabase1
    Transaction = IBTransaction1
    Left = 8
    Top = 320
  end
  object IBTransaction1: TIBTransaction
    DefaultDatabase = dmGeneral.IBDatabase1
    Left = 8
    Top = 288
  end
  object dsTiposIdentificacion: TDataSource
    Left = 152
    Top = 48
  end
  object DSdata: TDataSource
    Left = 280
    Top = 208
  end
  object _cdsDSA: TClientDataSet
    Active = True
    Aggregates = <>
    FieldDefs = <
      item
        Name = 'CODIGO'
        DataType = ftString
        Size = 18
      end
      item
        Name = 'CUENTA'
        DataType = ftString
        Size = 500
      end
      item
        Name = 'DEBITO'
        DataType = ftCurrency
      end
      item
        Name = 'CREDITO'
        DataType = ftCurrency
      end
      item
        Name = 'ID_PERSONA'
        DataType = ftString
        Size = 50
      end
      item
        Name = 'ID_IDENTIFICACION'
        DataType = ftInteger
      end
      item
        Name = 'ID_COLOCACION'
        DataType = ftString
        Size = 11
      end
      item
        Name = 'NUMERO_CUENTA'
        DataType = ftString
        Size = 50
      end
      item
        Name = 'MONTO'
        DataType = ftCurrency
      end
      item
        Name = 'TASA'
        DataType = ftFloat
      end
      item
        Name = 'ESTADO'
        DataType = ftString
        Size = 2
      end
      item
        Name = 'PRIMER_APELLIDO'
        DataType = ftString
        Size = 100
      end
      item
        Name = 'SEGUNDO_APELLIDO'
        DataType = ftString
        Size = 100
      end
      item
        Name = 'NOMBRE'
        DataType = ftString
        Size = 200
      end
      item
        Name = 'CHEQUE'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'DETALLE'
        DataType = ftString
        Size = 200
      end
      item
        Name = 'ESBANCO'
        DataType = ftBoolean
      end
      item
        Name = 'ID_AGENCIA'
        DataType = ftInteger
      end
      item
        Name = 'DESCRIPCION_AGENCIA'
        DataType = ftString
        Size = 100
      end
      item
        Name = 'ID_CLASE_OPERACION'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'DESCRIPCION_CLASE_OPERACION'
        DataType = ftString
        Size = 200
      end
      item
        Name = 'PARA_DSA'
        DataType = ftBoolean
      end>
    IndexDefs = <
      item
        Name = 'CDSauxiliargridIndex1'
        Fields = 'CODIGO'
      end
      item
        Name = 'CDSauxiliargridIndex2'
        Fields = 'CUENTA'
      end
      item
        Name = 'CDSauxiliargridIndex3'
        Fields = 'DEBITO'
      end
      item
        Name = 'CDSauxiliargridIndex4'
        Fields = 'CREDITO'
      end
      item
        Name = 'CDSauxiliargridIndex5'
        Fields = 'ID_PERSONA'
      end
      item
        Name = 'CDSauxiliargridIndex6'
        Fields = 'PRIMER_APELLIDO'
      end
      item
        Name = 'CDSauxiliargridIndex7'
        Fields = 'SEGUNDO_APELLIDO'
      end
      item
        Name = 'CDSauxiliargridIndex8'
        Fields = 'NOMBRE'
      end>
    Params = <>
    StoreDefs = True
    Left = 152
    Top = 248
    Data = {
      AC0200009619E0BD010000001800000016000000000003000000AC0206434F44
      49474F0100490000000100055749445448020002001200064355454E54410200
      49000000010005574944544802000200F4010644454249544F08000400000001
      0007535542545950450200490006004D6F6E657900074352454449544F080004
      000000010007535542545950450200490006004D6F6E6579000A49445F504552
      534F4E4101004900000001000557494454480200020032001149445F4944454E
      54494649434143494F4E04000100000000000D49445F434F4C4F434143494F4E
      0100490000000100055749445448020002000B000D4E554D45524F5F4355454E
      54410100490000000100055749445448020002003200054D4F4E544F08000400
      0000010007535542545950450200490006004D6F6E6579000454415341080004
      00000000000645535441444F0100490000000100055749445448020002000200
      0F5052494D45525F4150454C4C49444F01004900000001000557494454480200
      0200640010534547554E444F5F4150454C4C49444F0100490000000100055749
      445448020002006400064E4F4D42524501004900000001000557494454480200
      0200C80006434845515545010049000000010005574944544802000200140007
      444554414C4C45010049000000010005574944544802000200C8000745534241
      4E434F02000300000000000A49445F4147454E43494104000100000000001344
      45534352495043494F4E5F4147454E4349410100490000000100055749445448
      0200020064001249445F434C4153455F4F5045524143494F4E01004900000001
      000557494454480200020014001B4445534352495043494F4E5F434C4153455F
      4F5045524143494F4E010049000000010005574944544802000200C800085041
      52415F44534102000300000000000000}
    object _cdsDSACODIGO: TStringField
      FieldName = 'CODIGO'
      Size = 18
    end
    object _cdsDSACUENTA: TStringField
      FieldName = 'CUENTA'
      Size = 500
    end
    object _cdsDSADEBITO: TCurrencyField
      FieldName = 'DEBITO'
    end
    object _cdsDSACREDITO: TCurrencyField
      FieldName = 'CREDITO'
    end
    object _cdsDSAID_PERSONA: TStringField
      FieldName = 'ID_PERSONA'
      Size = 50
    end
    object _cdsDSAID_IDENTIFICACION: TIntegerField
      FieldName = 'ID_IDENTIFICACION'
    end
    object _cdsDSAID_COLOCACION: TStringField
      FieldName = 'ID_COLOCACION'
      Size = 11
    end
    object _cdsDSANUMERO_CUENTA: TStringField
      FieldName = 'NUMERO_CUENTA'
      Size = 50
    end
    object _cdsDSAMONTO: TCurrencyField
      FieldName = 'MONTO'
    end
    object _cdsDSATASA: TFloatField
      FieldName = 'TASA'
    end
    object _cdsDSAESTADO: TStringField
      FieldName = 'ESTADO'
      Size = 2
    end
    object _cdsDSAPRIMER_APELLIDO: TStringField
      FieldName = 'PRIMER_APELLIDO'
      Size = 100
    end
    object _cdsDSASEGUNDO_APELLIDO: TStringField
      FieldName = 'SEGUNDO_APELLIDO'
      Size = 100
    end
    object _cdsDSANOMBRE: TStringField
      FieldName = 'NOMBRE'
      Size = 200
    end
    object _cdsDSACHEQUE: TStringField
      FieldName = 'CHEQUE'
    end
    object _cdsDSADETALLE: TStringField
      FieldName = 'DETALLE'
      Size = 200
    end
    object _cdsDSAESBANCO: TBooleanField
      FieldName = 'ESBANCO'
    end
    object _cdsDSAID_AGENCIA: TIntegerField
      FieldName = 'ID_AGENCIA'
    end
    object _cdsDSADESCRIPCION_AGENCIA: TStringField
      FieldName = 'DESCRIPCION_AGENCIA'
      Size = 100
    end
    object _cdsDSAID_CLASE_OPERACION: TStringField
      FieldName = 'ID_CLASE_OPERACION'
    end
    object _cdsDSADESCRIPCION_CLASE_OPERACION: TStringField
      FieldName = 'DESCRIPCION_CLASE_OPERACION'
      Size = 200
    end
    object _cdsDSAPARA_DSA: TBooleanField
      FieldName = 'PARA_DSA'
    end
  end
end
