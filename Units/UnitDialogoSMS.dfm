object DialogSMS: TDialogSMS
  Left = 688
  Top = 213
  BorderStyle = bsDialog
  Caption = 'Dialog'
  ClientHeight = 214
  ClientWidth = 313
  Color = clBtnFace
  ParentFont = True
  OldCreateOrder = True
  Position = poScreenCenter
  PixelsPerInch = 96
  TextHeight = 13
  object Bevel1: TBevel
    Left = 8
    Top = 8
    Width = 297
    Height = 161
    Shape = bsFrame
  end
  object Label1: TLabel
    Left = 16
    Top = 24
    Width = 68
    Height = 13
    Caption = 'N'#250'mero Movil:'
  end
  object Label2: TLabel
    Left = 16
    Top = 55
    Width = 40
    Height = 13
    Caption = 'Mensaje'
  end
  object OKBtn: TButton
    Left = 79
    Top = 180
    Width = 75
    Height = 25
    Caption = 'OK'
    Default = True
    ModalResult = 1
    TabOrder = 2
  end
  object CancelBtn: TButton
    Left = 159
    Top = 180
    Width = 75
    Height = 25
    Cancel = True
    Caption = 'Cancel'
    ModalResult = 2
    TabOrder = 3
  end
  object edMensaje: TMemo
    Left = 16
    Top = 72
    Width = 281
    Height = 89
    MaxLength = 160
    TabOrder = 1
  end
  object edNumero: TMaskEdit
    Left = 96
    Top = 21
    Width = 201
    Height = 21
    EditMask = '##########,##########,##########;0;_'
    MaxLength = 32
    TabOrder = 0
  end
end
