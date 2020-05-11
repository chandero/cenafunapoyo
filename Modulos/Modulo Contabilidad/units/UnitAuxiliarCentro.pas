unit UnitAuxiliarCentro;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms, DateUtils,
  Dialogs, StdCtrls, Buttons, DBCtrls, ExtCtrls, Mask, ComCtrls, FR_Class, DataSetToExcel,
  frOLEExl, pr_Common, pr_TxClasses, IBSQL, FR_DSet, FR_DBSet,
  IBCustomDataSet, IBQuery, DB, DBClient, UnitDmGeneral;

type
  TfrmAuxiliarCentro = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    EdFechaInicial: TDateTimePicker;
    EdFechaFinal: TDateTimePicker;
    EdCodigoInicial: TMaskEdit;
    EdCodigoFinal: TMaskEdit;
    EdCtaI: TStaticText;
    EdCtaF: TStaticText;
    RGTipo: TRadioGroup;
    GBDocumento: TGroupBox;
    CBtiposid: TDBLookupComboBox;
    EdNumeroIdentificacion: TMemo;
    Panel2: TPanel;
    CmdAceptar: TBitBtn;
    CmdCerrar: TBitBtn;
    btnReporte: TBitBtn;
    btnAExcel: TBitBtn;
    DSmaster: TDataSource;
    CDSauxiliar: TClientDataSet;
    CDSauxiliarFECHA: TDateField;
    CDSauxiliarTIPO: TStringField;
    CDSauxiliarNUMERO: TIntegerField;
    CDSauxiliarCODIGO: TStringField;
    CDSauxiliarNOMBREPUC: TStringField;
    CDSauxiliarCHEQUE: TStringField;
    CDSauxiliarDESCRIPCION: TStringField;
    CDSauxiliarSALDO_ANTERIOR: TCurrencyField;
    CDSauxiliarDEBITO: TCurrencyField;
    CDSauxiliarCREDITO: TCurrencyField;
    CDSauxiliarSALDO_ACTUAL: TCurrencyField;
    CDSauxiliarDOCUMENTO: TStringField;
    CDSauxiliarNOMBRE: TStringField;
    CDSauxiliarID: TIntegerField;
    CDSauxiliarMONTO_BASE: TCurrencyField;
    CDSauxiliarext: TClientDataSet;
    CDSauxiliarextID: TIntegerField;
    CDSauxiliarextDOCUMENTO: TStringField;
    CDSauxiliarextNOMBRE: TStringField;
    IBQPuc: TIBQuery;
    IBQsaldoanterior: TIBQuery;
    IBQmovimiento: TIBQuery;
    frDSauxiliar: TfrDBDataSet;
    frDSauxiliarext: TfrDBDataSet;
    IBSQL1: TIBSQL;
    IBQtipodocumento: TIBQuery;
    DStiposdocumento: TDataSource;
    prTxReport1: TprTxReport;
    frOLEExcelExport1: TfrOLEExcelExport;
    frReport1: TfrReport;
    SD1: TSaveDialog;
    GroupBox1: TGroupBox;
    edCentro: TDBLookupComboBox;
    IBQagencia: TIBQuery;
    DSagencia: TDataSource;
    IBQsaldoinicial: TIBQuery;
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure CmdAceptarClick(Sender: TObject);
    procedure CmdCerrarClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btnReporteClick(Sender: TObject);
    procedure btnAExcelClick(Sender: TObject);
    procedure EdCodigoInicialExit(Sender: TObject);
    procedure EdCodigoFinalExit(Sender: TObject);
    procedure EdCodigoInicialKeyPress(Sender: TObject; var Key: Char);
    procedure EdCodigoFinalKeyPress(Sender: TObject; var Key: Char);
    procedure EdFechaInicialKeyPress(Sender: TObject; var Key: Char);
    procedure EdFechaFinalKeyPress(Sender: TObject; var Key: Char);
    procedure CBtiposidKeyPress(Sender: TObject; var Key: Char);
    procedure EdNumeroIdentificacionKeyPress(Sender: TObject;
      var Key: Char);
  private
    { Private declarations }
    procedure Inicializar;    
  public
    { Public declarations }
  end;

var
  frmAuxiliarCentro: TfrmAuxiliarCentro;
  dmGeneral: TdmGeneral;
  CodigoInicial, CodigoFinal:String;

implementation

{$R *.dfm}

uses UnitGlobales;

