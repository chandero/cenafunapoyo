object frmProcesarDatacredito: TfrmProcesarDatacredito
  Left = 618
  Top = 273
  Width = 413
  Height = 360
  Caption = 'Proceso DataCredito'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clBlack
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  OnClose = FormClose
  OnCreate = FormCreate
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 291
    Top = 0
    Width = 114
    Height = 326
    Align = alRight
    Color = clOlive
    TabOrder = 0
    object CmdProcesar: TBitBtn
      Left = 6
      Top = 4
      Width = 105
      Height = 25
      Caption = 'Procesar'
      TabOrder = 0
      OnClick = CmdProcesarClick
      Glyph.Data = {
        36050000424D3605000000000000360400002800000010000000100000000100
        08000000000000010000D30E0000D30E000000010000000100004A7BB500296B
        C600527BC600186BD600528CD6003194D600397BE7005284E700107BEF00317B
        EF001084EF0029ADEF0039ADEF0010B5EF0008BDEF000073F7001873F7002973
        F7000884F7000894F70018A5F70000CEF70018DEF70063DEF700FF00FF000073
        FF00007BFF000084FF00008CFF000094FF00009CFF0000A5FF0010A5FF0039A5
        FF0052A5FF005AA5FF0000ADFF0029ADFF0031ADFF0000B5FF006BB5FF0084B5
        FF0000BDFF0008BDFF0010BDFF0000C6FF0008C6FF006BC6FF0000CEFF0018CE
        FF0000D6FF0008D6FF0010D6FF0021D6FF0031D6FF0000DEFF0018DEFF0029DE
        FF0042DEFF0000E7FF0010E7FF0018E7FF0039E7FF0000EFFF0018EFFF0039EF
        FF004AEFFF0000F7FF0008F7FF0029F7FF0031F7FF0042F7FF004AF7FF005AF7
        FF0000FFFF0008FFFF0018FFFF0021FFFF0031FFFF0039FFFF00FFFFFF00FFFF
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
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00181818181818
        1818181818181818181818181802181818181818181818181818181818090201
        18181818181818181818181818061A0F02181818181818181818181818181E1C
        1C0218181818181818181818181818271C1D0202181818181818181818181818
        272E1E1E02181818181818181818181818272B241E0218181818181818180202
        022D4B462C240202181818181818252D3F43434A42311F02181818181818212D
        3F433F374A4A412E021818181818182E3E42474C4A4A4B4D0218181818181818
        1836444A43322702181818181818181818181836433F241F0218181818181818
        1818181818363A34230218181818181818181818181818362202}
    end
    object CmdGenerar: TBitBtn
      Left = 6
      Top = 30
      Width = 105
      Height = 25
      Caption = 'Generar Archivo'
      Enabled = False
      TabOrder = 1
      OnClick = CmdGenerarClick
      Glyph.Data = {
        36050000424D3605000000000000360400002800000010000000100000000100
        08000000000000010000220B0000220B00000001000000010000942929009431
        31009C3131009C393900A53939009C4242009C4A4A00A54A4A00B54A4A00AD52
        4A00B5524A00A5525200AD525200B5525200B55A5200AD525A00AD5A5A00B55A
        5A00BD5A5A00C65A5A00CE5A5A00CE636300CE6B6B00D66B6B00B5737300BD7B
        73009C7B7B009C848400AD848400B5848400C6848400AD8C8C00B58C8C00C694
        8C00AD949400C6949400A59C9C00B59C9C00D69C9C00BDA5A500D6A5A500D6AD
        A500CEADAD00D6ADAD00DEADAD00CEB5B500D6B5B500CEBDBD00DEBDBD00E7BD
        BD00E7C6C600C6CEC600CECEC600C6CECE00CECECE00D6CECE00E7CECE00E7D6
        CE00D6D6D600DED6D600EFD6D600DEDED600D6DEDE00DEDEDE00E7DEDE00E7E7
        E700EFEFEF00F7EFEF00F7F7EF00F7F7F700FFF7F700FFFFF700FF00FF00FFFF
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
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF004848100C0722
        33343433332505050B4848191516111B27384647452D0002131048191515111A
        05184046492E0102121048191515111C03032F42493200011210481915151120
        0601243A493200011210481915151221231D1F27322C04041310481915151515
        1515151313151515160F48190D111E282B292B2828292B26150C481909384544
        4545454545454530130F48190A3C46434343434343434530130F48190A3C423A
        3A3A3A3A3A3A4230130F48190A3C423B3F3F3F3F3F3B4230130F48190A3C4440
        4040404040404230130F48190A3C423A3A3A3A3A3A3A4230130F48190A394643
        4343434343434630130F4848092D3A363636363636363A2A0748}
    end
    object CmdEnviar: TBitBtn
      Left = 6
      Top = 56
      Width = 105
      Height = 25
      Caption = 'Enviar Archivo'
      Enabled = False
      TabOrder = 2
      Glyph.Data = {
        36050000424D3605000000000000360400002800000010000000100000000100
        08000000000000010000C30E0000C30E000000010000000100005A423900634A
        3900634A420063524A006B524A0073524A006B5A4A006B5A5200735A52007B5A
        5200845A52007B6B6300846B6B009C736B00A5737300A57B730094847B00AD84
        84009C8C8400BD8C8C00B5948C00C6949400AD9C9400BD9C940042739C004A7B
        9C0073849C009C8C9C00B59C9C00CE9C9C00D69C9C00D6A59C00DEAD9C00EFB5
        9C00EFC69C00F7C69C00297BA500317BA500B5A5A500C6A5A500CEA5A500C6AD
        A500D6ADA500DEB5A500FFD6A500FFDEA500CEADAD00D6ADAD00DEBDAD00EFCE
        AD00F7D6AD00FFDEAD00398CB500428CB500BDA5B500BDADB500D6B5B500DEB5
        B500C6BDB500DEBDB500E7CEB500F7D6B500FFE7B500FFEFB5005294BD00529C
        BD00B5A5BD00BDB5BD00DEBDBD00F7E7BD00F7EFBD00FFEFBD00FFF7BD00CEC6
        C600F7E7C600FFF7C600FFFFC60084B5CE00EFDECE00F7E7CE00FFFFCE008CBD
        D600ADC6D600DED6D600F7E7D600FFFFD6005ABDDE00ADD6DE00F7E7DE00F7EF
        DE00FFFFDE0073C6E700A5DEE700BDDEE700FFFFE700A5E7EF00FFFFEF009CCE
        F700D6EFF700DEEFF700DEF7F700FF00FF008CC6FF008CCEFF0094CEFF0094DE
        FF0094E7FF0094EFFF00DEFFFF00E7FFFF00EFFFFF00F7FFFF00FFFFFF00FFFF
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
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00652E11090002
        070C122665656565656565281D1F1D130D090200040B1016656565281D202C22
        211F1D150E0A050006106528221D313E332C2C2321201D1D0F07652832311D45
        4B473E3E332C231D1D036528454B3C2A5555504C4B471F201D0265284A55502B
        3B5E5A5A552A2B2C1D0265284F5A4A2A1D4458592A304B471D0265284E301D53
        6349371D273050501D0265281D4370706F6E6D6C642E30551D0365381B407070
        706F6E6E6D621C3B1D0865653735635D514D353424181A1D1D12656565251941
        565B67686866421D1765656565653A1D5F6B696961361529656565656565653A
        1D575C521D143A6565656565656565653A2F2F383A6565656565}
    end
    object CmdVer: TBitBtn
      Left = 6
      Top = 82
      Width = 105
      Height = 25
      Caption = 'Ver Archivo'
      Enabled = False
      TabOrder = 3
      OnClick = CmdVerClick
      Glyph.Data = {
        36050000424D3605000000000000360400002800000010000000100000000100
        08000000000000010000230B0000230B00000001000000010000291818002108
        21002921210039292900423939004A4242006B395A00FFCE6300F7C66B00FFCE
        6B00947373009C737300A5737300AD737300EFBD7300FFD67300A57B7B00AD7B
        7B00C6847B00CE9C7B00EFBD7B00FFD67B00AD848400B5848400CE9C8400CEA5
        8400FFDE8400B58C8C00EFC68C00FFDE8C00FFE78C00B5949400BD949400C694
        9400C6A59400FFE79400C69C9C00FFE79C00B5A5A500CEA5A500FFEFA500C6AD
        AD00F7E7AD00FFEFAD00D6B5B500D6BDB500EFDEB500EFDEDE00FF00FF00FFFF
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
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00303030303030
        303030303030303030303030291B1B1B1B1B1B1B1B1B100530303030302C2424
        24241B1B1B1B06303030300A0A040303030302020202010A3030272727272720
        17161616161616160C3027160B0B0B0B0B0A0A0A0A0A0A260C30270E07080808
        08080808080807070C30270E090912121212121213090707113027141515122F
        31313131180F15091130271C1A1A122F31313131191A1A091130271C1D1D122F
        31313131191D1D1A2030271C1D23122F313122220D231A1A2030271C2328122F
        3131220D2825231A2030271C2828122D2D2D0D2A2B28251D2430272E2E2E2E2E
        2E2E2E2E2E2E2E2E243030272727272727272727272727273030}
    end
    object CmdCerrar: TBitBtn
      Left = 6
      Top = 108
      Width = 105
      Height = 25
      Caption = 'Cerrar'
      TabOrder = 4
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
  end
  object Panel2: TPanel
    Left = 0
    Top = 0
    Width = 291
    Height = 326
    Align = alClient
    TabOrder = 1
    object Label1: TLabel
      Left = 6
      Top = 8
      Width = 73
      Height = 13
      Caption = 'Fecha de Corte'
    end
    object pagare: TLabel
      Left = 8
      Top = 200
      Width = 3
      Height = 13
    end
    object EdFechaCorte: TDateTimePicker
      Left = 86
      Top = 4
      Width = 93
      Height = 21
      CalAlignment = dtaLeft
      Date = 38076.6573846181
      Time = 38076.6573846181
      DateFormat = dfShort
      DateMode = dmComboBox
      Kind = dtkDate
      ParseInput = False
      TabOrder = 0
      OnExit = EdFechaCorteExit
    end
    object GroupBox1: TGroupBox
      Left = 4
      Top = 28
      Width = 275
      Height = 114
      Caption = 'Estado del Proceso'
      Enabled = False
      TabOrder = 1
      object CheckBox1: TCheckBox
        Left = 8
        Top = 16
        Width = 183
        Height = 17
        Caption = 'Registro de Control'
        TabOrder = 0
      end
      object CheckBox2: TCheckBox
        Left = 8
        Top = 32
        Width = 195
        Height = 17
        Caption = 'Registro Cartera Activa'
        TabOrder = 1
      end
      object CheckBox5: TCheckBox
        Left = 8
        Top = 92
        Width = 97
        Height = 17
        Caption = 'Registro de Fin'
        TabOrder = 2
      end
      object Ed1: TEdit
        Left = 192
        Top = -16
        Width = 105
        Height = 21
        TabOrder = 3
        Visible = False
      end
      object CheckBox4: TCheckBox
        Left = 8
        Top = 62
        Width = 201
        Height = 17
        Caption = 'Registro Cartera Saldada'
        TabOrder = 4
      end
      object CheckBox3: TCheckBox
        Left = 8
        Top = 47
        Width = 145
        Height = 17
        Caption = 'Registro Cartera Castigada'
        TabOrder = 5
      end
      object CheckBox6: TCheckBox
        Left = 8
        Top = 77
        Width = 201
        Height = 17
        Caption = 'Insertando en Tabla'
        TabOrder = 6
      end
    end
    object GroupBox2: TGroupBox
      Left = 4
      Top = 142
      Width = 275
      Height = 35
      TabOrder = 2
      object Bar: TProgressBar
        Left = 2
        Top = 10
        Width = 269
        Height = 19
        Min = 0
        Max = 100
        TabOrder = 0
      end
    end
    object Ed2: TEdit
      Left = 192
      Top = 0
      Width = 105
      Height = 21
      TabOrder = 3
      Visible = False
    end
  end
  object IBQuery1: TIBQuery
    Database = dmGeneral.IBDatabase1
    Transaction = dmGeneral.IBTransaction1
    Left = 262
    Top = 182
  end
  object IBSNoCredito: TIBSQL
    Database = dmGeneral.IBDatabase1
    Transaction = dmGeneral.IBTransaction1
    Left = 304
    Top = 224
  end
  object IBSClientes: TIBSQL
    Database = dmGeneral.IBDatabase1
    Transaction = dmGeneral.IBTransaction1
    Left = 328
    Top = 184
  end
  object IBSCodeudores: TIBSQL
    Database = dmGeneral.IBDatabase1
    Transaction = dmGeneral.IBTransaction1
    Left = 360
    Top = 184
  end
  object IBSCuotas: TIBSQL
    Database = dmGeneral.IBDatabase1
    Transaction = dmGeneral.IBTransaction1
    Left = 328
    Top = 224
  end
  object IBQuery2: TIBQuery
    Database = dmGeneral.IBDatabase1
    Transaction = dmGeneral.IBTransaction1
    Left = 304
    Top = 184
  end
  object DataAnterior: TClientDataSet
    Aggregates = <>
    FieldDefs = <>
    IndexDefs = <>
    Params = <>
    StoreDefs = True
    Left = 56
    Top = 168
    object DataAnteriorNUMERO: TStringField
      FieldName = 'NUMERO'
      Size = 18
    end
    object DataAnteriorIDENTIFICACION: TStringField
      FieldName = 'IDENTIFICACION'
      Size = 11
    end
    object DataAnteriorNOMBRE: TStringField
      FieldName = 'NOMBRE'
      Size = 45
    end
    object DataAnteriorFNACIM: TStringField
      FieldName = 'FNACIM'
      Size = 6
    end
    object DataAnteriorFAPERT: TStringField
      FieldName = 'FAPERT'
      Size = 6
    end
    object DataAnteriorFVENCI: TStringField
      FieldName = 'FVENCI'
      Size = 6
    end
    object DataAnteriorVCUOTA: TStringField
      FieldName = 'VCUOTA'
      Size = 10
    end
    object DataAnteriorNOVEDA: TStringField
      FieldName = 'NOVEDA'
      Size = 2
    end
    object DataAnteriorADJETI: TStringField
      FieldName = 'ADJETI'
      Size = 2
    end
    object DataAnteriorTPIDEN: TStringField
      FieldName = 'TPIDEN'
      Size = 2
    end
    object DataAnteriorVALINI: TStringField
      FieldName = 'VALINI'
      Size = 10
    end
    object DataAnteriorVALDEU: TStringField
      FieldName = 'VALDEU'
      Size = 10
    end
    object DataAnteriorVALMOR: TStringField
      FieldName = 'VALMOR'
      Size = 10
    end
    object DataAnteriorVALDIS: TStringField
      FieldName = 'VALDIS'
      Size = 10
    end
    object DataAnteriorTPMONE: TStringField
      FieldName = 'TPMONE'
      Size = 1
    end
    object DataAnteriorTPOBLI: TStringField
      FieldName = 'TPOBLI'
      Size = 1
    end
    object DataAnteriorTPGARA: TStringField
      FieldName = 'TPGARA'
      Size = 1
    end
    object DataAnteriorCALIFI: TStringField
      FieldName = 'CALIFI'
      Size = 1
    end
    object DataAnteriorCRESID: TStringField
      FieldName = 'CRESID'
      Size = 15
    end
    object DataAnteriorDRESID: TStringField
      FieldName = 'DRESID'
      Size = 30
    end
    object DataAnteriorTRESID: TStringField
      FieldName = 'TRESID'
      Size = 10
    end
    object DataAnteriorCLABOR: TStringField
      FieldName = 'CLABOR'
      Size = 15
    end
    object DataAnteriorTLABOR: TStringField
      FieldName = 'TLABOR'
      Size = 10
    end
    object DataAnteriorCCORRE: TStringField
      FieldName = 'CCORRE'
      Size = 15
    end
    object DataAnteriorDCORRE: TStringField
      FieldName = 'DCORRE'
      Size = 30
    end
    object DataAnteriorCIIU: TStringField
      FieldName = 'CIIU'
      Size = 6
    end
    object DataAnteriorTCUOTA: TStringField
      FieldName = 'TCUOTA'
      Size = 3
    end
    object DataAnteriorCCANCE: TStringField
      FieldName = 'CCANCE'
      Size = 3
    end
    object DataAnteriorCEMORA: TStringField
      FieldName = 'CEMORA'
      Size = 3
    end
    object DataAnteriorFUPAGO: TStringField
      FieldName = 'FUPAGO'
      Size = 6
    end
    object DataAnteriorOFICIN: TStringField
      FieldName = 'OFICIN'
      Size = 15
    end
    object DataAnteriorCRADIC: TStringField
      FieldName = 'CRADIC'
      Size = 15
    end
    object DataAnteriorFOPAGO: TStringField
      FieldName = 'FOPAGO'
      Size = 1
    end
    object DataAnteriorPEPAGO: TStringField
      FieldName = 'PEPAGO'
      Size = 1
    end
    object DataAnteriorEDMORA: TStringField
      FieldName = 'EDMORA'
      Size = 3
    end
    object DataAnteriorFACTUA: TStringField
      FieldName = 'FACTUA'
      Size = 8
    end
    object DataAnteriorRECLAM: TStringField
      FieldName = 'RECLAM'
      Size = 1
    end
    object DataAnteriorRESPON: TStringField
      FieldName = 'RESPON'
      Size = 2
    end
    object DataAnteriorESTRAC: TStringField
      FieldName = 'ESTRAC'
      Size = 1
    end
    object DataAnteriorRELLEN: TStringField
      FieldName = 'RELLEN'
      Size = 14
    end
  end
  object DataErrores: TClientDataSet
    Active = True
    Aggregates = <>
    Params = <>
    Left = 32
    Top = 168
    Data = {
      9B0000009619E0BD0100000018000000040000000000030000009B0011434F4C
      4F434143494F4E5F45525241444F010049000000010005574944544802000200
      12000E4944454E54494649434143494F4E010049000000010005574944544802
      0002000B00074147454E434941040001000000000013434F4C4F434143494F4E
      5F434F52524543544F01004900000001000557494454480200020012000000}
    object DataErroresCOLOCACION_ERRADO: TStringField
      FieldName = 'COLOCACION_ERRADO'
      Size = 18
    end
    object DataErroresIDENTIFICACION: TStringField
      FieldName = 'IDENTIFICACION'
      Size = 11
    end
    object DataErroresAGENCIA: TIntegerField
      FieldName = 'AGENCIA'
    end
    object DataErroresCOLOCACION_CORRECTO: TStringField
      FieldName = 'COLOCACION_CORRECTO'
      Size = 18
    end
  end
  object OpenDialog1: TOpenDialog
    Left = 136
    Top = 128
  end
  object DataActual: TClientDataSet
    Active = True
    Aggregates = <>
    FieldDefs = <
      item
        Name = 'NUMERO'
        DataType = ftString
        Size = 18
      end
      item
        Name = 'IDENTIFICACION'
        DataType = ftString
        Size = 11
      end
      item
        Name = 'NOMBRE'
        DataType = ftString
        Size = 45
      end
      item
        Name = 'NOMBREC'
        DataType = ftString
        Size = 60
      end
      item
        Name = 'FNACIM'
        DataType = ftString
        Size = 6
      end
      item
        Name = 'FAPERT'
        DataType = ftString
        Size = 6
      end
      item
        Name = 'FVENCI'
        DataType = ftString
        Size = 6
      end
      item
        Name = 'VCUOTA'
        DataType = ftString
        Size = 10
      end
      item
        Name = 'NOVEDA'
        DataType = ftString
        Size = 2
      end
      item
        Name = 'ADJETI'
        DataType = ftString
        Size = 2
      end
      item
        Name = 'TPIDEN'
        DataType = ftString
        Size = 2
      end
      item
        Name = 'VALINI'
        DataType = ftString
        Size = 10
      end
      item
        Name = 'VALDEU'
        DataType = ftString
        Size = 10
      end
      item
        Name = 'VALMOR'
        DataType = ftString
        Size = 10
      end
      item
        Name = 'VALDIS'
        DataType = ftString
        Size = 10
      end
      item
        Name = 'TPMONE'
        DataType = ftString
        Size = 1
      end
      item
        Name = 'TPOBLI'
        DataType = ftString
        Size = 1
      end
      item
        Name = 'TPGARA'
        DataType = ftString
        Size = 1
      end
      item
        Name = 'CALIFI'
        DataType = ftString
        Size = 1
      end
      item
        Name = 'CRESID'
        DataType = ftString
        Size = 15
      end
      item
        Name = 'DRESID'
        DataType = ftString
        Size = 30
      end
      item
        Name = 'TRESID'
        DataType = ftString
        Size = 10
      end
      item
        Name = 'CLABOR'
        DataType = ftString
        Size = 15
      end
      item
        Name = 'TLABOR'
        DataType = ftString
        Size = 10
      end
      item
        Name = 'CCORRE'
        DataType = ftString
        Size = 15
      end
      item
        Name = 'DCORRE'
        DataType = ftString
        Size = 30
      end
      item
        Name = 'CIIU'
        DataType = ftString
        Size = 6
      end
      item
        Name = 'TCUOTA'
        DataType = ftString
        Size = 3
      end
      item
        Name = 'CCANCE'
        DataType = ftString
        Size = 3
      end
      item
        Name = 'CEMORA'
        DataType = ftString
        Size = 3
      end
      item
        Name = 'FUPAGO'
        DataType = ftString
        Size = 6
      end
      item
        Name = 'OFICIN'
        DataType = ftString
        Size = 15
      end
      item
        Name = 'CRADIC'
        DataType = ftString
        Size = 15
      end
      item
        Name = 'FOPAGO'
        DataType = ftString
        Size = 1
      end
      item
        Name = 'PEPAGO'
        DataType = ftString
        Size = 1
      end
      item
        Name = 'EDMORA'
        DataType = ftString
        Size = 3
      end
      item
        Name = 'FACTUA'
        DataType = ftString
        Size = 8
      end
      item
        Name = 'RECLAM'
        DataType = ftString
        Size = 1
      end
      item
        Name = 'RESPON'
        DataType = ftString
        Size = 2
      end
      item
        Name = 'ESTRAC'
        DataType = ftString
        Size = 1
      end
      item
        Name = 'RELLEN'
        DataType = ftString
        Size = 14
      end
      item
        Name = 'LINEA'
        DataType = ftString
        Size = 3
      end
      item
        Name = 'FECHA_DESEMBOLSO'
        DataType = ftString
        Size = 8
      end
      item
        Name = 'FECHA_VENCIMIENTO'
        DataType = ftString
        Size = 8
      end
      item
        Name = 'IDIDENT'
        DataType = ftString
        Size = 2
      end>
    IndexDefs = <>
    Params = <>
    StoreDefs = True
    Left = 80
    Top = 168
    Data = {
      F50400009619E0BD01000000180000002D000000000003000000F504064E554D
      45524F01004900000001000557494454480200020012000E4944454E54494649
      434143494F4E0100490000000100055749445448020002000B00064E4F4D4252
      450100490000000100055749445448020002002D00074E4F4D42524543010049
      0000000100055749445448020002003C0006464E4143494D0100490000000100
      0557494454480200020006000646415045525401004900000001000557494454
      48020002000600064656454E4349010049000000010005574944544802000200
      0600065643554F54410100490000000100055749445448020002000A00064E4F
      5645444101004900000001000557494454480200020002000641444A45544901
      004900000001000557494454480200020002000654504944454E010049000000
      01000557494454480200020002000656414C494E490100490000000100055749
      445448020002000A000656414C44455501004900000001000557494454480200
      02000A000656414C4D4F520100490000000100055749445448020002000A0006
      56414C4449530100490000000100055749445448020002000A000654504D4F4E
      4501004900000001000557494454480200020001000654504F424C4901004900
      0000010005574944544802000200010006545047415241010049000000010005
      57494454480200020001000643414C4946490100490000000100055749445448
      020002000100064352455349440100490000000100055749445448020002000F
      00064452455349440100490000000100055749445448020002001E0006545245
      5349440100490000000100055749445448020002000A0006434C41424F520100
      490000000100055749445448020002000F0006544C41424F5201004900000001
      00055749445448020002000A000643434F525245010049000000010005574944
      5448020002000F000644434F5252450100490000000100055749445448020002
      001E000443494955010049000000010005574944544802000200060006544355
      4F54410100490000000100055749445448020002000300064343414E43450100
      4900000001000557494454480200020003000643454D4F524101004900000001
      000557494454480200020003000646555041474F010049000000010005574944
      5448020002000600064F464943494E0100490000000100055749445448020002
      000F00064352414449430100490000000100055749445448020002000F000646
      4F5041474F01004900000001000557494454480200020001000650455041474F
      01004900000001000557494454480200020001000645444D4F52410100490000
      0001000557494454480200020003000646414354554101004900000001000557
      49445448020002000800065245434C414D010049000000010005574944544802
      000200010006524553504F4E0100490000000100055749445448020002000200
      0645535452414301004900000001000557494454480200020001000652454C4C
      454E0100490000000100055749445448020002000E00054C494E454101004900
      000001000557494454480200020003001046454348415F444553454D424F4C53
      4F01004900000001000557494454480200020008001146454348415F56454E43
      494D49454E544F01004900000001000557494454480200020008000749444944
      454E5401004900000001000557494454480200020002000000}
    object StringField1: TStringField
      FieldName = 'NUMERO'
      Size = 18
    end
    object StringField2: TStringField
      FieldName = 'IDENTIFICACION'
      Size = 11
    end
    object StringField3: TStringField
      FieldName = 'NOMBRE'
      Size = 45
    end
    object DataActualNOMBREC: TStringField
      FieldName = 'NOMBREC'
      Size = 60
    end
    object StringField4: TStringField
      FieldName = 'FNACIM'
      Size = 6
    end
    object StringField5: TStringField
      FieldName = 'FAPERT'
      Size = 6
    end
    object StringField6: TStringField
      FieldName = 'FVENCI'
      Size = 6
    end
    object StringField7: TStringField
      FieldName = 'VCUOTA'
      Size = 10
    end
    object StringField8: TStringField
      FieldName = 'NOVEDA'
      Size = 2
    end
    object StringField9: TStringField
      FieldName = 'ADJETI'
      Size = 2
    end
    object StringField10: TStringField
      FieldName = 'TPIDEN'
      Size = 2
    end
    object StringField11: TStringField
      FieldName = 'VALINI'
      Size = 10
    end
    object StringField12: TStringField
      FieldName = 'VALDEU'
      Size = 10
    end
    object StringField13: TStringField
      FieldName = 'VALMOR'
      Size = 10
    end
    object StringField14: TStringField
      FieldName = 'VALDIS'
      Size = 10
    end
    object StringField15: TStringField
      FieldName = 'TPMONE'
      Size = 1
    end
    object StringField16: TStringField
      FieldName = 'TPOBLI'
      Size = 1
    end
    object StringField17: TStringField
      FieldName = 'TPGARA'
      Size = 1
    end
    object StringField18: TStringField
      FieldName = 'CALIFI'
      Size = 1
    end
    object StringField19: TStringField
      FieldName = 'CRESID'
      Size = 15
    end
    object StringField20: TStringField
      FieldName = 'DRESID'
      Size = 30
    end
    object StringField21: TStringField
      FieldName = 'TRESID'
      Size = 10
    end
    object StringField22: TStringField
      FieldName = 'CLABOR'
      Size = 15
    end
    object StringField23: TStringField
      FieldName = 'TLABOR'
      Size = 10
    end
    object StringField24: TStringField
      FieldName = 'CCORRE'
      Size = 15
    end
    object StringField25: TStringField
      FieldName = 'DCORRE'
      Size = 30
    end
    object StringField26: TStringField
      FieldName = 'CIIU'
      Size = 6
    end
    object StringField27: TStringField
      FieldName = 'TCUOTA'
      Size = 3
    end
    object StringField28: TStringField
      FieldName = 'CCANCE'
      Size = 3
    end
    object StringField29: TStringField
      FieldName = 'CEMORA'
      Size = 3
    end
    object StringField30: TStringField
      FieldName = 'FUPAGO'
      Size = 6
    end
    object StringField31: TStringField
      FieldName = 'OFICIN'
      Size = 15
    end
    object StringField32: TStringField
      FieldName = 'CRADIC'
      Size = 15
    end
    object StringField33: TStringField
      FieldName = 'FOPAGO'
      Size = 1
    end
    object StringField34: TStringField
      FieldName = 'PEPAGO'
      Size = 1
    end
    object StringField35: TStringField
      FieldName = 'EDMORA'
      Size = 3
    end
    object StringField36: TStringField
      FieldName = 'FACTUA'
      Size = 8
    end
    object StringField37: TStringField
      FieldName = 'RECLAM'
      Size = 1
    end
    object StringField38: TStringField
      FieldName = 'RESPON'
      Size = 2
    end
    object StringField39: TStringField
      FieldName = 'ESTRAC'
      Size = 1
    end
    object StringField40: TStringField
      FieldName = 'RELLEN'
      Size = 14
    end
    object DataActualLINEA: TStringField
      FieldName = 'LINEA'
      Size = 3
    end
    object DataActualFECHA_DESEMBOLSO: TStringField
      FieldName = 'FECHA_DESEMBOLSO'
      Size = 8
    end
    object DataActualFECHA_VENCIMIENTO: TStringField
      FieldName = 'FECHA_VENCIMIENTO'
      Size = 8
    end
    object DataActualIDIDENT: TStringField
      FieldName = 'IDIDENT'
      Size = 2
    end
  end
  object IBPersona: TIBSQL
    Database = dmGeneral.IBDatabase1
    Transaction = dmGeneral.IBTransaction1
    Left = 352
    Top = 224
  end
  object IBTmp: TIBQuery
    Database = dmGeneral.IBDatabase1
    Transaction = dmGeneral.IBTransaction1
    Left = 168
    Top = 128
  end
  object IBSReporteAnt: TIBSQL
    Database = dmGeneral.IBDatabase1
    Transaction = dmGeneral.IBTransaction1
    Left = 200
    Top = 128
  end
  object IBQuery3: TIBQuery
    Database = dmGeneral.IBDatabase1
    Transaction = dmGeneral.IBTransaction1
    Left = 232
    Top = 128
  end
  object DataActualizaTabla: TClientDataSet
    Active = True
    Aggregates = <>
    FieldDefs = <
      item
        Name = 'NUMERO'
        DataType = ftString
        Size = 18
      end
      item
        Name = 'IDENTIFICACION'
        DataType = ftString
        Size = 11
      end
      item
        Name = 'NOMBRE'
        DataType = ftString
        Size = 45
      end
      item
        Name = 'FNACIM'
        DataType = ftString
        Size = 6
      end
      item
        Name = 'FAPERT'
        DataType = ftString
        Size = 6
      end
      item
        Name = 'FVENCI'
        DataType = ftString
        Size = 6
      end
      item
        Name = 'VCUOTA'
        DataType = ftString
        Size = 10
      end
      item
        Name = 'NOVEDA'
        DataType = ftString
        Size = 2
      end
      item
        Name = 'ADJETI'
        DataType = ftString
        Size = 2
      end
      item
        Name = 'TPIDEN'
        DataType = ftString
        Size = 2
      end
      item
        Name = 'VALINI'
        DataType = ftString
        Size = 10
      end
      item
        Name = 'VALDEU'
        DataType = ftString
        Size = 10
      end
      item
        Name = 'VALMOR'
        DataType = ftString
        Size = 10
      end
      item
        Name = 'VALDIS'
        DataType = ftString
        Size = 10
      end
      item
        Name = 'TPMONE'
        DataType = ftString
        Size = 1
      end
      item
        Name = 'TPOBLI'
        DataType = ftString
        Size = 1
      end
      item
        Name = 'TPGARA'
        DataType = ftString
        Size = 1
      end
      item
        Name = 'CALIFI'
        DataType = ftString
        Size = 1
      end
      item
        Name = 'CRESID'
        DataType = ftString
        Size = 15
      end
      item
        Name = 'DRESID'
        DataType = ftString
        Size = 30
      end
      item
        Name = 'TRESID'
        DataType = ftString
        Size = 10
      end
      item
        Name = 'CLABOR'
        DataType = ftString
        Size = 15
      end
      item
        Name = 'TLABOR'
        DataType = ftString
        Size = 10
      end
      item
        Name = 'CCORRE'
        DataType = ftString
        Size = 15
      end
      item
        Name = 'DCORRE'
        DataType = ftString
        Size = 30
      end
      item
        Name = 'CIIU'
        DataType = ftString
        Size = 6
      end
      item
        Name = 'TCUOTA'
        DataType = ftString
        Size = 3
      end
      item
        Name = 'CCANCE'
        DataType = ftString
        Size = 3
      end
      item
        Name = 'CEMORA'
        DataType = ftString
        Size = 3
      end
      item
        Name = 'FUPAGO'
        DataType = ftString
        Size = 6
      end
      item
        Name = 'OFICIN'
        DataType = ftString
        Size = 15
      end
      item
        Name = 'CRADIC'
        DataType = ftString
        Size = 15
      end
      item
        Name = 'FOPAGO'
        DataType = ftString
        Size = 1
      end
      item
        Name = 'PEPAGO'
        DataType = ftString
        Size = 1
      end
      item
        Name = 'EDMORA'
        DataType = ftString
        Size = 3
      end
      item
        Name = 'FACTUA'
        DataType = ftString
        Size = 8
      end
      item
        Name = 'RECLAM'
        DataType = ftString
        Size = 1
      end
      item
        Name = 'RESPON'
        DataType = ftString
        Size = 2
      end
      item
        Name = 'ESTRAC'
        DataType = ftString
        Size = 1
      end
      item
        Name = 'RELLEN'
        DataType = ftString
        Size = 14
      end>
    IndexDefs = <>
    Params = <>
    StoreDefs = True
    Left = 8
    Top = 168
    Data = {
      580400009619E0BD0100000018000000280000000000030000005804064E554D
      45524F01004900000001000557494454480200020012000E4944454E54494649
      434143494F4E0100490000000100055749445448020002000B00064E4F4D4252
      450100490000000100055749445448020002002D0006464E4143494D01004900
      0000010005574944544802000200060006464150455254010049000000010005
      5749445448020002000600064656454E43490100490000000100055749445448
      020002000600065643554F54410100490000000100055749445448020002000A
      00064E4F5645444101004900000001000557494454480200020002000641444A
      45544901004900000001000557494454480200020002000654504944454E0100
      4900000001000557494454480200020002000656414C494E4901004900000001
      00055749445448020002000A000656414C444555010049000000010005574944
      5448020002000A000656414C4D4F520100490000000100055749445448020002
      000A000656414C4449530100490000000100055749445448020002000A000654
      504D4F4E4501004900000001000557494454480200020001000654504F424C49
      0100490000000100055749445448020002000100065450474152410100490000
      0001000557494454480200020001000643414C49464901004900000001000557
      4944544802000200010006435245534944010049000000010005574944544802
      0002000F00064452455349440100490000000100055749445448020002001E00
      065452455349440100490000000100055749445448020002000A0006434C4142
      4F520100490000000100055749445448020002000F0006544C41424F52010049
      0000000100055749445448020002000A000643434F5252450100490000000100
      055749445448020002000F000644434F52524501004900000001000557494454
      48020002001E0004434949550100490000000100055749445448020002000600
      065443554F54410100490000000100055749445448020002000300064343414E
      434501004900000001000557494454480200020003000643454D4F5241010049
      00000001000557494454480200020003000646555041474F0100490000000100
      055749445448020002000600064F464943494E01004900000001000557494454
      48020002000F0006435241444943010049000000010005574944544802000200
      0F0006464F5041474F0100490000000100055749445448020002000100065045
      5041474F01004900000001000557494454480200020001000645444D4F524101
      0049000000010005574944544802000200030006464143545541010049000000
      0100055749445448020002000800065245434C414D0100490000000100055749
      44544802000200010006524553504F4E01004900000001000557494454480200
      0200020006455354524143010049000000010005574944544802000200010006
      52454C4C454E0100490000000100055749445448020002000E000000}
    object StringField41: TStringField
      FieldName = 'NUMERO'
      Size = 18
    end
    object StringField42: TStringField
      FieldName = 'IDENTIFICACION'
      Size = 11
    end
    object StringField43: TStringField
      FieldName = 'NOMBRE'
      Size = 45
    end
    object StringField44: TStringField
      FieldName = 'FNACIM'
      Size = 6
    end
    object StringField45: TStringField
      FieldName = 'FAPERT'
      Size = 6
    end
    object StringField46: TStringField
      FieldName = 'FVENCI'
      Size = 6
    end
    object StringField47: TStringField
      FieldName = 'VCUOTA'
      Size = 10
    end
    object StringField48: TStringField
      FieldName = 'NOVEDA'
      Size = 2
    end
    object StringField49: TStringField
      FieldName = 'ADJETI'
      Size = 2
    end
    object StringField50: TStringField
      FieldName = 'TPIDEN'
      Size = 2
    end
    object StringField51: TStringField
      FieldName = 'VALINI'
      Size = 10
    end
    object StringField52: TStringField
      FieldName = 'VALDEU'
      Size = 10
    end
    object StringField53: TStringField
      FieldName = 'VALMOR'
      Size = 10
    end
    object StringField54: TStringField
      FieldName = 'VALDIS'
      Size = 10
    end
    object StringField55: TStringField
      FieldName = 'TPMONE'
      Size = 1
    end
    object StringField56: TStringField
      FieldName = 'TPOBLI'
      Size = 1
    end
    object StringField57: TStringField
      FieldName = 'TPGARA'
      Size = 1
    end
    object StringField58: TStringField
      FieldName = 'CALIFI'
      Size = 1
    end
    object StringField59: TStringField
      FieldName = 'CRESID'
      Size = 15
    end
    object StringField60: TStringField
      FieldName = 'DRESID'
      Size = 30
    end
    object StringField61: TStringField
      FieldName = 'TRESID'
      Size = 10
    end
    object StringField62: TStringField
      FieldName = 'CLABOR'
      Size = 15
    end
    object StringField63: TStringField
      FieldName = 'TLABOR'
      Size = 10
    end
    object StringField64: TStringField
      FieldName = 'CCORRE'
      Size = 15
    end
    object StringField65: TStringField
      FieldName = 'DCORRE'
      Size = 30
    end
    object StringField66: TStringField
      FieldName = 'CIIU'
      Size = 6
    end
    object StringField67: TStringField
      FieldName = 'TCUOTA'
      Size = 3
    end
    object StringField68: TStringField
      FieldName = 'CCANCE'
      Size = 3
    end
    object StringField69: TStringField
      FieldName = 'CEMORA'
      Size = 3
    end
    object StringField70: TStringField
      FieldName = 'FUPAGO'
      Size = 6
    end
    object StringField71: TStringField
      FieldName = 'OFICIN'
      Size = 15
    end
    object StringField72: TStringField
      FieldName = 'CRADIC'
      Size = 15
    end
    object StringField73: TStringField
      FieldName = 'FOPAGO'
      Size = 1
    end
    object StringField74: TStringField
      FieldName = 'PEPAGO'
      Size = 1
    end
    object StringField75: TStringField
      FieldName = 'EDMORA'
      Size = 3
    end
    object StringField76: TStringField
      FieldName = 'FACTUA'
      Size = 8
    end
    object StringField77: TStringField
      FieldName = 'RECLAM'
      Size = 1
    end
    object StringField78: TStringField
      FieldName = 'RESPON'
      Size = 2
    end
    object StringField79: TStringField
      FieldName = 'ESTRAC'
      Size = 1
    end
    object StringField80: TStringField
      FieldName = 'RELLEN'
      Size = 14
    end
  end
  object DataSaldados: TClientDataSet
    Active = True
    Aggregates = <>
    FieldDefs = <
      item
        Name = 'NUMERO'
        DataType = ftString
        Size = 18
      end
      item
        Name = 'IDENTIFICACION'
        DataType = ftString
        Size = 11
      end
      item
        Name = 'NOMBRE'
        DataType = ftString
        Size = 45
      end
      item
        Name = 'NOMBREC'
        DataType = ftString
        Size = 60
      end
      item
        Name = 'FNACIM'
        DataType = ftString
        Size = 6
      end
      item
        Name = 'FAPERT'
        DataType = ftString
        Size = 6
      end
      item
        Name = 'FVENCI'
        DataType = ftString
        Size = 6
      end
      item
        Name = 'VCUOTA'
        DataType = ftString
        Size = 10
      end
      item
        Name = 'NOVEDA'
        DataType = ftString
        Size = 2
      end
      item
        Name = 'ADJETI'
        DataType = ftString
        Size = 2
      end
      item
        Name = 'TPIDEN'
        DataType = ftString
        Size = 2
      end
      item
        Name = 'VALINI'
        DataType = ftString
        Size = 10
      end
      item
        Name = 'VALDEU'
        DataType = ftString
        Size = 10
      end
      item
        Name = 'VALMOR'
        DataType = ftString
        Size = 10
      end
      item
        Name = 'VALDIS'
        DataType = ftString
        Size = 10
      end
      item
        Name = 'TPMONE'
        DataType = ftString
        Size = 1
      end
      item
        Name = 'TPOBLI'
        DataType = ftString
        Size = 1
      end
      item
        Name = 'TPGARA'
        DataType = ftString
        Size = 1
      end
      item
        Name = 'CALIFI'
        DataType = ftString
        Size = 1
      end
      item
        Name = 'CRESID'
        DataType = ftString
        Size = 15
      end
      item
        Name = 'DRESID'
        DataType = ftString
        Size = 30
      end
      item
        Name = 'TRESID'
        DataType = ftString
        Size = 10
      end
      item
        Name = 'CLABOR'
        DataType = ftString
        Size = 15
      end
      item
        Name = 'TLABOR'
        DataType = ftString
        Size = 10
      end
      item
        Name = 'CCORRE'
        DataType = ftString
        Size = 15
      end
      item
        Name = 'DCORRE'
        DataType = ftString
        Size = 30
      end
      item
        Name = 'CIIU'
        DataType = ftString
        Size = 6
      end
      item
        Name = 'TCUOTA'
        DataType = ftString
        Size = 3
      end
      item
        Name = 'CCANCE'
        DataType = ftString
        Size = 3
      end
      item
        Name = 'CEMORA'
        DataType = ftString
        Size = 3
      end
      item
        Name = 'FUPAGO'
        DataType = ftString
        Size = 6
      end
      item
        Name = 'OFICIN'
        DataType = ftString
        Size = 15
      end
      item
        Name = 'CRADIC'
        DataType = ftString
        Size = 15
      end
      item
        Name = 'FOPAGO'
        DataType = ftString
        Size = 1
      end
      item
        Name = 'PEPAGO'
        DataType = ftString
        Size = 1
      end
      item
        Name = 'EDMORA'
        DataType = ftString
        Size = 3
      end
      item
        Name = 'FACTUA'
        DataType = ftString
        Size = 8
      end
      item
        Name = 'RECLAM'
        DataType = ftString
        Size = 1
      end
      item
        Name = 'RESPON'
        DataType = ftString
        Size = 2
      end
      item
        Name = 'ESTRAC'
        DataType = ftString
        Size = 1
      end
      item
        Name = 'RELLEN'
        DataType = ftString
        Size = 14
      end
      item
        Name = 'LINEA'
        DataType = ftString
        Size = 3
      end
      item
        Name = 'FECHA_DESEMBOLSO'
        DataType = ftString
        Size = 8
      end
      item
        Name = 'FECHA_VENCIMIENTO'
        DataType = ftString
        Size = 8
      end
      item
        Name = 'IDIDENT'
        DataType = ftString
        Size = 2
      end>
    IndexDefs = <>
    Params = <>
    StoreDefs = True
    Left = 104
    Top = 168
    Data = {
      F50400009619E0BD01000000180000002D000000000003000000F504064E554D
      45524F01004900000001000557494454480200020012000E4944454E54494649
      434143494F4E0100490000000100055749445448020002000B00064E4F4D4252
      450100490000000100055749445448020002002D00074E4F4D42524543010049
      0000000100055749445448020002003C0006464E4143494D0100490000000100
      0557494454480200020006000646415045525401004900000001000557494454
      48020002000600064656454E4349010049000000010005574944544802000200
      0600065643554F54410100490000000100055749445448020002000A00064E4F
      5645444101004900000001000557494454480200020002000641444A45544901
      004900000001000557494454480200020002000654504944454E010049000000
      01000557494454480200020002000656414C494E490100490000000100055749
      445448020002000A000656414C44455501004900000001000557494454480200
      02000A000656414C4D4F520100490000000100055749445448020002000A0006
      56414C4449530100490000000100055749445448020002000A000654504D4F4E
      4501004900000001000557494454480200020001000654504F424C4901004900
      0000010005574944544802000200010006545047415241010049000000010005
      57494454480200020001000643414C4946490100490000000100055749445448
      020002000100064352455349440100490000000100055749445448020002000F
      00064452455349440100490000000100055749445448020002001E0006545245
      5349440100490000000100055749445448020002000A0006434C41424F520100
      490000000100055749445448020002000F0006544C41424F5201004900000001
      00055749445448020002000A000643434F525245010049000000010005574944
      5448020002000F000644434F5252450100490000000100055749445448020002
      001E000443494955010049000000010005574944544802000200060006544355
      4F54410100490000000100055749445448020002000300064343414E43450100
      4900000001000557494454480200020003000643454D4F524101004900000001
      000557494454480200020003000646555041474F010049000000010005574944
      5448020002000600064F464943494E0100490000000100055749445448020002
      000F00064352414449430100490000000100055749445448020002000F000646
      4F5041474F01004900000001000557494454480200020001000650455041474F
      01004900000001000557494454480200020001000645444D4F52410100490000
      0001000557494454480200020003000646414354554101004900000001000557
      49445448020002000800065245434C414D010049000000010005574944544802
      000200010006524553504F4E0100490000000100055749445448020002000200
      0645535452414301004900000001000557494454480200020001000652454C4C
      454E0100490000000100055749445448020002000E00054C494E454101004900
      000001000557494454480200020003001046454348415F444553454D424F4C53
      4F01004900000001000557494454480200020008001146454348415F56454E43
      494D49454E544F01004900000001000557494454480200020008000749444944
      454E5401004900000001000557494454480200020002000000}
    object StringField81: TStringField
      FieldName = 'NUMERO'
      Size = 18
    end
    object StringField82: TStringField
      FieldName = 'IDENTIFICACION'
      Size = 11
    end
    object StringField83: TStringField
      FieldName = 'NOMBRE'
      Size = 45
    end
    object DataSaldadosNOMBREC: TStringField
      FieldName = 'NOMBREC'
      Size = 60
    end
    object StringField84: TStringField
      FieldName = 'FNACIM'
      Size = 6
    end
    object StringField85: TStringField
      FieldName = 'FAPERT'
      Size = 6
    end
    object StringField86: TStringField
      FieldName = 'FVENCI'
      Size = 6
    end
    object StringField87: TStringField
      FieldName = 'VCUOTA'
      Size = 10
    end
    object StringField88: TStringField
      FieldName = 'NOVEDA'
      Size = 2
    end
    object StringField89: TStringField
      FieldName = 'ADJETI'
      Size = 2
    end
    object StringField90: TStringField
      FieldName = 'TPIDEN'
      Size = 2
    end
    object StringField91: TStringField
      FieldName = 'VALINI'
      Size = 10
    end
    object StringField92: TStringField
      FieldName = 'VALDEU'
      Size = 10
    end
    object StringField93: TStringField
      FieldName = 'VALMOR'
      Size = 10
    end
    object StringField94: TStringField
      FieldName = 'VALDIS'
      Size = 10
    end
    object StringField95: TStringField
      FieldName = 'TPMONE'
      Size = 1
    end
    object StringField96: TStringField
      FieldName = 'TPOBLI'
      Size = 1
    end
    object StringField97: TStringField
      FieldName = 'TPGARA'
      Size = 1
    end
    object StringField98: TStringField
      FieldName = 'CALIFI'
      Size = 1
    end
    object StringField99: TStringField
      FieldName = 'CRESID'
      Size = 15
    end
    object StringField100: TStringField
      FieldName = 'DRESID'
      Size = 30
    end
    object StringField101: TStringField
      FieldName = 'TRESID'
      Size = 10
    end
    object StringField102: TStringField
      FieldName = 'CLABOR'
      Size = 15
    end
    object StringField103: TStringField
      FieldName = 'TLABOR'
      Size = 10
    end
    object StringField104: TStringField
      FieldName = 'CCORRE'
      Size = 15
    end
    object StringField105: TStringField
      FieldName = 'DCORRE'
      Size = 30
    end
    object StringField106: TStringField
      FieldName = 'CIIU'
      Size = 6
    end
    object StringField107: TStringField
      FieldName = 'TCUOTA'
      Size = 3
    end
    object StringField108: TStringField
      FieldName = 'CCANCE'
      Size = 3
    end
    object StringField109: TStringField
      FieldName = 'CEMORA'
      Size = 3
    end
    object StringField110: TStringField
      FieldName = 'FUPAGO'
      Size = 6
    end
    object StringField111: TStringField
      FieldName = 'OFICIN'
      Size = 15
    end
    object StringField112: TStringField
      FieldName = 'CRADIC'
      Size = 15
    end
    object StringField113: TStringField
      FieldName = 'FOPAGO'
      Size = 1
    end
    object StringField114: TStringField
      FieldName = 'PEPAGO'
      Size = 1
    end
    object StringField115: TStringField
      FieldName = 'EDMORA'
      Size = 3
    end
    object StringField116: TStringField
      FieldName = 'FACTUA'
      Size = 8
    end
    object StringField117: TStringField
      FieldName = 'RECLAM'
      Size = 1
    end
    object StringField118: TStringField
      FieldName = 'RESPON'
      Size = 2
    end
    object StringField119: TStringField
      FieldName = 'ESTRAC'
      Size = 1
    end
    object StringField120: TStringField
      FieldName = 'RELLEN'
      Size = 14
    end
    object DataSaldadosLINEA: TStringField
      FieldName = 'LINEA'
      Size = 3
    end
    object DataSaldadosFECHA_DESEMBOLSO: TStringField
      FieldName = 'FECHA_DESEMBOLSO'
      Size = 8
    end
    object DataSaldadosFECHA_VENCIMIENTO: TStringField
      FieldName = 'FECHA_VENCIMIENTO'
      Size = 8
    end
    object DataSaldadosIDIDENT: TStringField
      FieldName = 'IDIDENT'
      Size = 2
    end
  end
  object SD1: TSaveDialog
    Left = 192
    Top = 200
  end
end
