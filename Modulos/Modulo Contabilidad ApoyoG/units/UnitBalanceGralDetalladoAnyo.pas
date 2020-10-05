unit UnitBalanceGralDetalladoAnyo;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, Mask, ComCtrls, ExtCtrls, DB, StrUtils,
  IBCustomDataSet, IBQuery, pr_Common, pr_TxClasses, IBSQL, UnitDmGeneral;

type
  TfrmBalanceGralDetalladoAnyo = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    EdCodigoInicial: TMaskEdit;
    EdCodigoFinal: TMaskEdit;
    Panel2: TPanel;
    CmdAceptar: TBitBtn;
    CmdCerrar: TBitBtn;
    CBNivel: TComboBox;
    IBQSaldoAct: TIBQuery;
    IBQTabla: TIBQuery;
    IBQuery1: TIBQuery;
    IBQPuc: TIBQuery;
    IBQSaldoActDEBITO: TIBBCDField;
    IBQSaldoActCREDITO: TIBBCDField;
    ChkPapelCarta: TCheckBox;
    ReportBalanceDet: TprTxReport;
    Reporte: TprTxReport;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure CmdCerrarClick(Sender: TObject);
    procedure CmdAceptarClick(Sender: TObject);

    procedure CBNivelExit(Sender: TObject);
    procedure EdCodigoInicialExit(Sender: TObject);
    procedure CBMesesKeyPress(Sender: TObject; var Key: Char);
    procedure CBNivelKeyPress(Sender: TObject; var Key: Char);
    procedure EdCodigoInicialKeyPress(Sender: TObject; var Key: Char);
    procedure EdCodigoFinalKeyPress(Sender: TObject; var Key: Char);
    procedure EdCodigoFinalExit(Sender: TObject);
    procedure EdAnoKeyPress(Sender: TObject; var Key: Char);

    procedure FormCreate(Sender: TObject);
  private
    function Empleado : String;
    procedure Inicializar;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmBalanceGralDetalladoAnyo: TfrmBalanceGralDetalladoAnyo;
  dmGeneral : TdmGeneral;
  Mes           : String;
  MesCorte      : String;
  NomMes        : String;
  Cadena        : String;
  CodigoInicial : String;
  Codigofinal   : String;
  Nivel         : Integer;
  AnoCorte      : Integer;
  NivelCodigo   : Integer;

implementation

uses  unitglobales, unitglobalescol, UnitPantallaProgreso, UnitVistaPreliminar;
{$R *.dfm}

procedure TfrmBalanceGralDetalladoAnyo.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
        if IBQPuc.Transaction.InTransaction then
          IBQPuc.Transaction.Commit;
        Action := caFree;
end;

procedure TfrmBalanceGralDetalladoAnyo.CmdCerrarClick(Sender: TObject);
begin
        Close;
end;

procedure TfrmBalanceGralDetalladoAnyo.CmdAceptarClick(Sender: TObject);
var
Tabla:String;
SaldoAnterior:Currency;
SumDebito,SumCredito:Currency;
frmProgreso:TfrmProgreso;
Total:Integer;
begin
       SaldoAnterior := 0;
       SumDebito := 0;
       SumCredito := 0;
       with IBQSaldoAct do
        Begin
          if Transaction.InTransaction then
             Transaction.Rollback;
          Transaction.StartTransaction;
          SQL.Clear;
          SQL.Add('select ');
          SQL.Add('SUM("con$saldoscuenta".DEBITO) AS DEBITO,');
          SQL.Add('SUM("con$saldoscuenta".CREDITO) AS CREDITO');
          SQL.Add(' from "con$puc" ');
          SQL.Add('LEFT JOIN "con$saldoscuenta" ON ("con$puc".CODIGO = "con$saldoscuenta".CODIGO and "con$puc".ID_AGENCIA = "con$saldoscuenta".ID_AGENCIA)');
          SQL.Add('where ');
          SQL.Add('("con$saldoscuenta".ID_AGENCIA = :ID_AGENCIA) and ("con$saldoscuenta".CODIGO = :"CODIGO") ');