procedure TfrmAuxiliarCentro.FormCreate(Sender: TObject);
begin
        dmGeneral := TdmGeneral.Create(nil);
        dmGeneral.getConnected;

        IBQpuc.Database := dmGeneral.IBDatabase1;
        IBQpuc.Transaction := dmGeneral.IBTransaction1;

        IBQagencia.Database := dmGeneral.IBDatabase1;
        IBQagencia.Transaction := dmGeneral.IBTransaction1;

        IBQsaldoinicial.Database := dmGeneral.IBDatabase1;
        IBQsaldoinicial.Transaction := dmGeneral.IBTransaction1;

        IBQsaldoanterior.Database := dmGeneral.IBDatabase1;
        IBQsaldoanterior.Transaction := dmGeneral.IBTransaction1;

        IBQmovimiento.Database := dmGeneral.IBDatabase1;
        IBQmovimiento.Transaction := dmGeneral.IBTransaction1;

        IBQtipodocumento.Database := dmGeneral.IBDatabase1;
        IBQtipodocumento.Transaction := dmGeneral.IBTransaction1;

        IBSQL1.Database := dmGeneral.IBDatabase1;
        IBSQL1.Transaction := dmGeneral.IBTransaction1;
end;

procedure TfrmAuxiliarCentro.FormShow(Sender: TObject);
begin
        Inicializar;
end;

procedure TfrmAuxiliarCentro.Inicializar;
begin
       if dmGeneral.IBTransaction1.InTransaction then
          dmGeneral.IBTransaction1.Commit;

       dmGeneral.IBTransaction1.StartTransaction;

       IBQtipodocumento.Open;
       IBQtipodocumento.Last;

       IBQagencia.Open;
       IBQagencia.Last;

       CDSauxiliar.Open;
       CDSauxiliar.EmptyDataSet;

        edCentro.KeyValue := 1;    
end;

procedure TfrmAuxiliarCentro.CmdAceptarClick(Sender: TObject);
var
  FechaInicialSaldoInicial, FechaFinalSaldoInicial:TDate;
  FechaInicialMov, FechaFinalMov: TDate;
  SaldoAnterior,
  DebitoMov,CreditoMov,SaldoActual:Currency;
  Consec: Integer;
