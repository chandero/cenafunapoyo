object FrmPersona: TFrmPersona
  Left = 401
  Top = 168
  Width = 609
  Height = 387
  AutoSize = True
  BorderIcons = [biSystemMenu]
  Caption = 'Creaci'#243'n de Personas'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clBlack
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poMainFormCenter
  OnCreate = FormCreate
  OnKeyPress = FormKeyPress
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 473
    Height = 41
    Caption = 'Panel1'
    TabOrder = 2
  end
  object Panel2: TPanel
    Left = 473
    Top = 0
    Width = 128
    Height = 353
    Color = clGradientInactiveCaption
    TabOrder = 3
    object BitBtn1: TBitBtn
      Left = 22
      Top = 17
      Width = 89
      Height = 25
      Caption = '&Aplicar'
      TabOrder = 0
      OnClick = BitBtn1Click
      Glyph.Data = {
        36030000424D3603000000000000360000002800000010000000100000000100
        18000000000000030000D30E0000D30E00000000000000000000FF00FFFF00FF
        FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
        FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
        00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
        108410189C1831A53139AD3939AD39107B103194292173185A5242736B5AFF00
        FFFF00FFFF00FFFF00FFFF00FFFF00FF21A52131AD314ABD4A52C652399C398C
        BD7B52BD5242BD422173184A4229FF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
        299C294ABD4A6BCE6B6BC66BF7FFEFF7FFEF63C66363CE6331A5314A6B39FF00
        FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF4ABD4A73CE7352A54AFFFFFFFF
        FFFF6BC66B73CE73319C31FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
        FF00FFFF00FF18734A3984AD217BBD428CAD63BD63399C39FF00FFFF00FFFF00
        FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF187BC6218CE7298CE721
        8CE7296B52FF00FFFF00FFFF00FF218429218429FF00FFFF00FFFF00FFFF00FF
        FF00FF297BAD399CFF399CFF399CFF399CFF298CE7395252FF00FFFF00FF94DE
        8C218429FF00FFFF00FFFF00FFFF00FFFF00FF2184C642A5FF42A5FF42A5FF42
        A5FF399CF7315A6B21842921842900EE0000C000218429218429FF00FFFF00FF
        6BA5C642A5F74AB5FF52B5FF52BDFF52B5FF4AADFF39739421842900EE0040FF
        4000EE0000C000218429FF00FFFF00FF5294BD42A5EF5ABDFF5ABDFF52B5F74A
        B5EF52B5F739738C21842921842900EE0000C000218429218429FF00FFFF00FF
        63849C2173A54A94C66BADD663ADF74A9CE7216BA5FF00FFFF00FFFF00FF00C0
        00218429FF00FFFF00FFFF00FFFF00FFFF00FF2173A56BADD68CBDE773BDE75A
        ADDE316B7BFF00FFFF00FFFF00FF218429218429FF00FFFF00FFFF00FFFF00FF
        FF00FFFF00FF6BA5BD4A94B54A8CAD63849CFF00FFFF00FFFF00FFFF00FFFF00
        FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
        00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF}
    end
    object BitBtn2: TBitBtn
      Left = 22
      Top = 57
      Width = 89
      Height = 25
      Caption = '&Cancelar'
      TabOrder = 1
      OnClick = BitBtn2Click
      Glyph.Data = {
        36050000424D3605000000000000360400002800000010000000100000000100
        08000000000000010000220B0000220B000000010000000100000031DE000031
        E7000031EF000031F700FF00FF000031FF00FFFFFF00FFFFFF00FFFFFF00FFFF
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
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00040404040404
        0404040404040404000004000004040404040404040404000004040000000404
        0404040404040000040404000000000404040404040000040404040402000000
        0404040400000404040404040404000000040000000404040404040404040400
        0101010004040404040404040404040401010204040404040404040404040400
        0201020304040404040404040404030201040403030404040404040404050203
        0404040405030404040404040303050404040404040303040404040303030404
        0404040404040403040403030304040404040404040404040404030304040404
        0404040404040404040404040404040404040404040404040404}
    end
    object BitBtn3: TBitBtn
      Left = 22
      Top = 97
      Width = 89
      Height = 25
      Caption = '&Cerrar'
      TabOrder = 2
      OnClick = BitBtn3Click
      Glyph.Data = {
        36050000424D3605000000000000360400002800000010000000100000000100
        08000000000000010000D30E0000D30E00000001000000010000008500000094
        0000009B0000008C2300009B230000A1230000A8230000BA230023A1340023C0
        340023A1420042AF630034C04F0034C6590042C059004FCC75004FD175004FD6
        7500FF00FF0063E194006CEB9B006CCCA10075F0A10000AFDC0023B5DC0023B5
        E10034BAE10063CCC0006CD1D10042C0E6004FC6EB0059CCE60059CCEB0063D1
        EB007DDCEB0063D1F0006CD6F00075DCF00075DCF5007DDCF5007DE1F5008CC6
        AF0085E1C60085E1F50085E6F5008CE6F0008CE6F5008CEBF5008CE6FA008CEB
        FA009BEBF50094EBFA0094F0FA009BF0FA009BF5FA00B5EBE100A1F0E600AFE6
        F500B5EBFA00A1F0FA00A1F5FF00A8F5FF00AFF5FF00AFFAFA00A8FAFF00AFFA
        FF00AFFFFF00B5FAFF00B5FFFF00BAFFFF00C0E6F500C6EBF500CCFFFF00DCFA
        FF00000000000000000000000000000000000000000000000000000000000000
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
        0000000000000000000000000000000000000000000000000000121F1A1A1212
        12121212121212121212121F342821201D181712121212121212121F403C3634
        312B23201D191D121212121F42403C35332E2C282627241E1A12121F4442403C
        35332E22282626241A12121F444241403C3533001C2726241A12121F44424241
        403C352D002827251A12121F42424242413D3634050028251A12121F44424215
        01413D3D06002C281A12121F49483704043F3D010600302B1A12121F1D1D000F
        030301070001332C1A12121F2F1B0A16100D0902003C35311A12121F44001314
        110000003E403C351A12121F452A000E0C00294746393A321A12121F3B43380B
        0800001F1F1F1F1F1F1212121F1F1F1F1F121212121212121212}
    end
  end
  object GroupBox1: TGroupBox
    Left = 0
    Top = 39
    Width = 473
    Height = 162
    Caption = 'Informacion Personal'
    TabOrder = 0
    object Label49: TLabel
      Left = 6
      Top = 16
      Width = 94
      Height = 13
      Caption = 'Tipo de Documento'
    end
    object Label50: TLabel
      Left = 270
      Top = 16
      Width = 37
      Height = 13
      Caption = 'N'#250'mero'
    end
    object Label1: TLabel
      Left = 8
      Top = 36
      Width = 69
      Height = 13
      Caption = 'Primer Nombre'
    end
    object Label2: TLabel
      Left = 240
      Top = 36
      Width = 69
      Height = 13
      Caption = 'Primer Nombre'
    end
    object Label3: TLabel
      Left = 8
      Top = 75
      Width = 69
      Height = 13
      Caption = 'Primer Apellido'
    end
    object Label4: TLabel
      Left = 240
      Top = 75
      Width = 83
      Height = 13
      Caption = 'Segundo Apellido'
    end
    object Label5: TLabel
      Left = 9
      Top = 114
      Width = 25
      Height = 13
      Caption = 'Email'
    end
    object Label6: TLabel
      Left = 241
      Top = 114
      Width = 101
      Height = 13
      Caption = 'Fecha de Nacimiento'
    end
    object EdIdentificacion: TMemo
      Left = 312
      Top = 13
      Width = 155
      Height = 21
      Alignment = taRightJustify
      TabOrder = 1
      WantReturns = False
      WordWrap = False
      OnExit = EdIdentificacionExit
      OnKeyPress = DBtipoKeyPress
    end
    object EdNombre1: TEdit
      Left = 9
      Top = 52
      Width = 228
      Height = 21
      CharCase = ecUpperCase
      TabOrder = 2
      OnKeyPress = DBtipoKeyPress
    end
    object EdNombre2: TEdit
      Left = 241
      Top = 52
      Width = 229
      Height = 21
      CharCase = ecUpperCase
      TabOrder = 3
      OnKeyPress = DBtipoKeyPress
    end
    object EdApellido1: TEdit
      Left = 9
      Top = 91
      Width = 228
      Height = 21
      CharCase = ecUpperCase
      TabOrder = 4
      OnKeyPress = DBtipoKeyPress
    end
    object EdApellido2: TEdit
      Left = 240
      Top = 91
      Width = 227
      Height = 21
      CharCase = ecUpperCase
      TabOrder = 5
      OnKeyPress = DBtipoKeyPress
    end
    object EdMail: TEdit
      Left = 10
      Top = 130
      Width = 228
      Height = 21
      TabOrder = 6
      OnKeyPress = DBtipoKeyPress
    end
    object DtFecha: TDateTimePicker
      Left = 241
      Top = 130
      Width = 227
      Height = 21
      CalAlignment = dtaLeft
      Date = 39657.748366169
      Time = 39657.748366169
      DateFormat = dfShort
      DateMode = dmComboBox
      Kind = dtkDate
      ParseInput = False
      TabOrder = 7
      OnKeyPress = DBtipoKeyPress
    end
    object DBtipo: TDBLookupComboBox
      Left = 104
      Top = 13
      Width = 165
      Height = 21
      KeyField = 'ID_IDENTIFICACION'
      ListField = 'DESCRIPCION_IDENTIFICACION'
      ListSource = DsTipo
      TabOrder = 0
      OnEnter = DBtipoEnter
      OnKeyPress = DBtipoKeyPress
    end
  end
  object GroupBox2: TGroupBox
    Left = 0
    Top = 202
    Width = 473
    Height = 151
    Caption = 'Informacion Direccion Residencia'
    TabOrder = 1
    object Label7: TLabel
      Left = 6
      Top = 15
      Width = 45
      Height = 13
      Caption = 'Direccion'
    end
    object Label8: TLabel
      Left = 6
      Top = 51
      Width = 27
      Height = 13
      Caption = 'Barrio'
    end
    object Label9: TLabel
      Left = 238
      Top = 51
      Width = 45
      Height = 13
      Caption = 'Municipio'
    end
    object Label10: TLabel
      Left = 237
      Top = 89
      Width = 47
      Height = 13
      Caption = 'Telefonos'
    end
    object Label11: TLabel
      Left = 8
      Top = 92
      Width = 20
      Height = 13
      Caption = 'Pais'
    end
    object EdDireccion: TEdit
      Left = 7
      Top = 31
      Width = 458
      Height = 21
      CharCase = ecUpperCase
      TabOrder = 0
      OnKeyPress = DBtipoKeyPress
    end
    object EdBarrio: TEdit
      Left = 7
      Top = 66
      Width = 228
      Height = 21
      CharCase = ecUpperCase
      TabOrder = 1
      OnKeyPress = DBtipoKeyPress
    end
    object EdTelefono1: TMemo
      Left = 237
      Top = 107
      Width = 112
      Height = 21
      Alignment = taRightJustify
      TabOrder = 4
      WantReturns = False
      WordWrap = False
      OnKeyPress = DBtipoKeyPress
    end
    object EdTelefono2: TMemo
      Left = 354
      Top = 107
      Width = 112
      Height = 21
      Alignment = taRightJustify
      TabOrder = 5
      WantReturns = False
      WordWrap = False
      OnKeyPress = DBtipoKeyPress
    end
    object DbPais: TDBLookupComboBox
      Left = 8
      Top = 107
      Width = 226
      Height = 21
      KeyField = 'CODIGO'
      ListField = 'DESCRIPCION'
      ListSource = DsPais
      TabOrder = 3
      OnKeyPress = DBtipoKeyPress
    end
    object DbMunicipio: TDBLookupComboBox
      Left = 238
      Top = 66
      Width = 226
      Height = 21
      KeyField = 'COD_MUNICIPIO'
      ListField = 'NOMBRE'
      ListSource = DsMunicipio
      TabOrder = 2
      OnKeyPress = DBtipoKeyPress
    end
  end
  object IBMunicipio: TIBQuery
    Database = dmGeneral.IBDatabase1
    Transaction = IBTipos
    SQL.Strings = (
      
        'select COD_MUNICIPIO, NOMBRE || '#39' '#39' || DPTO AS NOMBRE from "gen$' +
        'municipios"')
    Left = 88
    Top = 40
  end
  object IBPais: TIBQuery
    Database = dmGeneral.IBDatabase1
    Transaction = IBTipos
    SQL.Strings = (
      'SELECT '
      '  GEN$PAIS.CODIGO,'
      '  GEN$PAIS.DESCRIPCION'
      'FROM'
      '  GEN$PAIS')
    Left = 72
    Top = 72
  end
  object IBtipo: TIBQuery
    Database = dmGeneral.IBDatabase1
    Transaction = IBTipos
    SQL.Strings = (
      'SELECT '
      '  "gen$tiposidentificacion".ID_IDENTIFICACION,'
      '  "gen$tiposidentificacion".DESCRIPCION_IDENTIFICACION'
      'FROM'
      '  "gen$tiposidentificacion"')
    Left = 56
    Top = 32
  end
  object DsTipo: TDataSource
    DataSet = IBtipo
    Left = 16
    Top = 56
  end
  object DsMunicipio: TDataSource
    DataSet = IBMunicipio
    Left = 16
    Top = 72
  end
  object DsPais: TDataSource
    DataSet = IBPais
    Left = 16
    Top = 80
  end
  object IBTipos: TIBTransaction
    DefaultDatabase = dmGeneral.IBDatabase1
    Left = 24
    Top = 96
  end
  object IBQuery1: TIBQuery
    Database = dmGeneral.IBDatabase1
    Transaction = dmGeneral.IBTransaction1
    Left = 72
    Top = 112
  end
end
