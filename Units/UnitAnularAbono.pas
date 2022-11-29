unit UnitAnularAbono;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ComCtrls, JvEdit, JvTypedEdit, Buttons, ExtCtrls,
  IBDatabase, DB, IBCustomDataSet, IBQuery, UnitDmGeneral;

type
  TfrmAnularAbono = class(TForm)
    Label0: TLabel;
    edColocacion: TEdit;
    Label_0: TLabel;
    edNombre: TEdit;
    Label1: TLabel;
    edComprobante: TEdit;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    edFecha: TEdit;
    edAbonoCapital: TJvCurrencyEdit;
    edAbonoCausado: TJvCurrencyEdit;
    edAbonoAnticipado: TJvCurrencyEdit;
    edAbonoServicio: TJvCurrencyEdit;
    edAbonoMora: TJvCurrencyEdit;
    Label8: TLabel;
    edFechaCapitalActual: TEdit;
    Label9: TLabel;
    edFechaInteresActual: TEdit;
    edNuevoSaldo: TJvCurrencyEdit;
    Label10: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    edNuevaFechaCapital: TDateTimePicker;
    edNuevaFechaInteres: TDateTimePicker;
    Panel1: TPanel;
    btnAnular: TBitBtn;
    btnCerrar: TBitBtn;
    Label13: TLabel;
    edSaldoActual: TJvCurrencyEdit;
    procedure btnCerrarClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure btnAnularClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure edNuevaFechaInteresExit(Sender: TObject);
    procedure edNuevaFechaCapitalExit(Sender: TObject);
    procedure edNuevoSaldoExit(Sender: TObject);
  private
    { Private declarations }
    vColocacion: String;
    vNombre: String;
    vFecha: TDate;
    vComprobante: Integer;
    vAbonoCapital: Currency;
    vAbonoCausado: Currency;
    vAbonoServicio: Currency;
    vAbonoAnticipado: Currency;
    vAbonoMora: Currency;
    vFechaCapital: TDate;
    vFechaInteres: TDate;
    vAmortizaK: Integer;
    vAmortizaI: Integer;
    vSaldo: Currency;
    vNuevoSaldo: Currency;
    vNuevaFechaCapital: TDate;
    vNuevaFechaInteres: TDate;
  public
    { Public declarations }
    property Colocacion: String read vColocacion write vColocacion;
    property Nombre:String read vNombre write vNombre;
    property Comprobante: Integer read vComprobante write vComprobante;
    property Fecha: TDate read vFecha write vFecha;
    property AbonoCapital: Currency read vAbonoCapital write vAbonoCapital;
    property AbonoCausado: Currency read vAbonoCausado write vAbonoCausado;
    property AbonoServicio: Currency read vAbonoServicio write vAbonoServicio;
    property AbonoAnticipado: Currency read vAbonoAnticipado write vAbonoAnticipado;
    property AbonoMora: Currency read vAbonoMora write vAbonoMora;
    property FechaCapital: TDate read vFechaCapital write vFechaCapital;
    property FechaInteres: TDate read vFechaInteres write vFechaInteres;
    property AmortizaK: Integer read vAmortizaK write vAmortizaI;
    property AmortizaI: Integer read vAmortizaI write vAmortizaI;
    property Saldo: Currency read vSaldo write vSaldo;
    property NuevoSaldo: Currency read vNuevoSaldo write vNuevoSaldo;
    property NuevaFechaCapital: TDate read vNuevaFechaCapital write vNuevaFechaCapital;
    property NuevaFechaInteres: TDate read vNuevaFechaInteres write vNuevaFechaInteres;
  end;

var
  frmAnularAbono: TfrmAnularAbono;
  dmGeneral: TdmGeneral;
implementation

{$R *.dfm}

procedure TfrmAnularAbono.btnCerrarClick(Sender: TObject);
begin
        Close;
end;

procedure TfrmAnularAbono.FormShow(Sender: TObject);
begin
        edColocacion.Text := vColocacion;
        edNombre.Text := vNombre;
        edFecha.Text := DateToStr(vFecha);
        edComprobante.Text := IntToStr(vComprobante);
        edAbonoCapital.Value := vAbonoCapital;
        edAbonoCausado.Value := vAbonoCausado;
        edAbonoAnticipado.Value := vAbonoAnticipado;
        edAbonoServicio.Value := vAbonoServicio;
        edAbonoMora.Value := vAbonoMora;
        edSaldoActual.Value := vSaldo;
        edFechaCapitalActual.Text := DateToStr(vFechaCapital);
        edFechaInteresActual.Text := DateToStr(vFechaInteres);
        edNuevoSaldo.Value := vNuevoSaldo;
        edNuevaFechaCapital.Date := vNuevaFechaCapital;
        edNuevaFechaInteres.Date := vNuevaFechaInteres;
        dmGeneral.getConnected;
end;

procedure TfrmAnularAbono.btnAnularClick(Sender: TObject);
var
  _ibquery: TIBQuery;
  _ibtransaction: TIBTransaction;