//          SQL.Add(' and ("con$saldoscuenta".MES = :"MES")');
        end;
       Empleado;
       with IBQPuc do
        begin
          SQL.Clear;
          SQL.Add('select ');
          SQL.Add('Count(*) as TOTAL');
          SQL.Add(' from "con$puc" ');
          SQL.Add('where ');
          SQL.Add('("con$puc".ID_AGENCIA = :ID_AGENCIA) and ("con$puc".CODIGO >= :"CODIGO_INICIAL" and "con$puc".CODIGO <= :"CODIGO_FINAL") and');
          SQL.Add('("con$puc".NIVEL <= :"NIVEL")');
          ParamByName('ID_AGENCIA').AsInteger := Agencia;
          ParamByName('CODIGO_INICIAL').AsString := CodigoInicial;
          ParamByName('CODIGO_FINAL').AsString := CodigoFinal;
          ParamByName('NIVEL').AsInteger := Nivel;
          Open;
          Total := FieldByName('TOTAL').AsInteger;
        end;


       with IBQPuc do
        Begin
          SQL.Clear;
          SQL.Add('select ');
          SQL.Add('"con$puc".CODIGO,');
          SQL.Add('"con$puc".ID_AGENCIA,');
          SQL.Add('"con$puc".NOMBRE,');
          SQL.Add('"con$puc".NIVEL,');
          SQL.Add('"con$puc".SALDOINICIAL,');
          SQL.Add('"gen$agencia".DESCRIPCION_AGENCIA');
          SQL.Add(' from "con$puc" ');
          SQL.Add('LEFT JOIN "gen$agencia" ON ("con$puc".ID_AGENCIA = "gen$agencia".ID_AGENCIA)');
          SQL.Add('where ');
          SQL.Add('("con$puc".ID_AGENCIA = :ID_AGENCIA) and ("con$puc".CODIGO >= :"CODIGO_INICIAL" and "con$puc".CODIGO <= :"CODIGO_FINAL") and');
          SQL.Add('("con$puc".NIVEL <= :"NIVEL")');
          SQL.Add('order by "con$puc".CODIGO');

          ParamByName('ID_AGENCIA').AsInteger := Agencia;
          ParamByName('CODIGO_INICIAL').AsString := CodigoInicial;
          ParamByName('CODIGO_FINAL').AsString := CodigoFinal;
          ParamByName('NIVEL').AsInteger := Nivel;
          Open;
       end;

          IBQPuc.Last;
          IBQPuc.First;

          Tabla := '"BalanceDetAnyo' + FloatToStr(Now)+ '"';
           with IBQTabla do
            begin
              SQL.Clear;
              SQL.Add('create table ' + Tabla + ' (');
              SQL.Add('CODIGO              VARCHAR(18),');
              SQL.Add('NOMBRE              VARCHAR(100),');
              SQL.Add('NIVEL               INTEGER,');
              SQL.Add('DESCRIPCION_AGENCIA VARCHAR(50), ');
              SQL.Add('DEBITOANT           NUMERICO,');
              SQL.Add('CREDITOANT          NUMERICO,');
              SQL.Add('DEBITOMOV           NUMERICO,');
              SQL.Add('CREDITOMOV          NUMERICO)');
              ExecSQL;
              Transaction.CommitRetaining;
              Close;


              SQL.Clear;
              SQL.Add('insert into ' + Tabla + 'values(');
              SQL.Add(':"CODIGO",');
              SQL.Add(':"NOMBRE",');
              SQL.Add(':NIVEL,');
              SQL.Add(':DESCRIPCION_AGENCIA,');
              SQL.Add(':"DEBITOANT",');
              SQL.Add(':"CREDITOANT",');
              SQL.Add(':"DEBITOMOV",');
              SQL.Add(':"CREDITOMOV")');
              frmProgreso := TfrmProgreso.Create(Self);
              frmProgreso.Min := 0;
              frmProgreso.Max := Total;
              frmProgreso.Position := 0;
              frmProgreso.Info.Caption := 'Procesando Balance Detallado';
              frmProgreso.Ejecutar;
              While (not IBQPuc.Eof)  do
               begin
                 frmProgreso.Position := IBQPuc.RecNo;
                 frmProgreso.InfoLabel := 'Procesando Cuenta: ' + IBQPuc.FieldByName('CODIGO').AsString;
                 Application.ProcessMessages;
                 IBQSaldoAct.Close;
                 IBQSaldoAct.ParamByName('ID_AGENCIA').AsInteger := Agencia;
                 IBQSaldoAct.ParamByName('CODIGO').AsString  := IBQPuc.FieldByName('CODIGO').AsString;
                 //IBQSaldoAct.ParamByName('MES').AsInteger := StrToInt(Mes);
                 try
                  IBQSaldoAct.Open;
                 except
                  frmProgreso.Cerrar;
                  Transaction.Rollback;
                  raise;
                  Exit;
                 end;
                 ParamByName('CODIGO').AsString := LeftStr(IBQPuc.FieldByName('CODIGO').AsString,NivelCodigo);
                 ParamByName('NOMBRE').AsString := IBQPuc.FieldByName('NOMBRE').AsString;
                 ParamByName('NIVEL').AsInteger := IBQPuc.FieldByName('NIVEL').AsInteger;
                 ParamByName('DESCRIPCION_AGENCIA').AsString := IBQPuc.FieldByName('DESCRIPCION_AGENCIA').AsString;

                 IBQuery1.Close;
                 IBQuery1.SQL.Clear;
                 IBQuery1.SQL.Add('select ');
                 IBQuery1.SQL.Add('SUM("con$saldoscuenta".DEBITO) AS DEBITO,');
                 IBQuery1.SQL.Add('SUM("con$saldoscuenta".CREDITO) AS CREDITO');
                 IBQuery1.SQL.Add(' from "con$saldoscuenta" ');
                 IBQuery1.SQL.Add('where ');
                 IBQuery1.SQL.Add('("con$saldoscuenta".ID_AGENCIA = :ID_AGENCIA) and ("con$saldoscuenta".CODIGO = :"CODIGO")');
                 IBQuery1.SQL.Add(' and ("con$saldoscuenta".MES < :"MES")');
                 IBQuery1.ParamByName('ID_AGENCIA').AsInteger := Agencia;
                 IBQuery1.ParamByName('CODIGO').AsString := IBQPuc.FieldByName('CODIGO').AsString;
                 IBQuery1.ParamByName('MES').AsInteger := 1; //StrToInt(Mes);
                 try
                   IBQuery1.Open;
                   if IBQuery1.RecordCount > 0 then
                   begin
                      SumDebito := IBQuery1.FieldByName('DEBITO').AsCurrency;
                      SumCredito := IBQuery1.FieldByName('CREDITO').AsCurrency;
                   end
                   else
                   begin
                      SumDebito := 0;
                      SumCredito := 0;
                   end;
                 except
                      SumDebito := 0;
                      SumCredito := 0;
                 end;

                 SaldoAnterior := IBQPuc.FieldByName('SALDOINICIAL').AsCurrency + SumDebito - SumCredito;
                 if SaldoAnterior > 0 then
                  begin
                    ParamByName('DEBITOANT').AsCurrency := SaldoAnterior;
                    ParamByName('CREDITOANT').AsCurrency := 0;
                  end;
                 if SaldoAnterior < 0 then
                  begin
                    ParamByName('CREDITOANT').AsCurrency := SaldoAnterior * -1;
                    ParamByName('DEBITOANT').AsCurrency := 0;
                  end;
                 if SaldoAnterior = 0 then
                  begin
                    ParamByName('DEBITOANT').AsCurrency := 0;
                    ParamByName('CREDITOANT').AsCurrency := 0;
                  end;
                 ParamByName('DEBITOMOV').AsCurrency := IBQSaldoAct.FieldByName('DEBITO').AsCurrency;
                 ParamByName('CREDITOMOV').AsCurrency := IBQSaldoAct.FieldByName('CREDITO').AsCurrency;
                 ExecSql;
                 IBQPuc.Next;
                end;

              IBQPuc.Close;
              frmProgreso.Cerrar;
              
              SQL.Clear;
              SQL.Add('select ');
              SQL.Add('CODIGO,');
              SQL.Add('NOMBRE,');
              SQL.Add('NIVEL,');
              SQL.Add('DESCRIPCION_AGENCIA,');
              SQL.Add('DEBITOANT,');
              SQL.Add('CREDITOANT,');
              SQL.Add('DEBITOMOV,');
              SQL.Add('CREDITOMOV');
              SQL.Add('from ' + Tabla + ' ');
              SQL.Add('where ');
              SQL.Add('(CODIGO >= :"CODIGO_INICIAL" and CODIGO <= :"CODIGO_FINAL")');
              SQL.Add(' and ');
              SQL.Add('(DEBITOANT>0 or CREDITOANT>0 or');
              SQL.Add('DEBITOMOV>0 or CREDITOMOV>0)');

              ParamByName('CODIGO_INICIAL').AsString := CodigoInicial;
              ParamByName('CODIGO_FINAL').AsString := CodigoFinal;
              Open;
{              IBQTabla.Last;
              IBQTabla.First;
              IBQTabla.RecordCount;
}
              if ChkPapelCarta.Checked then
              begin
               Reporte.Variables.ByName['Empresa'].AsString := Empresa;
               Reporte.Variables.ByName['Nit'].AsString := Nit;
               Reporte.Variables.ByName['CodigoI'].AsString := LeftStr(CodigoInicial,NivelCodigo);
               Reporte.Variables.ByName['CodigoF'].AsString := LeftStr(CodigoFinal,NivelCodigo);
               Reporte.Variables.ByName['Hoy'].AsDateTime := Now;
               Reporte.Variables.ByName['Empleado'].AsString := Empleado;
               Reporte.Variables.ByName['Mes'].AsString := NomMes;
               Reporte.Variables.ByName['AnoCorte'].AsInteger := AnoCorte;

                  frmVistaPreliminar := TfrmVistaPreliminar.Create(Self);
                  frmVistaPreliminar.Reporte := Reporte;
                  frmVistaPreliminar.ShowModal;
              end
              else
              begin
               ReportBalanceDet.Variables.ByName['Empresa'].AsString := Empresa;
               ReportBalanceDet.Variables.ByName['Nit'].AsString := Nit;
               ReportBalanceDet.Variables.ByName['CodigoI'].AsString := LeftStr(CodigoInicial,NivelCodigo);
               ReportBalanceDet.Variables.ByName['CodigoF'].AsString := LeftStr(CodigoFinal,NivelCodigo);
               ReportBalanceDet.Variables.ByName['Hoy'].AsDateTime := Now;
               ReportBalanceDet.Variables.ByName['Empleado'].AsString := Empleado;
               ReportBalanceDet.Variables.ByName['Mes'].AsString := NomMes;
               ReportBalanceDet.Variables.ByName['AnoCorte'].AsInteger := AnoCorte;

                  frmVistaPreliminar := TfrmVistaPreliminar.Create(Self);
                  frmVistaPreliminar.Reporte := ReportBalanceDet;
                  frmVistaPreliminar.ShowModal;
              end;
              IBQTabla.Close;

              Transaction.Commit;
              With IBQTabla do
              begin
              Transaction.StartTransaction;
              Close;
              SQL.Clear;
              SQL.Add('drop table ' + Tabla);
              ExecSQL;
              IBQTabla.Close;
              Transaction.Commit;
              end;

            end; // Fin With IBQTabla