begin
        CmdAceptar.Enabled := False;
        Consec := 0;
        // Calcular fechas para saldo anterior
        if ( (MonthOf(EdFechaInicial.Date) = 1) and (DayOf(EdFechaInicial.Date) = 1)) then
        begin
           FechaInicialSaldoInicial := 0;
           FechaFinalSaldoInicial := 0;
        end
        else
        begin
           FechaInicialSaldoInicial := EncodeDate(DBAnho,01,01);
           FechaFinalSaldoInicial := Int(IncDay(EdFechaInicial.Date, -1));
           IBQsaldoanterior.ParamByName('FECHA_INICIAL').AsDate := FechaInicialSaldoInicial;
           IBQsaldoanterior.ParamByName('FECHA_FINAL').AsDate := FechaFinalSaldoInicial;
           IBQsaldoanterior.ParamByName('ESTADO').AsString := 'N'; 
        end;

        FechaInicialMov := EdFechaInicial.Date;
        FechaFinalMov := EdFechaFinal.Date;


        // Leer el rango de codigos
        IBQpuc.Close;
        IBQpuc.SQL.Clear;
        IBQpuc.SQL.Add('SELECT * FROM "con$puc" p WHERE p.CODIGO >= :CODIGO_INI and p.CODIGO <= :CODIGO_FIN');
        IBQpuc.SQL.Add('and p.MOVIMIENTO = 1');
        IBQpuc.SQL.Add('ORDER BY p.CODIGO ASC');
        IBQpuc.ParamByName('CODIGO_INI').AsString := CodigoInicial;
        IBQpuc.ParamByName('CODIGO_FIN').AsString := CodigoFinal;
        IBQpuc.Open;

        IBQmovimiento.Close;
        IBQmovimiento.SQL.Clear;
        IBQmovimiento.SQL.Add('SELECT');
        IBQmovimiento.SQL.Add('t.ABREVIATURA,');
        IBQmovimiento.SQL.Add('a.ID_COMPROBANTE,');
        IBQmovimiento.SQL.Add('a.FECHA,');
        IBQmovimiento.SQL.Add('a.CODIGO,');
        IBQmovimiento.SQL.Add('m.NOMBRE AS NOMBREPUC,');
        IBQmovimiento.SQL.Add('ae.DETALLE,');
        IBQmovimiento.SQL.Add('c.DESCRIPCION,');
        IBQmovimiento.SQL.Add('a.DEBITO,');
        IBQmovimiento.SQL.Add('a.CREDITO,');
        IBQmovimiento.SQL.Add('ae.CHEQUE,');
        IBQmovimiento.SQL.Add('a.MONTO_RETENCION,');
        IBQmovimiento.SQL.Add('a.ID_PERSONA,');
        IBQmovimiento.SQL.Add('p.PRIMER_APELLIDO,');
        IBQmovimiento.SQL.Add('p.SEGUNDO_APELLIDO,');
        IBQmovimiento.SQL.Add('p.NOMBRE FROM "con$comprobante" c');
        IBQmovimiento.SQL.Add('INNER JOIN "con$tipocomprobante" t ON c.TIPO_COMPROBANTE = t.ID');
        IBQmovimiento.SQL.Add('INNER JOIN "con$auxiliar" a ON a.TIPO_COMPROBANTE = c.TIPO_COMPROBANTE and a.ID_COMPROBANTE = c.ID_COMPROBANTE');
        IBQmovimiento.SQL.Add('LEFT JOIN "con$auxiliarext" ae ON a.ID = ae.ID');
        IBQmovimiento.SQL.Add('LEFT JOIN "con$puc" m ON a.CODIGO = m.CODIGO');
        IBQmovimiento.SQL.Add('LEFT JOIN "gen$persona" p ON p.ID_IDENTIFICACION = a.ID_IDENTIFICACION and p.ID_PERSONA = a.ID_PERSONA');
        IBQmovimiento.SQL.Add('WHERE c.ESTADO <> :ESTADO and a.FECHA BETWEEN :FECHA_INICIAL and :FECHA_FINAL and a.CODIGO = :CODIGO and a.ID_AGENCIA = :ID_AGENCIA');
        if ((not VarIsNull(CBtiposid.KeyValue)) and (EdNumeroIdentificacion.Text <> '')) then
        begin
            IBQmovimiento.SQL.Add('and a.ID_IDENTIFICACION = :ID_IDENTIFICACION ');
        end;
        if ((EdNumeroIdentificacion.Text <> '')) then
        begin
            IBQmovimiento.SQL.Add(' and a.ID_PERSONA = :ID_PERSONA');
        end;
        IBQmovimiento.SQL.Add('ORDER BY a.CODIGO ASC,   a.FECHA ASC');
                // Crear query de movimientos
        IBQmovimiento.ParamByName('FECHA_INICIAL').AsDate := EdFechaInicial.Date;
        IBQmovimiento.ParamByName('FECHA_FINAL').AsDate := EdFechaFinal.Date;
        IBQmovimiento.ParamByName('ESTADO').AsString := 'N';
        IBQmovimiento.ParamByName('ID_AGENCIA').AsInteger := edCentro.KeyValue;
        if ((not VarIsNull(CBtiposid.KeyValue)) and (EdNumeroIdentificacion.Text <> '')) then
        begin
            IBQmovimiento.ParamByName('ID_IDENTIFICACION').AsInteger := CBtiposid.KeyValue;
            IBQmovimiento.ParamByName('ID_PERSONA').AsString := EdNumeroIdentificacion.Text;
        end;

        CDSauxiliar.EmptyDataSet;
        CDSauxiliarext.EmptyDataSet;

        if IBQPuc.RecordCount > 0 then
        begin

            while not IBQPuc.Eof do
            begin
                   SaldoAnterior := 0;
                   DebitoMov := 0;
                   CreditoMov := 0;
                   SaldoActual := 0;
                  //Buscar Saldo Inicial del Código.
                  IBQsaldoinicial.Close;
                  IBQsaldoinicial.ParamByName('CODIGO').AsString := IBQPuc.FieldByName('CODIGO').AsString;
                  IBQsaldoinicial.ParamByName('ID_AGENCIA').AsInteger := edCentro.KeyValue;
                  IBQsaldoinicial.Open;
                  SaldoAnterior := IBQsaldoinicial.FieldByName('SALDOINICIAL').AsCurrency;
                  if (FechaFinalSaldoInicial > 0) then
                  begin
                     IBQsaldoanterior.Close;
                     IBQsaldoanterior.ParamByName('CODIGO').AsString := IBQPuc.FieldByName('CODIGO').AsString;
                     IBQsaldoanterior.ParamByName('ID_AGENCIA').AsInteger := edCentro.KeyValue;
                     IBQsaldoanterior.Open;
                     if (not VarIsNull(IBQsaldoanterior.FieldByName('DEBITO').Value)) then
                     begin
                         DebitoMov := IBQsaldoanterior.FieldByName('DEBITO').AsCurrency;
                     end
                     else
                     begin
                         DebitoMov := 0;
                     end;
                     if (not VarIsNull(IBQsaldoanterior.FieldByName('CREDITO').Value)) then
                     begin
                         CreditoMov := IBQsaldoanterior.FieldByName('CREDITO').AsCurrency;
                     end
                     else
                     begin
                         CreditoMov := 0;
                     end;
                  end;
                  SaldoAnterior := SaldoAnterior + DebitoMov - CreditoMov;
                  IBQmovimiento.Close;
                  IBQmovimiento.ParamByName('CODIGO').AsString := IBQpuc.FieldByName('CODIGO').AsString;
                  IBQmovimiento.ParamByName('ID_AGENCIA').AsInteger := edCentro.KeyValue;
                  IBQmovimiento.Open;
                  while not IBQmovimiento.Eof do
                  begin
                     CDSauxiliar.Append;
                     CDSauxiliarFECHA.Value := IBQmovimiento.FieldByName('FECHA').AsDateTime;
                     CDSauxiliarTIPO.Value := IBQmovimiento.FieldByName('ABREVIATURA').AsString;
                     CDSauxiliarNUMERO.Value := IBQmovimiento.FieldByName('ID_COMPROBANTE').AsInteger;
                     CDSauxiliarCODIGO.Value := IBQmovimiento.FieldByName('CODIGO').AsString;
                     CDSauxiliarNOMBREPUC.Value := IBQmovimiento.FieldByName('NOMBREPUC').AsString;
                     CDSauxiliarDOCUMENTO.Value := IBQmovimiento.FieldByName('ID_PERSONA').AsString;
                     CDSauxiliarNOMBRE.Value := IBQmovimiento.FieldByName('NOMBRE').AsString  + ' ' +  IBQmovimiento.FieldByName('PRIMER_APELLIDO').AsString + ' ' +  IBQmovimiento.FieldByName('SEGUNDO_APELLIDO').AsString;
                     if ( (Trim(IBQmovimiento.FieldByName('DETALLE').AsString) = '') or (VarIsNull(IBQmovimiento.FieldByName('DETALLE').AsString))) then
                     begin
                         CDSauxiliarDESCRIPCION.Value := IBQmovimiento.FieldByName('DESCRIPCION').AsString;
                     end
                     else
                     begin
                         CDSauxiliarDESCRIPCION.Value := IBQmovimiento.FieldByName('DETALLE').AsString;
                     end;
                     CDSauxiliarCHEQUE.Value := IBQmovimiento.FieldByName('CHEQUE').AsString;
                     if (not VarIsNull(IBQmovimiento.FieldByName('DEBITO').Value)) then
                     begin
                         DebitoMov := IBQmovimiento.FieldByName('DEBITO').AsCurrency;
                     end
                     else
                     begin
                         DebitoMov := 0;
                     end;

                     if (not VarIsNull(IBQmovimiento.FieldByName('CREDITO').Value)) then
                     begin
                         CreditoMov := IBQmovimiento.FieldByName('CREDITO').AsCurrency;
                     end
                     else
                     begin
                         CreditoMov := 0;
                     end;
                     CDSauxiliarSALDO_ANTERIOR.Value := SaldoAnterior;
                     CDSauxiliarDEBITO.Value := DebitoMov;
                     CDSauxiliarCREDITO.Value := CreditoMov;
                     SaldoActual := SaldoAnterior + DebitoMov - CreditoMov;
                     SaldoAnterior := SaldoActual;
                     CDSauxiliarSALDO_ACTUAL.Value := SaldoActual;
                     Consec := Consec + 1;
                     CDSauxiliarID.Value := Consec;
                     CDSauxiliarMONTO_BASE.Value := IBQmovimiento.FieldByName('MONTO_RETENCION').AsCurrency;

                     CDSauxiliarext.Append;
                     CDSauxiliarextID.Value := Consec;
                     CDSauxiliarextDOCUMENTO.Value := IBQmovimiento.FieldByName('ID_PERSONA').AsString;
                     CDSauxiliarextNOMBRE.Value := IBQmovimiento.FieldByName('NOMBRE').AsString + ' ' + IBQmovimiento.FieldByName('PRIMER_APELLIDO').AsString + ' ' + IBQmovimiento.FieldByName('SEGUNDO_APELLIDO').AsString;
                     CDSauxiliarext.Post;

                     CDSauxiliar.Post;
                     IBQmovimiento.Next;
                  end;
                  IBQpuc.Next;
            end; //  fin del while not IBQPuc.Eof
            CDSauxiliar.First;
        end; // fin del if IBQPuc.RecordCount > 0

        btnReporte.Enabled := True;
        btnAExcel.Enabled := True;