begin
        _ibquery := TIBQuery.Create(self);
        _ibtransaction := TIBTransaction.Create(self);

        _ibtransaction.DefaultDatabase := dmGeneral.IBDatabase1;
        _ibquery.Database :=dmGeneral.IBDatabase1;
        _ibquery.Transaction := _ibtransaction;
        // Eliminar comprobante de colocación
        _ibquery.Close;
        _ibquery.sql.Clear;
        _ibquery.sql.Add('delete from "col$extracto" where ID_COLOCACION = :ID_COLOCACION and ID_CBTE_COLOCACION = :ID_CBTE_COLOCACION and FECHA_EXTRACTO = :FECHA_EXTRACTO');
        _ibquery.ParamByName('ID_COLOCACION').AsString := vColocacion;
        _ibquery.ParamByName('ID_CBTE_COLOCACION').AsInteger := vComprobante;
        _ibquery.ParamByName('FECHA_EXTRACTO').AsDate := vFecha;
        _ibquery.ExecSQL;

        _ibquery.Close;
        _ibquery.sql.Clear;
        _ibquery.sql.Add('delete from "col$extractodet" where ID_COLOCACION = :ID_COLOCACION and ID_CBTE_COLOCACION = :ID_CBTE_COLOCACION and FECHA_EXTRACTO = :FECHA_EXTRACTO');
        _ibquery.ParamByName('ID_COLOCACION').AsString := vColocacion;
        _ibquery.ParamByName('ID_CBTE_COLOCACION').AsInteger := vComprobante;
        _ibquery.ParamByName('FECHA_EXTRACTO').AsDate := vFecha;
        _ibquery.ExecSQL;

        // Actualizar tabla liquidación
        _ibquery.Close;
        _ibquery.sql.Clear;
        _ibquery.sql.Add('update "col$tablaliquidacion" SET PAGADA = 0, FECHA_PAGADA = NULL where ID_COLOCACION = :ID_COLOCACION and FECHA_A_PAGAR > :FECHA_A_PAGAR');
        _ibquery.ParamByName('ID_COLOCACION').AsString := vColocacion;
        _ibquery.ParamByName('FECHA_A_PAGAR').AsDate := vNuevaFechaInteres;
        _ibquery.ExecSQL;

        // Actualizar colocacion

        _ibquery.Close;
        _ibquery.SQL.Clear;
        _ibquery.SQL.Add('update "col$colocacion" SET ID_ESTADO_COLOCACION = 0, ABONOS_CAPITAL = VALOR_DESEMBOLSO - :NUEVO_SALDO, FECHA_CAPITAL = :FECHA_CAPITAL, FECHA_INTERES = :FECHA_INTERES WHERE ID_COLOCACION = :ID_COLOCACION');
        _ibquery.ParamByName('NUEVO_SALDO').AsCurrency := vNuevoSaldo;
        _ibquery.ParamByName('FECHA_CAPITAL').AsDate := vNuevaFechaCapital;
        _ibquery.ParamByName('FECHA_INTERES').AsDate := vNuevaFechaInteres;
        _ibquery.ParamByName('ID_COLOCACION').AsString := vColocacion;
        _ibquery.ExecSQL;

        // Anular comprobante

        _ibquery.Close;
        _ibquery.SQL.Clear;
<<<<<<< HEAD
        _ibquery.SQL.Add('UPDATE "con$comprobante" SET ESTADO = :ESTADO WHERE ID_COMPROBANTE = :ID_COMPROBANTE and TIPO_COMPROBANTE IN (1,15) AND FECHADIA = :FECHADIA');
        _ibquery.ParamByName('ESTADO').AsString := 'N';
        _ibquery.ParamByName('ID_COMPROBANTE').AsInteger := vComprobante;
        _ibquery.ParamByName('FECHADIA').AsDate := vFecha;
=======
        _ibquery.SQL.Add('UPDATE "con$comprobante" SET ESTADO = :ESTADO WHERE ID_COMPROBANTE = :ID_COMPROBANTE and TIPO_COMPROBANTE IN (1,15)');
        _ibquery.ParamByName('ESTADO').AsString := 'N';
        _ibquery.ParamByName('ID_COMPROBANTE').AsInteger := vComprobante;
>>>>>>> 171925b3cf59501bab9dd1664befb26ff80c6cee
        _ibquery.ExecSQL;

        _ibquery.Close;
        _ibquery.SQL.Clear;
<<<<<<< HEAD
        _ibquery.SQL.Add('UPDATE "con$auxiliar" SET ESTADOAUX = :ESTADO WHERE ID_COMPROBANTE = :ID_COMPROBANTE and TIPO_COMPROBANTE IN (1,15) AND FECHA = :FECHA');
        _ibquery.ParamByName('ESTADO').AsString := 'N';
        _ibquery.ParamByName('ID_COMPROBANTE').AsInteger := vComprobante;
        _ibquery.ParamByName('FECHA').AsDate := vFecha;
=======
        _ibquery.SQL.Add('UPDATE "con$auxiliar" SET ESTADOAUX = :ESTADO WHERE ID_COMPROBANTE = :ID_COMPROBANTE and TIPO_COMPROBANTE IN (1,15)');
        _ibquery.ParamByName('ESTADO').AsString := 'N';
        _ibquery.ParamByName('ID_COMPROBANTE').AsInteger := vComprobante;
>>>>>>> 171925b3cf59501bab9dd1664befb26ff80c6cee
        _ibquery.ExecSQL;

        _ibquery.Transaction.Commit;

        ShowMessage('Abono anulado, por favor verifique!');
        Close;

end;

procedure TfrmAnularAbono.FormCreate(Sender: TObject);
begin
        dmGeneral := TdmGeneral.Create(Self);
end;

procedure TfrmAnularAbono.edNuevaFechaInteresExit(Sender: TObject);
begin
        vNuevaFechaInteres := edNuevaFechaInteres.Date;
end;

procedure TfrmAnularAbono.edNuevaFechaCapitalExit(Sender: TObject);
begin
        vNuevaFechaCapital := edNuevaFechaCapital.Date;
end;

procedure TfrmAnularAbono.edNuevoSaldoExit(Sender: TObject);
begin
        vNuevoSaldo := edNuevoSaldo.Value;
end;

end.
