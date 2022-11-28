unit UnitSaldosIniciales;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, IBCustomDataSet, IBQuery, StdCtrls, Buttons, IBSQL,
  IBDatabase, ComCtrls, JvProgressBar, UnitDmGeneral;

type
  TfrmSaldosIniciales = class(TForm)
    BtnAceptar: TBitBtn;
    IBQuery1: TIBQuery;
    IBSQL1: TIBSQL;
    IBBase2: TIBSQL;
    IBTransaction1: TIBTransaction;
    IBDatabase1: TIBDatabase;
    IBconsalod: TIBSQL;
    IBSQL2: TIBSQL;
    Barra: TJvProgressBar;
    IBSQLlimpiar: TIBSQL;
    procedure BtnAceptarClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmSaldosIniciales: TfrmSaldosIniciales;
  dmGeneral: TdmGeneral;
  Alias,Clave :string;
  
implementation

{$R *.dfm}

uses UnitGlobales;

procedure TfrmSaldosIniciales.BtnAceptarClick(Sender: TObject);
var
  codigo:string;
  saldoinicial, movimiento : Currency;
  saldo:Currency;
begin
BtnAceptar.Enabled := False;
saldoinicial := 0;
saldo := 0;
  IBSQL1.Database := IBDatabase1;
  IBSQL1.Transaction := IBTransaction1;

  IBQuery1.Database := IBDatabase1;
  IBQuery1.Transaction := IBTransaction1;

  IBSQLlimpiar.ExecQuery;

  with IBQuery1 do begin
   Close;
   sql.Clear;
   sql.Add('select ');
   sql.Add('"con$puc".CODIGO,');
   sql.Add('"con$puc".SALDOINICIAL');
   sql.Add('from "con$puc"');
   SQL.Add('order by "con$puc".CODIGO');
   open;
   Last;
   First;
   Barra.Min := 0;
   Barra.Max := IBQuery1.RecordCount;
   Barra.Position := 0;
      while not Eof do
       begin
          Barra.Position := IBQuery1.RecNo;
          Application.ProcessMessages;
         codigo := FieldByName('CODIGO').AsString;
         saldoinicial := FieldByName('SALDOINICIAL').AsCurrency;
         IBSQL1.Close;
         IBSQL1.ParamByName('CODIGO').AsString := codigo;
         IBSQL1.ExecQuery;
         movimiento := IBSQL1.FieldByName('MOVIMIENTO').AsCurrency;
         IBSQL1.Close;
         saldo := saldoinicial + movimiento;
         if IBBase2.Transaction.InTransaction then
           IBBase2.Transaction.Commit;
         IBBase2.Transaction.StartTransaction;
         IBBase2.ParamByName('CODIGO').AsString := codigo;
         IBBase2.ParamByName('SALDOINICIAL').AsCurrency := saldo;
         IBBase2.ExecQuery;
         IBBase2.Close;
         IBconsalod.Close;
         IBConsalod.ParamByName('ID_AGENCIA').AsInteger := 0;
         IBConsalod.ParamByName('CODIGO').AsString := codigo;
         IBConsalod.ParamByName('SALDOINICIAL').AsCurrency := saldo;
         IBConsalod.ExecQuery;
         IBconsalod.Close;
         IBBase2.Transaction.Commit;
         IBBase2.Transaction.StartTransaction;
         saldo := 0;
         Next;
       end;
   MessageDlg('Proceso Terminado con Exito',mtInformation,[mbok],0);
  end;

end;

procedure TfrmSaldosIniciales.FormCreate(Sender: TObject);
begin
        Alias := DBAlias;
        Clave := DBPasabordo;
        DBAlias := 'SYSDBA';
        DBPasabordo:= 'masterkey';
        IBDatabase1.DatabaseName := BaseAnoAnt;
        IBDatabase1.Params.Values['User_Name'] := DBAlias;
        IBDatabase1.Params.Values['PassWord'] := DBPasabordo;
        IBDatabase1.Connected := True;
        IBTransaction1.Active := True;
        IBTransaction1.Rollback;
        IBTransaction1.StartTransaction;

        dmGeneral := TdmGeneral.Create(Self);
        dmGeneral.getConnected;

        IBBase2.Database := dmGeneral.IBDatabase1;
        IBconsalod.Database := dmGeneral.IBDatabase1;
        IBSQL2.Database := dmGeneral.IBDatabase1;
        IBSQLlimpiar.Database := dmGeneral.IBDatabase1;

        IBBase2.Transaction := dmGeneral.IBTransaction1;
        IBconsalod.Transaction := dmGeneral.IBTransaction1;
        IBSQL2.Transaction := dmGeneral.IBTransaction1;
        IBSQLlimpiar.Transaction := dmGeneral.IBTransaction1;

end;

end.