end;

procedure TfrmAuxiliarCentro.CmdCerrarClick(Sender: TObject);
begin
        Close;
end;

procedure TfrmAuxiliarCentro.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
      dmGeneral.Free;
end;

procedure TfrmAuxiliarCentro.btnReporteClick(Sender: TObject);
begin
                CDSauxiliar.Filtered := False;
                CDSauxiliar.First;
                
                frReport1.LoadFromFile('ReportesCon\frAuxiliar.frf');
                frReport1.Dictionary.Variables['EMPRESA'] := QuotedStr(Empresa);
                frReport1.Dictionary.Variables['NIT'] := QuotedStr(nit);
                frReport1.Dictionary.Variables['CODIGOINICIAL'] := QuotedStr(CodigoInicial);
                frReport1.Dictionary.Variables['CODIGOFINAL'] := QuotedStr(CodigoFinal);
                frReport1.Dictionary.Variables['FECHAINICIAL'] := EdFechaInicial.Date;
                frReport1.Dictionary.Variables['FECHAFINAL'] := EdFechaFinal.Date;
                frReport1.Dictionary.Variables['CENTRO'] := QuotedStr(edCentro.Text);

                if frReport1.PrepareReport then
                   frReport1.ShowPreparedReport;

end;

procedure TfrmAuxiliarCentro.btnAExcelClick(Sender: TObject);
var
   ExcelFile : TDataSetToExcel;
