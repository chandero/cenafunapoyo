object frmControlCobroCartera: TfrmControlCobroCartera
  Left = 215
  Top = 127
  Width = 1166
  Height = 622
  Caption = 'Control de Cobro'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clBlack
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  Position = poScreenCenter
  Visible = True
  OnClose = FormClose
  OnCreate = FormCreate
  OnKeyPress = FormKeyPress
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 1158
    Height = 105
    Align = alTop
    TabOrder = 0
    object GroupBox1: TGroupBox
      Left = 1
      Top = 1
      Width = 1156
      Height = 98
      Align = alTop
      Caption = 'Condiciones de Busqueda'
      TabOrder = 0
      object RGEstado: TRadioGroup
        Left = 6
        Top = 11
        Width = 350
        Height = 32
        Caption = 'Estado'
        Columns = 5
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Times New Roman'
        Font.Style = []
        ItemIndex = 0
        Items.Strings = (
          'Todos'
          'Vigentes'
          'Prejuridicos'
          'Juridicos'
          'Castigados')
        ParentFont = False
        TabOrder = 0
      end
      object GroupBox2: TGroupBox
        Left = 6
        Top = 37
        Width = 278
        Height = 29
        Caption = 'Morosidad'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Times New Roman'
        Font.Style = []
        ParentFont = False
        TabOrder = 1
        object Label1: TLabel
          Left = 61
          Top = 8
          Width = 33
          Height = 14
          Caption = 'Desde: '
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Times New Roman'
          Font.Style = []
          ParentFont = False
        end
        object Label2: TLabel
          Left = 153
          Top = 8
          Width = 32
          Height = 14
          Caption = 'Hasta :'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Times New Roman'
          Font.Style = []
          ParentFont = False
        end
        object Label4: TLabel
          Left = 242
          Top = 8
          Width = 20
          Height = 14
          Caption = 'Dias'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Times New Roman'
          Font.Style = []
          ParentFont = False
        end
        object EdDiasIni: TJvIntegerEdit
          Left = 96
          Top = 9
          Width = 51
          Height = 22
          Alignment = taRightJustify
          Color = clWhite
          ReadOnly = False
          TabOrder = 0
          Value = 0
          MaxValue = 0
          MinValue = 0
          HasMaxValue = False
          HasMinValue = False
        end
        object EdDiasFin: TJvIntegerEdit
          Left = 188
          Top = 8
          Width = 51
          Height = 22
          Alignment = taRightJustify
          Color = clWhite
          ReadOnly = False
          TabOrder = 1
          Value = 0
          MaxValue = 0
          MinValue = 0
          HasMaxValue = False
          HasMinValue = False
        end
      end
      object CmdProcesar: TBitBtn
        Left = 290
        Top = 43
        Width = 66
        Height = 25
        Caption = '&Procesar'
        TabOrder = 3
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
      object JvGroupBox1: TJvGroupBox
        Left = 359
        Top = 2
        Width = 417
        Height = 86
        Caption = 'Buscar Por:'
        TabOrder = 4
        object JvBlinkingLabel1: TJvBlinkingLabel
          Left = 118
          Top = 0
          Width = 238
          Height = 13
          Alignment = taCenter
          Caption = 'Para Buscar una Persona haga click aqu'#237
          Color = clGreen
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clYellow
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentColor = False
          ParentFont = False
          OnClick = JvBlinkingLabel1Click
          HotTrackFont.Charset = DEFAULT_CHARSET
          HotTrackFont.Color = clBlack
          HotTrackFont.Height = -11
          HotTrackFont.Name = 'MS Sans Serif'
          HotTrackFont.Style = []
          BlinkingDelay = 1000
          BlinkingTime = 1000
        end
        object PageBuscar: TJvPageControl
          Left = 2
          Top = 15
          Width = 413
          Height = 69
          ActivePage = Tab1
          Align = alClient
          Style = tsFlatButtons
          TabIndex = 0
          TabOrder = 0
          object Tab1: TTabSheet
            Caption = 'Documento'
            object Label7: TLabel
              Left = 0
              Top = 21
              Width = 31
              Height = 14
              Caption = 'Tipo Id'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'Arial'
              Font.Style = []
              ParentFont = False
            end
            object Label8: TLabel
              Left = 166
              Top = 21
              Width = 37
              Height = 14
              Caption = 'N'#250'mero'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'Arial'
              Font.Style = []
              ParentFont = False
            end
            object CBtiposid: TDBLookupComboBox
              Left = 35
              Top = 15
              Width = 131
              Height = 21
              Color = clWhite
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = [fsBold]
              KeyField = 'ID_IDENTIFICACION'
              ListField = 'DESCRIPCION_IDENTIFICACION'
              ListSource = DSTiposId
              ParentFont = False
              TabOrder = 0
            end
            object EdNumeroIdentificacion: TMemo
              Left = 205
              Top = 15
              Width = 122
              Height = 22
              Alignment = taRightJustify
              Color = clWhite
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = [fsBold]
              MaxLength = 15
              ParentFont = False
              TabOrder = 1
              WantReturns = False
              WordWrap = False
            end
            object CmdActualizar1: TBitBtn
              Left = 330
              Top = 15
              Width = 75
              Height = 23
              Caption = '&Actualizar'
              TabOrder = 2
              OnClick = CmdActualizar1Click
              Glyph.Data = {
                36050000424D3605000000000000360400002800000010000000100000000100
                08000000000000010000D30E0000D30E00000001000000010000008C00000094
                0000009C000000A5000000940800009C100000AD100000AD180000AD210000B5
                210000BD210018B5290000C62900319C310000CE310029AD390031B5420018C6
                420000D6420052A54A0029AD4A0029CE5A006BB5630000FF63008CBD7B00A5C6
                94005AE7A500FF00FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
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
                FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF001B1B1B1B1B13
                04161B1B1B1B1B1B1B1B1B1B1B1B1B0B0A01181B1B1B1B1B1B1B1B1B1B1B160A
                0C030D1B1B1B1B1B1B1B1B1B1B1B050E0C0601191B1B1B1B1B1B1B1B1B130E0C
                170E02001B1B1B1B1B1B1B1B1B0B1517170A0C01181B1B1B1B1B1B1B1B111717
                13130C030D1B1B1B1B1B1B1B1B1B08081B1B070C01191B1B1B1B1B1B1B1B1B1B
                1B1B100C02001B1B1B1B1B1B1B1B1B1B1B1B1B090C01181B1B1B1B1B1B1B1B1B
                1B1B1B130C0F101B1B1B1B1B1B1B1B1B1B1B1B1B141A0F181B1B1B1B1B1B1B1B
                1B1B1B1B1012181B1B1B1B1B1B1B1B1B1B1B1B1B1B191B1B1B1B1B1B1B1B1B1B
                1B1B1B1B1B1B1B1B1B1B1B1B1B1B1B1B1B1B1B1B1B1B1B1B1B1B}
            end
          end
          object Tab2: TTabSheet
            Caption = 'Captaci'#243'n'
            ImageIndex = 1
            TabVisible = False
            object Label9: TLabel
              Left = 148
              Top = 20
              Width = 37
              Height = 13
              Caption = 'N'#250'mero'
            end
            object Label10: TLabel
              Left = 6
              Top = 21
              Width = 21
              Height = 13
              Caption = 'Tipo'
            end
            object EdCaptacion: TJvEdit
              Left = 192
              Top = 15
              Width = 63
              Height = 21
              Alignment = taRightJustify
              GroupIndex = -1
              MaxPixel.Font.Charset = DEFAULT_CHARSET
              MaxPixel.Font.Color = clBlack
              MaxPixel.Font.Height = -11
              MaxPixel.Font.Name = 'MS Sans Serif'
              MaxPixel.Font.Style = []
              Modified = False
              SelStart = 0
              SelLength = 0
              AutoSize = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = [fsBold]
              MaxLength = 7
              ParentFont = False
              PasswordChar = #0
              ReadOnly = False
              TabOrder = 1
              OnExit = EdCaptacionExit
            end
            object CBTiposCaptacion: TDBLookupComboBox
              Left = 31
              Top = 15
              Width = 113
              Height = 21
              KeyField = 'ID_TIPO_CAPTACION'
              ListField = 'DESCRIPCION'
              ListSource = DSTiposCaptacion
              TabOrder = 0
            end
            object CmdActualizar2: TBitBtn
              Left = 265
              Top = 14
              Width = 75
              Height = 23
              Caption = '&Actualizar'
              TabOrder = 2
              OnClick = CmdActualizar2Click
              Glyph.Data = {
                36050000424D3605000000000000360400002800000010000000100000000100
                08000000000000010000D30E0000D30E00000001000000010000008C00000094
                0000009C000000A5000000940800009C100000AD100000AD180000AD210000B5
                210000BD210018B5290000C62900319C310000CE310029AD390031B5420018C6
                420000D6420052A54A0029AD4A0029CE5A006BB5630000FF63008CBD7B00A5C6
                94005AE7A500FF00FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
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
                FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF001B1B1B1B1B13
                04161B1B1B1B1B1B1B1B1B1B1B1B1B0B0A01181B1B1B1B1B1B1B1B1B1B1B160A
                0C030D1B1B1B1B1B1B1B1B1B1B1B050E0C0601191B1B1B1B1B1B1B1B1B130E0C
                170E02001B1B1B1B1B1B1B1B1B0B1517170A0C01181B1B1B1B1B1B1B1B111717
                13130C030D1B1B1B1B1B1B1B1B1B08081B1B070C01191B1B1B1B1B1B1B1B1B1B
                1B1B100C02001B1B1B1B1B1B1B1B1B1B1B1B1B090C01181B1B1B1B1B1B1B1B1B
                1B1B1B130C0F101B1B1B1B1B1B1B1B1B1B1B1B1B141A0F181B1B1B1B1B1B1B1B
                1B1B1B1B1012181B1B1B1B1B1B1B1B1B1B1B1B1B1B191B1B1B1B1B1B1B1B1B1B
                1B1B1B1B1B1B1B1B1B1B1B1B1B1B1B1B1B1B1B1B1B1B1B1B1B1B}
            end
          end
          object Tab3: TTabSheet
            Caption = 'Colocaci'#243'n'
            ImageIndex = 2
            object Label18: TLabel
              Left = 6
              Top = 19
              Width = 149
              Height = 13
              Caption = 'N'#250'mero Colocaci'#243'n y/o Pagar'#233
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentFont = False
            end
            object EdColocacion: TJvEdit
              Left = 160
              Top = 15
              Width = 87
              Height = 21
              Alignment = taRightJustify
              GroupIndex = -1
              MaxPixel.Font.Charset = DEFAULT_CHARSET
              MaxPixel.Font.Color = clBlack
              MaxPixel.Font.Height = -11
              MaxPixel.Font.Name = 'MS Sans Serif'
              MaxPixel.Font.Style = []
              Modified = False
              SelStart = 0
              SelLength = 0
              AutoSize = False
              Color = clWhite
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = [fsBold]
              MaxLength = 11
              ParentFont = False
              PasswordChar = #0
              ReadOnly = False
              TabOrder = 0
            end
            object CmdActualizar3: TBitBtn
              Left = 260
              Top = 15
              Width = 75
              Height = 23
              Caption = '&Actualizar'
              TabOrder = 1
              OnClick = CmdActualizar3Click
              Glyph.Data = {
                36050000424D3605000000000000360400002800000010000000100000000100
                08000000000000010000D30E0000D30E00000001000000010000008C00000094
                0000009C000000A5000000940800009C100000AD100000AD180000AD210000B5
                210000BD210018B5290000C62900319C310000CE310029AD390031B5420018C6
                420000D6420052A54A0029AD4A0029CE5A006BB5630000FF63008CBD7B00A5C6
                94005AE7A500FF00FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
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
                FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF001B1B1B1B1B13
                04161B1B1B1B1B1B1B1B1B1B1B1B1B0B0A01181B1B1B1B1B1B1B1B1B1B1B160A
                0C030D1B1B1B1B1B1B1B1B1B1B1B050E0C0601191B1B1B1B1B1B1B1B1B130E0C
                170E02001B1B1B1B1B1B1B1B1B0B1517170A0C01181B1B1B1B1B1B1B1B111717
                13130C030D1B1B1B1B1B1B1B1B1B08081B1B070C01191B1B1B1B1B1B1B1B1B1B
                1B1B100C02001B1B1B1B1B1B1B1B1B1B1B1B1B090C01181B1B1B1B1B1B1B1B1B
                1B1B1B130C0F101B1B1B1B1B1B1B1B1B1B1B1B1B141A0F181B1B1B1B1B1B1B1B
                1B1B1B1B1012181B1B1B1B1B1B1B1B1B1B1B1B1B1B191B1B1B1B1B1B1B1B1B1B
                1B1B1B1B1B1B1B1B1B1B1B1B1B1B1B1B1B1B1B1B1B1B1B1B1B1B}
            end
          end
          object TabBuscaFecha: TTabSheet
            Caption = 'Fecha Vencimiento'
            ImageIndex = 3
            object Label3: TLabel
              Left = 0
              Top = 19
              Width = 78
              Height = 13
              Caption = 'Fecha a Evaluar'
            end
            object Label11: TLabel
              Left = 197
              Top = 20
              Width = 9
              Height = 13
              Caption = 'Al'
            end
            object CmdActualizar4: TBitBtn
              Left = 324
              Top = 15
              Width = 75
              Height = 23
              Caption = '&Actualizar'
              TabOrder = 0
              OnClick = CmdActualizar4Click
              Glyph.Data = {
                36050000424D3605000000000000360400002800000010000000100000000100
                08000000000000010000D30E0000D30E00000001000000010000008C00000094
                0000009C000000A5000000940800009C100000AD100000AD180000AD210000B5
                210000BD210018B5290000C62900319C310000CE310029AD390031B5420018C6
                420000D6420052A54A0029AD4A0029CE5A006BB5630000FF63008CBD7B00A5C6
                94005AE7A500FF00FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
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
                FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF001B1B1B1B1B13
                04161B1B1B1B1B1B1B1B1B1B1B1B1B0B0A01181B1B1B1B1B1B1B1B1B1B1B160A
                0C030D1B1B1B1B1B1B1B1B1B1B1B050E0C0601191B1B1B1B1B1B1B1B1B130E0C
                170E02001B1B1B1B1B1B1B1B1B0B1517170A0C01181B1B1B1B1B1B1B1B111717
                13130C030D1B1B1B1B1B1B1B1B1B08081B1B070C01191B1B1B1B1B1B1B1B1B1B
                1B1B100C02001B1B1B1B1B1B1B1B1B1B1B1B1B090C01181B1B1B1B1B1B1B1B1B
                1B1B1B130C0F101B1B1B1B1B1B1B1B1B1B1B1B1B141A0F181B1B1B1B1B1B1B1B
                1B1B1B1B1012181B1B1B1B1B1B1B1B1B1B1B1B1B1B191B1B1B1B1B1B1B1B1B1B
                1B1B1B1B1B1B1B1B1B1B1B1B1B1B1B1B1B1B1B1B1B1B1B1B1B1B}
            end
            object EdFechaAEvaluarI: TDateTimePicker
              Left = 96
              Top = 16
              Width = 89
              Height = 21
              CalAlignment = dtaLeft
              Date = 40816.3635175463
              Time = 40816.3635175463
              Color = clWhite
              DateFormat = dfShort
              DateMode = dmComboBox
              Kind = dtkDate
              ParseInput = False
              TabOrder = 1
            end
            object EdFechaAEvaluarF: TDateTimePicker
              Left = 222
              Top = 16
              Width = 89
              Height = 21
              CalAlignment = dtaLeft
              Date = 40816.3635175463
              Time = 40816.3635175463
              Color = clWhite
              DateFormat = dfShort
              DateMode = dmComboBox
              Kind = dtkDate
              ParseInput = False
              TabOrder = 2
            end
          end
        end
        object EdNombre: TJvStaticText
          Left = 6
          Top = 37
          Width = 331
          Height = 18
          TextMargins.X = 0
          TextMargins.Y = 0
          AutoSize = False
          BevelKind = bkSoft
          BevelOuter = bvSpace
          Color = clWhite
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          HotTrackFont.Charset = DEFAULT_CHARSET
          HotTrackFont.Color = clBlack
          HotTrackFont.Height = -11
          HotTrackFont.Name = 'MS Sans Serif'
          HotTrackFont.Style = []
          Layout = tlTop
          ParentColor = False
          ParentFont = False
          TabOrder = 1
          WordWrap = False
        end
      end
      object RGTipoCuota: TRadioGroup
        Left = 6
        Top = 64
        Width = 278
        Height = 30
        Caption = 'Tipo de Cuota'
        Columns = 3
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Times New Roman'
        Font.Style = []
        ItemIndex = 0
        Items.Strings = (
          'Todas'
          'Fija'
          'Variable')
        ParentFont = False
        TabOrder = 2
      end
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 105
    Width = 1158
    Height = 174
    Align = alTop
    TabOrder = 1
    object GroupBox3: TGroupBox
      Left = 1
      Top = 1
      Width = 1156
      Height = 172
      Align = alClient
      Caption = 'Resultado de la Busqueda'
      TabOrder = 0
      object GridColocaciones: TXStringGrid
        Left = 2
        Top = 15
        Width = 1152
        Height = 155
        Align = alClient
        Color = clWhite
        ColCount = 15
        DefaultRowHeight = 18
        DefaultDrawing = False
        FixedCols = 0
        RowCount = 2
        Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine, goRowSelect]
        TabOrder = 0
        OnDrawCell = GridColocacionesDrawCell
        OnSelectCell = GridColocacionesSelectCell
        FixedLineColor = clBlack
        Columns = <
          item
            HeaderFont.Charset = DEFAULT_CHARSET
            HeaderFont.Color = clBlack
            HeaderFont.Height = -11
            HeaderFont.Name = 'MS Sans Serif'
            HeaderFont.Style = [fsBold]
            HeaderAlignment = taCenter
            Caption = 'COLOCACION'
            Color = clWhite
            Width = 181
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            EditorInheritsCellProps = False
          end
          item
            HeaderFont.Charset = DEFAULT_CHARSET
            HeaderFont.Color = clBlack
            HeaderFont.Height = -11
            HeaderFont.Name = 'MS Sans Serif'
            HeaderFont.Style = [fsBold]
            HeaderAlignment = taCenter
            Caption = 'ASOCIADO'
            Color = clWhite
            Width = 250
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            EditorInheritsCellProps = False
          end
          item
            HeaderFont.Charset = DEFAULT_CHARSET
            HeaderFont.Color = clBlack
            HeaderFont.Height = -11
            HeaderFont.Name = 'MS Sans Serif'
            HeaderFont.Style = [fsBold]
            HeaderAlignment = taCenter
            Caption = 'SALDO'
            Color = clWhite
            Width = 222
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            Alignment = taRightJustify
            EditorInheritsCellProps = False
          end
          item
            HeaderFont.Charset = DEFAULT_CHARSET
            HeaderFont.Color = clBlack
            HeaderFont.Height = -11
            HeaderFont.Name = 'MS Sans Serif'
            HeaderFont.Style = [fsBold]
            HeaderAlignment = taCenter
            Caption = 'CUOTA'
            Color = clWhite
            Width = 120
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            Alignment = taRightJustify
            EditorInheritsCellProps = False
          end
          item
            HeaderFont.Charset = DEFAULT_CHARSET
            HeaderFont.Color = clBlack
            HeaderFont.Height = -11
            HeaderFont.Name = 'MS Sans Serif'
            HeaderFont.Style = [fsBold]
            HeaderAlignment = taCenter
            Caption = 'CAPITAL'
            Color = clWhite
            Width = 72
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            EditorInheritsCellProps = False
          end
          item
            HeaderFont.Charset = DEFAULT_CHARSET
            HeaderFont.Color = clBlack
            HeaderFont.Height = -11
            HeaderFont.Name = 'MS Sans Serif'
            HeaderFont.Style = [fsBold]
            HeaderAlignment = taCenter
            Caption = 'INTERES'
            Color = clWhite
            Width = 72
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            EditorInheritsCellProps = False
          end
          item
            HeaderFont.Charset = DEFAULT_CHARSET
            HeaderFont.Color = clBlack
            HeaderFont.Height = -11
            HeaderFont.Name = 'MS Sans Serif'
            HeaderFont.Style = [fsBold]
            HeaderAlignment = taCenter
            Caption = 'ESTADO'
            Color = clWhite
            Width = 171
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            EditorInheritsCellProps = False
          end
          item
            HeaderFont.Charset = DEFAULT_CHARSET
            HeaderFont.Color = clBlack
            HeaderFont.Height = -11
            HeaderFont.Name = 'MS Sans Serif'
            HeaderFont.Style = [fsBold]
            HeaderAlignment = taCenter
            Caption = 'DIAS'
            Color = clWhite
            Width = 136
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            Alignment = taRightJustify
            EditorInheritsCellProps = False
          end
          item
            HeaderFont.Charset = DEFAULT_CHARSET
            HeaderFont.Color = clBlack
            HeaderFont.Height = -11
            HeaderFont.Name = 'MS Sans Serif'
            HeaderFont.Style = [fsBold]
            HeaderAlignment = taCenter
            Caption = 'ID'
            Color = clWhite
            Width = 117
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            EditorInheritsCellProps = False
          end
          item
            HeaderFont.Charset = DEFAULT_CHARSET
            HeaderFont.Color = clBlack
            HeaderFont.Height = -11
            HeaderFont.Name = 'MS Sans Serif'
            HeaderFont.Style = [fsBold]
            HeaderAlignment = taCenter
            Caption = 'IDENTIFICACION'
            Color = clWhite
            Width = 100
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            EditorInheritsCellProps = False
          end
          item
            HeaderFont.Charset = DEFAULT_CHARSET
            HeaderFont.Color = clBlack
            HeaderFont.Height = -11
            HeaderFont.Name = 'MS Sans Serif'
            HeaderFont.Style = [fsBold]
            Caption = 'TIPO CUOTA'
            Color = clWhite
            Width = 120
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            EditorInheritsCellProps = False
          end
          item
            HeaderFont.Charset = DEFAULT_CHARSET
            HeaderFont.Color = clBlack
            HeaderFont.Height = -11
            HeaderFont.Name = 'MS Sans Serif'
            HeaderFont.Style = [fsBold]
            HeaderAlignment = taCenter
            Caption = 'EN AHORROS'
            Color = clWhite
            Width = 120
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            Alignment = taRightJustify
            EditorInheritsCellProps = False
          end
          item
            HeaderFont.Charset = DEFAULT_CHARSET
            HeaderFont.Color = clBlack
            HeaderFont.Height = -11
            HeaderFont.Name = 'MS Sans Serif'
            HeaderFont.Style = [fsBold]
            HeaderAlignment = taCenter
            Caption = 'EN APORTES'
            Color = clWhite
            Width = 120
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            Alignment = taRightJustify
            EditorInheritsCellProps = False
          end
          item
            HeaderFont.Charset = DEFAULT_CHARSET
            HeaderFont.Color = clBlack
            HeaderFont.Height = -11
            HeaderFont.Name = 'MS Sans Serif'
            HeaderFont.Style = []
            Caption = 'COMPROMISO'
            Color = clWhite
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            EditorInheritsCellProps = False
          end
          item
            HeaderFont.Charset = DEFAULT_CHARSET
            HeaderFont.Color = clBlack
            HeaderFont.Height = -11
            HeaderFont.Name = 'MS Sans Serif'
            HeaderFont.Style = []
            Caption = 'CENTRO'
            Color = clWhite
            Width = 150
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            EditorInheritsCellProps = False
          end>
        MultiLine = False
        ImmediateEditMode = False
        ColWidths = (
          181
          250
          222
          120
          72
          72
          171
          136
          117
          100
          120
          120
          120
          64
          150)
      end
    end
  end
  object Panel3: TPanel
    Left = 0
    Top = 312
    Width = 782
    Height = 37
    TabOrder = 2
    object BtnUtilidades: TJvArrowButton
      Left = 8
      Top = 8
      Width = 91
      Height = 22
      DropDown = PopupUtilidades
      Caption = 'Utilidades'
      FillFont.Charset = DEFAULT_CHARSET
      FillFont.Color = clBlack
      FillFont.Height = -11
      FillFont.Name = 'MS Sans Serif'
      FillFont.Style = []
      Glyph.Data = {
        36050000424D3605000000000000360400002800000010000000100000000100
        08000000000000010000320B0000320B00000001000000010000181818003939
        390042393900424242004A4A4A00524A4A00EFA54A00525252005A5A5A00AD6B
        5A006B6B6B00C6846B00B58473009C8C7300CE947300EFB57300FFC67300BD84
        7B00A5947B00C6947B0084848400B5848400B58C8400CE9C8400AD9C8C00C6B5
        9400EFCE940094949C009C9C9C00A5A59C00C6A59C00E7C69C00EFCE9C00A5A5
        A500C6ADA500C6BDA500D6BDA500EFD6A500F7D6A500ADADAD00CEB5AD00D6B5
        AD00EFC6AD00F7D6AD00FFD6AD00D6BDB500DEBDB500DEC6B500E7C6B500EFCE
        B500F7D6B500FFD6B500F7DEB500BDBDBD00EFCEBD00F7DEBD00C6C6C600F7DE
        C600F7E7C600E7CECE00F7E7CE00DEDED600FFDED600F7E7D600FFE7D600FFEF
        D600FFEFE700FFF7E700FFF7EF00FFF7F700FFFFF700FF00FF00F7FFFF00FFFF
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
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00474715151515
        1515151515151515210347471E413A37342B26201A1A1A27083847471E413C39
        37322620201A350A3814474722420909091C1C1C1C090A000A05474722433F3C
        350405040721010A354747472846091B0209090909020A3D1547474729491D02
        0C090909090C0238154747472D1D0A19402A2B2B1F3C0D02154747472D1D0A24
        0909090909091802154747472E1D0A230C0C090909091202154747472F491D0A
        2C4048463E330221154747473049491D0A2B0909250235161547474730490909
        1D0A0A0A0A1D0F060B47474736494949491D1D1D1D13100E4747474730454444
        444444443B1317474747474730313131313030312D1147474747}
    end
    object BtnExtractos: TJvArrowButton
      Left = 102
      Top = 8
      Width = 91
      Height = 22
      DropDown = PopupExtractos
      Caption = 'Extractos'
      FillFont.Charset = DEFAULT_CHARSET
      FillFont.Color = clBlack
      FillFont.Height = -11
      FillFont.Name = 'MS Sans Serif'
      FillFont.Style = []
      Glyph.Data = {
        36050000424D3605000000000000360400002800000010000000100000000100
        08000000000000010000630F0000630F000000010000000100002C6930003283
        3C00349F3F0041B258004EBF6C00346BAC00FF00FF00589DD70079A9D7004EA5
        ED00F7FFFF000000000000000000000000000000000000000000000000000000
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
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000060606060606
        060606060606060606060607050505050505050505050505050606070A0A0A0A
        0A0A0A0A0A0A0A0A050606070A000000000000000000000A050606090A000A08
        0A080A0A080A000A050606090A000408040804040804000A050606090A000A08
        0A080A0A080A000A050606090A000408040804040804000A050606090A000A08
        0A080A0A080A000A050606090A000000000000000000000A050606090A0A0A0A
        0A0A0A0A0A0A0A0A050606090A0A00000000000000000A0A050606090A0A0404
        0303020202010A0A050606090A0A0A0A0A0A0A0A0A0A0A0A0506060909090909
        0909090909070707070606060606060606060606060606060606}
    end
    object BtnMantenimientos: TJvArrowButton
      Left = 196
      Top = 8
      Width = 113
      Height = 22
      DropDown = PopupMantenimientos
      Caption = 'Mantenimientos'
      FillFont.Charset = DEFAULT_CHARSET
      FillFont.Color = clBlack
      FillFont.Height = -11
      FillFont.Name = 'MS Sans Serif'
      FillFont.Style = []
      Glyph.Data = {
        36050000424D3605000000000000360400002800000010000000100000000100
        08000000000000010000330F0000330F00000001000000010000D6731800A563
        2100D6732100D67B2100734A2900945A2900A55A2900DE732900DE8429008C52
        3100CE733100DE733100DE843100734A3900845239008C5A3900CE733900DE8C
        3900734A4200635242007B5A4200A5634200E79442007B5A4A00E7944A005A52
        52007B635200BD8C5200EF9C520063635A006B635A0084635A007B6B5A00A57B
        5A00EFA55A0063636300736B6300846B63007B7363008C7363009C846300CE9C
        6300EFA563004A636B005A6B6B006B6B6B007B736B00CE9C6B00DEA56B006B73
        730073737300A58C7300D6A573007B7B7B00847B7B00F7BD7B00527B84008484
        8400948C84008C7B8C008C8C8C00AD8C8C0094949400A59C9400949C9C009C9C
        9C00AD9C9C00A594A500A5A5A500ADA5A500ADADAD00B5ADAD00BDADAD00B5B5
        B500BDADBD00BDBDBD00C6C6C600CECECE00D6D6D600DEDEDE00F7F7F700FF00
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
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00515151515151
        5131315151515151515151515151515131270104515151515151515151515151
        1E2800065151515151515151191919511E2800055151515151515139494B4944
        24330009515151515151513939394C4B242F000F19191919235151515151494C
        2429020D494646494319514123234C4B2630020D393939393951514144494439
        1D340B175151515151515151414139512E370A1F515151515151515151515151
        1321152551515151515151515151515119442D195151515151515151513C3C51
        194449195151515151515151384E233C193E4C4C515119315151515138492350
        2D3E46494C4B4131515151512349413C444F4D4B464031515151}
    end
    object BtnInformes: TJvArrowButton
      Left = 312
      Top = 8
      Width = 91
      Height = 22
      DropDown = PopupInformes
      Caption = 'Informes'
      FillFont.Charset = DEFAULT_CHARSET
      FillFont.Color = clBlack
      FillFont.Height = -11
      FillFont.Name = 'MS Sans Serif'
      FillFont.Style = []
      Glyph.Data = {
        36050000424D3605000000000000360400002800000010000000100000000100
        08000000000000010000220B0000220B00000001000000010000181818002118
        21001821210031313100393939004242420052525200636363006B6B6B007373
        7300848484008C8C8C00948C8C00949494009C949400F7AD94009C9C9C00CE9C
        9C00F7AD9C00FFAD9C00FFB59C009C9CA500A5A5A500ADA5A500C6A5A500A5AD
        A500FFBDA500A5D6A500ADADAD00B5ADAD00FFC6AD00B5B5B500FFC6B500BDBD
        BD00C6BDBD00BDC6BD00E7C6BD00EFCEBD00FFCEBD00BDBDC600C6C6C600CEC6
        C600E7CEC600CECECE00D6CECE00DED6CE00FFDECE00D6D6D600FFE7D600D6DE
        DE00DEDEDE00EFE7DE00E7E7E700EFE7E700FFE7E700EFEFEF00F7EFEF00F7EF
        F700F7F7F700FF00FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
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
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF003B3B3B3B3B3B
        103B3B3B0A0A0B3B3B3B3B3B3B3B10102C0D04060E282F0A3B3B3B3B10103A3C
        2F1005010103070A0B3B0C10373C3528100B0D0A07040201093B10343421161D
        22160D0C0D0E0B080A3B0D1C161C282F373732281C100C0D0B3B0C1C282B2832
        2B19212B2F2F281F0D3B3B102B2B32281F1B231817161F22163B3B3B10211C1C
        343837332F2B1F0D3B3B3B3B3B102F2B10212F2F2F281C3B3B3B3B3B3B3B362E
        24242A2D2B0D3B3B3B3B3B3B3B3B112E261E1A133B3B3B3B3B3B3B3B3B3B112E
        261E1A0F3B3B3B3B3B3B3B3B3B3B112E261E1A123B3B3B3B3B3B3B3B3B11302E
        261E1A123B3B3B3B3B3B3B3B3B1111111112123B3B3B3B3B3B3B}
    end
    object CmdOtraBusqueda: TBitBtn
      Left = 667
      Top = 6
      Width = 110
      Height = 25
      Caption = 'Otra Busqueda'
      TabOrder = 0
      OnClick = CmdOtraBusquedaClick
      Glyph.Data = {
        36050000424D3605000000000000360400002800000010000000100000000100
        08000000000000010000420B0000420B00000001000000010000004A0000005A
        00000052080018520800005A0800006B080021521000295A1000186310000873
        1000295A1800315A180010631800186B1800185A210039632100108421004263
        29004A632900186B290010942900527331004A7B3100528C390018AD39007373
        4200218C4200529442006394420021B54200639C4A0018BD4A0029C65200639C
        5A0029CE5A0031E76B005A6B730042EF73004A637B00EFBD8400B58C8C00C694
        8C00BD9C8C00BD949400C6949400F7CE9400C6A59C00C6AD9C00CEAD9C00F7CE
        9C004A7BA500CEADA500D6B5A500DEBDA500F7D6A500DEC6AD00FFE7AD00CEB5
        B500F7DEB500FFE7B500D6BDBD00DED6BD00E7DEBD006B9CC600FFEFC600FFF7
        C600FFF7CE00F7EFD600FFFFD6002184DE001884E700188CE700218CEF00B5D6
        EF00FFF7EF00FF00FF004AB5FF0052B5FF0052BDFF00FFFFFF00FFFFFF00FFFF
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
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF004B262B4B4B4B
        4B4B4B4B4B4B4B4B4B4B3F47322C4B4B4B4B4B4B4B4B4B4B4B4B4C4D48322C4B
        4B4B4B4B4B4B4B4B4B4B4B4D4D46322C4B4B4B4B4B4B4B4B4B4B4B4B4D4C4732
        2B4B4B4B4B4B4B4B4B4B4B4B4B4D4C452400000001004B4B4B4B4B4B4B4B4E49
        0E110B07090906334B4B4B4B4B4B4B3934404444081F0519284B4B4B4B000029
        3A364244211818153D4B4B4B000D040F382D00000520220900004B4B021D1D0C
        1727171A142523100F2F4B00102325141A172D1B0C1D1D13432E000009222005
        0000363117040D163E4B4B4B0018180A374F4A2D271C1E412A4B4B4B00051F00
        4B3C4340383B3A304B4B4B4B4B0009090003120F35354B4B4B4B}
    end
    object GroupBox6: TGroupBox
      Left = 456
      Top = -1
      Width = 185
      Height = 37
      Caption = 'Compromisos'
      TabOrder = 1
      object CmdCompromisos: TBitBtn
        Left = 99
        Top = 9
        Width = 80
        Height = 25
        Caption = 'Del D'#237'a'
        TabOrder = 1
        OnClick = CmdCompromisosClick
        Glyph.Data = {
          36050000424D3605000000000000360400002800000010000000100000000100
          08000000000000010000230B0000230B00000001000000010000EF9C2100F7A5
          5A00636B6B00FFB56B008C8C8C009C9C9400A5A5A500ADADAD00B5B5B500527B
          C600DEDEDE00EFEFEF00F7F7F700FF00FF0039A5FF0000F7FF0094FFFF00FFFF
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
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000D0D0D0D0D0D
          0D0D0D0D0D0D0D0D0D0D0D02020202020202020202020202020D0D0411111111
          1111111111111111040D0D04110303030303030303030311040D0D0411031111
          0909110311110311040D0D05110311110F09090311110311050D0D0511030303
          0E0F090909030311050D0D0511011111010E100F09090111050D0D060C011109
          090909100F09090C060D0D060C00000E100F0F0F0F0F0909060D0D070B001111
          0E100F090911000B070D0D070B001111000E100F0909000B070D0D080A000000
          000E100F0F09090A080D0D080A0A0A0A0A0A0E100F0F0909080D0D0808080808
          0808080E100F0F09090D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D}
      end
      object EdFechaCompromiso: TDateTimePicker
        Left = 8
        Top = 13
        Width = 85
        Height = 21
        CalAlignment = dtaLeft
        Date = 37693.4262030903
        Format = 'yyyy/MM/dd'
        Time = 37693.4262030903
        Color = clWhite
        DateFormat = dfShort
        DateMode = dmComboBox
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        Kind = dtkDate
        ParseInput = False
        ParentFont = False
        TabOrder = 0
        OnExit = EdFechaCompromisoExit
      end
    end
  end
  object Panel6: TPanel
    Left = 0
    Top = 279
    Width = 1158
    Height = 33
    Align = alTop
    TabOrder = 3
    object Label5: TLabel
      Left = 6
      Top = 10
      Width = 97
      Height = 13
      Caption = 'Total Colocaciones :'
    end
    object Label6: TLabel
      Left = 183
      Top = 10
      Width = 62
      Height = 13
      Caption = 'Total Deuda:'
    end
    object EdTotalColocaciones: TStaticText
      Left = 108
      Top = 7
      Width = 53
      Height = 21
      Alignment = taRightJustify
      AutoSize = False
      BevelOuter = bvRaised
      BorderStyle = sbsSunken
      Color = clWhite
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
      TabOrder = 0
    end
    object EdTotalDeuda: TStaticText
      Left = 248
      Top = 7
      Width = 135
      Height = 21
      Alignment = taRightJustify
      AutoSize = False
      BevelOuter = bvRaised
      BorderStyle = sbsSunken
      Color = clWhite
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
      TabOrder = 1
    end
    object btnAExcel: TBitBtn
      Left = 690
      Top = 3
      Width = 91
      Height = 25
      Caption = 'A Excel'
      Enabled = False
      TabOrder = 2
      OnClick = btnAExcelClick
      Glyph.Data = {
        36050000424D3605000000000000360400002800000010000000100000000100
        08000000000000010000320B0000320B00000001000000010000EFA54A00C684
        6B00BD8C7300CE947300EFB57300FFC67300BD847B00C6947B00B5848400B58C
        8400CE9C8400EFCE94009C9C9C00C6A59C00EFCE9C00F7D69C00C6ADA500F7D6
        A500CEB5AD00D6B5AD00C6BDAD00F7D6AD00D6BDB500DEBDB500DEC6B500E7C6
        B500EFCEB500F7D6B500F7DEB500EFCEBD00F7DEBD00527BC600E7DEC600F7DE
        C600F7E7C600E7CECE00E7D6CE00F7E7D600FFEFD600DEDEDE00FFEFE700FFF7
        E700FFF7EF00FFF7F700FFFFF700FF00FF0039A5FF0000F7FF0094FFFF00FFFF
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
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF002D2D08080808
        0808080808080808082D2D2D0D261F1F1C15110E0B0B0B0F082D2D2D0D262F1F
        1F0C0C0C0C0C0C0E082D2D2D10282E2F1F1F1F150E0E0B0E082D2D2D1029252E
        302F1F1F150E0E0B082D2D2D121F1F1F1F302F1F1F0C0C0E082D2D2D132E302F
        2F2F2F2F1F1F1111082D2D2D16312E302F1F1F22211E1B15082D2D2D1631272E
        302F1F1F0C0C0C1C082D2D2D1731312E302F2F1F1F21211B082D2D2D18313131
        2E302F2F1F1F2014082D2D2D1931270C0C2E302F2F1F1F09082D2D2D19313131
        3131312C23020400012D2D2D1D31313131313131240705032D2D2D2D192B2A2A
        2A2A2A2A23070A2D2D2D2D2D191A1A1A1A19191A16062D2D2D2D}
    end
  end
  object CmdCerrar: TBitBtn
    Left = 706
    Top = 13
    Width = 66
    Height = 25
    Caption = '&Cerrar'
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
  object Panel4: TPanel
    Left = 0
    Top = 344
    Width = 1137
    Height = 219
    TabOrder = 5
    object GroupBox4: TGroupBox
      Left = 1
      Top = 8
      Width = 1135
      Height = 209
      Caption = 'Observaciones y Compromisos'
      TabOrder = 0
      object DBGrid1: TDBGrid
        Left = 2
        Top = 15
        Width = 1131
        Height = 192
        Align = alClient
        Color = clWhite
        DataSource = DataSource1
        Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clBlack
        TitleFont.Height = -11
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
        OnDblClick = DBGrid1DblClick
        Columns = <
          item
            Expanded = False
            FieldName = 'FECHA_OBSERVACION'
            ReadOnly = True
            Title.Alignment = taCenter
            Title.Caption = 'FECHA'
            Width = 65
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'OBSERVACION'
            ReadOnly = True
            Title.Alignment = taCenter
            Width = 600
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'FECHA_COMPROMISO'
            Title.Alignment = taCenter
            Title.Caption = 'COMPROMISO'
            Width = 80
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'COMPLETO'
            Title.Alignment = taCenter
            Title.Caption = 'REPORTO'
            Width = 150
            Visible = True
          end>
      end
    end
    object Panel5: TPanel
      Left = 1
      Top = 185
      Width = 1135
      Height = 33
      Align = alBottom
      TabOrder = 1
      object Label12: TLabel
        Left = 333
        Top = 11
        Width = 132
        Height = 13
        Caption = 'Fecha de Gesti'#243'n a Evaluar'
      end
      object Label13: TLabel
        Left = 573
        Top = 14
        Width = 9
        Height = 13
        Caption = 'Al'
      end
      object CmdAgregar: TBitBtn
        Left = 4
        Top = 4
        Width = 75
        Height = 25
        Caption = 'Agregar'
        Enabled = False
        TabOrder = 0
        OnClick = CmdAgregarClick
        Glyph.Data = {
          36050000424D3605000000000000360400002800000010000000100000000100
          08000000000000010000E30E0000E30E0000000100000001000031319C003131
          A5003131AD003131B5003131BD003131C6003131CE003131D6003131DE003131
          E7003131EF003131F700FF00FF003131FF003139FF003939FF003942FF00424A
          FF004A4AFF005252FF006363FF006B6BFF006B73FF007B84FF00848CFF009C9C
          FF00C6CEFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
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
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000C1B1B1B1B1B
          1B1B1B1B1B1B1B1B1B0C1B16030404040505040403030201141B1B05080A0B0B
          0A0B0A0A0A090805001B1B070A0E0E0E0E0E0E0E0E0E0906021B1B090E0E0E0E
          0E1B180E0E0E0B08031B1B0A0E0E0E0E0E1B180E0E0E0E09041B1B0E0E0E0E0E
          0E1B180E0E0E0E0A051B1B0E0E181818181B181818180B0A061B1B0E0E1B1B1B
          1B1B1B1B1B1B0A0A061B1B0E10100E0E0E1B180E0E0B0A0A061B1B0E1313100E
          0E1B180E0E0B0A0A061B1B1015141110101B180E0E0E0B0B061B1B1318151312
          111B180E0E0E0E0B061B1B1419181514131211100E0E0E0B041B1B1A1412100E
          0E0E0E0E0E0E0B08171B0C1B1B1B1B1B1B1B1B1B1B1B1B1B1B0C}
      end
      object CmdEliminar: TBitBtn
        Left = 172
        Top = 4
        Width = 75
        Height = 25
        Caption = 'Eliminar'
        Enabled = False
        TabOrder = 1
        Visible = False
        OnClick = CmdEliminarClick
        Glyph.Data = {
          36050000424D3605000000000000360400002800000010000000100000000100
          08000000000000010000E30E0000E30E0000000100000001000031319C003131
          A5003131AD003131B5003131BD003131C6003131CE003131D6003131DE003131
          E7003131EF003131F700FF00FF003131FF003139FF003939FF003942FF00424A
          FF004A4AFF005252FF006363FF006B6BFF006B73FF007B84FF00848CFF009C9C
          FF00C6CEFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
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
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000C1B1B1B1B1B
          1B1B1B1B1B1B1B1B1B0C1B16030404040505040403030201141B1B05080A0B0B
          0A0B0A0A0A090805001B1B070A0E0E0E0E0E0E0E0E0E0906021B1B090E0E0E0E
          0E0E0E0E0E0E0B08031B1B0A0E0E0E0E0E0E0E0E0E0E0E09041B1B0E0E0E0E0E
          0E0E0E0E0E0E0E0A051B1B0E0E1818181818181818180B0A061B1B0E0E1B1B1B
          1B1B1B1B1B1B0A0A061B1B0E10100E0E0E0E0E0E0E0B0A0A061B1B0E1313100E
          0E0E0E0E0E0B0A0A061B1B1015141110100E0E0E0E0E0B0B061B1B1318151312
          11110E0E0E0E0E0B061B1B1419181514131211100E0E0E0B041B1B1A1412100E
          0E0E0E0E0E0E0B08171B0C1B1B1B1B1B1B1B1B1B1B1B1B1B1B0C}
      end
      object CmdImprimir: TBitBtn
        Left = 84
        Top = 4
        Width = 75
        Height = 25
        Caption = 'Imprimir'
        Enabled = False
        TabOrder = 2
        OnClick = CmdImprimirClick
        Glyph.Data = {
          F6000000424DF600000000000000760000002800000010000000100000000100
          0400000000008000000000000000000000001000000000000000000000000000
          8000008000000080800080000000800080008080000080808000C0C0C0000000
          FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00888888888888
          888F8800000000000888808888888880808800000000000008080888888BBB88
          0008088888877788080800000000000008800888888888808080800000000008
          0800880FFFFFFFF080808880F00000F000088880FFFFFFFF088888880F00000F
          088888880FFFFFFFF08888888000000000888888888888888888}
      end
      object EdFechaGestionI: TDateTimePicker
        Left = 472
        Top = 7
        Width = 89
        Height = 21
        CalAlignment = dtaLeft
        Date = 40816.3635175463
        Time = 40816.3635175463
        Color = clWhite
        DateFormat = dfShort
        DateMode = dmComboBox
        Kind = dtkDate
        ParseInput = False
        TabOrder = 3
      end
      object EdFechaGestionF: TDateTimePicker
        Left = 598
        Top = 7
        Width = 89
        Height = 21
        CalAlignment = dtaLeft
        Date = 40816.3635175463
        Time = 40816.3635175463
        Color = clWhite
        DateFormat = dfShort
        DateMode = dmComboBox
        Kind = dtkDate
        ParseInput = False
        TabOrder = 4
      end
      object CmdReporteGestion: TBitBtn
        Left = 700
        Top = 5
        Width = 75
        Height = 23
        Caption = '&Informe'
        TabOrder = 5
        OnClick = CmdReporteGestionClick
        Glyph.Data = {
          36050000424D3605000000000000360400002800000010000000100000000100
          08000000000000010000D30E0000D30E00000001000000010000008C00000094
          0000009C000000A5000000940800009C100000AD100000AD180000AD210000B5
          210000BD210018B5290000C62900319C310000CE310029AD390031B5420018C6
          420000D6420052A54A0029AD4A0029CE5A006BB5630000FF63008CBD7B00A5C6
          94005AE7A500FF00FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
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
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF001B1B1B1B1B13
          04161B1B1B1B1B1B1B1B1B1B1B1B1B0B0A01181B1B1B1B1B1B1B1B1B1B1B160A
          0C030D1B1B1B1B1B1B1B1B1B1B1B050E0C0601191B1B1B1B1B1B1B1B1B130E0C
          170E02001B1B1B1B1B1B1B1B1B0B1517170A0C01181B1B1B1B1B1B1B1B111717
          13130C030D1B1B1B1B1B1B1B1B1B08081B1B070C01191B1B1B1B1B1B1B1B1B1B
          1B1B100C02001B1B1B1B1B1B1B1B1B1B1B1B1B090C01181B1B1B1B1B1B1B1B1B
          1B1B1B130C0F101B1B1B1B1B1B1B1B1B1B1B1B1B141A0F181B1B1B1B1B1B1B1B
          1B1B1B1B1012181B1B1B1B1B1B1B1B1B1B1B1B1B1B191B1B1B1B1B1B1B1B1B1B
          1B1B1B1B1B1B1B1B1B1B1B1B1B1B1B1B1B1B1B1B1B1B1B1B1B1B}
      end
    end
  end
  object DataSource1: TDataSource
    DataSet = IBDataSet1
    Left = 510
    Top = 374
  end
  object IBSQL1: TIBQuery
    Database = dmGeneral.IBDatabase1
    Transaction = IBTControlCobro
    Left = 670
    Top = 422
  end
  object IBDataSet1: TIBQuery
    Database = dmGeneral.IBDatabase1
    Transaction = IBTControlCobro
    SQL.Strings = (
      
        'select "col$controlcobro".ID_AGENCIA,"col$controlcobro".ID_COLOC' +
        'ACION,"col$controlcobro".FECHA_OBSERVACION,"col$controlcobro". O' +
        'BSERVACION, "col$controlcobro".ES_OBSERVACION,"col$controlcobro"' +
        '.ES_COMPROMISO, "col$controlcobro".FECHA_COMPROMISO, "gen$emplea' +
        'do".PRIMER_APELLIDO,"gen$empleado".NOMBRE from "col$controlcobro' +
        '" '
      
        'INNER JOIN "gen$empleado" ON ("col$controlcobro".ID_USUARIO = "g' +
        'en$empleado".ID_EMPLEADO)'
      
        'where "col$controlcobro".ID_COLOCACION = :ID_COLOCACION ORDER BY' +
        ' FECHA_OBSERVACION DESC')
    Left = 578
    Top = 376
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'ID_COLOCACION'
        ParamType = ptUnknown
      end>
    object IBDataSet1ID_AGENCIA: TSmallintField
      FieldName = 'ID_AGENCIA'
      Origin = 'col$controlcobro.ID_AGENCIA'
      Required = True
    end
    object IBDataSet1ID_COLOCACION: TIBStringField
      FieldName = 'ID_COLOCACION'
      Origin = 'col$controlcobro.ID_COLOCACION'
      Required = True
      FixedChar = True
      Size = 11
    end
    object IBDataSet1FECHA_OBSERVACION: TDateField
      FieldName = 'FECHA_OBSERVACION'
      Origin = 'col$controlcobro.FECHA_OBSERVACION'
    end
    object IBDataSet1OBSERVACION: TMemoField
      FieldName = 'OBSERVACION'
      Origin = 'col$controlcobro.OBSERVACION'
      OnGetText = IBDataSet1OBSERVACIONGetText
      BlobType = ftMemo
      Size = 8
    end
    object IBDataSet1ES_OBSERVACION: TSmallintField
      FieldName = 'ES_OBSERVACION'
      Origin = 'col$controlcobro.ES_OBSERVACION'
    end
    object IBDataSet1ES_COMPROMISO: TSmallintField
      FieldName = 'ES_COMPROMISO'
      Origin = 'col$controlcobro.ES_COMPROMISO'
    end
    object IBDataSet1FECHA_COMPROMISO: TDateField
      FieldName = 'FECHA_COMPROMISO'
      Origin = 'col$controlcobro.FECHA_COMPROMISO'
      OnGetText = IBDataSet1FECHA_COMPROMISOGetText
      DisplayFormat = 'yyyy/MM/dd'
    end
    object IBDataSet1PRIMER_APELLIDO: TIBStringField
      FieldName = 'PRIMER_APELLIDO'
      Origin = 'gen$empleado.PRIMER_APELLIDO'
      Size = 30
    end
    object IBDataSet1NOMBRE: TIBStringField
      FieldName = 'NOMBRE'
      Origin = 'gen$empleado.NOMBRE'
      Size = 30
    end
    object IBDataSet1COMPLETO: TStringField
      FieldKind = fkCalculated
      FieldName = 'COMPLETO'
      OnGetText = IBDataSet1COMPLETOGetText
      Calculated = True
    end
  end
  object IBQuery1: TIBQuery
    Database = dmGeneral.IBDatabase1
    Transaction = IBTControlCobro
    SQL.Strings = (
      'select * from "gen$agencia"')
    Left = 644
    Top = 352
  end
  object DataSource2: TDataSource
    AutoEdit = False
    DataSet = IBQuery1
    Left = 610
    Top = 422
  end
  object IBSQL2: TIBSQL
    Database = dmGeneral.IBDatabase1
    Transaction = IBTControlCobro
    Left = 698
    Top = 350
  end
  object ReporteMora: TprTxReport
    ShowProgress = True
    FromPage = 1
    ToPage = 1
    Title = 'Informe Control de Cobro'
    ExportFromPage = 0
    ExportToPage = 0
    Values = <
      item
        Name = 'TNoDesembolsos'
        AggFunction = prafCount
        Formula = 'IBTabla.ID_COLOCACION'
        ResetOn = rvtReport
        CalcOn = cvtDataSetNext
        DataSetName = 'IBTabla'
      end
      item
        Name = 'TotalDesembolsos'
        AggFunction = prafSum
        Formula = 'IBTabla.VALOR_DESEMBOLSO'
        ResetOn = rvtReport
        CalcOn = cvtDataSetNext
        DataSetName = 'IBTabla'
        Accumulate = True
      end
      item
        Name = 'TotalCartera'
        AggFunction = prafSum
        Formula = 'IBTabla.SALDO'
        ResetOn = rvtReport
        CalcOn = cvtDataSetNext
        DataSetName = 'IBTabla'
      end>
    Variables = <
      item
        Name = 'Empresa'
        ValueType = 'prvvtString'
        Value = ''
      end
      item
        Name = 'Empleado'
        ValueType = 'prvvtString'
        Value = ''
      end
      item
        Name = 'Nit'
        ValueType = 'prvvtString'
        Value = ''
      end
      item
        Name = 'MoraI'
        ValueType = 'prvvtString'
        Value = ''
      end
      item
        Name = 'Agencia'
        ValueType = 'prvvtString'
        Value = ''
      end
      item
        Name = 'FechaEvaluarI'
        ValueType = 'prvvtDateTime'
        Value = 36161d
      end
      item
        Name = 'FechaEvaluarF'
        ValueType = 'prvvtDateTime'
        Value = 36161d
      end>
    PrinterName = 'EPSON FX-1180+ ESC/P'
    WrapAfterColumn = 0
    EjectPageAfterPrint = False
    LinesOnPage = 0
    FromLine = 0
    ToLine = 0
    ExportFromLine = 0
    ExportToLine = 0
    Left = 110
    Top = 424
    SystemInfo = (
      'OS: WIN32_NT 5.1.2600 Service Pack 3'
      ''
      'PageSize: 4096'
      'ActiveProcessorMask: $1000'
      'NumberOfProcessors: 1'
      'ProcessorType: 586'
      ''
      'Compiler version: Delphi6'
      'PReport version: 1.9.4')
    object prTxPage1: TprTxPage
      PageType = tptPage
      LineNum = 60
      ColNum = 236
      object prTxHPageHeaderBand1: TprTxHPageHeaderBand
        Height = 4
        UseVerticalBands = False
        PrintOnFirstPage = True
        object prTxMemoObj1: TprTxMemoObj
          dRec.DefVersion = 0
          dRec.Versions = <
            item
              Visible = True
              Memo.Strings = (
                '[Empresa]')
              DeleteEmptyLinesAtEnd = False
              DeleteEmptyLines = False
              CanResizeX = False
              CanResizeY = False
              hAlign = prhLeft
              vAlign = prvCenter
              DefaultFont = False
              WordWrap = False
            end>
          dRec.Left = 1
          dRec.Top = 0
          dRec.Right = 17
          dRec.Bottom = 1
          Visible = False
        end
        object prTxCommandObj1: TprTxCommandObj
          dRec.DefVersion = 0
          dRec.Versions = <
            item
              Visible = True
              TxCommands = (
                txcCondensedOn)
            end>
          dRec.Left = 0
          dRec.Top = 0
          dRec.Right = 1
          dRec.Bottom = 1
          Visible = False
        end
        object prTxMemoObj30: TprTxMemoObj
          dRec.DefVersion = 0
          dRec.Versions = <
            item
              Visible = True
              Memo.Strings = (
                'Fecha de Impresion :[:<yyyy/mm/dd>StartDateTime]')
              DeleteEmptyLinesAtEnd = False
              DeleteEmptyLines = False
              CanResizeX = True
              CanResizeY = True
              hAlign = prhRight
              vAlign = prvCenter
              DefaultFont = False
              WordWrap = False
            end>
          dRec.Left = 121
          dRec.Top = 2
          dRec.Right = 156
          dRec.Bottom = 3
          Visible = False
        end
        object prTxMemoObj32: TprTxMemoObj
          dRec.DefVersion = 0
          dRec.Versions = <
            item
              Visible = True
              Memo.Strings = (
                'INFORME GENERAL COLOCACIONES CON MORA A PARTIR DE [MoraI] DIAS')
              DeleteEmptyLinesAtEnd = False
              DeleteEmptyLines = False
              CanResizeX = False
              CanResizeY = False
              hAlign = prhCenter
              vAlign = prvCenter
              DefaultFont = False
              WordWrap = False
            end>
          dRec.Left = 39
          dRec.Top = 0
          dRec.Right = 104
          dRec.Bottom = 1
          Visible = False
        end
        object prTxMemoObj31: TprTxMemoObj
          dRec.DefVersion = 0
          dRec.Versions = <
            item
              Visible = True
              Memo.Strings = (
                'Elaboro :  [empleado]')
              DeleteEmptyLinesAtEnd = False
              DeleteEmptyLines = False
              CanResizeX = False
              CanResizeY = False
              hAlign = prhLeft
              vAlign = prvCenter
              DefaultFont = False
              WordWrap = False
            end>
          dRec.Left = 1
          dRec.Top = 3
          dRec.Right = 45
          dRec.Bottom = 4
          Visible = False
        end
        object prTxMemoObj4: TprTxMemoObj
          dRec.DefVersion = 0
          dRec.Versions = <
            item
              Visible = True
              Memo.Strings = (
                'AGENCIA : [Agencia]')
              DeleteEmptyLinesAtEnd = False
              DeleteEmptyLines = False
              CanResizeX = False
              CanResizeY = False
              hAlign = prhLeft
              vAlign = prvCenter
              DefaultFont = False
              WordWrap = False
            end>
          dRec.Left = 1
          dRec.Top = 2
          dRec.Right = 23
          dRec.Bottom = 3
          Visible = False
        end
        object prTxMemoObj27: TprTxMemoObj
          dRec.DefVersion = 0
          dRec.Versions = <
            item
              Visible = True
              Memo.Strings = (
                'Nit. [Nit]')
              DeleteEmptyLinesAtEnd = False
              DeleteEmptyLines = False
              CanResizeX = False
              CanResizeY = False
              hAlign = prhLeft
              vAlign = prvCenter
              DefaultFont = False
              WordWrap = False
            end>
          dRec.Left = 18
          dRec.Top = 0
          dRec.Right = 38
          dRec.Bottom = 1
          Visible = False
        end
        object prTxMemoObj28: TprTxMemoObj
          dRec.DefVersion = 0
          dRec.Versions = <
            item
              Visible = True
              Memo.Strings = (
                'Pagina [Page] de [PagesCount]')
              DeleteEmptyLinesAtEnd = False
              DeleteEmptyLines = False
              CanResizeX = False
              CanResizeY = False
              hAlign = prhLeft
              vAlign = prvTop
              DefaultFont = False
              WordWrap = False
            end>
          dRec.Left = 130
          dRec.Top = 0
          dRec.Right = 158
          dRec.Bottom = 1
          Visible = False
        end
        object prTxMemoObj29: TprTxMemoObj
          dRec.DefVersion = 0
          dRec.Versions = <
            item
              Visible = True
              Memo.Strings = (
                
                  '----------------------------------------------------------------' +
                  '----------------------------------------------------------------' +
                  '----------------------------------------------------------------' +
                  '---------------------------------------')
              DeleteEmptyLinesAtEnd = False
              DeleteEmptyLines = False
              CanResizeX = False
              CanResizeY = False
              hAlign = prhLeft
              vAlign = prvTop
              DefaultFont = False
              WordWrap = False
            end>
          dRec.Left = 1
          dRec.Top = 1
          dRec.Right = 160
          dRec.Bottom = 2
          Visible = False
        end
        object prTxMemoObj16: TprTxMemoObj
          dRec.DefVersion = 0
          dRec.Versions = <
            item
              Visible = True
              Memo.Strings = (
                'FECHA VENCIMIENTO CUOTA EVALUADA:')
              DeleteEmptyLinesAtEnd = False
              DeleteEmptyLines = False
              CanResizeX = False
              CanResizeY = False
              hAlign = prhLeft
              vAlign = prvTop
              DefaultFont = False
              WordWrap = False
            end>
          dRec.Left = 35
          dRec.Top = 2
          dRec.Right = 68
          dRec.Bottom = 3
          Visible = False
        end
        object prTxMemoObj18: TprTxMemoObj
          dRec.DefVersion = 0
          dRec.Versions = <
            item
              Visible = True
              Memo.Strings = (
                '[FechaEvaluarI]')
              DeleteEmptyLinesAtEnd = False
              DeleteEmptyLines = False
              CanResizeX = False
              CanResizeY = False
              hAlign = prhLeft
              vAlign = prvTop
              DefaultFont = False
              WordWrap = False
            end>
          dRec.Left = 69
          dRec.Top = 2
          dRec.Right = 79
          dRec.Bottom = 3
          Visible = False
        end
        object prTxCommandObj2: TprTxCommandObj
          dRec.DefVersion = 0
          dRec.Versions = <
            item
              Visible = True
              TxCommands = (
                txcCondensedOn)
            end>
          dRec.Left = -8
          dRec.Top = 2
          dRec.Right = 1
          dRec.Bottom = 3
          Visible = False
        end
        object prTxMemoObj20: TprTxMemoObj
          dRec.DefVersion = 0
          dRec.Versions = <
            item
              Visible = True
              Memo.Strings = (
                '[FechaEvaluarF]')
              DeleteEmptyLinesAtEnd = False
              DeleteEmptyLines = False
              CanResizeX = False
              CanResizeY = False
              hAlign = prhLeft
              vAlign = prvTop
              DefaultFont = False
              WordWrap = False
            end>
          dRec.Left = 83
          dRec.Top = 2
          dRec.Right = 93
          dRec.Bottom = 3
          Visible = False
        end
        object prTxMemoObj22: TprTxMemoObj
          dRec.DefVersion = 0
          dRec.Versions = <
            item
              Visible = True
              Memo.Strings = (
                'AL')
              DeleteEmptyLinesAtEnd = False
              DeleteEmptyLines = False
              CanResizeX = False
              CanResizeY = False
              hAlign = prhLeft
              vAlign = prvTop
              DefaultFont = False
              WordWrap = False
            end>
          dRec.Left = 80
          dRec.Top = 2
          dRec.Right = 82
          dRec.Bottom = 3
          Visible = False
        end
      end
      object prTxHDetailHeaderBand1: TprTxHDetailHeaderBand
        Height = 3
        UseVerticalBands = False
        DetailBand = ReporteMora.prTxHDetailBand1
        ColCount = 1
        ColDirection = prcdTopBottomLeftRight
        ReprintOnEachPage = True
        LinkToDetail = True
        object prTxMemoObj14: TprTxMemoObj
          dRec.DefVersion = 0
          dRec.Versions = <
            item
              Visible = True
              Memo.Strings = (
                
                  '----------------------------------------------------------------' +
                  '----------------------------------------------------------------' +
                  '----------------------------------------------------------------' +
                  '---------------------------------------')
              DeleteEmptyLinesAtEnd = False
              DeleteEmptyLines = False
              CanResizeX = False
              CanResizeY = False
              hAlign = prhLeft
              vAlign = prvTop
              DefaultFont = False
              WordWrap = False
            end>
          dRec.Left = 1
          dRec.Top = 0
          dRec.Right = 160
          dRec.Bottom = 1
          Visible = False
        end
        object prTxMemoObj15: TprTxMemoObj
          dRec.DefVersion = 0
          dRec.Versions = <
            item
              Visible = True
              Memo.Strings = (
                
                  '----------------------------------------------------------------' +
                  '----------------------------------------------------------------' +
                  '----------------------------------------------------------------' +
                  '---------------------------------------')
              DeleteEmptyLinesAtEnd = False
              DeleteEmptyLines = False
              CanResizeX = False
              CanResizeY = False
              hAlign = prhLeft
              vAlign = prvTop
              DefaultFont = False
              WordWrap = False
            end>
          dRec.Left = 1
          dRec.Top = 2
          dRec.Right = 160
          dRec.Bottom = 3
          Visible = False
        end
        object prTxMemoObj38: TprTxMemoObj
          dRec.DefVersion = 0
          dRec.Versions = <
            item
              Visible = True
              Memo.Strings = (
                '|')
              DeleteEmptyLinesAtEnd = False
              DeleteEmptyLines = False
              CanResizeX = False
              CanResizeY = False
              hAlign = prhLeft
              vAlign = prvTop
              DefaultFont = False
              WordWrap = False
            end>
          dRec.Left = 123
          dRec.Top = 1
          dRec.Right = 124
          dRec.Bottom = 2
          Visible = False
        end
        object prTxMemoObj2: TprTxMemoObj
          dRec.DefVersion = 0
          dRec.Versions = <
            item
              Visible = True
              Memo.Strings = (
                'COLOCACION')
              DeleteEmptyLinesAtEnd = False
              DeleteEmptyLines = False
              CanResizeX = False
              CanResizeY = False
              hAlign = prhCenter
              vAlign = prvTop
              DefaultFont = False
              WordWrap = False
            end>
          dRec.Left = 1
          dRec.Top = 1
          dRec.Right = 14
          dRec.Bottom = 2
          Visible = False
        end
        object prTxMemoObj3: TprTxMemoObj
          dRec.DefVersion = 0
          dRec.Versions = <
            item
              Visible = True
              Memo.Strings = (
                '|')
              DeleteEmptyLinesAtEnd = False
              DeleteEmptyLines = False
              CanResizeX = False
              CanResizeY = False
              hAlign = prhLeft
              vAlign = prvTop
              DefaultFont = False
              WordWrap = False
            end>
          dRec.Left = 27
          dRec.Top = 1
          dRec.Right = 28
          dRec.Bottom = 2
          Visible = False
        end
        object prTxMemoObj51: TprTxMemoObj
          dRec.DefVersion = 0
          dRec.Versions = <
            item
              Visible = True
              Memo.Strings = (
                'NIT/CC')
              DeleteEmptyLinesAtEnd = False
              DeleteEmptyLines = False
              CanResizeX = False
              CanResizeY = False
              hAlign = prhCenter
              vAlign = prvTop
              DefaultFont = False
              WordWrap = False
            end>
          dRec.Left = 28
          dRec.Top = 1
          dRec.Right = 43
          dRec.Bottom = 2
          Visible = False
        end
        object prTxMemoObj53: TprTxMemoObj
          dRec.DefVersion = 0
          dRec.Versions = <
            item
              Visible = True
              Memo.Strings = (
                '|')
              DeleteEmptyLinesAtEnd = False
              DeleteEmptyLines = False
              CanResizeX = False
              CanResizeY = False
              hAlign = prhLeft
              vAlign = prvTop
              DefaultFont = False
              WordWrap = False
            end>
          dRec.Left = 43
          dRec.Top = 1
          dRec.Right = 44
          dRec.Bottom = 2
          Visible = False
        end
        object prTxMemoObj54: TprTxMemoObj
          dRec.DefVersion = 0
          dRec.Versions = <
            item
              Visible = True
              Memo.Strings = (
                'ASOCIADO')
              DeleteEmptyLinesAtEnd = False
              DeleteEmptyLines = False
              CanResizeX = False
              CanResizeY = False
              hAlign = prhCenter
              vAlign = prvCenter
              DefaultFont = False
              WordWrap = False
            end>
          dRec.Left = 44
          dRec.Top = 1
          dRec.Right = 87
          dRec.Bottom = 2
          Visible = False
        end
        object prTxMemoObj55: TprTxMemoObj
          dRec.DefVersion = 0
          dRec.Versions = <
            item
              Visible = True
              Memo.Strings = (
                '|')
              DeleteEmptyLinesAtEnd = False
              DeleteEmptyLines = False
              CanResizeX = False
              CanResizeY = False
              hAlign = prhLeft
              vAlign = prvTop
              DefaultFont = False
              WordWrap = False
            end>
          dRec.Left = 87
          dRec.Top = 1
          dRec.Right = 88
          dRec.Bottom = 2
          Visible = False
        end
        object prTxMemoObj8: TprTxMemoObj
          dRec.DefVersion = 0
          dRec.Versions = <
            item
              Visible = True
              Memo.Strings = (
                'VALOR CUOTA')
              DeleteEmptyLinesAtEnd = False
              DeleteEmptyLines = False
              CanResizeX = False
              CanResizeY = False
              hAlign = prhCenter
              vAlign = prvTop
              DefaultFont = False
              WordWrap = False
            end>
          dRec.Left = 106
          dRec.Top = 1
          dRec.Right = 123
          dRec.Bottom = 2
          Visible = False
        end
        object prTxMemoObj10: TprTxMemoObj
          dRec.DefVersion = 0
          dRec.Versions = <
            item
              Visible = True
              Memo.Strings = (
                'SALDO')
              DeleteEmptyLinesAtEnd = False
              DeleteEmptyLines = False
              CanResizeX = False
              CanResizeY = False
              hAlign = prhCenter
              vAlign = prvTop
              DefaultFont = False
              WordWrap = False
            end>
          dRec.Left = 88
          dRec.Top = 1
          dRec.Right = 105
          dRec.Bottom = 2
          Visible = False
        end
        object prTxMemoObj12: TprTxMemoObj
          dRec.DefVersion = 0
          dRec.Versions = <
            item
              Visible = True
              Memo.Strings = (
                'FECHA VENC.')
              DeleteEmptyLinesAtEnd = False
              DeleteEmptyLines = False
              CanResizeX = False
              CanResizeY = False
              hAlign = prhLeft
              vAlign = prvTop
              DefaultFont = False
              WordWrap = False
            end>
          dRec.Left = 124
          dRec.Top = 1
          dRec.Right = 135
          dRec.Bottom = 2
          Visible = False
        end
        object prTxMemoObj13: TprTxMemoObj
          dRec.DefVersion = 0
          dRec.Versions = <
            item
              Visible = True
              Memo.Strings = (
                '|')
              DeleteEmptyLinesAtEnd = False
              DeleteEmptyLines = False
              CanResizeX = False
              CanResizeY = False
              hAlign = prhLeft
              vAlign = prvTop
              DefaultFont = False
              WordWrap = False
            end>
          dRec.Left = 149
          dRec.Top = 1
          dRec.Right = 150
          dRec.Bottom = 2
          Visible = False
        end
        object prTxMemoObj17: TprTxMemoObj
          dRec.DefVersion = 0
          dRec.Versions = <
            item
              Visible = True
              Memo.Strings = (
                'DIAS MORA')
              DeleteEmptyLinesAtEnd = False
              DeleteEmptyLines = False
              CanResizeX = False
              CanResizeY = False
              hAlign = prhCenter
              vAlign = prvCenter
              DefaultFont = False
              WordWrap = False
            end>
          dRec.Left = 150
          dRec.Top = 1
          dRec.Right = 160
          dRec.Bottom = 2
          Visible = False
        end
        object prTxMemoObj21: TprTxMemoObj
          dRec.DefVersion = 0
          dRec.Versions = <
            item
              Visible = True
              Memo.Strings = (
                'FECHA APERT.')
              DeleteEmptyLinesAtEnd = False
              DeleteEmptyLines = False
              CanResizeX = False
              CanResizeY = False
              hAlign = prhCenter
              vAlign = prvCenter
              DefaultFont = False
              WordWrap = False
            end>
          dRec.Left = 15
          dRec.Top = 1
          dRec.Right = 27
          dRec.Bottom = 2
          Visible = False
        end
        object prTxMemoObj48: TprTxMemoObj
          dRec.DefVersion = 0
          dRec.Versions = <
            item
              Visible = True
              Memo.Strings = (
                '|')
              DeleteEmptyLinesAtEnd = False
              DeleteEmptyLines = False
              CanResizeX = False
              CanResizeY = False
              hAlign = prhLeft
              vAlign = prvTop
              DefaultFont = False
              WordWrap = False
            end>
          dRec.Left = 14
          dRec.Top = 1
          dRec.Right = 15
          dRec.Bottom = 2
          Visible = False
        end
        object prTxMemoObj6: TprTxMemoObj
          dRec.DefVersion = 0
          dRec.Versions = <
            item
              Visible = True
              Memo.Strings = (
                '|')
              DeleteEmptyLinesAtEnd = False
              DeleteEmptyLines = False
              CanResizeX = False
              CanResizeY = False
              hAlign = prhLeft
              vAlign = prvTop
              DefaultFont = False
              WordWrap = False
            end>
          dRec.Left = 105
          dRec.Top = 1
          dRec.Right = 106
          dRec.Bottom = 2
          Visible = False
        end
        object prTxMemoObj9: TprTxMemoObj
          dRec.DefVersion = 0
          dRec.Versions = <
            item
              Visible = True
              Memo.Strings = (
                '|')
              DeleteEmptyLinesAtEnd = False
              DeleteEmptyLines = False
              CanResizeX = False
              CanResizeY = False
              hAlign = prhLeft
              vAlign = prvTop
              DefaultFont = False
              WordWrap = False
            end>
          dRec.Left = 135
          dRec.Top = 1
          dRec.Right = 136
          dRec.Bottom = 2
          Visible = False
        end
        object prTxMemoObj58: TprTxMemoObj
          dRec.DefVersion = 0
          dRec.Versions = <
            item
              Visible = True
              Memo.Strings = (
                'ESTADO')
              DeleteEmptyLinesAtEnd = False
              DeleteEmptyLines = False
              CanResizeX = False
              CanResizeY = False
              hAlign = prhCenter
              vAlign = prvCenter
              DefaultFont = False
              WordWrap = False
            end>
          dRec.Left = 136
          dRec.Top = 1
          dRec.Right = 149
          dRec.Bottom = 2
          Visible = False
        end
      end
      object prTxHDetailBand1: TprTxHDetailBand
        Height = 1
        UseVerticalBands = False
        DataSetName = 'IBTabla'
        ColCount = 1
        ColDirection = prcdTopBottomLeftRight
        Bands = (
          'prTxHDetailHeaderBand1'
          'prTxHDetailFooterBand1')
        object prTxMemoObj57: TprTxMemoObj
          dRec.DefVersion = 0
          dRec.Versions = <
            item
              Visible = True
              Memo.Strings = (
                '|')
              DeleteEmptyLinesAtEnd = False
              DeleteEmptyLines = False
              CanResizeX = False
              CanResizeY = False
              hAlign = prhLeft
              vAlign = prvTop
              DefaultFont = False
              WordWrap = False
            end>
          dRec.Left = 27
          dRec.Top = 0
          dRec.Right = 28
          dRec.Bottom = 1
          Visible = False
        end
        object prTxMemoObj60: TprTxMemoObj
          dRec.DefVersion = 0
          dRec.Versions = <
            item
              Visible = True
              Memo.Strings = (
                
                  '[IBTabla.PRIMER_APELLIDO] [IBTabla.SEGUNDO_APELLIDO] [IBTabla.NO' +
                  'MBRE]')
              DeleteEmptyLinesAtEnd = False
              DeleteEmptyLines = False
              CanResizeX = False
              CanResizeY = False
              hAlign = prhLeft
              vAlign = prvCenter
              DefaultFont = False
              WordWrap = False
            end>
          dRec.Left = 44
          dRec.Top = 0
          dRec.Right = 87
          dRec.Bottom = 1
          Visible = False
        end
        object prTxMemoObj19: TprTxMemoObj
          dRec.DefVersion = 0
          dRec.Versions = <
            item
              Visible = True
              Memo.Strings = (
                '|')
              DeleteEmptyLinesAtEnd = False
              DeleteEmptyLines = False
              CanResizeX = False
              CanResizeY = False
              hAlign = prhLeft
              vAlign = prvTop
              DefaultFont = False
              WordWrap = False
            end>
          dRec.Left = 87
          dRec.Top = 0
          dRec.Right = 88
          dRec.Bottom = 1
          Visible = False
        end
        object prTxMemoObj40: TprTxMemoObj
          dRec.DefVersion = 0
          dRec.Versions = <
            item
              Visible = True
              Memo.Strings = (
                '|')
              DeleteEmptyLinesAtEnd = False
              DeleteEmptyLines = False
              CanResizeX = False
              CanResizeY = False
              hAlign = prhLeft
              vAlign = prvTop
              DefaultFont = False
              WordWrap = False
            end>
          dRec.Left = 123
          dRec.Top = 0
          dRec.Right = 124
          dRec.Bottom = 1
          Visible = False
        end
        object prTxMemoObj43: TprTxMemoObj
          dRec.DefVersion = 0
          dRec.Versions = <
            item
              Visible = True
              Memo.Strings = (
                '|')
              DeleteEmptyLinesAtEnd = False
              DeleteEmptyLines = False
              CanResizeX = False
              CanResizeY = False
              hAlign = prhLeft
              vAlign = prvTop
              DefaultFont = False
              WordWrap = False
            end>
          dRec.Left = 149
          dRec.Top = 0
          dRec.Right = 150
          dRec.Bottom = 1
          Visible = False
        end
        object prTxMemoObj64: TprTxMemoObj
          dRec.DefVersion = 0
          dRec.Versions = <
            item
              Visible = True
              Memo.Strings = (
                '|')
              DeleteEmptyLinesAtEnd = False
              DeleteEmptyLines = False
              CanResizeX = False
              CanResizeY = False
              hAlign = prhLeft
              vAlign = prvTop
              DefaultFont = False
              WordWrap = False
            end>
          dRec.Left = 43
          dRec.Top = 0
          dRec.Right = 44
          dRec.Bottom = 1
          Visible = False
        end
        object prTxMemoObj50: TprTxMemoObj
          dRec.DefVersion = 0
          dRec.Versions = <
            item
              Visible = True
              Memo.Strings = (
                '|')
              DeleteEmptyLinesAtEnd = False
              DeleteEmptyLines = False
              CanResizeX = False
              CanResizeY = False
              hAlign = prhLeft
              vAlign = prvTop
              DefaultFont = False
              WordWrap = False
            end>
          dRec.Left = 14
          dRec.Top = 0
          dRec.Right = 15
          dRec.Bottom = 1
          Visible = False
        end
        object prTxMemoObj11: TprTxMemoObj
          dRec.DefVersion = 0
          dRec.Versions = <
            item
              Visible = True
              Memo.Strings = (
                '[IBTabla.ID_COLOCACION]')
              DeleteEmptyLinesAtEnd = False
              DeleteEmptyLines = False
              CanResizeX = False
              CanResizeY = False
              hAlign = prhLeft
              vAlign = prvCenter
              DefaultFont = False
              WordWrap = False
            end>
          dRec.Left = 1
          dRec.Top = 0
          dRec.Right = 14
          dRec.Bottom = 1
          Visible = False
        end
        object prTxMemoObj23: TprTxMemoObj
          dRec.DefVersion = 0
          dRec.Versions = <
            item
              Visible = True
              Memo.Strings = (
                '[:<yyyy/mm/dd>IBTabla.FECHA_DESEMBOLSO]')
              DeleteEmptyLinesAtEnd = False
              DeleteEmptyLines = False
              CanResizeX = False
              CanResizeY = False
              hAlign = prhLeft
              vAlign = prvCenter
              DefaultFont = False
              WordWrap = False
            end>
          dRec.Left = 15
          dRec.Top = 0
          dRec.Right = 27
          dRec.Bottom = 1
          Visible = False
        end
        object prTxMemoObj24: TprTxMemoObj
          dRec.DefVersion = 0
          dRec.Versions = <
            item
              Visible = True
              Memo.Strings = (
                '[IBTabla.ID_PERSONA]')
              DeleteEmptyLinesAtEnd = False
              DeleteEmptyLines = False
              CanResizeX = False
              CanResizeY = False
              hAlign = prhLeft
              vAlign = prvCenter
              DefaultFont = False
              WordWrap = False
            end>
          dRec.Left = 28
          dRec.Top = 0
          dRec.Right = 43
          dRec.Bottom = 1
          Visible = False
        end
        object prTxMemoObj52: TprTxMemoObj
          dRec.DefVersion = 0
          dRec.Versions = <
            item
              Visible = True
              Memo.Strings = (
                '[:<#,##0.00>IBTabla.SALDO]')
              DeleteEmptyLinesAtEnd = False
              DeleteEmptyLines = False
              CanResizeX = False
              CanResizeY = False
              hAlign = prhRight
              vAlign = prvCenter
              DefaultFont = False
              WordWrap = False
            end>
          dRec.Left = 88
          dRec.Top = 0
          dRec.Right = 105
          dRec.Bottom = 1
          Visible = False
        end
        object prTxMemoObj66: TprTxMemoObj
          dRec.DefVersion = 0
          dRec.Versions = <
            item
              Visible = True
              Memo.Strings = (
                '[:<yyyy/mm/dd>IBTabla.FECHA_VENCIMIENTO]')
              DeleteEmptyLinesAtEnd = False
              DeleteEmptyLines = False
              CanResizeX = False
              CanResizeY = False
              hAlign = prhRight
              vAlign = prvCenter
              DefaultFont = False
              WordWrap = False
            end>
          dRec.Left = 124
          dRec.Top = 0
          dRec.Right = 135
          dRec.Bottom = 1
          Visible = False
        end
        object prTxMemoObj68: TprTxMemoObj
          dRec.DefVersion = 0
          dRec.Versions = <
            item
              Visible = True
              Memo.Strings = (
                '[IBTabla.MORA]')
              DeleteEmptyLinesAtEnd = False
              DeleteEmptyLines = False
              CanResizeX = False
              CanResizeY = False
              hAlign = prhRight
              vAlign = prvTop
              DefaultFont = False
              WordWrap = False
            end>
          dRec.Left = 150
          dRec.Top = 0
          dRec.Right = 160
          dRec.Bottom = 1
          Visible = False
        end
        object prTxMemoObj41: TprTxMemoObj
          dRec.DefVersion = 0
          dRec.Versions = <
            item
              Visible = True
              Memo.Strings = (
                '[:<#,##0.00>IBTabla.VALOR_CUOTA]')
              DeleteEmptyLinesAtEnd = False
              DeleteEmptyLines = False
              CanResizeX = False
              CanResizeY = False
              hAlign = prhRight
              vAlign = prvCenter
              DefaultFont = False
              WordWrap = False
            end>
          dRec.Left = 106
          dRec.Top = 0
          dRec.Right = 123
          dRec.Bottom = 1
          Visible = False
        end
        object prTxMemoObj7: TprTxMemoObj
          dRec.DefVersion = 0
          dRec.Versions = <
            item
              Visible = True
              Memo.Strings = (
                '|')
              DeleteEmptyLinesAtEnd = False
              DeleteEmptyLines = False
              CanResizeX = False
              CanResizeY = False
              hAlign = prhLeft
              vAlign = prvTop
              DefaultFont = False
              WordWrap = False
            end>
          dRec.Left = 105
          dRec.Top = 0
          dRec.Right = 106
          dRec.Bottom = 1
          Visible = False
        end
        object prTxMemoObj42: TprTxMemoObj
          dRec.DefVersion = 0
          dRec.Versions = <
            item
              Visible = True
              Memo.Strings = (
                '|')
              DeleteEmptyLinesAtEnd = False
              DeleteEmptyLines = False
              CanResizeX = False
              CanResizeY = False
              hAlign = prhLeft
              vAlign = prvTop
              DefaultFont = False
              WordWrap = False
            end>
          dRec.Left = 135
          dRec.Top = 0
          dRec.Right = 136
          dRec.Bottom = 1
          Visible = False
        end
        object prTxMemoObj61: TprTxMemoObj
          dRec.DefVersion = 0
          dRec.Versions = <
            item
              Visible = True
              Memo.Strings = (
                '[IBTabla.DESCRIPCION_ESTADO]')
              DeleteEmptyLinesAtEnd = False
              DeleteEmptyLines = False
              CanResizeX = False
              CanResizeY = False
              hAlign = prhLeft
              vAlign = prvTop
              DefaultFont = False
              WordWrap = False
            end>
          dRec.Left = 136
          dRec.Top = 0
          dRec.Right = 149
          dRec.Bottom = 1
          Visible = False
        end
      end
      object prTxHDetailFooterBand1: TprTxHDetailFooterBand
        Height = 2
        UseVerticalBands = False
        DetailBand = ReporteMora.prTxHDetailBand1
        ColCount = 1
        ColDirection = prcdTopBottomLeftRight
        LinkToDetail = False
        object prTxMemoObj5: TprTxMemoObj
          dRec.DefVersion = 0
          dRec.Versions = <
            item
              Visible = True
              Memo.Strings = (
                'No. Colocaciones : [TNoDesembolsos]')
              DeleteEmptyLinesAtEnd = False
              DeleteEmptyLines = False
              CanResizeX = False
              CanResizeY = False
              hAlign = prhLeft
              vAlign = prvTop
              DefaultFont = False
              WordWrap = False
            end>
          dRec.Left = 1
          dRec.Top = 1
          dRec.Right = 28
          dRec.Bottom = 2
          Visible = False
        end
        object prTxMemoObj35: TprTxMemoObj
          dRec.DefVersion = 0
          dRec.Versions = <
            item
              Visible = True
              Memo.Strings = (
                'Valor Total Cartera : [:<#,##0.00>TotalCartera] ')
              DeleteEmptyLinesAtEnd = False
              DeleteEmptyLines = False
              CanResizeX = False
              CanResizeY = False
              hAlign = prhRight
              vAlign = prvCenter
              DefaultFont = False
              WordWrap = False
            end>
          dRec.Left = 105
          dRec.Top = 1
          dRec.Right = 160
          dRec.Bottom = 2
          Visible = False
        end
        object prTxMemoObj25: TprTxMemoObj
          dRec.DefVersion = 0
          dRec.Versions = <
            item
              Visible = True
              Memo.Strings = (
                
                  '----------------------------------------------------------------' +
                  '----------------------------------------------------------------' +
                  '----------------------------------------------------------------' +
                  '---------------------------------------')
              DeleteEmptyLinesAtEnd = False
              DeleteEmptyLines = False
              CanResizeX = False
              CanResizeY = False
              hAlign = prhLeft
              vAlign = prvTop
              DefaultFont = False
              WordWrap = False
            end>
          dRec.Left = -59
          dRec.Top = 0
          dRec.Right = 160
          dRec.Bottom = 1
          Visible = False
        end
      end
    end
  end
  object IBTabla: TClientDataSet
    Active = True
    Aggregates = <>
    FieldDefs = <
      item
        Name = 'ID_AGENCIA'
        DataType = ftInteger
      end
      item
        Name = 'ID_COLOCACION'
        DataType = ftString
        Size = 11
      end
      item
        Name = 'DESCRIPCION_ESTADO'
        DataType = ftString
        Size = 100
      end
      item
        Name = 'CUENTA'
        DataType = ftString
        Size = 10
      end
      item
        Name = 'ID_IDENTIFICACION'
        DataType = ftInteger
      end
      item
        Name = 'ID_PERSONA'
        DataType = ftString
        Size = 15
      end
      item
        Name = 'NOMBRE'
        DataType = ftString
        Size = 255
      end
      item
        Name = 'VALOR_DESEMBOLSO'
        DataType = ftCurrency
      end
      item
        Name = 'SALDO'
        DataType = ftCurrency
      end
      item
        Name = 'VALOR_CUOTA'
        DataType = ftCurrency
      end
      item
        Name = 'FECHA_DESEMBOLSO'
        DataType = ftDate
      end
      item
        Name = 'FECHA_VENCIMIENTO'
        DataType = ftDate
      end
      item
        Name = 'ID_CLASIFICACION'
        DataType = ftSmallint
      end
      item
        Name = 'ID_EVALUACION'
        DataType = ftString
        Size = 1
      end
      item
        Name = 'MORA'
        DataType = ftInteger
      end
      item
        Name = 'COMPROMISO'
        DataType = ftString
        Size = 500
      end>
    IndexDefs = <>
    Params = <>
    StoreDefs = True
    Left = 248
    Top = 88
    Data = {
      F60100009619E0BD010000001800000010000000000003000000F6010A49445F
      4147454E43494104000100000000000D49445F434F4C4F434143494F4E010049
      0000000100055749445448020002000B00124445534352495043494F4E5F4553
      5441444F0100490000000100055749445448020002006400064355454E544101
      00490000000100055749445448020002000A001149445F4944454E5449464943
      4143494F4E04000100000000000A49445F504552534F4E410100490000000100
      055749445448020002000F00064E4F4D42524502004900000001000557494454
      4802000200FF001056414C4F525F444553454D424F4C534F0800040000000100
      07535542545950450200490006004D6F6E6579000553414C444F080004000000
      010007535542545950450200490006004D6F6E6579000B56414C4F525F43554F
      5441080004000000010007535542545950450200490006004D6F6E6579001046
      454348415F444553454D424F4C534F04000600000000001146454348415F5645
      4E43494D49454E544F04000600000000001049445F434C415349464943414349
      4F4E02000100000000000D49445F4556414C554143494F4E0100490000000100
      055749445448020002000100044D4F524104000100000000000A434F4D50524F
      4D49534F020049000000010005574944544802000200F4010000}
    object IBTablaID_AGENCIA: TIntegerField
      FieldName = 'ID_AGENCIA'
    end
    object IBTablaID_COLOCACION: TStringField
      FieldName = 'ID_COLOCACION'
      Size = 11
    end
    object IBTablaDESCRIPCION_ESTADO: TStringField
      FieldName = 'DESCRIPCION_ESTADO'
      Size = 50
    end
    object IBTablaCUENTA: TStringField
      FieldName = 'CUENTA'
      Size = 10
    end
    object IBTablaID_IDENTIFICACION: TIntegerField
      FieldName = 'ID_IDENTIFICACION'
    end
    object IBTablaID_PERSONA: TStringField
      FieldName = 'ID_PERSONA'
      Size = 15
    end
    object IBTablaNOMBRE: TStringField
      FieldName = 'NOMBRE'
      Size = 255
    end
    object IBTablaVALOR_DESEMBOLSO: TCurrencyField
      FieldName = 'VALOR_DESEMBOLSO'
    end
    object IBTablaSALDO: TCurrencyField
      FieldName = 'SALDO'
    end
    object IBTablaVALOR_CUOTA: TCurrencyField
      FieldName = 'VALOR_CUOTA'
    end
    object IBTablaFECHA_DESEMBOLSO: TDateField
      FieldName = 'FECHA_DESEMBOLSO'
    end
    object IBTablaFECHA_VENCIMIENTO: TDateField
      FieldName = 'FECHA_VENCIMIENTO'
    end
    object IBTablaID_CLASIFICACION: TSmallintField
      FieldName = 'ID_CLASIFICACION'
    end
    object IBTablaID_EVALUACION: TStringField
      FieldName = 'ID_EVALUACION'
      Size = 1
    end
    object IBTablaMORA: TIntegerField
      FieldName = 'MORA'
    end
    object IBTablaCOMPROMISO: TStringField
      FieldName = 'COMPROMISO'
      Size = 500
    end
  end
  object IBTabla1: TClientDataSet
    Active = True
    Aggregates = <>
    FieldDefs = <
      item
        Name = 'ID_AGENCIA'
        DataType = ftInteger
      end
      item
        Name = 'ID_COLOCACION'
        DataType = ftString
        Size = 11
      end
      item
        Name = 'DESCRIPCION_ESTADO'
        DataType = ftString
        Size = 100
      end
      item
        Name = 'CUENTA'
        DataType = ftString
        Size = 10
      end
      item
        Name = 'ID_IDENTIFICACION'
        DataType = ftInteger
      end
      item
        Name = 'ID_PERSONA'
        DataType = ftString
        Size = 15
      end
      item
        Name = 'NOMBRE'
        DataType = ftString
        Size = 255
      end
      item
        Name = 'PRIMER_APELLIDO'
        DataType = ftString
        Size = 30
      end
      item
        Name = 'SEGUNDO_APELLIDO'
        DataType = ftString
        Size = 30
      end
      item
        Name = 'VALOR_DESEMBOLSO'
        DataType = ftCurrency
      end
      item
        Name = 'SALDO'
        DataType = ftCurrency
      end
      item
        Name = 'VALOR_CUOTA'
        DataType = ftCurrency
      end
      item
        Name = 'FECHA_DESEMBOLSO'
        DataType = ftDate
      end
      item
        Name = 'FECHA_VENCIMIENTO'
        DataType = ftDate
      end
      item
        Name = 'ID_CLASIFICACION'
        DataType = ftSmallint
      end
      item
        Name = 'ID_EVALUACION'
        DataType = ftString
        Size = 1
      end
      item
        Name = 'MORA'
        DataType = ftInteger
      end
      item
        Name = 'APORTES'
        DataType = ftCurrency
      end
      item
        Name = 'AHORROS'
        DataType = ftCurrency
      end
      item
        Name = 'COMPROMISO'
        DataType = ftString
        Size = 500
      end>
    IndexDefs = <>
    Params = <>
    StoreDefs = True
    Left = 272
    Top = 88
    Data = {
      870200009619E0BD01000000180000001400000000000300000087020A49445F
      4147454E43494104000100000000000D49445F434F4C4F434143494F4E010049
      0000000100055749445448020002000B00124445534352495043494F4E5F4553
      5441444F0100490000000100055749445448020002006400064355454E544101
      00490000000100055749445448020002000A001149445F4944454E5449464943
      4143494F4E04000100000000000A49445F504552534F4E410100490000000100
      055749445448020002000F00064E4F4D42524502004900000001000557494454
      4802000200FF000F5052494D45525F4150454C4C49444F010049000000010005
      5749445448020002001E0010534547554E444F5F4150454C4C49444F01004900
      00000100055749445448020002001E001056414C4F525F444553454D424F4C53
      4F080004000000010007535542545950450200490006004D6F6E657900055341
      4C444F080004000000010007535542545950450200490006004D6F6E6579000B
      56414C4F525F43554F5441080004000000010007535542545950450200490006
      004D6F6E6579001046454348415F444553454D424F4C534F0400060000000000
      1146454348415F56454E43494D49454E544F04000600000000001049445F434C
      4153494649434143494F4E02000100000000000D49445F4556414C554143494F
      4E0100490000000100055749445448020002000100044D4F5241040001000000
      00000741504F5254455308000400000001000753554254595045020049000600
      4D6F6E6579000741484F52524F53080004000000010007535542545950450200
      490006004D6F6E6579000A434F4D50524F4D49534F0200490000000100055749
      44544802000200F4010000}
    object IntegerField1: TIntegerField
      FieldName = 'ID_AGENCIA'
    end
    object StringField1: TStringField
      FieldName = 'ID_COLOCACION'
      Size = 11
    end
    object StringField2: TStringField
      FieldName = 'DESCRIPCION_ESTADO'
      Size = 100
    end
    object StringField3: TStringField
      FieldName = 'CUENTA'
      Size = 10
    end
    object IntegerField2: TIntegerField
      FieldName = 'ID_IDENTIFICACION'
    end
    object StringField4: TStringField
      FieldName = 'ID_PERSONA'
      Size = 15
    end
    object StringField5: TStringField
      FieldName = 'NOMBRE'
      Size = 255
    end
    object StringField6: TStringField
      FieldName = 'PRIMER_APELLIDO'
      Size = 30
    end
    object StringField7: TStringField
      FieldName = 'SEGUNDO_APELLIDO'
      Size = 30
    end
    object CurrencyField1: TCurrencyField
      FieldName = 'VALOR_DESEMBOLSO'
    end
    object CurrencyField2: TCurrencyField
      FieldName = 'SALDO'
    end
    object CurrencyField3: TCurrencyField
      FieldName = 'VALOR_CUOTA'
    end
    object DateField1: TDateField
      FieldName = 'FECHA_DESEMBOLSO'
    end
    object DateField2: TDateField
      FieldName = 'FECHA_VENCIMIENTO'
    end
    object SmallintField1: TSmallintField
      FieldName = 'ID_CLASIFICACION'
    end
    object StringField8: TStringField
      FieldName = 'ID_EVALUACION'
      Size = 1
    end
    object IntegerField3: TIntegerField
      FieldName = 'MORA'
    end
    object IBTabla1APORTES: TCurrencyField
      FieldName = 'APORTES'
    end
    object IBTabla1AHORROS: TCurrencyField
      FieldName = 'AHORROS'
    end
    object IBTabla1COMPROMISO: TStringField
      FieldName = 'COMPROMISO'
      Size = 500
    end
  end
  object ReporteAportes: TprTxReport
    ShowProgress = True
    FromPage = 1
    ToPage = 1
    Title = 'Informe Diario de Cartera'
    ExportFromPage = 0
    ExportToPage = 0
    Values = <
      item
        Name = 'TNoDesembolsos'
        AggFunction = prafCount
        Formula = 'IBTabla.ID_COLOCACION'
        ResetOn = rvtReport
        CalcOn = cvtDataSetNext
        DataSetName = 'IBTabla'
      end
      item
        Name = 'TotalDesembolsos'
        AggFunction = prafSum
        Formula = 'IBTabla.VALOR_DESEMBOLSO'
        ResetOn = rvtReport
        CalcOn = cvtDataSetNext
        DataSetName = 'IBTabla'
        Accumulate = True
      end
      item
        Name = 'TotalCartera'
        AggFunction = prafSum
        Formula = 'IBTabla.SALDO'
        ResetOn = rvtReport
        CalcOn = cvtDataSetNext
        DataSetName = 'IBTabla'
      end>
    Variables = <
      item
        Name = 'Empresa'
        ValueType = 'prvvtString'
        Value = ''
      end
      item
        Name = 'Empleado'
        ValueType = 'prvvtString'
        Value = ''
      end
      item
        Name = 'Nit'
        ValueType = 'prvvtString'
        Value = ''
      end
      item
        Name = 'MoraI'
        ValueType = 'prvvtString'
        Value = ''
      end
      item
        Name = 'Agencia'
        ValueType = 'prvvtString'
        Value = ''
      end
      item
        Name = 'FechaEvaluar'
        ValueType = 'prvvtString'
        Value = ''
      end>
    PrinterName = 'EPSON FX-1180+ ESC/P'
    WrapAfterColumn = 0
    EjectPageAfterPrint = False
    LinesOnPage = 0
    FromLine = 0
    ToLine = 0
    ExportFromLine = 0
    ExportToLine = 0
    Left = 150
    Top = 440
    SystemInfo = (
      'OS: WIN32_NT 5.1.2600 Service Pack 3'
      ''
      'PageSize: 4096'
      'ActiveProcessorMask: $1000'
      'NumberOfProcessors: 1'
      'ProcessorType: 586'
      ''
      'Compiler version: Delphi6'
      'PReport version: 1.9.4')
    object prTxPage1: TprTxPage
      PageType = tptPage
      LineNum = 60
      ColNum = 236
      object prTxHPageHeaderBand1: TprTxHPageHeaderBand
        Height = 4
        UseVerticalBands = False
        PrintOnFirstPage = True
        object prTxMemoObj1: TprTxMemoObj
          dRec.DefVersion = 0
          dRec.Versions = <
            item
              Visible = True
              Memo.Strings = (
                '[Empresa]')
              DeleteEmptyLinesAtEnd = False
              DeleteEmptyLines = False
              CanResizeX = False
              CanResizeY = False
              hAlign = prhLeft
              vAlign = prvCenter
              DefaultFont = False
              WordWrap = False
            end>
          dRec.Left = 1
          dRec.Top = 0
          dRec.Right = 17
          dRec.Bottom = 1
          Visible = False
        end
        object prTxCommandObj1: TprTxCommandObj
          dRec.DefVersion = 0
          dRec.Versions = <
            item
              Visible = True
            end>
          dRec.Left = 0
          dRec.Top = 0
          dRec.Right = 1
          dRec.Bottom = 1
          Visible = False
        end
        object prTxMemoObj30: TprTxMemoObj
          dRec.DefVersion = 0
          dRec.Versions = <
            item
              Visible = True
              Memo.Strings = (
                'Fecha de Impresion :[:<yyyy/mm/dd>StartDateTime]')
              DeleteEmptyLinesAtEnd = False
              DeleteEmptyLines = False
              CanResizeX = True
              CanResizeY = True
              hAlign = prhRight
              vAlign = prvCenter
              DefaultFont = False
              WordWrap = False
            end>
          dRec.Left = 137
          dRec.Top = 2
          dRec.Right = 172
          dRec.Bottom = 3
          Visible = False
        end
        object prTxMemoObj32: TprTxMemoObj
          dRec.DefVersion = 0
          dRec.Versions = <
            item
              Visible = True
              Memo.Strings = (
                'INFORME GENERAL COLOCACIONES CON MORA A PARTIR DE [MoraI] DIAS')
              DeleteEmptyLinesAtEnd = False
              DeleteEmptyLines = False
              CanResizeX = False
              CanResizeY = False
              hAlign = prhCenter
              vAlign = prvCenter
              DefaultFont = False
              WordWrap = False
            end>
          dRec.Left = 77
          dRec.Top = 0
          dRec.Right = 142
          dRec.Bottom = 1
          Visible = False
        end
        object prTxMemoObj31: TprTxMemoObj
          dRec.DefVersion = 0
          dRec.Versions = <
            item
              Visible = True
              Memo.Strings = (
                'Elaboro :  [empleado]')
              DeleteEmptyLinesAtEnd = False
              DeleteEmptyLines = False
              CanResizeX = False
              CanResizeY = False
              hAlign = prhLeft
              vAlign = prvCenter
              DefaultFont = False
              WordWrap = False
            end>
          dRec.Left = 1
          dRec.Top = 3
          dRec.Right = 45
          dRec.Bottom = 4
          Visible = False
        end
        object prTxMemoObj4: TprTxMemoObj
          dRec.DefVersion = 0
          dRec.Versions = <
            item
              Visible = True
              Memo.Strings = (
                'AGENCIA : [Agencia]')
              DeleteEmptyLinesAtEnd = False
              DeleteEmptyLines = False
              CanResizeX = False
              CanResizeY = False
              hAlign = prhLeft
              vAlign = prvCenter
              DefaultFont = False
              WordWrap = False
            end>
          dRec.Left = 1
          dRec.Top = 2
          dRec.Right = 23
          dRec.Bottom = 3
          Visible = False
        end
        object prTxMemoObj27: TprTxMemoObj
          dRec.DefVersion = 0
          dRec.Versions = <
            item
              Visible = True
              Memo.Strings = (
                'Nit. [Nit]')
              DeleteEmptyLinesAtEnd = False
              DeleteEmptyLines = False
              CanResizeX = False
              CanResizeY = False
              hAlign = prhLeft
              vAlign = prvCenter
              DefaultFont = False
              WordWrap = False
            end>
          dRec.Left = 28
          dRec.Top = 0
          dRec.Right = 48
          dRec.Bottom = 1
          Visible = False
        end
        object prTxMemoObj28: TprTxMemoObj
          dRec.DefVersion = 0
          dRec.Versions = <
            item
              Visible = True
              Memo.Strings = (
                'Pagina [Page] de [PagesCount]')
              DeleteEmptyLinesAtEnd = False
              DeleteEmptyLines = False
              CanResizeX = False
              CanResizeY = False
              hAlign = prhLeft
              vAlign = prvTop
              DefaultFont = False
              WordWrap = False
            end>
          dRec.Left = 144
          dRec.Top = 0
          dRec.Right = 172
          dRec.Bottom = 1
          Visible = False
        end
        object prTxMemoObj29: TprTxMemoObj
          dRec.DefVersion = 0
          dRec.Versions = <
            item
              Visible = True
              Memo.Strings = (
                
                  '----------------------------------------------------------------' +
                  '----------------------------------------------------------------' +
                  '----------------------------------------------------------------' +
                  '---------------------------------------')
              DeleteEmptyLinesAtEnd = False
              DeleteEmptyLines = False
              CanResizeX = False
              CanResizeY = False
              hAlign = prhLeft
              vAlign = prvTop
              DefaultFont = False
              WordWrap = False
            end>
          dRec.Left = 1
          dRec.Top = 1
          dRec.Right = 172
          dRec.Bottom = 2
          Visible = False
        end
        object prTxMemoObj16: TprTxMemoObj
          dRec.DefVersion = 0
          dRec.Versions = <
            item
              Visible = True
              Memo.Strings = (
                'FECHA VENCIMIENTO CUOTA EVALUADA:')
              DeleteEmptyLinesAtEnd = False
              DeleteEmptyLines = False
              CanResizeX = False
              CanResizeY = False
              hAlign = prhLeft
              vAlign = prvTop
              DefaultFont = False
              WordWrap = False
            end>
          dRec.Left = 47
          dRec.Top = 2
          dRec.Right = 80
          dRec.Bottom = 3
          Visible = False
        end
        object prTxMemoObj18: TprTxMemoObj
          dRec.DefVersion = 0
          dRec.Versions = <
            item
              Visible = True
              Memo.Strings = (
                '[FechaEvaluar]')
              DeleteEmptyLinesAtEnd = False
              DeleteEmptyLines = False
              CanResizeX = False
              CanResizeY = False
              hAlign = prhLeft
              vAlign = prvTop
              DefaultFont = False
              WordWrap = False
            end>
          dRec.Left = 81
          dRec.Top = 2
          dRec.Right = 95
          dRec.Bottom = 3
          Visible = False
        end
      end
      object prTxHDetailHeaderBand1: TprTxHDetailHeaderBand
        Height = 3
        UseVerticalBands = False
        DetailBand = ReporteAportes.prTxHDetailBand1
        ColCount = 1
        ColDirection = prcdTopBottomLeftRight
        ReprintOnEachPage = True
        LinkToDetail = True
        object prTxMemoObj14: TprTxMemoObj
          dRec.DefVersion = 0
          dRec.Versions = <
            item
              Visible = True
              Memo.Strings = (
                
                  '----------------------------------------------------------------' +
                  '----------------------------------------------------------------' +
                  '----------------------------------------------------------------' +
                  '---------------------------------------')
              DeleteEmptyLinesAtEnd = False
              DeleteEmptyLines = False
              CanResizeX = False
              CanResizeY = False
              hAlign = prhLeft
              vAlign = prvTop
              DefaultFont = False
              WordWrap = False
            end>
          dRec.Left = 1
          dRec.Top = 0
          dRec.Right = 172
          dRec.Bottom = 1
          Visible = False
        end
        object prTxMemoObj15: TprTxMemoObj
          dRec.DefVersion = 0
          dRec.Versions = <
            item
              Visible = True
              Memo.Strings = (
                
                  '----------------------------------------------------------------' +
                  '----------------------------------------------------------------' +
                  '----------------------------------------------------------------' +
                  '---------------------------------------')
              DeleteEmptyLinesAtEnd = False
              DeleteEmptyLines = False
              CanResizeX = False
              CanResizeY = False
              hAlign = prhLeft
              vAlign = prvTop
              DefaultFont = False
              WordWrap = False
            end>
          dRec.Left = 1
          dRec.Top = 2
          dRec.Right = 172
          dRec.Bottom = 3
          Visible = False
        end
        object prTxMemoObj38: TprTxMemoObj
          dRec.DefVersion = 0
          dRec.Versions = <
            item
              Visible = True
              Memo.Strings = (
                '|')
              DeleteEmptyLinesAtEnd = False
              DeleteEmptyLines = False
              CanResizeX = False
              CanResizeY = False
              hAlign = prhLeft
              vAlign = prvTop
              DefaultFont = False
              WordWrap = False
            end>
          dRec.Left = 135
          dRec.Top = 1
          dRec.Right = 136
          dRec.Bottom = 2
          Visible = False
        end
        object prTxMemoObj2: TprTxMemoObj
          dRec.DefVersion = 0
          dRec.Versions = <
            item
              Visible = True
              Memo.Strings = (
                'COLOCACION')
              DeleteEmptyLinesAtEnd = False
              DeleteEmptyLines = False
              CanResizeX = False
              CanResizeY = False
              hAlign = prhCenter
              vAlign = prvTop
              DefaultFont = False
              WordWrap = False
            end>
          dRec.Left = 1
          dRec.Top = 1
          dRec.Right = 14
          dRec.Bottom = 2
          Visible = False
        end
        object prTxMemoObj3: TprTxMemoObj
          dRec.DefVersion = 0
          dRec.Versions = <
            item
              Visible = True
              Memo.Strings = (
                '|')
              DeleteEmptyLinesAtEnd = False
              DeleteEmptyLines = False
              CanResizeX = False
              CanResizeY = False
              hAlign = prhLeft
              vAlign = prvTop
              DefaultFont = False
              WordWrap = False
            end>
          dRec.Left = 27
          dRec.Top = 1
          dRec.Right = 28
          dRec.Bottom = 2
          Visible = False
        end
        object prTxMemoObj51: TprTxMemoObj
          dRec.DefVersion = 0
          dRec.Versions = <
            item
              Visible = True
              Memo.Strings = (
                'NIT/CC')
              DeleteEmptyLinesAtEnd = False
              DeleteEmptyLines = False
              CanResizeX = False
              CanResizeY = False
              hAlign = prhCenter
              vAlign = prvTop
              DefaultFont = False
              WordWrap = False
            end>
          dRec.Left = 28
          dRec.Top = 1
          dRec.Right = 43
          dRec.Bottom = 2
          Visible = False
        end
        object prTxMemoObj53: TprTxMemoObj
          dRec.DefVersion = 0
          dRec.Versions = <
            item
              Visible = True
              Memo.Strings = (
                '|')
              DeleteEmptyLinesAtEnd = False
              DeleteEmptyLines = False
              CanResizeX = False
              CanResizeY = False
              hAlign = prhLeft
              vAlign = prvTop
              DefaultFont = False
              WordWrap = False
            end>
          dRec.Left = 43
          dRec.Top = 1
          dRec.Right = 44
          dRec.Bottom = 2
          Visible = False
        end
        object prTxMemoObj54: TprTxMemoObj
          dRec.DefVersion = 0
          dRec.Versions = <
            item
              Visible = True
              Memo.Strings = (
                'ASOCIADO')
              DeleteEmptyLinesAtEnd = False
              DeleteEmptyLines = False
              CanResizeX = False
              CanResizeY = False
              hAlign = prhCenter
              vAlign = prvCenter
              DefaultFont = False
              WordWrap = False
            end>
          dRec.Left = 44
          dRec.Top = 1
          dRec.Right = 87
          dRec.Bottom = 2
          Visible = False
        end
        object prTxMemoObj55: TprTxMemoObj
          dRec.DefVersion = 0
          dRec.Versions = <
            item
              Visible = True
              Memo.Strings = (
                '|')
              DeleteEmptyLinesAtEnd = False
              DeleteEmptyLines = False
              CanResizeX = False
              CanResizeY = False
              hAlign = prhLeft
              vAlign = prvTop
              DefaultFont = False
              WordWrap = False
            end>
          dRec.Left = 87
          dRec.Top = 1
          dRec.Right = 88
          dRec.Bottom = 2
          Visible = False
        end
        object prTxMemoObj8: TprTxMemoObj
          dRec.DefVersion = 0
          dRec.Versions = <
            item
              Visible = True
              Memo.Strings = (
                'VALOR CUOTA')
              DeleteEmptyLinesAtEnd = False
              DeleteEmptyLines = False
              CanResizeX = False
              CanResizeY = False
              hAlign = prhCenter
              vAlign = prvTop
              DefaultFont = False
              WordWrap = False
            end>
          dRec.Left = 112
          dRec.Top = 1
          dRec.Right = 135
          dRec.Bottom = 2
          Visible = False
        end
        object prTxMemoObj10: TprTxMemoObj
          dRec.DefVersion = 0
          dRec.Versions = <
            item
              Visible = True
              Memo.Strings = (
                'SALDO')
              DeleteEmptyLinesAtEnd = False
              DeleteEmptyLines = False
              CanResizeX = False
              CanResizeY = False
              hAlign = prhCenter
              vAlign = prvTop
              DefaultFont = False
              WordWrap = False
            end>
          dRec.Left = 88
          dRec.Top = 1
          dRec.Right = 111
          dRec.Bottom = 2
          Visible = False
        end
        object prTxMemoObj12: TprTxMemoObj
          dRec.DefVersion = 0
          dRec.Versions = <
            item
              Visible = True
              Memo.Strings = (
                'FECHA VENC.')
              DeleteEmptyLinesAtEnd = False
              DeleteEmptyLines = False
              CanResizeX = False
              CanResizeY = False
              hAlign = prhLeft
              vAlign = prvTop
              DefaultFont = False
              WordWrap = False
            end>
          dRec.Left = 136
          dRec.Top = 1
          dRec.Right = 147
          dRec.Bottom = 2
          Visible = False
        end
        object prTxMemoObj13: TprTxMemoObj
          dRec.DefVersion = 0
          dRec.Versions = <
            item
              Visible = True
              Memo.Strings = (
                '|')
              DeleteEmptyLinesAtEnd = False
              DeleteEmptyLines = False
              CanResizeX = False
              CanResizeY = False
              hAlign = prhLeft
              vAlign = prvTop
              DefaultFont = False
              WordWrap = False
            end>
          dRec.Left = 161
          dRec.Top = 1
          dRec.Right = 162
          dRec.Bottom = 2
          Visible = False
        end
        object prTxMemoObj17: TprTxMemoObj
          dRec.DefVersion = 0
          dRec.Versions = <
            item
              Visible = True
              Memo.Strings = (
                'DIAS MORA')
              DeleteEmptyLinesAtEnd = False
              DeleteEmptyLines = False
              CanResizeX = False
              CanResizeY = False
              hAlign = prhCenter
              vAlign = prvCenter
              DefaultFont = False
              WordWrap = False
            end>
          dRec.Left = 162
          dRec.Top = 1
          dRec.Right = 172
          dRec.Bottom = 2
          Visible = False
        end
        object prTxMemoObj21: TprTxMemoObj
          dRec.DefVersion = 0
          dRec.Versions = <
            item
              Visible = True
              Memo.Strings = (
                'FECHA APERT.')
              DeleteEmptyLinesAtEnd = False
              DeleteEmptyLines = False
              CanResizeX = False
              CanResizeY = False
              hAlign = prhCenter
              vAlign = prvCenter
              DefaultFont = False
              WordWrap = False
            end>
          dRec.Left = 15
          dRec.Top = 1
          dRec.Right = 27
          dRec.Bottom = 2
          Visible = False
        end
        object prTxMemoObj48: TprTxMemoObj
          dRec.DefVersion = 0
          dRec.Versions = <
            item
              Visible = True
              Memo.Strings = (
                '|')
              DeleteEmptyLinesAtEnd = False
              DeleteEmptyLines = False
              CanResizeX = False
              CanResizeY = False
              hAlign = prhLeft
              vAlign = prvTop
              DefaultFont = False
              WordWrap = False
            end>
          dRec.Left = 14
          dRec.Top = 1
          dRec.Right = 15
          dRec.Bottom = 2
          Visible = False
        end
        object prTxMemoObj6: TprTxMemoObj
          dRec.DefVersion = 0
          dRec.Versions = <
            item
              Visible = True
              Memo.Strings = (
                '|')
              DeleteEmptyLinesAtEnd = False
              DeleteEmptyLines = False
              CanResizeX = False
              CanResizeY = False
              hAlign = prhLeft
              vAlign = prvTop
              DefaultFont = False
              WordWrap = False
            end>
          dRec.Left = 111
          dRec.Top = 1
          dRec.Right = 112
          dRec.Bottom = 2
          Visible = False
        end
        object prTxMemoObj9: TprTxMemoObj
          dRec.DefVersion = 0
          dRec.Versions = <
            item
              Visible = True
              Memo.Strings = (
                '|')
              DeleteEmptyLinesAtEnd = False
              DeleteEmptyLines = False
              CanResizeX = False
              CanResizeY = False
              hAlign = prhLeft
              vAlign = prvTop
              DefaultFont = False
              WordWrap = False
            end>
          dRec.Left = 147
          dRec.Top = 1
          dRec.Right = 148
          dRec.Bottom = 2
          Visible = False
        end
        object prTxMemoObj58: TprTxMemoObj
          dRec.DefVersion = 0
          dRec.Versions = <
            item
              Visible = True
              Memo.Strings = (
                'ESTADO')
              DeleteEmptyLinesAtEnd = False
              DeleteEmptyLines = False
              CanResizeX = False
              CanResizeY = False
              hAlign = prhCenter
              vAlign = prvCenter
              DefaultFont = False
              WordWrap = False
            end>
          dRec.Left = 148
          dRec.Top = 1
          dRec.Right = 161
          dRec.Bottom = 2
          Visible = False
        end
      end
      object prTxHDetailBand1: TprTxHDetailBand
        Height = 1
        UseVerticalBands = False
        DataSetName = 'IBTabla'
        ColCount = 1
        ColDirection = prcdTopBottomLeftRight
        Valid = 'IBTabla.SALDO <= IBTabla.APORTES'
        Bands = (
          'prTxHDetailHeaderBand1'
          'prTxHDetailFooterBand1')
        object prTxMemoObj57: TprTxMemoObj
          dRec.DefVersion = 0
          dRec.Versions = <
            item
              Visible = True
              Memo.Strings = (
                '|')
              DeleteEmptyLinesAtEnd = False
              DeleteEmptyLines = False
              CanResizeX = False
              CanResizeY = False
              hAlign = prhLeft
              vAlign = prvTop
              DefaultFont = False
              WordWrap = False
            end>
          dRec.Left = 27
          dRec.Top = 0
          dRec.Right = 28
          dRec.Bottom = 1
          Visible = False
        end
        object prTxMemoObj60: TprTxMemoObj
          dRec.DefVersion = 0
          dRec.Versions = <
            item
              Visible = True
              Memo.Strings = (
                
                  '[IBTabla.PRIMER_APELLIDO] [IBTabla.SEGUNDO_APELLIDO] [IBTabla.NO' +
                  'MBRE]')
              DeleteEmptyLinesAtEnd = False
              DeleteEmptyLines = False
              CanResizeX = False
              CanResizeY = False
              hAlign = prhLeft
              vAlign = prvCenter
              DefaultFont = False
              WordWrap = False
            end>
          dRec.Left = 44
          dRec.Top = 0
          dRec.Right = 87
          dRec.Bottom = 1
          Visible = False
        end
        object prTxMemoObj19: TprTxMemoObj
          dRec.DefVersion = 0
          dRec.Versions = <
            item
              Visible = True
              Memo.Strings = (
                '|')
              DeleteEmptyLinesAtEnd = False
              DeleteEmptyLines = False
              CanResizeX = False
              CanResizeY = False
              hAlign = prhLeft
              vAlign = prvTop
              DefaultFont = False
              WordWrap = False
            end>
          dRec.Left = 87
          dRec.Top = 0
          dRec.Right = 88
          dRec.Bottom = 1
          Visible = False
        end
        object prTxMemoObj40: TprTxMemoObj
          dRec.DefVersion = 0
          dRec.Versions = <
            item
              Visible = True
              Memo.Strings = (
                '|')
              DeleteEmptyLinesAtEnd = False
              DeleteEmptyLines = False
              CanResizeX = False
              CanResizeY = False
              hAlign = prhLeft
              vAlign = prvTop
              DefaultFont = False
              WordWrap = False
            end>
          dRec.Left = 135
          dRec.Top = 0
          dRec.Right = 136
          dRec.Bottom = 1
          Visible = False
        end
        object prTxMemoObj43: TprTxMemoObj
          dRec.DefVersion = 0
          dRec.Versions = <
            item
              Visible = True
              Memo.Strings = (
                '|')
              DeleteEmptyLinesAtEnd = False
              DeleteEmptyLines = False
              CanResizeX = False
              CanResizeY = False
              hAlign = prhLeft
              vAlign = prvTop
              DefaultFont = False
              WordWrap = False
            end>
          dRec.Left = 161
          dRec.Top = 0
          dRec.Right = 162
          dRec.Bottom = 1
          Visible = False
        end
        object prTxMemoObj64: TprTxMemoObj
          dRec.DefVersion = 0
          dRec.Versions = <
            item
              Visible = True
              Memo.Strings = (
                '|')
              DeleteEmptyLinesAtEnd = False
              DeleteEmptyLines = False
              CanResizeX = False
              CanResizeY = False
              hAlign = prhLeft
              vAlign = prvTop
              DefaultFont = False
              WordWrap = False
            end>
          dRec.Left = 43
          dRec.Top = 0
          dRec.Right = 44
          dRec.Bottom = 1
          Visible = False
        end
        object prTxMemoObj50: TprTxMemoObj
          dRec.DefVersion = 0
          dRec.Versions = <
            item
              Visible = True
              Memo.Strings = (
                '|')
              DeleteEmptyLinesAtEnd = False
              DeleteEmptyLines = False
              CanResizeX = False
              CanResizeY = False
              hAlign = prhLeft
              vAlign = prvTop
              DefaultFont = False
              WordWrap = False
            end>
          dRec.Left = 14
          dRec.Top = 0
          dRec.Right = 15
          dRec.Bottom = 1
          Visible = False
        end
        object prTxMemoObj11: TprTxMemoObj
          dRec.DefVersion = 0
          dRec.Versions = <
            item
              Visible = True
              Memo.Strings = (
                '[IBTabla.ID_COLOCACION]')
              DeleteEmptyLinesAtEnd = False
              DeleteEmptyLines = False
              CanResizeX = False
              CanResizeY = False
              hAlign = prhLeft
              vAlign = prvCenter
              DefaultFont = False
              WordWrap = False
            end>
          dRec.Left = 1
          dRec.Top = 0
          dRec.Right = 14
          dRec.Bottom = 1
          Visible = False
        end
        object prTxMemoObj23: TprTxMemoObj
          dRec.DefVersion = 0
          dRec.Versions = <
            item
              Visible = True
              Memo.Strings = (
                '[:<yyyy/mm/dd>IBTabla.FECHA_DESEMBOLSO]')
              DeleteEmptyLinesAtEnd = False
              DeleteEmptyLines = False
              CanResizeX = False
              CanResizeY = False
              hAlign = prhLeft
              vAlign = prvCenter
              DefaultFont = False
              WordWrap = False
            end>
          dRec.Left = 15
          dRec.Top = 0
          dRec.Right = 27
          dRec.Bottom = 1
          Visible = False
        end
        object prTxMemoObj24: TprTxMemoObj
          dRec.DefVersion = 0
          dRec.Versions = <
            item
              Visible = True
              Memo.Strings = (
                '[IBTabla.ID_PERSONA]')
              DeleteEmptyLinesAtEnd = False
              DeleteEmptyLines = False
              CanResizeX = False
              CanResizeY = False
              hAlign = prhLeft
              vAlign = prvCenter
              DefaultFont = False
              WordWrap = False
            end>
          dRec.Left = 28
          dRec.Top = 0
          dRec.Right = 43
          dRec.Bottom = 1
          Visible = False
        end
        object prTxMemoObj52: TprTxMemoObj
          dRec.DefVersion = 0
          dRec.Versions = <
            item
              Visible = True
              Memo.Strings = (
                '[:<#,##0.00>IBTabla.SALDO]')
              DeleteEmptyLinesAtEnd = False
              DeleteEmptyLines = False
              CanResizeX = False
              CanResizeY = False
              hAlign = prhRight
              vAlign = prvCenter
              DefaultFont = False
              WordWrap = False
            end>
          dRec.Left = 88
          dRec.Top = 0
          dRec.Right = 111
          dRec.Bottom = 1
          Visible = False
        end
        object prTxMemoObj66: TprTxMemoObj
          dRec.DefVersion = 0
          dRec.Versions = <
            item
              Visible = True
              Memo.Strings = (
                '[:<yyyy/mm/dd>IBTabla.FECHA_VENCIMIENTO]')
              DeleteEmptyLinesAtEnd = False
              DeleteEmptyLines = False
              CanResizeX = False
              CanResizeY = False
              hAlign = prhRight
              vAlign = prvCenter
              DefaultFont = False
              WordWrap = False
            end>
          dRec.Left = 136
          dRec.Top = 0
          dRec.Right = 147
          dRec.Bottom = 1
          Visible = False
        end
        object prTxMemoObj68: TprTxMemoObj
          dRec.DefVersion = 0
          dRec.Versions = <
            item
              Visible = True
              Memo.Strings = (
                '[IBTabla.MORA]')
              DeleteEmptyLinesAtEnd = False
              DeleteEmptyLines = False
              CanResizeX = False
              CanResizeY = False
              hAlign = prhRight
              vAlign = prvTop
              DefaultFont = False
              WordWrap = False
            end>
          dRec.Left = 162
          dRec.Top = 0
          dRec.Right = 172
          dRec.Bottom = 1
          Visible = False
        end
        object prTxMemoObj41: TprTxMemoObj
          dRec.DefVersion = 0
          dRec.Versions = <
            item
              Visible = True
              Memo.Strings = (
                '[:<#,##0.00>IBTabla.VALOR_CUOTA]')
              DeleteEmptyLinesAtEnd = False
              DeleteEmptyLines = False
              CanResizeX = False
              CanResizeY = False
              hAlign = prhRight
              vAlign = prvCenter
              DefaultFont = False
              WordWrap = False
            end>
          dRec.Left = 112
          dRec.Top = 0
          dRec.Right = 135
          dRec.Bottom = 1
          Visible = False
        end
        object prTxMemoObj7: TprTxMemoObj
          dRec.DefVersion = 0
          dRec.Versions = <
            item
              Visible = True
              Memo.Strings = (
                '|')
              DeleteEmptyLinesAtEnd = False
              DeleteEmptyLines = False
              CanResizeX = False
              CanResizeY = False
              hAlign = prhLeft
              vAlign = prvTop
              DefaultFont = False
              WordWrap = False
            end>
          dRec.Left = 111
          dRec.Top = 0
          dRec.Right = 112
          dRec.Bottom = 1
          Visible = False
        end
        object prTxMemoObj42: TprTxMemoObj
          dRec.DefVersion = 0
          dRec.Versions = <
            item
              Visible = True
              Memo.Strings = (
                '|')
              DeleteEmptyLinesAtEnd = False
              DeleteEmptyLines = False
              CanResizeX = False
              CanResizeY = False
              hAlign = prhLeft
              vAlign = prvTop
              DefaultFont = False
              WordWrap = False
            end>
          dRec.Left = 147
          dRec.Top = 0
          dRec.Right = 148
          dRec.Bottom = 1
          Visible = False
        end
        object prTxMemoObj61: TprTxMemoObj
          dRec.DefVersion = 0
          dRec.Versions = <
            item
              Visible = True
              Memo.Strings = (
                '[IBTabla.DESCRIPCION_ESTADO]')
              DeleteEmptyLinesAtEnd = False
              DeleteEmptyLines = False
              CanResizeX = False
              CanResizeY = False
              hAlign = prhLeft
              vAlign = prvTop
              DefaultFont = False
              WordWrap = False
            end>
          dRec.Left = 148
          dRec.Top = 0
          dRec.Right = 161
          dRec.Bottom = 1
          Visible = False
        end
      end
      object prTxHDetailFooterBand1: TprTxHDetailFooterBand
        Height = 2
        UseVerticalBands = False
        DetailBand = ReporteAportes.prTxHDetailBand1
        ColCount = 1
        ColDirection = prcdTopBottomLeftRight
        LinkToDetail = False
        object prTxMemoObj5: TprTxMemoObj
          dRec.DefVersion = 0
          dRec.Versions = <
            item
              Visible = True
              Memo.Strings = (
                'No. Colocaciones : [TNoDesembolsos]')
              DeleteEmptyLinesAtEnd = False
              DeleteEmptyLines = False
              CanResizeX = False
              CanResizeY = False
              hAlign = prhLeft
              vAlign = prvTop
              DefaultFont = False
              WordWrap = False
            end>
          dRec.Left = 1
          dRec.Top = 1
          dRec.Right = 28
          dRec.Bottom = 2
          Visible = False
        end
        object prTxMemoObj35: TprTxMemoObj
          dRec.DefVersion = 0
          dRec.Versions = <
            item
              Visible = True
              Memo.Strings = (
                'Valor Total Cartera : [:<#,##0.00>TotalCartera] ')
              DeleteEmptyLinesAtEnd = False
              DeleteEmptyLines = False
              CanResizeX = False
              CanResizeY = False
              hAlign = prhRight
              vAlign = prvCenter
              DefaultFont = False
              WordWrap = False
            end>
          dRec.Left = 117
          dRec.Top = 1
          dRec.Right = 172
          dRec.Bottom = 2
          Visible = False
        end
        object prTxMemoObj25: TprTxMemoObj
          dRec.DefVersion = 0
          dRec.Versions = <
            item
              Visible = True
              Memo.Strings = (
                
                  '----------------------------------------------------------------' +
                  '----------------------------------------------------------------' +
                  '----------------------------------------------------------------' +
                  '---------------------------------------')
              DeleteEmptyLinesAtEnd = False
              DeleteEmptyLines = False
              CanResizeX = False
              CanResizeY = False
              hAlign = prhLeft
              vAlign = prvTop
              DefaultFont = False
              WordWrap = False
            end>
          dRec.Left = -59
          dRec.Top = 0
          dRec.Right = 172
          dRec.Bottom = 1
          Visible = False
        end
      end
    end
  end
  object ImageList: TImageList
    Left = 104
    Top = 288
    Bitmap = {
      494C010113001800040010001000FFFFFFFFFF10FFFFFFFFFFFFFFFF424D3600
      0000000000003600000028000000400000006000000001002000000000000060
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
      0000000000000000000000000000000000000000000000000000B5848400B584
      8400B5848400B5848400B5848400B5848400B5848400B5848400B5848400B584
      8400B5848400B5848400A5A5A500424242000000000000000000000000000000
      00000000000000000000000000006B7373006B73730000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000C6A59C00FFEF
      D600F7E7C600F7DEBD00F7DEB500F7D6AD00F7D6A500EFCE9C00EFCE9400EFCE
      9400EFCE9400ADADAD005A5A5A00C6C6C6000000000000000000000000000000
      000000000000000000006B7373008C736300A5632100734A2900000000000000
      000000000000000000000000000000000000000000005A9CD600316BAD00316B
      AD00316BAD00316BAD00316BAD00316BAD00316BAD00316BAD00316BAD00316B
      AD00316BAD00316BAD00316BAD00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000C6A59C00FFEF
      D600F7E7CE00F7DEC600F7DEBD00F7D6B500F7D6A500EFCE9C00EFCE9C00EFCE
      9400BDBDBD006B6B6B00C6C6C600848484000000000000000000000000000000
      000000000000000000006B635A009C846300D6731800A55A2900000000000000
      000000000000000000000000000000000000000000005A9CD600F7FFFF00F7FF
      FF00F7FFFF00F7FFFF00F7FFFF00F7FFFF00F7FFFF00F7FFFF00F7FFFF00F7FF
      FF00F7FFFF00F7FFFF00316BAD00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000C6ADA500FFEF
      E700AD6B5A00AD6B5A00AD6B5A009C9C9C009C9C9C009C9C9C009C9C9C00AD6B
      5A006B6B6B00181818006B6B6B00524A4A0000000000000000005A5252005A52
      52005A525200000000006B635A009C846300D6731800945A2900000000000000
      000000000000000000000000000000000000000000005A9CD600F7FFFF00296B
      3100296B3100296B3100296B3100296B3100296B3100296B3100296B3100296B
      3100296B3100F7FFFF00316BAD00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000C6ADA500FFF7
      E700F7E7D600F7E7CE00BDBDBD004A4A4A00524A4A004A4A4A0052525200A5A5
      A500393939006B6B6B00BDBDBD00000000000000000084848400B5B5B500BDBD
      BD00B5B5B500A5A5A500736B6300A58C7300D67318008C523100000000000000
      000000000000000000000000000000000000000000004AA5EF00F7FFFF00296B
      3100F7FFFF007BADD600F7FFFF007BADD600F7FFFF00F7FFFF007BADD600F7FF
      FF00296B3100F7FFFF00316BAD00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000CEB5AD00FFFF
      F700AD6B5A0094949C0042393900AD6B5A00AD6B5A00AD6B5A00AD6B5A004239
      39006B6B6B00DEDED600B5848400000000000000000084848400848484008484
      8400C6C6C600BDBDBD00736B6300CE9C6B00D67318008C5A39005A5252005A52
      52005A5252005A5252006363630000000000000000004AA5EF00F7FFFF00296B
      31004ABD6B007BADD6004ABD6B007BADD6004ABD6B004ABD6B007BADD6004ABD
      6B00296B3100F7FFFF00316BAD00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000D6B5AD00FFFF
      FF00A5A59C0042393900B5847300AD6B5A00AD6B5A00AD6B5A00AD6B5A00B584
      730042393900C6C6C600B5848400000000000000000000000000000000000000
      0000B5B5B500C6C6C600736B6300CE9C6300D6732100734A3900B5B5B500ADAD
      AD00ADADAD00B5B5B500A594A5005A525200000000004AA5EF00F7FFFF00296B
      3100F7FFFF007BADD600F7FFFF007BADD600F7FFFF00F7FFFF007BADD600F7FF
      FF00296B3100F7FFFF00316BAD00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000D6BDB500A5A5
      9C006B6B6B00C6B59400FFE7D600EFC6AD00F7D6AD00F7D6AD00E7C69C00F7E7
      CE009C8C730042393900B584840000000000000000009C9C9C00636363006363
      6300C6C6C600BDBDBD007B736300DEA56B00D6732100734A3900848484008484
      840084848400848484008484840000000000000000004AA5EF00F7FFFF00296B
      31004ABD6B007BADD6004ABD6B007BADD6004ABD6B004ABD6B007BADD6004ABD
      6B00296B3100F7FFFF00316BAD00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000D6BDB500A5A5
      9C006B6B6B00D6BDA500AD6B5A00AD6B5A00AD6B5A00AD6B5A00AD6B5A00AD6B
      5A00AD9C8C0042393900B584840000000000000000009C9C9C00A5A5A500B5B5
      B500A5A5A5008484840063635A00D6A57300DE7331007B5A4A00000000000000
      000000000000000000000000000000000000000000004AA5EF00F7FFFF00296B
      3100F7FFFF007BADD600F7FFFF007BADD600F7FFFF00F7FFFF007BADD600F7FF
      FF00296B3100F7FFFF00316BAD00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000DEBDB500A5A5
      9C006B6B6B00C6BDA500B5847300B5847300AD6B5A00AD6B5A00AD6B5A00AD6B
      5A00A5947B0042393900B58484000000000000000000000000009C9C9C009C9C
      9C0084848400000000007B736B00F7BD7B00CE73310084635A00000000000000
      000000000000000000000000000000000000000000004AA5EF00F7FFFF00296B
      3100296B3100296B3100296B3100296B3100296B3100296B3100296B3100296B
      3100296B3100F7FFFF00316BAD00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000DEC6B500FFFF
      FF00A5A59C006B6B6B00FFD6AD00FFE7D600F7FFFF00FFFFF700FFDED600FFD6
      B50042393900A5A5A500B5848400000000000000000000000000000000000000
      0000000000000000000063524200A57B5A00A5634200846B6300000000000000
      000000000000000000000000000000000000000000004AA5EF00F7FFFF00F7FF
      FF00F7FFFF00F7FFFF00F7FFFF00F7FFFF00F7FFFF00F7FFFF00F7FFFF00F7FF
      FF00F7FFFF00F7FFFF00316BAD00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000E7C6B500FFFF
      FF00FFFFFF00A5A59C006B6B6B00F7D6AD00AD6B5A00AD6B5A00EFD6A5004239
      3900BDBDBD00B58C8400B5848400000000000000000000000000000000000000
      000000000000000000005A525200A5A5A5006B6B6B005A525200000000000000
      000000000000000000000000000000000000000000004AA5EF00F7FFFF00F7FF
      FF00296B3100296B3100296B3100296B3100296B3100296B3100296B3100296B
      3100F7FFFF00F7FFFF00316BAD00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000E7C6B500FFFF
      FF00AD6B5A00AD6B5A00A5A59C006B6B6B006B6B6B006B6B6B006B6B6B00A5A5
      9C00EFB57300EFA54A00C6846B00000000000000000000000000000000008C8C
      8C008C8C8C00000000005A525200A5A5A500B5B5B5005A525200000000000000
      000000000000000000000000000000000000000000004AA5EF00F7FFFF00F7FF
      FF004ABD6B004ABD6B0042B55A0042B55A00319C3900319C3900319C39003184
      3900F7FFFF00F7FFFF00316BAD00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000EFCEBD00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00A5A59C00A5A59C00A5A59C00A5A59C00C694
      7B00FFC67300CE94730000000000000000000000000000000000527B8400D6D6
      D600636363008C8C8C005A52520094949400C6C6C600C6C6C600000000000000
      00005A5252006B7373000000000000000000000000004AA5EF00F7FFFF00F7FF
      FF00F7FFFF00F7FFFF00F7FFFF00F7FFFF00F7FFFF00F7FFFF00F7FFFF00F7FF
      FF00F7FFFF00F7FFFF00316BAD00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000E7C6B500FFF7
      F700FFF7EF00FFF7EF00FFF7EF00FFF7EF00FFF7EF00FFF7EF00E7CECE00C694
      7B00CE9C84000000000000000000000000000000000000000000527B8400B5B5
      B50063636300F7F7F7006B6B6B0094949400ADADAD00B5B5B500C6C6C600BDBD
      BD009C9C9C006B7373000000000000000000000000004AA5EF004AA5EF004AA5
      EF004AA5EF004AA5EF004AA5EF004AA5EF004AA5EF004AA5EF004AA5EF005A9C
      D6005A9CD6005A9CD6005A9CD600000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000E7C6B500EFCE
      B500EFCEB500EFCEB500EFCEB500E7C6B500E7C6B500EFCEB500D6BDB500BD84
      7B0000000000000000000000000000000000000000000000000063636300B5B5
      B5009C9C9C008C8C8C00A5A5A500DEDEDE00CECECE00BDBDBD00ADADAD00949C
      9C006B7373000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000A5636B00A563
      6B00A5636B00A5636B00A5636B00A5636B00A5636B00A5636B00A5636B00A563
      6B00A5636B00A5636B00A5636B00000000000000000000000000000000000000
      000000000000000000009C9C9C00000000000000000000000000848484008484
      84008C8C8C000000000000000000000000000000000000000000000000000000
      0000AD7B6B00AD7B6B00AD7B6B00AD7B6B000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000004A526300FFEF
      C600F7D6B500EFD6AD00EFCE9C00EFCE9400EFC68C00EFBD8400EFBD7B00EFBD
      8400EFBD8400EFC68400A5636B00000000000000000000000000000000000000
      00009C9C9C009C9C9C00D6CECE009494940039393900525252009C949400C6C6
      C600D6D6D600848484000000000000000000000000000000000000000000AD7B
      6B00DEA57B00EFC69400E7C6A500DEB58C00AD7B6B00AD7B6B00AD7B6B00AD7B
      6B00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000636B8400186BC600636B
      8400F7DEBD00EFD6AD00EFCEA500EFCE9C00EFC69400EFC68C00EFBD8400EFBD
      7B00EFBD7B00EFC68400A5636B000000000000000000000000009C9C9C009C9C
      9C00F7F7F700FFFFFF00D6D6D6009C9C9C004242420021182100211821003131
      310063636300848484008C8C8C00000000000000000000000000AD7B6B00DEB5
      8C00EFB57B00EFC69C00EFD6B500EFCEA500C69C73007B4A4A008C525200AD7B
      6B00AD7B6B00AD7B6B000000000000000000000000000000000010841000189C
      180031A5310039AD390039AD3900107B100031942900217318005A524200736B
      5A0000000000000000000000000000000000000000000000000031A5FF001073
      D6006B6B8400F7DEBD00EFD6B500EFCEA500EFCE9C00EFC69400EFC68C00EFBD
      8400EFBD7B00EFC68400A5636B0000000000948C8C009C9C9C00EFEFEF00FFFF
      FF00EFE7E700C6C6C6009C9C9C008C8C8C009494940084848400636363003939
      39001821210021182100737373000000000000000000AD7B6B00E7BD9400EFC6
      8C00EFB57B00EFC6A500F7E7CE00F7D6AD00C69C84007B4A4A007B4A4A00CEA5
      7B00EFBD8C00D6A58400AD7B6B0000000000000000000000000021A5210031AD
      31004ABD4A0052C65200399C39008CBD7B0052BD520042BD4200217318004A42
      2900000000000000000000000000000000000000000000000000A5635A0031A5
      FF001073D6005A638400F7DEBD00EFD6AD00EFCEA500EFCE9C00EFC69400EFC6
      8C00EFBD8400EFC68400A5636B00000000009C9C9C00E7E7E700E7E7E700BDBD
      BD00A5A5A500B5ADAD00C6BDBD00A5A5A50094949400948C8C00949494009C94
      94008C8C8C006B6B6B008484840000000000AD7B6B00F7CE9C00F7D69400EFC6
      8C00EFB57B00F7CEAD00FFEFDE00FFE7C600CEA58C007B4A4A007B4A4A00CEA5
      7B00EFBD8C00DEB58400AD7B6B00000000000000000000000000299C29004ABD
      4A006BCE6B006BC66B00F7FFEF00F7FFEF0063C6630063CE630031A531004A6B
      3900000000000000000000000000000000000000000000000000A5736B00FFF7
      EF0031A5FF00427BAD008C635A00AD7B730094635A00AD7B6B00CEA58400EFC6
      9400EFC68C00EFC68400A5636B000000000094949400ADADAD00A5A5A500ADAD
      AD00C6C6C600D6D6D600EFEFEF00EFEFEF00DEDEDE00C6C6C600ADADAD009C9C
      9C00948C8C00949494008C8C8C0000000000AD7B6B00F7D69C00F7D69400F7C6
      8C00F7B57300F7CEAD00FFF7EF00FFEFDE00CEAD9C00734242007B4A4A00CEA5
      7B00EFBD8C00DEB58400AD7B6B00000000000000000000000000000000004ABD
      4A0073CE730052A54A00FFFFFF00FFFFFF006BC66B0073CE7300319C31000000
      0000000000000000000000000000000000000000000000000000A5736B00FFFF
      FF00F7EFE700AD8C8C00B58C8400DEBDA500EFD6B500D6B59C00B58C7300CEA5
      8400EFC69400EFC68C00A5636B0000000000948C8C00ADADAD00C6C6C600CECE
      CE00C6C6C600DEDEDE00CECECE00A5ADA500BDBDBD00CECECE00D6D6D600D6D6
      D600C6C6C600B5B5B5009494940000000000AD7B6B00F7D69C00FFD69400E7BD
      9400B5A59400F7CEAD00FFFFF700FFF7EF00DEC6B50094635A0084524A00CEA5
      8400EFBD8C00DEB58400AD7B6B00000000000000000000000000000000000000
      000018734A003984AD00217BBD00428CAD0063BD6300399C3900000000000000
      0000000000000000000000000000000000000000000000000000BD846B00FFFF
      FF00FFF7EF00AD847B00DEC6B500F7E7CE00F7E7C600FFFFF700D6B59C00AD7B
      6B00EFCE9C00EFCE9400A5636B0000000000000000009C9C9C00CECECE00CECE
      CE00DEDEDE00C6C6C600B5B5B500A5D6A500BDC6BD00C6A5A500ADA5A500A5A5
      A500B5B5B500C6BDBD00A5A5A50000000000AD7B6B00FFD69400D6CEA50052A5
      E7002184F70084ADDE00FFFFEF00FFF7EF00FFF7E700F7E7CE00E7C6A500E7C6
      9C00E7BD9400DEB58400AD7B6B00000000000000000000000000000000000000
      0000187BC600218CE700298CE700218CE700296B520000000000000000000000
      0000000000000000000000000000000000000000000000000000BD846B00FFFF
      FF00FFFFFF0094636300F7EFDE00F7EFDE00F7E7CE00FFFFEF00EFD6B5009463
      5A00EFCEA500F7D6A500A5636B000000000000000000000000009C9C9C00BDBD
      BD00ADADAD00ADADAD00E7E7E700F7EFEF00EFEFEF00EFE7DE00D6D6D600CECE
      CE00B5B5B500949494000000000000000000AD7B6B009CC6C60042B5FF0031AD
      FF00319CFF001884FF0084BDF700FFFFEF00FFF7EF00FFEFDE00F7E7CE00EFD6
      B500EFC69C00DEB58C00A57B7B0000000000000000000000000000000000297B
      AD00399CFF00399CFF00399CFF00399CFF00298CE70039525200000000000000
      0000000000000000000000000000000000000000000000000000D6946B00FFFF
      FF00FFFFFF00B58C8400DEC6C600F7EFE700F7EFDE00FFFFD600DEBDA500AD7B
      7300F7D6AD00EFCEA500A5636B00000000000000000000000000000000009C9C
      9C00D6D6D600CECECE009C9C9C00BDBDBD00D6D6D600D6D6D600D6D6D600C6C6
      C600ADADAD00000000000000000000000000429CF70042A5FF0042ADFF0042B5
      FF0039A5FF002994FF001884FF008CC6F700FFFFEF00FFF7EF00FFEFDE00FFE7
      C600DEC6B500948C94009C7B8400000000000000000000000000000000002184
      C60042A5FF0042A5FF0042A5FF0042A5FF00399CF700315A6B00000000000000
      0000000000000000000000000000000000000000000000000000D6946B00FFFF
      FF00FFFFFF00D6BDBD00BD949400DEC6C600F7EFDE00DEC6B500B58C8400B58C
      7B00DECEB500B5AD9400A5636B00000000000000000000000000000000000000
      0000FFE7E700FFDECE00E7C6BD00E7C6BD00E7CEC600DED6CE00CECECE009494
      94000000000000000000000000000000000000000000429CFF0042A5FF0042AD
      FF0042B5FF0039A5FF002994FF001884FF008CC6F700FFFFEF00FFFFEF00D6D6
      D600737BAD007B739400000000000000000000000000000000006BA5C60042A5
      F7004AB5FF0052B5FF0052BDFF0052B5FF004AADFF0039739400000000000000
      0000000000000000000000000000000000000000000000000000DE9C7300FFFF
      FF00FFFFFF00FFFFFF00D6BDBD00B58C840094636300AD847B00CEA59C00A56B
      5A00A56B5A00A56B5A00A5636B00000000000000000000000000000000000000
      0000CE9C9C00FFDECE00FFCEBD00FFC6AD00FFBDA500FFAD9C00000000000000
      0000000000000000000000000000000000000000000000000000429CF70042A5
      FF0042ADFF0042ADFF0039A5FF002994FF001884FF0094C6FF00B5CEE7004A6B
      BD00526BA50000000000000000000000000000000000000000005294BD0042A5
      EF005ABDFF005ABDFF0052B5F7004AB5EF0052B5F70039738C00000000000000
      0000000000000000000000000000000000000000000000000000DE9C7300FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFF700FFFFF700D6BDBD00A56B
      5A00E79C5200E78C3100B56B4A00000000000000000000000000000000000000
      0000CE9C9C00FFDECE00FFCEBD00FFC6AD00FFBDA500F7AD9400000000000000
      00000000000000000000000000000000000000000000000000000000000042A5
      FF0042ADFF0042B5FF0042ADFF00319CFF002994FF001884FF00316BE7003163
      C60000000000000000000000000000000000000000000000000063849C002173
      A5004A94C6006BADD60063ADF7004A9CE700216BA50000000000000000000000
      0000000000000000000000000000000000000000000000000000E7AD7B00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00DEC6C600A56B
      5A00FFB55A00BD7B5A0000000000000000000000000000000000000000000000
      0000CE9C9C00FFDECE00FFCEBD00FFC6AD00FFBDA500F7AD9C00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000042A5FF0042ADFF0042B5FF0039ADFF003994F7001831B5003952DE000000
      0000000000000000000000000000000000000000000000000000000000002173
      A5006BADD6008CBDE70073BDE7005AADDE00316B7B0000000000000000000000
      0000000000000000000000000000000000000000000000000000E7AD7B00F7F7
      EF00F7F7EF00F7F7EF00F7F7EF00F7F7EF00F7F7EF00F7F7EF00D6BDBD00A56B
      5A00BD846B00000000000000000000000000000000000000000000000000CE9C
      9C00FFE7D600FFDECE00FFCEBD00FFC6AD00FFBDA500F7AD9C00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000042A5FF0042ADFF00000000000000000018109400394ADE000000
      0000000000000000000000000000000000000000000000000000000000000000
      00006BA5BD004A94B5004A8CAD0063849C000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000E7AD7B00D694
      6B00D6946B00D6946B00D6946B00D6946B00D6946B00D6946B00D6946B00A56B
      5A0000000000000000000000000000000000000000000000000000000000CE9C
      9C00CE9C9C00CE9C9C00CE9C9C00F7AD9C00F7AD9C0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000018189C00394ADE000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000063636B00525252000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000009C6B63009C6B
      63009C6B63009C6B63009C6B63009C6B63009C6B63009C6B63009C6B63009C6B
      63009C6B63009C6B6300A56B6B00000000000000000000000000000000000000
      00000000000063636B0094949400A5A5A5003131310000000000000000000000
      00000000000000000000000000000000000000000000000000000000000000FF
      FF0000FFFF0000FFFF0000FFFF000084840000848400000000000000000000FF
      FF0000FFFF000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000848484000084840000848400008484008484
      84000000000000000000000000000000000000000000000000009C736B00FFE7
      C600F7DEB500F7D6AD00F7D69C00F7CE9400EFC68400EFC68400EFC68400EFC6
      8400EFC68400EFC684009C6B6300000000000000000000000000000000000000
      000063636B0094949400D6D6D600DEDEDE00ADADAD0052525200000000000000
      0000000000000000000000000000000000000000000000848400008484000000
      000000000000000000000000000000000000000000000000000000FFFF0000FF
      FF0000FFFF000084840000000000000000000000000000000000848484000084
      840000848400008484008484840000848400C6FFFF0084FFFF0084FFFF000084
      84000000000000000000000000000000000000000000000000009C736B00F7E7
      C600F7DEBD00F7D6AD00EFCEA500EFCE9C00EFC69400EFC68400EFBD7B00EFBD
      7B00EFBD7B00EFBD7B009C6B6300000000000000000000000000000000006363
      6B0094949400D6D6D600D6D6D600DEDEDE00DEDEDE00ADADAD00313131000000
      0000000000000000000000000000000000000000000000000000008484000084
      84000084840000848400008484000084840000FFFF0000FFFF0000FFFF000084
      840000FFFF0000FFFF0000FFFF0000000000000000000000000000848400C6FF
      FF0084FFFF0084FFFF0000848400848484000084840000848400008484008484
      84000084840084848400000000000000000000000000000000009C736B00F7E7
      D600FFEFCE00F7DEBD00FFDEB500F7D6AD00EFCE9C00EFC69400EFC68400EFBD
      7B00EFBD7B00EFBD7B009C6B6300000000000000000000000000636363008484
      8400D6D6D600D6D6D600D6D6D600DEDEDE00DEDEDE00E7E7DE00ADADAD005252
      5200000000000000000000000000000000000000000000848400008484000084
      84000084840000848400008484000084840000FFFF0000FFFF000084840000FF
      FF0000FFFF000084840000FFFF00000000000000000000000000848484000084
      8400008484000084840084848400000000000000000000848400C6C6C600C6C6
      C600C6C6C6000084840000000000000000000000000000000000A5737300FFF7
      DE00948C8C00948C8C00948C8C00948C8C00E7C69C00EFCE9C00EFC69400EFC6
      8400EFBD7B00EFBD7B009C6B6300000000000000000063636B007B7B7B00ADAD
      AD00BDBDBD00BDBDBD00CECECE00D6D6D600DEDEDE00DEDEDE00E7E7E700ADAD
      AD003131310000000000000000000000000000848400000000000000000000FF
      FF0000FFFF0000FFFF00008484000084840000FFFF0000FFFF000084840000FF
      FF00000000000084840000FFFF00000000000000000000000000000000000000
      000000000000000000000000000000000000000000000084840000C6C60000C6
      C60000C6C6000084840000000000000000000000000000000000A57B7300FFFF
      F700313129006B7394001029A50021213900D6B58C00F7D6AD00EFCE9C00EFC6
      9400EFC68400EFBD7B009C6B6300000000007B7B7B0063636B00A5A5AD00A5A5
      AD00B5ADBD00BDBDBD00C6C6C600BDBDBD00949494007B7B7B005A525200D6D6
      D600BDBDBD005252520000000000000000000084840000848400008484000084
      84000084840000848400008484000084840000FFFF00008484000084840000FF
      FF0000FFFF0000FFFF0000FFFF000000000000000000005A0000005A0000005A
      0000005A0000005A0000005A0000005A0000005A000000848400C6C6C600C6C6
      C600C6C6C60000848400005A0000005A00000000000000000000AD847B00FFFF
      F70031313900637BE7007B94FF0010219C00DEC69C00FFDEB500EFCEA500EFCE
      9C00EFC69400EFC684009C6B63000000000084848C0052526300293163002931
      520042426B0063637B00BDC6C600CECECE00B5B5B500949CA5009C9CA500DEDE
      DE00EFEFEF00B5B5B5004A424A00000000000000000000000000008484000084
      840000000000000000000000000000000000000000000084840000FFFF000084
      84000084840000FFFF00000000000000000000000000005A0000008400000084
      000000C6000000C6000000C6000000C6000000C600000084840000C6C60000C6
      C60000C6C6000084840000840000005A00000000000000000000B58C7B00FFFF
      FF0042424200524A4A005A524A00182994006373D600C6B59C00F7D6B500EFCE
      A500EFCE9C00EFC694009C6B63000000000094949C0073849C007394CE007B9C
      CE006B8CC600526BAD002931840021316300526B9C003973A500EFEFEF00EFEF
      EF00EFEFEF00F7F7F700A5A5A50052525200000000000000000000FFFF0000FF
      FF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF000084840000FF
      FF0000FFFF0000000000000000000000000000000000005A00000084000000C6
      000084FF840084FF840084FF8400424242004242420000848400FFFFFF0084FF
      FF0084FFFF000084840000840000005A00000000000000000000BD8C7B00FFFF
      FF00FFFFFF00F7EFE700F7E7D600F7E7D600637BE700425AE700E7CEBD00F7D6
      AD00EFCEA500EFCE9C009C6B63000000000094949C008494AD008CADDE008CAD
      DE0094B5E7008CA5D6006384C6005A73BD006B7BBD0018217300EFEFEF00EFEF
      EF00EFEFEF00F7F7F700EFEFEF00A5A5A5000000000000000000000000000000
      000000FFFF00C6C6C600C6C6C600C6C6C600C6C6C60000000000000000000000
      00000000000000000000000000000000000000000000005A000000C60000C6FF
      C600C6FFC60084FF840042424200C6C6C600C6C6C60000848400008484000084
      84000084840084FF840000C60000005A00000000000000000000C6947B00FFFF
      FF00948C8C00948C8C00948C8C00948C8C00EFE7CE00C6BDDE00EFD6C600F7D6
      B500F7D6AD00E7C69C0094736B0000000000000000000000000084A5DE00738C
      BD00182173001018420052B5DE004294C6006384C6008CA5D600EFEFEF00EFEF
      EF00EFEFEF00F7F7F700DEE7DE00A5A5A500000000000000000000848400C6C6
      C6000000000000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF000000
      00000000000000000000000000000000000000000000005A000000C60000C6FF
      C600C6FFC600C6FFC60042424200C6FFFF00C6C6C600C6C6C6004242420084FF
      840084FF840084FF840000C60000005A00000000000000000000CE9C8400FFFF
      FF0031312900A5A5A5005263AD0029314200D6CEBD00FFF7DE00FFEFCE00F7E7
      C600DECEAD00B5A58C00846B6300000000000000000000000000ADC6E7007BA5
      D6001821520021426B004A8CC600314A8C0084A5D600A5BDDE00EFEFEF00EFEF
      EF00F7F7F700F7F7F700A5A5A500000000000000000000000000000000000084
      840000848400FFFFFF00FFFFFF00FFFFFF000084840000848400008484000084
      84000084840000000000000000000000000000000000005A00000084000000C6
      0000C6FFC600C6FFC600C6FFC60042424200424242004242420084FF840084FF
      840084FF840000C6000000840000005A00000000000000000000CE9C8400FFFF
      FF0042424A007B94FF00426BFF0018297B00E7DEC600FFF7E700E7CEBD00A56B
      6B00A56B6B00A56B6B00A56B6B00000000000000000000000000000000006B73
      840052B5DE0052A5CE008CADDE00A5BDDE00DEDEDE00DEDEDE00EFEFEF00EFEF
      EF00DEDEDE009C9C9C0000000000000000000000000000000000000000000000
      0000008484000084840000FFFF0000FFFF0000FFFF0000FFFF0000FFFF000084
      84000000000000000000000000000000000000000000005A0000008400000084
      000000C60000C6FFC600C6FFC600C6FFC600C6FFC60084FF840084FF840084FF
      840000C600000084000000840000005A00000000000000000000D6A58400FFFF
      FF0029292900636B84008C8C9C000821A500BDC6F700FFFFF700D6B5AD00A56B
      6B00E79C4A00E78C3100A56B6B000000000000000000000000006B7384002139
      630052A5CE00849CBD00A5BDDE00A5BDDE008C8C8C0094949400EFEFEF00EFEF
      EF009C9C9C000000000000000000000000000000000000000000000000000000
      00000084840000FFFF0000FFFF0000FFFF0000FFFF0000FFFF00008484000084
      84000000000000000000000000000000000000000000005A0000005A0000005A
      0000005A0000005A0000005A0000005A0000005A0000005A0000005A0000005A
      0000005A0000005A0000005A0000005A00000000000000000000D6A58400FFFF
      FF00ADB5B50094949400949494008C9CC6004263FF009CB5FF00D6B5BD00A56B
      6B00F7AD5A00A56B6B000000000000000000000000006B73840021219C0052A5
      CE000000000000000000949494008C8C8C00F7F7F700E7E7DE00949494009494
      9400000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000D6A58400F7EF
      E700FFFFF700FFFFF700FFFFF700FFF7EF00CECEEF005A73EF00B5A5B500A56B
      6B00A56B6B0000000000000000000000000000000000BDB5EF001818AD000000
      0000000000000000000000000000949494009494940094949400949494000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000D6946B00D69C
      7B00D69C7B00D69C7B00CE947300C68C7300C68C7300C68C7300AD736B00A56B
      6B00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000F7F7F700DEDEDE00DEDEDE00FFFF
      FF00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000008C6363004242420000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000008484000000000000C6C6C600C6C6
      C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6
      C600C6C6C600C6C6C60000000000000000008C8C8C0063636B007B636300ADAD
      AD00FFFFFF000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00008C6363009C636300BD636300BD6B6B004242420000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000052638C00314A7B0031395A0000000000000000005A6B
      8C003163BD0031395A000000000000000000848400000000000000000000FFFF
      FF00FFFFFF00C6C6C600FFFFFF00FFFFFF00FFFFFF00FFFFFF00000000008484
      8400C6C6C600000000000000000000000000637B84004273C6008C7BA5007B63
      6300ADADAD00FFFFFF0000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000008C6363009C63
      6300C66B6B00D66B6B00D66B6B00C66B6B00424242009C6363009C6363009C63
      63009C6363009C6363009C6363000000000000000000000000006BADFF00639C
      FF00427BE700214A94005A94FF00427BEF00294A940021428400315ABD003163
      BD00396BD6003163C60031395A0000000000848400008484000084840000C6C6
      C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600000000008484
      84008484840000000000000000000000000052B5FF004AADFF004273C6008C7B
      A5007B636300ADADAD00FFFFFF00000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000009C636300D66B
      6B00D66B6B00D66B6B00CE6B6B00C66B6B0042424200C67B7B00DE8C8C00F794
      9400F7A5A500F7A5A5009C636300000000000000000000000000396BC6005284
      E700396BC60029529C00A5E7FF006BA5FF00315ABD00315ABD002952A5002142
      8C0021428C002952A500526B9C0000000000848400008484000000000000FFFF
      FF00FFFFFF00C6C6C600FFFFFF00FFFFFF00FFFFFF00FFFFFF0000000000FFFF
      FF00848484000000000000000000000000000000000052B5FF004AADFF004273
      C6008C7BA5007B636300ADADAD00FFFFFF000000000000000000000000000000
      00000000000000000000000000000000000000000000000000009C636300D66B
      6B00D66B6B00D6737300D6737300CE6B73004242420000940000009400000094
      000000940000F7A5A5009C63630000000000000000000000000063A5FF005A94
      FF00427BEF00315AAD004A84F7004A84F7003973E7003973E7003163C6002952
      AD001831630018294A00424A6B0000000000848400008484000084840000C6C6
      C600C6C6C60084848400C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6
      C600C6C6C600000000000000000000000000000000000000000052B5FF004AAD
      FF004273C6008C7BA500846B6B00EFEFEF00F7F7F700DEDEDE00D6D6D600D6D6
      D600EFEFEF00FFFFFF00000000000000000000000000000000009C636300D673
      7300D6737300DE737300DE737300D67373004242420000940000009400000094
      000000940000F7A5A5009C63630000000000000000000000000084C6FF0073AD
      FF004A84F700315ABD004A84FF004A84F700427BF700427BEF003163CE00295A
      B5001839730018294A000000000000000000848400008484000000000000FFFF
      FF00FFFFFF000000000000000000C6C6C600FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF0000000000000000000000000000000000000000000000000052B5
      FF004AADFF004273C6006B6B6B00737373008C6B6B009C636300C6949400A57B
      7B00635A5A00A5A5A500FFFFFF000000000000000000000000009C636300E77B
      7B00E77B7B00E77B7B00E7848400D67373004242420000940000008400000084
      000000840000F7A5A5009C636300000000000000000000000000396BC6005284
      E700396BC6002952AD00528CFF004A8CFF006BA5FF005A94FF00396BD600295A
      B50018316B0018294A000000000000000000848400008484000084840000C6C6
      C600C6C6C600C6C6C600FFFF0000FF00000084848400C6C6C600C6C6C600C6C6
      C600C6C6C6000000000000000000000000000000000000000000000000000000
      000052B5FF00BDBDBD00847B7B00DEAD9400FFEFBD00FFFFD600FFFFD600FFFF
      DE00F7EFCE00846363009C9C9C00FFFFFF0000000000000000009C636300F784
      8C00EF848400EF949400FFDEDE00DE8C8C004242420000840000008400000063
      000000630000F7A5A5009C63630000000000000000000000000094D6FF007BB5
      FF00528CFF00315ABD005294FF005A9CFF0094CEFF006BA5FF00396BD600295A
      B50018316300293952000000000000000000848400008484000000000000FFFF
      FF00FFFFFF00C6C6C600FFFFFF00FFFF0000FF000000C6C6C600FFFFFF00FFFF
      FF00FFFFFF000000000000000000000000000000000000000000000000000000
      000000000000D6D6D600E7B59400FFFFD600FFF7BD00FFFFD600FFFFE700FFFF
      EF00FFFFFF00FFF7E70063525200D6D6D60000000000000000009C636300F784
      8C00EF848400F79C9C00FFFFFF00DE8C8C0042424200FFCEAD00F7B58400F7B5
      8400F7B58400F7A5A5009C636300000000000000000000000000396BC6005284
      E700396BC600294A9C005A9CFF0063ADFF009CD6FF0063A5FF003163C6002952
      A50031395A00000000000000000000000000848400008484000084840000C6C6
      C600C6C6C600C6C6C600C6C6C600C6C6C600FFFF0000FF00000084848400C6C6
      C600C6C6C6000000000000000000000000000000000000000000000000000000
      000000000000C69C9C00FFEFBD00FFE7AD00FFF7C600FFFFDE00FFFFEF00FFFF
      FF00FFFFFF00FFFFDE00B59484009494940000000000000000009C636300F78C
      8C00F78C8C00F78C8C00F78C8C00DE7B840042424200FFCEAD00FFD6BD00FFD6
      BD00FFD6BD00F7A5A5009C6363000000000000000000000000009CDEFF007BBD
      FF00528CFF00315ABD00528CFF004A84FF004A7BDE00427BE700315ABD00294A
      940000000000000000000000000000000000848400008484000000000000FFFF
      FF00FFFFFF00C6C6C600FFFFFF00FFFFFF00FFFFFF00FFFF0000FF000000C6C6
      C600FFFFFF000000000000000000000000000000000000000000000000000000
      0000FFFFFF00D6AD9C00FFFFCE00FFDEAD00FFF7C600FFFFD600FFFFE700FFFF
      EF00FFFFEF00FFFFDE00EFE7BD006B6B6B0000000000000000009C636300F78C
      8C00F7949400F7949400F78C8C00E784840042424200FFCEAD00FFD6BD00FFD6
      BD00FFD6BD00F7A5A5009C636300000000000000000000000000000000000000
      000000000000000000006BADFF0073ADFF00295AB50021397300395284000000
      000000000000000000000000000000000000848400008484000084840000C6C6
      C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600FFFF0000FF00
      0000848484000000000000000000000000000000000000000000000000000000
      000000000000E7BDA500FFFFC600FFD6A500FFEFB500FFFFCE00FFFFDE00FFFF
      DE00FFFFDE00FFFFD600FFF7C6007B7B7B0000000000000000009C636300F78C
      8C00FF949400FF949400F7949400E78C8C0042424200FFCEAD00FFD6BD00FFD6
      BD00FFD6BD00F7A5A5009C636300000000000000000000000000000000000000
      000000000000526B9C009CDEFF006BA5FF00294A9400394A6B00000000000000
      000000000000000000000000000000000000848400008484000000000000FFFF
      FF00FFFFFF00C6C6C600FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      0000FF0000008484840000000000000000000000000000000000000000000000
      000000000000CEA59C00FFFFD600FFE7BD00FFDEAD00FFF7BD00FFFFC600FFFF
      CE00FFFFCE00FFFFCE00DEB59400B5B5B50000000000000000009C636300F78C
      8C00FF949400FF9C9C00FF949400E78C8C0042424200FFCEAD00FFD6BD00FFD6
      BD00FFD6BD00F7A5A5009C636300000000000000000000000000000000000000
      0000000000007BA5DE009CDEFF004A84F7002139630000000000000000000000
      000000000000000000000000000000000000848400008484000084840000C6C6
      C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6
      C600FFFF0000FF00000084848400000000000000000000000000000000000000
      000000000000E7D6D600FFF7C600FFFFFF00FFFFEF00FFDEAD00FFE7AD00FFE7
      B500FFE7B500FFEFBD009C6B6B00EFEFEF0000000000000000009C6363009C63
      6300E79C9C00FF949400FF9C9C00EF8C940042424200FFCEAD00FFD6BD00FFD6
      BD00FFD6BD00F7A5A5009C636300000000000000000000000000000000000000
      0000000000007BA5DE0094CEFF004A84F700213963004A525A00000000000000
      0000000000000000000000000000000000000000000084840000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000C6C6C600FFFF0000FF000000000000000000000000000000000000000000
      00000000000000000000BD8C8C00FFFFFF00FFFFEF00FFFFD600FFDEAD00FFF7
      C600FFE7BD00C68C8400DEDEDE00000000000000000000000000000000000000
      00009C636300B5737300D6848400DE8C8C00424242009C6363009C6363009C63
      63009C6363009C6363009C636300000000000000000000000000000000000000
      0000000000009CDEFF0063A5FF005294FF003963CE00294A9C00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000FFFFFF00FFFF0000000000000000000000000000000000000000
      0000000000000000000000000000C6A5A500DEBD9C00FFEFB500FFE7AD00EFC6
      A500B5848400EFEFEF0000000000000000000000000000000000000000000000
      000000000000000000009C6363009C6363004242420000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000007BA5DE004A84F7003963C600526B9C00000000000000
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
      000000000000C6C6C6008484840000000000000000000000000000FFFF0000FF
      FF0000000000C6C6C600C6C6C600000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FF000000FF0000000000
      0000FF000000000000000000000000000000F7F7F700BDBDBD00A5A5A500A5A5
      A500A5A5A500ADADAD00CECECE00EFEFEF00FFFFFF0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000008484
      000000000000C6C6C600C6C6C60084848400000000000000000000FFFF0000FF
      FF00C6C6C600C6C6C600C6C6C600000000000000000000000000FFFFFF00FFFF
      FF00FFFFFF000000000000000000FFFFFF000000000000000000FFFFFF00FFFF
      FF00FFFFFF00000000000000000000000000C6C6C600C6C6C600C6C6C600C6C6
      C600C6C6C600C6C6C600C6C6C600C6C6C600FF00000000000000FFFFFF00FFFF
      FF0084848400000000000000000000000000BD522900D64A2100EF5A3900FF63
      5200FF635200D64A2100A539180063524A009C9C9C00949494007B7B7B007373
      7300737373007B7B7B00BDBDBD00FFFFFF00000000000000000084840000C6C6
      C600C6C6C600000000000000000000000000848484000000000000FFFF0000FF
      FF00C6C6C600FFFFFF00C6C6C600000000000000000000000000000000000000
      000000000000FFFFFF0000000000FFFFFF0000000000FFFFFF00000000000000
      000000000000000000000000000000000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0000000000FFFFFF00FFFFFF008484
      840000000000000000000000000000000000C6421000EF5A4200FF735A00FF7B
      6300CE5A2900D6845200FF6B5A00EF5A420042B542002994290052C652004ABD
      4A0039B5390021AD21005A635A00F7F7F7000000000084840000C6C6C600C6C6
      C600C6C6C60084840000C6C6C600848400000000000084848400000000000000
      0000000000000000000000000000000000000000000000000000FFFFFF00FFFF
      FF00FFFFFF0000000000FFFFFF00FFFFFF00FFFFFF0000000000FFFFFF00FFFF
      FF00FFFFFF00000000000000000000000000FFFFFF00FF000000FFFFFF00FF00
      0000FF000000FF000000FF000000FF0000000000000000000000FFFFFF00C6C6
      C600C6C6C600C6C6C6000000000000000000D6947B00FF6B5A00FF846B00EF84
      5A00FFDEA500FFDEA500FF846B00FF63520063CE6300BDDEAD00429C42006BCE
      6B0052C6520039B539006B7B6B00FFFFFF000000000000000000848400008484
      0000C6C6C600C6C6C600C6C6C600C6C6C6008484000000000000848484000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000FFFFFF00FFFFFF00FFFFFF0000000000000000000000
      000000000000000000000000000000000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF0000000000000000000000000000000000FFFF
      FF00FFFFFF00C6C6C600000000000000000000000000CE633900FF8C6B00EF9C
      7B00BD8C8400FFBD9400FF8C7300BD4A180084DE8400FFFFFF00FFFFFF0063C6
      63006BCE6B00299C2900DEDEDE000000000000000000FFFF0000000000008484
      000084840000C6C6C60000FF000000FF00008484000084840000000000008484
      840000000000C6C6C600C6C6C600000000000000000000000000FFFFFF00FFFF
      FF0000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0000000000FFFF
      FF00FFFFFF00000000000000000000000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00000000000000000000000000FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00C6C6C60000000000EFEFEF004A4A4A00000000000821
      7B001029940000107B00635A5A00319C310094E79400DED6BD00428CAD009CB5
      A50042A54200D6D6D600000000000000000000000000FFFF0000848400000000
      00008484000084840000848400008484000084840000C6C6C600848400000000
      000084848400C6C6C600C6C6C600000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFF00FF000000FFFFFF00FF00
      0000FF000000FF000000FF000000000000000000000000000000FFFFFF00FFFF
      FF00FFFFFF00FFFFFF000000000000000000101010001010100008296B00184A
      AD00184AB500184AAD0008186B00BDBDBD0094B5C6002994F7002994F7002994
      EF00105A8C00A5A5A500FFFFFF00000000000000000000000000FFFF000000FF
      000000000000848400008484000084840000C6C6C600C6C6C600C6C6C6008484
      0000000000008484840000000000000000000000000000000000FFFFFF00FFFF
      FF00FFFFFF0000000000FFFFFF00FFFFFF00FFFFFF0000000000FFFFFF00FFFF
      FF00FFFFFF00000000000000000000000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00000000000000000000000000000000000000
      0000FFFFFF00FFFFFF00000000000000000018181800212121002163C600216B
      CE00216BD6002163CE0010429C00A5A5A500298CDE0039A5FF0039A5FF0039A5
      FF00319CFF005A636300EFEFEF0000000000000000000000000000000000FFFF
      000000FF0000000000008484000084840000C6C6C600C6C6C600C6C6C60000FF
      0000848400000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00000000000000000000000000000000000000
      000000000000FFFFFF00000000000000000029292900313131002163B500298C
      F7003194FF00298CF7001863C600A5A5A50042ADFF004AB5FF004AB5FF004AAD
      FF0042ADFF00185A8400DEDEDE00000000000000000000000000000000000000
      0000FFFF000000FF0000000000008484000084840000C6C6C600C6C6C6008484
      0000000000000000000000000000000000000000000000000000FFFFFF00FFFF
      FF00FFFFFF0000000000FFFFFF00FFFFFF00FFFFFF0000000000FFFFFF00FFFF
      FF00FFFFFF00000000000000000000000000FFFFFF00FF000000FFFFFF00FF00
      0000FF000000FF000000FF000000FF0000000000000000000000000000000000
      0000000000000000000000000000000000001818180042424200292929001042
      9C00216BDE003194F700105AA500D6D6D60052B5FF0052BDFF0052BDFF0052BD
      FF004AB5FF00187BBD00D6D6D600000000000000000000000000C6C6C6000000
      000000000000FFFF000000FF0000000000008484000000FF0000848400000000
      0000FFFF00008484840000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0000000000000000000000
      000000000000000000000000000000000000DEDEDE0052525200636363009C9C
      9C00737373002929290039394200FFFFFF001884BD00298CBD00318CBD001884
      CE002184CE0010638C00EFEFEF000000000000000000C6C6C600C6C6C600C6C6
      C6000000000000000000FFFF000000FF00000000000084840000000000008484
      0000FFFF00008484840000000000000000000000000000000000FFFFFF00FFFF
      FF00FFFFFF0000000000FFFFFF00FFFFFF00FFFFFF0000000000FFFFFF000000
      000000000000000000000000000000000000FFFFFF00FF000000FF000000FF00
      0000FF000000FF000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00C6C6C6000000
      00000000000000000000000000000000000000000000BDBDBD00636363009494
      94006B6B6B0029292900F7F7F700000000007BADCE0063ADDE0084C6E7009CCE
      E7003994C600B5B5BD00FFFFFF00000000000000000000000000C6C6C6000000
      0000000000000000000000000000FFFF000000FF00000000000084840000FFFF
      0000848484000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000FFFF
      FF00FFFFFF00000000000000000000000000FFFFFF00FF000000FF000000FF00
      0000FF000000FF000000FFFFFF00FFFFFF00FFFFFF00C6C6C600000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000007BADCE005AA5C600398C
      BD00C6D6DE00FFFFFF0000000000000000000000000000000000000000000000
      0000C6C6C600C6C6C6000000000000000000FFFF000084840000FFFF00008484
      8400000000000000000000000000000000000000000000000000FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF0000000000000000000000000000000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00C6C6C60000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000C6C6C600C6C6C600000000000000000000000000FFFF0000848484000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000000000000000000000000000
      000000000000000000000000000000000000424D3E000000000000003E000000
      2800000040000000600000000100010000000000000300000000000000000000
      000000000000000000000000FFFFFF0000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000C000FE7FFFFF0000C000FC3F80010000
      C000FC3F80010000C000C43F80010000C001803F80010000C001800180010000
      C001F00080010000C001800180010000C001803F80010000C001C43F80010000
      C001FC3F80010000C001FC3F80010000C001E43F80010000C003C03380010000
      C007C00380010000C00FC007FFFF0000C001FDC7F0FFFFFFC001F003E00FFFFF
      8001C001C003C00FC00100018001C00FC00100010001C00FC00100010001E01F
      C00100010001F03FC00180010001F07FC001C0030001E03FC001E0070001E03F
      C001F00F8003C03FC001F03FC007C03FC001F03FE00FC07FC003F03FF01FE07F
      C007E03FF99FF0FFC00FE07FFF9FFFFFFCFFFFFFFFFFC001F87FC003FE0FC001
      F03F8001C00FC001E01F8001C003C001C00F0001C183C00180070001FF83C001
      000300018000C001000180018000C001000080038000C0010000800F8000C001
      C000800F8000C001C001C0078000C001E003E0078000C001C007E0078000C003
      8C0FF81FFFFFC0079E1FFFFFFFFFC00F9FFF0FFFFE7FFFFF000107FFF07FFC63
      000103FFC001C001000101FFC001C001000180FFC001C0010001C003C001C003
      0001E001C001C0030001F000C001C0030001F800C001C0070001F800C001C00F
      0001F000C001FC1F0001F800C001F83F0001F800C001F87F0001F800C001F83F
      0001FC01F001F83FFFF8FE03FC7FFC3FFFFFF7FFC003FFFFFFFFE1C18003FE03
      007FC08080030007000080408003000700000039800300030000801F80030003
      800180098003000100038001800300010001C003800300030001E00380030001
      0001F00780030001000188038003000300018C038003001F81018E078007001F
      FF83F30F800F003FFFFFF39F801F007F00000000000000000000000000000000
      000000000000}
  end
  object IBSQL3: TIBSQL
    Database = dmGeneral.IBDatabase1
    Transaction = IBTControlCobro
    Left = 168
    Top = 112
  end
  object DSTiposId: TDataSource
    AutoEdit = False
    DataSet = IBDSTiposId
    Left = 438
    Top = 84
  end
  object IBDSTiposId: TIBDataSet
    Database = dmGeneral.IBDatabase1
    Transaction = IBTControlCobro
    SelectSQL.Strings = (
      'select * from "gen$tiposidentificacion"')
    Left = 462
    Top = 84
  end
  object IBDSTiposCaptacion: TIBDataSet
    Database = dmGeneral.IBDatabase1
    Transaction = IBTControlCobro
    SelectSQL.Strings = (
      'select * from "cap$tipocaptacion"')
    Left = 408
    Top = 86
  end
  object DSTiposCaptacion: TDataSource
    AutoEdit = False
    DataSet = IBDSTiposCaptacion
    Left = 382
    Top = 86
  end
  object IBSQL4: TIBSQL
    Database = dmGeneral.IBDatabase1
    Transaction = IBTControlCobro
    Left = 144
    Top = 112
  end
  object PopupUtilidades: TPopupMenu
    Images = ImageList
    Left = 608
    Top = 16
    object Informacin1: TMenuItem
      Bitmap.Data = {
        36050000424D3605000000000000360400002800000010000000100000000100
        08000000000000010000D30E0000D30E00000001000000010000107B10001084
        100021731800189C180018A51800315A210021A521004A42290039632900396B
        2900298C290031942900299C2900319C290029AD2900425A310042633100426B
        3100318C3100398C3100319C3100399C310031A5310031AD310031B531004A6B
        39004284390039943900399C390039AD390039B539005A524200526342005273
        42004A8C42004A9C42004AA5420042BD4200636B4A0018734A00528C4A0052A5
        4A004ABD4A0039525200296B5200637B520052B5520052BD520052C65200736B
        5A005AC65A007B736300428463006B84630063A5630063BD630063C6630063CE
        6300315A6B0073B56B006BC66B006BCE6B00426B730073AD730073CE730073D6
        7300316B7B0094B57B0084BD7B008CBD7B007BCE7B007BD67B00296B8400316B
        8400948C840084B5840039738C009CB58C008CBD8C0039739400216B9C005A84
        9C0063849C00216BA5002173A5002173AD00297BAD003984AD00428CAD004A8C
        AD00107BB500217BB500428CB5004A94B500217BBD004294BD005294BD00529C
        BD006BA5BD00D6E7BD00187BC6002184C6002984C600298CC600318CC600428C
        C6003994C6004294C6004A94C60063A5C6006BA5C600BDC6C600BDCEC6002184
        CE00218CCE00298CCE00398CCE002994CE00E7DECE00D6E7CE006BADD6006BB5
        D6003194DE005AADDE0063ADDE00218CE700298CE700319CE7004A9CE70073BD
        E7008CBDE7008CC6E7009CCEE7002994EF0042A5EF004AB5EF007BBDEF008CC6
        EF00F7FFEF002994F700319CF700399CF70042A5F70063ADF70052B5F700FF00
        FF003194FF00319CFF00399CFF0039A5FF0042A5FF0042ADFF004AADFF004AB5
        FF0052B5FF0052BDFF005ABDFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
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
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00919191919191
        919191919191919191919191919191919191919191919191919191910103161D
        1D000B021F3191919191919106172A301C452F2502079191919191910C2A3D3C
        8A8A38391619919191919191912A40299D9D3C40149191919191919191912757
        5E58371C91919191919191919191647D7E7D2C91919191919191919191569494
        94947E2B91919191919191919165969696968D3A91919191919191916E8E999A
        9B9A984F919191919191919160869C9C9087904C919191919191919152546C78
        8F805391919191919191919191547882817B429191919191919191919191625D
        5952919191919191919191919191919191919191919191919191}
      Caption = 'Informaci'#243'n'
      ImageIndex = 15
      OnClick = Informacin1Click
    end
    object Garantas1: TMenuItem
      Caption = 'Garant'#237'as'
      ImageIndex = 14
      OnClick = Garantas1Click
    end
    object Liquidacin1: TMenuItem
      Caption = 'Liquidaci'#243'n'
      ImageIndex = 10
      OnClick = Liquidacin1Click
    end
    object CartasdeCobro1: TMenuItem
      Caption = 'Carta de Cobro'
      OnClick = CartasdeCobro1Click
    end
    object PrimerAviso: TMenuItem
      Caption = 'Carta de Cobro Primer Aviso'
      ImageIndex = 8
      OnClick = PrimerAvisoClick
    end
    object SegundoAviso: TMenuItem
      Caption = 'Carta de Cobro Segundo Aviso'
      OnClick = SegundoAvisoClick
    end
    object Costas1: TMenuItem
      Caption = 'Costas'
      ImageIndex = 17
      OnClick = Costas1Click
    end
    object RegistrodeCartas1: TMenuItem
      Caption = 'Registro de Cartas'
      Visible = False
      OnClick = RegistrodeCartas1Click
    end
    object MasivoCartas1: TMenuItem
      Caption = 'Masivo Cartas Primer Aviso'
      OnClick = MasivoCartas1Click
    end
    object MasivoCartasSegundoAviso1: TMenuItem
      Caption = 'Masivo Cartas Segundo Aviso'
    end
    object Certificacin1: TMenuItem
      Caption = 'Certificaci'#243'n'
      OnClick = Certificacin1Click
    end
    object EnviarSMS1: TMenuItem
      Caption = 'Enviar SMS'
      OnClick = EnviarSMS1Click
    end
  end
  object PopupExtractos: TPopupMenu
    Images = ImageList
    Left = 632
    Top = 16
    object Captaciones1: TMenuItem
      Caption = 'Captaciones'
      ImageIndex = 2
      Visible = False
      OnClick = Captaciones1Click
    end
    object Colocaciones1: TMenuItem
      Caption = 'Colocaciones'
      ImageIndex = 4
      OnClick = Colocaciones1Click
    end
  end
  object PopupMantenimientos: TPopupMenu
    Images = ImageList
    Left = 656
    Top = 16
    object Personas1: TMenuItem
      Caption = 'Personas'
      ImageIndex = 0
      OnClick = Personas1Click
    end
    object Compromisos1: TMenuItem
      Caption = 'Cambiar Compromiso'
      OnClick = Compromisos1Click
    end
    object EditarCompromiso1: TMenuItem
      Caption = 'Editar Compromiso'
      OnClick = EditarCompromiso1Click
    end
    object AcuerdosdePago1: TMenuItem
      Caption = 'Acuerdos de Pago'
      OnClick = AcuerdosdePago1Click
    end
  end
  object PopupInformes: TPopupMenu
    Images = ImageList
    Left = 680
    Top = 16
    object PorMora1: TMenuItem
      Caption = 'Por Mora'
      ImageIndex = 11
      OnClick = PorMora1Click
    end
    object PorAportes1: TMenuItem
      Caption = 'Por Aportes'
      ImageIndex = 12
      Visible = False
      OnClick = PorAportes1Click
    end
  end
  object frCompositeReport1: TfrCompositeReport
    InitialZoom = pzDefault
    PreviewButtons = [pbZoom, pbLoad, pbSave, pbPrint, pbFind, pbHelp, pbExit]
    RebuildPrinter = False
    DoublePassReport = False
    Left = 144
    Top = 160
    ReportForm = {19000000}
  end
  object Rcostas: TprTxReport
    Values = <
      item
        Name = 'PCostas'
        AggFunction = prafSum
        Formula = 'CDpagadas.valor_costa'
        ResetOn = rvtReport
        CalcOn = cvtDataSetNext
        DataSetName = 'CDpagadas'
      end
      item
        Name = 'Phonorarios'
        AggFunction = prafSum
        Formula = 'CDpagadas.valor_honorario'
        ResetOn = rvtReport
        CalcOn = cvtDataSetNext
        DataSetName = 'CDpagadas'
      end
      item
        Name = 'Potros'
        AggFunction = prafSum
        Formula = 'CDpagadas.valor_otro'
        ResetOn = rvtReport
        CalcOn = cvtDataSetNext
        DataSetName = 'CDpagadas'
      end
      item
        Name = 'CCostas'
        AggFunction = prafSum
        Formula = 'CDcargada.valor_costa'
        ResetOn = rvtReport
        CalcOn = cvtDataSetNext
        DataSetName = 'CDcargada'
      end
      item
        Name = 'Chonorarios'
        AggFunction = prafSum
        Formula = 'CDcargada.valor_honorario'
        ResetOn = rvtReport
        CalcOn = cvtDataSetNext
        DataSetName = 'CDcargada'
      end
      item
        Name = 'Cotros'
        AggFunction = prafSum
        Formula = 'CDcargada.valor_otro'
        ResetOn = rvtReport
        CalcOn = cvtDataSetNext
        DataSetName = 'CDcargada'
      end>
    Variables = <
      item
        Name = 'empresa'
        ValueType = 'prvvtString'
        Value = ''
      end
      item
        Name = 'nit'
        ValueType = 'prvvtString'
        Value = ''
      end
      item
        Name = 'empleado'
        ValueType = 'prvvtString'
        Value = ''
      end
      item
        Name = 'colocacion'
        ValueType = 'prvvtString'
        Value = ''
      end>
    Left = 120
    Top = 200
    SystemInfo = (
      'OS: WIN32_NT 5.1.2600 Service Pack 3'
      ''
      'PageSize: 4096'
      'ActiveProcessorMask: $1000'
      'NumberOfProcessors: 1'
      'ProcessorType: 586'
      ''
      'Compiler version: Delphi6'
      'PReport version: 1.9.4')
    object prTxPage1: TprTxPage
      PageType = tptPage
      LineNum = 60
      ColNum = 132
      object prTxHTitleBand1: TprTxHTitleBand
        Height = 5
        UseVerticalBands = False
        object prTxMemoObj1: TprTxMemoObj
          dRec.DefVersion = 0
          dRec.Versions = <
            item
              Visible = True
              Memo.Strings = (
                '[empresa] Nit. [nit]')
              DeleteEmptyLinesAtEnd = False
              DeleteEmptyLines = False
              CanResizeX = False
              CanResizeY = False
              hAlign = prhLeft
              vAlign = prvTop
              DefaultFont = False
              WordWrap = False
            end>
          dRec.Left = 0
          dRec.Top = 0
          dRec.Right = 55
          dRec.Bottom = 1
          Visible = False
        end
        object prTxMemoObj2: TprTxMemoObj
          dRec.DefVersion = 0
          dRec.Versions = <
            item
              Visible = True
              Memo.Strings = (
                
                  'Descripci'#243'n : RELACION DE COSTAS PAGADAS POR COLOCACION No. [col' +
                  'ocacion]')
              DeleteEmptyLinesAtEnd = False
              DeleteEmptyLines = False
              CanResizeX = False
              CanResizeY = False
              hAlign = prhLeft
              vAlign = prvTop
              DefaultFont = False
              WordWrap = False
            end>
          dRec.Left = 0
          dRec.Top = 1
          dRec.Right = 73
          dRec.Bottom = 2
          Visible = False
        end
        object prTxMemoObj3: TprTxMemoObj
          dRec.DefVersion = 0
          dRec.Versions = <
            item
              Visible = True
              Memo.Strings = (
                'FECHA DE REALIZACION : [:<d>StartDateTime]')
              DeleteEmptyLinesAtEnd = False
              DeleteEmptyLines = False
              CanResizeX = False
              CanResizeY = False
              hAlign = prhLeft
              vAlign = prvTop
              DefaultFont = False
              WordWrap = False
            end>
          dRec.Left = 0
          dRec.Top = 2
          dRec.Right = 51
          dRec.Bottom = 3
          Visible = False
        end
        object prTxMemoObj4: TprTxMemoObj
          dRec.DefVersion = 0
          dRec.Versions = <
            item
              Visible = True
              Memo.Strings = (
                'REALIZO : [empleado]')
              DeleteEmptyLinesAtEnd = False
              DeleteEmptyLines = False
              CanResizeX = False
              CanResizeY = False
              hAlign = prhLeft
              vAlign = prvTop
              DefaultFont = False
              WordWrap = False
            end>
          dRec.Left = 0
          dRec.Top = 3
          dRec.Right = 59
          dRec.Bottom = 4
          Visible = False
        end
      end
      object prTxHDetailHeaderBand1: TprTxHDetailHeaderBand
        Height = 3
        UseVerticalBands = False
        DetailBand = Rcostas.prTxHDetailBand1
        ColCount = 0
        ColDirection = prcdTopBottomLeftRight
        ReprintOnEachPage = False
        LinkToDetail = False
        object prTxMemoObj5: TprTxMemoObj
          dRec.DefVersion = 0
          dRec.Versions = <
            item
              Visible = True
              Memo.Strings = (
                'RELACION DE COSTAS PAGADAS')
              DeleteEmptyLinesAtEnd = False
              DeleteEmptyLines = False
              CanResizeX = False
              CanResizeY = False
              hAlign = prhLeft
              vAlign = prvTop
              DefaultFont = False
              WordWrap = False
            end>
          dRec.Left = 0
          dRec.Top = 0
          dRec.Right = 27
          dRec.Bottom = 1
          Visible = False
        end
        object prTxMemoObj6: TprTxMemoObj
          dRec.DefVersion = 0
          dRec.Versions = <
            item
              Visible = True
              Memo.Strings = (
                'FECHA')
              DeleteEmptyLinesAtEnd = False
              DeleteEmptyLines = False
              CanResizeX = False
              CanResizeY = False
              hAlign = prhLeft
              vAlign = prvTop
              DefaultFont = False
              WordWrap = False
            end>
          dRec.Left = 0
          dRec.Top = 1
          dRec.Right = 10
          dRec.Bottom = 2
          Visible = False
        end
        object prTxMemoObj7: TprTxMemoObj
          dRec.DefVersion = 0
          dRec.Versions = <
            item
              Visible = True
              Memo.Strings = (
                'VALOR COSTAS')
              DeleteEmptyLinesAtEnd = False
              DeleteEmptyLines = False
              CanResizeX = False
              CanResizeY = False
              hAlign = prhRight
              vAlign = prvTop
              DefaultFont = False
              WordWrap = False
            end>
          dRec.Left = 11
          dRec.Top = 1
          dRec.Right = 26
          dRec.Bottom = 2
          Visible = False
        end
        object prTxMemoObj8: TprTxMemoObj
          dRec.DefVersion = 0
          dRec.Versions = <
            item
              Visible = True
              Memo.Strings = (
                'VALOR HONORARIOS')
              DeleteEmptyLinesAtEnd = False
              DeleteEmptyLines = False
              CanResizeX = False
              CanResizeY = False
              hAlign = prhRight
              vAlign = prvTop
              DefaultFont = False
              WordWrap = False
            end>
          dRec.Left = 27
          dRec.Top = 1
          dRec.Right = 44
          dRec.Bottom = 2
          Visible = False
        end
        object prTxMemoObj9: TprTxMemoObj
          dRec.DefVersion = 0
          dRec.Versions = <
            item
              Visible = True
              Memo.Strings = (
                'VALOR OTROS')
              DeleteEmptyLinesAtEnd = False
              DeleteEmptyLines = False
              CanResizeX = False
              CanResizeY = False
              hAlign = prhRight
              vAlign = prvTop
              DefaultFont = False
              WordWrap = False
            end>
          dRec.Left = 45
          dRec.Top = 1
          dRec.Right = 60
          dRec.Bottom = 2
          Visible = False
        end
        object prTxMemoObj10: TprTxMemoObj
          dRec.DefVersion = 0
          dRec.Versions = <
            item
              Visible = True
              Memo.Strings = (
                'DESCRIPCION')
              DeleteEmptyLinesAtEnd = False
              DeleteEmptyLines = False
              CanResizeX = False
              CanResizeY = False
              hAlign = prhLeft
              vAlign = prvTop
              DefaultFont = False
              WordWrap = False
            end>
          dRec.Left = 62
          dRec.Top = 1
          dRec.Right = 91
          dRec.Bottom = 2
          Visible = False
        end
      end
      object prTxHDetailBand1: TprTxHDetailBand
        Height = 1
        UseVerticalBands = False
        DataSetName = 'CDpagadas'
        ColCount = 0
        ColDirection = prcdTopBottomLeftRight
        Bands = (
          'prTxHDetailHeaderBand1'
          'prTxHDetailFooterBand1')
        object prTxMemoObj11: TprTxMemoObj
          dRec.DefVersion = 0
          dRec.Versions = <
            item
              Visible = True
              Memo.Strings = (
                '[:<d>CDpagadas.fecha]')
              DeleteEmptyLinesAtEnd = False
              DeleteEmptyLines = False
              CanResizeX = False
              CanResizeY = False
              hAlign = prhLeft
              vAlign = prvTop
              DefaultFont = False
              WordWrap = False
            end>
          dRec.Left = 0
          dRec.Top = 0
          dRec.Right = 10
          dRec.Bottom = 1
          Visible = False
        end
        object prTxMemoObj12: TprTxMemoObj
          dRec.DefVersion = 0
          dRec.Versions = <
            item
              Visible = True
              Memo.Strings = (
                '[:<#,#0>CDpagadas.valor_costa]')
              DeleteEmptyLinesAtEnd = False
              DeleteEmptyLines = False
              CanResizeX = False
              CanResizeY = False
              hAlign = prhRight
              vAlign = prvTop
              DefaultFont = False
              WordWrap = False
            end>
          dRec.Left = 11
          dRec.Top = 0
          dRec.Right = 26
          dRec.Bottom = 1
          Visible = False
        end
        object prTxMemoObj13: TprTxMemoObj
          dRec.DefVersion = 0
          dRec.Versions = <
            item
              Visible = True
              Memo.Strings = (
                '[:<#,#0>CDpagadas.valor_honorario]')
              DeleteEmptyLinesAtEnd = False
              DeleteEmptyLines = False
              CanResizeX = False
              CanResizeY = False
              hAlign = prhRight
              vAlign = prvTop
              DefaultFont = False
              WordWrap = False
            end>
          dRec.Left = 27
          dRec.Top = 0
          dRec.Right = 44
          dRec.Bottom = 1
          Visible = False
        end
        object prTxMemoObj14: TprTxMemoObj
          dRec.DefVersion = 0
          dRec.Versions = <
            item
              Visible = True
              Memo.Strings = (
                '[:<#,#0>CDpagadas.valor_otro]')
              DeleteEmptyLinesAtEnd = False
              DeleteEmptyLines = False
              CanResizeX = False
              CanResizeY = False
              hAlign = prhRight
              vAlign = prvTop
              DefaultFont = False
              WordWrap = False
            end>
          dRec.Left = 45
          dRec.Top = 0
          dRec.Right = 60
          dRec.Bottom = 1
          Visible = False
        end
        object prTxMemoObj15: TprTxMemoObj
          dRec.DefVersion = 0
          dRec.Versions = <
            item
              Visible = True
              Memo.Strings = (
                '[CDpagadas.descripcion]')
              DeleteEmptyLinesAtEnd = False
              DeleteEmptyLines = False
              CanResizeX = False
              CanResizeY = False
              hAlign = prhLeft
              vAlign = prvTop
              DefaultFont = False
              WordWrap = False
            end>
          dRec.Left = 62
          dRec.Top = 0
          dRec.Right = 125
          dRec.Bottom = 1
          Visible = False
        end
        object prTxMemoObj18: TprTxMemoObj
          dRec.DefVersion = 0
          dRec.Versions = <
            item
              Visible = True
              Memo.Strings = (
                '[:<#,#0>Phonorarios]')
              DeleteEmptyLinesAtEnd = False
              DeleteEmptyLines = False
              CanResizeX = False
              CanResizeY = False
              hAlign = prhRight
              vAlign = prvTop
              DefaultFont = False
              WordWrap = False
            end>
          dRec.Left = 27
          dRec.Top = 1
          dRec.Right = 44
          dRec.Bottom = 2
          Visible = False
        end
        object prTxMemoObj19: TprTxMemoObj
          dRec.DefVersion = 0
          dRec.Versions = <
            item
              Visible = True
              Memo.Strings = (
                '[:<#,#0>Potros]')
              DeleteEmptyLinesAtEnd = False
              DeleteEmptyLines = False
              CanResizeX = False
              CanResizeY = False
              hAlign = prhRight
              vAlign = prvTop
              DefaultFont = False
              WordWrap = False
            end>
          dRec.Left = 45
          dRec.Top = 1
          dRec.Right = 60
          dRec.Bottom = 2
          Visible = False
        end
      end
      object prTxHDetailFooterBand1: TprTxHDetailFooterBand
        Height = 2
        UseVerticalBands = False
        DetailBand = Rcostas.prTxHDetailBand1
        ColCount = 0
        ColDirection = prcdTopBottomLeftRight
        LinkToDetail = False
        object prTxMemoObj16: TprTxMemoObj
          dRec.DefVersion = 0
          dRec.Versions = <
            item
              Visible = True
              Memo.Strings = (
                'TOTALES:')
              DeleteEmptyLinesAtEnd = False
              DeleteEmptyLines = False
              CanResizeX = False
              CanResizeY = False
              hAlign = prhLeft
              vAlign = prvTop
              DefaultFont = False
              WordWrap = False
            end>
          dRec.Left = 0
          dRec.Top = 0
          dRec.Right = 10
          dRec.Bottom = 1
          Visible = False
        end
        object prTxMemoObj17: TprTxMemoObj
          dRec.DefVersion = 0
          dRec.Versions = <
            item
              Visible = True
              Memo.Strings = (
                '[:<#,#0>PCostas]')
              DeleteEmptyLinesAtEnd = False
              DeleteEmptyLines = False
              CanResizeX = False
              CanResizeY = False
              hAlign = prhRight
              vAlign = prvTop
              DefaultFont = False
              WordWrap = False
            end>
          dRec.Left = 11
          dRec.Top = 0
          dRec.Right = 26
          dRec.Bottom = 1
          Visible = False
        end
      end
      object prTxHDetailHeaderBand2: TprTxHDetailHeaderBand
        Height = 3
        UseVerticalBands = False
        DetailBand = Rcostas.prTxHDetailBand2
        ColCount = 0
        ColDirection = prcdTopBottomLeftRight
        ReprintOnEachPage = False
        LinkToDetail = False
        object prTxMemoObj20: TprTxMemoObj
          dRec.DefVersion = 0
          dRec.Versions = <
            item
              Visible = True
              Memo.Strings = (
                'RELACION DE COSTAS CARGADAS')
              DeleteEmptyLinesAtEnd = False
              DeleteEmptyLines = False
              CanResizeX = False
              CanResizeY = False
              hAlign = prhLeft
              vAlign = prvTop
              DefaultFont = False
              WordWrap = False
            end>
          dRec.Left = 0
          dRec.Top = 0
          dRec.Right = 28
          dRec.Bottom = 1
          Visible = False
        end
        object prTxMemoObj21: TprTxMemoObj
          dRec.DefVersion = 0
          dRec.Versions = <
            item
              Visible = True
              Memo.Strings = (
                'FECHA')
              DeleteEmptyLinesAtEnd = False
              DeleteEmptyLines = False
              CanResizeX = False
              CanResizeY = False
              hAlign = prhLeft
              vAlign = prvTop
              DefaultFont = False
              WordWrap = False
            end>
          dRec.Left = 0
          dRec.Top = 1
          dRec.Right = 10
          dRec.Bottom = 2
          Visible = False
        end
        object prTxMemoObj22: TprTxMemoObj
          dRec.DefVersion = 0
          dRec.Versions = <
            item
              Visible = True
              Memo.Strings = (
                'VALOR COSTAS')
              DeleteEmptyLinesAtEnd = False
              DeleteEmptyLines = False
              CanResizeX = False
              CanResizeY = False
              hAlign = prhRight
              vAlign = prvTop
              DefaultFont = False
              WordWrap = False
            end>
          dRec.Left = 11
          dRec.Top = 1
          dRec.Right = 26
          dRec.Bottom = 2
          Visible = False
        end
        object prTxMemoObj23: TprTxMemoObj
          dRec.DefVersion = 0
          dRec.Versions = <
            item
              Visible = True
              Memo.Strings = (
                'VALOR HONORARIOS')
              DeleteEmptyLinesAtEnd = False
              DeleteEmptyLines = False
              CanResizeX = False
              CanResizeY = False
              hAlign = prhRight
              vAlign = prvTop
              DefaultFont = False
              WordWrap = False
            end>
          dRec.Left = 27
          dRec.Top = 1
          dRec.Right = 44
          dRec.Bottom = 2
          Visible = False
        end
        object prTxMemoObj24: TprTxMemoObj
          dRec.DefVersion = 0
          dRec.Versions = <
            item
              Visible = True
              Memo.Strings = (
                'VALOR OTROS')
              DeleteEmptyLinesAtEnd = False
              DeleteEmptyLines = False
              CanResizeX = False
              CanResizeY = False
              hAlign = prhRight
              vAlign = prvTop
              DefaultFont = False
              WordWrap = False
            end>
          dRec.Left = 45
          dRec.Top = 1
          dRec.Right = 60
          dRec.Bottom = 2
          Visible = False
        end
        object prTxMemoObj25: TprTxMemoObj
          dRec.DefVersion = 0
          dRec.Versions = <
            item
              Visible = True
              Memo.Strings = (
                'DESCRIPCION')
              DeleteEmptyLinesAtEnd = False
              DeleteEmptyLines = False
              CanResizeX = False
              CanResizeY = False
              hAlign = prhLeft
              vAlign = prvTop
              DefaultFont = False
              WordWrap = False
            end>
          dRec.Left = 62
          dRec.Top = 1
          dRec.Right = 91
          dRec.Bottom = 2
          Visible = False
        end
      end
      object prTxHDetailBand2: TprTxHDetailBand
        Height = 1
        UseVerticalBands = False
        DataSetName = 'CDcargada'
        ColCount = 0
        ColDirection = prcdTopBottomLeftRight
        Bands = (
          'prTxHDetailHeaderBand2'
          'prTxHDetailFooterBand2')
        object prTxMemoObj26: TprTxMemoObj
          dRec.DefVersion = 0
          dRec.Versions = <
            item
              Visible = True
              Memo.Strings = (
                '[:<d>CDcargada.fecha]')
              DeleteEmptyLinesAtEnd = False
              DeleteEmptyLines = False
              CanResizeX = False
              CanResizeY = False
              hAlign = prhLeft
              vAlign = prvTop
              DefaultFont = False
              WordWrap = False
            end>
          dRec.Left = 0
          dRec.Top = 0
          dRec.Right = 10
          dRec.Bottom = 1
          Visible = False
        end
        object prTxMemoObj27: TprTxMemoObj
          dRec.DefVersion = 0
          dRec.Versions = <
            item
              Visible = True
              Memo.Strings = (
                '[:<#,#0>CDcargada.valor_costa]')
              DeleteEmptyLinesAtEnd = False
              DeleteEmptyLines = False
              CanResizeX = False
              CanResizeY = False
              hAlign = prhRight
              vAlign = prvTop
              DefaultFont = False
              WordWrap = False
            end>
          dRec.Left = 11
          dRec.Top = 0
          dRec.Right = 26
          dRec.Bottom = 1
          Visible = False
        end
        object prTxMemoObj28: TprTxMemoObj
          dRec.DefVersion = 0
          dRec.Versions = <
            item
              Visible = True
              Memo.Strings = (
                '[:<#,#0>CDcargada.valor_honorario]')
              DeleteEmptyLinesAtEnd = False
              DeleteEmptyLines = False
              CanResizeX = False
              CanResizeY = False
              hAlign = prhRight
              vAlign = prvTop
              DefaultFont = False
              WordWrap = False
            end>
          dRec.Left = 27
          dRec.Top = 0
          dRec.Right = 44
          dRec.Bottom = 1
          Visible = False
        end
        object prTxMemoObj29: TprTxMemoObj
          dRec.DefVersion = 0
          dRec.Versions = <
            item
              Visible = True
              Memo.Strings = (
                '[:<#,#0>CDcargada.valor_otro]')
              DeleteEmptyLinesAtEnd = False
              DeleteEmptyLines = False
              CanResizeX = False
              CanResizeY = False
              hAlign = prhRight
              vAlign = prvTop
              DefaultFont = False
              WordWrap = False
            end>
          dRec.Left = 45
          dRec.Top = 0
          dRec.Right = 60
          dRec.Bottom = 1
          Visible = False
        end
        object prTxMemoObj30: TprTxMemoObj
          dRec.DefVersion = 0
          dRec.Versions = <
            item
              Visible = True
              Memo.Strings = (
                '[CDcargada.descripcion]')
              DeleteEmptyLinesAtEnd = False
              DeleteEmptyLines = False
              CanResizeX = False
              CanResizeY = False
              hAlign = prhLeft
              vAlign = prvTop
              DefaultFont = False
              WordWrap = False
            end>
          dRec.Left = 62
          dRec.Top = 0
          dRec.Right = 125
          dRec.Bottom = 1
          Visible = False
        end
      end
      object prTxHDetailFooterBand2: TprTxHDetailFooterBand
        Height = 1
        UseVerticalBands = False
        DetailBand = Rcostas.prTxHDetailBand2
        ColCount = 0
        ColDirection = prcdTopBottomLeftRight
        LinkToDetail = False
        object prTxMemoObj31: TprTxMemoObj
          dRec.DefVersion = 0
          dRec.Versions = <
            item
              Visible = True
              Memo.Strings = (
                'TOTALES:')
              DeleteEmptyLinesAtEnd = False
              DeleteEmptyLines = False
              CanResizeX = False
              CanResizeY = False
              hAlign = prhLeft
              vAlign = prvTop
              DefaultFont = False
              WordWrap = False
            end>
          dRec.Left = 0
          dRec.Top = 0
          dRec.Right = 10
          dRec.Bottom = 1
          Visible = False
        end
        object prTxMemoObj32: TprTxMemoObj
          dRec.DefVersion = 0
          dRec.Versions = <
            item
              Visible = True
              Memo.Strings = (
                '[:<#,#0>CCostas]')
              DeleteEmptyLinesAtEnd = False
              DeleteEmptyLines = False
              CanResizeX = False
              CanResizeY = False
              hAlign = prhRight
              vAlign = prvTop
              DefaultFont = False
              WordWrap = False
            end>
          dRec.Left = 11
          dRec.Top = 0
          dRec.Right = 26
          dRec.Bottom = 1
          Visible = False
        end
        object prTxMemoObj33: TprTxMemoObj
          dRec.DefVersion = 0
          dRec.Versions = <
            item
              Visible = True
              Memo.Strings = (
                '[:<#,#0>Chonorarios]')
              DeleteEmptyLinesAtEnd = False
              DeleteEmptyLines = False
              CanResizeX = False
              CanResizeY = False
              hAlign = prhRight
              vAlign = prvTop
              DefaultFont = False
              WordWrap = False
            end>
          dRec.Left = 27
          dRec.Top = 0
          dRec.Right = 44
          dRec.Bottom = 1
          Visible = False
        end
        object prTxMemoObj34: TprTxMemoObj
          dRec.DefVersion = 0
          dRec.Versions = <
            item
              Visible = True
              Memo.Strings = (
                '[:<#,#0>Cotros]')
              DeleteEmptyLinesAtEnd = False
              DeleteEmptyLines = False
              CanResizeX = False
              CanResizeY = False
              hAlign = prhRight
              vAlign = prvTop
              DefaultFont = False
              WordWrap = False
            end>
          dRec.Left = 45
          dRec.Top = 0
          dRec.Right = 60
          dRec.Bottom = 1
          Visible = False
        end
      end
    end
  end
  object CDcostas: TClientDataSet
    Active = True
    Aggregates = <>
    Params = <>
    Left = 312
    Top = 192
    Data = {
      8F0000009619E0BD0100000018000000040000000000030000008F0006646562
      69746F080004000000010007535542545950450200490006004D6F6E65790007
      6372656469746F080004000000010007535542545950450200490006004D6F6E
      6579000B6465736372697063696F6E0200490000000100055749445448020002
      00FF0005666563686104000600000000000000}
    object CDcostasdebito: TCurrencyField
      FieldName = 'debito'
    end
    object CDcostascredito: TCurrencyField
      FieldName = 'credito'
    end
    object CDcostasdescripcion: TStringField
      FieldName = 'descripcion'
      Size = 255
    end
    object CDcostasfecha: TDateField
      FieldName = 'fecha'
    end
  end
  object CDhonorarios: TClientDataSet
    Active = True
    Aggregates = <>
    Params = <>
    Left = 344
    Top = 192
    Data = {
      8F0000009619E0BD0100000018000000040000000000030000008F0006646562
      69746F080004000000010007535542545950450200490006004D6F6E65790007
      6372656469746F080004000000010007535542545950450200490006004D6F6E
      6579000B6465736372697063696F6E0200490000000100055749445448020002
      00FF0005666563686104000600000000000000}
    object CDhonorariosdebito: TCurrencyField
      FieldName = 'debito'
    end
    object CDhonorarioscredito: TCurrencyField
      FieldName = 'credito'
    end
    object CDhonorariosdescripcion: TStringField
      FieldName = 'descripcion'
      Size = 255
    end
    object CDhonorariosfecha: TDateField
      FieldName = 'fecha'
    end
  end
  object frDBDataSet1: TfrDBDataSet
    DataSet = CDcostas
    Left = 264
    Top = 184
  end
  object frDBDataSet2: TfrDBDataSet
    DataSet = CDhonorarios
    Left = 216
    Top = 192
  end
  object IBcarta: TIBQuery
    Database = dmGeneral.IBDatabase1
    Transaction = IBTransaction1
    Left = 176
  end
  object IBTransaction1: TIBTransaction
    DefaultDatabase = dmGeneral.IBDatabase1
    Left = 208
  end
  object IBTControlCobro: TIBTransaction
    DefaultDatabase = dmGeneral.IBDatabase1
    Left = 256
  end
  object RepCobro: TprTxReport
    FromPage = 1
    ToPage = 1
    Title = 'GESTION DE COBRO'
    Values = <>
    Variables = <
      item
        Name = 'EMPRESA'
        ValueType = 'prvvtString'
        Value = ' '
      end
      item
        Name = 'NIT'
        ValueType = 'prvvtString'
        Value = ' '
      end
      item
        Name = 'ASOCIADO'
        ValueType = 'prvvtString'
        Value = ''
      end
      item
        Name = 'IDENTIFICACION'
        ValueType = 'prvvtString'
        Value = ''
      end
      item
        Name = 'EMPLEADO'
        ValueType = 'prvvtString'
        Value = ''
      end
      item
        Name = 'FECHAEVALUARI'
        ValueType = 'prvvtDateTime'
        Value = 40821d
      end
      item
        Name = 'FECHAEVALUARF'
        ValueType = 'prvvtDateTime'
        Value = 40821d
      end
      item
        Name = 'AGENCIA'
        ValueType = 'prvvtString'
        Value = ''
      end>
    PrinterName = 'EPSON FX-1180+ ESC/P'
    ESCModelName = 'Epson printers'
    WrapAfterColumn = 0
    FromLine = 1
    ToLine = 1
    Left = 314
    Top = 484
    SystemInfo = (
      'OS: WIN32_NT 5.1.2600 Service Pack 3'
      ''
      'PageSize: 4096'
      'ActiveProcessorMask: $1000'
      'NumberOfProcessors: 1'
      'ProcessorType: 586'
      ''
      'Compiler version: Delphi6'
      'PReport version: 1.9.4')
    object prTxPage1: TprTxPage
      PageType = tptPage
      LineNum = 60
      ColNum = 132
      object prTxHPageHeaderBand1: TprTxHPageHeaderBand
        Height = 5
        UseVerticalBands = False
        PrintOnFirstPage = True
        object prTxMemoObj16: TprTxMemoObj
          dRec.DefVersion = 0
          dRec.Versions = <
            item
              Visible = True
              Memo.Strings = (
                '[EMPRESA]')
              DeleteEmptyLinesAtEnd = False
              DeleteEmptyLines = False
              CanResizeX = False
              CanResizeY = False
              hAlign = prhCenter
              vAlign = prvTop
              DefaultFont = False
              WordWrap = False
              TxFontOptionsEx = (
                tfoBold)
            end>
          dRec.Left = 1
          dRec.Top = 0
          dRec.Right = 19
          dRec.Bottom = 1
          Visible = False
        end
        object prTxMemoObj17: TprTxMemoObj
          dRec.DefVersion = 0
          dRec.Versions = <
            item
              Visible = True
              Memo.Strings = (
                'INFORME DE GESTION DE COBRO')
              DeleteEmptyLinesAtEnd = False
              DeleteEmptyLines = False
              CanResizeX = False
              CanResizeY = False
              hAlign = prhCenter
              vAlign = prvCenter
              DefaultFont = False
              WordWrap = False
            end>
          dRec.Left = 20
          dRec.Top = 0
          dRec.Right = 111
          dRec.Bottom = 1
          Visible = False
        end
        object prTxMemoObj18: TprTxMemoObj
          dRec.DefVersion = 0
          dRec.Versions = <
            item
              Visible = True
              Memo.Strings = (
                '[:<yyyy/mm/dd>StartDateTime]')
              DeleteEmptyLinesAtEnd = False
              DeleteEmptyLines = False
              CanResizeX = False
              CanResizeY = False
              hAlign = prhLeft
              vAlign = prvTop
              DefaultFont = False
              WordWrap = False
            end>
          dRec.Left = 112
          dRec.Top = 0
          dRec.Right = 130
          dRec.Bottom = 1
          Visible = False
        end
        object prTxMemoObj19: TprTxMemoObj
          dRec.DefVersion = 0
          dRec.Versions = <
            item
              Visible = True
              Memo.Strings = (
                '[NIT]')
              DeleteEmptyLinesAtEnd = False
              DeleteEmptyLines = False
              CanResizeX = False
              CanResizeY = False
              hAlign = prhCenter
              vAlign = prvTop
              DefaultFont = False
              WordWrap = False
            end>
          dRec.Left = 1
          dRec.Top = 1
          dRec.Right = 19
          dRec.Bottom = 2
          Visible = False
        end
        object prTxHLineObj4: TprTxHLineObj
          dRec.DefVersion = 0
          dRec.Versions = <
            item
              Visible = True
            end>
          dRec.Left = 0
          dRec.Top = 4
          dRec.Right = 130
          dRec.Bottom = 5
          Visible = False
        end
        object prTxCommandObj1: TprTxCommandObj
          dRec.DefVersion = 0
          dRec.Versions = <
            item
              Visible = True
              TxCommands = (
                txcCondensedOff)
            end>
          dRec.Left = 0
          dRec.Top = 0
          dRec.Right = 1
          dRec.Bottom = 1
          Visible = False
        end
        object prTxMemoObj20: TprTxMemoObj
          dRec.DefVersion = 0
          dRec.Versions = <
            item
              Visible = True
              Memo.Strings = (
                'Colocacion No. [IBDataset1.ID_COLOCACION]')
              DeleteEmptyLinesAtEnd = False
              DeleteEmptyLines = False
              CanResizeX = False
              CanResizeY = False
              hAlign = prhLeft
              vAlign = prvTop
              DefaultFont = False
              WordWrap = False
            end>
          dRec.Left = 0
          dRec.Top = 5
          dRec.Right = 11
          dRec.Bottom = 6
          Visible = False
        end
        object prTxMemoObj6: TprTxMemoObj
          dRec.DefVersion = 0
          dRec.Versions = <
            item
              Visible = True
              Memo.Strings = (
                'FUNCIONARIO:')
              DeleteEmptyLinesAtEnd = False
              DeleteEmptyLines = False
              CanResizeX = False
              CanResizeY = False
              hAlign = prhLeft
              vAlign = prvTop
              DefaultFont = False
              WordWrap = False
            end>
          dRec.Left = 20
          dRec.Top = 1
          dRec.Right = 32
          dRec.Bottom = 2
          Visible = False
        end
        object prTxMemoObj10: TprTxMemoObj
          dRec.DefVersion = 0
          dRec.Versions = <
            item
              Visible = True
              Memo.Strings = (
                '[EMPLEADO]')
              DeleteEmptyLinesAtEnd = False
              DeleteEmptyLines = False
              CanResizeX = False
              CanResizeY = False
              hAlign = prhLeft
              vAlign = prvTop
              DefaultFont = False
              WordWrap = False
            end>
          dRec.Left = 33
          dRec.Top = 1
          dRec.Right = 87
          dRec.Bottom = 2
          Visible = False
        end
        object prTxMemoObj11: TprTxMemoObj
          dRec.DefVersion = 0
          dRec.Versions = <
            item
              Visible = True
              Memo.Strings = (
                'FECHA EVALUADA:')
              DeleteEmptyLinesAtEnd = False
              DeleteEmptyLines = False
              CanResizeX = False
              CanResizeY = False
              hAlign = prhLeft
              vAlign = prvTop
              DefaultFont = False
              WordWrap = False
            end>
          dRec.Left = 20
          dRec.Top = 3
          dRec.Right = 35
          dRec.Bottom = 4
          Visible = False
        end
        object prTxMemoObj12: TprTxMemoObj
          dRec.DefVersion = 0
          dRec.Versions = <
            item
              Visible = True
              Memo.Strings = (
                '[FECHAEVALUARI]')
              DeleteEmptyLinesAtEnd = False
              DeleteEmptyLines = False
              CanResizeX = False
              CanResizeY = False
              hAlign = prhLeft
              vAlign = prvTop
              DefaultFont = False
              WordWrap = False
            end>
          dRec.Left = 36
          dRec.Top = 3
          dRec.Right = 46
          dRec.Bottom = 4
          Visible = False
        end
        object prTxMemoObj13: TprTxMemoObj
          dRec.DefVersion = 0
          dRec.Versions = <
            item
              Visible = True
              Memo.Strings = (
                '[FECHAEVALUARF]')
              DeleteEmptyLinesAtEnd = False
              DeleteEmptyLines = False
              CanResizeX = False
              CanResizeY = False
              hAlign = prhLeft
              vAlign = prvTop
              DefaultFont = False
              WordWrap = False
            end>
          dRec.Left = 50
          dRec.Top = 3
          dRec.Right = 60
          dRec.Bottom = 4
          Visible = False
        end
        object prTxMemoObj14: TprTxMemoObj
          dRec.DefVersion = 0
          dRec.Versions = <
            item
              Visible = True
              Memo.Strings = (
                'AL')
              DeleteEmptyLinesAtEnd = False
              DeleteEmptyLines = False
              CanResizeX = False
              CanResizeY = False
              hAlign = prhLeft
              vAlign = prvTop
              DefaultFont = False
              WordWrap = False
            end>
          dRec.Left = 47
          dRec.Top = 3
          dRec.Right = 49
          dRec.Bottom = 4
          Visible = False
        end
        object prTxMemoObj21: TprTxMemoObj
          dRec.DefVersion = 0
          dRec.Versions = <
            item
              Visible = True
              Memo.Strings = (
                'AGENCIA:[AGENCIA]')
              DeleteEmptyLinesAtEnd = False
              DeleteEmptyLines = False
              CanResizeX = False
              CanResizeY = False
              hAlign = prhLeft
              vAlign = prvTop
              DefaultFont = False
              WordWrap = False
            end>
          dRec.Left = 1
          dRec.Top = 2
          dRec.Right = 19
          dRec.Bottom = 3
          Visible = False
        end
      end
      object prTxHDetailHeaderBand1: TprTxHDetailHeaderBand
        Height = 2
        UseVerticalBands = False
        DetailBand = RepCobro.prTxHDetailBand1
        ColCount = 1
        ColDirection = prcdTopBottomLeftRight
        ReprintOnEachPage = True
        LinkToDetail = True
        object prTxHLineObj1: TprTxHLineObj
          dRec.DefVersion = 0
          dRec.Versions = <
            item
              Visible = True
            end>
          dRec.Left = 0
          dRec.Top = 1
          dRec.Right = 130
          dRec.Bottom = 2
          Visible = False
        end
        object prTxMemoObj1: TprTxMemoObj
          dRec.DefVersion = 0
          dRec.Versions = <
            item
              Visible = True
              Memo.Strings = (
                'FECHA DE LA GESTION')
              DeleteEmptyLinesAtEnd = False
              DeleteEmptyLines = False
              CanResizeX = False
              CanResizeY = False
              hAlign = prhCenter
              vAlign = prvCenter
              DefaultFont = False
              WordWrap = False
            end>
          dRec.Left = 0
          dRec.Top = 2
          dRec.Right = 20
          dRec.Bottom = 3
          Visible = False
        end
        object prTxMemoObj3: TprTxMemoObj
          dRec.DefVersion = 0
          dRec.Versions = <
            item
              Visible = True
              Memo.Strings = (
                'COMPROMISO')
              DeleteEmptyLinesAtEnd = False
              DeleteEmptyLines = False
              CanResizeX = False
              CanResizeY = False
              hAlign = prhCenter
              vAlign = prvTop
              DefaultFont = False
              WordWrap = False
            end>
          dRec.Left = 118
          dRec.Top = 0
          dRec.Right = 130
          dRec.Bottom = 1
          Visible = False
        end
        object prTxMemoObj2: TprTxMemoObj
          dRec.DefVersion = 0
          dRec.Versions = <
            item
              Visible = True
              Memo.Strings = (
                'OBSERVACION')
              DeleteEmptyLinesAtEnd = False
              DeleteEmptyLines = False
              CanResizeX = False
              CanResizeY = False
              hAlign = prhCenter
              vAlign = prvCenter
              DefaultFont = False
              WordWrap = False
            end>
          dRec.Left = 28
          dRec.Top = 0
          dRec.Right = 117
          dRec.Bottom = 1
          Visible = False
        end
        object prTxVLineObj1: TprTxVLineObj
          dRec.DefVersion = 0
          dRec.Versions = <
            item
              Visible = True
            end>
          dRec.Left = 11
          dRec.Top = 0
          dRec.Right = 12
          dRec.Bottom = 1
          Visible = False
        end
        object prTxVLineObj2: TprTxVLineObj
          dRec.DefVersion = 0
          dRec.Versions = <
            item
              Visible = True
            end>
          dRec.Left = 117
          dRec.Top = 0
          dRec.Right = 118
          dRec.Bottom = 1
          Visible = False
        end
        object prTxMemoObj9: TprTxMemoObj
          dRec.DefVersion = 0
          dRec.Versions = <
            item
              Visible = True
              Memo.Strings = (
                'Asociado : [ASOCIADO]')
              DeleteEmptyLinesAtEnd = False
              DeleteEmptyLines = False
              CanResizeX = False
              CanResizeY = False
              hAlign = prhLeft
              vAlign = prvCenter
              DefaultFont = False
              WordWrap = False
            end>
          dRec.Left = 12
          dRec.Top = 0
          dRec.Right = 45
          dRec.Bottom = 1
          Visible = False
        end
        object prTxVLineObj3: TprTxVLineObj
          dRec.DefVersion = 0
          dRec.Versions = <
            item
              Visible = True
            end>
          dRec.Left = 45
          dRec.Top = 0
          dRec.Right = 46
          dRec.Bottom = 1
          Visible = False
        end
      end
      object prTxHDetailBand1: TprTxHDetailBand
        ResizeMode = prbrmMaxObj
        Height = 1
        UseVerticalBands = False
        DataSetName = 'CDSObservacion'
        ColCount = 1
        ColDirection = prcdTopBottomLeftRight
        Groups = (
          'prGroup1')
        Bands = (
          'prTxHDetailHeaderBand1')
        object prTxMemoObj7: TprTxMemoObj
          dRec.DefVersion = 0
          dRec.Versions = <
            item
              Visible = True
              Memo.Strings = (
                '[CDSObservacion.OBSERVACION]')
              DeleteEmptyLinesAtEnd = True
              DeleteEmptyLines = True
              CanResizeX = False
              CanResizeY = False
              hAlign = prhLeft
              vAlign = prvCenter
              DefaultFont = False
              WordWrap = False
              TxFontOptionsEx = (
                tfoCondensed)
            end>
          dRec.Left = 46
          dRec.Top = 0
          dRec.Right = 117
          dRec.Bottom = 1
          dRec.HeightAsHorizontalBand = True
          Visible = False
        end
        object prTxMemoObj8: TprTxMemoObj
          dRec.DefVersion = 0
          dRec.Versions = <
            item
              Visible = True
              Memo.Strings = (
                '[CDSObservacion.FECHA_COMPROMISO]')
              DeleteEmptyLinesAtEnd = True
              DeleteEmptyLines = True
              CanResizeX = False
              CanResizeY = False
              hAlign = prhLeft
              vAlign = prvCenter
              DefaultFont = False
              WordWrap = False
            end>
          dRec.Left = 119
          dRec.Top = 0
          dRec.Right = 129
          dRec.Bottom = 1
          Visible = False
        end
        object prTxVLineObj4: TprTxVLineObj
          dRec.DefVersion = 0
          dRec.Versions = <
            item
              Visible = True
            end>
          dRec.Left = 117
          dRec.Top = 0
          dRec.Right = 118
          dRec.Bottom = 1
          Visible = False
        end
        object prTxVLineObj5: TprTxVLineObj
          dRec.DefVersion = 0
          dRec.Versions = <
            item
              Visible = True
            end>
          dRec.Left = 45
          dRec.Top = 0
          dRec.Right = 46
          dRec.Bottom = 1
          Visible = False
        end
        object prTxMemoObj15: TprTxMemoObj
          dRec.DefVersion = 0
          dRec.Versions = <
            item
              Visible = True
              Memo.Strings = (
                '[CDSObservacion.ASOCIADO]')
              DeleteEmptyLinesAtEnd = False
              DeleteEmptyLines = False
              CanResizeX = False
              CanResizeY = False
              hAlign = prhLeft
              vAlign = prvTop
              DefaultFont = False
              WordWrap = False
            end>
          dRec.Left = 12
          dRec.Top = 0
          dRec.Right = 45
          dRec.Bottom = 1
          Visible = False
        end
        object prTxVLineObj6: TprTxVLineObj
          dRec.DefVersion = 0
          dRec.Versions = <
            item
              Visible = True
            end>
          dRec.Left = 11
          dRec.Top = 0
          dRec.Right = 12
          dRec.Bottom = 1
          Visible = False
        end
        object prTxMemoObj22: TprTxMemoObj
          dRec.DefVersion = 0
          dRec.Versions = <
            item
              Visible = True
              Memo.Strings = (
                '[CDSObservacion.ID_COLOCACION]')
              DeleteEmptyLinesAtEnd = False
              DeleteEmptyLines = False
              CanResizeX = False
              CanResizeY = False
              hAlign = prhLeft
              vAlign = prvTop
              DefaultFont = False
              WordWrap = False
            end>
          dRec.Left = 0
          dRec.Top = 0
          dRec.Right = 11
          dRec.Bottom = 1
          Visible = False
        end
      end
      object prTxHPageFooterBand1: TprTxHPageFooterBand
        Height = 1
        UseVerticalBands = False
        PrintOnFirstPage = False
        PrintOnLastPage = True
        PrintAfterLastBandOnPage = False
        object prTxMemoObj4: TprTxMemoObj
          dRec.DefVersion = 0
          dRec.Versions = <
            item
              Visible = True
              Memo.Strings = (
                'EMPLEADO : [EMPLEADO]')
              DeleteEmptyLinesAtEnd = False
              DeleteEmptyLines = False
              CanResizeX = False
              CanResizeY = False
              hAlign = prhLeft
              vAlign = prvCenter
              DefaultFont = False
              WordWrap = False
            end>
          dRec.Left = 1
          dRec.Top = 0
          dRec.Right = 60
          dRec.Bottom = 1
          Visible = False
        end
      end
      object prTxHGroupHeaderBand1: TprTxHGroupHeaderBand
        Height = 1
        UseVerticalBands = False
        Group = RepCobro.prGroup1
        ColCount = 1
        ColDirection = prcdTopBottomLeftRight
        LinkToDetail = False
        StartNewPage = False
        ReprintOnEachPage = False
        object prTxMemoObj5: TprTxMemoObj
          dRec.DefVersion = 0
          dRec.Versions = <
            item
              Visible = True
              Memo.Strings = (
                '[CDSObservacion.FECHA_OBSERVACION]')
              DeleteEmptyLinesAtEnd = False
              DeleteEmptyLines = False
              CanResizeX = False
              CanResizeY = False
              hAlign = prhLeft
              vAlign = prvTop
              DefaultFont = False
              WordWrap = False
            end>
          dRec.Left = 21
          dRec.Top = 0
          dRec.Right = 31
          dRec.Bottom = 1
          Visible = False
        end
      end
      object prTxHGroupFooterBand1: TprTxHGroupFooterBand
        Height = 1
        UseVerticalBands = False
        Group = RepCobro.prGroup1
        ColCount = 1
        ColDirection = prcdTopBottomLeftRight
        LinkToDetail = True
        object prTxHLineObj2: TprTxHLineObj
          dRec.DefVersion = 0
          dRec.Versions = <
            item
              Visible = True
              MainChar = '.'
            end>
          dRec.Left = -1
          dRec.Top = 0
          dRec.Right = 129
          dRec.Bottom = 1
          Visible = False
        end
      end
    end
    object prGroup1: TprGroup
      Valid = 'CDSObservacion.FECHA_OBSERVACION'
      DetailBand = RepCobro.prTxHDetailBand1
    end
  end
  object frReport2: TfrReport
    Dataset = frDBDataSet3
    InitialZoom = pzDefault
    PreviewButtons = [pbZoom, pbLoad, pbSave, pbPrint, pbFind, pbHelp, pbExit]
    RebuildPrinter = False
    OnGetValue = frReport2GetValue
    Left = 232
    Top = 408
    ReportForm = {19000000}
  end
  object frDBDataSet3: TfrDBDataSet
    DataSet = IBDataSet1
    Left = 320
    Top = 424
  end
  object CdCarta: TClientDataSet
    Active = True
    Aggregates = <>
    FieldDefs = <
      item
        Name = 'ID_COLOCACION'
        DataType = ftString
        Size = 11
      end
      item
        Name = 'FECHA'
        DataType = ftDate
      end
      item
        Name = 'NOMBRE'
        DataType = ftString
        Size = 255
      end
      item
        Name = 'DIRECCION'
        DataType = ftString
        Size = 255
      end
      item
        Name = 'TIPO'
        DataType = ftString
        Size = 10
      end
      item
        Name = 'DIAS'
        DataType = ftInteger
      end>
    IndexDefs = <>
    Params = <>
    StoreDefs = True
    Left = 440
    Top = 272
    Data = {
      A90000009619E0BD010000001800000006000000000003000000A9000D49445F
      434F4C4F434143494F4E0100490000000100055749445448020002000B000546
      454348410400060000000000064E4F4D42524502004900000001000557494454
      4802000200FF0009444952454343494F4E020049000000010005574944544802
      000200FF00045449504F0100490000000100055749445448020002000A000444
      49415304000100000000000000}
    object CdCartaID_COLOCACION: TStringField
      FieldName = 'ID_COLOCACION'
      Size = 11
    end
    object CdCartaFECHA: TDateField
      FieldName = 'FECHA'
    end
    object CdCartaNOMBRE: TStringField
      FieldName = 'NOMBRE'
      Size = 255
    end
    object CdCartaDIRECCION: TStringField
      FieldName = 'DIRECCION'
      Size = 255
    end
    object CdCartaTIPO: TStringField
      FieldName = 'TIPO'
      Size = 10
    end
    object CdCartaDIAS: TIntegerField
      FieldName = 'DIAS'
    end
  end
  object JvProgreso: TJvProgressDlg
    Text = 'Progress'
    Left = 200
    Top = 96
  end
  object IBDatoCodeudor: TIBSQL
    Database = dmGeneral.IBDatabase1
    SQL.Strings = (
      'SELECT '
      
        '  "gen$direccion".DIRECCION || '#39' Barrio '#39' || "gen$direccion".BAR' +
        'RIO AS BARRIO,'
      
        '  "gen$persona".NOMBRE || '#39' '#39' || "gen$persona".PRIMER_APELLIDO |' +
        '| '#39' '#39' || "gen$persona".SEGUNDO_APELLIDO AS NOMBRE'
      'FROM'
      '  "gen$direccion"'
      
        '  INNER JOIN "gen$persona" ON ("gen$direccion".ID_IDENTIFICACION' +
        ' = "gen$persona".ID_IDENTIFICACION)'
      '  AND ("gen$direccion".ID_PERSONA = "gen$persona".ID_PERSONA)'
      'WHERE'
      '  "gen$direccion".ID_IDENTIFICACION = :ID_IDENTIFICACION AND '
      '  "gen$direccion".ID_PERSONA = :ID_PERSONA AND '
      '  "gen$direccion".ID_DIRECCION = 1')
    Transaction = IBTControlCobro
    Left = 728
    Top = 248
  end
  object IbDireccion: TIBSQL
    Database = dmGeneral.IBDatabase1
    SQL.Strings = (
      'SELECT '
      
        '  "gen$direccion".DIRECCION || '#39' Barrio '#39' || "gen$direccion".BAR' +
        'RIO as BARRIO'
      'FROM'
      '  "gen$direccion"'
      'WHERE'
      '  "gen$direccion".ID_IDENTIFICACION = :ID_IDENTIFICACION AND '
      '  "gen$direccion".ID_PERSONA = :ID_PERSONA AND '
      '  "gen$direccion".ID_DIRECCION = 1')
    Transaction = IBTControlCobro
    Left = 736
    Top = 352
  end
  object CDSObservacion: TClientDataSet
    Active = True
    Aggregates = <>
    FieldDefs = <
      item
        Name = 'FECHA_OBSERVACION'
        DataType = ftDate
      end
      item
        Name = 'ID_AGENCIA'
        DataType = ftInteger
      end
      item
        Name = 'ID_COLOCACION'
        DataType = ftString
        Size = 11
      end
      item
        Name = 'ASOCIADO'
        DataType = ftString
        Size = 255
      end
      item
        Name = 'OBSERVACION'
        DataType = ftMemo
      end
      item
        Name = 'ES_COMPROMISO'
        DataType = ftBoolean
      end
      item
        Name = 'FECHA_COMPROMISO'
        DataType = ftDate
      end>
    IndexDefs = <>
    Params = <>
    StoreDefs = True
    Left = 280
    Top = 496
    Data = {
      DC0000009619E0BD010000001800000007000000000003000000DC0011464543
      48415F4F42534552564143494F4E04000600000000000A49445F4147454E4349
      4104000100000000000D49445F434F4C4F434143494F4E010049000000010005
      5749445448020002000B000841534F434941444F020049000000010005574944
      544802000200FF000B4F42534552564143494F4E04004B000000010007535542
      5459504502004900050054657874000D45535F434F4D50524F4D49534F020003
      00000000001046454348415F434F4D50524F4D49534F04000600000000000000}
    object CDSObservacionFECHA: TDateField
      FieldName = 'FECHA_OBSERVACION'
    end
    object CDSObservacionID_AGENCIA: TIntegerField
      FieldName = 'ID_AGENCIA'
    end
    object CDSObservacionID_COLOCACION: TStringField
      FieldName = 'ID_COLOCACION'
      Size = 11
    end
    object CDSObservacionASOCIADO: TStringField
      FieldName = 'ASOCIADO'
      Size = 255
    end
    object CDSObservacionOBSERVACION: TMemoField
      FieldName = 'OBSERVACION'
      BlobType = ftMemo
    end
    object CDSObservacionES_COMPROMISO: TBooleanField
      FieldName = 'ES_COMPROMISO'
    end
    object CDSObservacionFECHA_COMPROMISO: TDateField
      FieldName = 'FECHA_COMPROMISO'
    end
  end
  object frReportPrimerAviso: TfrReport
    InitialZoom = pzDefault
    ModifyPrepared = False
    PreviewButtons = [pbZoom, pbLoad, pbSave, pbPrint, pbFind, pbHelp, pbExit]
    RebuildPrinter = False
    OnGetValue = frReportPrimerAvisoGetValue
    Left = 24
    Top = 408
    ReportForm = {19000000}
  end
  object frRichObject1: TfrRichObject
    Left = 48
    Top = 440
  end
  object frRtfAdvExport1: TfrRtfAdvExport
    Left = 16
    Top = 440
  end
  object CDScarta: TClientDataSet
    Active = True
    Aggregates = <>
    FieldDefs = <
      item
        Name = 'DEUDOR'
        DataType = ftString
        Size = 200
      end
      item
        Name = 'CODEUDOR'
        DataType = ftString
        Size = 200
      end
      item
        Name = 'DIRECCION'
        DataType = ftString
        Size = 200
      end
      item
        Name = 'BARRIO'
        DataType = ftString
        Size = 200
      end
      item
        Name = 'CIUDAD'
        DataType = ftString
        Size = 200
      end
      item
        Name = 'TELEFONO'
        DataType = ftString
        Size = 200
      end
      item
        Name = 'CREDITO'
        DataType = ftString
        Size = 20
      end>
    IndexDefs = <>
    Params = <>
    StoreDefs = True
    Left = 72
    Top = 400
    Data = {
      DF0000009619E0BD010000001800000007000000000003000000DF0006444555
      444F52010049000000010005574944544802000200C80008434F444555444F52
      010049000000010005574944544802000200C80009444952454343494F4E0100
      49000000010005574944544802000200C8000642415252494F01004900000001
      0005574944544802000200C80006434955444144010049000000010005574944
      544802000200C8000854454C45464F4E4F010049000000010005574944544802
      000200C800074352454449544F01004900000001000557494454480200020014
      000000}
    object CDScartaDEUDOR: TStringField
      FieldName = 'DEUDOR'
      Size = 200
    end
    object CDScartaCODEUDOR: TStringField
      FieldName = 'CODEUDOR'
      Size = 200
    end
    object CDScartaDIRECCION: TStringField
      FieldName = 'DIRECCION'
      Size = 200
    end
    object CDScartaBARRIO: TStringField
      FieldName = 'BARRIO'
      Size = 200
    end
    object CDScartaCIUDAD: TStringField
      FieldName = 'CIUDAD'
      Size = 200
    end
    object CDScartaTELEFONO: TStringField
      FieldName = 'TELEFONO'
      Size = 200
    end
    object CDScartaCREDITO: TStringField
      FieldName = 'CREDITO'
    end
  end
  object frDBcarta: TfrDBDataSet
    DataSet = CDScarta
    Left = 104
    Top = 392
  end
  object SD1: TSaveDialog
    Left = 656
    Top = 280
  end
  object CDSCertificado: TClientDataSet
    Active = True
    Aggregates = <>
    FieldDefs = <
      item
        Name = 'NOMBRE'
        DataType = ftString
        Size = 200
      end
      item
        Name = 'DOCUMENTO'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'TIPO'
        DataType = ftString
        Size = 20
      end>
    IndexDefs = <>
    Params = <>
    StoreDefs = True
    Left = 176
    Top = 408
    Data = {
      6C0000009619E0BD0100000018000000030000000000030000006C00064E4F4D
      425245010049000000010005574944544802000200C80009444F43554D454E54
      4F0100490000000100055749445448020002001400045449504F010049000000
      01000557494454480200020014000000}
    object CDSCertificadoNOMBRE: TStringField
      FieldName = 'NOMBRE'
      Size = 200
    end
    object CDSCertificadoDOCUMENTO: TStringField
      FieldName = 'DOCUMENTO'
    end
    object CDSCertificadoTIPO: TStringField
      FieldName = 'TIPO'
    end
  end
  object prCertificado: TprReport
    ShowProgress = True
    Values = <>
    Variables = <
      item
        Name = 'NIT'
        ValueType = 'prvvtString'
        Value = ''
      end
      item
        Name = 'EMPRESA'
        ValueType = 'prvvtString'
        Value = ''
      end
      item
        Name = 'OBLIGACION'
        ValueType = 'prvvtString'
        Value = ''
      end
      item
        Name = 'DIA'
        ValueType = 'prvvtString'
        Value = ''
      end
      item
        Name = 'MES'
        ValueType = 'prvvtString'
        Value = ''
      end
      item
        Name = 'ANHO'
        ValueType = 'prvvtString'
        Value = ''
      end
      item
        Name = 'CIUDAD'
        ValueType = 'prvvtString'
        Value = ''
      end>
    PrinterName = 'HP LaserJet p1505'
    PreviewParams.Options = []
    PreviewParams.ShowToolbars = [prptPreviewCommon]
    Left = 224
    Top = 376
    SystemInfo = (
      'OS: WIN32_NT 5.1.2600 Service Pack 3'
      ''
      'PageSize: 4096'
      'ActiveProcessorMask: $1000'
      'NumberOfProcessors: 1'
      'ProcessorType: 586'
      ''
      'Compiler version: Delphi6'
      'PReport version: 1.9.4')
    LOGPIXELSX = 96
    LOGPIXELSY = 96
    object prPage1: TprPage
      Width = 2100
      Height = 2970
      PaperSize = 9
      Orientation = poPortrait
      lMargin = 10
      rMargin = 10
      tMargin = 10
      bMargin = 10
      object prHTitleBand1: TprHTitleBand
        Height = 285
        UseVerticalBands = False
        object prImageObj1: TprImageObj
          dRec.DefVersion = 0
          dRec.Versions = <
            item
              Visible = True
              ImageSource = isPicture
              Picture.Data = {
                0A544A504547496D61676559000100FFD8FFE000104A46494600010102002500
                250000FFE11CB845786966000049492A000800000005001A010500010000004A
                0000001B0105000100000052000000280103000100000003000000310102000C
                0000005A0000003201020014000000660000007A000000BD00000005000000BD
                0000000500000047494D5020322E31302E3200323031383A31303A3232203038
                3A33353A35390008000001040001000000000100000101040001000000630000
                000201030003000000E000000003010300010000000600000006010300010000
                00060000001501030001000000030000000102040001000000E6000000020204
                0001000000C91B000000000000080008000800FFD8FFE000104A464946000101
                00000100010000FFDB004300080606070605080707070909080A0C140D0C0B0B
                0C1912130F141D1A1F1E1D1A1C1C20242E2720222C231C1C2837292C30313434
                341F27393D38323C2E333432FFDB0043010909090C0B0C180D0D1832211C2132
                3232323232323232323232323232323232323232323232323232323232323232
                3232323232323232323232323232323232FFC000110800630100030122000211
                01031101FFC4001F000001050101010101010000000000000000010203040506
                0708090A0BFFC400B5100002010303020403050504040000017D010203000411
                05122131410613516107227114328191A1082342B1C11552D1F0243362728209
                0A161718191A25262728292A3435363738393A434445464748494A5354555657
                58595A636465666768696A737475767778797A838485868788898A9293949596
                9798999AA2A3A4A5A6A7A8A9AAB2B3B4B5B6B7B8B9BAC2C3C4C5C6C7C8C9CAD2
                D3D4D5D6D7D8D9DAE1E2E3E4E5E6E7E8E9EAF1F2F3F4F5F6F7F8F9FAFFC4001F
                0100030101010101010101010000000000000102030405060708090A0BFFC400
                B511000201020404030407050404000102770001020311040521310612415107
                61711322328108144291A1B1C109233352F0156272D10A162434E125F1171819
                1A262728292A35363738393A434445464748494A535455565758595A63646566
                6768696A737475767778797A82838485868788898A92939495969798999AA2A3
                A4A5A6A7A8A9AAB2B3B4B5B6B7B8B9BAC2C3C4C5C6C7C8C9CAD2D3D4D5D6D7D8
                D9DAE2E3E4E5E6E7E8E9EAF2F3F4F5F6F7F8F9FAFFDA000C0301000211031100
                3F00F9FE8A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A002
                8A28A0028A2B4347B217B7C038CC683737BFB55422E5251426ECAE5CD17C3B3E
                A524659243E61C4712292F27D2BDAFC3DF03AF64B5492F6E20D373C88963F364
                C7B9C800FE26BB0F85DE0A8B49D322D6AF6206FEE57744180FDCC67A63D091D7
                DB8F5AF47ADE551537CB4FEF21479B591E553FC10B0687106B370B2FAC912B2F
                E408FE75E7DE30F83BA86930BDD7929796A83267B5043A0F565FFF005D7A9782
                BC6F1EBBE3DF13E98D73B912556B44272362AED62BF5C06FC6BD12875A71769E
                A83922F547C1BA869D2E9F2857F990FDD7038354EBE84F8C1E02B7B23FDA5650
                ECB2BB6DB2A20C08A5EA08F4079FC47BD7CFD2C4D0CAF138C32120D45582494A
                3B32A2DECC6514515894145145001451450014514500145145001451524304B7
                33243044F2CAE76A22296663E800EB4011D15D747F0E75A5778F50B8D374C917
                1FBBBBBB5DE73FECA6E2B8E3EF01D6B3359F09EADA1C22E6E228E6B26728B776
                B2096224638247DD3CF4600FB53E5695EC2BA3128A28A430A28A2800A28A2800
                A28A2800A28A2800AEE7E1B69F1EA3AE595B489BA39EF638DC7AAE4647E44D70
                D5B9A16BA3475CAB4F1CCB279892427054E07439041E2B6A0D29DDBB1135747D
                BD24B0DB425E5748A251CB310A00AF22F88FF15ED21D36E34DD0E6329706396E
                93A73C6D4F527D7F2F6F15BBF18DE6ACC048F7F7D28FBBE7C85B1F9938AACB0C
                DBC5F6A24191788605E8A4FF00335BD3A314EE9DFF00226537E859D23559FC3D
                ABA6A76B218AEA1955A6704F048C8CFB76C7A1AFA67C25F11749F12DBC714B2C
                769A8E3E78246C063EA84F51EDD6BE5E468A39AE15C2955205C77CEE19CFE07F
                214DDB7DA59C42A6EAD3B2E7E641EDEB5A54A7192D7F0263268FAD3C73A7C7A9
                F8275685C676DBB4C98FEF27CC3F957C6BAF4423D55C8FE350DFD3FA57491F8F
                2EADED4DA2DE6A714054AB42B290847718DD8C572DAADEC77F79E6C6ACAA142F
                CDD6B9E6A31A6E2A57D4B5772BD8A345145731A0514514005145140051451400
                5145140057A869F631F83B4C8628E351E20B88C497372402F68AC0E228CE3E56
                2A72CC39E76FAE79CF0BF83B56B9F10E9F25FE8D77169B1C82E2E65B9B6758BC
                941BDF2C463955207A92077AEA2D22B9F12F89E2491B75C5F5C8DEC3A0DC793F
                4033F95756169A937296C8CEA49A5644772348D16D2DEEBC417773E6DD8F321B
                4B355798A7FCF472C40507B7527E9CD6D6856B61796D35DD9DDB5D7866EEDE48
                B5113808D6C0216FDE0C9008382AC0F24715E79E37B7D66E3C45A86A97FA6DF5
                BDAC970C96EF3DB3468B18388D4640180A00AE5EA65899C9BBECC6A9A4145145
                739614514500145145001451450014515235BCCB02CED0C8217242C854ED63E8
                0D004757B4ABE16377BDC131B0DAC07F3AA3523413242933C4EB1499D8E54856
                C75C1EF551938BBA1357563A91AAB4C07D8ACA6973FC4C36AFE7493486CA3379
                7F22BCF82228D7EEA9F6FF001AC5D375796C311B0DF06795EE3E95AB2C9A46AB
                87966292631F33ED23F3E2BBE3579E37BEBD99838D9EDA191A7EA26DEFDA697E
                64972241F53D715BC16E6D17CCB2DB716A465622D82BFEE9F4AA9FD89A6C7F34
                976768F5751521D534FD360F26D3329CE428248CFD4FF4A54D3A6BF78EDF98E4
                D49FBA4B2EB504487CEB69E393070AE9D7F1AE56491A595E47FBCC493535DDE4
                D7B37993364F651D07D2ABD7356ACEA3B74348439428A28AC0B0A28A2800A28A
                2800A28A2800ADAF08C9A645E2FD29F5958DB4E5B9433895729B73FC43BAE719
                1E958B45007AC6A76D7D2453EA92EA36B7D1497063926B6BC4981720B7214F1C
                026A1D2747BDD5E52B6423DE19506F9563CB3676A8C919270781E86ABDBC2BA7
                782B44B208565B8126A1313DCB9D89FF008E460FFC0ABA2B0862B4F0835CB6E5
                94896E4329C6491F678D7A72312DC376C1415EAC6A4BD927D59CCE2B9AC6578C
                2DA6F0B7836EEC3549F75EEACC8B0411BF988A91B8667661F2E7202800E7E635
                C11F096BCBA38D55B4D956C8C5E707620131FF007F6E776DE9CE31CD743E2E85
                AF25F0CF87ACE3CDCC91F9AC4E7E696E1C051FF7CA47CFBD751AAB24F71AFF00
                9337CF79711E9168C416FF005B26DCFE11C6E3AF715C535CF2949BD8D93B248F
                3D83C0FE25BA8219ADF49966134692A2C6CACE51F1B5B683B803B8724639A78F
                01788D9C469696EF293B44497D03393E8143E73ED8AEFF0053D52DEDAFBC45E2
                160EF6D0C862860591944E5D8AA239041DBB54B11DF6E3BD67E9D7377E21D134
                BB99ADADADEF2E75096081EDADD610C83CBDBC2819C33101BAF0727229AA31E7
                506F5173BB5CF2D55677088A5998E0003249AEC745F016A8BAEE9C35CB38ED2C
                0CF1B5D25D5D242E21C82D942C1C12B9ED9AEE61B2B7FF00849EF353B131477B
                AD5E4EF05D10316D68ACC0CCADD99F6B36E1FC2383F366B2F48F169D5353D6D6
                D6248744B5B290C509851DE7762235795D97716CBEFEA31803EB9C69ED7EA539
                18FE2C104DE126BB5D3AC6D99B524485ADED6388AAEC90B2E54024731F527A0A
                E674FF000A6B7AA580BFB6B2FF00442C51679A5485188EA14B900E3DABBE7D39
                2F63D2C6A3113A469B6CD7F2C63E533CF2CA512339EA0AC2A781C286E79155FC
                4DE2EBFD26EECF4FD2563FED49228DA6716AADE4EF00C70428410AA14AFDD1C9
                38ED57562B99CB65B0A2F448E3AE7C19AFDAD94B78F601EDE152F23C33C72ED5
                1D4FC8C781919F4EF54749D0B54D766922D32CA5B968D77C8507CB1AFAB31E14
                7B922BD7AEADAE753D63C462C563819C0D3FCC541B544922C4EDB571D6312B1C
                7B9ACCBCD5ECB48D0669A0B473A459BADB58D99E126998330926C105BEE9638E
                725470294A8D9EFA2053B9C541E07D77CF04E9C976B19DF2416B7B0BC8EA3921
                42B31CE33D01FA57A0F8FAF64D27C397F05C3DE4B6DA8116F6764D09482CC2B0
                6008E8ACAA00017D49CD62F82FC73AF6A1E2511CA2CBC9486798BC7611234089
                131C2B2A82A0E02F5EFEA79D58349B59FC336D71A82192D22B97BE9A20C079BB
                311C319F66679338FE146EF446378B71F240DEBA9C4784FC1D71ACDD5A5E6A30
                C96FA1BBB07BB691620DB41E14B75F9B00900E39E38AEC3E21DD5D8F0B496B6F
                6EF79A71B88D9AE55D1ADEC82EE11C70A2B1D9C1C64E323031CD56F13F8AEFF4
                3B7B2922309D62FA2F3CCCF12B8B58324224684155CE09E070318C56969972F7
                9A968934C916755B354BF458D55250E595C950368CA80DD383CD38D34DB827A8
                396CCF35B2F096BBA8D8477B69A7492C12EEF28AB2EE976E73B173B9B183D01E
                9564F813C44AA3CDB38607C0262B8BC8629067D519C303EC466BBB86DA0B0934
                A81CCF6F0E93A5A5C5C342DFBC56D86770A73C3177201CE0122B3B4ED765F126
                97AD5CCB61656D6D6CF0ADBAC308DE8CECE7E6931B9F2AAD9DC7B0200A1528DE
                29BD58733D5F63CEF50D3EEF4ABF96C6FEDE4B7B984E1E390608E323F020820F
                70735A3A778535AD52C56FADAD145A331449A79E3851C8EA14BB0071ED5DBEA9
                A3DBEA5E32B75BF324967A36936F2DEE39DEC40758B776C99153D803E951F8B7
                C5979A4416D6D672431EA5756C249A589466D216FF00550C207FAAF946E3800E
                19707D73E44936F61DFA1CA9F02F887CB778ED209B6A972B05EC12B10064E155
                C92703A019A17C05E287C04D1E7790856F29195A40188009407701C8E48E3BD7
                A7DB248FE2A02EE64FB5DB58470C9294DC1AE9E3488120633FBE907A74ED5526
                D561B2D5BC49AEB13FD9F1F98A6257DA670EFF00BB8837501B1C91FC21AB5741
                5AF7E97279D9E783C07E2262563B4B7964C1FDD457D03C87D822B9627D80CD63
                E97A4DFEB5782D34DB496E67DA58A463A28EA49E800F53C577D06AD26B1A15AE
                ACF6F6B6976B792C23EC7179436A2C4CA703B82E79EBD3D2BA4BD36165AB6AB6
                EAE7EC10B4FA8EA6C9956B993716F2B39E80B2C63DF2697B04E2A49E9FE41CFA
                D99E69FF000836BC5B688EC33E9FDA76D9FF00D195147E0CF10C92DC45FD98F1
                BDBCC20944CEB1E1C8C85F988CE460F1D883DEBA3D0BC59ABF88F57BAB3BE586
                4B07B395C411C0163B5F2D19D1A3C7DC3BB0A4FF00106C1CF18EB6E255D47E1C
                40D70EBF6CB3BB658B27E6780050C7DF0CE833DB81E94429466934FAD86E4D1E
                3571A7DE5A6A0FA7CF6D2C77892794D0953B836718C7AD686A7E14D6F47B67B8
                BFB068A28E411C877AB18D8E7018024A9E0F5C577CDA69FF008589FF000904D1
                896D6D74CB7D454B7DDF37CA58D013EBE68CE3B853E86B79A49340F0A59A41B9
                F56D525336F0BF3463002E0F52D87E08E85DBB81850A2E57F5B039D8F2D6F027
                88A33B66B4B7B77E331DC5EC1138FAAB3823F1159FAB787F53D0FC83A85B08D2
                70C6291244911F6E33864241C64679EF5D76BBE34D4348F109D2F44DA96F6370
                63943C6AE6FA504AB993BB2939C2E718C1EBCD7A5785744D3AFF00C6FAF787AE
                6C92F7498649648EDE5F995592408A467BE188F7A4A9C649B8F41F334D5CF9D2
                A6B5B59EFAF20B4B68CC93CF22C51A0EACCC7007E66B7343F04EAFE21D267D46
                C45B948DDA28E27942C970EAA199635FE221483DBA8C64D5EF8796128F10BEB0
                E88B6FA3A35C3B4A3A4B8222503FBC64C1FF008093DAB249B762AE74FE239565
                D7AE21854082D76DA40A9D0244022E3EA173F8D697880793A7CF6E4E05B5CC3A
                72AAF453043BE427DCC972FF00F7C8F4ACCF0FC4B26B515CCEC05BDA66EEE19B
                27E44F988F524E0281DC915C969BE20F1159CF7923DB2DEA5ECC6E2786EE1DC8
                F29CE5C018DADC9E463F2AF46ACB92518A57B1CF1574DBEA7713E8D776DE3CBB
                F13DC46915859C58D3238E6595AE552311C4EA01E100024627A74EA69DA74114
                70E8524B18655B9BAD4E4E7B5B443CA1EF991CFF00F5EB9A8FC59E298C8163A7
                E9D611B2EC95228148954E410E5CB1239E99C703BD40351F121D5A3D455AC239
                12DCDA88842BE598892C54AE3072493F5AC1465CAE2A2F565DD5EF71FE2DB992
                1F07E9B6800DB757D34EE48E4F9688ABF87CF25751A5C034C5D1639C32AE93A4
                B6A122770FB5EE00C1EE4B20C7E15C66AB6FAAEBF34526A37902AC2BB218A084
                2C71A939385181C92727A9AD9BAD4F55BED3A4B3B9BD8FF7B12C334F15B224B2
                20C0DA5C0CE30A01F5EF5A2A751CE53B6E2E68D92B9B3730C93EA5259C200797
                47FB3D9A960AA775AED4033C739C0F7359D67A25DF85BC2525A5D245F6AD42E5
                5AE4C6FBBCA58D7E4889E9BB2ECC40CE3E5C9EC19A6EA32D869F0D8CF1417F04
                036C22ED32D12E49DA1970719278248E6ADC9E25D4258520716CD6F19DD1406D
                D0A447FD904719EFEBDF35A468CB9A326B625CD59A3435D9965D32E638F3B6DB
                52164E3FBAB0DB44A9F9B198FE26AB1F0D5F4FF12751F14CFE44D630CB26A160
                16456F3D53E6886D0410A802962463E523926B320D46E60B8BB9832B9BC7DF72
                AE819656CE72C3A6724E0F6CF153FF006E5D47C5B25BDB464FCD1C310C3F18C3
                6725872783C7349E19B8A4FA07B449DCD3D1AE1962B189A40B26A1797681DBA9
                9059C889CFBB5C01F53585AD69B7BAAF8212DAC51E49AC6FDE6B9B654F98A3A2
                2ABFAE14A30207F7C6692F35192E163133471C7103B111422AE7A9C0EFEFF4A9
                57C571C4E24B93637128000925E1F8E39642093F526AAA52BA777B8A32D8A3E1
                4D1F50D1B4DD6EF6F6D65B4696DE3B68BCD52A5C3C818E3D462323FC9AEA3528
                847A235942DB9EDA1B479477C3095CFE0AD385FA9AE767F1E236E8FCE80C39CF
                91F67DC9B877C30393C9E4927159DFF099AC57CF788F334EE4966D830D9EA083
                C60FA63159C1420ADCCB47729DDF426D77C2DAB6B7E268A4B7802DACD6D6BFE9
                521C4488B0A2B331F452A73F435D902A2EDAE2CB1009234D2F490EA588420426
                6C1EBB5371E7AB11D706B897F886E21F262D22CC2E73B883C9FF007395FD2B3E
                5F1ADFCB7AB78CB9B8560CAECD9C11D303A003D3A5669D24DEBB94F9B4D0ED35
                FBD17361E299EC10B35ECA96B06D206D88C9BFBF6DB105FC6B3FC37A7DDA7866
                C7499104325FEA8CDCF390163446E3B65A41F9D72F77E34D52EE258592D23895
                B76C8601182DEA40EA6883C6FADDBDBAC31CB00D9911398159E207921588C8E4
                93F5343AB49494D5EE1CB2B58ED1A5926B5F135D2EEDB73AC2BE73D61024F2FF
                000E7F954327826FF5CF1858EA52C21B46963B6FDEC5221694A4280C4ABBB3BC
                B295F6EA78E6B8AD3FC57AA69D71E6A4914AA46D9229A30C922FA30F4AD29BE2
                0EA1E532E9FA769BA5C8CC0B4D68921908CE71991DB03E98ACE53A6E3CAAFA14
                94AF73D23C3DB25BFD6354BCCC5289F7E1790197CCB823201EF0019F7C67915C
                96B7A55F5E783B4FB7D3EC65B99AF75077731827688D02A03DB932C9FF007CD4
                FA1F89352D774BD6EE6582CAD6D618638D96D63285E692418639273F224A3A81
                CF039351EB7E261E156B3D3ADB4BD3AEA67B349EE249CCDB83C996504248AB80
                8C9D477AD6738CA0E4FAFE84A4D3B1A7A66976BA269B670DC22CD06961AE6F88
                70CB7174E01F2108241E1110E38F958F4A35BB696E478C6DA0477BA9D0BC3B73
                FBC4FB446E71EB95E7E95C15CF8CB54BC6413AC0638F8489136220EFB40381F5
                ABD6BE3FB9812349F4EB6BA110C4664665641E819086C7B6714954A7C9CB70E5
                95EE6BF84B43BED274ABC9A6B62B7FAAAAD9DA407FD6797B8348FB7B02555413
                FED7A56B99C5D6AD79A35B48CF67A7E8D246B3042125984C934ACA4F51F26D07
                B8404715CA5C7C42B9996458F4F86D84ABB64F26462CC3D0B36E6C7B6715BDE1
                A8B509E54D4E5B2B9B0D31232EF79711623910820AA6461CB0240033D79E29C3
                D9D9252D9DC4F9AFAA362D2EB4FBBD334FB59048AB6C8D3EA7372730C4D23220
                1EBFBC71EE5D476A7D8EB8DABDE784B5CD4A65F2FCF6138E8B0117723ED3E802
                3C7F862B0F5ED4ED743B6FB34AA60B9D44FDA24B74191043926343DF9FBD8F40
                86B2EC7C576B6E1A25991E19082F0CF1928C4743EC7DC1079AD7DC72BA977D3D
                49D6DB0CD03C25AB5BF8ADEFB5986682D74AB9F3AEEE2746C4CE8D908A4FDE67
                2300FA1CF4ADBD57C4DA9F83F4EFB459DF3DBEBFAA4826660AA5A38393960738
                2ECC0818E899EE297FE129170A9F6682C95A3E51959E5DBF4123B01F80AE1FC4
                D7A977A83B3132DD336E9A7724B31F424F5AC654BD9D27AEE5A97348E9FC2DAE
                41A8E9874AB8B85B3B98A6FB4DB4A06D40F800E71C8C854E7B151D8F1BD776DA
                B5E205BFD66D1E00DBF326A2920CFF007B6AB1627F0CD790C723C322C91B1575
                3904574B6DE21B76B60D71959870555739F715742BA7A49D98A706B63ADBBBBB
                5B7B26D3F4E67747606E2E1D7699B078007641D70792704E3000CBAE766F1336
                4882DC01D8B9FE82B3E5D66FE5CE6E0A83D90018FEB5ABC5538EDA91ECE4CEC4
                903A902ABC9A859C470F731023B6E04D71524B24ADBA47676F5639A6562F1AFA
                22D51EECEBDF5DB040712B391D954D566F12DB0FBB04A7EB815CCD159BC65465
                2A5137E4F13360F976C07A166CFE955DBC477A7A2C2BF453FE35914566F1155F
                51FB38F63424D6B50933FBF2A0F65502ABBDE5E301BEE26C1E9973CD6BDD68D6
                F69A2BCCE1FED0A1493938C9EDD318E6B44E8F0CB144976AF886208BB49C7032
                4F4EB9ADFD85693B37A91ED20B64720492492724F52680A5B3804E064E2B7F4C
                D12DEE34F59E766CC81882A70100FC2AF5A6996F6C9771FD9E6FBA63DEC79946
                3270074E9510C24E566FA8DD58A391A2BA2FEC7B78A0849B59E79C80B2223636
                B119249EDD454F2E81669006549CB4792CAB92CF81D071EB8E68584A8C3DB44E
                5A9482A70C083E86BA85D3EDD2C44A34F93CD0E1FC838673D80C91F77A9A4BCD
                3AC3CD94CA64795E39262FBFEE631C7BF34DE1256BDC3DAAB9CBD15AF0D9D92E
                9315F4FBB20BA94C91E6376C1EC2B46D6DE31A108C5BBC8CE048F146DCBE4E17
                A8E0719F6A8861DCBAF4B8DD448E5E8AE966D334BB77689E394B089A7621FEE8
                0718F43CF152A68560C9E73AC88194129B89F2F8C9E71C9FAD57D5277B5D0BDB
                448FC37E2B8B45D3EE34DBED305F594D289F6A4E61916450541DD820AE09E36E
                79EA2B2B5DD5E4D77599F51962488CBB5563424845550AA3279385502B6E0D2F
                4E32BF976E5CC0FB0E5C90E42E48C7D48AA575A5DAC56D70FF00679A3D910916
                566F9771FE01EB4E586A8A3BE80AAC6FB181457531787EC96D91A62E5800CED9
                201E3240E3A63BD476FA5E9F752468B6F2A192112FFAC2428CE17F3A5F549E97
                683DB44E6D1B63AB601C1CE08C835DEDFF00C4C6BA78EEE2D1205D4C72D3DC4E
                F346A71FF2CE2380A33D031602B1E5D2F4F8ADE6B992D654116408DA4C17E400
                7DB9AB0DE1FB0E3E4940DC0F049FC3A74F7AA8E16AAF8589D58F5396BABA9EF6
                EA5B9BA99E69E562CF23B65989EE4D455D62F876D4F981E2747392A03960A3A0
                E714DB6D374FBA826F2ED9D231295DD92CCC17B8E32064F6F4A5F539ECDA1FB6
                89CB0DC3E619183D476341249249C93D49ADDD72D62D3ECA3B68036C926321DD
                CE080062B06B0AB4DD3972B2E32E6570A28A2B32828A28A0028A28A0028A28A0
                028A28A0091A799D3634AECBE858914BF699F18F3A4C7A6E34514F99F71590DF
                364F2FCBF31B67F773C7E54E37570482679491D32E78A28A39985907DA67F9BF
                7D27CDD7E63CD1F6AB824133CB91D0EF34514733EE1641F699C36EF3E4CF4CEF
                34D32C87AC8FF776FDE3D3D3E945147330B234FC41F25FA40BC45146A1147415
                9AB3CCA41595C10368218F4F4A28AD6BB6AACAC4C3E14219A520832390460E58
                F4F4A77DA67E7F7D272727E63CD14565CCFB956422CF329256590649270C793E
                B48D2C8E811A462ABD149E051451763B0BE7CDB42F9AFB40C01B8E00AD1D0E47
                37CF9763B606C64FA0E28A2B5A0DFB489135EEB339A795C10F2BB67AE589CD2F
                DA6E063F7F2F0303E73C514565CCFB956402EAE0749E51FF0003348B3CC83092
                C8A3D03114514733EE16435E4924C6F766C74DC734DA28A5B8CFFFD900FFDB00
                43000302020302020303030304030304050805050404050A070706080C0A0C0C
                0B0A0B0B0D0E12100D0E110E0B0B1016101113141515150C0F17181614181214
                1514FFDB00430103040405040509050509140D0B0D1414141414141414141414
                1414141414141414141414141414141414141414141414141414141414141414
                14141414141414FFC20011080138032003011100021101031101FFC4001C0001
                000301010101010000000000000000000607080504030102FFC4001A01010003
                0101010000000000000000000000030405020106FFDA000C0301000210031000
                0001D5200000000000000000000000000000000000000000000219623A8F460A
                FEDC51D9B8F8FAED47D4DAAC969D09ED0A337D00000000000000000000000000
                00000000000000000000000000000000000000000E1C9CE68DBA75ADE86595A4
                B229CB2483BFA1C4939805C8ABFB714960EF4DE25C9DD5940000000000000000
                00000000000000000000000000000000000000000000000087D88F247D0D1FAF
                8D2D8972CAA537E80011A9B8CE9B352B6BB0E93C4B973E758000000000000000
                000000000000000000000000000000000000000000000000E149CE35FA5CFEAF
                1D6B8F9DBDD98FA039BDF9E3EDDE87D03F0A1756B501B15354E05EB4A8CC0000
                0000000000000000000000000000000000000000000000000000000000C8BF41
                461F6A3D97F37A1DE87A00416D47EDE3D96C1D80066FD9A951E8D7DAFF0031A3
                D6E3A00000000000000000000000000000000000000000000000000000000000
                015CDB8B247D150D3F897ADDCD980029BD083D9CFB685297D1E7A00F2FBE629F
                A7CEB573E7D198F6C00000000000000000000000000000000000000000000000
                0000000000000657DDA513B3C6D1F99D0FE800416CC708B5158B4E6AB2FC17FE
                4DA000A2B52B517AB5B737CB697D000000000000000000000000000000000000
                0000000000000000000000000C31F519B7AE5D9BC72EC8023B2F193FE8296A4C
                1BBD1E3DCD3B74EE2CEB168D198011A9B8C51F4F9DB2FE6B42655E4000000000
                0000000000000000000000000000000000000000000000000073FAF3097D5E66
                BCF9DBF6054947E158DD8733EE53D0F8D6FD5CFBFC931AFDE3BFA4CFBB72ECDE
                D9567D1E7A3F93077D5E669CC3B96C509C000000000000000000000000000000
                000000000000000000000000000011E979C47F519BA670EE76E2EA21638AB2FC
                10EB51E84C6B768519AB0BD0D8152587588E53077947E828FA79F6D8CF9E7156
                5EA71EE51DFA3A1F1EDDCF9B6000000000000000000000000000000000000000
                000000000000000000001CDEBCC29F5798009A559343E3DB97D79323FD050D17
                8B73BB175993769E87C7B5D98FACEDB152ADBF07CFD01A6B0EE5C79D60000000
                00000000000000000000001E7F7CF37AE8F3E800000000000000000000000000
                01585D8791273EDE7D99D6924D0F70EB11E5ADDA56FE758EAC7D7AB9F7B31FB9
                4B7E9690C5B76E509F95DF306B51F1E4E7D9CFB64D39BA3C7A00000000000000
                0000000000000211663CFDAF56BEB90FCFD4960EF4BE25CB06A4A00000000000
                0000000000000001C9EF9F077E7CC89588EABBF0D5F7E0B8736C5B59F3C42C71
                635396A3D0825D5FBCBDBD4A5F5A5B7F3A79B5593A1CFBFD79EC862E80000000
                0000000000000000000052BA55F37ED53FE3D003D7CFBB3BE6B42490F6000000
                0000000000000000000086D88F1AFD2E7FE03B5175A0F1EDCE6AC994F7E96C3F
                9CBFD0E7DC99BF46DACF9E4D0779B76AA41EDC40684C7B77CE55900000000000
                0000000000000000ACAEC3943E828FE1DE87AD418576715A4AE6E4596F7A9693
                C4B96F67CE0000000000000000000000000014AE957F0F7E4CAAC9605592AEBD
                0E6CDAA9A4716DDB342711D978C6DF4942E4CDB17EE4D98D4DCC02E45C8939BE
                F26CFABCF400000000000000000000000001F1F7CC4DF4D9DC19B9FE8D91F35A
                133AF2015F5B8A655A4F7F3E80000000000000000000000000008F4BCD43A35E
                AEBD0C56C47A2F1AE5DF99600108B31E4EFA0A3F85AB427B5B3E69F559400000
                00000000000000000000005597A1CABBF445874A5D75F3F7C000000000000000
                00000000000000001F333AEC54A4756B4B2B49A331ADCFEA4BF507E1169F8A13
                56AD4FA304E2A4BAB706EF623E8000000000000000000000000000659DDA5546
                840349E25CBAB36C0000000000000000000000000000000000AFADC59F75EAC1
                6DC5EAE7D90C3DFD7C7065E79B273DE87BBDB2ACDCD9B63FB000000000000000
                0000000000003C9EF9F1F5887EA337C3DF8369FCC68F7A2EBD7E7BFA00000000
                000000000000000000000000008E4BC40ADC71E9B8F9FAEBC7D4D6AC937AD27F
                40000000000000000000000000000CF7AF5686D6AA0000692C4B975E6D800000
                00000072FBE6ACBF0DA9426E9F1D000000000422CC79C766A68CC6B739AD201F
                0F7CC99BF4B40E45A9CD69000000000000000000000000000000000000063AFA
                2A107B710000FE8D7FF397E7956500000000000511A95B3CECD4DBBF2FA5208B
                A000000000A96FC14F6957D458577B31F4053BA107324E6F3CBB3FD000000000
                0000000000000000000000000000385273C8939CB5BD4A373F034D615C9045DF
                AB9F6735A41E6F7C8DCDCCB60EF9FD7915B11CE2ACB5F5B8A333F12CAFDCF6AC
                A07F2426CC71E9B8A8B46086D98F73FCB697E822B3F10BB31FBF8F6490F72983
                BFE81CAEF9815B8FC1DF33EA92F4A3EBC7D79DD8FA1FC903B514667E3A91F563
                D397D3E7BF842ACC72187AF175E57B722F4F3EDA1466F5F9E81E2EBCAC2F43C0
                9789243DF722EE7756486588FA9C7BF6F3DAA6FC1FA5BB9F63A3C7A393DF3585
                E87892F32087BB5684DF42096A39AD693DBCFA3C7D7909B31D81525FD2BFB714
                1ED47FA5894E59A569000001CDEFCC2FF5399FC7AF4F3EEECF95D2C59F4B9F22
                87BD73F3F78656DDA55CDD8775FCAE9E66DBA74FE957B0A94D2D83B83DA8A116
                A3D81F397E7B5658C4DC65EDDA761D396575FBCD3B74E7B525D67817BE3EF999
                B6AA0B2E94D4CE956AF2EC5B83E5B4BB71F59F75EAD45A15EE7CDB1F7F3D9557
                EF356DD4EDC5D6C3F9DBF1E978CA7BF4A69564B06A4B416B55FB79EEC8F9CBF0
                BB31E3DFA3A12FAD248A1EFAF1FB4BE9D7B773AC6A0C3B821B623CBDBB4EEECB
                B1208BBCCFB74FE4F360FCEDFC47F519D63D19BE5EBB917550E957B029CBAF7E
                7AFD597A1CD5B74EFCC8B5DF8BACDDB54FAB1F5A371ADE3EFA3A175E5D9D258D
                6C65DDCA55E5C8B687CD6865DDDA7F2F7CBD72ACD75722A3F56B6AAC0BD69519
                80000AAEF4395B7E88B1A94DA7B0EE61BFA9CDD038F6AFCCAB43137D3674A20E
                F58E05EC85F43420D6E3D93F357E5B04951E84197B7696BDF9DBF2EAF262FF00
                A5CEBF322D5CD9D6399DF385BEAB36FF00C7B57EE55ACCDB54FE5EB4F625C194
                77A8C2ED47B8BE5F4B3C6BD5A5352B6CCF9AD09343D8F87BE60CFABCCBAB32CE
                86C7B58C7E973E69564D498774539A35F32EE53D6FF3D7F95DF39777A95E9956
                744E3DBFC3057D5E65A7426D47877797DF38BBE973F4D61DCB2E9CDF8615FA9C
                D9D5592F9C9B58EBE933E410F7B3FE6B43DDCFB8D7E8F3E1D6A3D95F35A18E7E
                933F43E35BBC332C8A1756B67CD8A9AE7E76FE4BFA1A163D29B58E05EF2FBE61
                9FA9CDBEB26D44AC475F5C8B6C7CCE8FB39F7F83077D5E64DEAC9AF7E7AF8000
                199F6A9D35A75C68AC6B72287BCA7BF475E7CEDFB06A4BCDEFCC2BF5599A171A
                DDED97670A7D5665894A6D51857450FAB5B3DEC54DD7F29A7436B55AA6FC1B77
                E634BFB2B3BB0E4EFA0A3AD7E7AF7BF8EB1E7D267EDAF97D19145D8C37F519B3
                9AB2E8BC6B789BE9F36E7CCB3A4B1AD810EB11E33FA5CFD478377952739C76AA
                6CEF9AD097D790533A35F346E53D69F3D7ABDB91523A95B747CAE9F479F793DF
                3863EAB3745E35BBCB2ECE72D8A95B5D876B7CD688E1C9CE1EFA9CDBF322D776
                2EB336E53D318772E5CEB0322FD05083DB8ECCA3355F7E0DD3F2BA7EDE7D143E
                AD6CF5B1535CFCEDFCE3B54FF0DA7F35A351E8419A76E9EBBF9DBF8EBE933EF5
                C9B3A1F22D8FC3067D5E64C2B49B13E76F80001893E9B3A3B3F0367FCCE854BA
                1051BAB5B777CAE9FB39F6AFBB0E52FA0A3AF3E76FF7A1EB12FD467693C4B975
                66D8194F7A944EC47B57E67470CFD4E6DA5426D2F8B70674D8A946EAD6DD3F2B
                A59CB66A422D47B63E674447A5E711FD466E89C6B7E8F3DCDDB54F56FCFDEB42
                94C0537A35F336E53DB1F31A39976E9C5AC71B9FE5B4BF419B766A52DA95B71F
                CB6965ADDA5E0EFCD99F37A02B5B90E4CFA1A3B03E72FCEAACB863EA736D2A13
                698C5B82B0BB0E51FA0A3AAB02F40EDC5496A56DD1F2BA5D4E3A1897E9B3A410
                F70DB31C8E1EB64FCE680198F6E9D3DA55F71FCB69673D9A958DE87797CA69E4
                1FA2A12EAD249A0EF376DD3D63F3F7ACCA530E249CE1DFA9CDB8F36C69AC4B80
                0023B2F1893EA33875E2EB72FCBE9641FA1A1E0EFCD9DF37A032EEE52A97460D
                D9F29A75CDD872C6F52D89F37A139AD20C41F4F9D3DA925F1956B167D367689C
                6B77A65D9FE0C4DF4F9DFC9B7BE63470FF00D3E6C961EF5DFCF5F1466A56CEBB
                3535EFCEDFAEEE45436B55D77F3B7EC2A928199F6A9D55A106EBF95D3C43F4F9
                BD98FAD8FF0039A03F93137D3674A20EF58E05EC25F55996A509F4DE25C1416B
                55A0B5AAEEFF0094D3E24BCE28FA7CEBE726CE84C8B63346D53A674EBED5F98D
                1CD3B74F8D2F3B5FE67444765E3127D4676A0C1BB97F7A95A1427D5B83747E18
                8FE9F3BBD0F5AFFE7AFE7FD6AB416BD5D69F3D7F277D050DAFF31A34F6941436
                B55D9BF33A33083B150E8419837696BBF9DBF615494000533A35F346E5316D67
                4FA8F0EEE11FAACC965793617CEDF805A8B23FD150EBC5DEE0F98D1CEBB1528D
                D5ADBBFE534FDBCFBC6939C37F539BA2B1ADD914A6C5BF4D9D7166D8D3789728
                ED3AF9E3669D8F4A6D63817B0E7D466FDFCF76BFCC6846A7E7306E5385DA8B74
                7CAE9412D4794BE828E88C6B77AE5D9F3FBE793D643FA2A1EBE7DD09916B3C6C
                55E5F7CE95C4B9C7979E7F5E67ED8A979655AEEC5D662DDA57466589D5497D9C
                FB4CE9D78F4BC6A4C2BBCFEBCC89F4742D2A13EABC1BB09B31E5BDDA51E9F8DE
                7F27A7867EA736C8A536A6C2BBFC996F7697264E75AFCF5EC53F4F9FD58FDD8D
                F39A1FA54D7E0CC5BB4B617CE684D6B494F68D7CC7B94E4F0772AAF26ACC1BB5
                1E84197B7696B1F9FBD66529BE1EF98DBE8E84861EB57E0DE000032AEF52AB2F
                C034F615DB7F3E7C97BF46B6BD0CAEB493EA92C56C47EEE3DD61837B2EEE53E3
                49CEBBF9FBC2BDB7165BDDA5ABB02F4DEB4995B76955BA104BAB497CE4DACEFB
                152E1CEB17B6559A2B56B503AF53AF1F52FAB2F578F6BEB915914A68DCF1FF00
                1E7B0AB714CAACBFC3C975792B7BD0C96BF75DDE866F525E0CDC7622EBEDE7BE
                4EBCF6F3EC1ADC53FA5346EC47DE83B835C8BBF0F7EBE3DEEC5D5717A1E871EC
                9EBC908B714BEB4926AF2793BE627638B433E7A475AAF6A2EA495E4E7C9CFAB9
                F7952731C9F8B0294D0BB714B2B49FD78E2CBCC861EE25663FAF897D692B8BD0
                FE16AE758F9F5E7AB94567E3C5DF9706758AD2EC3ECE7DD478577ABC7A0003F8
                30BFD4E67364F06E2F96D2EDC7D7E11F978F7F1D74B9F7F01FA0000F17BE70E5
                E7872F3C497982DA8BC5D79E4EFCE4C9CF0E5E78F2F3FD78985693FA7B0FB317
                B78F7DFCF51E9B81FDF897D693FBF3D10FB517622EB912F3F1F42430772483BE
                CC5D793BF3E875E2EBB31F52AAFDF9FA7438F7A3C7B2683BF9FAFA78FBF9EFF4
                452C47E9E7D9343DFC8F9FBE56D762CA9BF474B61DC995793B90F515B1C7065E
                78F2F3C8939EBC5D787AF39FDF91A9F888598FC5DF9F2F7CFB78B0294DC5979E
                14DC783BF07478F64D5E4FE3DF3FBF3D88598FE7EF9B0FE6F426D5E4F87BE7E1
                E8F3D102B5163FFA3A026D564D8FF39A000F89C8939E34BCF1A4E78B2F3C5979
                E249CF125E7892F1C4979F0F7E00000000000001EEE3DEF43DF7A2EBBD175DD8
                7BEE45D7722EBB91F5DA8BAF579E8000000000000033EEB55A135EAEE2F96D2E
                DC7D00000001F87C3DF219638C93F454353E05EFC79C6979E14BCC766E22B638
                8B4FC7C3AF05D5976749E35BE0C9CD4DA10577761D4B8377CBD3296FD187D98C
                5C59963C9DF9C8939E549E71E4E79B273F8000000000000003A31F5DF8BA9043
                DF7E1EA41177DF87AEFC5D77E1EFA3CFA000000000000000000001923E828C22
                D45BB7E574FF00400000003872735268414AEA56BDF26D5D59B600007C3DF217
                678815A8AEFCCB1E9F3DA2752B57F6E2AEAF43F87E005874A688598F97272000
                00000000FA78ED45DF762EBBD175DD87BEEC5D77E2EBBD0F7DF8BAF773E80000
                0000000000000000000000501AD57D7CFB7A65D900000000567761ADAEC36F67
                589BD69000000000284D5AD10B11C1ADC5C7939955793BF0F70CB5171E5E4000
                003F4ED43D4921EE450F72287B9043D77E2EFBD0F5D98FAFA000000000000000
                000000000000000000000000000000000000000000CE3B152B9BB0F4F8EA3737
                1C79790001D78BA98D7925D5A49657EE530772783BF5F9E8000000000007066E
                3BD0F600007125E3B7176000001CC939E947D7E800038F2F3D48FDFA79E80000
                000000000000000000070A6E3BB0F6001F8666DAA74E69D703F4965692C0A92C
                EEA4938AB2F763E800000000000001CA939F0F7CC8E092A4D3AD3FA530EE43DF
                165E3F4F573EC7A7E21F6A2B6F32CF8BBF38137124AF246AC472FAB2C4AD45F7
                E7DF4F3EC2AE4563D09A2F62396D597C3279D38BAE54BCFAB950FB54EDBCBB5D
                68BAE54BCFAF8F7972F331A92C4ED45DE83B8D588FBF0C95F5E82C5A13F364E6
                4B5E4F0F7E7225E3D5C75CC978FEFC75E2EF89371D68BAE6C9E7A7978BBF24F5
                A4895A8A515A5E0CFC7423F78F2F3F3F5F6F1EBE3DE5CBCCEA9CC0003F9336EC
                D48F4DC5AB427B2294BD8E3A00000000000000003F0A23669F325E74460DEA8F
                52AC7A7E3FB2E4C9B5426D53F5F3EC92BC9C99B8F7C7D4CEA4B07B9158B42689
                598E037E0935596C5A33402F43ECE3AEE43D56BA15ECECEB3E6EB9EE43DD6BA1
                05919F3FF3EABBBD04DEA4D09B717DBC73A4E7B3175C2979F375E3D58D9F3C22
                E4336A7372E5E7952F376E3DBCDBF4143E1EA5B5647A9B529A9AD7A970655A86
                DA8BF7DF399DF9F1F5FC7BE4E69CDC9979855B865D56590C1DF165E6296A2F4F
                3EE83C3BBF6F3D000000000000000000000000115B31D7F760FBF9ED999F628F
                D8A72DA92FEFA965592156E29A549AB3D1AFFC3CF7F1D7324E645077D18FA8CD
                88FC7DF92283BF6C7D7E7AE04F1F463EBEBE7B2183B90C1DFE15F5E86DBCCB35
                868D7F571EF1E5E7912F36DE65982DC8472A5E6435FBF277E7BF8F63763893D6
                921B6E29141DD939F3D23B1527F467E34DC7C89241DD33AD566F4E6F0F7CDA39
                B62B6D083B50F7F6F109B911E7A39EA4B5FBFE3D47E7E3C7DF3DA824B8F2EC80
                0000000000000000000000000000000000000000003E5EF952E9D6B7F2ED0000
                000000000000152E9D6B6B32C8000000000000FFC40030100002020202010205
                0304020301000000040503060102000714101311121520501640601721303122
                2523333524FFDA0008010100010502FCE36B72C4DC61D9E4C992ADADCCE4A691
                3F239A48B83D8598B903B21A0DC55D88B4EE4726B369FC65BBA1120CFEF4737C
                F165559B6E09D5B36D8D3ABD7E39B7582CCF0AEACD78C688DD7E36D73A6C9AC6
                72292BB6F0EC1AFF0017B25920AE88CDA12E0B529CA744A0A282A31F737AE80E
                F4B1D18B4B8D37DA3DE9976FA8FF001674E2146BDA339DC1B5DAF4F613552919
                309EAC4CF0015664D3FDB71A3633AE339D7348B57D6C6FE2975B0E5E345ABA66
                A6A54F02303ECB4CFF000C7B9882D3F6F6055B01EEBCE95618A9946DD7FF0012
                BDB9FA4A4E75EA0F017FDB31B8737FBD4DBAB9879F42A0FB091E32C776AF74CC
                FACDCFB44FF12EC763E5BEACA8FAD39D75C6BAFD96EB0EA816F592EDBDAB52DF
                AAA1EBAB27C3EEECE55F3C0B0DD96B08F7C49A7F116C579AD3ABD7E340FEC78F
                06421924996C75269A57D460DF95E5D92EC8DD53EE1A3A8BECB205F5045CA795
                E656FF00883197C75FCA1C3ECD5FD6C37B0D4E193425B9541ABE5640C8EFA9DD
                6E656C9D9BD4F0D8D514310A8DADF62FF68278CA8BD338F9B04C5EC11D6B37B9
                5EFE2161FF00E0F2B5705212497B052C7837B4A3C61B5B99B8C6319DB34DA37B
                39B1BC8D02CEB6137226B92DFAA57FAEEC582C4B554E1B1407AF21612B5C9AA2
                403B427D383F63A89B1FAED1FCAC25D673FABBFF0091FC419C3E4AEFB13D4193
                9CD7A96122E316302A11DB826D6DBC7D6BE9F62FDA7F645D355AC357B3C36115
                BA411E0EEFAF4F5F9DE3DA2DFD7AC35DB54DF889088A1E68C45933F872FAE941
                39FE972FE41D68AA2C815A58B7D1F5A42411BDB0956027AF2B1ED6373BEB77DB
                DCBBADDEC49E1B6248A62549B5BBF8ECB1C35506C704F5D279F99EAE5FC1FAD1
                54595EBE05627E19FDB814186D7B68CF3249B4BB715D8D827DAAF6F82C3A7E14
                F6C22BE6B6553B724B4A88B06F642A1F0DBB118B0C6FBED26D4EA4ECC36B7D87
                4AF2CEB25DB6A2D996FD591F5DD93DACDC699ABAC4D0C834A9ADEC92F00ECE0E
                5E41724C463F522AE41615A513F86B95DFC0CEFBED26FF0060A54A1115E6FABC
                53F84B6A6FADA5FF005EAB5318DE4AEF5EC0BB2F9F8D5F12498CB6BB5E146B42
                E5E12EC95D536E5A378EC1550EC1A3BA7B1499F5EB349F2E9F85BC59BE881673
                F1CF12A521E9A9A92B54E9EC47F0B0D1426D1181CA013D651EFA22FC2BAEB8D5
                8B283AAE3C640A0A70B91C718F1D83B00459860C486C5512AF95037A3E4B13E5
                C70442936B5D89987518A84D858549533C95D5A2EFCC755C9F30A34610DF849A
                5D6089E35DDD34E6BAE76CD510EA855FAD929C3D8A700189689F8676EA344219
                DA7C6D6A64E79A69B49BD3A8BE1EDF659EAF0588664AC950500D0B57203D9E64
                3AD7EE105866FC3762B3F0917A5116FD46C3F8CDE3D65D2D540DC6CFFAE56DFF
                00E9E356DF14B0C472E936BE9FEB8C6D2AD5F2D9758DF41CAE54CBB04AA948C9
                84FC376431F2DE7A7582FF006977E39FD28179C6F4B66A33C80A985CC56B6F0E
                36B7B9DF043330BC7162239C6E8BADE0179A69AC7A7E17CB8392B01A188F2F63
                CDF445A0EAD3F9907319F8FE3D85756B4E13D64B65CEFD579F8E3AAE4E0FD5A2
                EBC06949C0CEBAE34D7F0DD8B6397523EFEB03669C1FD831643A9177ED0031BA
                D630B60BFCB6BB26B5C024BB3A925A73A99EA7F59E6D478585EDB164D35818CD
                1FE4AED1EF1D9FEED75CEFB5311EC8D3FEC3B526F841CAF89E0A4FF2DF6B453C
                8C2A1B82A74EAE24CBFD6DD3376DCAFF005BE20935D71A6BF92608C06BB7E8D4
                BCB1E07D1DFA54EA2BE7425D6EB806890441EF7A104C424515B144C470D6032D
                8B4BBA5927F9B18D58DF142FDBFAA217C555D95B693D739C6B83AEA9C0DBFA96
                A7E6BC3F81F3054279ECF1FDB1E8CAD0B14E64ECE57AEC2762A8273BDA9447B6
                BB636C7A1CD4359A91D8EA21E6BD9EB3394D6009EE8531141E04F00652FA6DB6
                34D4EBCA7076CF682EF889D8AA09C8E4C4645CCE7E1C26E8984CAE682B681A58
                004D89BB3D7EBB0BD96AE7D852E1361F52CD80084DECB5B06DFD54D7E603B216
                15B0B7650619C2EE29C2D953E05DEACDC089E127B485D3613B446DF60188ED06
                F462D8453117D9E0C59FEAAE7E217662E9F614B84E8679E31A1FD7C931B086C0
                7C1E851708306B7D49B49AED8DF5FF005C677A52B369BB534C661ED48F394F6F
                5AEB6FF0322F002FDF6CEFB7051F62C91E1D4682C0CA46ADE823EF3D9BD3B159
                484BE045D8E363D3DBD3B3A7DB777C29DB1B2E827571324565AA115BDB948632
                32AF71F5806AF8ADAC6CACA427EB2DA48E5EB455BE8741A8C6F5E89E4D9792CB
                A0F15A2F93B1DEBFD7A4338F1D6CA311DC6B30D6E7E221B60D2EDB634D6CDD87
                B6760C136C0703D5DA7B65F56C19D6A74FFD3723F2772DD5221DA6B3F1DBC190
                86F6D26BF92BDD773308A5EB555BC560AFCF5E32B7629EBE6C13E84C1789F61E
                AFC4B649D106AA8CCDE7197599220BCEB663240E7D2CB6582BA2493B2B6B355D
                681411CB404926AFD7C4A9C241B2638B0CBB428B94B663A49475CDAF07B1EB53
                831B94A77BA873CB7DCF4478DB72DD1C9BAD468A233AF13910BB4D3A23EAF639
                6BE7DC61C30AAF3ABCADB565E9D90D7629C285BBB765BC83255D66B992F37ABD
                3E7B0ED075F258A3B5D034046C673AE68B65D9D07F7F631DE2D7FD2800F99647
                25F80A79D5A17FC7D2C85798FBAF42F2AC7CBD93E459E0837267ADD760AF03CE
                CDF97E81CA18D91AB0C4F89584E5BCCECFEBDADEA209C685F80BB39F8E7AB04F
                EDCBF5A32713D7D5CD5917E9D8A5F9363481FD41BF3B0AD19DE410590D26BE8A
                14007A4F2E21877DF326FD5C27CE7944C618F60792BF63D7D5FC343FD3B3E1C6
                C9B9D7E46D3D67B2C9F690F3AFAAF1938F423E199FAD06F75F719B189502D9A4
                CE4FA357F09D5F33FDB8C89F318F5E0BE4596EC478D58E215123C660850AE179
                710F506C9AED9D76B1BDC234D34DB912F5B21C4437A7698F8F6F94EDFEA35196
                2CC32F5DCFECD9B8513A0631A56E717D649FE486FF0062CB13D3ADDDBB20C488
                0179BEB8DF52A2F609A193B0F67FBFB38EF79AFA75703F209D8C5F8F5DE5103F
                12B5C645E015F9CFC73D5A27C20CE7E18624F9AC3AE17F96F7D3B4CAF8438C7C
                72B85C04076639F72744BBEACDF4D71A6BCEC337C5AE73AF84F16B57175F444B
                FEF35E5B8509FD1C97E7B6EB80FC8B0BF6784EA24DF6977EB25789CEF5B815E1
                D6F9D6A27B287B35B661139535BF4A43E9DA12FCAA39D7B17B758ED22FE62E38
                F69645C1EABC0E362BC257CEAD13E50F9D98E7DD2AB2BBEAAF7D1E93E1A6E756
                0BFF002ECF23DB4FCEB455E3ADF4BF49F3DA4383CA2FB159F96E60876226085D
                010FD3B525F843CA0479D2AF6B1BC4B1D567F1AC5CEC86BE227105DCD299CBA5
                5AAD9CFC73D5CBFE69FD33FDB0549EF1349D3E7B47DF613BEA4EFD2A60FD3ABD
                DA467C48D34CCBB843E03139D887F895EE50C4F16B3622FC245CEAF13DB59E9D
                8C5F9162AD09E73FDF6C47A343B664C7AC04F75AFA7689DF397C562F82B7B259
                794EAB42F9AFBD2C277D39273AB44F945ED12FE45FCEB91F10D6FD7B3CBF6947
                2B6278286F45E4BB32A17CD678FEDEBDA067B8C75C676CA70BE9CAEF6579566A
                809E6593D3B08BF16B5CA389E1D677DB1A6ACCDD9931EB01BDC6FE9D88678D5C
                E75B8DEC577B489F9CFC633B6558785EBBD2C6579AFA86079D62644F9AC29A3F
                9566F5ECE2BDD73FEF8943FA7A9ECA1FDAB08D378E4EBB7CDADD9AFD55FF005A
                27F20DED12BE45DCEBB1F1056BD1D95E127E75885995BFDD623BE9A93D1405F5
                1698C7C31792FCBB35445C1964F4EC869E638C63E395E360303B24AF62BDCA48
                BE2D67D1F15E6BAEB413DE7B6A23C5AEF3AB35C78BCDF7C47A5819FD61C2017C
                D77C7A464B7541C63369F4ECE6D8D06E5105F16B3DA98CFBBCA0E7E355F5ECF2
                FDC6EBC6F34FC63E5C3ECE72F295AFCD68F4DB6C6B8B0B2FABB9A125CB475B67
                1AEA713E61BD622FB8E7D3B4CAFEDA699937120C0A2D9A7C8F5FE7557FEDF4EC
                C69821972B03F8D5EBD95E559AB22F9AFF00D2C2CB0A13F284972BD1F3AE35C6
                6C9E99CFCB87EC3EAAE692A32D9EF3B520FEFC29EF834AD75DA4DEBCAB095476
                AFFEDE5435C6B5AF4ECA658193F28CA32A517DDD9C77B2AFD3AD81F25E70F9BC
                93A8E5E82597969B6408079A5DC89508FE53AE76919F3158C7CD9087C0A1F1C9
                9F4F53CEAC1BE025A86C975DE75AB4D0467CBB597CAE4B1ED0C9D763FBF65E3A
                1F611BD7D8E153A8E4D668DFD885AF8AFC43778B8A87F0D67612AD98A3E759B9
                D323F36222D39F530FE7B699E758A97A6B9B0ED7C47AF2DF06BABAAE9DAAD76C
                6F6BD5978ECD5BB6D76B6E2358085331295DAD4D5209AF03B44DCA6371AB69F5
                ECC55B734EC551BE7B00DF2EC9581FCAB069714DBF1CB401D27E75E35D17BBE5
                9ECD0578472BCC136D719DB68B5C4103027CC3FAD84F7DFF003E38C72F967D5C
                134FADE5E1B8DE3D757EBF2ADC534ED57D8FE6C73E3CBFD8F55C0430EE44B53A
                FE2BEB39D9F17CC93873D94D51D7C9FEA2EB9D94BB2526E75E9DA975DE4F3E83
                43687997EDA9159CB93BEFEC63BCAB07A75983EC26E5C2AC4283B9A595C6D155
                E8C41C4DC934CB5CD0D4124BCE5F14B091F572A87B063E97A14B32BF1273A792
                9C9644697FDF2DD4D9D5118CE75CC6F1D32D69B4EC24D5CAB3171FD6A9481E6D
                E6D23E5D51C0E49923DA1DC36EC05D0706253BDC0CDEC80A94E4B425AF629FA1
                D9BEBACC93A785E63FF302466D79334D6C31439F7210DD9A9580C50614881671
                6163B1019272D4C90D871B8DFA9751301A0399F096A32D178AE0DCEAD429184F
                23DF957ADE20DA0D1D3956C70CD2812A2C7179B22D35C29D66D3915B5C47104A
                080B5BAF9646E88294E6DA9EC30D38ADC149E5CD9459B85584B3621EBD80E36E
                E3665E836D158C12C39C09B0F863A3D5F04BF23007D80BD8C16B7161A9B8E61D
                30C716945BB4D9C7CB9E48E09A807AF63B8D798EC83E5C3445F2C689F135F2FF
                00AA9A7B4FADA758B2A2A98DA45D80E217EEDF6C69AB2332C187A2407E9AA799
                C7C792D7564FB8AB4407D3E1F1E7FAFBE534783925A5445C96FE923E4BD9CB75
                E1D75564C91F604A1EB3761B9979B5CDD6D99DC9E4ED9CE76CE9BED1EDADB0DC
                E9FAB0A8F5965DE79016452D90DB031631FA69BED1ED1DB0FC47FA8E2CF3F559
                10E259779E485EB11A196690893D17BF3D6E91B5289E41B3ECF09AB599BC91F5
                A36DB91F56959E0BD619824CD2B69748FAD9469CD280935E694D4B1F060E10E3
                DD6892EFA823EBCC431E39F26BC2EA4A0DD80AD2C59B7248B49B4806846C7639
                5EC57394AAD825D7714B4B8C8E9C20F42686A4B925EB05BB726EAB8F3C97AB4B
                C722AED8C7866AD4DF1DD6942619E6C2769B2C334E6D16FA7A432C904B6C2B6F
                6AB816841A79BBB137D01624AC9BF51C24F3EAAA31CFD552C1C9C894A963DB6D
                37A8AF30053C9E78C68A09E3262F4BB34C2C41E94E5196EF7ECDE68E3E4AF96C
                1C9AE8960E4BD8C9A3E49DA20E39276A6FC97B399ED99AFEEA5E4F696E47263C
                923F69080491C82A6E08E41D78E65E41D5C76DC83AAE3C721EB3571F21A1A48B
                91569543C8C5861FDAF6995FF3E2417C251FE3F87C79B0F16FCB192B51012CB3
                302D253461D0C9D78977E4BD5EBB6E4DD579E4FD68D63E13507027258241F6F4
                EBDACF993F277EB45DBB119C6725A85A76AF142B418E8183E0954367B149623F
                D0163B5213EFD94DB6E4B7C772725B5379B9234366E673F1CFED215A591C86A0
                E67E43D72E25E43D5A56DC87AB45C721EB94D1721A8268390AE146FDF5FCBF2A
                CABE1F24FF00F2367222418BED28F1AB46C5BD32914CCAFCFDD2C1191A9B484E
                6F24EADD3CA1878C483979A6FBDC458C3A4BB6B9D36C67E1F625511023B36333
                63BF61A47B4B9850B29F91519DCDC8BAD1AEFC8BAAE5CF22EAE0B1C87AED347C
                86A69E0E4208C3FE1AC3D78516C6B3D7B2807FF92E35392C7813AC0D93647505
                E8BFCD71A9C81CD2C42DC706A53976DAEB9DF20D55A1FCD634F5CE346C4B827F
                C38C7C79024604F20A23A9F30758B1DF30755EBC83ACD547C828E960E428970D
                CD74D74FE1B77A6789912D2D41D7379759C1AE0E63F78AA0E3B82F5F39278375
                64B9E0DD68AE2E0F4E4C2E210E01B1FB139D0EBCCFBD7B8199CBFE160C475706
                33F1C7DC738096663935974FC0A9723BA8FEDCE3E38BB537E9BB7AE31F1C8353
                6CC381757152703EB7523F0444B81FDA9ED4459A2EB12E6D2735FF00B4EC160E
                C155C5AEC16FE8C1C84AB0B9C06DB530F1D745FAA57CE153CA1D323924D618C0
                623B3189B7A816584D1C81B6B827D65D77D77D0AB7280E564D049122A8F45AA2
                66C8CF7861D0002CF734E3F072232E164D45510E9BEB2E9A371256071D0AD152
                6CB6CAE486EAAB912E6A2368A5B52B832B1F02DE3D6E2A372B7DF58F5FD5C9FD
                F3980EB459EE6A07D896C288BEB3748D8F0F662AC896D9173693861C3AF880B2
                2D67318E435E4076C54716CAD0B14CDAB4177026B6AA8075ADC47114D69563EE
                B2C0038C6D6E4FACDBCF1C70C5724F34E59B00310769547906BA0971105C1412
                457310EDA496F4F14AED968320A485E1D73EEDB5C6FADAA8530D32BA0B56195F
                D66BC7E049C25B8FDBE738D7061CBCE6EB3FFDB74DF7C47A5277D7D8D4B0A632
                A3AF936E72C70A56286ABB5E2C2C7C5BD0AFC5AC8BF220C21A41312DAAEA6787
                5CDE19B71E2AAAA886B0EA9D62F72469855B6E4CA041545438D685C38D1CB1FE
                AC7EF6B4AFE8A5173934CDEB2AD6A3EBED76D6B76A5FF5342B6DB986AF5B4584
                A1DBA48A2AEC7A455AA9A9A80424198A2AEDD6935F80D1C84909977BDAA00243
                636FEE9AD18A42D69B2106D65857162EAEE36C0DD6AAD5028D157D2EAF75B9AA
                1D56F9CFCB8D5E88D1BB93823099D7E967BBDF160C28D0D65784B4722416828E
                A20AC1018E14D76A4A0818C5699440599AC914EB8888E9E835E3113BE584E5A6
                3865F135A4CBF4B3DDED4000A93119015D4D9911E8A8EC491D3618B5821FC15A
                2024A4296C2404B2AA21D1D99BC1214AB213392902594B985A20848B2DA96CAD
                512EB710304142C182942F0AAC0F26193FB4B1909AF5C1B90C2D0CEC839CA9F0
                D6B39911E5128AD56695B3C1ECC21CB9CC16C398CDEC48C2F99DCDA83D9E7677
                0C4807BB70BACB2E95F4C1FD3D537690A702955AC0B8E5EB498C1EE29A63D543
                743A6899292C14A9C3FA7AAA8412CECED5048C9D9721559B40CF19B92F682461
                7CBD6F2FD0AE2BA51D143393684CA2C67A1117AD39DB39E3F7A144E09AB0EA4F
                666CB45165C0EE209195CADB349157DB80449AC76F6B2C4628213D71205F4F50
                D3CAAFDAE27EC9CCEDECE528642AE25DBCAD379D005068CF7B7D1459751AEB0C
                AC662E6212DC2D05377CB6C419B1B3FCE4B2E90460C7BDC9B7EDEBBFF656CFD9
                7FFFC4002D110002010303030304020301010000000001020003101112213113
                41512022323042506140603352712362FFDA0008010301013F01FCE33AAC35BC
                43518F79933335B0EF0563DE0AAA7FAD960BCC6AA4F1608C60A3E4CE8ACE8AC3
                47C186930B2B958AE1BFAC330510B16E62A96E22D30BEB2A1B98F48AF16A7535
                6C7FAB31D23318EA39889AA0006C3E954A7DC5A9BEAFEAB51B518ABA8E201A46
                3D2D3EEF5554FB840749CC07233FD4EA3695B535C0F567554C789536C37AD974
                9C4A2DF6FF0053AC727129AEA6F53B691288EF1C6A5C4A4FF69F5561DE29C1CF
                F536393288DB3E9660A32664D469F1189DE545D27311F57A586462C872A3FA89
                B53F8FA1AA05858B7329A69DCC272E0473A48319750C420A98957B37A4EC652F
                8FF516E0D96A2813AAB0D61DA1A8CD6A74F1B98CDA4665219CB18E32B2936462
                3A6A8415D8C0C57882B799D559D45879947E3FD44FA569B345A616138DCC6635
                0CF88026778E3436D11F508543731A911C7A68FC7F159FC41A4A674567456050
                38B3385E6339694931EE333A9FFE4A9B61A32EB1375312A86E6C403CCE92CE8A
                CE8AC031B0FC3B3858D558DC3B2C470DF86240E66A5F335AF986AAC6AA4F16A7
                4F3B98EDA44A236CC61A862527FB4C7A7AB71388B51960AC3BCD6BE66A5F3350
                3F87A9531B0F5038DE2B6A19FC2BAEA18F4052DC44A407319828DE6F51A018DA
                D51749CCA75356C632068D4CAFA28AFDDF86A8FA45D54B1DA2D30B66A61A118D
                A51F8FE19A964E674479829A8B3550BC424B1DE534D3B9BB2EA188415312AF66
                9CC28A7986889D1FDCE3F0CCDA8E6E8BA47A1D03C031B7E1D9B48CC35BC08D51
                9AD4E9E373E9740D0A95E6062BC4158F78AE1BF0F54E16F4865BF1CF4BBAD91B
                4182A29F4970398F5356D64A65A0006C3F0F58E4E2F446D9FC7B530D1A9B0B64
                8E2751BCCEA3799A89B052DC45A4073F88CC2727375D863F22541E61A2B3A3FB
                9D0FDCE88829A8FC4557FB47D0A276FE0938DCCEB080E467EB3B6913A8D11B50
                CFA4D5688495DFF2753E5F429AE91FC1ADC5946063EB5442DC41498C0348C7A1
                F51D845A58F97E50A83CCD0BE23E356D7441A77855073142F6F46B5F36240E67
                516C6A289D6105456F49A8A275565460C768A3271E82E1799D6582AA99AD7CFA
                090399D559D658AC1B88481CC0C0F1E835144EB2C1554CE6E6A28EF010788582
                F33ACB05659CFA33886B2CEB7EA0AAA60A8A4E2C5D440C1B88485E61AC20AC3B
                C073C5C903986B09D6FD41596736EA2C0737E27516E6A289D6FD4EB7EA2B86FA
                24E066E37DACE72652F95EA9DF100C9C5AB7362CCFB0828FEE3A68B53395B330
                5E617678B47CCE8AC3B19487BAEF573B08B489DCCE92CA89A2CA302CF57B2C00
                B9828F98688ED1134473963297CACCC1464C672D1696799D258EBA223E936A9B
                2D95F48DA0A4CDB9868F8B513BE2EEE144F75430511DE749638D271177611B83
                6A642E49986A8730D1238B536C1B3D4D337631688EF0D258CBA4E223E932A6EB
                6A277C5EB1DF1146A389C08F50B71129EA9D258F4B1B8B537D43E855385BD219
                684E066D4477BB9CB194865AD54FBA0DE2AE916ADF1B53D96138198CDA8E6524
                C0CD89C0CDA88E4DAABE7DA2524CEE6F54FBA28C9B557FB44033B455D231E9A2
                3BCE23B6A3292E4E6F5BE36A7F1958FB6D493EE373CCA3CD89C0CC66D47329AE
                9176DCCA43DD2A1C29B2AEA388062D5061ACCDA46673292ED9BD6ED6A7BACE25
                2F95B884E4E6515EF2ABE4E228D47106D73B194BE5F42B1DF17A236CCAA70B6A
                630B6270336A236CD89C9CCA232737AC7B580C0C4ACDF6C51A8E2F54E16D4861
                63B691651A462EC726511EE8C748CDA88EFE8738536A43DB2B36D8B20C2DEB71
                6A5F1958F02C06062C4E066D446D9B566ED1065AEC702D4472656F8DA88C0CDE
                AFCA0DCCAC727139836BD6E05A97C63ECC626CC2D54E0620193887D8B6A23BFA
                0F329FCBE839CB5D0616563DAC36B55385B531858C702D446D7AC7DD10658598
                E4E6511BE6F58F6B01818958EF88832C2EC70336A236CCAC76C5A97C7D158ED6
                51812A9CB45193E8AC77C580C0C4AA72D298CB5EA9C2DA98C2D98E4E6511BDEA
                9C2DA90F6CAC781603031773963290CB46393994FE5E8AC77C580C0C4ADF2836
                36A872D28AF7958ED6A5F1BB1C0CDA88DF3EB63819BA8C9C5AA9CB4A632C2F58
                E4E2C36954FB6D4C6145DCE58CA2378FB29B51E2EE751CC4196167DD8CA5F2BD
                66DB16A630B2B76B52F8FA2B1DF100C9C59BE4653F90F439D473292E4E6C4E4E
                6511BDEB1E05DBE26D47BDEB1DF165D944AA7DD106585D8E919B525C2DA8FCBD
                0E727329AE5AD5BB58B6133651A46256ED64F88BD5385C5A9AE95F5D63B62F44
                6F9B1E653386B3B859CC4DD85AB1EDE8270336A3C47DD4DA89DF16A8DF68B52F
                959B66310E1B36660B1C1F91B0D84AA32B6A2DB62F9950E5A53F94EA2F99539C
                C4386CC3502EC67596547C0C4033B081D5369D4041C5A9B045C99D659D55954E
                5A26EC26B5F3090C302D48E0D9DF488C08DCDCEE6511EEBD57CEC2534D46CE30
                653386BD57C0C4E622E916ADF1B16C802525C9CDAA8CADA91CADDDB5194D351C
                FD0AC7DD7A23DB9B54420E6DADB8894C9DDA545C19494EACDAAAB6ACC4424DEA
                025769A4F888BA45AA53C6E2DA9CED29D3D3B98CA41DE52523736A8BAB8B066E
                04034FB9E54F780445524C6AA73B4EAB4D3AB759B89D4CFCA6BF0270C09855B3
                00D209365208D26152BCCD7D984D78F88810B6E6160BB2D9774204D2DE236C02
                D93E5BC656CC51A7DC6C0E0E632FDC2DD46F30291EE32A6762620C9996C93656
                2BC4EA7EA1727610263768CD9B0F78C778411CCD60FC84D607C44019E64271CC
                D47CCD4DE6292CA45F51A6302759A758F78CBDD788AC56758788CE5E2D3FF683
                1DBE831C9CDD46062FA4789803E9EB5F33AAB3ACB0D45F13AB8E04EAB4EA3799
                A9BCDFA87BCEA1ED6048E21763CFA3A87BCD7FA9D43DADADBCCE6E1D871327FD
                67BFB09A1DB99D169D1FDC1471DE74FF0073A4B3A4B342F8B63D0514F68140E3
                D154FB6D4D069DE685F1300713A6A67456744799D1FDCD2F0A7FF330470B1B59
                9A4F898BD43C03CC41BE4C272737048E26BCF226A5F13A9E267364040DFD550E
                16F4D7537AB50135AF99D559D613ADFA9D633AAD35B79993FC4C19D36F13A4D3
                A26744799D159D35F134AF8FE3563C0B28C0C7D66214667262A00B833A4B3A2B
                3A3FB9D130D361318BD24FB8DB5012A9CAED29BE98083C42C0731DF59B83D313
                ACD3AAD3A8DE66A3E7F8DA4CE9B789D169D1FDCE889D259A17C4C7F3AA9F741C
                FD52C17986B0ED0B16329D3C6E7E81A6A67445EA53CEE22FB974FA9571EE68C7
                51CFF0B43789D269D169D1FDCE889D259A17C7E1DE912722252C1C9FAB5135C1
                44F78A817EB3A7DCB36A9FF615239B0A6C67B53F7198B73F4F4B789D269D133A
                3FB9D159D351DA6903FA754A7DC40EC3BCEAB42C4F3EB0A4C149A747C9828ACD
                0A3B7F0CB0071F40306E3E912179FA0582F3F83560DC7AEA53C6E3D229B1828F
                98292C0A071FC52C1798AEADC5BE557FE42C1798AC1B8B160BCC560DC4240E67
                5148C8948855DFBD810C3221AA83BCC83BCEAA79B1A883BC2C34E7317DA26A42
                DCC2401930D541DE731982F36D43388485193134D463AA1654DA060DC4EA28EF
                15D5B89D54CE336EA27984851930D541DE16006653ABAB98582F315D5B8B1207
                303AB70616036305452700C6A8ABCCD431986A2819CC560DC4EA28EF15D5B89D
                44F36EAA138CC240E60A8A76061603630554271989E733A89E6336173290C20F
                A0F4BBAC1498C14547300038FE492A5B20662EF506D8B52EEE66549CAAE652DE
                A138C466D23315979619317FC995110753DED2BA003698F7AAF8954E10CC1DA9
                89D34C6311F428D31CFB7E137C2D3829A818C4A800C209FE46C7611E9AE93B42
                49A40799D3555C4A1F09517529116AFB001CC44D0254F81CCFF1A02398B49473
                3E157694501F798501AB812B2A84951B7D26314230161C9455851550ED38A3BC
                55545CE222EBF7B4AAA17056DAC33658462091A442BD4A9BF69594003134281B
                C048A3FF0062535510616A9C4A481BDE654201D221284634C3A8D211191F88E5
                4B7198DBB01A710AF52A6FDA540AAB9C43A550298C7DBF087FC6ABE7F095012A
                7111C81A42CA61B592D186410261BA5A7105424615651046754A8BA97020AA71
                8D306A23DD118D31A489EE771910E52A6AC46D55180C6D1C32B6B10542C76599
                28E4912A6B7EDB4A8195B5ACEA13C2CC66AE7C4F75263B6C61D5576E04C7FE83
                C09573A368A303119828C994A9E3DC6D5B24059554B0DA755BFD63290A49E4C5
                181894C1CB31950166510E51C9C6C607663B098CD5FF0092B674E04AABED004D
                EA29DB115D906922052C7535918D31A488A58EE6521C93DE30D5504A9F1388C0
                FB504EA371A77854AA1F2628D2A046CA3EBC4D6CDC08D50A9E2052EFAC0C4A6C
                5060AC1ABA9961288D893DE551AB0B0E56A648950BBAEC369501D4A40FCF0FFD
                5B576FE427B9D9BF87FFC4003811000201030204040307040202030000000102
                030004111012132131411422325120425023303340526171436091A16281B1C1
                5372E1FFDA0008010201013F01FAE47049274149623E734B6F12FCB411474145
                41EB4618DBAAD359467D3CAA4B3913A73FEDB8E3690E16A2B448F9B733A3DC47
                1F534D7E3E515E3A4F6AF1D27B52DF9F99692EE27FDABAD4B024BD6A6B7687F8
                FED8861333605471AC630B5248B10CB54D74F2721C87C71CAF17A4D4374B2723
                C8D75EB5736DC3F3274FED68E332B6D151C6235DA2A69442B935248D29DCDF02
                2EF60B5228182BD0FC36D758F249A5CC1C2395E9FDAB6B0F0D327A9A6608BB9A
                A594CADB8FC300F537B0AEB17F07E2B49F77D9B53A091769A7431B153FDA76B1
                F124E7DB4BD9B7370C741F105E1DB127E6AB51BF747EF4460E0FC20953915149
                C540D57D1F2E20FED3B24DB1EEF7A9A4E1216F8ADE1E337ED57AFCC20ED503F0
                E40D5790FF00517E2B19304A548BBD4AFF0069C4BB500ABE7F304F86389A56C2
                D055B78EB9CAE58D6DF26EAB5938B1ED3DAAE2DCC4723A7C30B6C901D2E176CA
                C3FB4546481A5D1CCC7E086D5E4E6790A48D63185ABB9F88762F4A45D90339EF
                56EBC4578EA290C2FBA959645C8E95359F78E882391F814E40357A312FF68C5F
                88BA4D6F2B4848142D26F6A5B13F31A8EDA38FA0D2E6EB3E44A86232B6D157AC
                06D8C55BBEC901ABC876B6F1DEA09CC27F6A475906E5A78924F50A7B11F29A36
                728E95E166F6A418500D5F7E20FED1538607E192E638FBD4D72F2F2ED4885CED
                5A8A35B74ACF15D9CD6DF26EA81C4F161AA784C27F6A8E4688E56A2BC46E4DCA
                81CF31F05F7E20FA4E335B48EDF485BC956BC749EC28DECA7A534D23FA8E9140
                F2F4A8A158472ABC9F3F66B5B7876E49F9AAD46FDD19EF50C860939D10B22F3E
                9535A347CD798D15D93D2685E4A2BC749ED46F653D2998B9DCDF478ADDE5E9D2
                A3B48D3AF3A000E9A49047275153DB987F8FA32A33FA457064FD35C097F4D2D9
                CA7AF2A8ECD17D5CEBA55CDD6DF2275AB7878CDFB55EBF9820ED50BF0E40D579
                0FF516ADEE785E56E94086191525B47253D8B8F49CD1B7947CB5C193F49A313A
                8C91F47B6B5DFE77E958C74F859430DA6A58F84E57E8B049C2707E079523F51A
                9AED9F927215144D29C0A016DE3A662E771D2D64E226D3DAAE6DB87E65E9514E
                F0F4A8AE524FE7E0BD9727863E8D6B0F15B27A0D6595625C9A92E6492B350DD3
                C7D798A560E370ABD2389F468AF0A2ED23346FCF65A6BA95BBD75A86D1A4E6DC
                85222C630B5753F10ED5E9AC52189B70A56591722A6B3F9A3A20A9C1A49E44E8
                696F9FB8AF1FFF001A24B1C9FA2819E55147C240BACF2F15F3F04370D0820533
                173B8FD1E38CCADB452D87EA351DBC71F4144E399AB8BADFE44E9F0C33984FED
                4922C832B4F1AC9EA14D62A7D26A6B7687993F47B34DD267DB5BB7D917F3F4E8
                2EF3E59349E1E30C669ED654ED9F8521924F48AB7B5311DC4E935C2C5FCD3BB4
                87737D1EC936C7BBDF5BE7CB85F6FA7C572F172ED51DD4727EDA1556EA28DBC4
                7E5AF0D17E9A11A2F41A3CC91FA8D4B78CDC9397D1F06829348BB142EB292EE5
                AB07EA092BA7A4D2DEC83AD78FFF008D78FF00F8D1BE7EC29AE657EFF48B3841
                1C46FB8BE501811F91442E76AD7817F7A7428DB4FDF410F19B15E161F6AB88C4
                4FB47C00679525A44A398CD5C22A4984FA9DA9FB11F1F4AB9978AF91D3F23603
                9B1D256DCE4FDF5ACCB1121BBD35DC4A391CD48E646DC7E0B71147E773535EE7
                947F54591D3D26BC44BFAAA0DDC305B5B8B871210A69669DBD26A469B18933A8
                04F21460900CEDD1559F928AF0D2E338D12D657ED5E05FDEA4B6923E647C2B6D
                2BF415E0A5AB588C4A77548DB10B7C090C927A450B2929ACE55AE04BFA7E0546
                7F48A16729AF0327BD4913C5EAA5466F48A68DD39B0F816DA56ED5E064F7A6B3
                956882A70755B695BA0A746438614913C9E9142C64F7A6B29074A20A9C1F8154
                B1C0A5B290F5E55E00FEAA6B3917A73A6B69546E2345B795BA0A789E3F50A48D
                A438514B62DDCD358B0F49A652870DAA2339C28A5B173D4D780FF95359483A73
                A2A54E0D0049C0AF0937B53295383A852C702BC2CDEDAA5AC8FDA8581EED46C0
                F66A92DE48BA8FB945DCC16BA68C7682689C9CD4282340055D90223AD9A011EE
                F7A76D8A5B4B11E427458A383323535F8CF945417026D2E5024A40D2289A5385
                A8E18E019A92FB9E23142F65A43B941ABC6C45A019E42A0B40BE67EB52DE2A72
                4E75E325AB69CCC0E46929DCE4E9059FCD2533242BCF9535F1F9452DF37CC2AE
                2E38D818A84058C015747111D2389A56DAB515BA45D3AD4D7814E139D0BD9735
                0CC2619153C2265FDE88C1C1AB61994692C025605BB53DD47179579D25F06386
                18D2F5014DDAC30998E05011DBA5497AE7D1CA85DCC3BD42E6440C6A53B6326A
                21991469748D2ED4145E2B55DB497AAC704634BA884899EE34B7B632F99BA579
                625F61525EB13E4A5BC941E66A2944ABB854F08997F7AB73B261A5F2F9436B65
                1E1377BD48E2352C6BCD237EE6A0B658B99EB53DC887977A37731EF505D963B6
                4D2EA1E1364743F7166BBA5CFB6B78DB62FE6A35DCE174BF6E61758176C6A2AF
                1B6C58F7D2D062214485193534C666C9D2CBF174BA3994D22976DA2A28C44BB4
                55E4DB9B60E83445DCC174BF6F4AE96906D1C46ABC9B60D83BEB64B88B3EF52B
                6C4274B383FA8D4CC106E352CA656DC751CE80C72ABE6F285A00B1C0A862112E
                2AF26D8BB077D6C4FDA11A5D8C4A6AC8664CE979391F66BAAF4157C711E34442
                EDB45471889768ABA9B88F81D06B18DA8055E3622AB61BA55D2690449BA998B9
                C9D2D9B74434862E2BEDA0028C0ABD97278635B03CD86972364C7140E466AF06
                62D00DC7029576285157D264F0C55A43B1779EA6A57E1A16A662C7275539506A
                EC6623F7162B852DADF37982D59AE65CFB6974DBA53A22EE60BA5FB730BA22ED
                502AF5F6C7B7DF5B05E65B463B989AB28FFA86A57E1A16D6D1774BFC6976DBA5
                356F1F164C692BF11CB6B12ED402AF5B11E3DEA24E2385A031C855F3E004F82D
                D774AA34BD6CC98F6AB28F2C5CF6D277E2484EB623ED09D2ECFDB1AB05E45A89
                C0CD336E62C7445DCC0697CDE60BA5947CB886A77D9193AC637381A5FB7A56AC
                4664274BD9373ECF6D6D062114C76A935649B5377BD13B46698EE393AD80E6C7
                4BBFC6356E7744A6AE06626D2CE3DCFBBDA99828DC69019E5E7DF4BE7E89F028
                C281575F827EE215D9181ACEDBE426AC17916A271CE98EE39D2CD774B9F6D2E9
                B74A6A25DD201A5F365C2EB64B88F3EF53B6D8D8E91AEC40B57CD850BAD8AF22
                DA3B6E626AC9309BBDEA76DB1B1D625DEE174BF6F305AB15CB96D2F0E65F82C5
                72E4E9336E909AB45DB10A91B6A13F058AF94B69236F62D568BB621572DB623A
                DA2EE946972DBA53A46BB142D5F37900D6CD774BFC6978D9971560BE52DA3B6F
                62DAC0BB6351576FB62FE6A35DA8055C9C447E0B15C213A48DBDCB5591CC78A6
                1B811A5AC7B23FE6AF64C0D82AC57CE4E9787329D635DCE0697CD840BF1C4BBD
                C2EB236C42DA5A2ED8855C36D898EB649B5377BE8C77313564B9973EDA5CB6E9
                4EB0AED8C0ABE6C478A806E914697FEA1AC29C340B5336D8D8E908DB1A8ABBFC
                13AD8C7925F4BA6DD29AB0F9B4BBFC63F058AE10B53B6D527487F0D7F8ABAFC1
                6F8214E1C616AEE4D898F7D106D502AF9BC806B60BEA6A271CE89C9CD4233228
                D2FF00E5D6C530A5FDF498E6463568B88854EDB6263AC49C470BA5DC9BE4DA3B
                697BF85F0429C38C2D5D49C38FF9D2C0FA868B16E9F6574A95F88E5AAC3E6D27
                FC56D6C93749BBDB4BA9389272F8EC572E5BDB5BD6C47B7DF4418502AE977447
                1A41034C7F6A030302A63B6363A582F22DA31C9CE91AEF70BA5F9F305A80ED91
                4E97A859430EDA5B438FB593A50391915787116911DD18353271232B5D2A285A
                538150B267849DB473B989AB49364983DF4BD8F9EF1A62B6B7B55BAED880ABA3
                F6447BD7859BDAAD8FD9ED3D454CBBE32B496AF20DC2BC149EE2AD6DF2DB8F41
                4EE106E6A7B796E0EF35E1591D4377D2E6369A408BED5E0A5AF0928AB35DB17F
                3539DB131AF0F2FE9A8D1E370CC34BC8F7A6476D2184CC7F6A89D1B2A9DB4EB4
                836A8157AD88F1ADA41C31B9BAD5CCFC25C0EBA42FBE306AE577C475B4877B6E
                3D05121464D4F2F19F3DB4B13F69A24215CBFBD5E49B1368EFA593ED931EFA5D
                AED94FEFA0193815045C24C55D4FC35DA3AFDC592E23CFBEB7AD9936FB696D3A
                BA853D7430459DC454F74AA364756D2074033CEAEE451195EFA5A49188F19E75
                3DC22A900F3D6D59564CB5195073CD5C482593234B7B90E36B75D0C50A79C8AB
                9B8E2F957A545223A8DB57B2AB610696D318C61C72A073CC53471B7361458C9F
                6707F9AB65E033231A92558C73351D9A1505BAD7848B1D284862F2CBFE6BCAE3
                DC5786DA7319C57049F5B9AC168DD5398ED4B2C64641A66133AAA76D245646E2
                27FDD24AB27A4D18307746715C0DDF88D9A69923F28EBEC2963690EF97FC6921
                093066E94658C73DD50F9DDA5D26CF0CEDA8A48F60C1A95C4DF649A3A8752A6A
                2931F67275FF00CE86DE2EB8A7915BECA338156BB46E55F7A9982A1CD6D8F622
                8EBCB492259479ABC3B0E8F4B0AA799B9FF3466DDE58B9FF00E2A38B6733CCE8
                D981B78F49A560E32B5C164FC238AE0BBFE23533C708C56D69CE5F92FB570D3F
                4D70A3FD22A4558A457C606A235B962EDD3B57828ABC120E6A79D4737C927235
                2C2B30C1AF0073EAA8ADD21E7DEA4B8ED10C9A6DC4E5BEE1176285D646DEE5B5
                12C83A3533B37A8FDD004F4AE0487E5A16931ED42C64A4B5907CF5E0C37AD89A
                16710AF0B0FE9A11463A2E9D6BC32755E5FC578653EA24D0007214E8AFC9852C
                31A7351AF5A36C9D472FE2B807F59AF0EA7D449A000E428C319392B4001C86AF
                0A3F322B620FEA1FF34781F33E7FEE84F6F1FA6BC74746FC765A6BECF2DB5E27
                1D1051BC96BC5CDEF5E2253F35124F335B9877AC9D567957A1A79A47F51D3A51
                24F5AB35CCB9D2E6671290A6BC44BFAA8BB37A8D0BA95790A17D250BF3DD685F
                AF75A33404E4641FDA84C3FF0097FD56F56F54BFFAA8FC3A7306B889EF590742
                0118356CBCCB2F4ED53B10BB57A9A4508A146AE8AE30C2B8057D0E4570E5FD7F
                EABC383EB24D00146051C1EB53B2B3F9072D002790A208E475B64DF20D6E64E1
                C67E211B9E8285BCA7E5A1672FB57817F7A161EED42C53B9A16710ED42DE21F2
                D0451D07E50BA8EA68DC443E6A37910A37CBD851BF3D968DECA68DD4C7BD19A4
                3F35649FCAD82FA9B491B7393F7B9A855E56DA0D001171DAA5B866937AD78B9B
                DE85F49ED42FFDD685F47DE85CC4DDE810DD35BC9F0386BA089DBA0AB342B21D
                C2AE20E30C8EB4C8CA70D491B4870A2A08442B8EFAB278A90FB0AF051D0B4847
                6A16F10F96B8683B7E58C883A9A37310F9A8DEC428DF8ECB46F9FB0A37929EF4
                6E253F351663D4FE7ACD711539C293F7B1C6D21C2D2D81F98D246B12E16AE6E7
                7F913A7C79C74A5B9957BD78E38E639D1258E4E96B73B7C8F52FD94825EDD0D7
                5F86590B9E147D6A3411AED1F91240EB4668C7CD46EE11DE8DF4746FFD968DF3
                F6146EE63DE8CF29F9A8B13D7E8D0DE2AAED6153DD875DA9F7B6D71C1EA29AF9
                7E5152DC3CBD7EFADEE011C292816B6E479AD2CA8FE935D29AE234EF59967E9E
                51FEEA38D63185FBB32C63AB51BB8877A37C9D851BF3D968DECA7A51B994FCD4
                6476EA7FB3AD6E73F66F4D6F13755AF090FB52C489E91F1B4A8BD4D35E4428DF
                FB2D1BD90F4A3712B7CD4493D7F249133A961DBEE1E268C02DDFEE911A4385FB
                8489E4F48A231C8FD0A489A2E4DF1DADCEEF23F5F85AE224EA69AF97E514D792
                9E9CA9A476F51FCAA46F27A454904917371A7E1DA7FF0063490C927A05490BC5
                EB1A244F27A054913C5EB14A8CE70A2BC3C8182B0EB576AD2CA427CB4067953A
                34676B52DACCC32168AB29DA473AF0B3633B745B599C642D246FC40BB79FB548
                4C921C0A114E911017AFF9A542E76AF5A5B499BA2D1054E0D471B4A7095D28C4
                E13791CA911A43B56A6E2DBC6BC3E83AD2C52CE77019A78DE2387142DA538C2F
                5A92192238715E1260BBB6E9E166C676D22348DB57AD2DA4CDD16963767D8073
                AB8B331F341CA923690E145496F245CDC68A8CE70A29E096319614B13B82CA29
                ADA545DCC2A3B696519515C36DDB31CE85B4AC76815244F11C38A16D2B630BD6
                A48248BD62BC2CD8CEDA00938146D260376DA556738514D6D2A0DCCB4913B8CA
                8A6B59957715A9F3C90AE3142D66233B6A28CB4A10D5E3EF98FDC417608DB253
                DDC69D39D3DEC87D3CA99D9FD47F3289224615DF67FE6A4F25B365F7674BC1CD
                215ED5B5D542C926DABAF2DB852DBAA28F8AE12A58E4F444C001522B7862B236
                4D4CFE187063FF00BAB199D98873CA83620925FD46AD137CCB408CBDCB73E7CA
                8DCCC4EEDD5071A4732E7FECD42A789F8D9AF28692E0F63CA8DCCCC776EAB691
                98BCEE7A0A07C2C41C7A9AA1B8978839E695556E5DFB0AF112C92839ABEFC735
                6D270E50D525AE672CDE9EB53CDC66FD874AB504CCB8A24DC5C3293E51FF00AA
                92E9D8F90E0564CF6BE7EB9ABC9D90F050E00A59996D77B733DAACA491E6E66A
                DE2C21957A9E99A8D27570CD27FBA4DA93C928E82927964981CF7AF55EF96A49
                5E694A03C89A9E5E0FD8C5CB15692B49B9243918D382F146123201EF512BAAB0
                95F2296436F6A36F56AB291999B79C8C51B8919FCA714C035DE7D854D75248DC
                8E0539696D57775CD5E4EC844287A55B0774E2B1E7DB34893ABEE320FF0034A6
                3176D53A5C439DC791A812558FD5B41A8FC91BB71370A121B7B51B7AB55B3C92
                C8109E54BC492E1A44A8D49907DB64D260DCC92FE9A27273F43B6655954BF4A9
                A05772ED20C55CB46614119E55110AE09ADF10BADFBBA8A6B7407749272FF757
                ACADB361E556D208A50C69ED54B160E314E6347063ED53C297278A8E2870A181
                F61C9A4DB3DB08B7608A88476C8C4365AADDA392230B9C535B2460977ADAB340
                AAAD8C55B8861246EF37FAAB768DE33039C51B64404BBD6E096B8079935E4BA8
                946EC30A022B5F36773507C5BB1279B1AB4038C0B54ADBDCB5451B4ADB56AF2E
                377D929E434B3210B487B0AB5955243BFA1A3691839E20C5472A3CAA8BC956A5
                6DEE5AAE980448D7B55B308E377EF4A12E2009BB045343144A77B64FED59096B
                8EE4D59EDE2EE6ED5692032BB13826885B791486CD4B047337111C73A7912143
                144739EA687239A9A24B93C547152A44802A9C9ABC6195453C80A898476CE73C
                CD5A80655CD44EBF6933F427146D620777139524AB2CCA07255A99F89216A8F6
                CF6FC2CE08A30C5103C46C9FDAA2B759533BF9D348B0C5C266DD57112CEDBC48
                314C6216E5233FFED5E30CAA29E4055A308C3C84F6A50B2DB0456C1AB658607E
                6D93FEAADD90C72231C67EBA064E0539F091F0C7A8F5FCC4FF00676E91FF00DF
                E4FF00FFC4004F10000102030208090806090303050100000102030004111221
                051013223141517123325261728191A1C114204253B1D1E1F015243343506230
                344060637382A2F13593B20692C216257483E2A3FFDA0008010100063F02FC70
                A5D7F28E8FBA6B395F08224A590CA794EE718E127DD036366C7B23847DC73A4B
                263316A4744D22ADCFCC0E6CA122007F27369FCC9B27BA025FB524E7F12F4F6C
                05A141683A149351FBB5969A72C8F45238CADD0A6D926525B92839C779C414C4
                AAB267EF1CCD4C03333A846D4B49B5DF19D3332ADC523C22E7E687F527DD1F57
                9F2399D44156404CA07A4C1AF769829502950D20C5659DE0F5B4ABD260201C84
                D6B6547D9B7F762DAF3DF57D9B5B7E10A989A72DACF60E61191956ED9D6AD49D
                F0971E026E6B94B19A370F3E932C02BD4E26E50EB853CCFD6A507A4067277880
                A492950BC11AA13253CAA4CFA0EFACF8FEEB3934F6817253AD4764393530AB4B
                57601B04649BCD6937B8EF244265E591652349D6A3B4F98F3F66D940B93B4EA1
                0F3134942669922D64F8A41D047CEAF3573D835143A5C974FB53EE8041A11AC4
                7934CABEBAD0D3EB13B7F754A5B57D518CD6F9F6AA1A956055C59A6EE7844B30
                347195AD476F9B836593C67E71B1D40D4C58D1E512BDE857FF00AF38E1295451
                959E1523D13B61A9960D971B3510CCDB5C570569B0EB1FBA6B4A0D1F98E0D3CC
                359C5E5CEA7879819BF951F1F3A5586CDA66412A27A54BFC230561445FE4EF14
                A86D047C21B79B55A6D62D24F379AE32EA6D36E0B2A10FCA2FD039A768D461DC
                1CB39AE708DF4B5FCF37EE9E401CC96404F59BCF84312FF775B4E7444000500D
                5E692923CA9DCD693E3137845CBD4E9B09275EDF9E689A6122AE59B68DE2F8FA
                2A615CEC13FF001F3A5F08205E83925EED5F3CF12F349D2D2C2A12B4DE950A8F
                DD29B7EB5CA3AA577C4D4E119CB5E4C6E1FE7BBCD2FBEABFD06C695984D739E7
                956509D4911272ACFAC6984F3D542BE30A9451E34B8711D4A20FB446599AA197
                8E51B527D156B10996995044F247FB9CE3CD9D629525B253BC5E3148AF58458E
                CBBC3F74665DE436A5776294DAAB4AFEE3E629A97226E6B624E6A779854C4D38
                5C70F60E611E5F329A4CBA33127D04FBE30748377B729579DE952EF0ED8C0F84
                C711B5A9A7371F930A64919C2DB4E6C3A8C29A7029998695AB54265F0AEE1320
                7FCA12E32E25D6D5A1493518C8875BE428A6148F56F287B0FEE8E11FFE3AFF00
                E38A525DE9AC9BADA28A4D857BA2E7D6E7325B3E3149492528F29E553B8414BB
                3161A3F74D66A6282F3089EC228CFD2DB07573985CC2AF738ADA394A89EC2AF9
                B4B70D80A3ACE957844CB691571B1954EF1F263E8D795C332383AFA49F845B4D
                1A9C40CC736F31854BCCB65A753A8C5A94985B3B40D07AA009C9443BF99A364F
                647099660FE7457D915F2DFF00F9ABDD132E22F42DC5286EAC4DFF003FFF0011
                FBA334D72DA527BBCD05B60B4CFAD77347C603A7EB335EB56346E10B99995D86
                D3DFCD09A24DE6C32C8D5183707B678471E6DBA8D66D5547DB09965687E5ED27
                7A4DFF00F2EE82B9725A4D72AC287B235226903846BC473464A69AB5C958E327
                71852E53EBAC7E5E38EA8295A4A1434850BFCC9824100BD71DB70FC27847128E
                91A451332CA8F32C7E104A43AC137F06BF7C7EB533FDBEE8AAD730F7329607B0
                402C4934950F4C8B4AED388E557947F5308E37C232930AA20711A4F153030A4C
                A7388E0127672A25D86CD58C1E9513CEAD07C2305E146C54CB3D64F3823E1085
                B04172CE5185F845A42952F32D2BAC184B13C532D35A2D7A0BF762A4CCB34FF4
                D31988758FE5B9EFAC5D3533FDBEE8AB8B987B994A00770844B4B2326CA340AD
                7F07B2E2B2D31A99469EBD90421DF246B90CDC7B60A96A2B51D6A35C40CBCCA8
                207DDAAF4F6464D432338919CDEDE71F8323CADF4B017C52A8BB08CB7FBA22A7
                08CBFF004AEB1C0E56695F95341DF050C5249B3C8BD5DB054A254A3A49844ECF
                22CCA8BD0D9D2E7C228DD3CA9C165A4ECE789A9F738CF2AC249D834F7FB226A5
                C0AACA6D23A42F11F454C2A809AB24EDE4C19A95A22740BC6A73E30A69D416DC
                49A14AB4880869ECAB23EE9DBC7C2009B97725D5B519C98AA67DB4FF0032A9F6
                C7FA8CAFFBA210C3338D3CF2F425B35FC1D72520AACC6871DE4730E782A5A8A9
                46F24EBF35B7D95943AD9AA542199A02CA8DCB4EC56BFC15E6522AF23846F78F
                32C4A30A776AB50EB84BF3E44D3E2F08F413EF8CABC6AB3F66D0D2A84DA369F7
                D5640D481EE10CCB35C469364622FB554B0F9CA208F455AC426526D4133A9D0A
                3F7BF18ABA3253038AF234F5ED82A5B79697F5CD5E3AF6798EE137071B836B76
                B3F83641857D71F19BF906D8A9BCE212F2E9E752CE848DB0925A134FEB75D15E
                C1AA29934D365214B97426526B529028956F10E4BBE8C9BA83420C3AA57154F9
                29EC1F833B32C4D265D0E1B45BB15BF5C70D8414A1B10DD3C6012CAA65435BCA
                AF7688B284A5B6D3A92280429A93A4DCCED1C44F5EB853F32E175D57CD047964
                CA6936F0B927D04E37259CB8E942F92ADB0B61E496DE6CFC910997C2955A7409
                81A7FAA03AC38979B568524D44153B2880B3E9B79A7BA0F93CE3AD74D215EE81
                5C209B3FCAF8C36C349B2DB69B291F82ADC59B2840B44F343F34BF48E68D89D4
                31000549D4210DD3EB0BCE755CFB3CC65E538587117294915B421A9661365A6C
                500FC1FCA1D65E75BAD0E48569BE089591FEA795E020A5F9821AF54DE6A60250
                92A51B801AE113B84535785EDB3C9E73CFE6FAB9A47D9BBE079A14C4D365B58E
                C3BA2DCACC2D857E5371EA8A4D4B3731F9926C18534CCB3E8524554540591D7F
                83E41268B99558FE9D7F3CF8D92A156D81953D5A3BFF000D521690A4AAE20EB8
                5CD60C4971AD2A97D69DDB7117FC99B98A8A677186E30029EF257392FDDDFA22
                D214169DA935F30E5A6D16C7A08CE577479333260360D43AEF1FAB6620A00B32
                838CF2BC36C265E591610349D6A3B4FE0E25C1CC96453ACDE7C31CC4D917BCBB
                29DC3E3F879729E4D35EB5034EF1AE092CF9433EB19BF1559796C9DA8552289C
                20FF00F52ABED8BF083BD57451F9A79E1B16E138A92B2EB7072F42475C25DC22
                A132E7AA4F107BE025090948B801F837DB37FF00742D6A7DBA2454E743F30BE3
                3AB2BC7292D966AA840B59C34EB8FB66FF00EE1F88133326DAD47D3028AED115
                65E7D8E6A8508CCC2229CECFC62FC229FF006BE31C34EBAE741213EF8AA6503A
                AE53C6D400901206A1F83FD192EB28401578A75F37E826D8592A6D9526C57556
                B7777EC2A989A7326D8EF8A26566149DB7086A69824B4E68AFE982C243930E5C
                DA0FB62DF97293CC902901F98003A9594123D2E7F316EACD108168985ADB9932
                ED5735B4017086DF9DFB42A212AA52D276FE273D6C69502375079E129054A370
                02128745261D394706CE6FD8707B55D2A52A9D9EFC524CD2852D26BBF5FE9A5D
                E94A2DC66A0B64D2B5D9010B97F2746B71C22821A94678A81A4EB3B7CC5E0DC1
                F22F062B471E56685F30AEA84BD84D49769A18468EB301291403401F89A55372
                A87949B828E98FD41BEF89C44AB61A610BB0948E6BB1CB3D372A975E745BB46B
                A357745A989797613B5C5D3C60AF06A6554EA75A0D5431971E712D3634A96682
                03289F68B86E1B3B7165269E4308DAB301A13A2A7594909ED8B551674D60A72C
                665635302BDFA23F5498A75425B4BA5974E843C295F32A4D045954D8715B1A16
                A2962669B6C0F7C30A9651530DB74BC52FADFE112B2FA728E253DFE614CC4DA0
                383D04E72BBA28966657CE123DF002D4ECBFF351EE84838418CED145560106A0
                EB18ED4D4CB6C748DE6330BCFF00411EF8BD89A1CF653EF85AA51DB451C64A85
                088FAC4CB4C7F3160416E5A6DA79C1E8A4DF8C951A01ACC14999CB286A645AEF
                D1174B4C9EA4FBE005A9D97FE623DD01D61C4BAD9D0A41A8C7454F2147F860AB
                D919694792F239B547D6A652DAB91A55D9146E5A61C1B6E1E3165D43F2FF0099
                49A8EE84BCC38975B568524F985D98750CB63D259A45186DE99E702C8EF8FF00
                4E34FE77C22CBC1D953B562A3BA132CDCCE7A8D125492013894972750542E210
                0ABD90A326F872CE94E823AA32B36F0686A1ACEE1146249D746D5A827DF004C4
                9B8C8E52156BDD097E55D0EB6758C7949B7D0C8D55D27AA08625DE7F9CE688FF
                004DBBF9DFFE6026619765BF3718425E97752EB6AD0A49853AEAC36DA454A95A
                0453CACEFC9ABDD01E97752F347D249C6A7A61D4B2D0D2A518B1E5474D2D16D5
                480A49AA4DE08C45196330E0F45815EFD11C160F5287E7769E11C2E0F5247E47
                2BE1010CBD9378FDD3B71FD0CC4C9D0D3655054A3551BC9C4D329E338A081D70
                DB48B92848488997DC5DA16C847327544B941A06C296ADD4F8E35CB5A3919700
                04EAA915AF7C312E9E33AB08ED84A4680290C355CC432081CE49F86295C1B2AD
                AC3486C2322D9ADAA0D24C03313A8617C9422DFBA1B2B5879972E4B8914BF130
                B79569C412D951D74C5957CD56788D0D2A80D92AB0A3444B35A3E301CC22F968
                9FBA6748DE62895CC3676DB07C21F650AB686DC5242B6D0C34AD4CA14E7878E2
                538E2821B48A951D50A9790529895D16C5CA5FB842662716655955E134CF57BA
                2CF0E4F2ADDF12E965F53A1D04D958BD34C524CAF8C86920F641528D00D24C2A
                5B059A245C6676F462C341732FAAF52947BC98ACE4E2ADF2591A3ACC7D5A75C4
                2BF8A90AF6521E757319771C166E4D00113AE38AB472AA1D55BA24ACFA24A8EE
                A622FCC1E64A0695183955E4D8D4C238BF184BF3CB54B34ABD2DA78E7DD1650A
                7DB5F2EDD6322F67A557A1C1A1420389254C28F08D6D1EF86DD6D569B58B493B
                444E949B24809ED50AE29C6A59347662CF0B5E252BABAE3CA6617E4E85DF6DEB
                D6AEA85BB2F34999520572762C93BAFC4652D1C8BE926CF38D78ED2B84985FD9
                B5B7E109492A987D7C54FA291E02019E5AA65DD6949B291E31412CA6CED4B8A8
                9995656A5B6D2A80AB4E8892647A4EA7DB1841683654185D08DD8A7A75F5E721
                9B2DB55BD649F843931A456F7177211CC20BACBC89A29BCB6050F5626936BEAE
                F90DAD3EC38BC9A5A8E4E91D4DEF8168AE6A69D341AC980BC22B2FBA7EED0689
                1052D34A965EA5A164FB6172AFDE45E950D0A1B612AA954AACD1D6FC77C4D96D
                551603A08D605F8A6A5ED706A6ADD9E7047BF18944AB82974F17F31F910C4A37
                A5C55E760D662AB506A598452A75010A69A265E4B53634ABA51942721289342E
                534F308B2A9753A794B7155EE85CE60E2AC9A2F5B2A35A0DA20106846B854BCC
                2AB34C7A5CB4EDFD064871A61611D5A7C31B2A3C560174F87B626E635B6D288D
                F4C53B36768687B4F8639F776BA40DC2E86D6743082E7878E29AD8DD940EC86D
                A6C5A716AB291CF01B400A7D5F6AEF28FBB1355D3974D3B0E295ADC57697DA61
                D9A78D1B6C54C3934F9BCF153A923640C24FA787787075F453F1C533307EE9B5
                2BBB14F4C9FCAD8F69F0C4AC1D2EAFAB3478423D357C2153B309B52EC1CD49F4
                97F0C6A6EB730DA51E3E31272F4A85BA01DDAF12B05CB2E884FDBA86B3C986D8
                65369C715652212C362ABD2E39CA38DC70E84A4AA14B56951A989C99F56D840E
                B3F0871F75565B6D369461730E5C8D0DA3929854DBE9ACBCBE807D25E39777D2
                43D4ED07DD898B46B935291DF086BD6BC0765F8BE939A45B48346507474B1B96
                78B68D216ED2E69A3DA6EF7E27A69E344362BBF9A1C9A7CE72B40E48D90979C4
                FD6A605A557D11A8639A7FD638A577C36AF52852FC3C6274F29211DA6989A954
                5C0DEB57253ACC372EC22C348140314EB68144955B1D62B008B888333A5E50B2
                DA76AA16EB8A2B7166AA51D70AC26EA7847335AAEA4EB38E41FF004AAA462610
                E5F98A64EEBC7B216DAB8C8364C349F588527BABE189D7DC3443692A30F4C39C
                77565661EC22B17AF836F76BF9E68322CABEAD2E6869E92E189446971579D835
                986E5D94D869B1640C4526F06E30EB7C8514C4AD3439690AECFD04BCA8D0CB75
                3BCFF818E726CFA6A0D8EAFF0030A6F5BEE251E3E18A5AA28A76AE1EBD1DD4C5
                33307434D95F7454DE627A6794A0D8EABFC62B13331EB5C52FB4C65D42A99745
                AEB370F1C7232FB54A70FB3C628225A5C6869B4A3BA1AC1ADAB351C239BF50F9
                DB12B2BA9C5E76ED701291448B80C4E22B453EB0DF8F8626554A1794A70FB3C2
                1C5A0D1F77836F7ED8DA62565A99C94D55D2D78E6E62B50E3AA23756E80E1173
                0D95F5E8F18999AF4909CDE96A852D66D2946A49D70FCF2C5CC8B08E91F87B7C
                C9F5F29BB1DB778E253DADE749EA177BE189041BDECF5F4468EFF662956A945A
                93945EF38E55BE53D5EC07DF8983CB5295DF1252D5E220AC8DFF00E212848AA9
                46804312C8E2B4809C536FFAB694AEEC53B33CB586FB07C7135839B566379EE7
                4B57CF3C4A4B915415D55B85E71CEBDAD0D288DF4C53F314E4B60F79F0897681
                FB47AFDC0627279433DF344F447C71CD7E5081FDA219646971611DA604AA4F05
                2A9A7F51D3E10DB48E3AD412219974711A4040C783DADAA5ABD98A56BE9159FE
                E313ED8F5A55DB7F8C60F5FF001427B6EF1C499549E126557F4469F086986855
                C7141221792BB20D58474B4562A6F31373AA1C501A4FB4F8798EB9CA595448F4
                89FED3FA09C98D214E1B3B85C31C9344514516D5BCDF1252A0F1525C237DC3D8
                612848AA94680432C278ADA02075625340E74C2C23AB49F66296A8A176AE1EB3
                EEA44F3D5A10D1A6FD58A6A6297B8E59EA03E38CB60DCCB69478F8C48B3A8BA0
                9DC2FF00082A37002A6262695A5D59544CCC1FBA6E8379FF0018E52501E224B8
                A1BF47B314ACBFAB6D29EE844A83992E8FEE37FBA245A3A0BA09DC2FC739315A
                14B66CEFD0314ECCF2961B1D57F8C4A4B83F68E151EA1F1C4858D2EB8A51F678
                7992EC037BAED69CC07F8C522CD2843409DE6F31357E6B546C757C6B128C690E
                3A949EDF3252587DD36547AFFC4000549D512B2DADB6C24EFD7135B1BA363B3D
                F589141150176CF55F8DD4D68A79496C7B7C314A6D72AE1EBF8520A8DC05F131
                32AD2EACAA265EF56D53B4FC31ADBAE73EB4A3C7C316535BCEA95E1E11252FC8
                6CAFB4FC200179312D2C3EE9B09C73CEEA2E90370BA1951198C02EABC3BE265F
                D394714AEF89149150176FB057CC618D4D35DE4FF8C5292E74B6D8077EB80E52
                E75A49AF7434E8D28505402341878A4D5A678247569EF877082C6633988E91F8
                7B62525EBF68E15760F8E26974BDD5A967B69E18E71FE434A237D313F33E8B2D
                D3ACFF0083E7CE4C568A4B66CEF370C72B2DA728E049DDAE283444D725BA363A
                BE358906CE8CA5BECBFC31A25526A8964D0F48E9F0C52EC0D0DB6947608C97AE
                7529F1F0C52435AD394ED35C73AF56A14EAA9BB542DEA5CCB47B4DDEF8C20B06
                872453DB7629F57A56D23DB88A94689179313335E8AD599D1D5124CE90A7535D
                DAF14F3A4D6D3CAECAC4A57F3FFC4E36307A0E72CE517BB57CF36295AE972AE7
                69F7460E3AA8BF0C527FD7FF0033E64BB1A9A6ABD64FC044B31EB5C4A3B4C504
                610AE9F2873FE46242BCA27FB4E324DC044D4D7A2B566F445C210EA87012DC22
                B7EA1F3B2093A044C3FEB5C52FB4C3EF6A69AA7593FE71C84B0FCCE1F60F184A
                137A9468219653C56D0123AA3082C5C722A1E18B096E6FFF002C6CC9A0D532E9
                AABA47E1EDC583D14A70293DB7C4D6C6E8D8EC8906B565413D57F8639A99AE72
                5344F4B5627265628F4D0B43A3AB12799A56324DC044DCD7A2B5E6EED0219A8A
                B2C70ABF0EFC583DED59E83DDF1C4D4ED78554BA528E99101205A528D00DB12F
                2BE92455676AB5C60DD9473FF1C583E9EAF1A2541CF985FF0068BFDD89BB628F
                3FC2AB9B67779F2F2A0DEF3953B87C8C6A7C8CD976EBD66EF7E29874E95B8A57
                7C4A29C202555454F38BB129095072754331AD9CE616EB8AB4B59B4A27598916
                B94F26BDB8A4A541E224B846FF00F1141A61864686D013D8314DCC7AB6C91BF5
                629E98E52C23B07C627DB48AAB27680DD7F8627A55C367CA522CD7943577E2FA
                1F0770CFBA6CB851FF0018536B165693648D861B51FBA6D4BF0F1C538D2850A5
                D57B6252695C442F3B7683095A1416850A850D7056F2829D3C46469543385679
                60393AA252DEB09C528C7AB6929EE8CAB62AE4B2B294FCBAFE79B13B839C551C
                4AB28DD758D78B39C40DE6128F2B62DA8D027282A6279C1A02EC0EABBC21875C
                346980A7964EA0047EBB5DCD2FDD0E4C359D2F3603EDAB683F18939855C84382
                D1E6D061C9779B98CA236205FDF0129969C513700109BFFBA049B2953535309E
                110AE3369D879CC225D845B7566E10641B6DD99520F08FB60516AD7AE30A2986
                9D64B4CF19CA6955C314C4F4C21C5E59F0C8C9815B935F18BDB994EF40F7C015
                7AA7F870EA46865096FC7C624107465428F55FE1176106BAEA227656566D97DF
                5B4AB2DA1779A5F88B4EAACA265362A795AB11350B9A50E0DAF13CD0CCC4E9E1
                A6C65A878DD7000D26109D0109A44C3FEB5C52FB4C1769732D135E7377BF1698
                4CACB2AD4AB278C3D354071ECD9268E7A8FA5F96281490365626A5C8A04AEA9E
                8EA89471668851C99EBBA34E254932AFAD3E2869E8A610D3692B714681235C06
                CD0CC399CEA86DD98985F25F1EC38A470794D96E5AB7D78DB232EB1566573FFA
                B57CF3626E6102A65D753D13F23134DD73D851428778C4B75D50436815528EA8
                71FBC32331A1F9604C3C9FA9326A6BE99D9FA0C8839B2E808EBD38DC992339F7
                34F30BBDF89E7DB6CAE49C55A0B4FA3CC7109744F4C11A0006FEDD3099BC2685
                219ADAC9B9C6737C4C2FC9EC4AB8AB4DA909CD897990D1F27649529C22ED189D
                98F2771D616064D484D4529A21852A5D6CCBA1614B5BA9A5D8DC6A51B2E9B40A
                D29D3679BBA0368937D4BD99330965EA6596A2E2C0D589C98956CBB24A35CDFB
                BE63CD15171109936E6A65FADC1093798F2A9AA2A7542E1A9B1EF879334D2828
                AC9B74B95CE21F9E79A2D2148C9A2D0A137FC2339694EF31E5383A61876769C2
                4BA1C16963688285A4A1634A5428446465A6DF6D27421B5984610C3A56EBC739
                B9326AE2F9D5B04486109665590405A1694DF9335D708434D28A2B9EBF45239C
                C3EDC9967C992A21B558AD440266814D789934D0F74199C114CA1BDC90273D1D
                1DA23D361E41E8A8459C2524CCF9F597A17D64401238225595F2960BAAEAAC60
                37E71B6A5271414661284D909AF1091A8C2DB7659D5395D21248573C4ECCCE8C
                83B32C1618655C755749A6A18BE8C9E703364DA96993F7675A4F318B330C948F
                4562F4AB7186D8C2126DE1043628852894AD2365A1AA3FF6DC1EC482FD6DEE38
                3713A21532EF00C695CD4C9A27E30B93C15536C51E9C50A29CE61B0629D96941
                6E6F2C971C6C7194D81AB6DF0108927CABF96624705E512B7DA2B75FB06A12A3
                A0629254C9B2C8752544C4C29F9674AD6E155A4A4906BB0C3985275065D286D4
                9610E5CA716452E1899996BED1B55A10709E0E16E45CBD681A585724E20CA27D
                DB3A06B3DB1F4A61061E9B9A37B32C5254A51E52F9A3074D4CA159F2A8054534
                CFBEA2255B69B2E1CA249A6A158C3932E3B33E4AD34F1682D4AB179A2683AF12
                972CE59B572D04552A1CE22D3D81D85B9B50EAD29ECAC792CBB6DCA30BD2CCAA
                296F7EB302670BB9E46C690CFDF39B86AEB86DA6DB12D24CDCD4BA740E73B4E2
                6A4DD5A5AC22C0B2C38BB83A9E41E7D905A98694CB83D15084270AC979538816
                44CB4BB0E539F6C5AC1B83436F6A7E6579429DC3442D684AE61C51AADD5681BC
                C29B91704D61150A2E6C715BE647BE2E9C7C7FF618BA7E67FDE54613935BEECD
                4C663AD21C5951B8E752286E38A524A4D41B995A72F33548379D09EA1179655B
                DB8C9CCCB4B3CC2AE5A6C9BC6BD71E5B83C99AC1CAF48719AE65465A5C820DCB
                6D5A1423FD3D594D995BBD91935F04C56E65BD7BF6C34E61698460D965684BCA
                095AFAB5436D4916F22919A1B35F3CA8DC05F131327EF5C2AC7292DADB6C03BF
                5E3B4B909752B6E4C47D5E59A67F96803F45C23ED37D258117E1197FE95D7D91
                74CA97D16D51443132E7501E316BE8061C5729C22BEC8B3238364E507327FC46
                6BADB5D06C78C5F3EBFF00B47BA097675F5D76B862A6F30149252A1782202265
                32F3E068F2A682CF6C112AC4A4893E94B3002BB60ADC5A9C5AB4A946A4C5B957
                D6C2B5D83A63273138E38DF22B418C2924A54341101B7CB53CD8F4669B0BEFD3
                19D81B0713CCD91E307C92564E455EB18673BB4D614B71456B55E54A3526324D
                4F4C21BD490E1BA0ADD5A9C59D2A59A9C7936260E4BD52F393D862A30049BE76
                A6515E11F54C04CCA2B96894A1FEE8B734DAD67F8AEA683AAB17AA5D1BD67DD1
                C24EB29E8A4980BFA516958D05A6E87DB161EC35849C4ECCAC5F9773A4E47EAA
                A56F755EF8BA41BEBA980DB28C9A06848D116D72CCAD7CA520131730D0DC8117
                2123AA38A20A9C916ED1D68CDF6405CBC9B6858F4CE71ED38ACB884AD3B142B1
                465A43436213482DFAE7128F1F0C4D3B3528DBCE3AA52AD2C5F4AD3C22BE408E
                D30532F2CDB15D6D0B27B44296B6DDB6AD2ACB289EF8CC7E651D60F847058414
                3A6D57C63839D655D249101974C961260686E673E9DA2B1557FD2E851DACCED0
                7656380FFA51015B5D529EEEAC649F959A431A996982940EA0233A55F4EF6CC6
                72149DE3125C694A4389372926F11252B3010E610422DCC3D600554E84DDB041
                9898FD4E50659DE7A684F5987A65DE3BAAB471E5655E532BFCBAE3EBB82A5261
                5CB455A51EC8FF0043ED9A5C1123292B83FF003B4DD57FF7182E3CE29D70E952
                CD4C028242F514E9847973EE3CFB99D65C556C0D9894E3AB4B4DA74A96680407
                19712EB6742906A0E398BF847C6491D7A7BB1B08A704D1CAB9B879B9CB4A7798
                E127E5927617445F3E83D0055EC8CD5BAEF45BF7C7072930AE95047078380E93
                BF08CC6659B1D127C62E994B5D06D319F841FF00E95D9F6470B30EB9D3593FB2
                7052EEBBD041319B83DEFEB167DB19CCB6D74DC1E11C2CD30DF46AA8E1B08295
                D06E9E319EE4C3BBD407847EA96FA6E28F8C66E0F96EB6C18E0D9423A29A7ECB
                212C0EA5384770F1C526C6B4349077D3F4B9CD20EF4C2A65C959753DF749C98A
                954296AABAFBAAAF3926049CE37945BA728F51445FB2ED91732E23A2E18CC999
                946F20F84705843A96D7C63835CBBC399543EC825720E91FC3CFF645975B536A
                D8B14C7F494C278168F040FA4ADBD58ACBB3F2E850D45C1589454ABC1D975BC6
                AA468341052E55726E71D23D1E7101D96744C20FAB305C9A7835F909CE3D5195
                22C308B9A6F60C6CA92D21784677842973D06F545C99746E41F7C7EB963A2DA7
                DD19D841FF00E9559F6470936FAFA4E1317FECBC14ABCEF41B2633707BA3A79B
                ED8CE4B2D74DCF7470B3CD23A092AF7470B3AF2FA0909F7C6721D7BA6E7BA337
                07B47A62D7B63829665AE8200FDB9F1A994A5BF1F18966BD63894F7FE972D34E
                584E8006956E83E4D22A27517554F646566165C70DC948D0398084CFCF27EB1F
                76D1F439CF3F9F65D6D2E27628562F940CAB6B26CFC2105B9D5793D7392A4E77
                6C36CB49086D02CA52312F08C8A384D2F349D7F9844D608AFD652AF2996AEB3A
                D3D9052A052A171062EBBCC185B0A0A4B27EC583A5F57BA1D9A7CD56B3D8367E
                C34424A8EC0233242655FF00D463F5229E9AD23C633972EDEF59F7470984109E
                8B75F18E126DF5F4682339A71DE9B87C233707B27A69B5ED8E0A5DA6FA0803F0
                67A664DE6D497945650E9A1061B9B9E71B3923690DB77DFCFF00A565C65E0DBC
                D020257C531F59996594FE4AA8F8405B68CABFEB9DBCF56CFD37D2D82EA8520D
                B7108D4794203AD2DB93C31E9B4BB90FF38E78226655D6A9ACA6EED8A24151D8
                22A8945B68D6E3D9891DB169C5A70C4F8D0DA3EC5079CEB8CB4CB96D5A86A48D
                83F463252330BAEB0D98FD532636AD60470AFCBB439893E11C361027990DD3C6
                33D730F6F501EC117490574D44C707232E83B4342335213BBF7357842451C0E9
                75A4FA1CE39A2CB53CE84EC5677B63F5BA6E6D3EE8FACCD3AF0D8A55DD9E78C8
                4A3CE83AD28348CE650C0FE2AC7840F289F427686D158ABAB7DFE62AA0EE8CD9
                0695FCCCFF006C51A65B687E4481FB14ACB3968BD326880915FD04C372EA2A2C
                2AC2F36EAFE8B2B30BB09AD9175493CC22BE7A44D4CB6C95680A37C256850521
                42A1435FE04EAE5AD1436AB04A86BF3D53D248FAA1E3B63EEFE1E650698E0A49
                C09E539983BE2B3536DB3CCD8B5EE8E172B327F3AE83BA3809265B3CA08BFB7F
                65B535308641D168DE63272B34971CE4DE0F7E2274B722CF7FCABBA3EB532868
                F275F642BC92612E94E91A08EAC43CAA650CD7403A7B20994984BD67481A4754
                65265E4328DAB3134F4B4CA1D532D95D9D07B0C30ECDB961D9E7894D41255ABE
                77C29C59B2848A9302625979464DD6A948C9AE7536BF202AF6479436F214C69C
                A037464FCB915DA01A76C05248524DE088C9B93A9B7AEC02AA7643D3027434C2
                D3604C379D66B74356E64BA84A6D17DE34AD6FBEB0C3EEE12B6A67ECDA238307
                6D690B987D76194E95422D4D836C5ACD493DB087995871B58A85275C25D9B732
                4DA8D906C937F542569354A854185C8A1DB53281552003775C2E6261793651A5
                513CAC2072AFCC2ECB0DE75C9FF108965BE8970819AD0BC8EA82E4A3E979234D
                3488980B9B4A4B06CAC50E9F185AE59F0B08E356E23B632027136EB4AD0D9ED8
                2A510948D24C64BCB9BB5D74EDD1066261CC9B23D2D3084AA6C55401CD4934DF
                1E5AB78793501B62FAD60B73AEA5132E3B65A69083A232934FA194FE63A63272
                B3295B9C920A4F7E2CACC3C8651B5663252D3695B9C9BC13DB0D3130F869C72F
                4831E4CCCD053A6E150403BA325313203BAD290554DF4833A9792A9509B5941B
                21B79736025CBD2286D1EA82E4A3C1D034EA23AA1F4393694A983458A1D3E30B
                32AF85D8BD408B34ED8C919E6ED73569DBA20BCA7129680B56C9BA91924CE0B5
                A2A5240ED8CA4C3C8651B566901966712A70DC010457B61B6665F0D38E0AA418
                C8A26C5BE74900F5C4DCEA27D738D3CE1369C05211CC2BBE32667916BF2D48ED
                89A9B6D61432598A06E35D112DCA77853D7A3BA9E794A85526E20C198C18D179
                8569653C646EDA20171B126DF29ED3D900CD3AE4D2B671131F5695699E74A6FE
                DFDA0937010FCCCA6097B0D3BC52A3F64374499460DFA2D4DA4A9C686E37E882
                A37002A630A6177CE4D2F3C4DA56A02FF18989991C02FE16CA2CA8BCF0CDEAB8
                C4D3CDC9FD1E843545B1C93744C4D9BF269B86D3AA173584E4667084EBA6AA5A
                9A0A48DD0CCCC84B3B2728A6D5954AD141C527C043D85F08A72AD5A2897615C5
                488967A5184B0F2DCC9D96C52D5DB2302E0D17B720C05AB7FC84C4D729CE0875
                FC2B182BFE9C61658B6CE566969D206922321E42D2934A5A526AAED86705965C
                5E705A65A5B8EADF0B42BFE99F2141B9131A0A4F64606C00D385A71F642DF5EB
                4A364647C89A58A50A969AA8F5C609C0B28DE4D0FBF69407654F6F743F26A514
                E0B90A0536934CA2FE6B1345328CB0A6DB2A4B884D0820460892AD5E9A7B269A
                F242AEF0879B54BB6A0868953AB4E71BB4D61AB5A0AD453BAB136D015584DB4E
                F17C4B4BB1C2E1327C9DB6C771ECA41B672936EE7BCEED313AA752162C512142
                B9DA044A4D34C23E937C596DDB39D557C22B36D26766D77B8EBC2D5FD707C946
                4E58CB29D750340B8FB842F0A4EB497DD7966C858A817E9ED8764E5F8096C905
                4C21ACDA8BAEEBBA125A966997038128284D0C4A60C98CB2E5586D26652C7196
                AA6887186303BECBB6783703201077D6300E0D5543F30E52FE48341EDEE89A4F
                9337C1B2A39429CFAD34D6065921456486C2B9D5FE6199C7655BF28619CAA9CB
                39D5A574C7D2F8553E50EBDF66D2B8884EE8C1F3920D265E672E1212D0A03D51
                53743D3B84A5A626D949B32ECA13542473C49BD82F073D2732DB83EE8241EC87
                D2F674AC9A002369D9DA4F6448791B0DB134A7ACA3249B27E6B48703ECA1F5D8
                2A75F70554A3ACD61D45F59A9AB081CD757D9080EB0DCC4C119EB7136AFE68C2
                025F839644B971C40D09B818770ACEB497DC79C5584AC540BEF3DB030730C299
                965D1D9B12A9CE5EC1F3B61C976B033ED2ACD10E0645A0755F5894010B5A5B74
                E513AEC027BA190CC9B2C4D359C1B28151B8EB84D8927B0BCD302C169BFB31BE
                306B09C0BF44CC17450A6EB42BB844C25ECE959340491B79BB49EC8989A6A51A
                69F08C8A1484D38D7448E0E9CCAA9C75295E418E3A8D6B0EA7FF004B99466CD1
                330AE324EA35A4606C1D5E1671CA8DD5A8F6884369B9284848FC0E6DA95169E5
                2740D62B7F743122C6059933284D9E2D9493B498C22EE1064E5D48FB5033355C
                3E7544DB2CFDAADA5253BE9064C49ADB530FE72299CB4E9D1BC886E5307E0679
                B782426AE8B2DA230A79634B4CC29D169C50E3E9D11332ECDEE9A29236D0D690
                CCAAF044DAE6DB4845128B8D2269184436CB8F8504A11E8248D70AC1D3783661
                C52146C1693A630719D9554BCBA3844B7C91A6F3B6E87B0899472665A61BB356
                C68B87BA30732B91765A44B80D1634ED2618C3126C1996EC64DC6D30D3729821
                E09AF08B7B340118426A6B07BF341EB9A71A4D6835430E9C1EEB3201C1C0FDE2
                B9CEC894C3124C17D2DA326E349D9F261A6E4F03BDA45B5BD70035C6554DAC31
                28CD12A22E27E55DD13CE893726E4A6D56ED37ABE6B025932ABC1B8389E15D77
                8CB1B0460F61B6949929066E34BABBFB21F432852DC768DD102BBE2525F5B6D8
                077EB87265F39A3427947641C2530D587DDBDA6FD5A4E29291650B3977C5A294
                D6839FB619F23157659616940D620349C0B30A9CD14A109AF644FCE4CD5FC2B3
                D46C86C56C27676089597D6DB601DFAE30BE11790A4175DB28B69A66FCD2303C
                9A50A2C85E55C366EF9B8C4D4EF92393527349E3342A4432252415292815571E
                9A14A8D804256A42F2126CDCA2334ABE55DD0A6586D6E2DE5845102B769F08C1
                6C34CA9F665D49CA252360FF00313CDB926A914389B2C970DE7AA1383E6F054C
                3AE339A853634C3584B0A3625DB67F5795D8769871BD1692442F074E60D9870A
                164A16CA6A0C3D35352C24E4AC706D2BED0F3C4F4E3ED96DE9A7CAA8A1434F92
                630635935197964E54AE97574F8089B0D214E38E0C98091537C606C112A9FAC3
                52E5F527F31BFC23209C08F796E8A90422BB627DE72B3384E7884B8502B4AEAF
                6C4A4BEB4362BBF5C3985132AE4DCACC37615931529D1EE86912120B95642817
                1F9B14BB60105B560B75E94A5CF37AE1784E5648E0D6D0DAACDB164AD743EF85
                C9AF03CD2E6AD9354238DBE25A7708CAA82724A52022F4B4286EAEDF7C4ECE3E
                D96DE9A7CAA8A1434F926305C821B5A9B71EB4E280B80F92626275F907A69852
                2CB4A6935B3A3445A6F07BB2F22950CC57DA2F9E9B23034E4B4A17D96121392E
                49E7F9D5F8EA9C71410848A951D51E5CF02305CB2A8C367EF15B7F68C313FA52
                D7008F9FE9EFFD8FFFC4002B1001000102040602020203010000000000011100
                213141516110718191A1B1C1F020D150E13040F160FFDA0008010100013F21FE
                71C2F9ACD1CBA92B2C2C697A101E6A6E4DA07AD7D0A8D69197355A1384E6EC0D
                A930171BCF5B3C52F3CF53CBF21436E6640367FF00348CF8574BA0CE958BB16C
                FD6C5B9F02C87EE8971E934C2DCC7C91EA8ABE5008BEF32A8BF38BE47E280171
                3FA17853F3081C2344DB267C779732A2209AF6EF279FFCC5BE1D0DBBD5D06B4E
                230E64E86450F7E2B58B55951A757C63F6BB7E5587E486168EC97C1B5224DC36
                CFDAE78A45EF270AD46A69F82D6363F53FF966866C9E4C54E4DD8E8B60A09831
                05BE4742811DF77019BF8163219F1EDD450A7CA5AF424CEBC62735F82490DCA8
                E4B2659D43EB4A76CE91211A982669F43AF7FF00CA2C12D4831121B3F932DAAD
                11A68335B156065CA6ED7E2F7C2A36EDE0A67D834DD1F1E3F960101F65CBB3EF
                9D726EBCEA3B25A9A5EB4CE3936FFC9A4AF6731FD15BA9C0779417C8F976FC81
                027CCEC7629E8D09AA04DD8EC8EB4308B0E6893F134CEA731A971715CFBF629A
                CFE8AE030752FF00F9325C900EB1E474A66C5BD196277C3AD026140323F15FE2
                740E7CA7EA893398F82EE77628F14100C5B63AC475A0163752EAFC8EBB7E4589
                310CD77D192928368198373A9252F100DA8FFE470A766001D951E2AC4FCEE80B
                1CDFC49552B23943F74FD6B17A636097BB5667DA1723CE27580016DE82A72C0D
                17243937399517035EC13C9A9F88C50F4FD890E12B332F3BDFFC8D74A3C22785
                C644BF583C471C28715B632FA58F1584043474322B043D1DDBE5EBAD482C3EDD
                F09A242A213333E0A4D5401BDBEC7C359A384851823E46849493F4A1ECA18812
                3275E26A5C486B377C2314ED64BC93E47FF22D22C7E570BBE923432E651F2F9F
                5C14D325000EE7BA48D8EBA73CDEAD18051803169A1F16FE9DFD0A8276BAE874
                CDA4919ADA3351ECC6212E2F921D6B3828FB1E7E91A5104824363EBF5588EE33
                0D47337A9041C54F3959A1F547CD127AABE1A6F9469F50BF45EE44C44A494AC6
                5FF911FF0057B67E296165D9DB3E8A8490EC1F8B9E347A4F8E6B2066D3CC0373
                0ADBAB9B5D9A4C4ED8EE2A70E1170930EC28C48E9B17D19234E747EF8B0FA7A5
                47147409AD0294178105BE7E9DA9A65C420773F0732758B595BB7F124C87B3ED
                5B19A73EE864B5FF008753FD2C1EC1A65B7768E5D483C0D27851423B8F018992
                592B9E8DDABD27D03F2EF490AC2160B1EACB6E75828EFC21F028E8D2F8544DD8
                EA23AD44C6B5F262D9C3B69536D22D61623FAAB5A106C273CDB34324972AC366
                08A9C9C4A92957346A91646ED1F565A207CD5CD02FB132DDDDFE1D0DA32BF264
                A94E78258DF1F68AC5EF530F5E19D6A39FABE29B82625B1F29B65FC316D0524C
                29BD0B3D58FCD3852341F8A5DB47BE87AA2B6DD7CBD7F01487C6572AEF4FC9D1
                71BAFDCD2870A3F7C743DC54E939A46E2EAA8FF6E503388EB4775064F9BE475D
                A80FD0C8993A687BED198934250BCA179B67D0D1F9BC8BE27C35CAE293E050A4
                FDBE752070BED825C397F0F0EC36373EC72F4EB1E4E55AAFE24D9394342B0713
                2AC3E7AFF0BFF04137524EB48A4484C478CDCD300473D58AB572897BE5CEDB52
                F182177F6D0DEAD5902ED7625EF467C177357AE3C0C1556FB9E06FD68C7B45A0
                353D8EBCACF22056EDA14A24B00B1B31EAB6FF0082446CA5FAAF6E8FF0C87010
                231CDE7C8FEA91914655CF85C9DED32899CC0AEEC7B6F5E9DB15883EC80D0BD9
                7E749C29B8CC49D33235EE78FE1A654A16B38B98E3530D28FCD54AE8EC9D91E1
                424E962029AEC3CB7B7F41DCAB15225C0320C8DA9C58A82FA5CDCF8C55BE1A52
                C3EB2AC90CF7B26998D38E4B3483667CCBFBAC01344957A1B37777CDD6A49A30
                4F8A5CCE57853148C766803F851EEAAF0012B534411BE57C1F3C11B3A0095697
                E6135DF1187FDFC078F44D69F32F7DEBFB294E777F87C67903EE920DEAD5CA2D
                F69DE83487F6218F59A758F072AD02A0D6EADC7F5465EBF035304C1FFA7A5610
                569C1D56656BBD3C8607AD188FE6BA989EAA7C3CA3A47E3F874D26C6F0BFC4E2
                39CC272D3FB03D3F8D220D0F20D1AC10845FE2B6C79D229121311ACE1B308F8B
                B53616CA8FDB7A02F98103C5412B050035E7E2C1D6B370E18E8F93C1D58595B9
                6B5017B8EE0337F87B8D023F62DE1C6CDD32FBE67B7F1F17C8E6BF66BBD34F0C
                A8C6E625614FDD736FC50448FAF1546026E3D0A6499927B2F0093D430EA15A9B
                15DCB1CECFC0A358F07006C7F0C928926DA9423DAE01358910B696638C610E86
                36FE4BC1A00232399FC7E6815E8434E249A03B93E6A7B92557B666CDAC16F5F3
                14104F98F16DE2ADE520203F871A15B10B6E72C43BCFF814BC4D4D890DB175FF
                0044EA5BCB7564066D5F6CE39BB4D1160586121847A8FF0099831AE5A735B1F2
                5209A990B3D228D899F0401B3AFE01E9B56404B489B5943225895A2866E042C1
                1CE7B7F272104C9CD45F9BF918295742B9CC0052DD0799FF0046E2274F581C13
                3D8E9A89F25FF3088212230BA6D36AB8A6C2C72196A571BEC66BAB9BF84ED083
                1B821D59F2C523975D4FCDCA8E01A01007F266D3A06C3492BFED7ED4B5AF80E6
                791E2A2F8D711DDB2803A6099F7A2F13B9BBDB9C7027EA8756912041289D0C1E
                784E69608B2E86B4306D077F04533828625A28478EA2FD3CABDFB33F756F3FCB
                568373CFE0E44175702900FE2EF32DE68C20E4D48430CBA9A7151A060EC68DDE
                2800160E38940270E64A3AD3207A19E6A9556D363BA6A71ED25D530EB40D8D22
                489C6320700CE418B4DA6E919E654045A15E112525E16A3C66892E3DE8E704B8
                16B19F1088695202B590EFF473A358DAC155A9AC4DAEE9AC3B3EA9D78005580C
                569A98B09E44255C20C2E35A2373AD5D952437BA2F4B803386D08C9321E62F8A
                CC66CC3F869E342A4CC4CB2FB78AFF00B2AA316FFB3DDE29D0721570BF3C1DA1
                D8CBD0D31471C3CD2BD4DCDC4BF2CBB4C04356F6A2F3AE063D229D289EBA264E
                DC6485E07D8C4F4A8BBB846DEDF146434A701E80FB5FC567D0E62A5556680A55
                CE4423A612A99471CBC12C509053603BA28F4164244A502AC066D6708D69FA6B
                5CCA907D855CEB617D914D930413F2C9E8FF0087CFA8E0B14BF1AA3378790FF5
                41EE84A866640414B81829B1361D29A0BE471B11DC714CDE37822E6C1D2B0033
                3A4A28255084ED4846E444927C76700C62B02861ADCEC53A699C8759A252E7A1
                04C9E0D431A00C0BD23865F35B7FE0DEB1DA98CB423373A1735369E632763AD6
                C877E034452C3911406A4925076879E071EA760066D1A9777D99A63AE95671A3
                916B7F6ED5205AE3FD51E2A021E960333199D32E0EB4F3A6134100D288028ED5
                E225E469BD67472483518151CB22E30EE27B142F5804345835637A275BB4D65C
                CB9040E8055FC933320FFE75E1792BE1F1FBA9AB96F2073D5BB42DD202C6ACFE
                D4F72020EE122A6F028F8F84EA50BBA135B58D9934598B0E0848D28796CD003B
                2F0001183C0C8D5AAB9E2BF799BBA533D4351863892F09EE24C8149D8271B6B0
                21B77ABA0A624166DB2300A63F8B9F2517739E94EE3A8BF1DD4A21CC8B958B31
                BCD180B198D212F69A46AF31433E07532D032C76729A53C592D165CAD0EB8D11
                FA95B9ED4914E75A32BDBA0F89E086FF0099B96BA9DBEB8F4CC6469B1E0A3955
                2BF6F25DF15000B80DD12351300CE9E02A3C41904D1B2A140E1720F5384F7725
                404F6E246A9A46114AF6477AB7A40EADD02680817330101BB47C630881D57C61
                499F2864BD1F9A0D07C334EE0F148E037F33176D1A76CA90308D46AB12B1C8E6
                C9E9AFF8271A2C6D177A1D78C149B59A5BC876AFF9904798E111C5D5E5FB38F4
                339B08780A8B12CB9E0FAD386359ED233E56993941CD30500C0182FF00A191C1
                0E13780776F258F115CDB7F3A06EB6AB941817662A57369EEF9FA46FC03DB951
                25232B2B756AC762AFBF01848CAB032E5EDD2AC25125B13B62EA7184A5D42DF4
                C1455E79F09A2C5667647FE433ED9527C301AB47F9C205F5F968714661C3B04D
                3312C4DDA970C41BCDF7BD03A7139053408E36D9473D6A5894856C83A63DB8C7
                E2097695E9C01D100BA123DD45D8B5C83EC1C0D8A1D6E4C5726C7276E0E0CE14
                9B8CEC349B5263CB9D101E3830BB2B3590DD6D53CB7C5B640D8A8E29185FEAAE
                FCB8202B60ABD321ABA29A36C93C2D7AA60F4BD1784AFB7627D39A50968A7EDD
                F840274B94BCAD22722474A5F404ACC3D18F4A7E6866E9CEA4E12E92B751B723
                7E2D36076E409E9EFC16DF329A10F4A2C61A1B8C340870F131877B04D764E015
                98AC4FE9DD38FAB6EAACFC355B39E461DEACBB0BAB7409A11608F4E02EC341CC
                A00D925B93140AE045A8B7D87F82604F5D7FAEE71884CCE4C84BE476A8718B43
                42FE0B5CB0D9CBE0E0F81B14A91914BAB9D4FBF064BD289930175ABE0B093A23
                42F218FD8D5D38C07F1001ED48412B602BE26400A5B3190B8BF417E8A5C86746
                FE0343E0A0300E106A028D265E3CB84A5E4821E053F57D22C7A097B55F393CD0
                940187357F278362B1D80BE8C22AE6936D15BED4A98C05CD5BC92948A98F2716
                A612347A8F4FC0194860C6AF853760B791EC5214ED6F52CEBC035F9D0C77B58E
                9C4E46F6FB7E93822E47B69F1513791883DEA25DDAC5C28F4B07782EF02D3439
                8A384C45C6EE70A5A4431C560E85E81629B8B611D623AD0411C14BF7411E7834
                9B23B9505872046A8F94E038F7ED1A3CCBB1C48A7F627CD2E0E3740A7B382394
                02BB43A5031227BAC1462C72002388E65D801F3C11847D53A50E14835854B13B
                84B57C2837C6F2877A8B653DD6851C81F556773348C8A5D5CE871B23BBFA3BB8
                A11702A1EC3BD334E70C15D13FC11330C47D880E33802138E2BDC74AF770D282
                3A504CD70A1BE39282384C004E347F43AF09AC8BC63C291443EF711E49C26380
                CBAFED3E3778846EDFE95A641751E1528B2C9A14CE3049C89B1D0828EE88F9CE
                3D977E382765A4A8F677A0960C6840F9D04D3484213AAF151BF8935B8F07108A
                0E4EBF91384C78F4A25EBDA91F089199FB8F00AAEB727F0AC0B29A95F2F04E50
                EBB1EC5AC5172182FE549B4825B227C5000160E2483C89FEBCE95B2A018AD6A7
                A9AC2EEF34B7D3DB827CA85E2C7AFC78C27E6625E1708C2417549285761A9D0A
                719824E44D8E841538E11F997C2E2564058D267F5AF011F8048A8406ED1D2A99
                12200CEB009E6685DEFC6336573548780A5961C934B790ED4AAB9B774D1C984B
                AC3C87E10A60D79A7D1405004AE54BEADFBE5350D452EA45F40A6C2CDE8CD161
                224AED92ED4EB2F157931BB995DE9421D095353FABC0490DDCFE9E3D7AF183CC
                70451ECFB78FCC87A144FD894E2E4888A6EBBB4D11840202ADD67B297A051932
                74BC62C122361F0F6A400256C144B476405420C7A413F17093710BAC3C271CDB
                19B18F00A9BA4D0E880F144B0804D7FB38145895C821EDE0130AA300A7936D43
                90B78156EEC26C67C078618617620F115A2E11CF8D8297664703CDBF034344D7
                523D2B6CBF59E1181921FC182F31FAB2A31D724D828C420080A67A004983C44E
                28D8095722A10662FD860152378D1C1FDEBD1528095A65666E1B8FCD2378DE85
                1E0E2598B287B7B287C4006AB4394036C2299A800E8A7EDC21B9C648B4237A3D
                01C18D2C93712F2D25DCF6E09F2B53ADD726B9E3894A04CB9AB7934B2CB76AC7
                F41C423E72BD4E08CE293C1F3C4D4009572A84195F47E00ABA1A172B36758749
                E0B0CCC3B8E08FE3CB4078BBD2995420BA9A1A05A8CCBF97AA97D15F809B045E
                EAF1B07B49D579E0709FC2E322CF0EABF9DB4A35A9FEDECE37DC4074B6F1C2F8
                B9BD5348C1E7A2143CA0EBC2C72C0CFC53DD29077124656AC7490DB417C700F3
                83483DBBD3884A60281382E720E07230F473E51C033CF3E55F233062BC017912
                2ACCB1D42EDC154EE35BD3BB9E8785F69AF2184A1193E8B86E70BC3A4A1ED15B
                5826B3D0B47180AC835284295E5FF837A5444918010EC5C83970313F460A509B
                405D847C5E027A80E6301C9BF5A58C6BC42A565405F2380138D13A5E96351D8C
                2649B3DE29D8B9B8A3470AE405BF5BAD487DC064EE765A3CC6BCC0648E21A666
                D7016D4C049832F416032D29554407B742B9BDAB5E270181CA959CED430B216F
                2F8E02EC30CE6896A7DE63B54786901FD5ABD088F6979474A0F4295FA6063ECC
                4A62E110B8C074E04923781067E6753829B1DBBAF8051935322C972E53A50A52
                90158254E80AC4BCD371A65E7B6D00F0D26922A00BAAD48D5970B0E4D8C0E6ED
                42442B682C873CF6A384A4004054B91345577D92A553AAED8794ABF109E75073
                281AB76AEF8BD703AD17351B2A72AF875680D8FDF052C9BCD87FAF85D6478D35
                651940A54545029C1C9F6F06065E790F9E0BA5E9B09F43E382414330033A08E2
                27219F371ACBDED5B27975FEEB0FCE724413295DECEDC61E254746F3C2853064
                936762383B877BAF6281CCF52B6621CEED65DD008B95AC3B507FC40B1801CD97
                834822B1017460CCF7A78F890C1982715E2CA0DF262F667728D48310FD16A837
                341326089E414804491CA95ADADCBB4F068CA2891312B1369B25BA5D39D42C8F
                05F446BA9FADF8DC1BEE267350FABB7885434B3BD0724ED1436C1D49B22713D5
                2DB98901B9412CA4412E819F2A624A7518FB0E34BD57C4C6B470901A818BCA46
                6DC02D58824540B0E341BB85B6B47143CEA2BC1181337FEF2A0CC4F8994FB288
                8611255CCDFB53FBAC12B737E29935A24A461D725A95FCF4E842E34AB6C1B924
                F88033D780C30F82AFD360D4817D12D46CD77F2FBEC0EC687E4845FF0041B0AC
                40EE77B396EB9565AF565A7FDEF01A6D8E7C88687814ADFB11047352D5A08D88
                24B9A05F8019C1C04369DA62AE2936DD32189572B225D9CC8255782870293075
                1D92D4DC591339E1C8D1C23845C02063BA27CD72DFFC674468DDA418B195B945
                922E1569B41E0895D08A23622C9DCCB6CE038818169498D6F88A174C291B4A3B
                B4BF72965310EFB392DE8A5C017AA6666F09DCBFB456C866E958872E134FA2EA
                10605A9CED240DC677D081DEA6C307EB3D8A41B2C2F71D57FE6BC097EFAC1CF2
                FD940F98F846C57184B148808308E5C24A3019B78D84077AFB8F726955B5F35F
                065C36A97BA02EEC7926B854330F90DFBAC561723CFF004A08C669C2CA58AFB1
                5753612FB2C1BB4E9718311D3F35761A9D0A9059B9E42D8EDC025831AB08102E
                D9F29E0051247269B3E62A67C5011F4C6C704084937A004041F96147C9867EE1
                A25991A3F35288A9F74853EEE48CD114EB135738F9D2E5FC4767B343E3EBACD5
                2AE804A2ECB1903B4D3845315A43EB2708EA347CCA218F07CD66C0CC5D52D2CE
                29691BAD236DC509CC60F5AD7C25C79840F142EB2B8479D1C2083CB5F2A2FB50
                15DAA481B6861399440BD740DDA380440406D7B56385614EAF1BB87890FDE3B5
                5F44DF3BE8195F810FACE85E4B3D3181D0A83EBFBD50E257E8E1528CB30B726B
                204C86D8F79AF5783D0562F5288BBE7F6B434CD0B61C8ACA7DF9E12BC1E8F8AF
                0AC6AFCDC88C32A979C9646F79585C8811E5227064C78903D1A95DB923E2B58B
                B270F66784304E9F2A8BA7DDCED3422530FCDCA78DBCA9754D273B2A6A76050F
                4142B2BF6626B14A5C472203BD6E0BABBCA22744B7D15080BE1183D6BC4A1F8A
                F3201C2736C8A4D9A6C0A984BAAE2CCE7472449DC9E440473A69A5BB13974C38
                E543955868983D699ABAC4D2D55C3DA8748577C7AA4F245B04F55AC6192A9D5A
                19F9B8896D5880D57A6BFCF01CE126730B43B2645EA0E387C614DE45DD25C511
                604DCB1D583BFE2049BB65331BA87DD7D8B2D0D10F2673E14632BBBE769CB059
                2EFAA32EB8546EC9A7C81AC01F3BE0A0E07FAB2FFA81CFDE5B14049CFAF05063
                F4766AFA7DB915D808FC954F4EDC278A2237BE816540A64CD4F347407B3E9FEA
                CB803B093C704BDE9827CFF911881E75E1846813AB3E8B8B658CD30733412B65
                517A8091CB2449ED7A13ECAD66A43A417A54C534CBE41F0A757244A9DFE54700
                B387B5ADEB355D9E3112E20F07D3DB970618808A749A134232E6079A96BBCD2B
                4BDEB5A3BA0539995444B2C47962ED4B94C63D67778AE818E6C67046565EFA54
                FF00DAD9AA5EC0684A1E829FBACA3207FAD7A4652AE6FF00AA1C95F4E0A34663
                67B8A3876593D1A309BFA9343C9CFA134209ED50F85121CCCF9A8E030FA81411
                FEEC7B847A12F2A851B8AF505041061FE4BEB0C34B6828672BB83A4BDD606C9F
                4A822C27EC9E9CF0FC9AB36271E68F54D9E8F43E15D3C51F405BC50F77E00070
                856F5ABAC35D4CFDC271015864173FAB53F91828474691CA56A54CF192BE9B4C
                A5BDFE2AF816830CA1B07FA3CFB7A69709CCE13BC53041DCE811F179CC7C522B
                781FD851E4F6DF78D064BEA2F850810DF45D428127D00FE19DEA4849961864A4
                D6C84C8E0A430D3FCB38712E17960D7DEA6B2A2CB9EC3E9D1FE65259B6CAFF00
                B4A83B8874CD5CB67FDAD6CA23D22CD1F69C025A5740C40D67E1C12888536583
                B690C8FF001220095C8A5E01820FBC516C77F4A99AEAC61FA7BA2B25FD65548C
                ED8650BCAFAF8F58A7A77E0F78A3E02D047FE331AC61B68FA99E9CB02E638384
                E44EA381DE7693BBF2FEAFCF4C78F7761572D55E949A9B6A2FE6A7AA564DA3F1
                27CD4437C9FB5A2E3197A5FF004B9D1C7E0BE98FF82571E5409259CF07FC4227
                A40496005D6A0A0924C3F9DE02D756F141D90AC81CCFE0962B4483B3C7E40C24
                8D91A497964B8F53EE397E0840AAC05402B323A9827A54106D6BF34BA7DE288F
                BA744ADA079AF511FEA06C163B018B4C018998A36013C333416D33FB52387E48
                997D17A0712873BA95F83E302552F90BD6BEC90E62BD65CE8812E86B4AA2A8CD
                9361A6E335D098606D3433293B20BAD4EC4227C18E214BDD2C308750942118B0
                DBCEA5F79C487688F344B4E4A44D69DB21800ADD094B4AC0326405E6F4372F6C
                86264639D61DAAD9D3C5DE74A04E718D7160C39D6014410E38585B937A9F8F1A
                415B684484C58E8D19230998E157C860D1DE1077A087026162582C6ED34F6140
                865912C587675A86D5249B925EF56400607306E54D58FA62E20B5D6709ABBAE4
                94BAA64DE8E38A1BE3D31D680B84AE00A1019EC4FE9FB508E833171306149CD8
                158DCB0B3B6358136273804473AD70E19A22504C5F15220F0C4E4317A5270ABC
                C1C804F4E0844ED692E86B5A5A76724813D28F95A0B1062AE01CE81A62151D12
                435AA7253A46290A01DD218EFD283A54270989B642D8A53C1F820F32AE54B679
                E43416BACE1351D932A435D9BD62B344C9E3F6A9F91440EA9A1B3760AAF31149
                CCF2A29435DD8F4104D3ADC02C419AE075A9DFDD0F22111568FE906AA180F854
                EDE5123B3115327A6792C63CD2AE500183397E60F0160244A5F953709B3FB295
                29C6CF463EF140406B87C05FCD451CD2CB9E27FD872804AB814F4E406B091643
                E7A50704B884180844C8520F2C9A053CDA4BDA57E9E948E8609C7814239DEA41
                D29165846044C2C46541497499B61DD28C44E49B20AE9B55A2B0670A80902E73
                2AFF00222B1CD33FDCED585602C0A706721DE8C1397093EFB953C10124CE70D1
                06A2C60CF50CF8CAA3EBA025DF3CD2FC96E65337BF7D30A8C06106892C5EED16
                AC2EA5F093A067454DA46DE4EFDAA20FF8AA10933C545DA306843B11D9BD4600
                719C094BB86748DE702A3C9EDA0769B1613A874C29697A70F6358220663863AC
                475A39E62E8918BB0BABAD5CC0CABBA73A1FDD60278024CB1B28D329190612B8
                EDF0A039D8D5E314BDF39ED8BD2EDD69DC2F1CB141CD976AC6AE061026DC9543
                BB2F4C64931B0D041FD89856585B0EFCAB92FD8E32249AE34E93BB571739A406
                85F6B2651519933519280E0AC27224560BB95CF0DD78A6046ADFCB803EBBD6EF
                9E42966E475A156804AD734C717214970FB1482AE5034DACB19A3920FDDEA043
                2858108DA84AFC1719322E54CDB02D8BC99D68DD953B70960511859C37979F74
                8224D81073BBB53CE3E4809919E98A93A56070EE6F37AB4FF25C01263063C695
                670B1E733A06ABB9156740CA728D70A564115081964633470455B8E8098A62D9
                62C3389F34500F3124A72963D52B5084260914F18C5BD60CB41D6E8CD7841A01
                07F06E6820C681139CAAD9FF001D4AC2D38DEA0FD7BC3739DA28FAC5F18B9151
                EBECCC534CDA0C6283CF9C0B899CC34B52C59618F6095677281181A8C3B91529
                79B07103849DAB41399B20B3695F153977B27335A4B384550A79A46DCA89D704
                F6C639CE1D1A225E5B226347698A1AD88AAC74BC445F24A432CE7CEF0C44FD8A
                DCC48F6C32C0079547CCE82AE945989D680B24294BB22F1188C22840673AF606
                230FF945F78DA34C9CF152C617C55CAE964910E345CF18026447DD72A59F56CF
                0ADCD7EDA479A0970B38361AFD2A6BE5356F031999028964DFA64A78E6F0BEB1
                9C0ED76570F4A1BCF6201106F83D2A19624B713361F668B2518CBA298E476EB9
                55D0D7CA6A0032D1C25CF6F1A832B5A48382E187729AE7532481F267AD12294A
                99DF2AFD28BEEF7441939D17FCB4D1294C6583AD077C9256CDE35CDBD3444650
                71616BD4C14105B36308799575F9CB2FB3C3B18455D4C53A49151608065F7CCD
                68C19CC98BCB4B654A9F82A05F3DE85E3329EDA70A6644535C4386D34B3D9411
                17BD6EEF40558CCC3524C3AF5A9EDA0112B88DBEA2A6E00F8ED9F25A23506440
                7C5BEB5063212BEF989DBC63506EBC62B3DB6861B564FDBA1C31CC4B85A951E6
                32FCA51FBADD76C30D8337514A3B82A05F3DE8104B550ED7797628BE6EDCA390
                6091BD5FD12057C91241F2748D6A2DEFE8C32BE5FCE90C19D8018B461E41E00C
                E7DC8D7FD8BD261238630C7FA67FFFDA000C0301000200030000001092492492
                4924924924924924924924924924924924924F1752C524924924924924924924
                92492492492492492492492492492492492492492492491558B2CF6649249249
                2492492492492492492492492492492492492492492492492492492484330000
                52FC924924924924924924924924924924924924924924924924924924924924
                92441F0030009009249249249249249249249249249249249249249249249249
                249249249249205E8005A0000572492492492492492492492492492492492492
                4924924924924924924924926400006C4003D324924924924924924924924924
                924924924924924924924924924924924922C80033D400025A49249249249249
                24924924924924924924924924924924924924924924903A000C1B4000556492
                492492492492492492492492492492492492492492492492492492490A204535
                CCDA045649249249249249249249249249249249249249249249249249249249
                249322F39B9BDDED5A2492492492492492492492492492492492492492492492
                492492492492491249531AF002D24E492492492492492492492492492492C124
                924924924924924924924924902EE8AD557715FE249249249249249249249249
                249249BA364924924924924924924924924923ABE6FEE9D95912492492492492
                4924924924924920E9242C9249249249249249249249249230914C294B492124
                9249249249249249249249249085DD3349249249249249249249249249240312
                8C8F46A072492492492492492492492492495A1E495492492492492492492492
                492492488AF2490091C924924924924924924924924924812724924924924924
                9249249249249249249B8DB49075AC9249249249249249249249249249525249
                24924924924924924924924924924925900392AA492492492492492492492492
                49039D2FE49249249249249249249249249249249248F2512924924924924924
                9249249249249024924B4924924924925064924924926DA49769249249249249
                2492492492492492492492493249254C924924924926424924924927A2491292
                4924924924924924924924924924924924933097A24F02290F248AC1249B4923
                94AD22EF3907EF79200C80C8A448DACCA9254A51049249206B55A44F64814638
                9F72ACBA4A7A1C918E5A352854938723EB2D0C8176EA527D61FE09249264A15E
                46618E446570871A13908392F9EF10A1951378D79114A29CDBE48AD31ADD09A5
                9249274AC564181D201AFD0A78382C4F491AF5191AFF00A8D58F8897A9C8E122
                409530003C92292490249FE2247AD20AA791CACC8900B491ABC4930A449D5D9C
                99292C996F2492908AC8C81592491A58352718A502E119A41CC9558B491D9EC9
                130C487F2BC8D7F647129200E553B89481092491A4C1939C0CB0AA1001D04791
                5C88BB2A13CBA08F239E8494DB44B58207A214640ACB989249024A34B1F0612F
                D34ABEC394403A4E6646F88A47A18A2140625698D697E129894FD052492499A8
                A47A4924903D93F49AE8AC24DECDD4B3FEF4C22D35AD8984CF2A4BCA815EAA56
                548F86C8D2A24995F02C6A4924924924924AEA57648924924924924922564924
                92480D33DEEA494449092E688124924924924924B55C6B849249249249249249
                24920B2492492499112492509CAE0C948924924924925543A1D4492492492492
                492492492492492132492492484C924924924809F9249249241B818DA4924924
                92492492492492492492492492492492492492492492492483F8D24926176E49
                2492492492592492392492490492490C92492492492492492492492032492749
                0C1A124924924924924DE2B6766FA52C93E0FF0034B621863F800C871A2D84FE
                A3C175249225D7924924924924924920F1535B6A143FADD9D86D7BC6C4F61FE0
                63309A237201E7D6324924924924924924924924920F02E3F83E56B6783CFBD4
                3D28B46B892D32E325F930E310E1249249249249249249249249249249249249
                249249242C4924924924924924824924924924924FFFC4002A11010002020201
                0204070101000000000001001121311041512061305071A140608191B1C1F0D1
                F1FFDA0008010301013F10F9E6D18FD66CA16DB0469868407CA6E71F96C8B531
                781C6B48B0F718F91830EA2E22619A3710DC6FF2C5E9DC62E15A8CF6DF59D84C
                864414C93DC1F9586C45B111FB437D02D170570FA6D9EA51A767E55C61A22508
                743D2F47949614F27F1FFBEAA3EE47010887E53D46DE33EEDF534042C4E98225
                9E941298CB1915F94FE8A9407A8EEEE2D2FB9691FD47AAD0328FF29AE5952F2F
                5087EA12801ED2F48D4BB8669DFA6EF85C3F28AA178347D18C32C62E2A763281
                EB3C42172501D92DFE482259E81611DD7C7E51FB6E088B11EE749310B373DD70
                9946F212F899CEC827DE390DF22F483EF13DF8C524DDF5FCA22C4F4F4144CDED
                806188FE90036615F312FF00D102E3708A132D99111A7D0297D7E536129E7E51
                EC53DE601BCCD3B80E19CEA5086086A16274C2C7FA41C0C24C060F1A55C57AA9
                EF300DE601E8F93EFF007343822AE5E350C16BBF936D553DA7EF10E905ACCC36
                11572C5F0E1FBD294FB97B1FD442F3222A9980D91BA541E3DA7EF0550FC9FDDB
                155B7D28C12A7E4AB1F41EC26472658A17EA200070D4BB803B2139DCCB6CF450
                2BE4D8A36F35A8E8AD950EB30C4768132F3F26160D43BA3A6B9A988C99788A9D
                8F2162541DCFFA904164D4A2F4F10028F92AD658CBC378835F7E85058041F270
                B041860171015A27BBFD20D3B8C509B841691DA0F93E10EF9CB3D7CBAAFE0E32
                9573BDA9BF46ED0C50E11BD10DF939F45734BF2F97E6DC33A5B38361501E09DA
                78D7267337E4F64419975E5C80E2CF986BD11AC47C63FC543BD9A13E50C3F004
                50F5F811307C6C221F18EEEE2EDDC6BDE85A2E31B1A2127E6728FD6178260DDF
                E05E07143F1848F4895254301E878786AF2F9A68D7C6C834E5E119994012CDD7
                9502D82347002D5415ABE31B773DB662073E9D8BC66BA128FD0DD221E6765510
                E9E8CAAA89E9B87819B64D82274AFD18259ED33B6A820B39D940B6A6F910D0C4
                6F104167A102D60359958DA62500F1B46156A196A0F44569500DAE45B503A2E7
                FAB88DE2082C8A05B3AEE00B1E5416CCF57CE256E27A80F71861CFC1B085B6DE
                058F28145115D61535CBBE22547970DA9EDC529C54CC2E5B38525E05B862BED3
                05B8A6A1B025D7F1C2816C4E893AD663808A77C508F1FF0052609960D653B499
                CDDC443029AE446FF51C5E31631155313DA8225915A9C231B33305460B57C29E
                279B13B8B4614EF15EA0A8868474C78E7112845ABE18CE9E0B13717CE600EEC4
                982A35C8DED416D7199CADF6A2889666D1309811B370407A8423A98A767C0C47
                9E733E25C70C4F2B84CC78E2C7ED02808751C53F7706980CA35C990EDE2E3C38
                C5C163A25CEA39BA9E2559C7F711182154E56B316DB66661416C5B999EE8E458
                7DF8766E514F3C03F639A5AA0B6F04CA25899D76F2AD65D7F1C898E0051C58C1
                A6E14CAAB6576F7C9C2E157712C8C75C5416C665DCA05F7301D1144400A39161
                121F8170F0E6A517279E2A78B08DCCCE1711F457388E1411A04ADE563EFC50FB
                CB94DCDCADE572CB2DE25AC2AB6CB55FA2E1C556F32807BE298E5E27BF028CCD
                00B688003AE2E3854B8640CAE39B1798540F7E3EAAE55B86827D1502C0400039
                78381461A51DAE31AEE2108CC3D71BFD17699AFE0593CD1135402B4414038C07
                9E2A65CBC50DF3CD94F12A1C59C5CB966385445A7C25439B3E199151F2E0D17C
                FA28279E2A4963ED284F46246F12ABC258FB4A1E6C7DF8A1E2CE2E4F36279E2A
                BF999A1B951CAC1291F12C60D9F45C785440A0FB4543C5F7B4B15F52A27028F3
                63C2E5EB5DF2A3E163ED284F38575C0A04AA9E78A173609637C45638393CDAC5
                038563DE0C79A01EF8A99FDDC69F45C22A387DE7A75AC64DA38B88B9BCE2805B
                440A2A3A43C71FD5CDA0F5C1A1ED2C7ED2A1CDEF0C93B78FE0F45BC553D1C1DB
                8FD13015A95B1FDDC7D873F5C71517B7D741F2E6C7E1C3B6C21BE05F78AAB60A
                1EFC6620CE20501C5C70393050E044BBE2DF3B111A61BFA7834194CA0DE61B6C
                486D7834134DD700A7C5CA79962C383E22703569CCA251A858D03318DB1DC0FA
                E65DBA7083B982417B988F10D297748E52DAE0E97BE02E772B36B02DA9A23B19
                627C7367A899074716E4ABBE704DB015441ABBE0587DF87F1B332EB8CE1D7142
                78E140B667FA99868F81653C7347B9C2A1AE0728C524CAD6220530708C16418A
                51CB02076851AB77C23A31350C5AB3DC91A525C0706ADE62234C06460791E224
                1620AA31048A54CB7711FC5997C32C285C01AFF99660AF7FD412122E33651C58
                9AF0C630858C895E87DE7441E5807DFE03B85FDA0CD0A6F9937C529172A47EAF
                8E1884BBC2FDB804A2310DBD1FF65D43A88350075D17C2171477F740E8A3DA50
                D27DE69980EB8A13D3511A13C9BDE7BB3DE2966651ACFCBFE4F75FBCF79FBC44
                B6F281BB6CFA105C02A61DD0ED931794C775342E88015A7C0B2E547C97CA21A0
                7C250DC43A447B886AE39BCE5C51117E32DB516F705324C3547EB28300FA1155
                B63B6AA034B914C90A6B2FACAF6651A07D08AADB00288555AF38952FCD3F6878
                27E91747B841F7162E32DBFDE07D407A81C00144A789473B48D3B8DC00D4AABE
                78484718C415165A7DD8A6AE3D50BEA032944F789FFA9FE8B16346BE93DD451B
                38146C983EA109E8198CCBBE5DB52BA6FDA7F9B2C6A114AD60A38990EDE140B6
                0896736DEFCD07B7A9DA489C23DCF6D8F8C3D6117EEA2FB85F6FE107D0C16078
                7730EE8037981C05A1283F0F143F1552E022B776CFDD14F6629A589EA11D24E8
                A2B639B9FD8E1C252185B172DD3A825AB84DA89675CD3E32CF608AF7158576A6
                FF000A2E860B027883EE0EF580F502E90068FC75CCF10D93E2916A7492E4CF7B
                FAD07736446EC3880051C7BCE6777D912B0CD7A08F575EF1517E041744134A0B
                D43B121E7077AC07A8074801AF93284DC4B9F8B48A72456D34FBF8CE3D913298
                FE534E80BA9D0CACCE5F6885FC26E0DA505EA1DEC0F7006F3088691F93AA9E18
                87CB36EF5E988BDE212037986B4006BF04696DF80E274F8465FC06FB506F27C8
                855E9EBF69FA3734445ED07BCCD13F0A55BA8AD3BE3ECA6FB536FBE37DA83DBB
                82DAA96097501AF2A2D659783111A60051C4A1AA70ED3175A3CC008B7EEC4F5D
                75E25A8C4A0B81059A80DBA26E094B99783113192EBE9071350AB771B57A406D
                DC128CB8CD549783110A62CB7107179BC108B7515A7C036A88E558C4C4CB37E9
                13A799665C418B683DBB8DABD258DE24D522816EA140CA036AA37B11712AE509
                94AA26C31269109CF89F5E67E030D137989E6134AAFC4BA5BFB4D162DF0C4EE3
                F69608B76FF57050603509DF5373A7B7F111540567105B90E881134DD6236268
                4BE7E91A31B16C0B0250B3F437005743CFF88AC0D299FA4A60410F85897BFF00
                A334418883DAAFBFFE4B4462A69FD78128CC6950B26DDB182400632FEE018DBD
                ACA3AA55B0546D622C4566A62003D4B4DC86EA3B40FD237BB5FB10E3C20E97FA
                E087904114DAE8E82286A6F81662758C46C711F15017A095069B8300BF2C4079
                5105596F9844C0A84236AC065872D47A17ED0055DE7E92AA8592BC247EDFACEC
                45C05E9088E555FBCF26FA37085A1E614BB9FF003FE40A28F91816F05A2CFDA1
                85CF9EA26D092FA288FEF02207DF04C359BDF98CFBA10257F485660B2F9DAF11
                317067FF0065FDC89D46CA96FF005C22378A48104F7BC4B196F55100F76BB800
                AEB0907837EB896B8607DE64ACE4C4588792F71688608EC05ACAFF00023396AD
                4BF6E008ED827B8DC10A15FDA65FBF8A53F84611B6004C5DB167AF040588EEE2
                894C0FBCC90CB1032C12080E4D4BC36BC42E755A225952DDDAF11D428FBC6015
                2A306B06634A96C7F642E0E517F08EAE764F6C20AEB09D412151DACABDD3C931
                003EECB4CB818EA7ED100A95191185CC4A62562A6A07DCFE903640F9EA816C2D
                8D35EFEFF88FA531F83FFFC4002B110100010203070403010101000000000001
                11002131415110617191A1B1D181C1E1F02050F1304060FFDA0008010201013F
                10FDE5D6D6AD8FBC2877978560C3D6FDEB030F42B030D1D01CA3B55F53D47DF5
                AB85ADD8F2F13488C3FF009A81F2D447B072D96ABDA17A05B9AFDEF4A603AF9A
                0711D7CD7803560596FA1048DA81B6FAE7494B7D5E74FF00CC61C03174A81D05
                4A78F7A95E01E5FCD49F432A8DF6C7852020495745BC69F1FF0096299BD28360
                959B3C8D690A5FB7E17D2273D0CDF4A976EF312311FB83F8AC12D93E690486B5
                DBD3778FFCAD88D4F14F9AC527F44D0D3F12BD99D6DEF50FDCB9F1F93892E61E
                29860B58C19FF9384C973B2E4EA6F7E30E7F92E32472FB3425F27530EF48D887
                E261AE50039E3C6A519167DBFF002720B15D0FAD6BAE5C7EDE95597F1485C18F
                DDF45977D1D3BD4A5867C1ABF171F3F948B9DCFBF70A1733292187FF0025B8F0
                A641804FABF8C4AF8A6D1818EF6874157A5BD8ABA0C98E96F7A1C45B1DE7DB56
                38DF4FC7726F4CF6712279DFFF0023BCC765ABBBB7E10BEE9E9513A0AB896756
                B35500E77FBBA8B3C41389FDA083D4A05795393CBF148C10EDC2B79A55D350F1
                EDFF0091EB0EFB251E2EA52B47A94FC3387D2AE723AB7A5025A82ADB375DC503
                C0CF7140E0CBFB1EF53F6183EB562ED8B8FCD4731589EE5094928989BBD2AF1F
                1A72C1F5F3157A3BCF34D8F00ED5D27BBFF91DD4A7E36964E85682D07BEB41C2
                5694ABBD69784A17A41ED4498C9EE7C56269C1F3F73A86B7583F73A967159AAE
                9F78F3A03249F82181CBDDFD48B014E2972FD4400A3C4F115F61F35940F4F335
                8CAF6E5B11B6DAE551CC79B5266B18F8A23ABA39634072CEA615A39827DD2A0D
                72A98F7C36252870AC6D1E2788ADD3AF9A22207A799A7E92BFA766446A6AE425
                BFC503020D80E76A63494E2B3F3FA69C248D291CDC9A1305CAB25713E26AEF73
                A72A0040414055DE74F9ED490B831F1EB44E043BFC56890DF86753F5BCD32C4E
                DA30F2357948752AE25D0F8EB4FC2BD2FDABF88D3C781A9FA7B1E00D7E280204
                1F8A3191A6472EDFA59D70C1E1433736933177E546BEF0F8A85FC5D293C60757
                E698E23B0F3DB389F6D48D39EDF8A62F934CAACF31A1F6FC22322EFB7E9BD513
                7EEA0020D9C859AD32DE0D0FB7A96B4883E27B51D591A610C83DFF004C2EC99C
                E5CA9B847167C55B6C375BE69552DDA82F706A174157F2CEAFDC368DFE851ABE
                3F61A9D793E2A30C356778E7DE8586F4F3488B757C538C67F4A8818B440FAF1D
                8A04B4ED94C387E06048F469CACAFE9E7003BE93C67DED57199D5BB402482A33
                C53AFC7E3352EB12A67494144D57C738DFC500099E7FA7BBB0BBC6D940C6CF3F
                AD1464A383DF5F3E6866E540CC472F5AD30DD7E98D2230FE18A31AE073AC4AF4
                30F5D761F18E8F34E525FD3C82C5743EBB601C9D5F8FD7DA4CE87DB4AB14CB47
                CECC327894B4A3B76A0F275ABC19E86C2F01D33E553A30D73F8A5565FD36EA92
                00A0032236C1A6EFF2B75FB0C5D3B72A1A00FDDD4597EAF8A8FF005F14EC339B
                E2AD0C4DD6ED4B377F4F18274F3FE18BD25FFE10E12B43928EBE293629FECF96
                0C68223BDA76B6C7F0440C5A024CD69B617674FD9930EFEFF9A825C28170163F
                E1974A07DE5B20FCD7FDB0D185EA61234295E3BF8301E72318F9A43146FCFD29
                66EFECCD462B7EA91595279ED4B605BCF5A46117755E883AED76196A4951B149
                0BBA9397B6795465424D86FB7CD6EDD7C50D706A7E18D113677DBBD589B73A8F
                10AF4ADD10FE174B3AE052C950F57C55C00783E62841456DD5859DAF42358F01
                C5F1348961D7C5280626AC28F028C921B426C51B244DF6A349D7C55C00783E62
                A30C3B6E4BEB6EF565669FC6EDCE904A0E7E283983F77D38187F08332D172CFA
                DD563570F9A3A61C1F3582C1B05958E5DE9908A6AF44D2F0CEBE286917A79A7E
                50EDBB9341491D6BED1F346CB3A2980C3408256AC4F79E6A0DC3B62CCB4913DE
                79A48B3B0B9206FB7CD332B81FCA2E13C48F3444DAD4C3FC508CD8A000181B05
                5C89A4658B465657E3464E701B6DADFB30A0432269659A1338BEC6C41375C5CB
                814184A718F352604265B3091C79ECE6B9D2B54CC57EDAA2B86F7C501961F4A5
                448506A68D50F7F6D888095A2C19D191E6984A46797CD33CC9CAAC651186C13F
                056826C5021C9F3E2A7D634F054ECBDFF1426CBC2DE6A18402844C8A2979C77D
                9103E289B2757DC2951C8CF2F9A04984D22B02C98950C7060FDCA91B10A33BF6
                0D89A5B26BEB56C6CD2C505827399F63611CE3D1DB8740C5A54960E6D2B021CD
                A426FF004280B85A34B46890C14EFB040D96EE9146863A18BBDAF56A63B10C33
                0F7D8CE077D05A405470C1AE752690D20F6A0FFC5ADD860FB55F2671CEDB0985
                718DA0ECBF61F3596D50402E94217FB7879AB52FA34E34A490F428CE3383E690
                486843C63A7F8462C93EDB650E0F7F6ADE526CEABF6DBC04EF7A9CD40F7D92ED
                65A718456443234D939468FB6C38F95B9142B15A1BFD5A59BD4DEFC6C4233428
                22C55CE23B0802EE1B8F9A597BE2E1F3B7890BED5BB73F9B0222E1E7C531C129
                BFA0686D120280032A8B54CF2FED182BB42CE39BAB480B7ECF9DA86A0F7360C6
                CE1E95C143E362B346BE36CAF631421ADD80B15A2993D6919343CEDDCD854D06
                687BFB542B7CF2BEC54BD38D25795D8CF712DCA9048690C619F0A305014B3963
                1E3F1B57D0BB245A87DE88860D3ABA23EDEFB1C319A2C001150B91778E5F77D1
                41E86E3E6859CA91BCAEC1864A9A330A173943D7FC275CDEDB671E44F3FE5416
                82FB7BECB4F2B72F9D88466850010549A6279FF366EB40A8019BA1F4DB26980E
                7FCA58BB4ECE6AD463C03DEB74E75CA965976463BCEC816907DF5A8C58176AC1
                4EA66F4CB6EE3C2AC6CDF34A4E7DB3A006014A26777EFDC3F0E204F2BECE061E
                6BD2938BB34DF0381B66D01EE6C9B711DAA0D54140CB029B182CECDF6A1B26D1
                13CFF9B2359963DEA2FC72F5DBBFF4D97388D0A191B22061DCED986B3DEB7622
                D4ABC7B0A347817A57C66FB64DD4FBD3621877762950D2395AA1869DAFB2F6C3
                BB2A6780511D497863400415105C5F6F7FC375014E3D1EE7F870DFBDF6F1DFB5
                AAE3DC7DE94015814AAF159D908B013EDB2D3CADCAA6BCD366E00EFB6E6CCF8A
                E1677B504B05091915BE67B7F76C6BCEDE7DB62339AB536F15D0FAD70B3BDB6E
                FD9D926889E7FCADD01DF63A8E41E7DFF091723BFD766F2D6837A96B7563F845
                AA6397F694096B788B522D65A919A473B6D99692FDF5D933D2DCA826D4266454
                5AB7B7F76C03A17DB64D6803DFDE90D521CBFB4A04B48866CEDE0677BD4D19D9
                5B8B0A9F9C39BF86F05ED5856F096A77435BD5129B541CE3778E951B9D7787DE
                D53684EFB145A41D276EFAD366F41EDFDFCF7FCF4CF6EEE8FE6CE22BD309A473
                B6D9D78F61F5A58BB4E8E6CD70217DBDF648F46395B6F02CA80D6F6FA57150D8
                98728D80AC15AF99F1AE16BB040D0A6906EEFB515C0B1C7EF7D961E56E54881C
                3DF6763D8FC37C4F6FED6EB45D8022D1DA947A1DCDB8D4E18E7C68DCE367A67E
                2B1ADCC81516B5EDFDDB73805005605332CE89CD4D987D7EDB658E0E07DE9B38
                F8D49B596B851DEDB5C4CDE99EC84C0EECF628F51EFF0084858875A940C6C3DF
                60CF05EFB25B28BC8A504B814ECE7DB2AC3E8F7D8E789B6E8C0757EBB0132163
                F39732757EBB63866E87D366EB83B536897D929C333E28882C57041D902F3B52
                812D23BCDD9BC24D8AE889E7FCA1535D9C729C1D8796173CF8A02C069D03343D
                FDB6185A14C1629F348A871A8BB6CDD28486D9F7EC9D73568B28B3C6C70959B3
                C7609C0A989972A9AB49E77A4018C039D0D7EF3CD2A3417D29CEC53B5E8AC30E
                FA48943D5F1599F81BDF0527480A9041380CD8E542706594E5772D8881695F7B
                149610FAFC52694399508EA5F6F6A8C348E76A433523F01258D8C257ECCF6474
                B0C5FB9D0980B777A52812D2CA6B77A05446B7B7D36A415DD0A0CC786EDF50B7
                A02F4BF1CE9C2625F97C6D58EF71A709014E99186C018E67B9B01EDFA35E75AA
                9D99EC04793AEC746576C42095A3278B76826EFE87F85DF9BE3CED8ED0EF7F1B
                150836E3B0703EDE2A56DF5303853D2431D6A54DD96C0110319B549C1116DA1D
                60F7A0A47994E30F0361F583D7E69048695407DD295E01EB5213030D2804CC32
                D02E1537C65618280C925391DDED188419E00DC505D66237F0A62DCC8CEA5065
                8FD8A8E18B5969FCBCB23C746B714F52A121EB3AD25561C8A1188C5DD628D843
                8C455F0852B95B03642F99C1AEF37945CFA19F2A654B71CCE553770E981C8ACE
                9C9F4B509C8C321C7576591608390FF28590E7528081809D0CF60638A2A10300
                671510B329298017C7660A0D2B9A0E1B9A9B16CCFDE94AC0CC6C1C0A86AC172C
                A95D459A58424CA2277EC080C30D4A2D18380BCE9699466B0F629DC32D727AD1
                4DA5C5FB96C0919C43475F352CA4A54B09C924F4D29B29CD023AD034C0607C50
                60C186678F8ADDB915FC828342E0C118969A1124D9822ADE8C5F5696D79FC537
                8018618F2A91C0793BCAE51DD2B448E156DDF53F6D56D46E890A69965D7F3096
                0ADDA1B77E4ED161038B571478BFE583268C12E55F213CD24950E7E283899C27
                C94A27EE6F9A7AE2F17C4501F27CD0B01C8A0020A40425A906478D152A78CB40
                C1050F754EC11FBAED404249496EADE8A7279BF1594CD16DED4081054482F0A1
                61836A78AD7069B583D14459C69776A3E3A4691C0791E6B3273A436637B3ED44
                921F4A5E087A529F13C538A54EC92D0481471A5B16A5A968585EFDE81854D82A
                91A5654D456817DBDF63A102306972254F4A3C6F46484703C5071079F9A0E173
                FED23139D41BD559EF51A04719D0CBB1B8A0486BAACBD687C0F328C233B190C9
                41761B0258B62D6E509EEFA560A06DBA915928D1B9D6A5F8A8BFE3ADB9151860
                A011829F200D2D3BF62204AD23043B5CD9177D3696A9B1EBF882E157757D1AC3
                D7ADBBD27107A94678EBE2BF81F3432E3CBC56352E2BED15848F5BF7ABB89E87
                FC96713D4AC7C77ED5872BC0F3147C77A79A6E11C59F158601E9E6AC9DA55815
                CDA710FF00CBD00FBD366FAD7FD4460D085467C2830B02A52C458E1F34163D05
                0310F3F349F37C533027DE356A0FADBBD1D2C786DB91771E1A7AF6D854BA7068
                8A0433A3C97D775408877D5D8AB35162ED8A4C5BB66E741E6F33C56292F56B07
                1DFBD1863C8A00B1FF002E029EA56243ABDAB0097D3CD0711F58F34AC139FC56
                040F43DEB115DBB55D51F5FF00BA0DD55F6F6A63B21EDFEB0FE5A4B67D3E9516
                20CDF358D379D7E3F312951587CF8DE89E7B2E5F34E125765835B274DDC29B99
                BE068412520E3F866DD8BA1E7EE343B04FF8459515734732B50FA341C05E5E68
                3E4F8A5E075F358243D0AC5173AB9A5FD30355AD6A504DF15FF506930F3A1975
                E36F3563706861FED8C91B0BD9F6A4E2725CCE3F7C51D22FDD29412B58F4DD0B
                D36437B9BC542EF9FF00250BB5869CCAC2E5C068F8CF23CD33DE7F95940F4F35
                8FF241DAB1EDF569571FFC6D8A5F27DA9190EDDA80F9BE6B0B4FBAFE781E7AD6
                06AF03CC51799ACA87A79A6A55E96ED4ACA9FF008B077C5FE0524424E1FE518A
                5C7EBFE1253B1A5224213F44F830A4FE7046DC75F9EFC7F050BB5862F0BF6A36
                3BC6DE6B151C0799AC557D7FE55219E143490FBA6C70F3E81FCEB58CAF6E7490
                293B1F85692842A6497754FD920DD7A06A407A18D22062D46586A5D23D0EF539
                068CE87BB8EBCB1A4461A9868DF077A33641995A62F9D3042AC41CAD15167313
                A3489C3D28B84AA92C8E07F69D1C25432971A454340222C1FB7A0232B40F1012
                AD8BDFEE949949CFE70AB6035274CC70F6F5A350270FA532951E93CB1A0560A8
                6FE3AF2C6841CAA0970379E6F5E8A8E157B482554C6A489682B135C7B6C9965D
                D53AE1F74A99806356F53D2AE0E7A1DE919F12229EDC98E11CF0AB00345244C1
                F72F5A64209C33ED42C2E3AF2C6A115F4A9BACF49E58D4E22EEA9B80FBA52F9C
                18D60A5E9DA994E6328977B150E38FB96344A677F4C6A47A5B97CFE63172A60C
                267AF1DF56E52DDE7FB56500E6F5F14F4A3FF463628738C637B5C29C28088795
                B174A0560A42F5030D5FE5262C4C0C7D61295D82D9D4BF1A61337FB538C8B4C3
                BE62A210D2219710F769CDE18959AFDFB8D4AB0137BC5CA75318BEF36A25A5F9
                7CD0CAB201D727D0A9194F1B72C2911064E01C290125CCC9EBED4057240325D7
                DEA7243B983954821B1C5C3B75A895A4E87CD5FEE4842CE346F2CCFAA5FDE831
                72A4061C2298C1A1DAA4EC261E0DA8ACCC67B9CE69EC5AD0D0A0C717E99F4A4C
                F8C9368B3AB51F43C02D6F4A8E94900E6E1E5E5406102631C3C502C52E6FEBE9
                78A8E3A4332D58B0C990138F1A36093724DB851BC83D525F729E4EE2D36C708D
                29315118C6E2FE1A6C760136C6D6A573C31262BC683BE06F78AC6D4B0EAE9615
                DDBBEEB469987397AD2258CFA1F639D4E34A59BFDB4D165064181A1143F7A7AC
                77299299016FAD32DEA039B8D222004C63878A52045A6B1ABE3850C609B9288E
                1114ACA1259DE87CD5E4B992C3C74A74A2FA5C5E1F785410B271C9E6E34C9633
                E9F6DCE90DA99659C2F562702DDC0220A60C45CC9D4C63A5280583CC23D9A465
                8BFA3C0E8FF3AD485067196348AB258B6CF8BF73AC1FC45E741AC258721C3B77
                A46465366550F0A058D38FDCAB02FF002454DDD671BD23AA42EE68F6A0224979
                690C6B65D72B1A1344C044DF3C7CD0DD822DD035BE352364C8FDFB7A0A33905E
                5A87F58858BFDC2A265837C9B8D5ABEE8C8FDE1EB47C7705D5AB3CC519C1FCEB
                50F4162F9FD8A7667203037AFDF7A19735978E1CE9AA005EF6E1D6B7BEB42F19
                E9BE9632311D53EF3D8D497225CF7565A545E34C9773CAB32657625D5F5ADEFA
                D27D309619BBF5A4B3820BDEFF004A88E5B8E734C8392772FB50F84C56B07F3A
                D185000B7E540880C2EF68F931163CD3A28B9170A9A93F80A5068A2224971622
                AE07EEE5C0F34F9A08B6BF62B12062338FAB5256019BEEBD1D5601C30ED1CAA4
                81DFF7EC568DCA6D866F162B786BF14C8CAA49CF1F34EC3058BAFAAD4320D2FD
                F345671498BC125BA75A22640C5C3D3F9572FC93366E2E1A78A7CD047DE94500
                481C5D3951ED06596271A8A9C38E4F5D5A963AE9D7EE99CFEF5082568B88ED0D
                3EF1D3FE8DF26EF6EFD3FE3FFFC4002B10010001030304010402030101000000
                00011100213141516110718191A12050B1F030C14060E1D1F1FFDA0008010100
                013F10FBE4D3EC40086832549F2A4449BDE1C348A2C4C1EC4091DEA4AED9B8FB
                35AA65907C35A0D97949D5EAB2AB880B88C775D586F4D442F05639251464184B
                08593B7FAD32C73F213573832A14FBF94A4AB250DF82E875748196A40C4610A7
                B68B8F5D13B0BF9A836F4887C4FF0035DC1841F8500B60B066F6D1ED46E1191C
                0E627854FB14C46C88DC78ABF5A59DDCCEEE41E74A3213E02DB7B13D0350CFFA
                C639A85365B813E04AD285E8C53ED821B795556ADAC375778A3E5D05A80C433B
                95764B3B9B3450000202C07D5607819B782E9DCE1538AE88708D0ED6A9430F35
                A63202E23A9400D4236078CDBA7767FD5626E652123DF3177405D292C5995858
                DA060EEB2AB46937E539D3761353805ABF7D9C31AFA83D180023E874A5450580
                DD1F28A8441D00F2121120AFD001804211244A892DB04E44C3AA339BAC9F0938
                09911308EB4B084AB021004DB204DCD487FA98220012AE94E2F33178E4911C06
                ED40AED1E42340957628C8C36E243B962C6801A7D317927B7F411F7D30592D5B
                5A67333DBEA076388C5AC061D87647646D551C3816A851B2D5AA5D34416E402B
                B7FA9B53419841217922D261E947A8675C661B281F073FAAEBC0585903FD25AB
                4C6D82CBF71975A232FEE4293D3F4E17A9C9A13E73A55DE5914632EE898C2269
                5A0EF041B7D921CB7FF5304B11D311EA50F63B8626FD302EE683628D800800D8
                3E971003658214D947951AD0D19F5317ABB289DD537FD65080732507A55B1E96
                65F79EE0D9F56E94886743B7A6525A25EC2678E438681D8038008FA7FD4540AB
                0195A448D56F07B103C531488EC76CC01ECDBE91A424E5AD8F6C4AB0781BA6EA
                5BB636A70F09769A3268B00678D537CD2462E1D605E63D34C596E31820615208
                820C565A98011D8B6E3CA5A43E8E26492FA7A7F0F752CFE203E7FD4450827F6F
                FCCE8B734E45C3D3A940AB01756A47A97EC2B765399B42E556B8286D26D821B1
                DD955A6ABB102E529A5953240B28A40B981485A1E7DC7B56551612E12D98686E
                150368242E01D50C3194E2A0782547523430D819112A2A9048A4C10B3C5DCCB5
                1D4A6C77028F500E581D46CD4CEAA7DCB3FF004A74312FD34FFA8CCB8A3E8C1D
                EEEB92040E746841B61D78107CD269526C48DC3E942AB20093520C3C31407CC3
                CA3600D5A2ACB25D2C87D97196F61152D5A15187664D01D529BD23140D85D4DB
                92A05612C24406F09416314B5C74EF82376E5312D2370B176787299245170296
                76D2C64D048D22784FB17BBC9344742CB45BB20F6451B75440787F168564F1F8
                5561ABFA49886E592D4CE8093FD4553454C0DC8FCFD2BB8C55615CA606D14E4A
                7E2BCC6215F31AEE5B9BC5AA5A3C55FBC24C01577EEB8040D9687B1A042774D4
                2EDD8CF6E0505C5B93471CACED4C2563C38A2D0DE6E984DA8AD0F168CE2F5D4F
                94C3A2AC365C8EEE0D246462E34ED270CA263C1266BB2A64E4A6D4971EFF0042
                8F5A600A56A0A2DA8FDA7993C67C8ABF718BDDD8A01280DC4D7ECC925261DA4D
                2596CA1C1148B11B2D5819BF710F75F2C25B030786820A3C31AB4B874FFC016D
                51F284E446C6A6AEEF0404FBBAE22428EA24E45D1443CCE72899FF001EEF56F0
                EA4C9DD092566008B610B26830B645432ED2DD88139322A44B3253D65B05922C
                9D8D9BC0048212232251231F837BE84A1DAF4D91D80291D8443F8D4663450339
                75502ECA2AA8DDFB3B2958093B38BB97741ABB2B897C86F70E293A64B8AE52AF
                45E504A4FB2D07783CD4CC75664CB37DC57E45DFB280C6281829010612CA4DF6
                6A006733E9141CFB93D3A6B4042F80D3F3283B2A18D5298DA8911DD9CD221631
                7B2A6EAEED17BE224170327FF1B5D808F824221740A46F062601A38DCA8CB6ED
                83CD2578C3AAA01DDE054D67F120665DD259E446A2AFF7D507AC9802DAB62C86
                8E2ACEC8C88E2ACD0404DB2CE4EC01C34EE0D962E747B1DCA3525C903C5081A3
                E4E8C9205E297260026574FB3C63C3168D741DEE30BB44D9B5EE32A2EABABD63
                A3B862210FC8DC46C8A3669C30D0B26070B6703ECB1F60962E936F7BC274A76C
                E80423B3D4F970F435B2616761A78342E79437275078269FA3880330342D2AC7
                2A0915CD3409606920D6C9956A5CB992F12EF2A572BD12C8C6E40930A8622031
                8A136D6010EC043930D4A3E4C3D003018E16E5E12699EAAA8375F612F0E0BE87
                DE111D090F7017F2FD988DDE0583C7F265BD94FF00C49CA9CABABD0742CB892E
                15F802EB62838D0F736B25B40EE55C588D03B4450C2627B2980BBA40CBA29ADC
                F2C3A23A888896444AD01832009C48775F6691F2965B20B4B08B2BA4506D4A51
                FABA56A3A2CCF249E5540A3043360802881A1BCE149647C30D0F7DCF0105826C
                37755A85105D0E11ED6DD801BCF4DB2C480C5C5D13549595C698B8CEB0AC0A88
                20AFD381BC79B091BD028D48E9B49AF14CEC2E5BC240BB1A41316465C64FCD1A
                C4532395E2E2628FD0DBA28277755D59FB2BEF4561523B02D2A6D92DA16D1098
                CAAD7A0768384180032AD272906EA183B2C3CB95F430FD4CC7239484B2E8948D
                A0329D225755354557557ECF1DE04C7386E436D136CA4A3174B49792BD733BF3
                B1B5C1EFA06CFAF71801755D0A46CA20F2469234C32658FA400DFC128D632E8F
                95735148F7284E8715B73B30C953DC193EF291E03524D013D9AA219EC0A8BA6C
                ABA0DAAA40216F1863ECCAA02E20B97661F8EA39053912019DFD93EDAD8BA55D
                2106C89A55F876775EBAFD3690C3B6740211D9AB08037952C4CD986E900B5082
                4B883B05F60F1442FE402DC451EAE00175580A677B0DF9B333DD039A82BC823C
                6F151388720A41D21201BE81B93D9B58D5D1B8ACC5E25F50478B04007D9EE273
                8C11A7B1EEBAA3F86CD4D94EE37EDF422EAC68F00775A84596A38F7198F32472
                D229121323596A42B7965133B6267EE4A6CD9AB5EC1A744D2AAF907460E772AB
                D908DA6761A8B984DA2D9B1E5E41A0C911E7600B0707D95409582978042228FB
                A208661590B5D8A5398E566EC7602070753CC162094F9D5BE6BF7EFEE81B1A44
                913EDED80912379BE5A679E1EB2F9143B3B4284F27F4AEE8939F854BDE1901BC
                511C9BBA64D71DEC286314381B0163ECEC5C778B9697034364717FAD9BB8202F
                260221A4F7FF000594D889470D74D8D97035090E0CF0DC9FE529E9BDCB908D10
                0E4B594FE68240526098F767242EA124C93789DCAB82DA1CCF3352CD03BCA180
                A110B48C460EAA35BE81E4F00D2724B2C2B1142895626600B54C032CC1210016
                190840EBF73980C2AC4C06E45BC269F58460AA59800BAAD80A9ED5C894027E02
                797F821164106E8C537BA3BBD183A20200BFCD44E42D4272040DE29239B42CD5
                000A55D109B01E4CD4972035FBBA22C6841A7D0A8202C823282FCCB082872BE3
                2C2C4911E246EA5A81CF8A044001600D3EE720082C91374292AC2C5FA5F72405
                A948A2AACB3CF59BBD234F4D81AB8D5A40FB012B62097828CE3486ADA4922E24
                89EA6DAA7B92205054DA19B0906B38299A09161239A0CAE096AF968126C94775
                8E69E904CC061333888D6AC241829DA6A78558FF00B2ADFF00BA606E0962C055
                5D0B9D0FA0D63A9801955C525FB482D32269786899A6225F0AFF008A2458C4D6
                1A201E1A1530CE820FC49F14290080343AB9608969B097A281197337601F653F
                1F0499F229DD82936485110E2F0F3141DA06102444C89AF5042A9FDB04B0D2D0
                C62E6A269FDC983C13A44442FAC92B230DC92CDEADE241D1B8217C53D551750C
                85706E49D5C2E0400CAAE0A0CB3A40CED0895119BC4C7C50C9B84B9BBC29CB14
                77467B02063C7406C654401BB59842AFEBFD828F66B71066185846015AD6028F
                44361CA0734AE220E58029F614669D0CF7A0173E92B7C4984D46E6BF4588E489
                1D89CBC176A55891DA928ACB56FF0030B3B59F349310224AF323BA0A8E97B933
                00442B62C9623254C14DD5E9806124123CD4527A275C2120EF11CD1F95E4C69A
                484EC5B58A6140810E4017B8A0E80116775241C4BC55A03435F595086A81EB0C
                24B270E852BC06B05A6AE7C9B1DC5656E325F1456166BB8D8FABA020D213EE49
                84D46E6B4DB746C8CAAE2A72D172BBE7473537F40E98C8EC9A8DCEA70048239C
                12E5740BBA546E5801B312AB4E5B5015C84489113226B46D8D2A4014806A8015
                310A496E5C6D4A4D34C1E8FDD1235C9D7E8E685E059DFB5EADB08F1FC3A2EAF7
                3BE440F34AE020951957BAF4807BD05A2FCC282C9E28060F414E929096E0F420
                36CAAE5A7FB968854DB89539EB0E769C858D6025A1DD5388098990CBC4CF8A4F
                1292960412EB8A9A09C7446DD0BC3A2D67689B2A2560C43525BD084B94A71594
                EF0272D2B5A016095EB62E5D106F64A1864CD366EED5CBC72CC2B945E93CD3C1
                45DB624956275504F3CD7C4B705F15E5C016A1742C8BD0126E21CA8C8CE271DD
                07A8A09404128218901F3469566169FE92F8E8722679A951C01497CD551E1672
                9A084657815AB24024C8B0B6442BB2CD4D4B34525BC0688A1D51244588126889
                667A34897CCC5A3B0A87053A9F14089557006B4AED9328D44B1CA4BA0595E31A
                47A657B1BAF04B051867959A2E40BBEA6838D80B8423D346607881A4B29442F6
                88E695A65F30EBB0007147CCD7712567858E83DB6458B3B1FE55833A4C7289B6
                19B6FF00F8018A27EF0B3F0810B64116E144DF96513DD47047728FB7EA006161
                C16B8C497445E2D4C3641B017F0365A64DFDC8207712A6DE7E85F390BE7A5DF4
                403705885E09B461A9F4395726F19C87799924A72ED2C04850C0586277E8104D
                B663D0D1908CC9383A85380020CBF90EB82F4EE4A2EF52E8044BC5D5C92632F3
                6CA1062427652911077FA1C7B8D21441D34020122160C537627E8429E20BC534
                1BB22C8474671D06FE29936835064744B4AE7603A01C2B0702DE54C9495B0502
                5B947C48BA4B6A4488896474A0CF7936AECF450BEE1D2FA806F22C1AA5CDB76D
                05205604CB361A05EC406C144F26A558BA273711C39A55FA0E2B4930DF0F2542
                460744980E3089A225F29265235C18F4CA3A8439B1AF62128E7916F87A3E72B1
                6CA834651DE0DBA819A588E66D14236EE6A68862130DC7657301AD00F752810D
                AC000175432D27E87036199DB6729356BDB10D94594D558E5B500A512177819E
                C296EED8125C6E82EC8C4A368A32187403222611ABF41D2E6CBC1F62FE04C3C2
                8A19E7ED71D766192C851E246D20E62E9C4851F3052CB53B0B4D7211CECFC1D5
                AC2B70C8C8FCAA8DB6DDAD693F999D0E700213313055C91458283DA524B5AE16
                E0E4453C8DD5E820454C723763C4F4BA6906F21F25D4C2A606EE374801BA5361
                BE0205EDC1CEAAB968A54C8C67C1D82F3C169E892C804321039503CD2067284A
                AE55A70644017B00F9E97C66129D7999622350BA2A34814CA3024D4111ABB094
                11D0D4A10D0260F53C53325EBC20FC354000202D14FC22108E40BD8773C83AAB
                0DA682760CAE80B562558F1EEB506340E657A13448B0297C15CFA311157DB46A
                E8C85AE1E428C3419814BDDB635A7BF8AE407062595AAEC00745B4C3AEDB8619
                BBA66B1D16735B2E3207957C1D10733B2CD0EC04380A588C44BAD9FD37E8E90A
                195E01AC083AA694C54788BCD0C013385EB3C453C25C3633CAF4E92316413473
                3500E5A4896F125F1C3DB2B75A3BD77B2927A90206E870E8A50095742A3479BC
                433E1291370DCC04F90F8A18A93898996F48F1D142814272BB9101B835A0D7F2
                7DA6A9955BAABD0C81C782D2D8851C522D10F943235976A6C9614D405710D4A9
                9B1546A54F7A0F6A8AC881B24CBB365D4800538BA7A67A0897880912AF83C545
                F26B4707B1A5B621FB9D196673F472F829189BCAA250704C1C051C2EA030823D
                93FF00453B89184566DEE93796A434E9842611F015CA06B5A42064065755BABA
                AAF41FF8512108F8A5680AB51E5F15C15D0103DFF1FC175B021C4A44E19D5086
                6B833B1D91545F4045791F05A79E8EE41E58C9E81B0883195601CA81E69FC8A9
                4A9CAB510E55B1893DBF1D09A1A8D029E386A0000F02152D978E0CC784391D49
                34A036F98FC34901C012AB80A022027378F8A7A808E28CD7D560EE69579F1085
                1097130DA73142D021811001B01D0B56D94FC1AA3D1917D59466F97F9A980498
                C2B076C3986B5CF1EEA69793CF2FFB8380E8845603569BD920A07823C502A916
                9820F30E76A98E2CC3687DAF381A579F04A4A8EAAAB5199C2090B17211DBE8A8
                129AE8567B3E3A395C10D013F45EA60922AF60BC48F4C3636509144F21EC9EB1
                1A179027E7A0D8A0D3A9735077B3CDA4DDE7F2F348C81ECA80795281F0B9B804
                E565797A30B27B7487960E80C930A68CE3BA3D745B186916FF0077D1B5473A1D
                246B380E8020001007456C1356303E63A20747544A93E2B3459AEB74ED2FC1D0
                E80F7974ACDB277EB6AEB8EED4168B0A6E0FE6923B05E5E22760AA2ACC06A60F
                6950278BB8A4F2C4BDFA992EE780AFCFD74630801D921A0488C274084ED455A4
                4B614FA304D120146F3DC0D122E8E7181760995D01A0F48F178EA3559BE69FC8
                A94A9CABBD4B0673D3E5406797554A0157628434083BBFDA9B736B1816FC7D6B
                02B6A84D5512292F5CE2890D8E93C95306A4BB823DBE4A6919423801DD4A1F05
                83627F1D2F7CA58649BB205D2A61090CC8368317AD7A3BA5064B5330091C41F1
                D4971F7404FC05E2A4A051C48AC7E41433D61C012BE8A41406CDFF0058628668
                1A8C59FA3EA34D80195F5C8786A840A98035A2EE0679117945A880B1E0017E2F
                0D09C26C4898FCA9D6441108B30F48639652303C1DE84FF1518621E2478E9180
                DE830BE0FD0A19BEE70F81FEBA21882BA5414C81853418FB1E68D9458DBBE65A
                128040180EADF5850D8381DE06835106CA1800D55A9F11191001F649E68C4278
                7A0C34198401A0113C493CF514489594B7EC9BCF470E5D044CEBFA6282BA2780
                257D530E0B66EBF70B505D7048C453E8F9EA4A4415747A311E8846CAD7740ED7
                FB69EDBA76201E6FF7489C40A54B0051F9089D84EE327CF522E3299241F34AF8
                CC001397797E54B3D12A9B107810A8EDE2490573F4296230137100F91E69CB22
                004AB50156B889265ED4B155A167BF27B655DC3BB863F149F485B7124ABB44B0
                B2130772FD42974B2416B05CB478ED4E29113A043C4A783A4E43025D083E8EA1
                36133313207CA1E7A4ACA394D1907F6BF5C62EC2CBAB83C9CA8461F015E28761
                40C01829DA2D8EE218FB518694071B3C483CF50A79511E34C03C20A44CA01957
                4A851187E862B391893BE3ECFCF48A90CB19FC0278E8D8A789342C2DA2207B5B
                FF00BC1D56A4DB424253CF49D84F3ACD7CBA092DEF8112ABA0050311931625B7
                120A6EB4B159244896A982A6A157113E00F1491199CF07F0BD43EA758992798F
                FD7A425BE2EA4AFA54AB1909D2E5F88E85D09EFC93F09F434599F4E1127B5E69
                811486A841F4D05C381A01629C7544CE96A28BE902EE17C875422C7E0025576A
                44A5675B0165C4B1375A40EC0566FBA1E28D68DD3ACD0095A04421322C342684
                231803A9182DC6DE4114B2B0172800F6D0922930047C14C8C576E984F23A6436
                9DA65FD758F28198B4C8DD1F2E936C583C25F5CCB4651145D070AA0220D44CBC
                7E53A8D279E1FF0052F0348C8A32AE5A73AD810203F44D8E807CF0FB1F81754C
                E04A005D5A3BC48DF4F2D6765494709777C0D46CE914766A336FD0820B69250A
                86B294D9D0B2C032A803755A8872F38D9D4921C0A1319C0EF73FAE990727BA1F
                2BD4DA901B7104F8FCBD14FC4BA010E372024D3EB174543EE49EFF00546FB9BF
                A97E94E2A7F814723FDE558FA812FE397D02C2E97212D161C837841694CA6BFA
                12395569ACBEA6DF893D18CC88624DDE42B24C281956C14198AED003F1D19425
                EB13283CA1E695596ED2E8926EC33FC7D145E831944206EF45B5ECA20BB903BA
                0D4E850E17ED16252CA6789072D21386A4A488D912A2C827BC03468DF84D469D
                A52386A65E1CC2A2900CA3A358A3FF00645524432253CC1C5ED6DA2E5D8E5813
                E97716966D086489332F49CC87172AE3EC6B356712901D87B3D09118208E7390
                B330F66804A039681504CDBBDB59C80098A2E0528017694CB556485670A9F347
                ABC2594D8DA4A4AD16D1EEDA24EF19205A84013572D31406C53209A8ECAF1441
                A405212B00088ECD0E63A2A180049574A002B5917BC32C972899852B0DE9401A
                A6812AB60296BE9B2A024158C58113328F6A22425E34A4C6AE9739F8844E0F94
                61994B509ECF7E4A389C4A556C04941921075176D14A3DA0273137E0547171D9
                F84A67BFF3292595E9928D0201245C4DBE7A4B0900491600BA2EBAC417C3B01C
                D4D6E803C81305AC914A28C3655602A7E1236808FC15A4407540BF9ABC430E18
                2EEFA0D40D4A3FDE800032B53D656622B78D53592E4A93CB4883BADCBB18D8A5
                04F11000800DAA412B42EF11D4D26A26946631560547606AEC520918C889A319
                BB34BD445A4CF184C86CAD099414CC5400A3AD32EC30BAD4583755AF4B1ED99A
                1A7D83CF43F8B5134E08166096656D8AC678A4AD4F12785BF45A16792833F82D
                E05D3A1B462814691B464EEB6E9065EACA953518678358C234555B48694BC602
                5A771DC59E3070000040580FAE5EF65A39CF06F580D21A2E9C0F9FB745C22B52
                CA3D6505B245E640511184D685699A2C8012ED34609851BF9BD76E78110CD1AD
                376A30C510191B1D708D2A4C3C8CA62102C6015E85C2BF6B301CDC39B8A69235
                18D0912104084DE3A9923514EB82E864178189A8D1EA5A3317580E580A21840C
                0E115943A9699852F46D850A244A1EC4459CCA0BC3B316612505EC5E10B88986
                A2014C0E51DD494466A430280C176C2602C162D2D090DA7715D0894D9926186D
                439A88A48E5E104E1C314D07328BF2D1FA7102301649409A822E433464636040
                47BD326E9BC4C3AC9744D4C49D259B4B518B5D442408B322131A40B072910F69
                15351F31176C126ECED2D49CED1AEB960CC4962C94AD846226F148166250D928
                0661B9C76099903204682A439109E1D12876E843DC211A734BD73497B12407CA
                8A37828233A06180162862591E2B32C26489BD5A826569AB718904B0D49A0388
                CCBB292F3433C98C0C70D96CD6452F66770A207133FC1781A031BD003995E4CC
                970B5A5C95A987D34A5CF53B95D69D3EF0CECBE3EE7357F524C0CF34A2C8926F
                78B3691CB80072A140304807713B2F2161634E8A000283153D2093B4D2D96720
                D0622CDA1C5AD8A0409922956D26200444DE282496343ED0570B48EF5244B977
                1575D0BE14511184D4A7F5244E30023B696BA78322FA16309783005D3AE84808
                A06D1168A0D10B9460FC0055697EAAA1164CC8900D3A10C19312C1882EEC92C2
                4D46C2D76CDE6784D4E777599B04C9D2183B559978E168BBA618836D68C34281
                1739194B7BBCCD44DECB9394EC9592C8EABD29F386B364DC62C923A341CECACB
                45E911000C6F792EBD7C2DE03D20F6A4DE58C2EB1021A2E080D281B75B2744AC
                E59D9C98F82074F821158B4A73DF866ED918C314F7C41C28C89A3D21B156814C
                064A2117A9E772867D14287DB71A1541524A8E2A4F7526724A7BE24EE219BD3D
                09A75232006449605C97228915366171ED8A3CE85CE0BB516304C2069094C541
                1234770BB0CCD135B97FBA532ADD5BAAAFD617D13C012BEA9AC66C774DF020F1
                D1081530065A2B38E90302796BCF40AC684244DA9A7DC994DD4BBCD7386AA3DD
                05E8C84D9049460018020FA9412A06ED2FCF6127A29F35F0DFAA2CE94854F644
                FBA2B4987EF53F8A3BDCAA3776BE6998059DDCCC7B8D3D90EAC4AE592EDE8842
                9C022CDFDAC07011484C2572AF2D0B3AA93AE02E26E5121728C84695EEA69388
                20CCDAC5E11AE6780A810ABDE8F328200260C4DDB06A7AA1007B57E40F517746
                276105C7928A1E23D8700BCD027FE323215080FD808387721A5AF94C8654BAF7
                A35EE8BD200E0E08AF984CA2A2BD601AA647AE42133780F348E7AB24B7B23EA9
                5FC68356850204C9297690780AB0A9CC81EFA5CD501C7BAA2EF803EF291E699C
                8438BD904BCD084DA832A289FA0050A237F79EA13861876920F14F5201279B4C
                7E6BF4F136A7C7E4FEAAF2ECA719964EDC518630771CADC3DEAFB3C68F91E027
                4F9E62B90234A6F114CF00A09863C1B25CF167BE83CA11501033212098B9D681
                322F1EE067C545530A43C53E669A274BCF7577CD20976033D97E69453F4F90FE
                152016C12748E618183F194889A51D3E5D17D910705117582AF42F547705C7AD
                046822D734229867FBCA3E8C19233D9D01081D69A85C7B51A2406621E2482999
                4339A9FF0018D645AD184EA38545C034C9358F020701D4440B63EE1C8DF0129D
                8B775BD0E47B2A05ADC3D240BEEA2A7A012D8A79806915ACF70545A2E48980D1
                22F3DAA56A859B1694B217BACB058E9037B55B740151E8331B7111EA34475E09
                40462E677835EABA988368CECE9DB2B4FA550A6507E5A6A45A1FA5D43AB2695A
                91923089F6AEC61029F25653AF917B83F9A9F3B810FCA4F8A7D39D38F6EF9A15
                047213EAA60A59027D9FE21A00E192F650256C3FDAD0706EE13C2A802339021E
                C7E6921135FD886D4213EABBEB7E6A5ECF509F47C29AC191B792B408130147A1
                58FF0011C560B5BDD43D3EFA31E089CCDC7D9FE43A0DE1353973FD24A7241633
                5E6B8142180DE05040E53040355600E02A1D33AC26600301317425A742EEAB4F
                7A209D7016F9BE687A8E10F94D0D40C3C78414CA4D4A637847C53901C85F807A
                81ABB2C1978B94C6FDFE96AF779C8247AA7E8D954D0DD614C6E0E95023A19A09
                892161A390A345F33C36C8AE104A6EBA2C66CF53E0D62A08D65451BC7663162C
                401312F426D8B3B90902009321BD0F12785C9595A8F4B7B53F3468FC84A08903
                218FB54B15A5495F3FE29A48C203ECA1E1610AA272DD1A2AA920C90FED4DD69C
                7500413326F5AC4CED587DE98BB010FE8A000001A1FE692D941999FC29FC51B7
                0B8D473F34440008034FE488F9A46660DD77706A94F1BC9B022927B43BD08528
                9C05B0262F1BAB95684DBC0E509EE8D8D0DEEFAC600A1367204A2D24831E599E
                55410A24A496EA094B4A2330E28DB98103407FDD7A5D881C1390BCC39179A3EE
                C3873F904DC09CAB440C14433083711211A3A51A90D292AAADD5EA9771DEF722
                BC185564F6E3440A58FA400ED2DD7FC12AAD857A82859181F6207CD6D08D13B8
                CBE2936C7015E1C7DD48FF00E796FE0D449CCC2BE3F2683046E2F635A5CF327D
                BA63EB80A7A28008083ECB0F6227C800916261082F13445D619B88D02B80650B
                DA1FE4BECFA048B70B3198648349A3B0D6E859AD903DBDA809D6437100326898
                CAFF003187A050E488D26FDE7134B019122913ECE175969219D0AC7945C8B566
                90269D828B00DF96840A1C1A87BAC6C6F93319B16708669CF431FB70EC1EDCAA
                DFF893B3A009578A38D4C37E03DD1C3B578EF2FC28F2A730BF005036C435FA9A
                5127DAFC523F34108F43BE4FC28A9C7E8468D9CE063D1FE98804411B23489F23
                963281E40E66543AE10396C001C14892B96CF35442B46703C061E0FAE43F9941
                C61E5A324EC153E8BC9423CE7C067BDA1FD4AF420D05109A0CD0B41F8387807F
                8523F8802442E484E7B0EDFC18BE4CC94845D8B48DCFE29497F4DC0955B03617
                4A898010612744D1FAC2B4428198809627588A361A44D48859135FB0A80AB01A
                D3E25C76817364854F27D4118C812239129F05EF92B8373EF6D11D520A004AAE
                00A93D608F06C5C1E5414C71617D45807B4D0060ABF000E3BAA049904E1C82BD
                D000000603FC405A8B83331CF80690D0A349950035898E82D501B33FDE4FFF00
                252F22439B70D8F3114E4580402C08484EB11D260563177028E4228FF30CA7C2
                100C30A43157A8705E3195C02D06F0E953A4020B04845CA3E71902C40CDF236D
                D7AC5A87A328EC0B5241181AB8B19036988B55DEB8CF9844E477A53EDB0832B2
                82359C6B45556C0EF7B1E6CA34E126B9204B225E6903488C1840C4DA69719942
                CCE0AE1646EC453EBA38790CA480215802AE49EE3BBA24E144886299AE902010
                01594161CD5F7095061415688D8BB143489D909F88C8914B5098AD485C0B25F6
                AC67D4630A3B895689C6D886D6A8B3294335A311228B42B2058D69A87DD0B11C
                A06E91E4078A979C8A2237672DE9F068334B80C49A484D642B524C1EA2D5A866
                809CE58AB00963B2CDE86E8E1EDB0183DD1CD2997111B2AB60E69D0A06377F44
                D94C768C52D4015654C14708490E4B86D24AB350A7B280F09108AB282C5B5886
                A064EDCA5950509522E60A08B04713190E5780D04D2418CCA801DD1D1091594F
                2175C12D4AC7962D096381BE553E1CBB4D024286E82CED48B8A075A191D01BE9
                3400BA1D5888605186FC54974BE2965017108C264889A69370215657C50018B2
                D1DBA242711492185218B5665059CA47A8B16A19A533739AF01E0B51269D986F
                210EF6559F5A58273C445E68D7EED38880BE5314B92A27076272F05EB846F4F8
                249D01974A926592A6909090DD18698CC21A632029B5AF7D268CB4817307B364
                805869472FB058F2FF009D2A0E662710B23855177251BA4F80F1F5A1FC864884
                46C89A539831F3574C9B01231097A8608285CD6099F0073471FE58BC2B595898
                1122DC3D8BFE422363F005D574294F5BC59DC1B303202F394AF46EC2E00C502D
                C86468A5ACB804AFA2A23EAAE7867615E1289ACEE4B700033160C5800870BDA9
                4B36F96204AA5D6AF40817C24F348A28A5DB6E4597C3040151F0EF4AC5181526
                C5E9D85F80CDC0C6510D9091C086518B6F220090BDACDAA48AAACC0649BA8A43
                D0EA8C04F678AC02BA5062F294D64B72549F1C10392B754891A453FE740512E2
                52F1595122423094279224EC9884B9349A8ED4790F690C7A0A9A37900B541075
                B88D2288928959E0195092FE0530E940B8649A8566C5B0C832A5ED2984028113
                33BD333465A26378023B0A7F39F33939248A082C8A408963A5C479BE6910DF84
                9240E42A23F7E0C34274113646C4070E7C676542BA8B1BABAA8E0F8000415691
                9B44E949F740233644DD806D307347F7636EF019002A4C4B95A8C16B897A0688
                234B4B3147BB5C90ADD0E65980465A1F57444398882261195CD4DF2707098242
                8666E0E6884B46FD1230333672DC909E9344ACBDC6204AE175A6F0887944CD0E
                C52A8BBA2CDA9268E21826022D4F738D48989C322ECD677C01BC1226E46FB156
                F86FB6945998526488725A88DA556AB58240905C8B36A2B4B3B0012B4B844144
                59325048892B33000A08DDE1928802F05965C520773902B1A6064C6446B57BBC
                7D8C12498515C2F3525FB5415D97252123BDE972EA7254C21B3DCB9546518208
                B2287820942F3495ABB84041801086930B50964A86159A15013305B75A13F133
                144A00808B4AD4E4F770F05898426564999A4E110CBDE6340C02C483851BACCC
                62D1BCCCE142972DC77A7581230B449110F135AAD5812B35109A6B6AD20771A6
                064C688D6A628DA36A00086C5B858DDA72445C87D9091AE6F72599E8579ACE67
                A195137A2FE684DB0ED2F44FC2720183D07D8DD7D559E6E9831ACC6B474D8D3A
                200C92A05D89D69799F9041530810244C0C6F47124F40882749989D2697754C7
                3D90905C480D3156C505862581A8949EF6A41313C8B9521801648A8822908648
                3690826D294648A9803160B02DC17BC55CB87DB7AA202AC8B9F02CC5E04B9494
                8B8466D08B54882AD7F04138AA104414AFE095E8942006E4990692E81E6967A6
                431961668DA9C562444084900726CDE45F3B6197C1426259B6543D8CA4B3498C
                88488E17ABB8964C1B3909048032BC88B17289D1481910819152292E93A31EB9
                09BA151E58A6965E31C66214E1FC297B342CA724421D04211B52469262819E2C
                BB096BC256AC60C7A022192B7997AD5D27DB4C202C459E4A9A00888898951CB5
                E68F75B749E5BEAAFA256C34DCFDD185290371917B96643A5C51982490083291
                9ECD27686F4AEF6D0B06B23294D8882070981D486231BA86BF1F5270DAE1C100
                589A0AA1048898D5E5AF357DFAA040800C484D5FEFCE10883062C2E9DE8AB929
                588B040896808119129813F91DB26A980DD97531D766444A429D0E78D2DA3E10
                24C0C282682A683242605090610237A63E7C206D84404BC423698941CE25894C
                8302607648B49736EF9AE46E6845082B6041BD9B679912F9A59E9B1ACB0B009B
                88DA0825308D235968C432240CC41AA15A1609848043E3D426784378B3266DCE
                B454E2FC04E016CDF8A0BE652648AB60204C5C9AD58185021161895E12527FFC
                7B2A7182F20130605452A1882527CB29E356A247161864D6088992AD038E9025
                640494B7EC38E376364B20612922E1B89592CF98ECB19800C3355A85343D3412
                656881211733470D8026C02242E4996068070E1E89048062DE952B533A5B105C
                5EA88D8C88E30909491BDC3790F8AFA0B806623292C520E125430C8A8871A29B
                A49304D9D63EF9195090A947400A52FE5925D592417B684C20831FE3E5CAD1D0
                37807FEBFC3FFFD9}
              DrawMode = prdmStretchProp
              FillColor = clNone
            end>
          dRec.Left = 2
          dRec.Top = 2
          dRec.Right = 197
          dRec.Bottom = 66
          Visible = False
        end
        object prMemoObj1: TprMemoObj
          dRec.DefVersion = 0
          dRec.Versions = <
            item
              Visible = True
              Memo.Strings = (
                'EL SUSCRITO REPRESENTANTE LEGAL'
                ''
                'DE LA FUNDACION APOYO'
                ''
                'NIT. [NIT]'
                ''
                'CERTIFICA QUE:')
              lBorder.Show = False
              lBorder.Style = psSolid
              lBorder.Color = clBlack
              lBorder.Width = 1
              rBorder.Show = False
              rBorder.Style = psSolid
              rBorder.Color = clBlack
              rBorder.Width = 1
              tBorder.Show = False
              tBorder.Style = psSolid
              tBorder.Color = clBlack
              tBorder.Width = 1
              bBorder.Show = False
              bBorder.Style = psSolid
              bBorder.Color = clBlack
              bBorder.Width = 1
              FillColor = clWhite
              hAlign = prhCenter
              vAlign = prvTop
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -21
              Font.Name = 'Arial'
              Font.Style = [fsBold]
              Rotate90 = False
              DeleteEmptyLinesAtEnd = False
              DeleteEmptyLines = False
              CanResizeX = False
              CanResizeY = False
              WordWrap = False
              FontSize = 16
            end>
          dRec.Left = 0
          dRec.Top = 66
          dRec.Right = 717
          dRec.Bottom = 252
          Visible = False
        end
        object prMemoObj2: TprMemoObj
          dRec.DefVersion = 0
          dRec.Versions = <
            item
              Visible = True
              Memo.Strings = (
                'NOMBRE')
              lBorder.Show = False
              lBorder.Style = psSolid
              lBorder.Color = clBlack
              lBorder.Width = 1
              rBorder.Show = False
              rBorder.Style = psSolid
              rBorder.Color = clBlack
              rBorder.Width = 1
              tBorder.Show = False
              tBorder.Style = psSolid
              tBorder.Color = clBlack
              tBorder.Width = 1
              bBorder.Show = False
              bBorder.Style = psSolid
              bBorder.Color = clBlack
              bBorder.Width = 1
              FillColor = clWhite
              hAlign = prhCenter
              vAlign = prvTop
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -13
              Font.Name = 'Arial'
              Font.Style = [fsBold]
              Rotate90 = False
              DeleteEmptyLinesAtEnd = False
              DeleteEmptyLines = False
              CanResizeX = False
              CanResizeY = False
              WordWrap = False
              FontSize = 10
            end>
          dRec.Left = 1
          dRec.Top = 260
          dRec.Right = 407
          dRec.Bottom = 282
          Visible = False
        end
        object prMemoObj3: TprMemoObj
          dRec.DefVersion = 0
          dRec.Versions = <
            item
              Visible = True
              Memo.Strings = (
                'DOCUMENTO')
              lBorder.Show = False
              lBorder.Style = psSolid
              lBorder.Color = clBlack
              lBorder.Width = 1
              rBorder.Show = False
              rBorder.Style = psSolid
              rBorder.Color = clBlack
              rBorder.Width = 1
              tBorder.Show = False
              tBorder.Style = psSolid
              tBorder.Color = clBlack
              tBorder.Width = 1
              bBorder.Show = False
              bBorder.Style = psSolid
              bBorder.Color = clBlack
              bBorder.Width = 1
              FillColor = clWhite
              hAlign = prhCenter
              vAlign = prvTop
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -13
              Font.Name = 'Arial'
              Font.Style = [fsBold]
              Rotate90 = False
              DeleteEmptyLinesAtEnd = False
              DeleteEmptyLines = False
              CanResizeX = False
              CanResizeY = False
              WordWrap = False
              FontSize = 10
            end>
          dRec.Left = 409
          dRec.Top = 260
          dRec.Right = 576
          dRec.Bottom = 282
          Visible = False
        end
        object prMemoObj4: TprMemoObj
          dRec.DefVersion = 0
          dRec.Versions = <
            item
              Visible = True
              Memo.Strings = (
                'TIPO')
              lBorder.Show = False
              lBorder.Style = psSolid
              lBorder.Color = clBlack
              lBorder.Width = 1
              rBorder.Show = False
              rBorder.Style = psSolid
              rBorder.Color = clBlack
              rBorder.Width = 1
              tBorder.Show = False
              tBorder.Style = psSolid
              tBorder.Color = clBlack
              tBorder.Width = 1
              bBorder.Show = False
              bBorder.Style = psSolid
              bBorder.Color = clBlack
              bBorder.Width = 1
              FillColor = clWhite
              hAlign = prhCenter
              vAlign = prvTop
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -13
              Font.Name = 'Arial'
              Font.Style = [fsBold]
              Rotate90 = False
              DeleteEmptyLinesAtEnd = False
              DeleteEmptyLines = False
              CanResizeX = False
              CanResizeY = False
              WordWrap = False
              FontSize = 10
            end>
          dRec.Left = 577
          dRec.Top = 260
          dRec.Right = 714
          dRec.Bottom = 282
          Visible = False
        end
        object prMemoObj6: TprMemoObj
          dRec.DefVersion = 0
          dRec.Versions = <
            item
              Visible = True
              Memo.Strings = (
                '[CDSCertificado.DOCUMENTO]')
              lBorder.Show = False
              lBorder.Style = psSolid
              lBorder.Color = clBlack
              lBorder.Width = 1
              rBorder.Show = False
              rBorder.Style = psSolid
              rBorder.Color = clBlack
              rBorder.Width = 1
              tBorder.Show = False
              tBorder.Style = psSolid
              tBorder.Color = clBlack
              tBorder.Width = 1
              bBorder.Show = False
              bBorder.Style = psSolid
              bBorder.Color = clBlack
              bBorder.Width = 1
              FillColor = clWhite
              hAlign = prhRight
              vAlign = prvTop
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -16
              Font.Name = 'Arial'
              Font.Style = [fsBold]
              Rotate90 = False
              DeleteEmptyLinesAtEnd = False
              DeleteEmptyLines = False
              CanResizeX = False
              CanResizeY = False
              WordWrap = False
              FontSize = 12
            end>
          dRec.Left = 409
          dRec.Top = 286
          dRec.Right = 578
          dRec.Bottom = 305
          Visible = False
        end
        object prShapeObj2: TprShapeObj
          dRec.DefVersion = 0
          dRec.Versions = <
            item
              Visible = True
            end>
          dRec.Left = 1
          dRec.Top = 278
          dRec.Right = 717
          dRec.Bottom = 286
          Visible = False
        end
      end
      object prHDetailBand1: TprHDetailBand
        Height = 22
        UseVerticalBands = False
        DataSetName = 'CDSCertificado'
        ColCount = 1
        ColDirection = prcdTopBottomLeftRight
        object prMemoObj5: TprMemoObj
          dRec.DefVersion = 0
          dRec.Versions = <
            item
              Visible = True
              Memo.Strings = (
                '[CDSCertificado.NOMBRE]')
              lBorder.Show = False
              lBorder.Style = psSolid
              lBorder.Color = clBlack
              lBorder.Width = 1
              rBorder.Show = False
              rBorder.Style = psSolid
              rBorder.Color = clBlack
              rBorder.Width = 1
              tBorder.Show = False
              tBorder.Style = psSolid
              tBorder.Color = clBlack
              tBorder.Width = 1
              bBorder.Show = False
              bBorder.Style = psSolid
              bBorder.Color = clBlack
              bBorder.Width = 1
              FillColor = clWhite
              hAlign = prhLeft
              vAlign = prvTop
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -16
              Font.Name = 'Arial'
              Font.Style = [fsBold]
              Rotate90 = False
              DeleteEmptyLinesAtEnd = False
              DeleteEmptyLines = False
              CanResizeX = False
              CanResizeY = False
              WordWrap = False
              FontSize = 12
            end>
          dRec.Left = 0
          dRec.Top = 1
          dRec.Right = 408
          dRec.Bottom = 19
          Visible = False
        end
        object prMemoObj7: TprMemoObj
          dRec.DefVersion = 0
          dRec.Versions = <
            item
              Visible = True
              Memo.Strings = (
                '[CDSCertificado.TIPO]')
              lBorder.Show = False
              lBorder.Style = psSolid
              lBorder.Color = clBlack
              lBorder.Width = 1
              rBorder.Show = False
              rBorder.Style = psSolid
              rBorder.Color = clBlack
              rBorder.Width = 1
              tBorder.Show = False
              tBorder.Style = psSolid
              tBorder.Color = clBlack
              tBorder.Width = 1
              bBorder.Show = False
              bBorder.Style = psSolid
              bBorder.Color = clBlack
              bBorder.Width = 1
              FillColor = clWhite
              hAlign = prhCenter
              vAlign = prvTop
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -16
              Font.Name = 'Arial'
              Font.Style = [fsBold]
              Rotate90 = False
              DeleteEmptyLinesAtEnd = False
              DeleteEmptyLines = False
              CanResizeX = False
              CanResizeY = False
              WordWrap = False
              FontSize = 12
            end>
          dRec.Left = 579
          dRec.Top = 1
          dRec.Right = 714
          dRec.Bottom = 19
          Visible = False
        end
      end
      object prHSummaryBand1: TprHSummaryBand
        Height = 736
        UseVerticalBands = False
        object prShapeObj1: TprShapeObj
          dRec.DefVersion = 0
          dRec.Versions = <
            item
              Visible = True
            end>
          dRec.Left = 0
          dRec.Top = -2
          dRec.Right = 716
          dRec.Bottom = 6
          Visible = False
        end
        object prRichObj1: TprRichObj
          dRec.DefVersion = 0
          dRec.Versions = <
            item
              Visible = True
              lBorder.Show = False
              lBorder.Style = psSolid
              lBorder.Color = clBlack
              lBorder.Width = 1
              rBorder.Show = False
              rBorder.Style = psSolid
              rBorder.Color = clBlack
              rBorder.Width = 1
              tBorder.Show = False
              tBorder.Style = psSolid
              tBorder.Color = clBlack
              tBorder.Width = 1
              bBorder.Show = False
              bBorder.Style = psSolid
              bBorder.Color = clBlack
              bBorder.Width = 1
              DeleteEmptyLinesAtEnd = True
              DeleteEmptyLines = False
              CanResizeY = True
              WordWrap = True
              RichText = {
                680300007B5C727466315C616E73695C616E7369637067313235325C64656666
                305C6465666C616E67333038327B5C666F6E7474626C7B5C66305C6673776973
                735C66636861727365743020417269616C3B7D7D0D0A5C766965776B696E6434
                5C7563315C706172645C66305C6673333220536520656E6375656E7472616E20
                61205C622050617A20792053616C766F5C62302020706F7220746F646F20636F
                6E636570746F20656E206C61206F626C69676163695C2766336E206E5C276661
                6D65726F205C62205B4F424C49474143494F4E5D205C623020656E206C61205C
                62205B454D50524553415D5C6230202E0D0A5C706172200D0A5C70617220456E
                2072617A5C2766336E2061206C612063616E63656C6163695C2766336E20746F
                74616C206465206C61207265666572696461206F626C69676163695C2766336E
                206E5C2766616D65726F205C62205B4F424C49474143494F4E5D5C6230202C20
                6E75657374726120656E7469646164207265616C697A61206C6F732074725C27
                65316D6974657320636F72726573706F6E6469656E7465732070617261206C61
                2061637475616C697A6163695C2766336E206465206461746F73207265676973
                747261646F7320656E206C61732043656E7472616C6573206465205269657367
                6F2C20616C636172616E646F2071756520656C206D616E656A6F2064656C2068
                6973745C2766337269636F2079206465207065726D616E656E63696120656E20
                6C61206261736520657320726573706F6E736162696C69646164206469726563
                7461206465206C612043656E7472616C2064652052696573676F207920717565
                206C6120696E666F726D6163695C2766336E20736F6272652050617A20792053
                616C766F2073652072656669657265205C2766616E6963616D656E746520616C
                2070726F647563746F206F20736572766963696F20726566657269646F2C2065
                737461626C656369646F20656E206573746120656E74696461642E0D0A5C7061
                72200D0A5C706172200D0A5C706172200D0A5C70617220536520657870696465
                20656E205B4349554441445D20656C20645C27656461205B4449415D2064656C
                206D6573206465205B4D45535D2064656C205B414E484F5D2E0D0A5C70617220
                0D0A5C706172200D0A5C70617220436F726469616C6D656E74652C5C66733336
                200D0A5C706172207D0D0A00}
            end>
          dRec.Left = 1
          dRec.Top = 10
          dRec.Right = 716
          dRec.Bottom = 521
          Visible = False
        end
        object prImageObj2: TprImageObj
          dRec.DefVersion = 0
          dRec.Versions = <
            item
              Visible = True
              ImageSource = isPicture
              DrawMode = prdmCenter
              FillColor = clNone
            end>
          dRec.Left = 1
          dRec.Top = 523
          dRec.Right = 401
          dRec.Bottom = 734
          Visible = False
        end
      end
    end
  end
  object frCertificado: TfrReport
    InitialZoom = pzDefault
    PreviewButtons = [pbZoom, pbLoad, pbSave, pbPrint, pbFind, pbHelp, pbExit]
    RebuildPrinter = False
    Left = 192
    Top = 376
    ReportForm = {19000000}
  end
  object frDBDSCertificacion: TfrDBDataSet
    DataSet = CDSCertificado
    Left = 200
    Top = 408
  end
  object IdHTTP1: TIdHTTP
    Request.Accept = 'text/html, */*'
    Request.ContentLength = 0
    Request.ContentRangeEnd = 0
    Request.ContentRangeStart = 0
    Request.ProxyPort = 0
    Request.UserAgent = 'Mozilla/3.0 (compatible; Indy Library)'
    Left = 96
    Top = 24
  end
  object frxReport1: TfrxReport
    Version = '4.15.13'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 43405.3993031829
    ReportOptions.LastChange = 43405.3993031829
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'begin'
      ''
      'end.')
    Left = 792
    Top = 96
    Datasets = <>
    Variables = <>
    Style = <>
    object Data: TfrxDataPage
      Height = 1000
      Width = 1000
    end
  end
  object frxReport2: TfrxReport
    Version = '4.15.13'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 43405.4304334259
    ReportOptions.LastChange = 43405.4304334259
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'begin'
      ''
      'end.')
    Left = 880
    Top = 304
    Datasets = <>
    Variables = <>
    Style = <>
    object Data: TfrxDataPage
      Height = 1000
      Width = 1000
    end
  end
  object IBQcodigo: TIBQuery
    SQL.Strings = (
      'UPDATE GEN$CODIGOAPROBACION SET '
      'COAP_ESTADO = :ESTADO, '
      'COAP_FECHAUSO = :FECHAUSO, '
      'COAP_USUARIO = :USUARIO '
      'WHERE '
      'COAP_TIPO = :TIPO and '
      'COAP_CODIGO = :CODIGO')
    Left = 232
    Top = 256
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'ESTADO'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'FECHAUSO'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'USUARIO'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'TIPO'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'CODIGO'
        ParamType = ptUnknown
      end>
  end
end