object frmInformeAcuerdoPago: TfrmInformeAcuerdoPago
  Left = 366
  Top = 240
  Width = 387
  Height = 90
  Caption = 'Informe Acuedo Pago'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  OnCreate = FormCreate
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object btnInforme: TBitBtn
    Left = 8
    Top = 8
    Width = 75
    Height = 25
    Caption = 'Informe'
    TabOrder = 0
    OnClick = btnInformeClick
  end
  object btnCerrar: TBitBtn
    Left = 248
    Top = 8
    Width = 75
    Height = 25
    Caption = 'Cerrar'
    TabOrder = 1
    OnClick = btnCerrarClick
  end
  object CDSacuerdo: TClientDataSet
    Active = True
    Aggregates = <>
    Params = <>
    Left = 48
    Top = 8
    Data = {
      1D0100009619E0BD0100000018000000090000000000030000001D0102494404
      000100040000000D49445F434F4C4F434143494F4E0100490000000100055749
      445448020002000B001149445F4944454E54494649434143494F4E0400010000
      0000000A49445F504552534F4E41010049000000010005574944544802000200
      32000553414C444F0B0005000000020008444543494D414C5302000200030005
      57494454480200020012000D4F42534552564143494F4E455302004900000001
      0005574944544802000200F40105464543484104000600000000000544455544
      410B0005000000020008444543494D414C530200020003000557494454480200
      02001200064E4F4D4252450200490000000100055749445448020002003B0100
      00}
    object CDSacuerdoID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object CDSacuerdoID_COLOCACION: TStringField
      FieldName = 'ID_COLOCACION'
      Size = 11
    end
    object CDSacuerdoID_IDENTIFICACION: TIntegerField
      FieldName = 'ID_IDENTIFICACION'
    end
    object CDSacuerdoID_PERSONA: TStringField
      FieldName = 'ID_PERSONA'
      Size = 50
    end
    object CDSacuerdoSALDO: TBCDField
      FieldName = 'SALDO'
      Precision = 18
      Size = 3
    end
    object CDSacuerdoOBSERVACIONES: TStringField
      FieldName = 'OBSERVACIONES'
      Size = 500
    end
    object CDSacuerdoFECHA: TDateField
      FieldName = 'FECHA'
    end
    object CDSacuerdoDEUDA: TBCDField
      FieldName = 'DEUDA'
      Precision = 18
      Size = 3
    end
    object CDSacuerdoNOMBRE: TStringField
      FieldName = 'NOMBRE'
      Size = 315
    end
  end
  object CDStabla: TClientDataSet
    Active = True
    Aggregates = <>
    FieldDefs = <
      item
        Name = 'FECHA'
        DataType = ftDate
      end
      item
        Name = 'VALOR'
        DataType = ftBCD
        Precision = 18
        Size = 3
      end
      item
        Name = 'CUMPLIDO'
        DataType = ftInteger
      end
      item
        Name = 'FECHA_CUMPLIDO'
        DataType = ftDate
      end
      item
        Name = 'ID'
        DataType = ftInteger
      end
      item
        Name = 'VALOR_PAGADO'
        DataType = ftCurrency
      end>
    IndexDefs = <
      item
        Name = 'DEFAULT_ORDER'
      end
      item
        Name = 'CHANGEINDEX'
      end>
    IndexFieldNames = 'ID;FECHA'
    MasterFields = 'ID'
    MasterSource = DSacuerdo
    PacketRecords = 0
    Params = <>
    StoreDefs = True
    Left = 80
    Top = 8
    Data = {
      C30000009619E0BD010000001800000006000000000003000000C30005464543
      484104000600000000000556414C4F520B0005000000020008444543494D414C
      530200020003000557494454480200020012000843554D504C49444F04000100
      000000000E46454348415F43554D504C49444F04000600000000000249440400
      0100000000000C56414C4F525F50414741444F08000400000001000753554254
      5950450200490006004D6F6E65790001000D44454641554C545F4F5244455202
      00820000000000}
    object CDStablaFECHA: TDateField
      FieldName = 'FECHA'
      Origin = '"JURIDICOACUERDO_TABLA"."FECHA"'
    end
    object CDStablaVALOR: TBCDField
      FieldName = 'VALOR'
      Origin = '"JURIDICOACUERDO_TABLA"."VALOR"'
      Precision = 18
      Size = 3
    end
    object CDStablaCUMPLIDO: TIntegerField
      FieldName = 'CUMPLIDO'
      Origin = '"JURIDICOACUERDO_TABLA"."CUMPLIDO"'
    end
    object CDStablaFECHA_CUMPLIDO: TDateField
      FieldName = 'FECHA_CUMPLIDO'
      Origin = '"JURIDICOACUERDO_TABLA"."FECHA_CUMPLIDO"'
    end
    object CDStablaID: TIntegerField
      FieldName = 'ID'
      Origin = '"JURIDICOACUERDO_TABLA"."ID"'
    end
    object CDStablaVALOR_PAGADO: TCurrencyField
      FieldName = 'VALOR_PAGADO'
    end
  end
  object IBQacuerdo: TIBQuery
    Database = dmGeneral.IBDatabase1
    Transaction = dmGeneral.IBTransaction1
    ParamCheck = False
    SQL.Strings = (
      '')
    Left = 184
    Top = 8
  end
  object IBQtabla: TIBQuery
    Database = dmGeneral.IBDatabase1
    Transaction = dmGeneral.IBTransaction1
    ParamCheck = False
    SQL.Strings = (
      '')
    Left = 216
    Top = 8
  end
  object frReport1: TfrReport
    InitialZoom = pzDefault
    PreviewButtons = [pbZoom, pbLoad, pbSave, pbPrint, pbFind, pbHelp, pbExit]
    RebuildPrinter = False
    Left = 8
    Top = 8
    ReportForm = {19000000}
  end
  object frDBDSacuerdo: TfrDBDataSet
    DataSet = CDSacuerdo
    Left = 120
    Top = 8
  end
  object frDBDStabla: TfrDBDataSet
    DataSet = CDStabla
    Left = 152
    Top = 8
  end
  object DSacuerdo: TDataSource
    DataSet = CDSacuerdo
    Left = 128
    Top = 40
  end
  object DSPacuerdo: TDataSetProvider
    DataSet = IBQacuerdo
    Constraints = True
    Left = 24
    Top = 40
  end
  object DSPtabla: TDataSetProvider
    DataSet = IBQtabla
    Constraints = True
    Left = 64
    Top = 40
  end
  object frCheckBoxObject1: TfrCheckBoxObject
    Left = 160
    Top = 40
  end
  object frOLEExcelExport1: TfrOLEExcelExport
    Left = 200
    Top = 40
  end
end