begin
          SD1.Title := 'Nombre Para El Archivo de Balance';
          if (SD1.Execute) then
          begin
           CDSauxiliar.Filtered := False;
           CDSauxiliar.First;
           ExcelFile := TDataSetToExcel.Create(CDSauxiliar,SD1.FileName);
           ExcelFile.WriteFile;
           ExcelFile.Free;
          end;
end;

procedure TfrmAuxiliarCentro.EdCodigoInicialExit(Sender: TObject);
var
  Cadena: String;
begin
        Cadena := EdCodigoInicial.Text;
        while Pos(' ',Cadena) > 0 do
        Cadena[Pos(' ',Cadena)] := '0';
        CodigoInicial := Cadena;
        with IBSQL1 do begin
         Close;
         ParamByName('CODIGO').AsString := CodigoInicial;
         ExecQuery;
         if RecordCount > 0 then
            EdCtaI.Caption := FieldByName('NOMBRE').AsString
         else
            EdCtaI.Caption := 'NO SE ENCONTRO CODIGO';
        end;
end;

procedure TfrmAuxiliarCentro.EdCodigoFinalExit(Sender: TObject);
var
  Cadena: String;
begin
        Cadena := EdCodigoFinal.Text;
        while Pos(' ',Cadena) > 0 do
        Cadena[Pos(' ',Cadena)] := '0';
        CodigoFinal := Cadena;
        with IBSQL1 do begin
         Close;
         ParamByName('CODIGO').AsString := CodigoFinal;
         ExecQuery;
         if RecordCount > 0 then
            EdCtaF.Caption := FieldByName('NOMBRE').AsString
         else
            EdCtaF.Caption := 'NO SE ENCONTRO CODIGO';
        end;
end;

procedure TfrmAuxiliarCentro.EdCodigoInicialKeyPress(Sender: TObject;
  var Key: Char);
begin
        EnterTabs(Key, Self);
end;

procedure TfrmAuxiliarCentro.EdCodigoFinalKeyPress(Sender: TObject;
  var Key: Char);
begin
        EnterTabs(Key, Self);
end;

procedure TfrmAuxiliarCentro.EdFechaInicialKeyPress(Sender: TObject;
  var Key: Char);
begin
        EnterTabs(Key, Self);
end;

procedure TfrmAuxiliarCentro.EdFechaFinalKeyPress(Sender: TObject;
  var Key: Char);
begin
        EnterTabs(Key, Self);
end;

procedure TfrmAuxiliarCentro.CBtiposidKeyPress(Sender: TObject;
  var Key: Char);
begin
        EnterTabs(Key, Self);
end;

procedure TfrmAuxiliarCentro.EdNumeroIdentificacionKeyPress(
  Sender: TObject; var Key: Char);
begin
        EnterTabs(Key, Self);
end;

end.
