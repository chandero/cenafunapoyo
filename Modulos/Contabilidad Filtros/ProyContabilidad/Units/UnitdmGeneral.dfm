object dmGeneral: TdmGeneral
  OldCreateOrder = False
  Left = 287
  Top = 149
  Height = 194
  Width = 171
  object IBDatabase1: TIBDatabase
    DatabaseName = 'localhost:C:\ProyContabilidad\DATABASE.FDB'
    Params.Strings = (
      'lc_ctype=ISO8859_1'
      'user_name=SYSDBA'
      'password=masterkey')
    LoginPrompt = False
    DefaultTransaction = IBTransaction1
    TraceFlags = [tfStmt]
    AllowStreamedConnected = False
    Left = 24
    Top = 14
  end
  object IBTransaction1: TIBTransaction
    AllowAutoStart = False
    DefaultDatabase = IBDatabase1
    DefaultAction = TARollback
    AutoStopAction = saRollback
    Left = 104
    Top = 14
  end
  object IBSQL1: TIBSQL
    Database = IBDatabase1
    Transaction = IBTransaction1
    Left = 14
    Top = 112
  end
end