end;


procedure TfrmBalanceGralDetalladoAnyo.CBNivelExit(Sender: TObject);
begin
        With CBNivel do
         case ItemIndex of
           0: begin
                Nivel := 1;
                NivelCodigo := 1;
              end;
           1: begin
                Nivel := 2;
                NivelCodigo := 2;
              end;
           2: begin
                Nivel := 3;
                NivelCodigo := 4;
              end;
           3..10: begin
                Nivel := ItemIndex + 1;
                NivelCodigo := ItemIndex * 2;
              end;
         end;
end;

procedure TfrmBalanceGralDetalladoAnyo.EdCodigoInicialExit(Sender: TObject);
begin
        Cadena := EdCodigoInicial.Text;
        while Pos(' ',Cadena) > 0 do
        Cadena[Pos(' ',Cadena)] := '0';
        CodigoInicial := Cadena;
end;

procedure TfrmBalanceGralDetalladoAnyo.CBMesesKeyPress(Sender: TObject;
  var Key: Char);
begin
        EnterTabs(Key,Self);
end;

procedure TfrmBalanceGralDetalladoAnyo.CBNivelKeyPress(Sender: TObject;
  var Key: Char);
begin
        EnterTabs(Key,Self);
end;

procedure TfrmBalanceGralDetalladoAnyo.EdCodigoInicialKeyPress(Sender: TObject;
  var Key: Char);
