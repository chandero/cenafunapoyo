unit UnitReporteCambioEstadoColocacion;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, ExtCtrls, DB, IBCustomDataSet, IBQuery,
  pr_Common, pr_TxClasses, DBCtrls, ComCtrls, IBSQL, pr_Parser, UnitDmGeneral;

type
  TfrmReporteCambioEstadoColocacion = class(TForm)
    Panel1: TPanel;
    cmdProcesar: TBitBtn;
    cmdCerrar: TBitBtn;
    IBQuery: TIBQuery;
    GroupBox1: TGroupBox;
    EdFechaInicial: TDateTimePicker;
    EdFechaFinal: TDateTimePicker;
    Label1: TLabel;
    Label2: TLabel;
    IBSQL1: TIBSQL;
    Reporte: TprTxReport;
    procedure cmdCerrarClick(Sender: TObject);
    procedure cmdProcesarClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure ReporteUnknownVariable(Sender: TObject;
      const VarName: String; var Value: TprVarValue;
      var IsProcessed: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmReporteCambioEstadoColocacion: TfrmReporteCambioEstadoColocacion;
  dmGeneral: TdmGeneral;
implementation

{$R *.dfm}

uses UnitGlobales;

procedure TfrmReporteCambioEstadoColocacion.cmdCerrarClick(Sender: TObject);
begin
        Close;
end;

procedure TfrmReporteCambioEstadoColocacion.cmdProcesarClick(Sender: TObject);
begin
      with IBQuery do begin
        Close;
        SQL.Clear;
        SQL.Add('SELECT');
        SQL.Add('cce.ID_AGENCIA,');
        SQL.Add('cce.ID_COLOCACION,');
        SQL.Add('cce.FECHA_CAMBIO,');
        SQL.Add('cce.ID_ESTADO_ACTUAL,');
        SQL.Add('cce.ID_ESTADO_NUEVO,');
        SQL.Add('cce.SALDO,');
        SQL.Add('cce.FECHA_CAPITAL,');
        SQL.Add('cce.FECHA_INTERES,');
        SQL.Add('gp.NOMBRE,');
        SQL.Add('gp.PRIMER_APELLIDO,');
        SQL.Add('gp.SEGUNDO_APELLIDO,');
        SQL.Add('gp.PRIMER_APELLIDO,');
        SQL.Add('gp.SEGUNDO_APELLIDO,');
        SQL.Add('gp.NOMBRE,');
        SQL.Add('cc.ID_PERSONA,');
        SQL.Add('cc.ID_IDENTIFICACION');
        SQL.Add('FROM "col$cambioestado" cce');
        SQL.Add('INNER JOIN "col$colocacion" cc ON (cce.ID_AGENCIA=cc.ID_AGENCIA)');
        SQL.Add('AND (cce.ID_COLOCACION=cc.ID_COLOCACION)');
        SQL.Add('INNER JOIN "gen$persona" gp ON (cc.ID_IDENTIFICACION=gp.ID_IDENTIFICACION)');
        SQL.Add('AND (cc.ID_PERSONA=gp.ID_PERSONA)');
        SQL.Add('INNER JOIN "gen$empleado" ge ON (cce.ID_EMPLEADO=ge.ID_EMPLEADO)');
        SQL.Add('INNER JOIN "col$estado" ce1 ON (cce.ID_ESTADO_ACTUAL=ce1.ID_ESTADO_COLOCACION)');
        SQL.Add('INNER JOIN "col$estado" ce2 ON (cce.ID_ESTADO_NUEVO=ce2.ID_ESTADO_COLOCACION)');
        SQL.Add('where');
        SQL.Add('(cce.FECHA_CAMBIO BETWEEN :FECHA1 AND :FECHA2)');
        SQL.Add('order by cce.FECHA_CAMBIO, cce.ID_COLOCACION');
        ParamByName('FECHA1').AsDate := EdFechaInicial.Date;
        ParamByName('FECHA2').AsDate := EdFechaFinal.Date;
        Open;
      end;

      Reporte.Variables.ByName['FechaI'].AsDateTime  := EdFechaInicial.Date;
      Reporte.Variables.ByName['FechaF'].AsDateTime := EdFechaFinal.Date;
      if Reporte.PrepareReport then
        Reporte.PreviewPreparedReport(True);
end;

procedure TfrmReporteCambioEstadoColocacion.FormCreate(Sender: TObject);
begin
        dmGeneral := TdmGeneral.Create(self);
        dmGeneral.getConnected;
        IBQuery.Database := dmGeneral.IBDatabase1;
        IBQuery.Transaction := dmGeneral.IBTransaction1;
        with IBQuery do
        begin
         if Transaction.InTransaction then
           Transaction.Rollback;
         Transaction.StartTransaction;
        end;

end;

procedure TfrmReporteCambioEstadoColocacion.FormShow(Sender: TObject);
begin
        EdFechaInicial.Date := fFechaActual;
        EdFechaFinal.Date := fFechaActual;
end;

procedure TfrmReporteCambioEstadoColocacion.FormKeyPress(Sender: TObject;
  var Key: Char);
begin
        EnterTabs(Key,Self);
end;

procedure TfrmReporteCambioEstadoColocacion.ReporteUnknownVariable(
  Sender: TObject; const VarName: String; var Value: TprVarValue;
  var IsProcessed: Boolean);
begin
        if VarName = 'ESTADOA' then begin
                IBSQL1.Close;
                IBSQL1.SQL.Clear;
                IBSQL1.SQL.Add('SELECT DESCRIPCION_ESTADO_COLOCACION FROM "col$estado" where ID_ESTADO_COLOCACION = :ID');
                IBSQL1.ParamByName('ID').AsInteger := IBQuery.FieldByName('ID_ESTADO_ACTUAL').AsInteger;
                IBSQL1.ExecQuery;
                _vSetAsstring(Value,IBSQL1.FieldByName('DESCRIPCION_ESTADO_COLOCACION').AsString);
                IsProcessed := True;
        end;

        if VarName = 'ESTADON' then begin
                IBSQL1.Close;
                IBSQL1.SQL.Clear;
                IBSQL1.SQL.Add('SELECT DESCRIPCION_ESTADO_COLOCACION FROM "col$estado" where ID_ESTADO_COLOCACION = :ID');
                IBSQL1.ParamByName('ID').AsInteger := IBQuery.FieldByName('ID_ESTADO_NUEVO').AsInteger;
                IBSQL1.ExecQuery;
                _vSetAsstring(Value,IBSQL1.FieldByName('DESCRIPCION_ESTADO_COLOCACION').AsString);
                IsProcessed := True;
        end;
end;

end.
