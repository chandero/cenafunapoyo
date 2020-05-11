object DmSolicitud: TDmSolicitud
  OldCreateOrder = False
  OnCreate = DataModuleCreate
  OnDestroy = DataModuleDestroy
  Left = 316
  Top = 259
  Height = 176
  Width = 463
  object IBSolicitud1: TIBQuery
    Database = dmGeneral.IBDatabase1
    Transaction = IBTsolicitud1
    Left = 15
  end
  object IBsolicitud2: TIBQuery
    Database = dmGeneral.IBDatabase1
    Transaction = IBTsolicitud2
    Left = 75
  end
  object IBsolicitud3: TIBQuery
    Database = dmGeneral.IBDatabase1
    Transaction = IBTsolicitud3
    Left = 139
  end
  object IBTsolicitud1: TIBTransaction
    DefaultDatabase = dmGeneral.IBDatabase1
    Left = 15
    Top = 57
  end
  object IBTsolicitud2: TIBTransaction
    DefaultDatabase = dmGeneral.IBDatabase1
    Left = 87
    Top = 56
  end
  object IBTsolicitud3: TIBTransaction
    DefaultDatabase = dmGeneral.IBDatabase1
    Left = 156
    Top = 56
  end
  object IBSQL1: TIBSQL
    Database = dmGeneral.IBDatabase1
    Transaction = IBTransaction1
    Left = 360
  end
  object IBTransaction1: TIBTransaction
    DefaultDatabase = dmGeneral.IBDatabase1
    Left = 368
    Top = 64
  end
  object IBSQL2: TIBSQL
    Database = dmGeneral.IBDatabase1
    Transaction = IBTransaction1
    Left = 408
  end
  object IBTSolicitud4: TIBTransaction
    DefaultDatabase = dmGeneral.IBDatabase1
    DefaultAction = TARollback
    Left = 232
    Top = 56
  end
  object IBSolicitud4: TIBQuery
    Database = dmGeneral.IBDatabase1
    Transaction = IBTSolicitud4
    Left = 208
  end
  object IBQDescuento: TIBQuery
    Transaction = IBTDescuento
    Left = 296
  end
  object IBTDescuento: TIBTransaction
    Left = 296
    Top = 64
  end
end