begin
        EnterTabs(Key,Self);
end;

procedure TfrmBalanceGralDetalladoAnyo.EdCodigoFinalKeyPress(Sender: TObject;
  var Key: Char);
begin
        EnterTabs(Key,Self);
end;

procedure TfrmBalanceGralDetalladoAnyo.EdCodigoFinalExit(Sender: TObject);
begin
        Cadena := EdCodigoFinal.Text;
        while Pos(' ',Cadena) > 0 do
        Cadena[Pos(' ',Cadena)] := '0';
        CodigoFinal := Cadena;
end;

procedure TfrmBalanceGralDetalladoAnyo.EdAnoKeyPress(Sender: TObject;
  var Key: Char);
begin
        EnterTabs(Key,Self);
end;



function TfrmBalanceGralDetalladoAnyo.Empleado;
begin
        with IBQuery1 do
         begin
           sql.Clear;
           sql.Add('select PRIMER_APELLIDO, SEGUNDO_APELLIDO, NOMBRE from "gen$empleado"');
           sql.Add('where "gen$empleado"."ID_EMPLEADO" =:"ID_EMPLEADO"');
           ParamByName('ID_EMPLEADO').AsString := DBAlias;
           Open;
           Result := FieldByName('NOMBRE').AsString + ' ' + FieldByname('PRIMER_APELLIDO').AsString + ' ' + FieldByName('SEGUNDO_APELLIDO').AsString;
         end;
end;

procedure TfrmBalanceGralDetalladoAnyo.FormCreate(Sender: TObject);
begin
        dmGeneral := TdmGeneral.Create(self);
        dmGeneral.getConnected;
        IBQSaldoAct.Database := dmGeneral.IBDatabase1;
        IBQTabla.Database := dmGeneral.IBDatabase1;
        IBQuery1.Database := dmGeneral.IBDatabase1;
        IBQPuc.Database := dmGeneral.IBDatabase1;

        IBQSaldoAct.Transaction := dmGeneral.IBTransaction1;
        IBQTabla.Transaction := dmGeneral.IBTransaction1;
        IBQuery1.Transaction := dmGeneral.IBTransaction1;
        IBQPuc.Transaction := dmGeneral.IBTransaction1;

  Inicializar;
end;

procedure TfrmBalanceGralDetalladoAnyo.Inicializar;
begin
      with IBQPuc do begin
        if Transaction.InTransaction then
           Transaction.Rollback;
        Transaction.StartTransaction;
      end;

end;

end.

