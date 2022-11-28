
Unit UnitCausacionCarteraDiaria;

Interface

Uses 
Windows, Messages, StrUtils, SysUtils, Math, DateUtils, Variants, Classes, Graphics, Controls, Forms, DataSetToExcel,
Dialogs, StdCtrls, ExtCtrls, IB, IBSQL, DB, IBCustomDataSet, IBQuery,
ComCtrls, Grids, DBGrids, XStringGrid, Buttons, UnitDmGeneral,
pr_Common, pr_TxClasses, IBDatabase, DBClient, Provider, IBStoredProc,
frxClass, frxDBSet;

Type 
  TfrmCausacionCarteraDiaria = Class(TForm)
    Panel2: TPanel;
    Panel3: TPanel;
    RGProceso: TRadioGroup;
    Label1: TLabel;
    EdFechaCorte: TDateTimePicker;
    IBSQL1: TIBSQL;
    CmdCerrar: TBitBtn;
    EdCapital: TMaskEditCellEditor;
    EdInteres: TMaskEditCellEditor;
    EdCostas: TMaskEditCellEditor;
    CmdProcesar: TBitBtn;
    IBSQL2: TIBSQL;
    IBSQL3: TIBSQL;
    IBSQL4: TIBSQL;
    IBQuery1: TIBQuery;
    IBQVarios: TIBQuery;
    CmdImprimir: TBitBtn;
    CmdAplicar: TBitBtn;
    CmdComprobante: TBitBtn;
    IBQuery2: TIBQuery;
    IBTAdicional: TIBTransaction;
    CmdImprimirProvision: TBitBtn;
    Label2: TLabel;
    EdComprobante: TStaticText;
    IBAuxiliar: TIBQuery;
    ReporteCom: TprTxReport;
    IBSQL5: TIBSQL;
    IBTAlterna: TIBTransaction;
    IBQuery3: TIBQuery;
    IBSQL6: TIBSQL;
    IBSQL7: TIBSQL;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    Panel1: TPanel;
    GroupBox1: TGroupBox;
    GridP: TXStringGrid;
    TabSheet2: TTabSheet;
    XSauxiliar: TXStringGrid;
    Panel4: TPanel;
    Label6: TLabel;
    Label7: TLabel;
    Edittotaldebito: TMemo;
    Edittotalcredito: TMemo;
    IBSQL8: TIBSQL;
    IBSQL9: TIBSQL;
    IBQuery4: TIBQuery;
    ReporteDN: TprTxReport;
    IBQuery5: TIBQuery;
    CDReal: TClientDataSet;
    IBQReal: TIBQuery;
    DPReal: TDataSetProvider;
    IBSQL10: TIBSQL;
    IBActualizaGarReal: TIBSQL;
    IBTransaction1: TIBTransaction;
    CDReal1: TClientDataSet;
    IBSQL11: TIBSQL;
    IBQRealAct: TIBQuery;
    ReporteD: TprTxReport;
    Button1: TButton;
    Reporte: TprTxReport;
    IBSQLAux: TIBSQL;
    IBTransaction2: TIBTransaction;
    frxReportProvision: TfrxReport;
    frxDBDataset1: TfrxDBDataset;
    SD1: TSaveDialog;
    btnRecalcular: TBitBtn;
    btnReNota: TBitBtn;
    btnRecProvision: TBitBtn;
    IBSQL0: TIBSQL;
    Procedure FormShow(Sender: TObject);
    Procedure CmdCerrarClick(Sender: TObject);
    Procedure CmdProcesarClick(Sender: TObject);
    Procedure FormCreate(Sender: TObject);
    Procedure CmdImprimirClick(Sender: TObject);
    Procedure CmdAplicarClick(Sender: TObject);
    Procedure EdFechaCorteChange(Sender: TObject);
    Procedure CmdComprobanteClick(Sender: TObject);
    Procedure CmdImprimirProvisionClick(Sender: TObject);
    Procedure Button1Click(Sender: TObject);
    Procedure btnRecalcularClick(Sender: TObject);
    Procedure btnReNotaClick(Sender: TObject);
    Procedure btnRecProvisionClick(Sender: TObject);
    Private 
    { Private declarations }
      Procedure EvaluarCortoPlazo;
      Function EvaluarEdad(Clasificacion, Garantia, Dias: Integer): string;
      //    procedure PrimerPaso;
      //    procedure SegundoPaso;
      Function CalculoAportes(id: integer; pr: String): currency;
      Procedure PrimerPasoComprobante;
      Procedure ActualizarGrid;
      Procedure SegundoPasoComprobante;
      Procedure TercerPasoComprobante;
      Procedure CuartoPasoComprobante;
      Procedure SextoPasoComprobante;
      Procedure SeptimoPasoComprobante;
      Procedure OctavoPasoComprobante;
      Procedure PrimerPasoCausacion;
      Procedure SegundoPasoCausacion;
      Procedure NovenoPasoComprobante;
      Procedure DecimoPasoComprobante;
      Procedure TercerPasoCausacion;
      Function BuscoTasaAnt(Ag: integer; Colocacion: String;FechaIntereses:TDate): Single;
      Procedure PrimerPC;
      Procedure SegundoPC;
      Procedure TercerPC;
      Procedure CuartoPC;
      Procedure QuintoPC;
      Procedure SextoPC;
      Procedure SeptimoPC;
      Procedure OctavoPC;
      Procedure NovenoPC;
      Procedure DecimoPC;
      Procedure ContabilizarCPLP;
      Procedure ContabilizarKC;
      Procedure ContabilizarCau;
      Procedure ContabilizarR;
      Procedure DescuentoGarReal;
      Procedure CalculoProvision;
      Procedure GarantiasReales;
    Public 
    { Public declarations }
  End;

Type 
  PList = ^AList;
  AList = Record
    codigo   : string;
    centro   : integer;
    nomcuenta: string;
    debito   : currency;
    credito  : currency;
    nocuenta : integer;
    nocredito: string;
    tipoide  : integer;
    idpersona: string;
    monto    : currency;
    tasa     : single;
    estado   : string;
  End;

Var 
  frmCausacionCarteraDiaria: TfrmCausacionCarteraDiaria;

  dmGeneral: TdmGeneral;
  // Variables
  Total,Dias,DiasCorrientes,DiasContingencia,DiasANT,DiasCXC,DiasCON : Integer;
  Anticipados,Causados,Contingentes,Aportes,Capital,Interes,PCostas,CortoPlazo,LargoPlazo,Costas: Currency;
  FechaInicial,FechaFinal: TDate;
  Tasa,TasaMax,TasaAnt: Single;
  Tasa1: Single;
  NumeroCuenta,DigitoCuenta: Integer;
  Saldo: Currency;
  Edad: string;
  Consecutivo: Integer;
  Lista: TList;

Implementation

{$R *.dfm}

Uses UnitGlobales,UnitGlobalesCol, UnitFechaAEvaluar,
UnitPantallaProgreso, UnitVistaPreliminar;

Var frmPantallaProgreso: TfrmProgreso;


Procedure TfrmCausacionCarteraDiaria.FormCreate(Sender: TObject);
Begin
  dmGeneral := TdmGeneral.Create(self);
  dmGeneral.getConnected;

  IBSQL1.Database := dmGeneral.IBDatabase1;
  IBSQL2.Database := dmGeneral.IBDatabase1;
  IBSQL3.Database := dmGeneral.IBDatabase1;
  IBSQL4.Database := dmGeneral.IBDatabase1;
  IBSQL6.Database := dmGeneral.IBDatabase1;
  IBSQL7.Database := dmGeneral.IBDatabase1;
  IBSQL8.Database := dmGeneral.IBDatabase1;
  IBSQL9.Database := dmGeneral.IBDatabase1;
  IBSQL10.Database := dmGeneral.IBDatabase1;
  IBSQLAux.Database := dmGeneral.IBDatabase1;

  IBQReal.Database := dmGeneral.IBDatabase1;
  IBQRealAct.Database := dmGeneral.IBDatabase1;
  IBQVarios.Database := dmGeneral.IBDatabase1;
  IBQuery1.Database := dmGeneral.IBDatabase1;
  IBQuery2.Database := dmGeneral.IBDatabase1;
  IBQuery3.Database := dmGeneral.IBDatabase1;
  IBQuery4.Database := dmGeneral.IBDatabase1;
  IBQuery5.Database := dmGeneral.IBDatabase1;

  IBAuxiliar.Database := dmGeneral.IBDatabase1;

  IBAuxiliar.Transaction := dmGeneral.IBTransaction1;


  IBSQL1.Transaction := dmGeneral.IBTransaction1;
  IBSQL2.Transaction := dmGeneral.IBTransaction1;
  IBSQL3.Transaction := dmGeneral.IBTransaction1;
  IBSQL4.Transaction := dmGeneral.IBTransaction1;
  IBSQL6.Transaction := dmGeneral.IBTransaction1;
  IBSQL7.Transaction := dmGeneral.IBTransaction1;
  IBSQL8.Transaction := dmGeneral.IBTransaction1;
  IBSQL9.Transaction := dmGeneral.IBTransaction1;
  IBSQL10.Transaction := dmGeneral.IBTransaction1;

  IBQReal.Transaction := dmGeneral.IBTransaction1;
  IBQRealAct.Transaction := dmGeneral.IBTransaction1;
  IBQVarios.Transaction := dmGeneral.IBTransaction1;
  IBQuery1.Transaction := dmGeneral.IBTransaction1;
  IBQuery2.Transaction := dmGeneral.IBTransaction1;
  IBQuery3.Transaction := dmGeneral.IBTransaction1;
  IBQuery4.Transaction := dmGeneral.IBTransaction1;
  IBQuery5.Transaction := dmGeneral.IBTransaction1;



  IBSQL5.Database := dmGeneral.IBDatabase1;
  IBSQL11.Database := dmGeneral.IBDatabase1;

  IBTAdicional.DefaultDatabase := dmGeneral.IBDatabase1;
  IBTAlterna.DefaultDatabase := dmGeneral.IBDatabase1;
  IBTransaction1.DefaultDatabase := dmGeneral.IBDatabase1;
  IBTransaction2.DefaultDatabase := dmGeneral.IBDatabase1;


End;


Procedure TfrmCausacionCarteraDiaria.FormShow(Sender: TObject);

Var I: Integer;
Begin
  With IBSQL1 Do
    Begin
      If Transaction.InTransaction Then
        Transaction.Rollback;
      Transaction.StartTransaction;
      Try
        ExecQuery;
        I := 0;
        While Not Eof Do
          Begin
            I := I + 1;
            GridP.Cells[0,I] := IntToStr(FieldByName('ID_CLASIFICACION').AsInteger) + '->'+ FieldByName('DESCRIPCION_CLASIFICACION').AsString;
            GridP.Cells[1,I] := IntToStr(FieldByName('ID_GARANTIA').AsInteger) + '->'+ FieldByName('DESCRIPCION_GARANTIA').AsString;
            GridP.Cells[2,I] := FieldByName('ID_EDAD').AsString;
            GridP.Cells[3,I] := Format('%3.2f',[FieldByName('A_CAPITAL').AsFloat]);
            GridP.Cells[4,I] := Format('%3.2f',[FieldByName('A_INTERESES').AsFloat]);
            GridP.Cells[5,I] := Format('%3.2f',[FieldByName('A_COSTAS').AsFloat]);
            Next;
          End;
      Except
        raise;
    End;
End;
EdFechaCorte.Date := Date;
End;


Procedure TfrmCausacionCarteraDiaria.CmdCerrarClick(Sender: TObject);
Begin
  Close;
End;

Procedure TfrmCausacionCarteraDiaria.CmdProcesarClick(Sender: TObject);
Begin
  RGProceso.Enabled := False;
  CmdProcesar.Enabled := False;
  Application.ProcessMessages;
  PrimerPasoCausacion;
  SegundoPasoCausacion;
  GarantiasReales;
  CalculoProvision;
  If RGProceso.ItemIndex = 1 Then
    Begin

{if IBSQL9.Transaction.InTransaction then
             IBSQL9.Transaction.Rollback;
           IBSQL9.Transaction.StartTransaction;
           IBSQL9.Close;
           IBSQL9.SQL.Clear;
           IBSQL9.SQL.Add('EXECUTE PROCEDURE P_COL_RECUPERACIONES');
           IBSQL9.ExecQuery;
           IBSQL9.Transaction.Commit;}
      TercerPasoCausacion;
      CmdAplicar.Enabled := True;
    End;
  CmdImprimir.Enabled := True;
  CmdImprimirProvision.Enabled := True;
End;

Procedure TfrmCausacionCarteraDiaria.EvaluarCortoPlazo;
Begin
  If CortoPlazo < 1 Then
    Begin
      CortoPlazo := Saldo;
      LargoPlazo := 0;
      Exit;
    End;

  If CortoPlazo > Saldo Then
    Begin
      CortoPlazo := Saldo;
      LargoPlazo := 0;
      Exit;
    End;

  If (CortoPlazo + LargoPlazo) < Saldo Then
    Begin
      If LargoPlazo > 0 Then
        LargoPlazo := Saldo - CortoPlazo
      Else
        Begin
          CortoPlazo := Saldo;
          LargoPlazo := 0;
        End;
      Exit;
    End;

  LargoPlazo := Saldo - CortoPlazo;
  If LargoPlazo < 1 Then LargoPlazo := 0;
End;


Function TfrmCausacionCarteraDiaria.EvaluarEdad(Clasificacion,
                                                Garantia,Dias: Integer): string;
Begin
  With IBQVarios Do
    Begin
      Close;
      SQL.Clear;
      SQL.Add('select ID_CATEGORIA from "col$codigospuc" where ');
      SQL.Add('ID_CLASIFICACION = :ID_CLASIFICACION and ');
      SQL.Add('ID_GARANTIA = :ID_GARANTIA and :DIAS BETWEEN DIAS_INICIALES and DIAS_FINALES');
      ParamByName('ID_CLASIFICACION').AsInteger := Clasificacion;
      ParamByName('ID_GARANTIA').AsInteger := Garantia;
      ParamByName('DIAS').AsInteger := Dias;
      Try
        Open;
        Result := FieldByName('ID_CATEGORIA').AsString;
        If Result = '' Then Result := 'A';
      Except
        Result := 'A';
    End;
End;
End;


{procedure TfrmCausacionColocaciones.PrimerPaso;
var I :Integer;
begin
        frmPantallaProgreso := TfrmProgreso.Create(Self);
// Actualizar tabla de tasas
        with IBSQL2 do begin
          if Transaction.InTransaction then
             Transaction.Commit;
          Transaction.StartTransaction;
          Close;
          SQL.Clear;
          SQL.Add('update "col$porccausacion" set');
          SQL.Add('A_CAPITAL = :A_CAPITAL,A_INTERESES = :A_INTERESES,A_COSTAS = :A_COSTAS');
          SQL.Add('where');
          SQL.Add('ID_CLASIFICACION = :ID_CLASIFICACION and ID_GARANTIA = :ID_GARANTIA and ID_EDAD = :ID_EDAD');
          frmPantallaProgreso.Min := 1;
          frmPantallaProgreso.Max := GridP.RowCount - 1;
          frmPantallaProgreso.Position := 1;
          frmPantallaProgreso.Info.Caption := 'Progreso Actual';
          frmPantallaProgreso.InfoLabel := 'Actualizando Tabla de Valores a Provisionar';
          frmPantallaProgreso.Ejecutar;
          for I := 1 to GridP.RowCount - 1 do
          begin
              frmPantallaProgreso.Position := I;
              Application.ProcessMessages;
              ParamByName('ID_CLASIFICACION').AsInteger := StrToInt(LeftStr(GridP.Cells[0,I],1));
              ParamByName('ID_GARANTIA').AsInteger := StrToInt(LeftStr(GridP.Cells[1,I],1));
              ParamByName('ID_EDAD').AsString := GridP.Cells[2,I];
              ParamByName('A_CAPITAL').AsFloat := StrToFloat(GridP.Cells[3,I]);
              ParamByName('A_INTERESES').AsFloat := StrToFloat(GridP.Cells[4,I]);
              ParamByName('A_COSTAS').AsFloat := StrToFloat(GridP.Cells[5,I]);
              try
               ExecQuery;
              except
               frmPantallaProgreso.Cerrar;
               raise;
              end;
          end; // for

          try
             Transaction.Commit;
          except
             frmPantallaProgreso.Cerrar;
             raise;
          end;

        end; // with
// fin actualizacion tabla de tasas

        with IBSQL3 do begin
           if Transaction.InTransaction then Transaction.Rollback;
           Transaction.StartTransaction;
           Close;
           SQL.Clear;
           SQL.Add('delete from "col$causacionestmp"');
           try
            ExecQuery;
            Transaction.Commit;
           except
            MessageDlg('No se pudo vaciar la tabla anterior',mtError,[mbcancel],0);
            Transaction.Rollback;
            Exit;
           end;
        end;

        with IBQuery1 do begin
            if Transaction.InTransaction then Transaction.Rollback;
            Transaction.StartTransaction;
            Close;
            SQL.Clear;
            SQL.Add('select * from P_COL_003');
            try
             Open;
            except
             Transaction.Rollback;
             frmPantallaProgreso.Cerrar;
             raise;
             Exit;
            end;

            Total := FieldByName('TOTAL').AsInteger;

            Close;
            SQL.Clear;
            SQL.Add('select * from P_COL_004');
            try
             Open;
            except
             Transaction.Rollback;
             frmPantallaProgreso.Cerrar;
             raise;
             Exit;
            end;
         end;
            frmPantallaProgreso.Min := 0;
            frmPantallaProgreso.Max := Total;
            frmPantallaProgreso.Position := 0;
            frmPantallaProgreso.InfoLabel := 'Procesando Causaci�n de Colocaciones';
            while not IBQuery1.Eof do
            begin
                frmPantallaProgreso.Position := IBQuery1.RecNo;
                Application.ProcessMessages;
                FechaInicial := IBQuery1.FieldByName('FECHA_INTERES').AsDateTime;
                FechaFinal := EdFechaCorte.Date;
                IBSQL3.Close;
                IBSQL3.SQL.Clear;
                IBSQL3.SQL.Add('select DIAS_INICIALES from "col$codigospuc" where');
                IBSQL3.SQL.Add('ID_CLASIFICACION = :ID_CLASIFICACION and ');
                IBSQL3.SQL.Add('ID_GARANTIA = :ID_GARANTIA and ');
                IBSQL3.SQL.Add('ID_CATEGORIA = :ID_CATEGORIA');
                IBSQL3.ParamByName('ID_CLASIFICACION').AsInteger := IBQuery1.FieldByName('ID_CLASIFICACION').AsInteger;
                IBSQL3.ParamByName('ID_GARANTIA').AsInteger := IBQuery1.FieldByName('ID_GARANTIA').AsInteger;
                IBSQL3.ParamByName('ID_CATEGORIA').AsString := 'C';
                try
                 IBSQL3.ExecQuery;
                except
                 IBQuery1.Transaction.Rollback;
                 frmPantallaProgreso.Cerrar;
                 Exit;
                end;// try
                Saldo := IBQuery1.FieldByName('SALDO').AsCurrency;
                DiasContingencia := IBSQL3.FieldByName('DIAS_INICIALES').AsInteger;
                Dias := DiasEntre(FechaInicial,FechaFinal);

                if Dias > 0 then
                  if (Dias >= DiasContingencia) then begin
                     DiasANT := 0;
                     DiasCON := Dias - (DiasContingencia - 1);
                     DiasCXC := DiasContingencia - 1;
                  end
                  else
                  begin
                     DiasANT := 0;
                     DiasCON := 0;
                     DiasCXC := Dias;
                  end// if
                else
                 begin
                  DiasANT := Dias * -1;
                  DiasCON := 0;
                  DiasCXC := 0;
                 end; // if
// Calculo Tasa sobre la cual liquidar
            if IBQuery1.FieldByName('TIPO_INTERES').AsString = 'F' then begin
               Tasa := IBQuery1.FieldByName('TASA_INTERES_CORRIENTE').AsFloat;
               TasaMax := BuscoTasaEfectivaMaximaNueva(IBQVarios,EdFechaCorte.Date);
             end
            else begin
               Tasa := IBQuery1.FieldByName('VALOR_ACTUAL_TASA').AsFloat;
               if IBQuery1.FieldByName('ID_INTERES').AsInteger = 1 then
                 TasaMax := BuscoTasaEfectivaMaximaDtfNueva(IBQVarios,EdFechaCorte.Date)
               else
                 TasaMax := BuscoTasaEfectivaMaximaIPCNueva(IBQVarios);
            end;

            if IBQuery1.FieldByName('TIPOC_INTERES').AsString = 'A' then
             begin
              Tasa := TasaNominalAnticipada(Tasa,IBQuery1.FieldByName('AMORTIZA_INTERES').AsInteger);
              TasaMax := TasaNominalAnticipada(TasaMax,IBQuery1.FieldByName('AMORTIZA_INTERES').AsInteger);
             end
            else
             begin
              Tasa := TasaNominalVencida(Tasa,IBQuery1.FieldByName('AMORTIZA_INTERES').AsInteger);
              TasaMax := TasaNominalVencida(TasaMax,IBQuery1.FieldByName('AMORTIZA_INTERES').AsInteger);
             end;

            Tasa := Tasa + IBQuery1.FieldByName('PUNTOS_INTERES').AsFloat;
            if Tasa > TasaMax then
              Tasa := TasaMax;
// Fin Calculo Tasa
// Calculo Intereses
            Anticipados := SimpleRoundTo(((IBQuery1.FieldByName('SALDO').AsCurrency * (Tasa/100)) / 360 ) * DiasANT,0);
            Causados  := SimpleRoundTo(((IBQuery1.FieldByName('SALDO').AsCurrency * (Tasa/100)) / 360 ) * DiasCXC,0);
            Contingentes := SimpleRoundTo(((IBQuery1.FieldByName('SALDO').AsCurrency * (Tasa/100)) / 360 ) * DiasCON,0);
// Fin Calculo Intereses
            Aportes := 0;
// Evaluar Edad
            DiasCorrientes := Dias;
            if IBQuery1.FieldByName('TIPOC_INTERES').AsString = 'V' then
               Dias := Dias - IBQuery1.FieldByName('AMORTIZA_INTERES').AsInteger;
            if Dias < 1 then Dias := 0;
            Edad := EvaluarEdad(IBQuery1.FieldByName('ID_CLASIFICACION').AsInteger,
                                IBQuery1.FieldByName('ID_GARANTIA').AsInteger,Dias);
// Calculo Corto y Largo Plazo
            if Edad = 'A' then
              with IBSQL3 do begin
               Close;
               SQL.Clear;
               SQL.Add('select * from "col$tablaliquidacion"');
               SQL.Add(' where (ID_AGENCIA = :"ID_AGENCIA") AND (ID_COLOCACION = :"ID_COLOCACION") AND');
               SQL.Add(' (PAGADA = 0) ORDER BY FECHA_A_PAGAR');
               ParamByName('ID_AGENCIA').AsInteger := IBQuery1.FieldByName('ID_AGENCIA').AsInteger;
               ParamByName('ID_COLOCACION').AsString := IBQuery1.FieldByName('ID_COLOCACION').AsString;
               ExecQuery;
              if RecordCount > 0 then
              while not Eof do
              begin
                if DiasEntre(EdFechaCorte.Date,FieldbyName('FECHA_A_PAGAR').AsDate) <= 360 then
                   CortoPlazo := CortoPlazo + SimpleRoundTo(FieldByName('CAPITAL_A_PAGAR').AsCurrency,0)
                else
                   LargoPlazo := LargoPlazo + SimpleRoundTo(FieldByName('CAPITAL_A_PAGAR').AsCurrency,0);
              Next;
              end; // while
              Close;
              EvaluarCortoPlazo;
              end // whit
            else
              begin
                CortoPlazo := 0;
                LargoPlazo := 0;
              end; // if
// Fin Corto y Largo Plazo
// Leo Costas Judiciales;
            with IBSQL3 do begin
             Close;
             SQL.Clear;
             SQL.Add('SELECT SUM(VALOR_COSTAS) AS COSTAS FROM "col$costas"');
             SQL.Add('WHERE ID_AGENCIA = :ID_AGENCIA and ID_COLOCACION = :ID_COLOCACION');
             ParamByName('ID_AGENCIA').AsInteger := IBQuery1.FieldByName('ID_AGENCIA').AsInteger;
             ParamByName('ID_COLOCACION').AsString := IBQuery1.FieldByName('ID_COLOCACION').AsString;
             try
              ExecQuery;
              Costas := FieldByName('COSTAS').AsCurrency;
             except
              Costas := 0;
             end;
            end;
// Fin Leo Costas
// Insertar datos en tabla temporal
            with IBSQL4 do begin
                Close;
                SQL.Clear;
                SQL.Add('insert into "col$causacionestmp" values(:ID_AGENCIA,');
                SQL.Add(':ID_COLOCACION,:FECHA_CORTE,:ID_CLASIFICACION,:ID_GARANTIA,:ID_EDAD,:ID_ARRASTRE,');
                SQL.Add(':ID_IDENTIFICACION,:ID_PERSONA,:VALOR,:DEUDA,');
                SQL.Add(':FECHA_CAPITAL,:FECHA_INTERES,:DIAS,:ANTICIPADOS,');
                SQL.Add(':CAUSADOS,:CONTINGENCIAS,:APORTES,:PCAPITAL,:PINTERES,');
                SQL.Add(':PCOSTAS,:CORTO_PL,:LARGO_PL,:COSTAS)');
                ParamByName('ID_AGENCIA').AsInteger := IBQuery1.FieldByName('ID_AGENCIA').AsInteger;
                ParamByName('ID_COLOCACION').AsString := IBQuery1.FieldByName('ID_COLOCACION').AsString;
                ParamByName('FECHA_CORTE').AsDate := EdFechaCorte.Date;
                ParamByName('ID_CLASIFICACION').AsInteger := IBQuery1.FieldByName('ID_CLASIFICACION').AsInteger;
                ParamByName('ID_GARANTIA').AsInteger := IBQuery1.FieldByName('ID_GARANTIA').AsInteger;
                ParamByName('ID_EDAD').AsString := Edad;
                ParamByName('ID_ARRASTRE').AsString := Edad;
                ParamByName('ID_IDENTIFICACION').AsInteger := IBQuery1.FieldByName('ID_IDENTIFICACION').AsInteger;
                ParamByName('ID_PERSONA').AsString := IBQuery1.FieldByName('ID_PERSONA').AsString;
                ParamByName('VALOR').AsCurrency := IBQuery1.FieldByName('VALOR_DESEMBOLSO').AsCurrency;
                ParamByName('DEUDA').AsCurrency := IBQuery1.FieldByName('SALDO').AsCurrency;
                ParamByName('FECHA_CAPITAL').AsDate := IBQuery1.FieldByName('FECHA_CAPITAL').AsDateTime;
                ParamByName('FECHA_INTERES').AsDate := IBQuery1.FieldByName('FECHA_INTERES').AsDateTime;
                ParamByName('DIAS').AsInteger := DiasCorrientes;
                ParamByName('ANTICIPADOS').AsCurrency := Anticipados;
                ParamByName('CAUSADOS').AsCurrency := Causados;
                ParamByName('CONTINGENCIAS').AsCurrency := Contingentes;
                ParamByName('APORTES').AsCurrency := Aportes;
                ParamByName('PCAPITAL').AsCurrency := 0;
                ParamByName('PINTERES').AsCurrency := 0;
                ParamByName('PCOSTAS').AsCurrency := 0;
                ParamByName('CORTO_PL').AsCurrency := CortoPlazo;
                ParamByName('LARGO_PL').AsCurrency := LargoPlazo;
                ParamByName('COSTAS').AsCurrency := Costas;
                try
                 ExecQuery;
                except
                 MessageDlg('Error al Guardar Datos Temporale',mtError,[mbcancel],0);
                 frmProgreso.Cerrar;
                 Transaction.Rollback;
                 raise;
                 Exit;
                end;
            end;
// Continuar ciclo while
            IBQuery1.Next;
            end; // while
            IBQuery1.Transaction.Commit;
            IBQuery1.Close;
            frmPantallaProgreso.Cerrar;
            Application.ProcessMessages;
end;
}

{procedure TfrmCausacionColocaciones.SegundoPaso;
var id_ant:Integer;
    pr_ant:string;
    edad_ant:string;
    primerpaso:Boolean;
    vAportes:Currency;
    AportesCon:Currency;
    Deuda:Currency;
begin
          frmPantallaProgreso  := TfrmProgreso.Create(Self);
          frmPantallaProgreso.Min := 0;
          frmPantallaProgreso.Max := Total;
          frmPantallaProgreso.InfoLabel := 'Aplicando Ley de Arrastre';
          frmPantallaProgreso.Position := 0;
          frmPantallaProgreso.Ejecutar;
          primerpaso := True;
          id_ant := 0;
          pr_ant := '';
          with IBQuery1 do begin
            if Transaction.InTransaction then
               Transaction.Rollback;
           Transaction.StartTransaction;
           Close;
           SQL.Clear;
           SQL.Add('select * from "col$causacionestmp" order by ID_IDENTIFICACION,ID_PERSONA,ID_EDAD DESC,ID_AGENCIA,ID_COLOCACION');
           try
            Open;
           except
            MessageDlg('Error al Iniciar la Tabla Temporal para el Segundo proceso',mtError,[mbcancel],0);
            Transaction.Rollback;
            raise;
            Exit;
           end;
          end;

          id_ant := IBQuery1.FieldByName('ID_IDENTIFICACION').AsInteger;
          pr_ant := IBQuery1.FieldByName('ID_PERSONA').AsString;
          edad_ant := IBQuery1.FieldByName('ID_EDAD').AsString;
          AportesCon := CalculoAportes(id_ant,pr_ant);
          primerpaso := True;

          while not IBQuery1.Eof  do begin
              frmPantallaProgreso.Position := IBQuery1.RecNo;
              Application.ProcessMessages;
              if (IBQuery1.FieldByName('ID_IDENTIFICACION').AsInteger <> id_ant) or
                 (IBQuery1.FieldByName('ID_PERSONA').AsString <> pr_ant) then
              begin
                 id_ant := IBQuery1.FieldByName('ID_IDENTIFICACION').AsInteger;
                 pr_ant := IBQuery1.FieldByName('ID_PERSONA').AsString;
                 edad_ant := IBQuery1.FieldByName('ID_EDAD').AsString;
                 AportesCon := CalculoAportes(id_ant,pr_ant);
              end;
              Deuda := IBQuery1.FieldByName('DEUDA').AsCurrency;
// Calculo Provisiones
                with IBSQL3 do begin
                   Close;
                   SQL.Clear;
                   SQL.Add('SELECT A_CAPITAL,A_INTERESES,A_COSTAS from "col$porccausacion" where');
                   SQL.Add('ID_CLASIFICACION = :ID_CLASIFICACION and ID_GARANTIA = :ID_GARANTIA and');
                   SQL.Add('ID_EDAD = :ID_EDAD');
                   ParamByName('ID_CLASIFICACION').AsInteger := IBQuery1.FieldByName('ID_CLASIFICACION').AsInteger;
                   ParamByName('ID_GARANTIA').AsInteger := IBQuery1.fieldbyname('ID_GARANTIA').AsInteger;
                   ParamByName('ID_EDAD').AsString := edad_ant;
                   try
                    ExecQuery;
                   except
                    MessageDlg('Error al Buscar Datos Para Aplicar Provisi�n',mtError,[mbcancel],0);
                    frmPantallaProgreso.Cerrar;
                    raise;
                    Exit;
                   end; // try
                   Capital := SimpleRoundTo(IBQuery1.FieldByName('DEUDA').AsCurrency * (FieldByName('A_CAPITAL').AsFloat / 100),0);
                   Interes := SimpleRoundTo(IBQuery1.FieldByName('CAUSADOS').AsCurrency * (FieldByName('A_INTERESES').AsFloat / 100),0);
                   PCostas := SimpleRoundTo(IBQuery1.FieldByName('COSTAS').AsCurrency * (FieldByName('A_COSTAS').AsFloat / 100),0);
                end; // with
// Fin Calculo Provisiones
// Valido Aportes
                if AportesCon > Deuda then
                begin
                   vAportes := Deuda;
                   AportesCon := AportesCon - vAportes;
                end
                else if Deuda > AportesCon then begin
                     vAportes := AportesCon;
                     AportesCon := 0;
                end;



// Fin Valido Aportes
// Actualizar Provision y Edad por Arrastre
                 with IBSQL3 do begin
                    Close;
                    SQL.Clear;
                    SQL.Add('update "col$causacionestmp" SET ID_ARRASTRE = :ID_ARRASTRE,');
                    SQL.Add('PCAPITAL = :PCAPITAL, PINTERES = :PINTERES, PCOSTAS = :PCOSTAS, APORTES = :APORTES');
                    SQL.Add('where ID_AGENCIA = :ID_AGENCIA and ID_COLOCACION = :ID_COLOCACION');
                    ParamByName('ID_AGENCIA').AsInteger := IBQuery1.fieldbyname('ID_AGENCIA').AsInteger;
                    ParamByName('ID_COLOCACION').AsString := IBQuery1.FieldByName('ID_COLOCACION').AsString;
                    ParamByName('ID_ARRASTRE').AsString := edad_ant;
                    ParamByName('PCAPITAL').AsCurrency := Capital;
                    ParamByName('PINTERES').AsCurrency := Interes;
                    ParamByName('PCOSTAS').AsCurrency := PCostas;
                    ParamByName('APORTES').AsCurrency := vAportes;
                    try
                      ExecQuery;
                    except
                      frmPantallaProgreso.Cerrar;
                      MessageDlg('Error Actualizando Tabla Temporal',mtError,[mbcancel],0);
                      Transaction.Rollback;
                      raise;
                      Exit;
                    end;
                 end; // with
// Fin Actualizaci�n
          IBQuery1.Next;
          end; // while
          IBQuery1.Close;
          IBQuery1.Transaction.Commit;
          frmPantallaProgreso.Cerrar;
end;
}
Function TfrmCausacionCarteraDiaria.CalculoAportes(id: integer;
                                                   pr: String): currency;
Begin
  // Calculo Aportes
  With IBSQL3 Do
    Begin
      Close;
      SQL.Clear;
      SQL.Add('SELECT *  FROM P_CAP_0008 (:ID_AGENCIA,');
      SQL.Add(':ID_TIPO_CAPTACION,:ID_IDENTIFICACION,:ID_PERSONA)');
      ParamByName('ID_AGENCIA').AsInteger := Agencia;
      ParamByName('ID_TIPO_CAPTACION').AsInteger := 1;
      ParamByName('ID_IDENTIFICACION').AsInteger := id;
      ParamByName('ID_PERSONA').AsString := pr;
      Try
        ExecQuery;
        NumeroCuenta := FieldByName('NUMERO_CUENTA').AsInteger;
        DigitoCuenta := FieldByName('DIGITO_CUENTA').AsInteger;
      Except
        Result := 0;
        Transaction.Rollback;
        raise;
        Exit;
    End;

  Close;
  SQL.Clear;
  SQL.Add('SELECT SALDO_ACTUAL FROM SALDO_ACTUAL(:ID_AGENCIA,:TIPO,:CUENTA,:DIGITO,:ANO,:FECHA1,:FECHA2)');
  ParamByName('ID_AGENCIA').AsInteger := Agencia;
  ParamByName('TIPO').AsInteger := 1;
  ParamByName('CUENTA').AsInteger := NumeroCuenta;
  ParamByName('DIGITO').AsInteger := DigitoCuenta;
  parambyname('ANO').AsString := IntToStr(Yearof(Date));
  Parambyname('FECHA1').asDate := EncodeDate(YearOf(Date),01,01);
  ParamByName('FECHA2').AsDate := EncodeDate(YearOf(EdFechaCorte.Date),MonthOf(EdFechaCorte.Date),DaysInAMonth(YearOf(EdFechaCorte.Date),MonthOf(EdFechaCorte.
                                  Date)));
  Try
    ExecQuery;
    Saldo := FieldByName('SALDO_ACTUAL').AsCurrency;
  Except
    Result := 0;
    Transaction.Rollback;
    raise;
    Exit;
End;
End;
Result := Saldo;
End;

Procedure TfrmCausacionCarteraDiaria.CmdImprimirClick(Sender: TObject);

Var frmVistaPreliminar: TfrmVistaPreliminar;

Begin
  If IBQuery1.Transaction.InTransaction Then
    IBQuery1.Transaction.Rollback;
  IBQuery1.Transaction.StartTransaction;

  IBQuery1.Close;
  IBQuery1.SQL.Clear;
  IBQuery1.SQL.Add('SELECT');
  IBQuery1.SQL.Add('"col$causaciondiaria".ID_AGENCIA,');
  IBQuery1.SQL.Add('"col$causaciondiaria".ID_COLOCACION,');
  IBQuery1.SQL.Add('"col$causaciondiaria".FECHA_CORTE,');
  IBQuery1.SQL.Add('"col$causaciondiaria".ID_CLASIFICACION,');
  IBQuery1.SQL.Add('"col$causaciondiaria".ID_GARANTIA,');
  IBQuery1.SQL.Add('"col$causaciondiaria".ID_EDAD_ANT,');
  IBQuery1.SQL.Add('"col$causaciondiaria".ID_ARRASTRE,');
  IBQuery1.SQL.Add('"col$causaciondiaria".ID_IDENTIFICACION,');
  IBQuery1.SQL.Add('"col$causaciondiaria".ID_PERSONA,');
  IBQuery1.SQL.Add('"col$clasificacion".DESCRIPCION_CLASIFICACION,');
  IBQuery1.SQL.Add('"col$garantia".DESCRIPCION_GARANTIA,');
  IBQuery1.SQL.Add('"col$categoria".DESCRIPCION_CATEGORIA,');
  IBQuery1.SQL.Add('"col$causaciondiaria".VALOR,');
  IBQuery1.SQL.Add('"col$causaciondiaria".DEUDA,');
  IBQuery1.SQL.Add('"col$causaciondiaria".FECHA_CAPITAL,');
  IBQuery1.SQL.Add('"col$causaciondiaria".FECHA_INTERES,');
  IBQuery1.SQL.Add('"col$causaciondiaria".DIAS,');
  IBQuery1.SQL.Add('"col$causaciondiaria".MOROSIDAD,');
  IBQuery1.SQL.Add('"col$causaciondiaria".ANTICIPADOS,');
  IBQuery1.SQL.Add('"col$causaciondiaria".CAUSADOS,');
  IBQuery1.SQL.Add('"col$causaciondiaria".CONTINGENCIAS,');
  IBQuery1.SQL.Add('"col$causaciondiaria".APORTES,');
  IBQuery1.SQL.Add('"col$causaciondiaria".PCAPITAL,');
  IBQuery1.SQL.Add('"col$causaciondiaria".PINTERES,');
  IBQuery1.SQL.Add('"col$causaciondiaria".PCOSTAS,');
  IBQuery1.SQL.Add('"col$causaciondiaria".CORTO_PL,');
  IBQuery1.SQL.Add('"col$causaciondiaria".LARGO_PL,');
  IBQuery1.SQL.Add('"col$causaciondiaria".COSTAS,');
  IBQuery1.SQL.Add('"gen$persona".PRIMER_APELLIDO,');
  IBQuery1.SQL.Add('"gen$persona".SEGUNDO_APELLIDO,');
  IBQuery1.SQL.Add('"gen$persona".NOMBRE');
  IBQuery1.SQL.Add('FROM');
  IBQuery1.SQL.Add('"col$causaciondiaria"');
  IBQuery1.SQL.Add('LEFT JOIN "gen$persona" ON ');
  IBQuery1.SQL.Add('("col$causaciondiaria".ID_IDENTIFICACION = "gen$persona".ID_IDENTIFICACION) AND ');
  IBQuery1.SQL.Add('("col$causaciondiaria".ID_PERSONA = "gen$persona".ID_PERSONA)');
  IBQuery1.SQL.Add('LEFT JOIN "col$clasificacion" ON ("col$causaciondiaria".ID_CLASIFICACION = "col$clasificacion".ID_CLASIFICACION)');
  IBQuery1.SQL.Add('LEFT JOIN "col$garantia" ON ("col$causaciondiaria".ID_GARANTIA = "col$garantia".ID_GARANTIA)');
  IBQuery1.SQL.Add('LEFT JOIN "col$categoria" ON ("col$causaciondiaria".ID_ARRASTRE = "col$categoria".ID_CATEGORIA)');
  IBQuery1.SQL.Add('where FECHA_CORTE = :FECHA AND DEUDA > 0 and "col$causaciondiaria".ID_CLASIFICACION = 1');
  IBQuery1.SQL.Add('ORDER BY');
  IBQuery1.SQL.Add('"col$causaciondiaria".ID_GARANTIA,');
  IBQuery1.SQL.Add('"col$causaciondiaria".ID_ARRASTRE,');
  IBQuery1.SQL.Add('"col$causaciondiaria".ID_AGENCIA,');
  IBQuery1.SQL.Add('"col$causaciondiaria".ID_COLOCACION');
  IBQuery1.ParamByName('FECHA').AsDate := EdFechaCorte.Date;

  IBQuery2.Close;
  IBQuery2.SQL.Clear;
  IBQuery2.SQL.Add('SELECT');
  IBQuery2.SQL.Add('"col$causaciondiaria".ID_AGENCIA,');
  IBQuery2.SQL.Add('"col$causaciondiaria".ID_COLOCACION,');
  IBQuery2.SQL.Add('"col$causaciondiaria".FECHA_CORTE,');
  IBQuery2.SQL.Add('"col$causaciondiaria".ID_CLASIFICACION,');
  IBQuery2.SQL.Add('"col$causaciondiaria".ID_GARANTIA,');
  IBQuery2.SQL.Add('"col$causaciondiaria".ID_EDAD_ANT,');
  IBQuery2.SQL.Add('"col$causaciondiaria".ID_ARRASTRE,');
  IBQuery2.SQL.Add('"col$causaciondiaria".ID_IDENTIFICACION,');
  IBQuery2.SQL.Add('"col$causaciondiaria".ID_PERSONA,');
  IBQuery2.SQL.Add('"col$clasificacion".DESCRIPCION_CLASIFICACION,');
  IBQuery2.SQL.Add('"col$garantia".DESCRIPCION_GARANTIA,');
  IBQuery2.SQL.Add('"col$categoria".DESCRIPCION_CATEGORIA,');
  IBQuery2.SQL.Add('"col$causaciondiaria".VALOR,');
  IBQuery2.SQL.Add('"col$causaciondiaria".DEUDA,');
  IBQuery2.SQL.Add('"col$causaciondiaria".FECHA_CAPITAL,');
  IBQuery2.SQL.Add('"col$causaciondiaria".FECHA_INTERES,');
  IBQuery2.SQL.Add('"col$causaciondiaria".DIAS,');
  IBQuery2.SQL.Add('"col$causaciondiaria".MOROSIDAD,');
  IBQuery2.SQL.Add('"col$causaciondiaria".ANTICIPADOS,');
  IBQuery2.SQL.Add('"col$causaciondiaria".CAUSADOS,');
  IBQuery2.SQL.Add('"col$causaciondiaria".CONTINGENCIAS,');
  IBQuery2.SQL.Add('"col$causaciondiaria".APORTES,');
  IBQuery2.SQL.Add('"col$causaciondiaria".PCAPITAL,');
  IBQuery2.SQL.Add('"col$causaciondiaria".PINTERES,');
  IBQuery2.SQL.Add('"col$causaciondiaria".PCOSTAS,');
  IBQuery2.SQL.Add('"col$causaciondiaria".CORTO_PL,');
  IBQuery2.SQL.Add('"col$causaciondiaria".LARGO_PL,');
  IBQuery2.SQL.Add('"col$causaciondiaria".COSTAS,');
  IBQuery2.SQL.Add('"gen$persona".PRIMER_APELLIDO,');
  IBQuery2.SQL.Add('"gen$persona".SEGUNDO_APELLIDO,');
  IBQuery2.SQL.Add('"gen$persona".NOMBRE');
  IBQuery2.SQL.Add('FROM');
  IBQuery2.SQL.Add('"col$causaciondiaria"');
  IBQuery2.SQL.Add('LEFT JOIN "gen$persona" ON ');
  IBQuery2.SQL.Add('("col$causaciondiaria".ID_IDENTIFICACION = "gen$persona".ID_IDENTIFICACION) AND ');
  IBQuery2.SQL.Add('("col$causaciondiaria".ID_PERSONA = "gen$persona".ID_PERSONA)');
  IBQuery2.SQL.Add('LEFT JOIN "col$clasificacion" ON ("col$causaciondiaria".ID_CLASIFICACION = "col$clasificacion".ID_CLASIFICACION)');
  IBQuery2.SQL.Add('LEFT JOIN "col$garantia" ON ("col$causaciondiaria".ID_GARANTIA = "col$garantia".ID_GARANTIA)');
  IBQuery2.SQL.Add('LEFT JOIN "col$categoria" ON ("col$causaciondiaria".ID_ARRASTRE = "col$categoria".ID_CATEGORIA)');
  IBQuery2.SQL.Add('where FECHA_CORTE = :FECHA AND DEUDA > 0 and "col$causaciondiaria".ID_CLASIFICACION = 2');
  IBQuery2.SQL.Add('ORDER BY');
  IBQuery2.SQL.Add('"col$causaciondiaria".ID_GARANTIA,');
  IBQuery2.SQL.Add('"col$causaciondiaria".ID_ARRASTRE,');
  IBQuery2.SQL.Add('"col$causaciondiaria".ID_AGENCIA,');
  IBQuery2.SQL.Add('"col$causaciondiaria".ID_COLOCACION');
  IBQuery2.ParamByName('FECHA').AsDate := EdFechaCorte.Date;

  IBQuery3.Close;
  IBQuery3.SQL.Clear;
  IBQuery3.SQL.Add('SELECT');
  IBQuery3.SQL.Add('"col$causaciondiaria".ID_AGENCIA,');
  IBQuery3.SQL.Add('"col$causaciondiaria".ID_COLOCACION,');
  IBQuery3.SQL.Add('"col$causaciondiaria".FECHA_CORTE,');
  IBQuery3.SQL.Add('"col$causaciondiaria".ID_CLASIFICACION,');
  IBQuery3.SQL.Add('"col$causaciondiaria".ID_GARANTIA,');
  IBQuery3.SQL.Add('"col$causaciondiaria".ID_EDAD_ANT,');
  IBQuery3.SQL.Add('"col$causaciondiaria".ID_ARRASTRE,');
  IBQuery3.SQL.Add('"col$causaciondiaria".ID_IDENTIFICACION,');
  IBQuery3.SQL.Add('"col$causaciondiaria".ID_PERSONA,');
  IBQuery3.SQL.Add('"col$clasificacion".DESCRIPCION_CLASIFICACION,');
  IBQuery3.SQL.Add('"col$garantia".DESCRIPCION_GARANTIA,');
  IBQuery3.SQL.Add('"col$categoria".DESCRIPCION_CATEGORIA,');
  IBQuery3.SQL.Add('"col$causaciondiaria".VALOR,');
  IBQuery3.SQL.Add('"col$causaciondiaria".DEUDA,');
  IBQuery3.SQL.Add('"col$causaciondiaria".FECHA_CAPITAL,');
  IBQuery3.SQL.Add('"col$causaciondiaria".FECHA_INTERES,');
  IBQuery3.SQL.Add('"col$causaciondiaria".DIAS,');
  IBQuery3.SQL.Add('"col$causaciondiaria".MOROSIDAD,');
  IBQuery3.SQL.Add('"col$causaciondiaria".ANTICIPADOS,');
  IBQuery3.SQL.Add('"col$causaciondiaria".CAUSADOS,');
  IBQuery3.SQL.Add('"col$causaciondiaria".CONTINGENCIAS,');
  IBQuery3.SQL.Add('"col$causaciondiaria".APORTES,');
  IBQuery3.SQL.Add('"col$causaciondiaria".PCAPITAL,');
  IBQuery3.SQL.Add('"col$causaciondiaria".PINTERES,');
  IBQuery3.SQL.Add('"col$causaciondiaria".PCOSTAS,');
  IBQuery3.SQL.Add('"col$causaciondiaria".CORTO_PL,');
  IBQuery3.SQL.Add('"col$causaciondiaria".LARGO_PL,');
  IBQuery3.SQL.Add('"col$causaciondiaria".COSTAS,');
  IBQuery3.SQL.Add('"gen$persona".PRIMER_APELLIDO,');
  IBQuery3.SQL.Add('"gen$persona".SEGUNDO_APELLIDO,');
  IBQuery3.SQL.Add('"gen$persona".NOMBRE');
  IBQuery3.SQL.Add('FROM');
  IBQuery3.SQL.Add('"col$causaciondiaria"');
  IBQuery3.SQL.Add('LEFT JOIN "gen$persona" ON ');
  IBQuery3.SQL.Add('("col$causaciondiaria".ID_IDENTIFICACION = "gen$persona".ID_IDENTIFICACION) AND ');
  IBQuery3.SQL.Add('("col$causaciondiaria".ID_PERSONA = "gen$persona".ID_PERSONA)');
  IBQuery3.SQL.Add('LEFT JOIN "col$clasificacion" ON ("col$causaciondiaria".ID_CLASIFICACION = "col$clasificacion".ID_CLASIFICACION)');
  IBQuery3.SQL.Add('LEFT JOIN "col$garantia" ON ("col$causaciondiaria".ID_GARANTIA = "col$garantia".ID_GARANTIA)');
  IBQuery3.SQL.Add('LEFT JOIN "col$categoria" ON ("col$causaciondiaria".ID_ARRASTRE = "col$categoria".ID_CATEGORIA)');
  IBQuery3.SQL.Add('where FECHA_CORTE = :FECHA AND DEUDA > 0 and "col$causaciondiaria".ID_CLASIFICACION = 3');
  IBQuery3.SQL.Add('ORDER BY');
  IBQuery3.SQL.Add('"col$causaciondiaria".ID_GARANTIA,');
  IBQuery3.SQL.Add('"col$causaciondiaria".ID_ARRASTRE,');
  IBQuery3.SQL.Add('"col$causaciondiaria".ID_AGENCIA,');
  IBQuery3.SQL.Add('"col$causaciondiaria".ID_COLOCACION');
  IBQuery3.ParamByName('FECHA').AsDate := EdFechaCorte.Date;

  IBQuery4.Close;
  IBQuery4.SQL.Clear;
  IBQuery4.SQL.Add('SELECT');
  IBQuery4.SQL.Add('"col$causaciondiaria".ID_AGENCIA,');
  IBQuery4.SQL.Add('"col$causaciondiaria".ID_COLOCACION,');
  IBQuery4.SQL.Add('"col$causaciondiaria".FECHA_CORTE,');
  IBQuery4.SQL.Add('"col$causaciondiaria".ID_CLASIFICACION,');
  IBQuery4.SQL.Add('"col$causaciondiaria".ID_GARANTIA,');
  IBQuery4.SQL.Add('"col$causaciondiaria".ID_EDAD_ANT,');
  IBQuery4.SQL.Add('"col$causaciondiaria".ID_ARRASTRE,');
  IBQuery4.SQL.Add('"col$causaciondiaria".ID_IDENTIFICACION,');
  IBQuery4.SQL.Add('"col$causaciondiaria".ID_PERSONA,');
  IBQuery4.SQL.Add('"col$clasificacion".DESCRIPCION_CLASIFICACION,');
  IBQuery4.SQL.Add('"col$garantia".DESCRIPCION_GARANTIA,');
  IBQuery4.SQL.Add('"col$categoria".DESCRIPCION_CATEGORIA,');
  IBQuery4.SQL.Add('"col$causaciondiaria".VALOR,');
  IBQuery4.SQL.Add('"col$causaciondiaria".DEUDA,');
  IBQuery4.SQL.Add('"col$causaciondiaria".FECHA_CAPITAL,');
  IBQuery4.SQL.Add('"col$causaciondiaria".FECHA_INTERES,');
  IBQuery4.SQL.Add('"col$causaciondiaria".DIAS,');
  IBQuery4.SQL.Add('"col$causaciondiaria".MOROSIDAD,');
  IBQuery4.SQL.Add('"col$causaciondiaria".ANTICIPADOS,');
  IBQuery4.SQL.Add('"col$causaciondiaria".CAUSADOS,');
  IBQuery4.SQL.Add('"col$causaciondiaria".CONTINGENCIAS,');
  IBQuery4.SQL.Add('"col$causaciondiaria".APORTES,');
  IBQuery4.SQL.Add('"col$causaciondiaria".PCAPITAL,');
  IBQuery4.SQL.Add('"col$causaciondiaria".PINTERES,');
  IBQuery4.SQL.Add('"col$causaciondiaria".PCOSTAS,');
  IBQuery4.SQL.Add('"col$causaciondiaria".CORTO_PL,');
  IBQuery4.SQL.Add('"col$causaciondiaria".LARGO_PL,');
  IBQuery4.SQL.Add('"col$causaciondiaria".COSTAS,');
  IBQuery4.SQL.Add('"gen$persona".PRIMER_APELLIDO,');
  IBQuery4.SQL.Add('"gen$persona".SEGUNDO_APELLIDO,');
  IBQuery4.SQL.Add('"gen$persona".NOMBRE');
  IBQuery4.SQL.Add('FROM');
  IBQuery4.SQL.Add('"col$causaciondiaria"');
  IBQuery4.SQL.Add('LEFT JOIN "gen$persona" ON ');
  IBQuery4.SQL.Add('("col$causaciondiaria".ID_IDENTIFICACION = "gen$persona".ID_IDENTIFICACION) AND ');
  IBQuery4.SQL.Add('("col$causaciondiaria".ID_PERSONA = "gen$persona".ID_PERSONA)');
  IBQuery4.SQL.Add('LEFT JOIN "col$clasificacion" ON ("col$causaciondiaria".ID_CLASIFICACION = "col$clasificacion".ID_CLASIFICACION)');
  IBQuery4.SQL.Add('LEFT JOIN "col$garantia" ON ("col$causaciondiaria".ID_GARANTIA = "col$garantia".ID_GARANTIA)');
  IBQuery4.SQL.Add('LEFT JOIN "col$categoria" ON ("col$causaciondiaria".ID_ARRASTRE = "col$categoria".ID_CATEGORIA)');
  IBQuery4.SQL.Add('where FECHA_CORTE = :FECHA AND DEUDA > 0 and "col$causaciondiaria".ID_CLASIFICACION = 4');
  IBQuery4.SQL.Add('ORDER BY');
  IBQuery4.SQL.Add('"col$causaciondiaria".ID_GARANTIA,');
  IBQuery4.SQL.Add('"col$causaciondiaria".ID_ARRASTRE,');
  IBQuery4.SQL.Add('"col$causaciondiaria".ID_AGENCIA,');
  IBQuery4.SQL.Add('"col$causaciondiaria".ID_COLOCACION');
  IBQuery4.ParamByName('FECHA').AsDate := EdFechaCorte.Date;

  IBQuery5.Close;
  IBQuery5.SQL.Clear;
  IBQuery5.SQL.Add('select');
  IBQuery5.SQL.Add('SUM(VALOR) as VALOR,');
  IBQuery5.SQL.Add('SUM(DEUDA) as SALDO,');
  IBQuery5.SQL.Add('SUM(ANTICIPADOS) as ANTICIPADOS,');
  IBQuery5.SQL.Add('SUM(CAUSADOS) as CAUSADOS,');
  IBQuery5.SQL.Add('SUM(CONTINGENCIAS) as CONTINGENCIAS,');
  IBQuery5.SQL.Add('SUM(APORTES) as APORTES,');
  IBQuery5.SQL.Add('SUM(PCAPITAL) as PCAPITAL,');
  IBQuery5.SQL.Add('SUM(PINTERES) as PINTERES,');
  IBQuery5.SQL.Add('SUM(PCOSTAS) as PCOSTAS,');
  IBQuery5.SQL.Add('SUM(CORTO_PL) as CORTO_PL,');
  IBQuery5.SQL.Add('SUM(LARGO_PL) as LARGO_PL,');
  IBQuery5.SQL.Add('SUM(COSTAS) as COSTAS');
  IBQuery5.SQL.Add('FROM');
  IBQuery5.SQL.Add('"col$causaciondiaria"');
  IBQuery5.SQL.Add('WHERE FECHA_CORTE = :FECHA');
  IBQuery5.ParamByName('FECHA').AsDate := EdFechaCorte.Date;
  IBQuery5.Open;

  Reporte.Variables.ByName['Valor'].AsDouble := IBQuery5.FieldByName('VALOR').AsCurrency;
  Reporte.Variables.ByName['Saldo'].AsDouble := IBQuery5.FieldByName('SALDO').AsCurrency;
  Reporte.Variables.ByName['Anticipados'].AsDouble := IBQuery5.FieldByName('ANTICIPADOS').AsCurrency;
  Reporte.Variables.ByName['Causados'].AsDouble := IBQuery5.FieldByName('CAUSADOS').AsCurrency;
  Reporte.Variables.ByName['Contingencias'].AsDouble := IBQuery5.FieldByName('CONTINGENCIAS').AsCurrency;
  Reporte.Variables.ByName['Aportes'].AsDouble := IBQuery5.FieldByName('APORTES').AsCurrency;
  Reporte.Variables.ByName['PCapital'].AsDouble := IBQuery5.FieldByName('PCAPITAL').AsCurrency;
  Reporte.Variables.ByName['PInteres'].AsDouble := IBQuery5.FieldByName('PINTERES').AsCurrency;
  Reporte.Variables.ByName['PCostas'].AsDouble := IBQuery5.FieldByName('PCOSTAS').AsCurrency;
  Reporte.Variables.ByName['Corto_pl'].AsDouble := IBQuery5.FieldByName('CORTO_PL').AsCurrency;
  Reporte.Variables.ByName['Largo_pl'].AsDouble := IBQuery5.FieldByName('LARGO_PL').AsCurrency;
  Reporte.Variables.ByName['Costas'].AsDouble := IBQuery5.FieldByName('COSTAS').AsCurrency;


  frmVistaPreliminar := TfrmVistaPreliminar.Create(Self);
  Reporte.Variables.ByName['Empresa'].AsString := Empresa;
  Reporte.Variables.ByName['Agencia'].AsInteger := Agencia;
  Reporte.Variables.ByName['FechaCorte'].AsDateTime := EdFechaCorte.Date;
  Reporte.Title := 'Calificaci�n,Causaci�n y Provisi�n de Colocaciones';
  If Reporte.PrepareReport Then
    Begin
      frmVistaPreliminar.Reporte := Reporte;
      frmVistaPreliminar.ShowModal;
    End;
  IBQuery5.Close;
  IBQuery1.Transaction.Commit;
End;

Procedure TfrmCausacionCarteraDiaria.CmdAplicarClick(Sender: TObject);

Var Total: Integer;
  I, WaitCount, Tries,Consecutivo: Integer;
  RecordLocked: Boolean;
  ErrorMsg: string;

Begin

  CmdAplicar.Enabled := False;
  Application.ProcessMessages;

  With IBQuery2 Do
    Begin
      If Transaction.InTransaction Then
        Transaction.Rollback;
      Transaction.StartTransaction;

      Close;
      SQL.Clear;
      SQL.Add('select count(*) as TOTAL from "col$causaciondiariamovtmp"');
      Try
        Open;
        Total := IBQuery2.FieldByName('TOTAL').AsInteger;
      Except
        MessageDlg('Error al Buscar Datos a Procesar',mtError,[mbcancel],0);
        Transaction.Rollback;
        raise;
        Exit;
    End;

  Close;
  SQL.Clear;
  SQL.Add('select * from "col$causaciondiariamovtmp"');
  Try
    Open;
  Except
    MessageDlg('Error al Buscar Datos a Procesar',mtError,[mbcancel],0);
    Transaction.Rollback;
    raise;
    Exit;
End;
frmPantallaProgreso := TfrmProgreso.Create(Self);
frmPantallaProgreso.Min := 0;
frmPantallaProgreso.Max := Total;
frmPantallaProgreso.Ejecutar;
While Not Eof Do
  Begin
    frmPantallaProgreso.InfoLabel := 'Aplicando Tabla de Movimientos:' + FieldByName('ID_COLOCACION').AsString;
    frmPantallaProgreso.Position :=  RecNo;
    Application.ProcessMessages;

    IBSQL4.Close;
    IBSQL4.SQL.Clear;
    IBSQL4.SQL.Add('update "col$causaciondiariamov" set PCAPITAL_ANUAL = :PCAPITAL_ANUAL, PINTERES_ANUAL = :PINTERES_ANUAL, PCOSTAS_ANUAL = :PCOSTAS_ANUAL,');
    IBSQL4.SQL.Add('PCAPITAL_ACT = :PCAPITAL_ACT, PINTERES_ACT = :PINTERES_ACT, PCOSTAS_ACT = :PCOSTAS_ACT');
    IBSQL4.SQL.Add('where ID_AGENCIA = :ID_AGENCIA and ID_COLOCACION = :ID_COLOCACION');
    IBSQL4.ParamByName('ID_AGENCIA').AsInteger := IBQuery2.FieldByName('ID_AGENCIA').AsInteger;
    IBSQL4.ParamByName('ID_COLOCACION').AsString := IBQuery2.FieldByName('ID_COLOCACION').AsString;
    IBSQL4.ParamByName('PCAPITAL_ANUAL').AsCurrency := IBQuery2.FieldByName('PCAPITAL_ANUAL').AsCurrency;
    IBSQL4.ParamByName('PINTERES_ANUAL').AsCurrency := IBQuery2.FieldByName('PINTERES_ANUAL').AsCurrency;
    IBSQL4.ParamByName('PCOSTAS_ANUAL').AsCurrency := IBQuery2.FieldByName('PCOSTAS_ANUAL').AsCurrency;
    IBSQL4.ParamByName('PCAPITAL_ACT').AsCurrency := IBQuery2.FieldByName('PCAPITAL_ACT').AsCurrency;
    IBSQL4.ParamByName('PINTERES_ACT').AsCurrency := IBQuery2.FieldByName('PINTERES_ACT').AsCurrency;
    IBSQL4.ParamByName('PCOSTAS_ACT').AsCurrency := IBQuery2.FieldByName('PCOSTAS_ACT').AsCurrency;
    IBSQL4.ExecQuery;
    If IBSQL4.RowsAffected <= 0 Then
      Begin
        IBSQL4.Close;
        IBSQL4.SQL.Clear;
        IBSQL4.SQL.Add(
             'insert into "col$causaciondiariamov" (ID_AGENCIA,ID_COLOCACION,PCAPITAL_ANUAL,PINTERES_ANUAL,PCOSTAS_ANUAL,PCAPITAL_ACT,PINTERES_ACT,PCOSTAS_ACT)'
        );
        IBSQL4.SQL.Add('values (:ID_AGENCIA,:ID_COLOCACION,:PCAPITAL_ANUAL,:PINTERES_ANUAL,:PCOSTAS_ANUAL,:PCAPITAL_ACT,:PINTERES_ACT,:PCOSTAS_ACT)');
        IBSQL4.ParamByName('ID_AGENCIA').AsInteger := IBQuery2.FieldByName('ID_AGENCIA').AsInteger;
        IBSQL4.ParamByName('ID_COLOCACION').AsString := IBQuery2.FieldByName('ID_COLOCACION').AsString;
        IBSQL4.ParamByName('PCAPITAL_ANUAL').AsCurrency := IBQuery2.FieldByName('PCAPITAL_ANUAL').AsCurrency;
        IBSQL4.ParamByName('PINTERES_ANUAL').AsCurrency := IBQuery2.FieldByName('PINTERES_ANUAL').AsCurrency;
        IBSQL4.ParamByName('PCOSTAS_ANUAL').AsCurrency := IBQuery2.FieldByName('PCOSTAS_ANUAL').AsCurrency;
        IBSQL4.ParamByName('PCAPITAL_ACT').AsCurrency := IBQuery2.FieldByName('PCAPITAL_ACT').AsCurrency;
        IBSQL4.ParamByName('PINTERES_ACT').AsCurrency := IBQuery2.FieldByName('PINTERES_ACT').AsCurrency;
        IBSQL4.ParamByName('PCOSTAS_ACT').AsCurrency := IBQuery2.FieldByName('PCOSTAS_ACT').AsCurrency;
        IBSQL4.ExecQuery;
      End;
    IBQuery2.Next;
  End;
//Fin de While
frmPantallaProgreso.Cerrar;

Close;
SQL.Clear;
SQL.Add('select count(*) as TOTAL from "col$causaciondiaria" where');
SQL.Add('"col$causaciondiaria".FECHA_CORTE = :FECHA_CORTE');
ParamByName('FECHA_CORTE').AsDate := EdFechaCorte.Date;
Try
  Open;
  Total := IBQuery2.FieldByName('TOTAL').AsInteger;
Except
  MessageDlg('Error al Buscar Datos a Procesar',mtError,[mbcancel],0);
  Transaction.Rollback;
  raise;
  Exit;
End;

Close;
SQL.Clear;
SQL.Add('select * from "col$causaciondiaria" where');
SQL.Add('"col$causaciondiaria".FECHA_CORTE = :FECHA_CORTE');
SQL.Add('order by "col$causaciondiaria".ID_AGENCIA,"col$causaciondiaria".ID_COLOCACION');
ParamByName('FECHA_CORTE').AsDate := EdFechaCorte.Date;
Try
  Open;
Except
  MessageDlg('Error al Buscar Datos a Procesar',mtError,[mbcancel],0);
  Transaction.Rollback;
  raise;
  Exit;
End;
frmPantallaProgreso := TfrmProgreso.Create(Self);
frmPantallaProgreso.Min := 0;
frmPantallaProgreso.Max := Total;
frmPantallaProgreso.Ejecutar;
While Not Eof Do
  Begin
    frmPantallaProgreso.InfoLabel := 'Aplicando Calificaci�n:' + FieldByName('ID_COLOCACION').AsString;
    frmPantallaProgreso.Position :=  RecNo;
    Application.ProcessMessages;

    IBSQL4.Close;
    IBSQL4.SQL.Clear;
    IBSQL4.SQL.Add('UPDATE "col$colocacion" SET ID_CATEGORIA = :ID_CATEGORIA, ID_EVALUACION = :ID_EVALUACION');
    IBSQL4.SQL.Add('where "col$colocacion".ID_AGENCIA = :ID_AGENCIA and "col$colocacion".ID_COLOCACION = :ID_COLOCACION');
    IBSQL4.ParamByName('ID_AGENCIA').AsInteger := FieldByName('ID_AGENCIA').AsInteger;
    IBSQL4.ParamByName('ID_COLOCACION').AsString := FieldByName('ID_COLOCACION').AsString;
    IBSQL4.ParamByName('ID_CATEGORIA').AsString := FieldByName('ID_ARRASTRE').AsString;
    IBSQL4.ParamByName('ID_EVALUACION').AsString := FieldByName('ID_ARRASTRE').AsString;
    IBSQL4.ExecQuery;
    IBQuery2.Next;
  End;
frmPantallaProgreso.Cerrar;

Close;
SQL.Clear;
SQL.Add('update "col$causacionescontrol" SET APLICADA = 1');
SQL.Add('where FECHA = :FECHA');
ParamByName('FECHA').AsDate := EdFechaCorte.Date;
Try
  ExecSQL;
Except
  MessageDlg('Error al Actualizar la Tabla de Control',mtError,[mbcancel],0);
  Transaction.Rollback;
  raise;
  Exit;
End;

IBQuery2.Transaction.Commit;
End;
MessageDlg('Calificaci�n Aplicada con Exito!',mtInformation,[mbok],0);
CmdComprobante.Enabled := True;
End;

Procedure TfrmCausacionCarteraDiaria.EdFechaCorteChange(Sender: TObject);

Var Fecha: TDateTime;
Begin
  If MonthOf(EdFechaCorte.Date) <> 2 Then
    Begin
      If TryEncodeDate(YearOf(EdFechaCorte.Date),MonthOf(EdFechaCorte.Date),30,Fecha) Then EdFechaCorte.Date := Fecha;
    End
  Else
    If TryEncodeDate(YearOf(EdFechaCorte.Date),MonthOf(EdFechaCorte.Date),DaysInAMonth(YearOf(EdFechaCorte.Date),MonthOf(EdFechaCorte.Date)),Fecha) Then
      EdFechaCorte.Date := Fecha;

  With IBSQL2 Do
    Begin
      Close;
      If Transaction.InTransaction Then
        Transaction.Rollback;
      Transaction.StartTransaction;
      SQL.Clear;
      SQL.Add('select * from "col$causacionescontrol" where');
      SQL.Add('FECHA = :FECHA');
      ParamByName('FECHA').AsDate := EdFechaCorte.Date;
      Try
        ExecQuery;
      Except
        MessageDlg('Error al Verificar Control',mtError,[mbcancel],0);
        raise;
        Exit;
    End;
  If RecordCount > 0 Then
    Begin
      If FieldByName('PROCESADA').AsInteger = 0 Then
        Begin
          CmdProcesar.Enabled := True;
          //            RGProceso.Enabled := True;
          CmdAplicar.Enabled := False;
          CmdComprobante.Enabled := False;
          CmdImprimir.Enabled := False;
          CmdImprimirProvision.Enabled := False;
        End
      Else
        Begin
          CmdProcesar.Enabled := False;
          btnRecalcular.Enabled := True;
          //            RGProceso.Enabled := True;
          CmdAplicar.Enabled := True;
          CmdComprobante.Enabled := True;
          CmdImprimir.Enabled := True;
          CmdImprimirProvision.Enabled := True;
        End;

      If FieldByName('APLICADA').AsInteger = 0 Then
        Begin
          CmdAplicar.Enabled := True;
          CmdComprobante.Enabled := False;
          CmdImprimir.Enabled := True;
          CmdImprimirProvision.Enabled := True;
        End
      Else
        Begin
          CmdAplicar.Enabled := False;
          CmdComprobante.Enabled := True;
          CmdImprimir.Enabled := True;
          CmdImprimirProvision.Enabled := True;
        End;

      If FieldByName('CONTABILIZADA').AsInteger = 0 Then
        Begin
          CmdComprobante.Enabled := True;
        End
      Else
        Begin
          CmdComprobante.Enabled := False;
          btnReNota.Enabled := True;
          Consecutivo := FieldByName('ID_COMPROBANTE').AsInteger;
          EdComprobante.Caption := Format('%.7d',[consecutivo]);
        End;
    End
  Else
    Begin
      CmdProcesar.Enabled := True;
      CmdAplicar.Enabled := False;
      CmdImprimir.Enabled := False;
      CmdComprobante.Enabled := False;
      CmdImprimirProvision.Enabled := False;
    End;
End;

End;

Procedure TfrmCausacionCarteraDiaria.CmdComprobanteClick(Sender: TObject);
Begin
  CmdComprobante.Enabled := False;
  Application.ProcessMessages;

  Try
    Lista := Tlist.Create;
  Finally
    Lista.Clear;
End;

// PrimerPC;   // Corto y Largo Plazo
SegundoPC;
// Ajustar Calificacion
TercerPC;
// Causacion de Intereses
CuartoPC;
// Provision de Capital de Colocaciones
QuintoPC;
// Provision de Interes de Colocaciones y Costas Judiciales
SextoPC;
// Provision General
//SeptimoPC;  // Traslado de Intereses Anticipados    // No aplica para funapoyo
//OctavoPC;   // Contingencias
DecimoPC;
// Enviar Comprobante Contable




With IBAuxiliar Do
  Begin
    If  Transaction.InTransaction Then
      Transaction.Rollback;
    Transaction.StartTransaction;

    Close;
    ParamByName('TIPO_COMPROBANTE').AsInteger := 1;
    ParamByName('ID_COMPROBANTE').AsInteger := Consecutivo;
    Try
      Open;
      ReporteCom.Variables.ByName['EMPRESA'].AsString := Empresa;
      ReporteCom.Variables.ByName['NIT'].AsString := Nit;
      If ReporteCom.PrepareReport Then
        ReporteCom.PreviewPreparedReport(True);
    Except
      MessageDlg('Error al generar el reporte',mtError,[mbcancel],0);
  End;
Transaction.Commit;
End;

End;

Procedure TfrmCausacionCarteraDiaria.PrimerPasoComprobante;

Var AR : Plist;
  CortoActual,LargoActual: Currency;
  CodigoCorto,CodigoLargo: string;
  ValorCorto,ValorLargo: Currency;
  Aplica : Boolean;
Begin
  With IBSQL2 Do
    Begin
      If Transaction.InTransaction Then
        Transaction.Rollback;
      Transaction.StartTransaction;
      Close;
      SQL.Clear;
      SQL.Add('select "col$causaciondiaria".ID_CLASIFICACION, ');
      SQL.Add('"col$causaciondiaria".ID_GARANTIA,"col$causaciondiaria".ID_EDAD_ACT, ');
      SQL.Add('SUM("col$causaciondiaria".CORTO_PL) AS CORTO,');
      SQL.Add('SUM("col$causaciondiaria".LARGO_PL) AS LARGO from "col$causaciondiaria"');
      SQL.Add('inner join "col$codigospuc" on ');
      SQL.Add('("col$causaciondiaria".ID_CLASIFICACION = "col$codigospuc".ID_CLASIFICACION and');
      SQL.Add('"col$causaciondiaria".ID_GARANTIA = "col$codigospuc".ID_GARANTIA and');
      SQL.Add('"col$causaciondiaria".ID_EDAD_ACT = "col$codigospuc".ID_CATEGORIA)');
      SQL.Add('where "col$causaciondiaria".ID_EDAD_ACT = '+QuotedStr('A'));
      SQL.Add('and "col$causaciondiaria".FECHA_CORTE = :FECHA_CORTE');
      SQL.Add('group by "col$causaciondiaria".ID_CLASIFICACION, "col$causaciondiaria".ID_GARANTIA,');
      SQL.Add('"col$causaciondiaria".ID_EDAD_ACT');
      SQL.Add('order by "col$causaciondiaria".ID_CLASIFICACION DESC,"col$causaciondiaria".ID_GARANTIA,');
      SQL.Add('"col$causaciondiaria".ID_EDAD_ACT');
      ParamByName('FECHA_CORTE').AsDate := EdFechaCorte.Date;
      Try
        ExecQuery;
      Except
        MessageDlg('Error al Buscar Corto y Largo Plazo',mtError,[mbcancel],0);
        Transaction.Rollback;
        raise;
        Exit;
    End;

  // Buscar y Comparar Valores
  While Not Eof Do
    Begin
      // Buscar Codigo Puc
      IBSQL3.Close;
      IBSQL3.SQL.Clear;
      IBSQL3.SQL.Add('select "col$codigospuc".COD_CAPITAL_CP,"col$codigospuc".COD_CAPITAL_LP');
      IBSQL3.SQL.Add('from "col$codigospuc" where "col$codigospuc".ID_CLASIFICACION = :ID_CLASIFICACION and ');
      IBSQL3.SQL.Add('"col$codigospuc".ID_GARANTIA = :ID_GARANTIA and "col$codigospuc".ID_CATEGORIA = :ID_CATEGORIA');
      IBSQL3.ParamByName('ID_CLASIFICACION').AsInteger := FieldByName('ID_CLASIFICACION').AsInteger;
      IBSQL3.ParamByName('ID_GARANTIA').AsInteger := fieldbyname('ID_GARANTIA').AsInteger;
      IBSQL3.ParamByName('ID_CATEGORIA').AsString := fieldbyname('ID_EDAD').AsString;
      Try
        IBSQL3.ExecQuery;
        CodigoCorto := IBSQL3.FieldByName('COD_CAPITAL_CP').AsString;
        CodigoLargo := IBSQL3.FieldByName('COD_CAPITAL_LP').AsString;
      Except
        MessageDlg('Error Buscando Codigos Corto y Largo Plazo',mtError,[mbcancel],0);
        Transaction.Rollback;
        raise;
        Exit;
    End;
  //  Buscar en Puc Saldos Actuales
  IBSQL3.Close;
  IBSQL3.SQL.Clear;
  IBSQL3.SQL.Add('select "con$puc".SALDOINICIAL AS SALDO');
  IBSQL3.SQL.Add('from "con$puc"');
  IBSQL3.SQL.Add('where "con$puc".CODIGO = :CODIGO');
  IBSQL3.ParamByName('CODIGO').AsString := CodigoCorto;
  Try
    IBSQL3.ExecQuery;
    ValorCorto := IBSQL3.FieldByName('SALDO').AsCurrency;
  Except
    MessageDlg('Error al Obtener valor de Corto Plazo',mtError,[mbcancel],0);
    Transaction.Rollback;
    raise;
    Exit;
End;
IBSQL3.Close;
IBSQL3.SQL.Clear;
IBSQL3.SQL.Add('select SUM("con$saldoscuenta".DEBITO - "con$saldoscuenta".CREDITO) AS SALDO');
IBSQL3.SQL.Add('from "con$puc"');
IBSQL3.SQL.Add('left join "con$saldoscuenta" ON ("con$puc".ID_AGENCIA = "con$saldoscuenta".ID_AGENCIA and ');
IBSQL3.SQL.Add('"con$puc".CODIGO = "con$saldoscuenta".CODIGO)');
IBSQL3.SQL.Add('where "con$saldoscuenta".ID_AGENCIA = :ID_AGENCIA and "con$puc".CODIGO = :CODIGO and "con$saldoscuenta".MES <= :MES');
IBSQL3.SQL.Add('group by "con$puc".SALDOINICIAL');
IBSQL3.ParamByName('ID_AGENCIA').AsInteger := Agencia;
IBSQL3.ParamByName('CODIGO').AsString := CodigoCorto;
IBSQL3.ParamByName('MES').AsInteger := Monthof(EdFechaCorte.Date);
Try
  IBSQL3.ExecQuery;
  ValorCorto := ValorCorto + IBSQL3.FieldByName('SALDO').AsCurrency;
Except
  MessageDlg('Error al Obtener valor de Corto Plazo',mtError,[mbcancel],0);
  Transaction.Rollback;
  raise;
  Exit;
End;
IBSQL3.Close;
IBSQL3.SQL.Clear;
IBSQL3.SQL.Add('select "con$puc".SALDOINICIAL AS SALDO');
IBSQL3.SQL.Add('from "con$puc"');
IBSQL3.SQL.Add('where "con$puc".CODIGO = :CODIGO');
IBSQL3.ParamByName('CODIGO').AsString := CodigoLargo;
Try
  IBSQL3.ExecQuery;
  ValorLargo := IBSQL3.FieldByName('SALDO').AsCurrency;
Except
  MessageDlg('Error al Obtener valor de Corto Plazo',mtError,[mbcancel],0);
  Transaction.Rollback;
  raise;
  Exit;
End;
IBSQL3.Close;
IBSQL3.SQL.Clear;
IBSQL3.SQL.Add('select SUM("con$saldoscuenta".DEBITO - "con$saldoscuenta".CREDITO) AS SALDO');
IBSQL3.SQL.Add('from "con$puc"');
IBSQL3.SQL.Add('left join "con$saldoscuenta" ON ("con$puc".ID_AGENCIA = "con$saldoscuenta".ID_AGENCIA and ');
IBSQL3.SQL.Add('"con$puc".CODIGO = "con$saldoscuenta".CODIGO)');
IBSQL3.SQL.Add('where "con$saldoscuenta".ID_AGENCIA = :ID_AGENCIA and "con$puc".CODIGO = :CODIGO and "con$saldoscuenta".MES <= :MES');
IBSQL3.SQL.Add('group by "con$puc".SALDOINICIAL');
IBSQL3.ParamByName('ID_AGENCIA').AsInteger := Agencia;
IBSQL3.ParamByName('CODIGO').AsString := CodigoLargo;
IBSQL3.ParamByName('MES').AsInteger := Monthof(EdFechaCorte.Date);
Try
  IBSQL3.ExecQuery;
  ValorLargo := ValorLargo + IBSQL3.FieldByName('SALDO').AsCurrency;
Except
  MessageDlg('Error al Obtener valor de Corto Plazo',mtError,[mbcancel],0);
  Transaction.Rollback;
  raise;
  Exit;
End;
//  Comparar Valor y Contabilizar Diferencia
IBSQL3.Close;
IBSQL3.SQL.Clear;
IBSQL3.SQL.Add('select NOMBRE from "con$puc" where CODIGO = :CODIGO');
IBSQL3.ParamByName('CODIGO').AsString := CodigoCorto;
IBSQL3.ExecQuery;
Aplica := False;
If ValorCorto > FieldByName('CORTO').AsCurrency Then
  Begin
    New(AR);
    AR^.codigo := CodigoCorto;
    AR^.centro := 1;
    AR^.nomcuenta := IBSQL3.FieldByName('NOMBRE').AsString;
    AR^.nocuenta := 0;
    AR^.nocredito := '';
    AR^.tipoide := 0;
    AR^.idpersona := '';
    AR^.monto := 0;
    AR^.tasa := 0;
    AR^.estado := 'O';
    AR^.debito := 0;
    AR^.credito := ValorCorto - FieldByName('CORTO').AsCurrency;
    Lista.Add(AR);
    Aplica := True;
  End
Else If ValorCorto < FieldByName('CORTO').AsCurrency Then
       Begin
         New(AR);
         AR^.codigo := CodigoCorto;
         AR^.centro := 1;
         AR^.nomcuenta := IBSQL3.FieldByName('NOMBRE').AsString;
         AR^.nocuenta := 0;
         AR^.nocredito := '';
         AR^.tipoide := 0;
         AR^.idpersona := '';
         AR^.monto := 0;
         AR^.tasa := 0;
         AR^.estado := 'O';
         AR^.credito := 0;
         AR^.debito := FieldByName('CORTO').AsCurrency - ValorCorto;
         Lista.Add(AR);
         Aplica := True;
       End;

IBSQL3.Close;
IBSQL3.ParamByName('CODIGO').AsString := CodigoLargo;
IBSQL3.ExecQuery;
If ValorLargo > FieldByName('LARGO').AsCurrency Then
  Begin
    New(AR);
    AR^.codigo := CodigoLargo;
    AR^.centro := 1;
    AR^.nomcuenta := IBSQL3.FieldByName('NOMBRE').AsString;
    AR^.nocuenta := 0;
    AR^.nocredito := '';
    AR^.tipoide := 0;
    AR^.idpersona := '';
    AR^.monto := 0;
    AR^.tasa := 0;
    AR^.estado := 'O';
    AR^.debito := 0;
    AR^.credito := ValorLargo - FieldByName('LARGO').AsCurrency;
    Lista.Add(AR);
    Aplica := True;
  End
Else If ValorLargo < FieldByName('LARGO').AsCurrency Then
       Begin
         New(AR);
         AR^.codigo := CodigoLargo;
         AR^.centro := 1;
         AR^.nomcuenta := IBSQL3.FieldByName('NOMBRE').AsString;
         AR^.nocuenta := 0;
         AR^.nocredito := '';
         AR^.tipoide := 0;
         AR^.idpersona := '';
         AR^.monto := 0;
         AR^.tasa := 0;
         AR^.estado := 'O';
         AR^.credito := 0;
         AR^.debito := FieldByName('LARGO').AsCurrency - ValorLargo;
         Lista.Add(AR);
       End;
ActualizarGrid;
Next;
End;
// while
End;
// with
IBSQL2.Transaction.Commit;
End;

Procedure TfrmCausacionCarteraDiaria.ActualizarGrid;

Var 
  i: integer;
  ARecord: PList;
  vtotal_debito,vtotal_credito: currency;

Begin
  vtotal_debito := 0;
  vtotal_credito := 0;
  With Lista Do
    If count > 0 Then
      Begin
        xsauxiliar.RowCount := Count+1;
        For i:=0 To (Count - 1) Do
          Begin
            Arecord := Items[i];
            xsauxiliar.ColWidths[0] := 112;
            xsauxiliar.Cells [0,i+1] := arecord^.codigo;
            xsauxiliar.ColWidths[1] := 100;
            xsauxiliar.Cells [1,i+1] := IntToStr(arecord^.centro);
            xsauxiliar.ColWidths[2] := 305;
            xsauxiliar.Cells [2,i+1] := arecord^.nomcuenta;
            xsauxiliar.ColWidths[3] := 110;
            xsauxiliar.Cells [3,i+1] := formatcurr ('#,##0.00',Arecord^.debito);
            vtotal_debito := vtotal_debito + ARecord^.debito;
            xsauxiliar.ColWidths[4] := 110;
            xsauxiliar.Cells [4,i+1] := formatcurr ('#,##0.00',Arecord^.credito);
            vtotal_credito := vtotal_credito + Arecord^.credito;
            edittotaldebito.Text := currtostr(vtotal_debito);
            edittotalcredito.Text := currtostr(vtotal_credito);
          End;
      End
    Else If count = 0 Then
           Begin
             edittotaldebito.Text := '0';
             edittotalcredito.Text := '0';
             xsauxiliar.RowCount := 2;
             xsauxiliar.Cells[0,1] := '';
             xsauxiliar.Cells[1,1] := '';
             xsauxiliar.Cells[2,1] := '';
             xsauxiliar.Cells[3,1] := '';
             xsauxiliar.Cells[4,1] := '';
           End;
  Application.ProcessMessages;
End;

Procedure TfrmCausacionCarteraDiaria.SegundoPasoComprobante;

Var AR: PList;
  Codigo: string;
  Valor: Currency;
  Aplica : Boolean;
Begin
  With IBSQL2 Do
    Begin
      If Transaction.InTransaction Then
        Transaction.Rollback;
      Transaction.StartTransaction;
      Close;
      SQL.Clear;
      SQL.Add('select "col$causaciones".ID_CLASIFICACION, ');
      SQL.Add('"col$causaciones".ID_GARANTIA,"col$causaciones".ID_ARRASTRE, ');
      SQL.Add('SUM("col$causaciones".DEUDA) AS DEUDA');
      SQL.Add('from "col$causaciones"');
      SQL.Add('inner join "col$codigospuc" on ');
      SQL.Add('("col$causaciones".ID_CLASIFICACION = "col$codigospuc".ID_CLASIFICACION and');
      SQL.Add('"col$causaciones".ID_GARANTIA = "col$codigospuc".ID_GARANTIA and');
      SQL.Add('"col$causaciones".ID_ARRASTRE = "col$codigospuc".ID_CATEGORIA)');
      SQL.Add('where ');
      //                 SQL.Add('"col$causaciones".ID_ARRASTRE > '+QuotedStr('A'));
      //                 SQL.Add('and ');
      SQL.Add('"col$causaciones".FECHA_CORTE = :FECHA_CORTE');
      SQL.Add('group by "col$causaciones".ID_CLASIFICACION, "col$causaciones".ID_GARANTIA,');
      SQL.Add('"col$causaciones".ID_ARRASTRE');
      SQL.Add('order by "col$causaciones".ID_CLASIFICACION DESC,"col$causaciones".ID_GARANTIA,');
      SQL.Add('"col$causaciones".ID_ARRASTRE');
      ParamByName('FECHA_CORTE').AsDate := EdFechaCorte.Date;
      Try
        ExecQuery;
      Except
        MessageDlg('Error al Buscar Deuda',mtError,[mbcancel],0);
        Transaction.Rollback;
        raise;
        Exit;
    End;

  // Buscar y Comparar Valores
  While Not Eof Do
    Begin
      // Buscar Codigo Puc
      IBSQL3.Close;
      IBSQL3.SQL.Clear;
      IBSQL3.SQL.Add('select "col$codigospuc".COD_CAPITAL_CP');
      IBSQL3.SQL.Add('from "col$codigospuc" where "col$codigospuc".ID_CLASIFICACION = :ID_CLASIFICACION and ');
      IBSQL3.SQL.Add('"col$codigospuc".ID_GARANTIA = :ID_GARANTIA and "col$codigospuc".ID_CATEGORIA = :ID_CATEGORIA');
      IBSQL3.ParamByName('ID_CLASIFICACION').AsInteger := FieldByName('ID_CLASIFICACION').AsInteger;
      IBSQL3.ParamByName('ID_GARANTIA').AsInteger := fieldbyname('ID_GARANTIA').AsInteger;
      IBSQL3.ParamByName('ID_CATEGORIA').AsString := fieldbyname('ID_ARRASTRE').AsString;
      Try
        IBSQL3.ExecQuery;
        Codigo := IBSQL3.FieldByName('COD_CAPITAL_CP').AsString;
      Except
        MessageDlg('Error Buscando Codigos Corto y Largo Plazo',mtError,[mbcancel],0);
        Transaction.Rollback;
        raise;
        Exit;
    End;
  //  Buscar en Puc Saldos Actuales
  IBSQL3.Close;
  IBSQL3.SQL.Clear;
  IBSQL3.SQL.Add('select "con$puc".SALDOINICIAL AS SALDO');
  IBSQL3.SQL.Add('from "con$puc"');
  IBSQL3.SQL.Add('where "con$puc".CODIGO = :CODIGO');
  IBSQL3.ParamByName('CODIGO').AsString := Codigo;
  Try
    IBSQL3.ExecQuery;
    Valor := IBSQL3.FieldByName('SALDO').AsCurrency;
  Except
    MessageDlg('Error al Obtener valor de Corto Plazo',mtError,[mbcancel],0);
    Transaction.Rollback;
    raise;
    Exit;
End;
IBSQL3.Close;
IBSQL3.SQL.Clear;
IBSQL3.SQL.Add('select SUM("con$saldoscuenta".DEBITO - "con$saldoscuenta".CREDITO) AS SALDO');
IBSQL3.SQL.Add('from "con$puc"');
IBSQL3.SQL.Add('left join "con$saldoscuenta" ON ("con$puc".ID_AGENCIA = "con$saldoscuenta".ID_AGENCIA and ');
IBSQL3.SQL.Add('"con$puc".CODIGO = "con$saldoscuenta".CODIGO)');
IBSQL3.SQL.Add('where "con$saldoscuenta".ID_AGENCIA = :ID_AGENCIA and "con$puc".CODIGO = :CODIGO and "con$saldoscuenta".MES <= :MES');
IBSQL3.SQL.Add('group by "con$puc".SALDOINICIAL');
IBSQL3.ParamByName('ID_AGENCIA').AsInteger := Agencia;
IBSQL3.ParamByName('CODIGO').AsString := Codigo;
IBSQL3.ParamByName('MES').AsInteger := Monthof(EdFechaCorte.Date);
Try
  IBSQL3.ExecQuery;
  Valor := Valor + IBSQL3.FieldByName('SALDO').AsCurrency;
Except
  MessageDlg('Error al Obtener valor de Corto Plazo',mtError,[mbcancel],0);
  Transaction.Rollback;
  raise;
  Exit;
End;
//Comparar Saldos y Contabilizar

IBSQL3.Close;
IBSQL3.SQL.Clear;
IBSQL3.SQL.Add('select NOMBRE from "con$puc" where CODIGO = :CODIGO');
IBSQL3.ParamByName('CODIGO').AsString := Codigo;
IBSQL3.ExecQuery;
Aplica := False;
If Valor > FieldByName('DEUDA').AsCurrency Then
  Begin
    New(AR);
    AR^.codigo := Codigo;
    AR^.centro := 1;
    AR^.nomcuenta := IBSQL3.FieldByName('NOMBRE').AsString;
    AR^.nocuenta := 0;
    AR^.nocredito := '';
    AR^.tipoide := 0;
    AR^.idpersona := '';
    AR^.monto := 0;
    AR^.tasa := 0;
    AR^.estado := 'O';
    AR^.debito := 0;
    AR^.credito := Valor - FieldByName('DEUDA').AsCurrency;
    Lista.Add(AR);
    Aplica := True;
  End
Else If Valor < FieldByName('DEUDA').AsCurrency Then
       Begin
         New(AR);
         AR^.codigo := Codigo;
         AR^.centro := 1;
         AR^.nomcuenta := IBSQL3.FieldByName('NOMBRE').AsString;
         AR^.nocuenta := 0;
         AR^.nocredito := '';
         AR^.tipoide := 0;
         AR^.idpersona := '';
         AR^.monto := 0;
         AR^.tasa := 0;
         AR^.estado := 'O';
         AR^.credito := 0;
         AR^.debito := FieldByName('DEUDA').AsCurrency - Valor;
         Lista.Add(AR);
         Aplica := True;
       End;
ActualizarGrid;
Next;
End;
// while
End;
// with
IBSQL2.Transaction.Commit;

// Ajuste Costas
With IBSQL2 Do
  Begin
    If Transaction.InTransaction Then
      Transaction.Rollback;
    Transaction.StartTransaction;
    Close;
    SQL.Clear;
    SQL.Add('select "col$causaciones".ID_CLASIFICACION, ');
    SQL.Add('"col$causaciones".ID_ARRASTRE, ');
    SQL.Add('SUM("col$causaciones".COSTAS) AS COSTAS');
    SQL.Add('from "col$causaciones"');
    SQL.Add('inner join "col$codigospuc" on ');
    SQL.Add('("col$causaciones".ID_CLASIFICACION = "col$codigospuc".ID_CLASIFICACION and');
    SQL.Add('"col$causaciones".ID_GARANTIA = "col$codigospuc".ID_GARANTIA and');
    SQL.Add('"col$causaciones".ID_ARRASTRE = "col$codigospuc".ID_CATEGORIA)');
    SQL.Add('where "col$causaciones".FECHA_CORTE = :FECHA_CORTE');
    SQL.Add('group by "col$causaciones".ID_CLASIFICACION,');
    SQL.Add('"col$causaciones".ID_ARRASTRE');
    SQL.Add('order by "col$causaciones".ID_CLASIFICACION DESC,');
    SQL.Add('"col$causaciones".ID_ARRASTRE');
    ParamByName('FECHA_CORTE').AsDate := EdFechaCorte.Date;
    Try
      ExecQuery;
    Except
      MessageDlg('Error al Buscar Deuda',mtError,[mbcancel],0);
      Transaction.Rollback;
      raise;
      Exit;
  End;

// Buscar y Comparar Valores
While Not Eof Do
  Begin
    // Buscar Codigo Puc
    IBSQL3.Close;
    IBSQL3.SQL.Clear;
    IBSQL3.SQL.Add('select "col$codigospuc".COD_COSTAS');
    IBSQL3.SQL.Add('from "col$codigospuc" where "col$codigospuc".ID_CLASIFICACION = :ID_CLASIFICACION and ');
    IBSQL3.SQL.Add('"col$codigospuc".ID_GARANTIA = :ID_GARANTIA and "col$codigospuc".ID_CATEGORIA = :ID_CATEGORIA');
    IBSQL3.ParamByName('ID_CLASIFICACION').AsInteger := FieldByName('ID_CLASIFICACION').AsInteger;
    IBSQL3.ParamByName('ID_GARANTIA').AsInteger := 1;
    IBSQL3.ParamByName('ID_CATEGORIA').AsString := fieldbyname('ID_ARRASTRE').AsString;
    Try
      IBSQL3.ExecQuery;
      Codigo := IBSQL3.FieldByName('COD_COSTAS').AsString;
    Except
      MessageDlg('Error Buscando Codigos Costas',mtError,[mbcancel],0);
      Transaction.Rollback;
      raise;
      Exit;
  End;
//  Buscar en Puc Saldos Actuales
IBSQL3.Close;
IBSQL3.SQL.Clear;
IBSQL3.SQL.Add('select "con$puc".SALDOINICIAL AS SALDO');
IBSQL3.SQL.Add('from "con$puc"');
IBSQL3.SQL.Add('where "con$puc".CODIGO = :CODIGO');
IBSQL3.ParamByName('CODIGO').AsString := Codigo;
Try
  IBSQL3.ExecQuery;
  Valor := IBSQL3.FieldByName('SALDO').AsCurrency;
Except
  MessageDlg('Error al Obtener valor de Costas Actuales',mtError,[mbcancel],0);
  Transaction.Rollback;
  raise;
  Exit;
End;
IBSQL3.Close;
IBSQL3.SQL.Clear;
IBSQL3.SQL.Add('select SUM("con$saldoscuenta".DEBITO - "con$saldoscuenta".CREDITO) AS SALDO');
IBSQL3.SQL.Add('from "con$puc"');
IBSQL3.SQL.Add('left join "con$saldoscuenta" ON ("con$puc".ID_AGENCIA = "con$saldoscuenta".ID_AGENCIA and ');
IBSQL3.SQL.Add('"con$puc".CODIGO = "con$saldoscuenta".CODIGO)');
IBSQL3.SQL.Add('where "con$saldoscuenta".ID_AGENCIA = :ID_AGENCIA and "con$puc".CODIGO = :CODIGO and "con$saldoscuenta".MES <= :MES');
IBSQL3.SQL.Add('group by "con$puc".SALDOINICIAL');
IBSQL3.ParamByName('ID_AGENCIA').AsInteger := Agencia;
IBSQL3.ParamByName('CODIGO').AsString := Codigo;
IBSQL3.ParamByName('MES').AsInteger := Monthof(EdFechaCorte.Date);
Try
  IBSQL3.ExecQuery;
  Valor := Valor + IBSQL3.FieldByName('SALDO').AsCurrency;
Except
  MessageDlg('Error al Obtener valor de Costas Actuales',mtError,[mbcancel],0);
  Transaction.Rollback;
  raise;
  Exit;
End;
//Comparar Saldos y Contabilizar

IBSQL3.Close;
IBSQL3.SQL.Clear;
IBSQL3.SQL.Add('select NOMBRE from "con$puc" where CODIGO = :CODIGO');
IBSQL3.ParamByName('CODIGO').AsString := Codigo;
IBSQL3.ExecQuery;
Aplica := False;
If Valor > FieldByName('COSTAS').AsCurrency Then
  Begin
    New(AR);
    AR^.codigo := Codigo;
    AR^.centro := 1;
    AR^.nomcuenta := IBSQL3.FieldByName('NOMBRE').AsString;
    AR^.nocuenta := 0;
    AR^.nocredito := '';
    AR^.tipoide := 0;
    AR^.idpersona := '';
    AR^.monto := 0;
    AR^.tasa := 0;
    AR^.estado := 'O';
    AR^.debito := 0;
    AR^.credito := Valor - FieldByName('COSTAS').AsCurrency;
    Lista.Add(AR);
    Aplica := True;
  End
Else If Valor < FieldByName('COSTAS').AsCurrency Then
       Begin
         New(AR);
         AR^.codigo := Codigo;
         AR^.centro := 1;
         AR^.nomcuenta := IBSQL3.FieldByName('NOMBRE').AsString;
         AR^.nocuenta := 0;
         AR^.nocredito := '';
         AR^.tipoide := 0;
         AR^.idpersona := '';
         AR^.monto := 0;
         AR^.tasa := 0;
         AR^.estado := 'O';
         AR^.credito := 0;
         AR^.debito := FieldByName('COSTAS').AsCurrency - Valor;
         Lista.Add(AR);
         Aplica := True;
       End;
ActualizarGrid;
Next;
End;
// while
End;
// with
IBSQL2.Transaction.Commit;

End;

Procedure TfrmCausacionCarteraDiaria.TercerPasoComprobante;

Var AR: PList;
  Valor: Currency;
  Codigo: string;
  Comercial,Consumo,Vivienda,Microcredito: Currency;
  Aplica : Boolean;
Begin
  Comercial    := 0;
  Consumo      := 0;
  Vivienda     := 0;
  Microcredito := 0;
  With IBSQL2 Do
    Begin
      If Transaction.InTransaction Then
        Transaction.Rollback;
      Transaction.StartTransaction;
      Close;
      SQL.Clear;
      SQL.Add('select "col$causaciones".ID_CLASIFICACION, ');
      SQL.Add('"col$causaciones".ID_ARRASTRE, ');
      SQL.Add('SUM("col$causaciones".CAUSADOS) AS CAUSADOS');
      SQL.Add('from "col$causaciones"');
      SQL.Add('inner join "col$codigospuc" on ');
      SQL.Add('("col$causaciones".ID_CLASIFICACION = "col$codigospuc".ID_CLASIFICACION and');
      SQL.Add('"col$causaciones".ID_GARANTIA = "col$codigospuc".ID_GARANTIA and');
      SQL.Add('"col$causaciones".ID_ARRASTRE = "col$codigospuc".ID_CATEGORIA)');
      SQL.Add('where "col$causaciones".FECHA_CORTE = :FECHA_CORTE');
      SQL.Add('group by "col$causaciones".ID_CLASIFICACION,');
      SQL.Add('"col$causaciones".ID_ARRASTRE');
      SQL.Add('order by "col$causaciones".ID_CLASIFICACION DESC,');
      SQL.Add('"col$causaciones".ID_ARRASTRE');
      ParamByName('FECHA_CORTE').AsDate := EdFechaCorte.Date;
      Try
        ExecQuery;
      Except
        MessageDlg('Error al Buscar Deuda',mtError,[mbcancel],0);
        Transaction.Rollback;
        raise;
        Exit;
    End;

  // Buscar y Comparar Valores
  While Not Eof Do
    Begin
      // Buscar Codigo Puc
      IBSQL3.Close;
      IBSQL3.SQL.Clear;
      IBSQL3.SQL.Add('select "col$codigospuc".COD_CXC');
      IBSQL3.SQL.Add('from "col$codigospuc" where "col$codigospuc".ID_CLASIFICACION = :ID_CLASIFICACION and ');
      IBSQL3.SQL.Add('"col$codigospuc".ID_GARANTIA = :ID_GARANTIA and "col$codigospuc".ID_CATEGORIA = :ID_CATEGORIA');
      IBSQL3.ParamByName('ID_CLASIFICACION').AsInteger := FieldByName('ID_CLASIFICACION').AsInteger;
      IBSQL3.ParamByName('ID_GARANTIA').AsInteger := 1;
      IBSQL3.ParamByName('ID_CATEGORIA').AsString := fieldbyname('ID_ARRASTRE').AsString;
      Try
        IBSQL3.ExecQuery;
        Codigo := IBSQL3.FieldByName('COD_CXC').AsString;
      Except
        MessageDlg('Error Buscando Codigos Interes Causado',mtError,[mbcancel],0);
        Transaction.Rollback;
        raise;
        Exit;
    End;
  //  Buscar en Puc Saldos Actuales
  IBSQL3.Close;
  IBSQL3.SQL.Clear;
  IBSQL3.SQL.Add('select "con$puc".SALDOINICIAL AS SALDO');
  IBSQL3.SQL.Add('from "con$puc"');
  IBSQL3.SQL.Add('where "con$puc".CODIGO = :CODIGO');
  IBSQL3.ParamByName('CODIGO').AsString := Codigo;
  Try
    IBSQL3.ExecQuery;
    Valor := IBSQL3.FieldByName('SALDO').AsCurrency;
  Except
    MessageDlg('Error al Obtener valor de Corto Plazo',mtError,[mbcancel],0);
    Transaction.Rollback;
    raise;
    Exit;
End;
IBSQL3.Close;
IBSQL3.SQL.Clear;
IBSQL3.SQL.Add('select SUM("con$saldoscuenta".DEBITO - "con$saldoscuenta".CREDITO) AS SALDO');
IBSQL3.SQL.Add('from "con$puc"');
IBSQL3.SQL.Add('left join "con$saldoscuenta" ON ("con$puc".ID_AGENCIA = "con$saldoscuenta".ID_AGENCIA and ');
IBSQL3.SQL.Add('"con$puc".CODIGO = "con$saldoscuenta".CODIGO)');
IBSQL3.SQL.Add('where "con$saldoscuenta".ID_AGENCIA = :ID_AGENCIA and "con$puc".CODIGO = :CODIGO and "con$saldoscuenta".MES <= :MES');
IBSQL3.SQL.Add('group by "con$puc".SALDOINICIAL');
IBSQL3.ParamByName('ID_AGENCIA').AsInteger := Agencia;
IBSQL3.ParamByName('CODIGO').AsString := Codigo;
IBSQL3.ParamByName('MES').AsInteger := Monthof(EdFechaCorte.Date);
Try
  IBSQL3.ExecQuery;
  Valor := Valor + IBSQL3.FieldByName('SALDO').AsCurrency;
Except
  MessageDlg('Error al Obtener valor de Corto Plazo',mtError,[mbcancel],0);
  Transaction.Rollback;
  raise;
  Exit;
End;
//Comparar Saldos y Contabilizar

IBSQL3.Close;
IBSQL3.SQL.Clear;
IBSQL3.SQL.Add('select NOMBRE from "con$puc" where CODIGO = :CODIGO');
IBSQL3.ParamByName('CODIGO').AsString := Codigo;
IBSQL3.ExecQuery;
Aplica := False;
If Valor > FieldByName('CAUSADOS').AsCurrency Then
  Begin
    New(AR);
    AR^.codigo := Codigo;
    AR^.centro := 1;
    AR^.nomcuenta := IBSQL3.FieldByName('NOMBRE').AsString;
    AR^.nocuenta := 0;
    AR^.nocredito := '';
    AR^.tipoide := 0;
    AR^.idpersona := '';
    AR^.monto := 0;
    AR^.tasa := 0;
    AR^.estado := 'O';
    AR^.debito := 0;
    AR^.credito := Valor - FieldByName('CAUSADOS').AsCurrency;
    Lista.Add(AR);
    Aplica := True;
  End
Else If Valor < FieldByName('CAUSADOS').AsCurrency Then
       Begin
         New(AR);
         AR^.codigo := Codigo;
         AR^.centro := 1;
         AR^.nomcuenta := IBSQL3.FieldByName('NOMBRE').AsString;
         AR^.nocuenta := 0;
         AR^.nocredito := '';
         AR^.tipoide := 0;
         AR^.idpersona := '';
         AR^.monto := 0;
         AR^.tasa := 0;
         AR^.estado := 'O';
         AR^.credito := 0;
         AR^.debito := FieldByName('CAUSADOS').AsCurrency - Valor;
         Lista.Add(AR);
         Aplica := True;
       End;
If Aplica Then
  If FieldByName('ID_CLASIFICACION').AsInteger = 1 Then
    Comercial := Comercial - ar^.debito + ar^.credito
Else If FieldByName('ID_CLASIFICACION').AsInteger = 2 Then
       Consumo := Consumo + ar^.credito - ar^.debito
Else If FieldByName('ID_CLASIFICACION').AsInteger = 3 Then
       Vivienda := Vivienda + ar^.credito - ar^.debito
Else If FieldByName('ID_CLASIFICACION').AsInteger = 4 Then
       Microcredito := Microcredito + ar^.credito - ar^.debito;
ActualizarGrid;
Next;
End;
// while
End;
// with
Codigo := '415005000000000000';
IBSQL3.SQL.Clear;
IBSQL3.SQL.Add('select NOMBRE from "con$puc" where CODIGO = :CODIGO');

If Comercial <> 0 Then
  Begin
    New(ar);
    IBSQL3.Close;
    IBSQL3.ParamByName('CODIGO').AsString := Codigo;
    IBSQL3.ExecQuery;
    AR^.codigo := Codigo;
    AR^.centro := 1;
    AR^.nomcuenta := IBSQL3.FieldByName('NOMBRE').AsString;
    AR^.nocuenta := 0;
    AR^.nocredito := '';
    AR^.tipoide := 0;
    AR^.idpersona := '';
    AR^.monto := 0;
    AR^.tasa := 0;
    AR^.estado := 'O';
    If Comercial < 0 Then
      Begin
        AR^.credito := -Comercial;
        AR^.debito := 0;
      End
    Else
      Begin
        AR^.debito := Comercial;
        AR^.credito := 0;
      End;
    Lista.Add(AR);
  End;

Codigo := '415010000000000000';
If Consumo <> 0 Then
  Begin
    New(ar);
    IBSQL3.Close;
    IBSQL3.ParamByName('CODIGO').AsString := Codigo;
    IBSQL3.ExecQuery;
    AR^.codigo := Codigo;
    AR^.centro := 1;
    AR^.nomcuenta := IBSQL3.FieldByName('NOMBRE').AsString;
    AR^.nocuenta := 0;
    AR^.nocredito := '';
    AR^.tipoide := 0;
    AR^.idpersona := '';
    AR^.monto := 0;
    AR^.tasa := 0;
    AR^.estado := 'O';
    If Consumo < 0 Then
      Begin
        AR^.credito := -Consumo;
        AR^.debito := 0;
      End
    Else
      Begin
        AR^.debito := Consumo;
        AR^.credito := 0;
      End;
    Lista.Add(AR);
  End;

Codigo := '415015000000000000';
If Vivienda <> 0 Then
  Begin
    New(ar);
    IBSQL3.Close;
    IBSQL3.ParamByName('CODIGO').AsString := Codigo;
    IBSQL3.ExecQuery;
    AR^.codigo := Codigo;
    AR^.centro := 1;
    AR^.nomcuenta := IBSQL3.FieldByName('NOMBRE').AsString;
    AR^.nocuenta := 0;
    AR^.nocredito := '';
    AR^.tipoide := 0;
    AR^.idpersona := '';
    AR^.monto := 0;
    AR^.tasa := 0;
    AR^.estado := 'O';
    If Vivienda < 0 Then
      Begin
        AR^.credito := -Vivienda;
        AR^.debito := 0;
      End
    Else
      Begin
        AR^.debito := Vivienda;
        AR^.credito := 0;
      End;
    Lista.Add(AR);
  End;
Actualizargrid;
IBSQL2.Transaction.Commit;
End;

Procedure TfrmCausacionCarteraDiaria.CuartoPasoComprobante;

Var AR: PList;
  Valor: Currency;
  Codigo: string;
  Comercial,Consumo,Vivienda,Microcredito: Currency;
  Aplica : Boolean;
Begin
  Comercial    := 0;
  Consumo      := 0;
  Vivienda     := 0;
  Microcredito := 0;
  With IBSQL2 Do
    Begin
      If Transaction.InTransaction Then
        Transaction.Rollback;
      Transaction.StartTransaction;
      Close;
      SQL.Clear;
      SQL.Add('select "col$causaciones".ID_CLASIFICACION, ');
      SQL.Add('"col$causaciones".ID_GARANTIA,"col$causaciones".ID_ARRASTRE, ');
      SQL.Add('SUM("col$causaciones".PCAPITAL) AS PCAPITAL');
      SQL.Add('from "col$causaciones"');
      SQL.Add('inner join "col$codigospuc" on ');
      SQL.Add('("col$causaciones".ID_CLASIFICACION = "col$codigospuc".ID_CLASIFICACION and');
      SQL.Add('"col$causaciones".ID_GARANTIA = "col$codigospuc".ID_GARANTIA and');
      SQL.Add('"col$causaciones".ID_ARRASTRE = "col$codigospuc".ID_CATEGORIA)');
      SQL.Add('where "col$causaciones".FECHA_CORTE = :FECHA_CORTE');
      SQL.Add('group by "col$causaciones".ID_CLASIFICACION, "col$causaciones".ID_GARANTIA,');
      SQL.Add('"col$causaciones".ID_ARRASTRE');
      SQL.Add('order by "col$causaciones".ID_CLASIFICACION DESC,"col$causaciones".ID_GARANTIA,');
      SQL.Add('"col$causaciones".ID_ARRASTRE');
      ParamByName('FECHA_CORTE').AsDate := EdFechaCorte.Date;
      Try
        ExecQuery;
      Except
        MessageDlg('Error al Buscar Deuda',mtError,[mbcancel],0);
        Transaction.Rollback;
        raise;
        Exit;
    End;

  // Buscar y Comparar Valores
  While Not Eof Do
    Begin
      // Buscar Codigo Puc
      IBSQL3.Close;
      IBSQL3.SQL.Clear;
      IBSQL3.SQL.Add('select "col$codigospuc".COD_PROV_CAPITAL');
      IBSQL3.SQL.Add('from "col$codigospuc" where "col$codigospuc".ID_CLASIFICACION = :ID_CLASIFICACION and ');
      IBSQL3.SQL.Add('"col$codigospuc".ID_GARANTIA = :ID_GARANTIA and "col$codigospuc".ID_CATEGORIA = :ID_CATEGORIA');
      IBSQL3.ParamByName('ID_CLASIFICACION').AsInteger := FieldByName('ID_CLASIFICACION').AsInteger;
      IBSQL3.ParamByName('ID_GARANTIA').AsInteger := fieldbyname('ID_GARANTIA').AsInteger;
      IBSQL3.ParamByName('ID_CATEGORIA').AsString := fieldbyname('ID_ARRASTRE').AsString;
      Try
        IBSQL3.ExecQuery;
        Codigo := IBSQL3.FieldByName('COD_PROV_CAPITAL').AsString;
      Except
        MessageDlg('Error Buscando Codigo Provision Capital',mtError,[mbcancel],0);
        Transaction.Rollback;
        raise;
        Exit;
    End;
  //  Buscar en Puc Saldos Actuales
  IBSQL3.Close;
  IBSQL3.SQL.Clear;
  IBSQL3.SQL.Add('select "con$puc".SALDOINICIAL AS SALDO');
  IBSQL3.SQL.Add('from "con$puc"');
  IBSQL3.SQL.Add('where "con$puc".CODIGO = :CODIGO');
  IBSQL3.ParamByName('CODIGO').AsString := Codigo;
  Try
    IBSQL3.ExecQuery;
    Valor := IBSQL3.FieldByName('SALDO').AsCurrency;
  Except
    MessageDlg('Error al Obtener valor de Corto Plazo',mtError,[mbcancel],0);
    Transaction.Rollback;
    raise;
    Exit;
End;
IBSQL3.Close;
IBSQL3.SQL.Clear;
IBSQL3.SQL.Add('select SUM("con$saldoscuenta".DEBITO - "con$saldoscuenta".CREDITO) AS SALDO');
IBSQL3.SQL.Add('from "con$puc"');
IBSQL3.SQL.Add('left join "con$saldoscuenta" ON ("con$puc".ID_AGENCIA = "con$saldoscuenta".ID_AGENCIA and ');
IBSQL3.SQL.Add('"con$puc".CODIGO = "con$saldoscuenta".CODIGO)');
IBSQL3.SQL.Add('where "con$saldoscuenta".ID_AGENCIA = :ID_AGENCIA and "con$puc".CODIGO = :CODIGO and "con$saldoscuenta".MES <= :MES');
IBSQL3.SQL.Add('group by "con$puc".SALDOINICIAL');
IBSQL3.ParamByName('ID_AGENCIA').AsInteger := Agencia;
IBSQL3.ParamByName('CODIGO').AsString := Codigo;
IBSQL3.ParamByName('MES').AsInteger := Monthof(EdFechaCorte.Date);
Try
  IBSQL3.ExecQuery;
  Valor := Valor + IBSQL3.FieldByName('SALDO').AsCurrency;
Except
  MessageDlg('Error al Obtener valor de Corto Plazo',mtError,[mbcancel],0);
  Transaction.Rollback;
  raise;
  Exit;
End;
//Comparar Saldos y Contabilizar

IBSQL3.Close;
IBSQL3.SQL.Clear;
IBSQL3.SQL.Add('select NOMBRE from "con$puc" where CODIGO = :CODIGO');
IBSQL3.ParamByName('CODIGO').AsString := Codigo;
IBSQL3.ExecQuery;
Aplica := False;
If Valor > (-FieldByName('PCAPITAL').AsCurrency) Then
  Begin
    New(AR);
    AR^.codigo := Codigo;
    AR^.centro := 1;
    AR^.nomcuenta := IBSQL3.FieldByName('NOMBRE').AsString;
    AR^.nocuenta := 0;
    AR^.nocredito := '';
    AR^.tipoide := 0;
    AR^.idpersona := '';
    AR^.monto := 0;
    AR^.tasa := 0;
    AR^.estado := 'O';
    AR^.debito := 0;
    AR^.credito := Valor - -FieldByName('PCAPITAL').AsCurrency;
    Lista.Add(AR);
    Aplica := True;
  End
Else If Valor < (-FieldByName('PCAPITAL').AsCurrency) Then
       Begin
         New(AR);
         AR^.codigo := Codigo;
         AR^.centro := 1;
         AR^.nomcuenta := IBSQL3.FieldByName('NOMBRE').AsString;
         AR^.nocuenta := 0;
         AR^.nocredito := '';
         AR^.tipoide := 0;
         AR^.idpersona := '';
         AR^.monto := 0;
         AR^.tasa := 0;
         AR^.estado := 'O';
         AR^.credito := 0;
         AR^.debito := -FieldByName('PCAPITAL').AsCurrency - Valor;
         Lista.Add(AR);
         Aplica := True;
       End;
If Aplica Then
  If FieldByName('ID_CLASIFICACION').AsInteger = 1 Then
    Comercial := Comercial + ar^.debito - ar^.credito
Else If FieldByName('ID_CLASIFICACION').AsInteger = 2 Then
       Consumo := Consumo + ar^.debito - ar^.credito
Else If FieldByName('ID_CLASIFICACION').AsInteger = 3 Then
       Vivienda := Vivienda + ar^.debito - ar^.credito
Else If FieldByName('ID_CLASIFICACION').AsInteger = 4 Then
       Microcredito := Microcredito + ar^.debito - ar^.credito;
ActualizarGrid;
Next;
End;
// while
End;
// with
Codigo := '511510000000000000';
IBSQL3.SQL.Clear;
IBSQL3.SQL.Add('select NOMBRE from "con$puc" where CODIGO = :CODIGO');

If Comercial <> 0 Then
  Begin
    New(ar);
    IBSQL3.Close;
    IBSQL3.ParamByName('CODIGO').AsString := Codigo;
    IBSQL3.ExecQuery;
    AR^.codigo := Codigo;
    AR^.centro := 1;
    AR^.nomcuenta := IBSQL3.FieldByName('NOMBRE').AsString;
    AR^.nocuenta := 0;
    AR^.nocredito := '';
    AR^.tipoide := 0;
    AR^.idpersona := '';
    AR^.monto := 0;
    AR^.tasa := 0;
    AR^.estado := 'O';
    If Comercial < 0 Then
      Begin
        AR^.debito := -Comercial;
        AR^.credito := 0;
      End
    Else
      Begin
        AR^.credito := Comercial;
        AR^.debito := 0;
      End;
    Lista.Add(AR);
  End;

Codigo := '511515000000000000';
If Consumo <> 0 Then
  Begin
    New(ar);
    IBSQL3.Close;
    IBSQL3.ParamByName('CODIGO').AsString := Codigo;
    IBSQL3.ExecQuery;
    AR^.codigo := Codigo;
    AR^.centro := 1;
    AR^.nomcuenta := IBSQL3.FieldByName('NOMBRE').AsString;
    AR^.nocuenta := 0;
    AR^.nocredito := '';
    AR^.tipoide := 0;
    AR^.idpersona := '';
    AR^.monto := 0;
    AR^.tasa := 0;
    AR^.estado := 'O';
    If Consumo < 0 Then
      Begin
        AR^.debito := -Consumo;
        AR^.credito := 0;
      End
    Else
      Begin
        AR^.credito := Consumo;
        AR^.debito := 0;
      End;
    Lista.Add(AR);
  End;

Codigo := '511520000000000000';
If Vivienda <> 0 Then
  Begin
    New(ar);
    IBSQL3.Close;
    IBSQL3.ParamByName('CODIGO').AsString := Codigo;
    IBSQL3.ExecQuery;
    AR^.codigo := Codigo;
    AR^.centro := 1;
    AR^.nomcuenta := IBSQL3.FieldByName('NOMBRE').AsString;
    AR^.nocuenta := 0;
    AR^.nocredito := '';
    AR^.tipoide := 0;
    AR^.idpersona := '';
    AR^.monto := 0;
    AR^.tasa := 0;
    AR^.estado := 'O';
    If Vivienda < 0 Then
      Begin
        AR^.debito := -Vivienda;
        AR^.credito := 0;
      End
    Else
      Begin
        AR^.credito := Vivienda;
        AR^.debito := 0;
      End;
    Lista.Add(AR);
  End;
Actualizargrid;
IBSQL3.Transaction.Commit;
End;

Procedure TfrmCausacionCarteraDiaria.SextoPasoComprobante;

Var AR: PList;
  Valor: Currency;
  Codigo: string;
  Colocaciones: Currency;
  Aplica : Boolean;
Begin
  Colocaciones    := 0;
  With IBSQL2 Do
    Begin
      If Transaction.InTransaction Then
        Transaction.Rollback;
      Transaction.StartTransaction;
      Close;
      SQL.Clear;
      SQL.Add('select SUM("col$causaciones".DEUDA) AS DEUDA ');
      SQL.Add('from "col$causaciones"');
      SQL.Add('where "col$causaciones".FECHA_CORTE = :FECHA_CORTE');
      ParamByName('FECHA_CORTE').AsDate := EdFechaCorte.Date;
      Try
        ExecQuery;
        Valor := FieldByName('DEUDA').AsCurrency;
      Except
        MessageDlg('Error al Buscar Deuda',mtError,[mbcancel],0);
        Transaction.Rollback;
        raise;
        Exit;
    End;

  Colocaciones := SimpleRoundTo((Valor * 0.01),0);
  // Validar Contra Saldo Actual
  Codigo := '149810000000000000';
  //  Buscar en Puc Saldos Actuales
  IBSQL3.Close;
  IBSQL3.SQL.Clear;
  IBSQL3.SQL.Add('select "con$puc".SALDOINICIAL AS SALDO');
  IBSQL3.SQL.Add('from "con$puc"');
  IBSQL3.SQL.Add('where "con$puc".CODIGO = :CODIGO');
  IBSQL3.ParamByName('CODIGO').AsString := Codigo;
  Try
    IBSQL3.ExecQuery;
    Valor := IBSQL3.FieldByName('SALDO').AsCurrency;
  Except
    MessageDlg('Error al Obtener valor de Provision General',mtError,[mbcancel],0);
    Transaction.Rollback;
    raise;
    Exit;
End;
IBSQL3.Close;
IBSQL3.SQL.Clear;
IBSQL3.SQL.Add('select SUM("con$saldoscuenta".DEBITO - "con$saldoscuenta".CREDITO) AS SALDO');
IBSQL3.SQL.Add('from "con$puc"');
IBSQL3.SQL.Add('left join "con$saldoscuenta" ON ("con$puc".ID_AGENCIA = "con$saldoscuenta".ID_AGENCIA and ');
IBSQL3.SQL.Add('"con$puc".CODIGO = "con$saldoscuenta".CODIGO)');
IBSQL3.SQL.Add('where "con$saldoscuenta".ID_AGENCIA = :ID_AGENCIA and "con$puc".CODIGO = :CODIGO and "con$saldoscuenta".MES <= :MES');
IBSQL3.SQL.Add('group by "con$puc".SALDOINICIAL');
IBSQL3.ParamByName('ID_AGENCIA').AsInteger := Agencia;
IBSQL3.ParamByName('CODIGO').AsString := Codigo;
IBSQL3.ParamByName('MES').AsInteger := Monthof(EdFechaCorte.Date);
Try
  IBSQL3.ExecQuery;
  Valor := Valor + IBSQL3.FieldByName('SALDO').AsCurrency;
Except
  MessageDlg('Error al Obtener valor de Corto Plazo',mtError,[mbcancel],0);
  Transaction.Rollback;
  raise;
  Exit;
End;
//Comparar Saldos y Contabilizar

IBSQL3.Close;
IBSQL3.SQL.Clear;
IBSQL3.SQL.Add('select NOMBRE from "con$puc" where CODIGO = :CODIGO');
IBSQL3.ParamByName('CODIGO').AsString := Codigo;
IBSQL3.ExecQuery;
Aplica := False;
If Valor > (-Colocaciones) Then
  Begin
    New(AR);
    AR^.codigo := Codigo;
    AR^.centro := 1;
    AR^.nomcuenta := IBSQL3.FieldByName('NOMBRE').AsString;
    AR^.nocuenta := 0;
    AR^.nocredito := '';
    AR^.tipoide := 0;
    AR^.idpersona := '';
    AR^.monto := 0;
    AR^.tasa := 0;
    AR^.estado := 'O';
    AR^.debito := 0;
    AR^.credito := Valor - -Colocaciones;
    Lista.Add(AR);
    Aplica := True;
  End
Else If Valor < (-Colocaciones) Then
       Begin
         New(AR);
         AR^.codigo := Codigo;
         AR^.centro := 1;
         AR^.nomcuenta := IBSQL3.FieldByName('NOMBRE').AsString;
         AR^.nocuenta := 0;
         AR^.nocredito := '';
         AR^.tipoide := 0;
         AR^.idpersona := '';
         AR^.monto := 0;
         AR^.tasa := 0;
         AR^.estado := 'O';
         AR^.credito := 0;
         AR^.debito := -Colocaciones - Valor;
         Lista.Add(AR);
         Aplica := True;
       End;
Valor := ar^.debito - AR^.credito;

Codigo := '511524000000000000';
IBSQL3.SQL.Clear;
IBSQL3.SQL.Add('select NOMBRE from "con$puc" where CODIGO = :CODIGO');

If Valor <> 0 Then
  Begin
    New(ar);
    IBSQL3.Close;
    IBSQL3.ParamByName('CODIGO').AsString := Codigo;
    IBSQL3.ExecQuery;
    AR^.codigo := Codigo;
    AR^.centro := 1;
    AR^.nomcuenta := IBSQL3.FieldByName('NOMBRE').AsString;
    AR^.nocuenta := 0;
    AR^.nocredito := '';
    AR^.tipoide := 0;
    AR^.idpersona := '';
    AR^.monto := 0;
    AR^.tasa := 0;
    AR^.estado := 'O';
    If Valor < 0 Then
      Begin
        AR^.debito := -Valor;
        AR^.credito := 0;
      End
    Else
      Begin
        AR^.credito := Valor;
        AR^.debito := 0;
      End;
    Lista.Add(AR);
  End;
End;
actualizargrid;
IBSQL3.Transaction.Commit;
End;

Procedure TfrmCausacionCarteraDiaria.SeptimoPasoComprobante;

Var AR: PList;
  Valor: Currency;
  Codigo: string;
  Comercial,Consumo,Vivienda,Microcredito: Currency;
  Aplica : Boolean;
Begin
  Comercial    := 0;
  Consumo      := 0;
  Vivienda     := 0;
  Microcredito := 0;
  With IBSQL2 Do
    Begin
      If Transaction.InTransaction Then
        Transaction.Rollback;
      Transaction.StartTransaction;
      Close;
      SQL.Clear;
      SQL.Add('select "col$causaciones".ID_CLASIFICACION,MAX("col$codigospuc".COD_INT_ANT) AS COD_INT_ANT,');
      SQL.Add('SUM("col$causaciones".ANTICIPADOS) AS ANTICIPADOS');
      SQL.Add('from "col$causaciones"');
      SQL.Add('inner join "col$codigospuc" on');
      SQL.Add('("col$causaciones".ID_CLASIFICACION = "col$codigospuc".ID_CLASIFICACION and');
      SQL.Add('"col$causaciones".ID_GARANTIA = "col$codigospuc".ID_GARANTIA and');
      SQL.Add('"col$causaciones".ID_ARRASTRE = "col$codigospuc".ID_CATEGORIA)');
      SQL.Add('where "col$causaciones".FECHA_CORTE = :FECHA_CORTE');
      SQL.Add('group by "col$causaciones".ID_CLASIFICACION,"col$codigospuc".COD_INT_ANT');
      SQL.Add('order by "col$causaciones".ID_CLASIFICACION');
      ParamByName('FECHA_CORTE').AsDate := EdFechaCorte.Date;
      Try
        ExecQuery;
      Except
        MessageDlg('Error al Buscar Anticipados',mtError,[mbcancel],0);
        Transaction.Rollback;
        raise;
        Exit;
    End;

  // Buscar y Comparar Valores
  While Not Eof Do
    Begin
      // Buscar Codigo Puc
      Codigo := FieldByName('COD_INT_ANT').AsString;
      //  Buscar en Puc Saldos Actuales
      IBSQL3.Close;
      IBSQL3.SQL.Clear;
      IBSQL3.SQL.Add('select "con$puc".SALDOINICIAL AS SALDO');
      IBSQL3.SQL.Add('from "con$puc"');
      IBSQL3.SQL.Add('where "con$puc".CODIGO = :CODIGO');
      IBSQL3.ParamByName('CODIGO').AsString := Codigo;
      Try
        IBSQL3.ExecQuery;
        Valor := IBSQL3.FieldByName('SALDO').AsCurrency;
      Except
        MessageDlg('Error al Obtener valor de Corto Plazo',mtError,[mbcancel],0);
        Transaction.Rollback;
        raise;
        Exit;
    End;
  IBSQL3.Close;
  IBSQL3.SQL.Clear;
  IBSQL3.SQL.Add('select SUM("con$saldoscuenta".DEBITO - "con$saldoscuenta".CREDITO) AS SALDO');
  IBSQL3.SQL.Add('from "con$puc"');
  IBSQL3.SQL.Add('left join "con$saldoscuenta" ON ("con$puc".ID_AGENCIA = "con$saldoscuenta".ID_AGENCIA and ');
  IBSQL3.SQL.Add('"con$puc".CODIGO = "con$saldoscuenta".CODIGO)');
  IBSQL3.SQL.Add('where "con$saldoscuenta".ID_AGENCIA = :ID_AGENCIA and "con$puc".CODIGO = :CODIGO and "con$saldoscuenta".MES <= :MES');
  IBSQL3.SQL.Add('group by "con$puc".SALDOINICIAL');
  IBSQL3.ParamByName('ID_AGENCIA').AsInteger := Agencia;
  IBSQL3.ParamByName('CODIGO').AsString := Codigo;
  IBSQL3.ParamByName('MES').AsInteger := Monthof(EdFechaCorte.Date);
  Try
    IBSQL3.ExecQuery;
    Valor := Valor + IBSQL3.FieldByName('SALDO').AsCurrency;
  Except
    MessageDlg('Error al Obtener valor de Corto Plazo',mtError,[mbcancel],0);
    Transaction.Rollback;
    raise;
    Exit;
End;
//Comparar Saldos y Contabilizar
IBSQL3.Close;
IBSQL3.SQL.Clear;
IBSQL3.SQL.Add('select NOMBRE from "con$puc" where CODIGO = :CODIGO');
IBSQL3.ParamByName('CODIGO').AsString := Codigo;
IBSQL3.ExecQuery;
Aplica := False;
If Valor > (-FieldByName('ANTICIPADOS').AsCurrency) Then
  Begin
    New(AR);
    AR^.codigo := Codigo;
    AR^.centro := 1;
    AR^.nomcuenta := IBSQL3.FieldByName('NOMBRE').AsString;
    AR^.nocuenta := 0;
    AR^.nocredito := '';
    AR^.tipoide := 0;
    AR^.idpersona := '';
    AR^.monto := 0;
    AR^.tasa := 0;
    AR^.estado := 'O';
    AR^.debito := 0;
    AR^.credito := Valor - -FieldByName('ANTICIPADOS').AsCurrency;
    Lista.Add(AR);
    Aplica := True;
  End
Else If Valor < (-FieldByName('ANTICIPADOS').AsCurrency) Then
       Begin
         New(AR);
         AR^.codigo := Codigo;
         AR^.centro := 1;
         AR^.nomcuenta := IBSQL3.FieldByName('NOMBRE').AsString;
         AR^.nocuenta := 0;
         AR^.nocredito := '';
         AR^.tipoide := 0;
         AR^.idpersona := '';
         AR^.monto := 0;
         AR^.tasa := 0;
         AR^.estado := 'O';
         AR^.credito := 0;
         AR^.debito := -FieldByName('ANTICIPADOS').AsCurrency - Valor;
         Lista.Add(AR);
         Aplica := True;
       End;
If Aplica Then
  If FieldByName('ID_CLASIFICACION').AsInteger = 1 Then
    Comercial := Comercial + ar^.debito - ar^.credito
Else If FieldByName('ID_CLASIFICACION').AsInteger = 2 Then
       Consumo := Consumo + ar^.debito - ar^.credito
Else If FieldByName('ID_CLASIFICACION').AsInteger = 3 Then
       Vivienda := Vivienda + ar^.debito - ar^.credito
Else If FieldByName('ID_CLASIFICACION').AsInteger = 4 Then
       Microcredito := Microcredito + ar^.debito - ar^.credito;
ActualizarGrid;
Next;
End;
// while
End;
// with
Codigo := '415005000000000000';
IBSQL3.SQL.Clear;
IBSQL3.SQL.Add('select NOMBRE from "con$puc" where CODIGO = :CODIGO');

If Comercial <> 0 Then
  Begin
    New(ar);
    IBSQL3.Close;
    IBSQL3.ParamByName('CODIGO').AsString := Codigo;
    IBSQL3.ExecQuery;
    AR^.codigo := Codigo;
    AR^.centro := 1;
    AR^.nomcuenta := IBSQL3.FieldByName('NOMBRE').AsString;
    AR^.nocuenta := 0;
    AR^.nocredito := '';
    AR^.tipoide := 0;
    AR^.idpersona := '';
    AR^.monto := 0;
    AR^.tasa := 0;
    AR^.estado := 'O';
    If Comercial < 0 Then
      Begin
        AR^.debito := -Comercial;
        AR^.credito := 0;
      End
    Else
      Begin
        AR^.credito := Comercial;
        AR^.debito := 0;
      End;
    Lista.Add(AR);
  End;

Codigo := '415010000000000000';
If Consumo <> 0 Then
  Begin
    New(ar);
    IBSQL3.Close;
    IBSQL3.ParamByName('CODIGO').AsString := Codigo;
    IBSQL3.ExecQuery;
    AR^.codigo := Codigo;
    AR^.centro := 1;
    AR^.nomcuenta := IBSQL3.FieldByName('NOMBRE').AsString;
    AR^.nocuenta := 0;
    AR^.nocredito := '';
    AR^.tipoide := 0;
    AR^.idpersona := '';
    AR^.monto := 0;
    AR^.tasa := 0;
    AR^.estado := 'O';
    If Consumo < 0 Then
      Begin
        AR^.debito := -Consumo;
        AR^.credito := 0;
      End
    Else
      Begin
        AR^.credito := Consumo;
        AR^.debito := 0;
      End;
    Lista.Add(AR);
  End;

Codigo := '415015000000000000';
If Vivienda <> 0 Then
  Begin
    New(ar);
    IBSQL3.Close;
    IBSQL3.ParamByName('CODIGO').AsString := Codigo;
    IBSQL3.ExecQuery;
    AR^.codigo := Codigo;
    AR^.centro := 1;
    AR^.nomcuenta := IBSQL3.FieldByName('NOMBRE').AsString;
    AR^.nocuenta := 0;
    AR^.nocredito := '';
    AR^.tipoide := 0;
    AR^.idpersona := '';
    AR^.monto := 0;
    AR^.tasa := 0;
    AR^.estado := 'O';
    If Vivienda < 0 Then
      Begin
        AR^.debito := -Vivienda;
        AR^.credito := 0;
      End
    Else
      Begin
        AR^.credito := Vivienda;
        AR^.debito := 0;
      End;
    Lista.Add(AR);
  End;
Actualizargrid;
IBSQL3.Transaction.Commit;
End;

Procedure TfrmCausacionCarteraDiaria.OctavoPasoComprobante;

Var AR: PList;
  Valor: Currency;
  Codigo: string;
  Comercial,Consumo,Vivienda,Microcredito: Currency;
  Aplica : Boolean;
Begin
  Comercial    := 0;
  Consumo      := 0;
  Vivienda     := 0;
  Microcredito := 0;
  With IBSQL2 Do
    Begin
      If Transaction.InTransaction Then
        Transaction.Rollback;
      Transaction.StartTransaction;
      Close;
      SQL.Clear;
      SQL.Add('select "col$causaciones".ID_CLASIFICACION,MAX("col$codigospuc".COD_CONTINGENCIA) AS COD_CONTINGENCIA,');
      SQL.Add('SUM("col$causaciones".CONTINGENCIAS) AS CONTINGENCIAS');
      SQL.Add('from "col$causaciones"');
      SQL.Add('inner join "col$codigospuc" on');
      SQL.Add('("col$causaciones".ID_CLASIFICACION = "col$codigospuc".ID_CLASIFICACION and');
      SQL.Add('"col$causaciones".ID_GARANTIA = "col$codigospuc".ID_GARANTIA and');
      SQL.Add('"col$causaciones".ID_ARRASTRE = "col$codigospuc".ID_CATEGORIA)');
      SQL.Add('where "col$causaciones".FECHA_CORTE = :FECHA_CORTE');
      SQL.Add('group by "col$causaciones".ID_CLASIFICACION,"col$codigospuc".COD_CONTINGENCIA');
      //                 SQL.Add('order by "col$causaciones".ID_CLASIFICACION,"col$causaciones".ID_ARRASTRE');
      ParamByName('FECHA_CORTE').AsDate := EdFechaCorte.Date;
      Try
        ExecQuery;
      Except
        MessageDlg('Error al Buscar Anticipados',mtError,[mbcancel],0);
        Transaction.Rollback;
        raise;
        Exit;
    End;

  // Buscar y Comparar Valores
  While Not Eof Do
    Begin
      // Buscar Codigo Puc
      Codigo := FieldByName('COD_CONTINGENCIA').AsString;
      //  Buscar en Puc Saldos Actuales
      IBSQL3.Close;
      IBSQL3.SQL.Clear;
      IBSQL3.SQL.Add('select "con$puc".SALDOINICIAL AS SALDO');
      IBSQL3.SQL.Add('from "con$puc"');
      IBSQL3.SQL.Add('where "con$puc".CODIGO = :CODIGO');
      IBSQL3.ParamByName('CODIGO').AsString := Codigo;
      Try
        IBSQL3.ExecQuery;
        Valor := IBSQL3.FieldByName('SALDO').AsCurrency;
      Except
        MessageDlg('Error al Obtener valor de Corto Plazo',mtError,[mbcancel],0);
        Transaction.Rollback;
        raise;
        Exit;
    End;
  IBSQL3.Close;
  IBSQL3.SQL.Clear;
  IBSQL3.SQL.Add('select SUM("con$saldoscuenta".DEBITO - "con$saldoscuenta".CREDITO) AS SALDO');
  IBSQL3.SQL.Add('from "con$puc"');
  IBSQL3.SQL.Add('left join "con$saldoscuenta" ON ("con$puc".ID_AGENCIA = "con$saldoscuenta".ID_AGENCIA and ');
  IBSQL3.SQL.Add('"con$puc".CODIGO = "con$saldoscuenta".CODIGO)');
  IBSQL3.SQL.Add('where "con$saldoscuenta".ID_AGENCIA = :ID_AGENCIA and "con$puc".CODIGO = :CODIGO and "con$saldoscuenta".MES <= :MES');
  IBSQL3.SQL.Add('group by "con$puc".SALDOINICIAL');
  IBSQL3.ParamByName('ID_AGENCIA').AsInteger := Agencia;
  IBSQL3.ParamByName('CODIGO').AsString := Codigo;
  IBSQL3.ParamByName('MES').AsInteger := Monthof(EdFechaCorte.Date);
  Try
    IBSQL3.ExecQuery;
    Valor := Valor + IBSQL3.FieldByName('SALDO').AsCurrency;
  Except
    MessageDlg('Error al Obtener valor de Corto Plazo',mtError,[mbcancel],0);
    Transaction.Rollback;
    raise;
    Exit;
End;
//Comparar Saldos y Contabilizar
IBSQL3.Close;
IBSQL3.SQL.Clear;
IBSQL3.SQL.Add('select NOMBRE from "con$puc" where CODIGO = :CODIGO');
IBSQL3.ParamByName('CODIGO').AsString := Codigo;
IBSQL3.ExecQuery;
Aplica := False;
If Valor > (FieldByName('CONTINGENCIAS').AsCurrency) Then
  Begin
    New(AR);
    AR^.codigo := Codigo;
    AR^.centro := 1;
    AR^.nomcuenta := IBSQL3.FieldByName('NOMBRE').AsString;
    AR^.nocuenta := 0;
    AR^.nocredito := '';
    AR^.tipoide := 0;
    AR^.idpersona := '';
    AR^.monto := 0;
    AR^.tasa := 0;
    AR^.estado := 'O';
    AR^.debito := 0;
    AR^.credito := Valor - FieldByName('CONTINGENCIAS').AsCurrency;
    Lista.Add(AR);
    Aplica := True;
  End
Else If Valor < (FieldByName('CONTINGENCIAS').AsCurrency) Then
       Begin
         New(AR);
         AR^.codigo := Codigo;
         AR^.centro := 1;
         AR^.nomcuenta := IBSQL3.FieldByName('NOMBRE').AsString;
         AR^.nocuenta := 0;
         AR^.nocredito := '';
         AR^.tipoide := 0;
         AR^.idpersona := '';
         AR^.monto := 0;
         AR^.tasa := 0;
         AR^.estado := 'O';
         AR^.credito := 0;
         AR^.debito := FieldByName('CONTINGENCIAS').AsCurrency - Valor;
         Lista.Add(AR);
         Aplica := True;
       End;
If Aplica Then
  If FieldByName('ID_CLASIFICACION').AsInteger = 1 Then
    Comercial := Comercial + ar^.debito - ar^.credito
Else If FieldByName('ID_CLASIFICACION').AsInteger = 2 Then
       Consumo := Consumo + ar^.debito - ar^.credito
Else If FieldByName('ID_CLASIFICACION').AsInteger = 3 Then
       Vivienda := Vivienda + ar^.debito - ar^.credito
Else If FieldByName('ID_CLASIFICACION').AsInteger = 4 Then
       Microcredito := Microcredito + ar^.debito - ar^.credito;
ActualizarGrid;
Next;
End;
// while
End;
// with
Codigo := '860500000000000000';
IBSQL3.SQL.Clear;
IBSQL3.SQL.Add('select NOMBRE from "con$puc" where CODIGO = :CODIGO');

If (Comercial+Consumo+Vivienda+Microcredito) <> 0 Then
  Begin
    New(ar);
    IBSQL3.Close;
    IBSQL3.ParamByName('CODIGO').AsString := Codigo;
    IBSQL3.ExecQuery;
    AR^.codigo := Codigo;
    AR^.centro := 1;
    AR^.nomcuenta := IBSQL3.FieldByName('NOMBRE').AsString;
    AR^.nocuenta := 0;
    AR^.nocredito := '';
    AR^.tipoide := 0;
    AR^.idpersona := '';
    AR^.monto := 0;
    AR^.tasa := 0;
    AR^.estado := 'O';
    If (Comercial+Consumo+Vivienda+Microcredito) < 0 Then
      Begin
        AR^.debito := -(Comercial+Consumo+Vivienda+Microcredito);
        AR^.credito := 0;
      End
    Else
      Begin
        AR^.credito := (Comercial+Consumo+Vivienda+Microcredito);
        AR^.debito := 0;
      End;
    Lista.Add(AR);
  End;
Actualizargrid;
IBSQL3.Transaction.Commit;
End;

Procedure TfrmCausacionCarteraDiaria.PrimerPasoCausacion;

Var I : Integer;
  //vFechaGracia:TDate;
  DiasMora: Integer;
  Dia: Word;
  NFecha: TDateTime;
Begin
  frmPantallaProgreso := TfrmProgreso.Create(Self);

  // Actualizar tabla de tasas
  With IBSQL2 Do
    Begin
      If Transaction.InTransaction Then
        Transaction.Commit;
      Transaction.StartTransaction;
      Close;
      SQL.Clear;
      SQL.Add('update "col$porccausacion" set');
      SQL.Add('A_CAPITAL = :A_CAPITAL,A_INTERESES = :A_INTERESES,A_COSTAS = :A_COSTAS');
      SQL.Add('where');
      SQL.Add('ID_CLASIFICACION = :ID_CLASIFICACION and ID_GARANTIA = :ID_GARANTIA and ID_EDAD = :ID_EDAD');
      frmPantallaProgreso.Min := 1;
      frmPantallaProgreso.Max := GridP.RowCount - 1;
      frmPantallaProgreso.Position := 1;
      frmPantallaProgreso.Info.Caption := 'Progreso Actual';
      frmPantallaProgreso.InfoLabel := 'Actualizando Tabla de Valores a Provisionar';
      frmPantallaProgreso.Ejecutar;
      For I := 1 To GridP.RowCount - 1 Do
        Begin
          frmPantallaProgreso.Position := I;
          Application.ProcessMessages;
          If (LeftStr(GridP.Cells[0,I],1)<>'') Then
            Begin
              ParamByName('ID_CLASIFICACION').AsInteger := StrToInt(LeftStr(GridP.Cells[0,I],1));
              ParamByName('ID_GARANTIA').AsInteger := StrToInt(LeftStr(GridP.Cells[1,I],1));
              ParamByName('ID_EDAD').AsString := GridP.Cells[2,I];
              ParamByName('A_CAPITAL').AsFloat := StrToFloat(GridP.Cells[3,I]);
              ParamByName('A_INTERESES').AsFloat := StrToFloat(GridP.Cells[4,I]);
              ParamByName('A_COSTAS').AsFloat := StrToFloat(GridP.Cells[5,I]);
              Try
                ExecQuery;
              Except
                frmPantallaProgreso.Cerrar;
                raise;
            End;
        End;
    End;
  // for

  Try
    Transaction.Commit;
  Except
    frmPantallaProgreso.Cerrar;
    raise;
End;

End;
// with
// fin actualizacion tabla de causacion

With IBSQL3 Do
  Begin
    If Transaction.InTransaction Then Transaction.Rollback;
    Transaction.StartTransaction;
    Close;
    SQL.Clear;
    SQL.Add('delete from "col$causaciondiariatmp"');
    Try
      ExecQuery;
      Transaction.Commit;
    Except
      MessageDlg('No se pudo vaciar la tabla anterior',mtError,[mbcancel],0);
      Transaction.Rollback;
      Exit;
  End;
End;

With IBSQL3 Do
  Begin
    If Transaction.InTransaction Then Transaction.Rollback;
    Transaction.StartTransaction;
    Close;
    SQL.Clear;
    SQL.Add('delete from "col$causaciondiariamovtmp"');
    Try
      ExecQuery;
      Transaction.Commit;
    Except
      MessageDlg('No se pudo vaciar la tabla anterior de Movimientos',mtError,[mbcancel],0);
      Transaction.Rollback;
      Exit;
  End;
End;


With IBQuery1 Do
  Begin
    If Transaction.InTransaction Then Transaction.Rollback;
    Transaction.StartTransaction;
    Close;
    SQL.Clear;
    // Selecciona Total de Registros a Evaluar
    SQL.Add('select * from P_COL_003');
    Try
      Open;
    Except
      Transaction.Rollback;
      frmPantallaProgreso.Cerrar;
      raise;
      Exit;
  End;

Total := FieldByName('TOTAL').AsInteger;

Close;
SQL.Clear;
// Selecciona todas las colocaciones con sus caracteristicas
SQL.Add('select * from P_COL_004');
Try
  Open;
Except
  Transaction.Rollback;
  frmPantallaProgreso.Cerrar;
  raise;
  Exit;
End;
End;
frmPantallaProgreso.Min := 0;
frmPantallaProgreso.Max := Total;
frmPantallaProgreso.Position := 0;
frmPantallaProgreso.InfoLabel := 'Procesando Causaci�n de Colocaciones';
While Not IBQuery1.Eof Do
  Begin
    frmPantallaProgreso.Position := IBQuery1.RecNo;
    Application.ProcessMessages;
    FechaInicial := IBQuery1.FieldByName('FECHA_INTERES').AsDateTime;
    FechaFinal := EdFechaCorte.Date;
    // Se suprime este proceso

{
                IBSQL3.Close;
                IBSQL3.SQL.Clear;
                IBSQL3.SQL.Add('select VALOR_MINIMO from "gen$minimos" WHERE ID_MINIMO = 33');
                IBSQL3.ExecQuery;
                vFechaGracia := DateOf(IBSQL3.FieldByName('VALOR_MINIMO').AsInteger);
                }
    IBSQL3.Close;
    IBSQL3.SQL.Clear;
    IBSQL3.SQL.Add('select DIAS_INICIALES from "col$codigospuc" where');
    IBSQL3.SQL.Add('ID_CLASIFICACION = :ID_CLASIFICACION and ');
    IBSQL3.SQL.Add('ID_GARANTIA = :ID_GARANTIA and ');
    IBSQL3.SQL.Add('ID_CATEGORIA = :ID_CATEGORIA');
    IBSQL3.ParamByName('ID_CLASIFICACION').AsInteger := IBQuery1.FieldByName('ID_CLASIFICACION').AsInteger;
    IBSQL3.ParamByName('ID_GARANTIA').AsInteger := IBQuery1.FieldByName('ID_GARANTIA').AsInteger;
    IBSQL3.ParamByName('ID_CATEGORIA').AsString := 'C';
    Try
      IBSQL3.ExecQuery;
    Except
      IBQuery1.Transaction.Rollback;
      frmPantallaProgreso.Cerrar;
      Exit;
  End;
// try

Saldo := IBQuery1.FieldByName('SALDO').AsCurrency;

Dias := ObtenerDiasMoraCausacion(IBQuery1.FieldByName('ID_COLOCACION').AsString,IBQuery1.FieldByName('ID_ESTADO_COLOCACION').AsInteger, IBQuery1.FieldByName(
        'ID_LINEA').AsInteger, IBQuery1.FieldByName('AMORTIZA_INTERES').AsInteger, IBQuery1.FieldByName('DIAS_PAGO').AsInteger, IBQuery1.FieldByName(
        'FECHA_DESEMBOLSO').AsDateTime, IBQuery1.FieldByName('FECHA_INTERES').AsDateTime, FechaFinal, IBQuery1.FieldByName('TIPO_INTERES').AsString);
// Dias := ObtenerDiasMora(IBQuery1.FieldByName('ID_AGENCIA').AsInteger,IBQuery1.FieldByName('ID_COLOCACION').AsString,IBSQL2);

//Dias := DiasEntre(IncDay(IBQuery1.FieldByName('FECHA_INTERES').AsDateTime),FechaFinal);

//Dias := DiasEntreFechas(IncDay(IBQuery1.FieldByName('FECHA_INTERES').AsDateTime),FechaFinal,IBQuery1.FieldByName('FECHA_DESEMBOLSO').AsDateTime + IBQuery1.FieldByName('DIAS_PAGO').AsInteger);
If (IBQuery1.FieldByName('TIPOC_INTERES').AsString = 'V') Then
  DiasMora := Dias - IBQuery1.FieldByName('AMORTIZA_INTERES').AsInteger;
//if IBQuery1.FieldByName('TIPOC_INTERES').AsString = 'V' then
//  Dias := Dias + IBQuery1.FieldByName('AMORTIZA_INTERES').AsInteger;

If Dias < 1 Then Dias := 0;
DiasCorrientes := DiasEntre(IBQuery1.FieldByName('FECHA_INTERES').AsDateTime, EdFechaCorte.Date);

//// Evaluar Edad Y Dias de Mora
//if IBQuery1.FieldByName('ID_ESTADO_COLOCACION').AsInteger = 2 then

//     DiasMora := DiasEntreFechas(IncDay(IBQuery1.FieldByName('FECHA_INTERES').AsDateTime),FechaFinal,IBQuery1.FieldByName('FECHA_DESEMBOLSO').AsDateTime + IBQuery1.FieldByName('DIAS_PAGO').AsInteger);

If DiasMora < 1 Then DiasMora := 0;
Edad := EvaluarEdad(IBQuery1.FieldByName('ID_CLASIFICACION').AsInteger,
        IBQuery1.FieldByName('ID_GARANTIA').AsInteger,DiasMora);
// Se suprime este proceso

{
                if (IBQuery1.FieldByName('ID_ESTADO_COLOCACION').AsInteger = 2) or
                  (IBQuery1.FieldByName('ID_ESTADO_COLOCACION').AsInteger = 3) then
                Edad := 'E';
                }
// Insertar datos en tabla temporal
With IBSQL4 Do
  Begin
    Close;
    SQL.Clear;
    SQL.Add('insert into "col$causaciondiariatmp" values(:ID_AGENCIA,');
    SQL.Add(':ID_COLOCACION,:FECHA_CORTE,:ID_CLASIFICACION,:ID_GARANTIA,:ID_EDAD_ANT,:ID_EDAD_ACT,:ID_ARRASTRE,');
    SQL.Add(':ID_IDENTIFICACION,:ID_PERSONA,:FECHA_DESEMBOLSO,:VALOR,:DEUDA,:ID_TIPO_CUOTA,');
    SQL.Add(':FECHA_CAPITAL,:FECHA_INTERES,:TIPOC_INTERES,:AMORTIZA_CAPITAL,:AMORTIZA_INTERES,:TIPO_INTERES,');
    SQL.Add(':TASA_INTERES_CORRIENTE,:ID_INTERES,');
    SQL.Add(':VALOR_ACTUAL_TASA,:PUNTOS_INTERES,');
    SQL.Add(':DIAS,:TASA,:ANTICIPADOS,');
    SQL.Add(':CAUSADOS,:CONTINGENCIAS,:APORTES,:PCAPITAL,:PINTERES,');
    SQL.Add(':PCOSTAS,:CORTO_PL,:LARGO_PL,:COSTAS,:ID_ESTADO,');
    SQL.Add(':PCAPITAL_REC,:PINTERES_REC,:PCOSTAS_REC,:PCAPITAL_REV,:PINTERES_REV,:PCOSTAS_REV,:PCAPITAL_GAS,:PINTERES_GAS,:PCOSTAS_GAS,');
    SQL.Add(':VALOR_GARANTIA, :GARANTIA_DESCONTADA, :MOROSIDAD)');
    ParamByName('ID_AGENCIA').AsInteger := IBQuery1.FieldByName('ID_AGENCIA').AsInteger;
    ParamByName('ID_COLOCACION').AsString := IBQuery1.FieldByName('ID_COLOCACION').AsString;
    ParamByName('FECHA_CORTE').AsDate := EdFechaCorte.Date;
    ParamByName('ID_CLASIFICACION').AsInteger := IBQuery1.FieldByName('ID_CLASIFICACION').AsInteger;
    ParamByName('ID_GARANTIA').AsInteger := IBQuery1.FieldByName('ID_GARANTIA').AsInteger;
    ParamByName('ID_EDAD_ANT').AsString := IBQuery1.FieldByName('ID_CATEGORIA').AsString;
    ParamByName('ID_EDAD_ACT').AsString := Edad;
    ParamByName('ID_ARRASTRE').AsString := Edad;
    ParamByName('ID_IDENTIFICACION').AsInteger := IBQuery1.FieldByName('ID_IDENTIFICACION').AsInteger;
    ParamByName('ID_PERSONA').AsString := IBQuery1.FieldByName('ID_PERSONA').AsString;
    ParamByName('FECHA_DESEMBOLSO').AsDate := CalculoFecha(IBQuery1.fieldbyname('FECHA_DESEMBOLSO').AsDateTime,IBQuery1.FieldByName('DIAS_PAGO').AsInteger);
    ParamByName('VALOR').AsCurrency := IBQuery1.FieldByName('VALOR_DESEMBOLSO').AsCurrency;
    ParamByName('DEUDA').AsCurrency := IBQuery1.FieldByName('SALDO').AsCurrency;
    ParamByName('ID_TIPO_CUOTA').AsInteger := IBQuery1.fieldbyname('ID_TIPO_CUOTA').AsInteger;
    ParamByName('FECHA_CAPITAL').AsDate := IBQuery1.FieldByName('FECHA_CAPITAL').AsDateTime;
    ParamByName('FECHA_INTERES').AsDate := IBQuery1.FieldByName('FECHA_INTERES').AsDateTime;
    ParamByName('TIPOC_INTERES').AsString := IBQuery1.FieldByName('TIPOC_INTERES').AsString;
    ParamByName('AMORTIZA_CAPITAL').AsInteger := IBQuery1.FieldByName('AMORTIZA_CAPITAL').AsInteger;
    ParamByName('AMORTIZA_INTERES').AsInteger := IBQuery1.FieldByName('AMORTIZA_INTERES').AsInteger;
    ParamByName('TIPO_INTERES').AsString := IBQuery1.FieldByName('TIPO_INTERES').AsString;
    ParamByName('TASA_INTERES_CORRIENTE').AsDouble := IBQuery1.FieldByName('TASA_INTERES_CORRIENTE').AsFloat;
    ParamByName('ID_INTERES').AsInteger := IBQuery1.FieldByName('ID_INTERES').AsInteger;
    ParamByName('VALOR_ACTUAL_TASA').AsDouble := IBQuery1.FieldByName('VALOR_ACTUAL_TASA').AsFloat;
    ParamByName('PUNTOS_INTERES').AsDouble := IBQuery1.fieldbyname('PUNTOS_INTERES').AsFloat;
    ParamByName('DIAS').AsInteger := DiasCorrientes;
    ParamByName('TASA').AsDouble := 0;
    ParamByName('ANTICIPADOS').AsCurrency := 0;
    ParamByName('CAUSADOS').AsCurrency := 0;
    ParamByName('CONTINGENCIAS').AsCurrency := 0;
    ParamByName('APORTES').AsCurrency := 0;
    ParamByName('PCAPITAL').AsCurrency := 0;
    ParamByName('PINTERES').AsCurrency := 0;
    ParamByName('PCOSTAS').AsCurrency := 0;
    ParamByName('CORTO_PL').AsCurrency := 0;
    ParamByName('LARGO_PL').AsCurrency := 0;
    ParamByName('COSTAS').AsCurrency := 0;
    ParamByName('ID_ESTADO').AsInteger := IBQuery1.FieldByName('ID_ESTADO_COLOCACION').AsInteger;
    ParamByName('PCAPITAL_REC').AsCurrency := 0;
    ParamByName('PINTERES_REC').AsCurrency := 0;
    ParamByName('PCOSTAS_REC').AsCurrency := 0;
    ParamByName('PCAPITAL_REV').AsCurrency := 0;
    ParamByName('PINTERES_REV').AsCurrency := 0;
    ParamByName('PCOSTAS_REV').AsCurrency := 0;
    ParamByName('PCAPITAL_GAS').AsCurrency := 0;
    ParamByName('PINTERES_GAS').AsCurrency := 0;
    ParamByName('PCOSTAS_GAS').AsCurrency := 0;
    ParamByName('VALOR_GARANTIA').AsCurrency := 0;
    ParamByName('GARANTIA_DESCONTADA').AsCurrency := 0;
    ParamByName('MOROSIDAD').AsInteger := DiasMora;
    Try
      ExecQuery;
    Except
      MessageDlg('Error al Guardar Datos Temporales',mtError,[mbcancel],0);
      frmProgreso.Cerrar;
      Transaction.Rollback;
      raise;
      Exit;
  End;
End;
// Continuar ciclo while
Application.ProcessMessages;
IBQuery1.Next;
End;
// while
IBQuery1.Transaction.Commit;
IBQuery1.Close;

// Inclusion de Creditos Saldados con Recuperacion o Reversion de Provisiones
If IBQuery2.Transaction.InTransaction Then
  IBQuery2.Transaction.StartTransaction;
IBQuery2.Transaction.StartTransaction;
IBQuery2.SQL.Clear;
IBQuery2.SQL.Add('EXECUTE PROCEDURE P_COL_005(:FECHA1,:FECHA2,:FECHA_CORTE)');
IBQuery2.ParamByName('FECHA1').AsDate := RecodeDay(EdFechaCorte.Date,01);
IBQuery2.ParamByName('FECHA2').AsDate := RecodeDay(EdFechaCorte.Date,Dayof(EndOfAMonth(YearOf(EdFechaCorte.Date),MonthOf(EdFechaCorte.Date))));
IBQuery2.ParamByName('FECHA_CORTE').AsDate := EdFechaCorte.Date;
IBQuery2.ExecSQL;
IBQuery2.Transaction.Commit;
// Fin Recuperacion Provisiones

frmPantallaProgreso.Cerrar;
Application.ProcessMessages;
End;

Procedure TfrmCausacionCarteraDiaria.SegundoPasoCausacion;

Var id_ant: Integer;
  pr_ant: string;
  edad_act: string;
  primerpaso: Boolean;
  vAportes: Currency;
  AportesCon: Currency;
  Deuda: Currency;
  ListaFechas: TList;
  AFechas: PFechasLiq;
  FechaInicial,FechaFinal: TDate;
  i,Ano,Mes,Dia,DiasCalc: Integer;
  FechaDesembolso: TDate;
  TasaViv: Double;
  _diasGracia: Integer;
Begin
  With IBQuery1 Do
    Begin
      If Transaction.InTransaction Then
        Transaction.Rollback;
      Transaction.StartTransaction;

      Close;
      SQL.Clear;
      // Calcula Total de Registros a Procesar
      SQL.Add('select count(*) as TOTAL from "col$causaciondiariatmp" where FECHA_CORTE = :FECHA_CORTE AND DEUDA > 0');
      ParamByName('FECHA_CORTE').AsDate := EdFechaCorte.Date;
      Open;
      Total := FieldByName('TOTAL').AsInteger;

      frmPantallaProgreso  := TfrmProgreso.Create(Self);
      frmPantallaProgreso.Min := 0;
      frmPantallaProgreso.Max := Total;
      frmPantallaProgreso.InfoLabel := 'Aplicando Ley de Arrastre';
      frmPantallaProgreso.Position := 0;
      frmPantallaProgreso.Ejecutar;
      primerpaso := True;
      id_ant := 0;
      pr_ant := '';

      Close;
      SQL.Clear;
      SQL.Add('select * from "col$causaciondiariatmp" WHERE DEUDA > 0 order by ID_IDENTIFICACION,ID_PERSONA,ID_EDAD_ACT DESC,ID_AGENCIA,ID_COLOCACION');
      Try
        Open;
      Except
        MessageDlg('Error al Iniciar la Tabla Temporal para el Segundo proceso',mtError,[mbcancel],0);
        Transaction.Rollback;
        raise;
        Exit;
    End;
End;

//  IBQuery1.Locate('ID_COLOCACION',VarArrayOf(['20020002417']),[locaseinsensitive]);
id_ant := IBQuery1.FieldByName('ID_IDENTIFICACION').AsInteger;
pr_ant := IBQuery1.FieldByName('ID_PERSONA').AsString;
edad_act := IBQuery1.FieldByName('ID_EDAD_ACT').AsString;
AportesCon := CalculoAportes(id_ant,pr_ant);
primerpaso := True;

While Not IBQuery1.Eof  Do
  Begin
    frmPantallaProgreso.Position := IBQuery1.RecNo;
    frmPantallaProgreso.InfoLabel := IBQuery1.FieldByName('ID_PERSONA').AsString + '-' + IBQuery1.FieldByName('ID_COLOCACION').AsString;
    _diasGracia := 0;
    Application.ProcessMessages;
    If (IBQuery1.FieldByName('ID_IDENTIFICACION').AsInteger <> id_ant) Or
       (IBQuery1.FieldByName('ID_PERSONA').AsString <> pr_ant) Then
      Begin
        id_ant := IBQuery1.FieldByName('ID_IDENTIFICACION').AsInteger;
        pr_ant := IBQuery1.FieldByName('ID_PERSONA').AsString;
        edad_act := IBQuery1.FieldByName('ID_EDAD_ACT').AsString;
        AportesCon := CalculoAportes(id_ant,pr_ant);
      End;
    Deuda := IBQuery1.FieldByName('DEUDA').AsCurrency;
    Tasa1 := BuscoTasaEfectivaMaxima1(IBQVarios,EdFechaCorte.Date,IBQuery1.FieldByName('ID_CLASIFICACION').AsInteger,'A');
    // Primer Paso
    Saldo := IBQuery1.FieldByName('DEUDA').AsCurrency;
    IBSQL3.Close;
    IBSQL3.SQL.Clear;
    IBSQL3.SQL.Add('select DIAS_INICIALES from "col$codigospuc" where');
    IBSQL3.SQL.Add('ID_CLASIFICACION = :ID_CLASIFICACION and ');
    IBSQL3.SQL.Add('ID_GARANTIA = :ID_GARANTIA and ');
    IBSQL3.SQL.Add('ID_CATEGORIA = :ID_CATEGORIA');
    IBSQL3.ParamByName('ID_GARANTIA').AsInteger := IBQuery1.FieldByName('ID_GARANTIA').AsInteger;
    IBSQL3.ParamByName('ID_CATEGORIA').AsString := 'C';
    IBSQL3.ParamByName('ID_CLASIFICACION').AsInteger := IBQuery1.FieldByName('ID_CLASIFICACION').AsInteger;
    Try
      IBSQL3.ExecQuery;
      DiasContingencia := IBSQL3.FieldByName('DIAS_INICIALES').AsInteger;
    Except
      IBQuery1.Transaction.Rollback;
      frmPantallaProgreso.Cerrar;
      Exit;
  End;
// try
Dias := IBQuery1.FieldByName('DIAS').AsInteger;
DiasCorrientes := Dias;

IBSQL3.Close;
IBSQL3.SQL.Clear;
IBSQL3.SQL.Add('select DIAS from COL_PERIODO_GRACIA WHERE');
IBSQL3.SQL.Add('ID_COLOCACION = :ID_COLOCACION AND ESTADO < 5');
IBSQL3.ParamByName('ID_COLOCACION').AsString := IBQuery1.FieldByName('ID_COLOCACION').AsString;
Try
  IBSQL3.ExecQuery;
  _diasGracia := IBSQL3.FieldByName('DIAS').AsInteger;
Except
  _diasGracia := 0;
End;

If IBQuery1.FieldByName('TIPOC_INTERES').AsString = 'V' Then
  DiasContingencia := DiasContingencia + IBQuery1.FieldByName('AMORTIZA_INTERES').AsInteger;

If Dias > 0 Then
  If (Dias >= DiasContingencia) Then
    Begin
      DiasANT := 0;
      DiasCON := Dias - (DiasContingencia - 1);
      DiasCXC := DiasContingencia - 1;
    End
Else
  Begin
    DiasANT := 0;
    DiasCON := 0;
    DiasCXC := Dias;
  End
  // if
Else
  Begin
    DiasANT := dias;
    DiasCON := 0;
    DiasCXC := 0;
  End;
// if

// Evaluar Fechas
If DiasCXC > 0 Then
  Begin
    FechaInicial := IBQuery1.FieldByName('FECHA_INTERES').AsDateTime;
    FechaFinal := EdFechaCorte.Date;
    ListaFechas := TList.Create;
    If IBQuery1.FieldByName('ID_TIPO_CUOTA').AsInteger = 1 Then
      CalcularFechasLiquidarFija(FechaInicial,FechaFinal,FechaFinal,ListaFechas)
    Else
      If IBQuery1.FieldByName('ID_TIPO_CUOTA').AsInteger = 2 Then
        CalcularFechasLiquidarVarAnticipada(FechaInicial,FechaFinal,FechaFinal,ListaFechas)
    Else
      CalcularFechasLiquidarVarVencida(FechaInicial,FechaFinal,FechaFinal,ListaFechas);

    Causados := 0;
    Contingentes := 0;
    DiasCXC := 0;
    DiasCON := 0;
    For i := 0 To ListaFechas.Count - 1 Do
      Begin
        AFechas := ListaFechas.Items[i];
        If IBQuery1.FieldByName('ID_INTERES').AsInteger = 0 Then
          Begin
            // Tasa := BuscoTasaEfectivaMaxima1(IBQVarios,AFechas.FechaFinal,IBQuery1.FieldByName('ID_CLASIFICACION').AsInteger,'A');
            //if IBQuery1.FieldByName('TASA_INTERES_CORRIENTE').AsFloat < Tasa then
            Tasa := IBQuery1.FieldByName('TASA_INTERES_CORRIENTE').AsFloat;

            If IBQuery1.FieldByName('ID_ARRASTRE').AsString = 'E' Then
              Tasa := TasaNominalVencida(Tasa,30)
            Else
              Begin
                If IBQuery1.FieldByName('TIPOC_INTERES').AsString = 'A' Then
                  Begin
                    Tasa := TasaNominalAnticipada(Tasa,IBQuery1.FieldByName('AMORTIZA_INTERES').AsInteger);
                  End
                Else
                  Begin
                    Tasa := TasaNominalVencida(Tasa,IBQuery1.FieldByName('AMORTIZA_INTERES').AsInteger);
                  End;
              End;
          End
        Else
          If IBQuery1.FieldByName('ID_INTERES').AsInteger = 1 Then
            Begin
              // Tasa := BuscoTasaEfectivaMaximaDtfNueva(IBQVarios,AFechas.FechaFinal);
              // if IBQuery1.FieldByName('TASA_INTERES_CORRIENTE').AsFloat < Tasa then
              Tasa := IBQuery1.FieldByName('TASA_INTERES_CORRIENTE').AsFloat;

              If IBQuery1.FieldByName('ID_ARRASTRE').AsString = 'E' Then
                Tasa := TasaNominalVencida(Tasa,30)
              Else
                Begin
                  If IBQuery1.FieldByName('TIPOC_INTERES').AsString = 'A' Then
                    Begin
                      Tasa := TasaNominalAnticipada(Tasa,IBQuery1.FieldByName('AMORTIZA_INTERES').AsInteger) + IBQuery1.FieldByName('PUNTOS_INTERES').AsFloat;
                    End
                  Else
                    Begin
                      Tasa := TasaNominalVencida(Tasa,IBQuery1.FieldByName('AMORTIZA_INTERES').AsInteger) + IBQuery1.FieldByName('PUNTOS_INTERES').AsFloat;
                    End;
                End;
            End
        Else
          If IBQuery1.FieldByName('ID_INTERES').AsInteger = 2 Then
            Begin
              // Tasa := BuscoTasaEfectivaMaximaIPCNueva(IBQVarios);
              // if IBQuery1.FieldByName('TASA_INTERES_CORRIENTE').AsFloat < Tasa then
              Tasa := IBQuery1.FieldByName('TASA_INTERES_CORRIENTE').AsFloat;

              If IBQuery1.FieldByName('ID_ARRASTRE').AsString = 'E' Then
                Tasa := TasaNominalVencida(Tasa,30)
              Else
                Begin
                  If IBQuery1.FieldByName('TIPOC_INTERES').AsString = 'A' Then
                    Begin
                      Tasa := TasaNominalAnticipada(Tasa,IBQuery1.FieldByName('AMORTIZA_INTERES').AsInteger) + IBQuery1.FieldByName('PUNTOS_INTERES').AsFloat;
                    End
                  Else
                    Begin
                      Tasa := TasaNominalVencida(Tasa,IBQuery1.FieldByName('AMORTIZA_INTERES').AsInteger) + IBQuery1.FieldByName('PUNTOS_INTERES').AsFloat;
                    End;
                End;
            End;

        //*****Tasa de vivienda***////
        If IBQuery1.FieldByName('ID_CLASIFICACION').AsInteger = 3 Then
          Begin
            // TasaViv := BuscoTasaEfectivaUvrNueva(IBQVarios,AFechas.FechaFinal);
            TasaViv := IBQuery1.FieldByName('TASA_INTERES_CORRIENTE').AsFloat;
            If IBQuery1.FieldByName('ID_ARRASTRE').AsString = 'E' Then
              TasaViv := TasaNominalVencida(Tasa,30)
            Else
              Begin
                If IBQuery1.FieldByName('TIPOC_INTERES').AsString = 'A' Then
                  Begin
                    TasaViv := TasaNominalAnticipada(TasaViv,IBQuery1.FieldByName('AMORTIZA_INTERES').AsInteger) + IBQuery1.FieldByName('PUNTOS_INTERES').
                               AsFloat;
                  End
                Else
                  Begin
                    TasaViv := TasaNominalVencida(TasaViv,IBQuery1.FieldByName('AMORTIZA_INTERES').AsInteger) + IBQuery1.FieldByName('PUNTOS_INTERES').AsFloat;
                  End;
              End;
            If Tasa > TasaViv Then
              Tasa := TasaViv;
          End;

        // if IBQuery1.FieldByName('ID_ARRASTRE').AsString = 'E' then begin
        // Tasa := Tasa1;
        // Tasa := TasaNominalVencida(Tasa1,30);
        // end;

        Bisiesto := False;
        FechaDesembolso := IBQuery1.FieldByName('FECHA_DESEMBOLSO').AsDateTime;
        If AFechas^.FechaInicial = FechaInicial Then
          AFechas^.FechaInicial := CalculoFecha(FechaInicial,1);
        DiasCalc := DiasEnFechas(AFechas^.FechaInicial,AFechas^.FechaFinal,FechaDesembolso,bisiesto);
        If DiasCalc < 0 Then DiasCalc := 0;
        Dispose(AFechas);
        If DiasCXC < (DiasContingencia - 1) Then
          Begin
            DiasCXC := DiasCXC + DiasCalc;
            If DiasCXC > (DiasContingencia - 1) Then
              Begin
                DiasCON := DiasCXC - (DiasContingencia-1);
                DiasCXC := (DiasContingencia-1);
                Contingentes := Contingentes + SimpleRoundTo(((IBQuery1.FieldByName('DEUDA').AsCurrency * (Tasa/100)) / 360 ) * DiasCON,0);
                DiasCalc := DiasCalc - DiasCON;
              End;
            // --> Adicion al proceso
            //If (DiasCalc > 30) Then DiasCalc := 30;
            // --> Fin Adicion

            Causados := Causados + SimpleRoundTo(((IBQuery1.FieldByName('DEUDA').AsCurrency * (Tasa/100)) / 360 ) * DiasCalc,0);
          End
        Else
          Begin
            Contingentes := Contingentes + SimpleRoundTo(((IBQuery1.FieldByName('DEUDA').AsCurrency * (Tasa/100)) / 360 ) * DiasCalc,0);
            DiasCON := DiasCON + DiasCalc;
          End;
      End;
    ListaFechas.Free;
  End
Else
  Begin
    Contingentes := 0;
    Causados := 0;
    DiasCON := 0;
    DiasCXC := 0;
  End;


// Buscar Tasa Anticipada
If DiasANT < 0 Then
  Begin
    TasaAnt := BuscoTasaAnt(IBQuery1.FieldByName('ID_AGENCIA').AsInteger,IBQuery1.FieldByName('ID_COLOCACION').AsString,IBQuery1.FieldByName('FECHA_INTERES').
               AsDateTime);
    If TasaAnt = 0 Then
      Begin
        Case IBQuery1.FieldByName('ID_INTERES').AsInteger Of 
          0 :
              Begin
                //TasaAnt := BuscoTasaEfectivaMaxima1(IBQVarios,EdFechaCorte.Date,IBQuery1.FieldByName('ID_CLASIFICACION').AsInteger,'A');
                //if IBQuery1.FieldByName('TASA_INTERES_CORRIENTE').AsFloat < TasaAnt then
                TasaAnt := IBQuery1.FieldByName('TASA_INTERES_CORRIENTE').AsFloat;
              End;

          1 : TasaAnt := BuscoTasaEfectivaMaximaDtfNueva(IBQVarios,EdFechaCorte.Date);

          2 : TasaAnt := BuscoTasaEfectivaMaximaIPCNueva(IBQVarios);
        End;
        If IBQuery1.FieldByName('TIPOC_INTERES').AsString = 'A' Then
          TasaAnt := TasaNominalAnticipada(TasaAnt,IBQuery1.fieldbyname('AMORTIZA_INTERES').AsInteger)
        Else
          TasaAnt := TasaNominalVencida(TasaAnt,IBQuery1.FieldByName('AMORTIZA_INTERES').AsInteger);
      End;
  End;
// Fin Buqueda de Tasa Anticipada

// Valido Periodo de Gracia Activo
If _diasGracia > 0 Then
  Begin
    Causados := Causados + Contingentes;
    Contingentes := 0;
    If edad_act <> 'A' Then
      edad_act := 'A';
  End;

// Calculo Intereses
Anticipados := SimpleRoundTo(((IBQuery1.FieldByName('DEUDA').AsCurrency * (TasaAnt/100)) / 360 ) * -DiasANT,0);
//            Causados  := SimpleRoundTo(((IBQuery1.FieldByName('DEUDA').AsCurrency * (Tasa/100)) / 360 ) * DiasCXC,0);
//            Contingentes := SimpleRoundTo(((IBQuery1.FieldByName('DEUDA').AsCurrency * (Tasa/100)) / 360 ) * DiasCON,0);
// Fin Calculo Intereses
Aportes := 0;
// Evaluar Edad
// Calculo Corto y Largo Plazo
CortoPlazo := 0;
LargoPlazo := 0;
// if edad_act = 'A' then
With IBSQL3 Do
  Begin
    Close;
    SQL.Clear;
    SQL.Add('select * from "col$tablaliquidacion"');
    SQL.Add('where (ID_AGENCIA = :"ID_AGENCIA") AND (ID_COLOCACION = :"ID_COLOCACION") AND');
    SQL.Add('((PAGADA = 0) OR ((PAGADA=1) AND (FECHA_A_PAGAR>:FECHACORTE)))');
    SQL.Add('ORDER BY FECHA_A_PAGAR');
    ParamByName('ID_AGENCIA').AsInteger := IBQuery1.FieldByName('ID_AGENCIA').AsInteger;
    ParamByName('ID_COLOCACION').AsString := IBQuery1.FieldByName('ID_COLOCACION').AsString;
    ParamByName('FECHACORTE').AsDate := EdFechaCorte.Date;
    ExecQuery;
    If RecordCount > 0 Then
      While Not Eof Do
        Begin
          If DiasEntre(EdFechaCorte.Date,FieldbyName('FECHA_A_PAGAR').AsDate) <= 360 Then
            CortoPlazo := CortoPlazo + SimpleRoundTo(FieldByName('CAPITAL_A_PAGAR').AsCurrency,0)
          Else
            LargoPlazo := LargoPlazo + SimpleRoundTo(FieldByName('CAPITAL_A_PAGAR').AsCurrency,0);
          Next;
        End;
    // while
    Close;
    EvaluarCortoPlazo;
  End;
// with
//  else
//    begin
//      CortoPlazo := 0;
//      LargoPlazo := 0;
//    end; // if
// Fin Corto y Largo Plazo
// Leo Costas Judiciales;
With IBSQL3 Do
  Begin
    Close;
    SQL.Clear;
    SQL.Add('SELECT SUM(VALOR_COSTAS) AS COSTAS FROM "col$costas"');
    SQL.Add('WHERE ID_AGENCIA = :ID_AGENCIA and ID_COLOCACION = :ID_COLOCACION AND FECHA<=:FECHACORTE');
    ParamByName('ID_AGENCIA').AsInteger := IBQuery1.FieldByName('ID_AGENCIA').AsInteger;
    ParamByName('ID_COLOCACION').AsString := IBQuery1.FieldByName('ID_COLOCACION').AsString;
    ParamByName('FECHACORTE').AsDate := RecodeDay(EdFechaCorte.Date,Dayof(EndOfAMonth(YearOf(EdFechaCorte.Date),MonthOf(EdFechaCorte.Date))));
    Try
      ExecQuery;
      Costas := FieldByName('COSTAS').AsCurrency;
    Except
      Costas := 0;
  End;
End;
// Fin Leo Costas
// Valido Aportes
If AportesCon > Deuda Then
  Begin
    vAportes := Deuda;
    AportesCon := AportesCon - vAportes;
  End
Else If Deuda > AportesCon Then
       Begin
         vAportes := AportesCon;
         AportesCon := 0;
       End;

// Fin Valido Aportes
// Actualizar Edad por Arrastre
With IBSQL3 Do
  Begin
    Close;
    SQL.Clear;
    SQL.Add('update "col$causaciondiariatmp" SET ID_ARRASTRE = :ID_ARRASTRE,TASA = :TASA,');
    SQL.Add('ANTICIPADOS = :ANTICIPADOS,CAUSADOS = :CAUSADOS,CONTINGENCIAS = :CONTINGENCIAS,');
    SQL.Add('APORTES = :APORTES, COSTAS = :COSTAS,');
    SQL.Add('CORTO_PL = :CORTO_PL, LARGO_PL = :LARGO_PL');
    SQL.Add('where ID_AGENCIA = :ID_AGENCIA and ID_COLOCACION = :ID_COLOCACION');
    ParamByName('ID_AGENCIA').AsInteger := IBQuery1.fieldbyname('ID_AGENCIA').AsInteger;
    ParamByName('ID_COLOCACION').AsString := IBQuery1.FieldByName('ID_COLOCACION').AsString;
    ParamByName('ID_ARRASTRE').AsString := edad_act;
    ParamByName('TASA').AsDouble := Tasa;
    ParamByName('ANTICIPADOS').AsCurrency := Anticipados;
    ParamByName('CAUSADOS').AsCurrency := Causados;
    ParamByName('CONTINGENCIAS').AsCurrency := Contingentes;
    ParamByName('APORTES').AsCurrency := vAportes;
    ParamByName('COSTAS').AsCurrency := Costas;
    ParamByName('CORTO_PL').AsCurrency := CortoPlazo;
    ParamByName('LARGO_PL').AsCurrency := LargoPlazo;
    Try
      ExecQuery;
    Except
      frmPantallaProgreso.Cerrar;
      MessageDlg('Error Actualizando Tabla Temporal',mtError,[mbcancel],0);
      Transaction.Rollback;
      raise;
      Exit;
  End;
End;
// with
// Fin Actualizaci�n
IBQuery1.Next;
End;
// while
IBQuery1.Close;
If dmGeneral.IBTransaction1.InTransaction  Then
  dmGeneral.IBTransaction1.Commit;
frmPantallaProgreso.Cerrar;
End;

Procedure TfrmCausacionCarteraDiaria.NovenoPasoComprobante;

Var AR: PList;
  i: Integer;
  Valor,Valor1: Currency;
Begin
  Valor := 0;
  For i := 0 To Lista.Count - 1 Do
    Begin
      AR := Lista.Items[i];
      If (LeftStr(AR^.codigo,1) = '5') And
         (AR^.credito > 0) Then
        Begin
          Valor := Valor + AR^.credito;
          Lista.Items[i] := Nil;
        End;
    End;
  If Valor > 0 Then
    For i := 0 To Lista.Count - 1 Do
      Begin
        AR := Lista.Items[i];
        If AR <> Nil Then
          If AR^.codigo = '149810000000000000' Then
            Begin
              If AR^.credito > 0 Then
                AR^.credito := AR^.credito + Valor
              Else
                Begin
                  AR^.debito := ar^.debito - Valor;
                  If AR^.debito < 0 Then
                    Begin
                      AR^.credito := -ar^.debito;
                      AR^.debito := 0;
                    End;
                End;
            End
        Else
          If AR^.codigo = '511524000000000000' Then
            Begin
              If AR^.debito > 0 Then
                AR^.debito := AR^.debito + Valor
              Else
                Begin
                  AR^.credito := ar^.credito - Valor;
                  If AR^.credito < 0 Then
                    Begin
                      AR^.debito := -ar^.debito;
                      AR^.credito := 0;
                    End;
                End;
            End;
      End;
  i := 0;
  While True Do
    Begin
      If i > (Lista.Count - 1) Then Break;
      If Lista.Items[i] = Nil Then Lista.Delete(i);
      i := i + 1;
    End;

  Lista.Pack;


  actualizargrid;

End;

Procedure TfrmCausacionCarteraDiaria.DecimoPasoComprobante;

Var I: Integer;
  TotalDebito: Currency;
  TotalCredito: Currency;
  ARecord: PList;
  idauxiliar: Integer;
Begin
  Consecutivo := ObtenerConsecutivoTmp(IBSQL1);
  EdComprobante.Caption := FormatCurr('0000000',Consecutivo);

  TotalDebito := 0;
  TotalCredito := 0;

  For I := 0 To Lista.Count - 1 Do
    Begin
      ARecord := Lista.Items[i];
      TotalDebito := TotalDebito + arecord^.debito;
      TotalCredito := TotalCredito + arecord^.credito;
    End;

  With IBSQL1 Do
    Begin
      If Transaction.InTransaction Then
        Transaction.Rollback;
      Transaction.StartTransaction;
      Close;
      sql.Clear;
      sql.Add('insert into "con$comprobante" ("con$comprobante"."ID_COMPROBANTE",');
      sql.Add('"con$comprobante"."FECHADIA", "con$comprobante"."TIPO_COMPROBANTE",');
      sql.Add('"con$comprobante"."ID_AGENCIA", "con$comprobante"."DESCRIPCION",');
      sql.Add('"con$comprobante"."TOTAL_DEBITO", "con$comprobante"."TOTAL_CREDITO",');
      sql.Add('"con$comprobante"."ESTADO", "con$comprobante"."IMPRESO",');
      sql.Add('"con$comprobante"."ANULACION","con$comprobante".ID_EMPLEADO)');
      sql.Add('values (');
      sql.Add(':"ID_COMPROBANTE", :"FECHADIA", :"TIPO_COMPROBANTE",');
      sql.Add(':"ID_AGENCIA", :"DESCRIPCION", :"TOTAL_DEBITO",');
      sql.Add(':"TOTAL_CREDITO", :"ESTADO", :"IMPRESO", :"ANULACION",:ID_EMPLEADO)');

      ParamByName('ID_COMPROBANTE').AsInteger := Consecutivo;
      ParamByname('FECHADIA').AsDate := Date;
      ParamByName('ID_AGENCIA').AsInteger := Agencia;
      ParamByName('TIPO_COMPROBANTE').AsInteger := 1;
      ParamByName('DESCRIPCION').AsString := 'AJUSTE CALIFICACION, CAUSACION Y PROVISION DE CARTERA EN LA FECHA';
      ParamByName('TOTAL_DEBITO').AsCurrency  := TotalDebito;
      ParamByName('TOTAL_CREDITO').AsCurrency  := TotalCredito;
      ParamByName('ESTADO').AsString  := 'O';
      ParamByname('ANULACION').asstring := '';
      ParamByName('IMPRESO').AsInteger  := 1;
      ParamByName('ID_EMPLEADO').AsString := DBAlias;
      ExecQuery;

      //         Close;
      //         SQL.Clear;
      //         SQL.Add('insert into "con$auxiliar" values (');
      //         SQL.Add(':"ID_COMPROBANTE",:"ID_AGENCIA",:"FECHA",:"CODIGO",:"DEBITO",');
      //         SQL.Add(':"CREDITO",:"ID_CUENTA",:"ID_COLOCACION",:"ID_IDENTIFICACION",');
      //         SQL.Add(':"ID_PERSONA",:"MONTO_RETENCION",:"TASA_RETENCION",:"ESTADOAUX")');
      If Lista.Count > 0 Then
        For I := 0 To Lista.Count -1 Do
          Begin
            Close;
            SQL.Clear;
            SQL.Add('insert into "con$auxiliar" values (');
            SQL.Add(':"ID_COMPROBANTE",:"ID_AGENCIA",:"FECHA",:"CODIGO",:"DEBITO",');
            SQL.Add(':"CREDITO",:"ID_CUENTA",:"ID_COLOCACION",:"ID_IDENTIFICACION",');
            SQL.Add(':"ID_PERSONA",:"MONTO_RETENCION",:"TASA_RETENCION",:"ESTADOAUX",:"TIPO_COMPROBANTE",:"ID",:"ID_CLASE_OPERACION")');
            ARecord := Lista.Items[I];
            idauxiliar :=  ObtenerConsecutivoAuxiliar(IBSQLAux);
            ParamByName('ID_COMPROBANTE').AsInteger := Consecutivo;
            ParamByName('ID_AGENCIA').AsInteger := Arecord^.centro;
            ParamByName('FECHA').AsDate := Date;
            ParamByName('CODIGO').AsString := Arecord^.codigo;
            ParamByName('DEBITO').AsCurrency := Arecord^.debito;
            ParamByName('CREDITO').AsCurrency := Arecord^.credito;
            ParamByName('ID_CUENTA').Clear;
            ParamByName('ID_COLOCACION').Clear;
            ParamByName('ID_IDENTIFICACION').AsInteger := 0;
            ParamByName('ID_PERSONA').Clear;
            ParamByName('MONTO_RETENCION').AsCurrency := 0;
            ParamByName('TASA_RETENCION').AsFloat := 0;
            ParamByName('ESTADOAUX').AsString := 'O';
            ParamByName('TIPO_COMPROBANTE').AsInteger := 1;
            ParamByName('ID').AsInteger := idauxiliar;
            ParamByName('ID_CLASE_OPERACION').Clear;
            ExecQuery;

            Close;
            ParamByName('ID').AsInteger := idauxiliar;
            ParamByName('DETALLE').AsString := 'AJUSTE CALIFICACION, CAUSACION Y PROVISION DE CARTERA EN LA FECHA';
            ParamByName('CHEQUE').AsString := '';
            ParamByName('TIPO_COMPROBANTE').AsInteger := 1;
            ParamByName('ID_COMPROBANTE').AsInteger := Consecutivo;
            ParamByName('ID_AGENCIA').AsInteger := Agencia;
            ExecQuery;

          End;
      Try
        Transaction.Commit;
      Except
        Transaction.Rollback;
        raise;
        Exit;
    End;
End;
End;

Procedure TfrmCausacionCarteraDiaria.TercerPasoCausacion;
Begin
  Case RGProceso.ItemIndex Of 
    1:
       Begin
         With IBSQL2 Do
           Begin
             If Transaction.InTransaction Then
               Transaction.Rollback;
             Transaction.StartTransaction;
             Close;
             SQL.Clear;
             SQL.Add('insert into "col$causacionescontrol" values (');
             SQL.Add(':FECHA,:PROCESADA,:APLICADA,:CONTABILIZADA,:ID_COMPROBANTE)');
             ParamByName('FECHA').AsDate := EdFechaCorte.Date;
             ParamByName('PROCESADA').AsInteger := 1;
             ParamByName('APLICADA').AsInteger := 0;
             ParamByName('CONTABILIZADA').AsInteger := 0;
             ParamByName('ID_COMPROBANTE').Clear;
             Try
               ExecQuery;
             Except
               MessageDlg('Error al Actualizar la Tabla de Control',mtError,[mbcancel],0);
               Transaction.Rollback;
               raise;
               Exit;
           End;

         Close;
         SQL.Clear;
         SQL.Add('insert into "col$causaciondiaria" select * from "col$causaciondiariatmp"');
         Try
           ExecQuery;
         Except
           MessageDlg('Error al Trasladar Valores',mtError,[mbcancel],0);
           Transaction.Rollback;
           raise;
           Exit;
       End;

    Transaction.Commit;
    MessageDlg('Traslado de Valores Culminado',mtInformation,[mbok],0);
  End;
End;
End;
End;

Procedure TfrmCausacionCarteraDiaria.CmdImprimirProvisionClick(
                                                               Sender: TObject);

Var 
  ExcelFile : TDataSetToExcel;
Begin
  If RGProceso.ItemIndex = 1 Then
    Begin
      With IBQuery1 Do
        Begin
          If Transaction.InTransaction Then
            Transaction.Rollback;
          Transaction.StartTransaction;
          Close;
          SQL.Clear;
          SQL.Add('SELECT');
          SQL.Add('"col$causaciondiaria".ID_AGENCIA,"col$causaciondiaria".ID_COLOCACION,"col$causaciondiaria".ID_CLASIFICACION,');
          SQL.Add('"col$causaciondiaria".DEUDA,"col$causaciondiaria".ID_EDAD_ANT,"col$causaciondiaria".ID_EDAD_ACT,"col$causaciondiaria".ID_ARRASTRE,');
          SQL.Add('"col$causaciondiaria".ID_GARANTIA,"col$causaciondiaria".DIAS,"col$causaciondiaria".MOROSIDAD,"col$causaciondiaria".ID_AGENCIA,');
          SQL.Add('"col$causaciondiariamov".PCAPITAL_ANUAL,"col$causaciondiariamov".PINTERES_ANUAL,"col$causaciondiariamov".PCOSTAS_ANUAL,');
          SQL.Add('"col$causaciondiariamov".PCAPITAL_ACT,"col$causaciondiariamov".PINTERES_ACT,"col$causaciondiariamov".PCOSTAS_ACT,');
          SQL.Add('"col$causaciondiaria".PCAPITAL,"col$causaciondiaria".PINTERES,"col$causaciondiaria".PCOSTAS,');
          SQL.Add('"col$causaciondiaria".PCAPITAL_REC,"col$causaciondiaria".PINTERES_REC,"col$causaciondiaria".PCOSTAS_REC,');
          SQL.Add('"col$causaciondiaria".PCAPITAL_REV,"col$causaciondiaria".PINTERES_REV,"col$causaciondiaria".PCOSTAS_REV,');
          SQL.Add('"col$causaciondiaria".PCAPITAL_GAS,"col$causaciondiaria".PINTERES_GAS,"col$causaciondiaria".PCOSTAS_GAS,');
          SQL.Add('"col$causaciondiaria".VALOR_GARANTIA, "col$causaciondiaria".GARANTIA_DESCONTADA,');
          SQL.Add('"col$clasificacion".DESCRIPCION_CLASIFICACION, "col$garantia".DESCRIPCION_GARANTIA,"col$categoria".DESCRIPCION_CATEGORIA');
          SQL.Add('from "col$causaciondiaria"');
          SQL.Add('left join "col$causaciondiariamov" on ("col$causaciondiaria".ID_AGENCIA = "col$causaciondiariamov".ID_AGENCIA and');
          SQL.Add('"col$causaciondiaria".ID_COLOCACION = "col$causaciondiariamov".ID_COLOCACION)');
          SQL.Add('inner join "col$clasificacion" on ("col$causaciondiaria".ID_CLASIFICACION = "col$clasificacion".ID_CLASIFICACION)');
          SQL.Add('inner join "col$garantia" on ("col$causaciondiaria".ID_GARANTIA = "col$garantia".ID_GARANTIA)');
          SQL.Add('inner join "col$categoria" on ("col$causaciondiaria".ID_ARRASTRE = "col$categoria".ID_CATEGORIA)');
          SQL.Add('where "col$causaciondiaria".FECHA_CORTE = :FECHA AND');
          SQL.Add('((PCAPITAL_REC>0) or (PINTERES_REC>0) or (PCOSTAS_REC>0) or');
          SQL.Add('(PCAPITAL_REV>0) or (PINTERES_REV>0) or (PCOSTAS_REV>0) or');
          SQL.Add('(PCAPITAL_GAS>0) or (PINTERES_GAS>0) or (PCOSTAS_GAS>0) or');
          SQL.Add('(PCAPITAL_ANUAL>0) or (PINTERES_ANUAL>0) or (PCOSTAS_ANUAL>0) or');
          SQL.Add('(PCAPITAL_ACT>0) or (PINTERES_ACT>0) or (PCOSTAS_ACT>0))');
          SQL.Add('order by "col$causaciondiaria".ID_CLASIFICACION, "col$causaciondiaria".ID_GARANTIA,"col$causaciondiaria".ID_ARRASTRE');
          ParamByName('FECHA').AsDate := EdFechaCorte.Date;

          IBQuery4.Close;
          IBQuery4.SQL.Clear;
          IBQuery4.SQL.Add('select');
          IBQuery4.SQL.Add('"col$causaciondiaria".ID_CLASIFICACION,');
          IBQuery4.SQL.Add('"col$clasificacion".DESCRIPCION_CLASIFICACION,');
          IBQuery4.SQL.Add('SUM("col$causaciondiariamov".PCAPITAL_ANUAL) as PCAPITAL_ANUAL,');
          IBQuery4.SQL.Add('SUM("col$causaciondiariamov".PINTERES_ANUAL) as PINTERES_ANUAL,');
          IBQuery4.SQL.Add('SUM("col$causaciondiariamov".PCOSTAS_ANUAL) as PCOSTAS_ANUAL,');
          IBQuery4.SQL.Add('SUM("col$causaciondiariamov".PCAPITAL_ACT) as PCAPITAL_ACT,');
          IBQuery4.SQL.Add('SUM("col$causaciondiariamov".PINTERES_ACT) as PINTERES_ACT,');
          IBQuery4.SQL.Add('SUM("col$causaciondiariamov".PCOSTAS_ACT) as PCOSTAS_ACT,');
          IBQuery4.SQL.Add('SUM("col$causaciondiaria".PCAPITAL) as PCAPITAL,');
          IBQuery4.SQL.Add('SUM("col$causaciondiaria".PINTERES) as PINTERES,');
          IBQuery4.SQL.Add('SUM("col$causaciondiaria".PCOSTAS) as PCOSTAS,');
          IBQuery4.SQL.Add('SUM("col$causaciondiaria".PCAPITAL_REC) as PCAPITAL_REC,');
          IBQuery4.SQL.Add('SUM("col$causaciondiaria".PINTERES_REC) as PINTERES_REC,');
          IBQuery4.SQL.Add('SUM("col$causaciondiaria".PCOSTAS_REC) as PCOSTAS_REC,');
          IBQuery4.SQL.Add('SUM("col$causaciondiaria".PCAPITAL_REV) as PCAPITAL_REV,');
          IBQuery4.SQL.Add('SUM("col$causaciondiaria".PINTERES_REV) as PINTERES_REV,');
          IBQuery4.SQL.Add('SUM("col$causaciondiaria".PCOSTAS_REV) as PCOSTAS_REV,');
          IBQuery4.SQL.Add('SUM("col$causaciondiaria".PCAPITAL_GAS) as PCAPITAL_GAS,');
          IBQuery4.SQL.Add('SUM("col$causaciondiaria".PINTERES_GAS) as PINTERES_GAS,');
          IBQuery4.SQL.Add('SUM("col$causaciondiaria".PCOSTAS_GAS) as PCOSTAS_GAS');
          IBQuery4.SQL.Add('from "col$causaciondiaria"');
          IBQuery4.SQL.Add('LEFT JOIN "col$clasificacion" ON ("col$causaciondiaria".ID_CLASIFICACION = "col$clasificacion".ID_CLASIFICACION)');
          IBQuery4.SQL.Add('LEFT JOIN "col$causaciondiariamov" ON ("col$causaciondiaria".ID_AGENCIA = "col$causaciondiariamov".ID_AGENCIA and');
          IBQuery4.SQL.Add('"col$causaciondiaria".ID_COLOCACION = "col$causaciondiariamov".ID_COLOCACION)');
          IBQuery4.SQL.Add('where fecha_corte = :fecha');
          IBQuery4.SQL.Add('group by');
          IBQuery4.SQL.Add('"col$causaciondiaria".ID_CLASIFICACION,');
          IBQuery4.SQL.Add('"col$clasificacion".DESCRIPCION_CLASIFICACION');
          IBQuery4.SQL.Add('order by');
          IBQuery4.SQL.Add('"col$causaciondiaria".ID_CLASIFICACION');
          IBQuery4.ParamByName('FECHA').AsDate := EdFechaCorte.Date;
        End;
      // Fin de With
    End
  Else
    Begin
      With IBQuery1 Do
        Begin
          If Transaction.InTransaction Then
            Transaction.Rollback;
          Transaction.StartTransaction;
          Close;
          SQL.Clear;
          SQL.Add('SELECT');
          SQL.Add('"col$causaciondiariatmp".ID_AGENCIA,"col$causaciondiariatmp".ID_COLOCACION,"col$causaciondiariatmp".ID_CLASIFICACION,');
          SQL.Add(
                '"col$causaciondiariatmp".DEUDA,"col$causaciondiariatmp".ID_EDAD_ANT,"col$causaciondiariatmp".ID_EDAD_ACT,"col$causaciondiariatmp".ID_ARRASTRE,'
          );
          SQL.Add('"col$causaciondiariatmp".ID_GARANTIA,"col$causaciondiariatmp".DIAS,"col$causaciondiariatmp".MOROSIDAD,"col$causaciondiariatmp".ID_AGENCIA,');
          SQL.Add('"col$causaciondiariamovtmp".PCAPITAL_ANUAL,"col$causaciondiariamovtmp".PINTERES_ANUAL,"col$causaciondiariamovtmp".PCOSTAS_ANUAL,');
          SQL.Add('"col$causaciondiariamovtmp".PCAPITAL_ACT,"col$causaciondiariamovtmp".PINTERES_ACT,"col$causaciondiariamovtmp".PCOSTAS_ACT,');
          SQL.Add('"col$causaciondiariatmp".PCAPITAL,"col$causaciondiariatmp".PINTERES,"col$causaciondiariatmp".PCOSTAS,');
          SQL.Add('"col$causaciondiariatmp".PCAPITAL_REC,"col$causaciondiariatmp".PINTERES_REC,"col$causaciondiariatmp".PCOSTAS_REC,');
          SQL.Add('"col$causaciondiariatmp".PCAPITAL_REV,"col$causaciondiariatmp".PINTERES_REV,"col$causaciondiariatmp".PCOSTAS_REV,');
          SQL.Add('"col$causaciondiariatmp".PCAPITAL_GAS,"col$causaciondiariatmp".PINTERES_GAS,"col$causaciondiariatmp".PCOSTAS_GAS,');
          SQL.Add('"col$causaciondiariatmp".VALOR_GARANTIA, "col$causaciondiariatmp".GARANTIA_DESCONTADA,');
          SQL.Add('"col$clasificacion".DESCRIPCION_CLASIFICACION, "col$garantia".DESCRIPCION_GARANTIA,"col$categoria".DESCRIPCION_CATEGORIA');
          SQL.Add('from "col$causaciondiariatmp"');
          SQL.Add('left join "col$causaciondiariamovtmp" on ("col$causaciondiariatmp".ID_AGENCIA = "col$causaciondiariamovtmp".ID_AGENCIA and');
          SQL.Add('"col$causaciondiariatmp".ID_COLOCACION = "col$causaciondiariamovtmp".ID_COLOCACION)');
          SQL.Add('inner join "col$clasificacion" on ("col$causaciondiariatmp".ID_CLASIFICACION = "col$clasificacion".ID_CLASIFICACION)');
          SQL.Add('inner join "col$garantia" on ("col$causaciondiariatmp".ID_GARANTIA = "col$garantia".ID_GARANTIA)');
          SQL.Add('inner join "col$categoria" on ("col$causaciondiariatmp".ID_ARRASTRE = "col$categoria".ID_CATEGORIA)');
          SQL.Add('where "col$causaciondiariatmp".FECHA_CORTE = :FECHA AND');
          SQL.Add('((PCAPITAL_REC>0) or (PINTERES_REC>0) or (PCOSTAS_REC>0) or');
          SQL.Add('(PCAPITAL_REV>0) or (PINTERES_REV>0) or (PCOSTAS_REV>0) or');
          SQL.Add('(PCAPITAL_GAS>0) or (PINTERES_GAS>0) or (PCOSTAS_GAS>0) or');
          SQL.Add('(PCAPITAL_ANUAL>0) or (PINTERES_ANUAL>0) or (PCOSTAS_ANUAL>0) or');
          SQL.Add('(PCAPITAL_ACT>0) or (PINTERES_ACT>0) or (PCOSTAS_ACT>0))');
          SQL.Add('order by "col$causaciondiariatmp".ID_CLASIFICACION, "col$causaciondiariatmp".ID_GARANTIA,"col$causaciondiariatmp".ID_ARRASTRE');
          ParamByName('FECHA').AsDate := EdFechaCorte.Date;

          IBQuery4.Close;
          IBQuery4.SQL.Clear;
          IBQuery4.SQL.Add('select');
          IBQuery4.SQL.Add('"col$causaciondiariatmp".ID_CLASIFICACION,');
          IBQuery4.SQL.Add('"col$clasificacion".DESCRIPCION_CLASIFICACION,');
          IBQuery4.SQL.Add('SUM("col$causaciondiariamovtmp".PCAPITAL_ANUAL) as PCAPITAL_ANUAL,');
          IBQuery4.SQL.Add('SUM("col$causaciondiariamovtmp".PINTERES_ANUAL) as PINTERES_ANUAL,');
          IBQuery4.SQL.Add('SUM("col$causaciondiariamovtmp".PCOSTAS_ANUAL) as PCOSTAS_ANUAL,');
          IBQuery4.SQL.Add('SUM("col$causaciondiariamovtmp".PCAPITAL_ACT) as PCAPITAL_ACT,');
          IBQuery4.SQL.Add('SUM("col$causaciondiariamovtmp".PINTERES_ACT) as PINTERES_ACT,');
          IBQuery4.SQL.Add('SUM("col$causaciondiariamovtmp".PCOSTAS_ACT) as PCOSTAS_ACT,');
          IBQuery4.SQL.Add('SUM("col$causaciondiariatmp".PCAPITAL) as PCAPITAL,');
          IBQuery4.SQL.Add('SUM("col$causaciondiariatmp".PINTERES) as PINTERES,');
          IBQuery4.SQL.Add('SUM("col$causaciondiariatmp".PCOSTAS) as PCOSTAS,');
          IBQuery4.SQL.Add('SUM("col$causaciondiariatmp".PCAPITAL_REC) as PCAPITAL_REC,');
          IBQuery4.SQL.Add('SUM("col$causaciondiariatmp".PINTERES_REC) as PINTERES_REC,');
          IBQuery4.SQL.Add('SUM("col$causaciondiariatmp".PCOSTAS_REC) as PCOSTAS_REC,');
          IBQuery4.SQL.Add('SUM("col$causaciondiariatmp".PCAPITAL_REV) as PCAPITAL_REV,');
          IBQuery4.SQL.Add('SUM("col$causaciondiariatmp".PINTERES_REV) as PINTERES_REV,');
          IBQuery4.SQL.Add('SUM("col$causaciondiariatmp".PCOSTAS_REV) as PCOSTAS_REV,');
          IBQuery4.SQL.Add('SUM("col$causaciondiariatmp".PCAPITAL_GAS) as PCAPITAL_GAS,');
          IBQuery4.SQL.Add('SUM("col$causaciondiariatmp".PINTERES_GAS) as PINTERES_GAS,');
          IBQuery4.SQL.Add('SUM("col$causaciondiariatmp".PCOSTAS_GAS) as PCOSTAS_GAS');
          IBQuery4.SQL.Add('from "col$causaciondiariatmp"');
          IBQuery4.SQL.Add('LEFT JOIN "col$clasificacion" ON ("col$causaciondiariatmp".ID_CLASIFICACION = "col$clasificacion".ID_CLASIFICACION)');
          IBQuery4.SQL.Add('LEFT JOIN "col$causaciondiariamovtmp" ON ("col$causaciondiariatmp".ID_AGENCIA = "col$causaciondiariamovtmp".ID_AGENCIA and');
          IBQuery4.SQL.Add('"col$causaciondiariatmp".ID_COLOCACION = "col$causaciondiariamovtmp".ID_COLOCACION)');
          IBQuery4.SQL.Add('where fecha_corte = :fecha');
          IBQuery4.SQL.Add('group by');
          IBQuery4.SQL.Add('"col$causaciondiariatmp".ID_CLASIFICACION,');
          IBQuery4.SQL.Add('"col$clasificacion".DESCRIPCION_CLASIFICACION');
          IBQuery4.SQL.Add('order by');
          IBQuery4.SQL.Add('"col$causaciondiariatmp".ID_CLASIFICACION');
          IBQuery4.ParamByName('FECHA').AsDate := EdFechaCorte.Date;
        End;
      // fin de With
    End;
  //  Fin de if


{
     frmVistaPreliminar := TfrmVistaPreliminar.Create(Self);
     ReporteD.Variables.ByName['Empresa'].AsString := Empresa;
     ReporteD.Variables.ByName['Agencia'].AsInteger := Agencia;
     ReporteD.Variables.ByName['FechaCorte'].AsDateTime := EdFechaCorte.Date;
     ReporteD.Title := 'Calificaci�n y Provisi�n de Colocaciones';
     if ReporteD.PrepareReport then begin
       frmVistaPreliminar.Reporte := ReporteD;
       frmVistaPreliminar.ShowModal;
     end;
     IBQuery1.Transaction.Commit;
     }

  SD1.Title := 'Nombre Para El Archivo de Provisi�n';
  If (SD1.Execute) Then
    Begin
      IBQuery1.Filtered := False;
      IBQuery1.Open;
      IBQuery1.First;
      ExcelFile := TDataSetToExcel.Create(IBQuery1,SD1.FileName);
      ExcelFile.WriteFile;
      ExcelFile.Free;
      ShowMessage('Archivo de Provisi�n Guardado...!');
    End
  Else
    Begin
      ShowMessage('Archivo no generado...!');
    End;


End;

Function TfrmCausacionCarteraDiaria.BuscoTasaAnt(Ag: integer;
                                                 Colocacion: String;FechaIntereses:TDate): Single;
Begin
  With IBSQL5 Do
    Begin
      Close;
      Transaction := IBTAlterna;
      Transaction.Active := True;
      If Transaction.InTransaction Then
        Transaction.Rollback;
      Transaction.StartTransaction;
      SQL.Clear;
      SQL.Add('select * from "col$extracto" where ID_AGENCIA = :ID_AGENCIA and ID_COLOCACION = :ID_COLOCACION');
      SQL.Add('ORDER BY FECHA_EXTRACTO DESC, HORA_EXTRACTO DESC');
      ParamByName('ID_AGENCIA').AsInteger := Ag;
      ParamByName('ID_COLOCACION').AsString := Colocacion;
      Try
        ExecQuery;
        If RecordCount > 0 Then
          While Not Eof Do
            Begin
              If FieldByName('INTERES_PAGO_HASTA').AsDate = FechaIntereses Then
                Begin
                  Result := SimpleRoundTo(FieldByName('TASA_INTERES_LIQUIDACION').AsDouble);
                  Transaction.Commit;
                  Exit;
                End;
              Next;
            End;
        Close;
        Transaction.Commit;
        Result := 0;
      Except
        Transaction.Rollback;
        Result := 0;
    End;
End;
End;

Procedure TfrmCausacionCarteraDiaria.PrimerPC;

Var AR : Plist;
  CortoActual,LargoActual: Currency;
  CodigoCorto,CodigoLargo: string;
  ValorCorto,ValorLargo: Currency;
  Aplica : Boolean;
Begin
  With IBSQL2 Do
    Begin
      If Transaction.InTransaction Then
        Transaction.Rollback;
      Transaction.StartTransaction;
      Close;
      SQL.Clear;
      SQL.Add('select "col$causaciondiaria".ID_CLASIFICACION, ');
      SQL.Add('"col$causaciondiaria".ID_GARANTIA,"col$causaciondiaria".ID_EDAD_ACT, ');
      SQL.Add('SUM("col$causaciondiaria".CORTO_PL) AS CORTO,');
      SQL.Add('SUM("col$causaciondiaria".LARGO_PL) AS LARGO from "col$causaciondiaria"');
      SQL.Add('inner join "col$codigospuc" on ');
      SQL.Add('("col$causaciondiaria".ID_CLASIFICACION = "col$codigospuc".ID_CLASIFICACION and');
      SQL.Add('"col$causaciondiaria".ID_GARANTIA = "col$codigospuc".ID_GARANTIA and');
      SQL.Add('"col$causaciondiaria".ID_EDAD_ACT = "col$codigospuc".ID_CATEGORIA)');
      SQL.Add('where "col$causaciondiaria".ID_EDAD_ACT = '+QuotedStr('A'));
      SQL.Add('and "col$causaciondiaria".FECHA_CORTE = :FECHA_CORTE');
      SQL.Add('group by "col$causaciondiaria".ID_CLASIFICACION, "col$causaciondiaria".ID_GARANTIA,');
      SQL.Add('"col$causaciondiaria".ID_EDAD_ACT');
      SQL.Add('order by "col$causaciondiaria".ID_CLASIFICACION DESC,"col$causaciondiaria".ID_GARANTIA,');
      SQL.Add('"col$causaciondiaria".ID_EDAD_ACT');
      ParamByName('FECHA_CORTE').AsDate := EdFechaCorte.Date;
      Try
        ExecQuery;
      Except
        MessageDlg('Error al Buscar Corto y Largo Plazo',mtError,[mbcancel],0);
        Transaction.Rollback;
        raise;
        Exit;
    End;

  // Buscar y Comparar Valores
  While Not Eof Do
    Begin
      // Buscar Codigo Puc
      IBSQL3.Close;
      IBSQL3.SQL.Clear;
      IBSQL3.SQL.Add('select "col$codigospuc".COD_CAPITAL_CP,"col$codigospuc".COD_CAPITAL_LP');
      IBSQL3.SQL.Add('from "col$codigospuc" where "col$codigospuc".ID_CLASIFICACION = :ID_CLASIFICACION and ');
      IBSQL3.SQL.Add('"col$codigospuc".ID_GARANTIA = :ID_GARANTIA and "col$codigospuc".ID_CATEGORIA = :ID_CATEGORIA');
      IBSQL3.ParamByName('ID_CLASIFICACION').AsInteger := FieldByName('ID_CLASIFICACION').AsInteger;
      IBSQL3.ParamByName('ID_GARANTIA').AsInteger := fieldbyname('ID_GARANTIA').AsInteger;
      IBSQL3.ParamByName('ID_CATEGORIA').AsString := fieldbyname('ID_EDAD_ACT').AsString;
      Try
        IBSQL3.ExecQuery;
        CodigoCorto := IBSQL3.FieldByName('COD_CAPITAL_CP').AsString;
        CodigoLargo := IBSQL3.FieldByName('COD_CAPITAL_LP').AsString;
      Except
        MessageDlg('Error Buscando Codigos Corto y Largo Plazo',mtError,[mbcancel],0);
        Transaction.Rollback;
        raise;
        Exit;
    End;

  IBSQL3.Close;
  IBSQL3.SQL.Clear;
  IBSQL3.SQL.Add('select * from VALOR_AGENCIA(:MES,:CODIGO)');
  IBSQL3.ParamByName('MES').AsInteger := Monthof(EdFechaCorte.Date);
  IBSQL3.ParamByName('CODIGO').AsString := CodigoCorto;
  Try
    IBSQL3.ExecQuery;
    ValorCorto := IBSQL3.FieldByName('SALDO').AsCurrency;
  Except
    MessageDlg('Error al Obtener valor de Corto Plazo',mtError,[mbcancel],0);
    Transaction.Rollback;
    raise;
    Exit;
End;
ValorLargo := 0;

{
                     IBSQL3.Close;
                     IBSQL3.SQL.Clear;
                     IBSQL3.SQL.Add('select * from VALOR_AGENCIA(:MES,:CODIGO)');
                     IBSQL3.ParamByName('ID_AGENCIA').AsInteger := Agencia;
                     IBSQL3.ParamByName('MES').AsInteger := Monthof(EdFechaCorte.Date);
                     IBSQL3.ParamByName('CODIGO').AsString := CodigoLargo;
                     try
                      IBSQL3.ExecQuery;
                      ValorLargo := IBSQL3.FieldByName('SALDO').AsCurrency;
                     except
                      MessageDlg('Error al Obtener valor de Corto Plazo',mtError,[mbcancel],0);
                      Transaction.Rollback;
                      raise;
                      Exit;
                     end;
                     }
//  Comparar Valor y Contabilizar Diferencia
IBSQL3.Close;
IBSQL3.SQL.Clear;
IBSQL3.SQL.Add('select NOMBRE from "con$puc" where CODIGO = :CODIGO');
IBSQL3.ParamByName('CODIGO').AsString := CodigoCorto;
IBSQL3.ExecQuery;
Aplica := False;
If ValorCorto > FieldByName('CORTO').AsCurrency Then
  Begin
    New(AR);
    AR^.codigo := CodigoCorto;
    AR^.centro := 1;
    AR^.nomcuenta := IBSQL3.FieldByName('NOMBRE').AsString;
    AR^.nocuenta := 0;
    AR^.nocredito := '';
    AR^.tipoide := 0;
    AR^.idpersona := '';
    AR^.monto := 0;
    AR^.tasa := 0;
    AR^.estado := 'O';
    AR^.debito := 0;
    AR^.credito := ValorCorto - FieldByName('CORTO').AsCurrency;
    Lista.Add(AR);
    Aplica := True;
  End
Else If ValorCorto < FieldByName('CORTO').AsCurrency Then
       Begin
         New(AR);
         AR^.codigo := CodigoCorto;
         AR^.centro := 1;
         AR^.nomcuenta := IBSQL3.FieldByName('NOMBRE').AsString;
         AR^.nocuenta := 0;
         AR^.nocredito := '';
         AR^.tipoide := 0;
         AR^.idpersona := '';
         AR^.monto := 0;
         AR^.tasa := 0;
         AR^.estado := 'O';
         AR^.credito := 0;
         AR^.debito := FieldByName('CORTO').AsCurrency - ValorCorto;
         Lista.Add(AR);
         Aplica := True;
       End;

IBSQL3.Close;
IBSQL3.ParamByName('CODIGO').AsString := CodigoLargo;
IBSQL3.ExecQuery;

{
                     if ValorLargo > FieldByName('LARGO').AsCurrency then
                     begin
                        New(AR);
                        AR^.codigo := CodigoLargo;
                        AR^.nomcuenta := IBSQL3.FieldByName('NOMBRE').AsString;
                        AR^.nocuenta := 0;
                        AR^.nocredito := '';
                        AR^.tipoide := 0;
                        AR^.idpersona := '';
                        AR^.monto := 0;
                        AR^.tasa := 0;
                        AR^.estado := 'O';
                        AR^.debito := 0;
                        AR^.credito := ValorLargo - FieldByName('LARGO').AsCurrency;
                        Lista.Add(AR);
                        Aplica := True;
                     end
                     else if ValorLargo < FieldByName('LARGO').AsCurrency then
                     begin
                        New(AR);
                        AR^.codigo := CodigoLargo;
                        AR^.nomcuenta := IBSQL3.FieldByName('NOMBRE').AsString;
                        AR^.nocuenta := 0;
                        AR^.nocredito := '';
                        AR^.tipoide := 0;
                        AR^.idpersona := '';
                        AR^.monto := 0;
                        AR^.tasa := 0;
                        AR^.estado := 'O';
                        AR^.credito := 0;
                        AR^.debito := FieldByName('LARGO').AsCurrency - ValorLargo;
                        Lista.Add(AR);
                     end;
                     }
ActualizarGrid;
Next;
End;
// while
End;
// with
IBSQL2.Transaction.Commit;
End;

Procedure TfrmCausacionCarteraDiaria.SegundoPC;

Var AR: PList;
  Codigo: string;
  ValorContable,ValorCartera: Currency;
  Aplica : Boolean;
Begin
  ValorCartera := 0;
  ValorContable := 0;
  With IBSQL1 Do
    Begin
      If Transaction.InTransaction Then
        Transaction.Rollback;
      Transaction.StartTransaction;
      Close;
      SQL.Clear;
      SQL.Add('select * from "col$porccausacion"');
      SQL.Add('order by ID_CLASIFICACION,ID_GARANTIA,ID_EDAD');
      Try
        ExecQuery;
      Except
        Transaction.Rollback;
        raise;
    End;
  While Not Eof Do
    Begin
      ValorCartera := 0;
      ValorContable := 0;

      IBSQL2.Close;
      IBSQL2.SQL.Clear;
      IBSQL2.SQL.Add('select SUM("col$causaciondiaria".DEUDA) AS DEUDA');
      IBSQL2.SQL.Add('from "col$causaciondiaria"');
      IBSQL2.SQL.Add('where ID_CLASIFICACION = :ID_CLASIFICACION and ');
      IBSQL2.SQL.Add('ID_GARANTIA = :ID_GARANTIA and ID_ARRASTRE = :ID_CATEGORIA and');
      IBSQL2.SQL.Add('FECHA_CORTE = :FECHA_CORTE');
      IBSQL2.ParamByName('ID_CLASIFICACION').AsInteger := FieldByName('ID_CLASIFICACION').AsInteger;
      IBSQL2.ParamByName('ID_GARANTIA').AsInteger := FieldByName('ID_GARANTIA').AsInteger;
      IBSQL2.ParamByName('ID_CATEGORIA').AsString := FieldByName('ID_EDAD').AsString;
      IBSQL2.ParamByName('FECHA_CORTE').AsDate := EdFechaCorte.Date;
      Try
        IBSQL2.ExecQuery;
        If IBSQL2.RecordCount > 0 Then
          ValorCartera := IBSQL2.FieldByName('DEUDA').AsCurrency
        Else
          ValorCartera := 0;
      Except
        MessageDlg('Error al Buscar Deuda',mtError,[mbcancel],0);
        Transaction.Rollback;
        raise;
        Exit;
    End;

  IBSQL3.Close;
  IBSQL3.SQL.Clear;
  IBSQL3.SQL.Add('select "col$codigospuc".COD_CAPITAL_CP');
  IBSQL3.SQL.Add('from "col$codigospuc" where "col$codigospuc".ID_CLASIFICACION = :ID_CLASIFICACION and ');
  IBSQL3.SQL.Add('"col$codigospuc".ID_GARANTIA = :ID_GARANTIA and "col$codigospuc".ID_CATEGORIA = :ID_CATEGORIA');
  IBSQL3.ParamByName('ID_CLASIFICACION').AsInteger := FieldByName('ID_CLASIFICACION').AsInteger;
  IBSQL3.ParamByName('ID_GARANTIA').AsInteger := fieldbyname('ID_GARANTIA').AsInteger;
  IBSQL3.ParamByName('ID_CATEGORIA').AsString := fieldbyname('ID_EDAD').AsString;
  Try
    IBSQL3.ExecQuery;
    Codigo := IBSQL3.FieldByName('COD_CAPITAL_CP').AsString;
  Except
    MessageDlg('Error Buscando Codigos Corto y Largo Plazo',mtError,[mbcancel],0);
    Transaction.Rollback;
    raise;
    Exit;
End;

IBSQL3.Close;
IBSQL3.SQL.Clear;
IBSQL3.SQL.Add('select * from VALOR_AGENCIA(:MES,:CODIGO)');
IBSQL3.ParamByName('MES').AsInteger := Monthof(EdFechaCorte.Date);
IBSQL3.ParamByName('CODIGO').AsString := Codigo;
Try
  IBSQL3.ExecQuery;
  ValorContable := IBSQL3.FieldByName('SALDO').AsCurrency;
Except
  MessageDlg('Error al Obtener valor de Corto Plazo',mtError,[mbcancel],0);
  Transaction.Rollback;
  raise;
  Exit;
End;


//Comparar Saldos y Contabilizar

IBSQL3.Close;
IBSQL3.SQL.Clear;
IBSQL3.SQL.Add('select NOMBRE from "con$puc" where CODIGO = :CODIGO');
IBSQL3.ParamByName('CODIGO').AsString := Codigo;
IBSQL3.ExecQuery;
Aplica := False;
If ValorContable > ValorCartera Then
  Begin
    New(AR);
    AR^.codigo := Codigo;
    AR^.centro := 1;
    AR^.nomcuenta := IBSQL3.FieldByName('NOMBRE').AsString;
    AR^.nocuenta := 0;
    AR^.nocredito := '';
    AR^.tipoide := 0;
    AR^.idpersona := '';
    AR^.monto := 0;
    AR^.tasa := 0;
    AR^.estado := 'O';
    AR^.debito := 0;
    AR^.credito := ValorContable - ValorCartera;
    Lista.Add(AR);
    Aplica := True;
  End
Else If ValorContable < ValorCartera Then
       Begin
         New(AR);
         AR^.codigo := Codigo;
         AR^.centro := 1;
         AR^.nomcuenta := IBSQL3.FieldByName('NOMBRE').AsString;
         AR^.nocuenta := 0;
         AR^.nocredito := '';
         AR^.tipoide := 0;
         AR^.idpersona := '';
         AR^.monto := 0;
         AR^.tasa := 0;
         AR^.estado := 'O';
         AR^.credito := 0;
         AR^.debito := ValorCartera - ValorContable;
         Lista.Add(AR);
         Aplica := True;
       End;
ActualizarGrid;
Next;
End;
// while
End;
// with

IBSQL1.Transaction.Commit;

End;

Procedure TfrmCausacionCarteraDiaria.TercerPC;

Var AR: PList;
  Valor,ValorCausado: Currency;
  Codigo: string;
  Comercial,Consumo,Vivienda,Microcredito: Currency;
  Aplica : Boolean;
Begin
  Comercial    := 0;
  Consumo      := 0;
  Vivienda     := 0;
  Microcredito := 0;
  With IBSQL1 Do
    Begin
      If Transaction.InTransaction Then
        Transaction.Rollback;
      Transaction.StartTransaction;
      Close;
      SQL.Clear;
      SQL.Add('select * from "col$porccausacion"');
      SQL.Add('where ID_GARANTIA = 1');
      SQL.Add('order by ID_CLASIFICACION,ID_GARANTIA,ID_EDAD');
      Try
        ExecQuery;
      Except
        Transaction.Rollback;
        raise;
    End;
  While Not Eof Do
    Begin
      IBSQL2.Close;
      IBSQL2.SQL.Clear;
      IBSQL2.SQL.Add('select SUM("col$causaciondiaria".CAUSADOS) AS CAUSADOS');
      IBSQL2.SQL.Add('from "col$causaciondiaria"');
      IBSQL2.SQL.Add('where ID_CLASIFICACION = :ID_CLASIFICACION and ');
      IBSQL2.SQL.Add('ID_ARRASTRE = :ID_CATEGORIA and');
      IBSQL2.SQL.Add('FECHA_CORTE = :FECHA_CORTE');
      IBSQL2.ParamByName('ID_CLASIFICACION').AsInteger := FieldByName('ID_CLASIFICACION').AsInteger;
      IBSQL2.ParamByName('ID_CATEGORIA').AsString := FieldByName('ID_EDAD').AsString;
      IBSQL2.ParamByName('FECHA_CORTE').AsDate := EdFechaCorte.Date;
      Try
        IBSQL2.ExecQuery;
        If IBSQL2.RecordCount > 0 Then
          ValorCausado := IBSQL2.FieldByName('CAUSADOS').AsCurrency
        Else
          ValorCausado := 0;
      Except
        MessageDlg('Error al Buscar Deuda',mtError,[mbcancel],0);
        Transaction.Rollback;
        raise;
        Exit;
    End;

  // Buscar y Comparar Valores
  // Buscar Codigo Puc
  IBSQL3.Close;
  IBSQL3.SQL.Clear;
  IBSQL3.SQL.Add('select "col$codigospuc".COD_CXC');
  IBSQL3.SQL.Add('from "col$codigospuc" where "col$codigospuc".ID_CLASIFICACION = :ID_CLASIFICACION and ');
  IBSQL3.SQL.Add('"col$codigospuc".ID_GARANTIA = :ID_GARANTIA and "col$codigospuc".ID_CATEGORIA = :ID_CATEGORIA');
  IBSQL3.ParamByName('ID_CLASIFICACION').AsInteger := FieldByName('ID_CLASIFICACION').AsInteger;
  IBSQL3.ParamByName('ID_GARANTIA').AsInteger := 2;
  IBSQL3.ParamByName('ID_CATEGORIA').AsString := fieldbyname('ID_EDAD').AsString;
  Try
    IBSQL3.ExecQuery;
    Codigo := IBSQL3.FieldByName('COD_CXC').AsString;
  Except
    MessageDlg('Error Buscando Codigos Interes Causado',mtError,[mbcancel],0);
    Transaction.Rollback;
    raise;
    Exit;
End;
//  Buscar en Puc Saldos Actuales

IBSQL3.Close;
IBSQL3.SQL.Clear;
IBSQL3.SQL.Add('select * from VALOR_AGENCIA(:MES,:CODIGO)');
IBSQL3.ParamByName('MES').AsInteger := Monthof(EdFechaCorte.Date);
IBSQL3.ParamByName('CODIGO').AsString := Codigo;
Try
  IBSQL3.ExecQuery;
  Valor := IBSQL3.FieldByName('SALDO').AsCurrency;
Except
  MessageDlg('Error al Obtener valor de Corto Plazo',mtError,[mbcancel],0);
  Transaction.Rollback;
  raise;
  Exit;
End;

//Comparar Saldos y Contabilizar

IBSQL3.Close;
IBSQL3.SQL.Clear;
IBSQL3.SQL.Add('select NOMBRE from "con$puc" where CODIGO = :CODIGO');
IBSQL3.ParamByName('CODIGO').AsString := Codigo;
IBSQL3.ExecQuery;
Aplica := False;
If Valor > ValorCausado Then
  Begin
    New(AR);
    AR^.codigo := Codigo;
    AR^.centro := 1;
    AR^.nomcuenta := IBSQL3.FieldByName('NOMBRE').AsString;
    AR^.nocuenta := 0;
    AR^.nocredito := '';
    AR^.tipoide := 0;
    AR^.idpersona := '';
    AR^.monto := 0;
    AR^.tasa := 0;
    AR^.estado := 'O';
    AR^.debito := 0;
    AR^.credito := Valor - ValorCausado;
    Lista.Add(AR);
    Aplica := True;
  End
Else If Valor < ValorCausado Then
       Begin
         New(AR);
         AR^.codigo := Codigo;
         AR^.centro := 1;
         AR^.nomcuenta := IBSQL3.FieldByName('NOMBRE').AsString;
         AR^.nocuenta := 0;
         AR^.nocredito := '';
         AR^.tipoide := 0;
         AR^.idpersona := '';
         AR^.monto := 0;
         AR^.tasa := 0;
         AR^.estado := 'O';
         AR^.credito := 0;
         AR^.debito := ValorCausado - Valor;
         Lista.Add(AR);
         Aplica := True;
       End;
If Aplica Then
  If FieldByName('ID_CLASIFICACION').AsInteger = 1 Then
    Comercial := Comercial - ar^.debito + ar^.credito
Else If FieldByName('ID_CLASIFICACION').AsInteger = 2 Then
       Consumo := Consumo + ar^.credito - ar^.debito
Else If FieldByName('ID_CLASIFICACION').AsInteger = 3 Then
       Vivienda := Vivienda + ar^.credito - ar^.debito
Else If FieldByName('ID_CLASIFICACION').AsInteger = 4 Then
       Microcredito := Microcredito + ar^.credito - ar^.debito;
ActualizarGrid;
Next;
End;
// while
End;
// with
Codigo := '415020010100000000';
IBSQL3.SQL.Clear;
IBSQL3.SQL.Add('select NOMBRE from "con$puc" where CODIGO = :CODIGO');

If Comercial <> 0 Then
  Begin
    New(ar);
    IBSQL3.Close;
    IBSQL3.ParamByName('CODIGO').AsString := Codigo;
    IBSQL3.ExecQuery;
    AR^.codigo := Codigo;
    AR^.centro := 1;
    AR^.nomcuenta := IBSQL3.FieldByName('NOMBRE').AsString;
    AR^.nocuenta := 0;
    AR^.nocredito := '';
    AR^.tipoide := 0;
    AR^.idpersona := '';
    AR^.monto := 0;
    AR^.tasa := 0;
    AR^.estado := 'O';
    If Comercial < 0 Then
      Begin
        AR^.credito := -Comercial;
        AR^.debito := 0;
      End
    Else
      Begin
        AR^.debito := Comercial;
        AR^.credito := 0;
      End;
    Lista.Add(AR);
  End;

Codigo := '415020020100000000';
If Consumo <> 0 Then
  Begin
    New(ar);
    IBSQL3.Close;
    IBSQL3.ParamByName('CODIGO').AsString := Codigo;
    IBSQL3.ExecQuery;
    AR^.codigo := Codigo;
    AR^.centro := 1;
    AR^.nomcuenta := IBSQL3.FieldByName('NOMBRE').AsString;
    AR^.nocuenta := 0;
    AR^.nocredito := '';
    AR^.tipoide := 0;
    AR^.idpersona := '';
    AR^.monto := 0;
    AR^.tasa := 0;
    AR^.estado := 'O';
    If Consumo < 0 Then
      Begin
        AR^.credito := -Consumo;
        AR^.debito := 0;
      End
    Else
      Begin
        AR^.debito := Consumo;
        AR^.credito := 0;
      End;
    Lista.Add(AR);
  End;

Codigo := '415020030100000000';
If Vivienda <> 0 Then
  Begin
    New(ar);
    IBSQL3.Close;
    IBSQL3.ParamByName('CODIGO').AsString := Codigo;
    IBSQL3.ExecQuery;
    AR^.codigo := Codigo;
    AR^.centro := 1;
    AR^.nomcuenta := IBSQL3.FieldByName('NOMBRE').AsString;
    AR^.nocuenta := 0;
    AR^.nocredito := '';
    AR^.tipoide := 0;
    AR^.idpersona := '';
    AR^.monto := 0;
    AR^.tasa := 0;
    AR^.estado := 'O';
    If Vivienda < 0 Then
      Begin
        AR^.credito := -Vivienda;
        AR^.debito := 0;
      End
    Else
      Begin
        AR^.debito := Vivienda;
        AR^.credito := 0;
      End;
    Lista.Add(AR);
  End;

Codigo := '415020040100000000';
If Microcredito <> 0 Then
  Begin
    New(ar);
    IBSQL3.Close;
    IBSQL3.ParamByName('CODIGO').AsString := Codigo;
    IBSQL3.ExecQuery;
    AR^.codigo := Codigo;
    AR^.centro := 1;
    AR^.nomcuenta := IBSQL3.FieldByName('NOMBRE').AsString;
    AR^.nocuenta := 0;
    AR^.nocredito := '';
    AR^.tipoide := 0;
    AR^.idpersona := '';
    AR^.monto := 0;
    AR^.tasa := 0;
    AR^.estado := 'O';
    If Microcredito < 0 Then
      Begin
        AR^.credito := -Microcredito;
        AR^.debito := 0;
      End
    Else
      Begin
        AR^.debito := Microcredito;
        AR^.credito := 0;
      End;
    Lista.Add(AR);
  End;

Actualizargrid;
IBSQL1.Transaction.Commit;
End;

Procedure TfrmCausacionCarteraDiaria.CuartoPC;

Var AR: PList;
  ValorContable,ValorProvision, ValorE: Currency;
  Codigo,CodigoI,CodigoE: string;
  Comercial,Consumo,Vivienda,Microcredito: Currency;
  Aplica : Boolean;
  IdAgencia: Integer;
  FechaInicial, FechaFinal: TDateTime;
Begin
  TryEncodeDate(YearOf(EdFechaCorte.Date), 1, 1, FechaInicial);
  TryEncodeDate(YearOf(EdFechaCorte.Date), MonthOf(EdFechaCorte.Date), DaysInAMonth(YearOf(EdFechaCorte.Date), MonthOf(EdFechaCorte.Date)), FechaFinal);
  If IBSQL0.Transaction.InTransaction Then
    IBSQL0.Transaction.Rollback;
  IBSQL0.Transaction.StartTransaction;
  IBSQL0.Close;
  IBSQL0.SQL.Clear;
  IBSQL0.SQL.Add('SELECT ID_AGENCIA FROM "gen$agencia" ORDER BY ID_AGENCIA ASC');
  IBSQL0.ExecQuery;
  While Not IBSQL0.Eof Do
    Begin
      IdAgencia := IBSQL0.FieldByName('ID_AGENCIA').AsInteger;
      Comercial    := 0;
      Consumo      := 0;
      Vivienda     := 0;
      Microcredito := 0;
      ValorE       := 0;
      IBSQL1.Close;
      IBSQL1.SQL.Clear;
      IBSQL1.SQL.Add('select * from "col$porccausacion"');
      IBSQL1.SQL.Add('order by ID_CLASIFICACION,ID_GARANTIA,ID_EDAD');
      Try
        IBSQL1.ExecQuery;
      Except
        IBSQL1.Transaction.Rollback;
        raise;
    End;
  While Not IBSQL1.Eof Do
    Begin
      IBSQL2.Close;
      IBSQL2.SQL.Clear;
      IBSQL2.SQL.Add('select SUM("col$causaciondiaria".PCAPITAL) AS PCAPITAL');
      IBSQL2.SQL.Add('from "col$causaciondiaria"');
      IBSQL2.SQL.Add('where ID_CLASIFICACION = :ID_CLASIFICACION and ');
      IBSQL2.SQL.Add('ID_GARANTIA = :ID_GARANTIA and');
      IBSQL2.SQL.Add('ID_ARRASTRE = :ID_ARRASTRE and');
                 { Dato adicionado para filtrar por centro }
      IBSQL2.SQL.Add('ID_AGENCIA = :ID_AGENCIA and');
                 { Dato adicionado para filtrar por centro }
      IBSQL2.SQL.Add('FECHA_CORTE = :FECHA_CORTE');
      IBSQL2.ParamByName('ID_CLASIFICACION').AsInteger := IBSQL1.FieldByName('ID_CLASIFICACION').AsInteger;
      IBSQL2.ParamByName('ID_GARANTIA').AsInteger := IBSQL1.FieldByName('ID_GARANTIA').AsInteger;
      IBSQL2.ParamByName('ID_ARRASTRE').AsString := IBSQL1.FieldByName('ID_EDAD').AsString;
      IBSQL2.ParamByName('FECHA_CORTE').AsDate := EdFechaCorte.Date;
                 { Parametro adicionado para filtrar centro }
      IBSQL2.ParamByName('ID_AGENCIA').AsInteger := IdAgencia;
      Try
        IBSQL2.ExecQuery;
        If IBSQL2.RecordCount > 0 Then
          ValorProvision := IBSQL2.FieldByName('PCAPITAL').AsCurrency
        Else
          ValorProvision := 0;
      Except
        MessageDlg('Error al Buscar Deuda',mtError,[mbcancel],0);
        IBSQL2.Transaction.Rollback;
        raise;
        Exit;
    End;

  // Buscar y Comparar Valores
  // Buscar Codigo Puc
  IBSQL3.Close;
  IBSQL3.SQL.Clear;
  IBSQL3.SQL.Add('select "col$codigospuc".COD_PROV_CAPITAL');
  IBSQL3.SQL.Add('from "col$codigospuc" where "col$codigospuc".ID_CLASIFICACION = :ID_CLASIFICACION and ');
  IBSQL3.SQL.Add('"col$codigospuc".ID_GARANTIA = :ID_GARANTIA and "col$codigospuc".ID_CATEGORIA = :ID_CATEGORIA');
  IBSQL3.ParamByName('ID_CLASIFICACION').AsInteger := IBSQL1.FieldByName('ID_CLASIFICACION').AsInteger;
  IBSQL3.ParamByName('ID_GARANTIA').AsInteger := IBSQL1.FieldByName('ID_GARANTIA').AsInteger;
  IBSQL3.ParamByName('ID_CATEGORIA').AsString := IBSQL1.fieldByName('ID_EDAD').AsString;
  Try
    IBSQL3.ExecQuery;
    Codigo := IBSQL3.FieldByName('COD_PROV_CAPITAL').AsString;
  Except
    MessageDlg('Error Buscando Codigo Provision Capital',mtError,[mbcancel],0);
    IBSQL3.Transaction.Rollback;
    raise;
    Exit;
End;
//  Buscar en Puc Saldos Actuales

IBSQL3.Close;
IBSQL3.SQL.Clear;
IBSQL3.SQL.Add('select * from VALOR_CENTRO(:ID_AGENCIA, :FECHA_INICIAL, :FECHA_FINAL, :CODIGO)');
                 { Dato adicionado para filtrar por Centro }
IBSQL3.ParamByName('ID_AGENCIA').AsInteger := IdAgencia;
IBSQL3.ParamByName('FECHA_INICIAL').AsDate := FechaInicial;
IBSQL3.ParamByName('FECHA_FINAL').AsDate := FechaFinal;
                 { Dato adicionado para filtrar por Centro }
// IBSQL3.ParamByName('MES').AsInteger := Monthof(EdFechaCorte.Date);
IBSQL3.ParamByName('CODIGO').AsString := Codigo;
Try
  IBSQL3.ExecQuery;
  ValorContable := IBSQL3.FieldByName('SALDO').AsCurrency;
Except
  MessageDlg('Error al Obtener valor de Corto Plazo',mtError,[mbcancel],0);
  IBSQL3.Transaction.Rollback;
  raise;
  Exit;
End;

//Comparar Saldos y Contabilizar

IBSQL3.Close;
IBSQL3.SQL.Clear;
IBSQL3.SQL.Add('select NOMBRE from "con$puc" where CODIGO = :CODIGO');
IBSQL3.ParamByName('CODIGO').AsString := Codigo;
IBSQL3.ExecQuery;
Aplica := False;
If ValorContable > -ValorProvision Then
  Begin
    New(AR);
    AR^.codigo := Codigo;
    AR^.centro := IdAgencia;
    AR^.nomcuenta := IBSQL3.FieldByName('NOMBRE').AsString;
    AR^.nocuenta := 0;
    AR^.nocredito := '';
    AR^.tipoide := 0;
    AR^.idpersona := '';
    AR^.monto := 0;
    AR^.tasa := 0;
    AR^.estado := 'O';
    AR^.debito := 0;
    AR^.credito := ValorContable - -ValorProvision;
    Lista.Add(AR);
    Aplica := True;
  End
Else If ValorContable < (-ValorProvision) Then
       Begin
         New(AR);
         AR^.codigo := Codigo;
         AR^.nomcuenta := IBSQL3.FieldByName('NOMBRE').AsString;
         AR^.centro := IdAgencia;
         AR^.nocuenta := 0;
         AR^.nocredito := '';
         AR^.tipoide := 0;
         AR^.idpersona := '';
         AR^.monto := 0;
         AR^.tasa := 0;
         AR^.estado := 'O';
         AR^.credito := 0;
         AR^.debito := -ValorProvision - ValorContable;
         Lista.Add(AR);
         Aplica := True;
       End;

ActualizarGrid;
IBSQL1.Next;
End;
// while

IBSQL3.Close;
IBSQL3.SQL.Clear;
IBSQL3.SQL.Add('select "col$causaciondiaria".ID_CLASIFICACION,');
IBSQL3.SQL.Add('SUM("col$causaciondiaria".PCAPITAL_REC) AS PCAPITAL_REC,');
IBSQL3.SQL.Add('SUM("col$causaciondiaria".PCAPITAL_REV) AS PCAPITAL_REV,');
IBSQL3.SQL.Add('SUM("col$causaciondiaria".PCAPITAL_GAS) AS PCAPITAL_GAS,');
IBSQL3.SQL.Add('"col$codigospuc".COD_IPROV_CAPITAL,');
IBSQL3.SQL.Add('"col$codigospuc".COD_EPROV_CAPITAL');
IBSQL3.SQL.Add('from "col$causaciondiaria"');
IBSQL3.SQL.Add('inner join "col$codigospuc" on');
IBSQL3.SQL.Add('("col$causaciondiaria".ID_CLASIFICACION = "col$codigospuc".ID_CLASIFICACION and');
IBSQL3.SQL.Add('"col$causaciondiaria".ID_GARANTIA = "col$codigospuc".ID_GARANTIA and');
IBSQL3.SQL.Add('"col$causaciondiaria".ID_ARRASTRE = "col$codigospuc".ID_CATEGORIA)');
IBSQL3.SQL.Add('where');
IBSQL3.SQL.Add('"col$causaciondiaria".FECHA_CORTE = :FECHA_CORTE AND "col$causaciondiaria".ID_AGENCIA = :ID_AGENCIA');
IBSQL3.SQL.Add('group by "col$causaciondiaria".ID_CLASIFICACION,');
IBSQL3.SQL.Add('"col$codigospuc".COD_IPROV_CAPITAL,');
IBSQL3.SQL.Add('"col$codigospuc".COD_EPROV_CAPITAL');
IBSQL3.SQL.Add('order by "col$causaciondiaria".ID_CLASIFICACION ASC');
IBSQL3.ParamByName('FECHA_CORTE').AsDate := EdFechaCorte.Date;
IBSQL3.ParamByName('ID_AGENCIA').AsInteger := IdAgencia;
Try
  IBSQL3.ExecQuery;
Except
  MessageDlg('Error Buscando Codigo I/G Provision Capital',mtError,[mbcancel],0);
  IBSQL3.Transaction.Rollback;
  raise;
  Exit;
End;

While Not IBSQL3.Eof Do
  Begin
    Aplica := False;
    If IBSQL3.FieldByName('PCAPITAL_REC').AsCurrency > 0 Then
      Begin
        IBSQL8.Close;
        IBSQL8.SQL.Clear;
        IBSQL8.SQL.Add('select NOMBRE from "con$puc" where CODIGO = :CODIGO');
        IBSQL8.ParamByName('CODIGO').AsString := IBSQL3.FieldByName('COD_IPROV_CAPITAL').AsString;
        IBSQL8.ExecQuery;
        New(ar);
        AR^.codigo := IBSQL3.FieldByName('COD_IPROV_CAPITAL').AsString;
        AR^.centro := IdAgencia;
        AR^.nomcuenta := IBSQL8.FieldByName('NOMBRE').AsString;
        AR^.nocuenta := 0;
        AR^.nocredito := '';
        AR^.tipoide := 0;
        AR^.idpersona := '';
        AR^.monto := 0;
        AR^.tasa := 0;
        AR^.estado := 'O';
        AR^.credito := IBSQL3.FieldByName('PCAPITAL_REC').AsCurrency;
        AR^.debito := 0;
        Lista.Add(AR);
        Aplica := True;
        IBSQL8.Close;
      End;

    If IBSQL3.FieldByName('PCAPITAL_REV').AsCurrency > 0 Then
      Begin
        IBSQL8.Close;
        IBSQL8.SQL.Clear;
        IBSQL8.SQL.Add('select NOMBRE from "con$puc" where CODIGO = :CODIGO');
        IBSQL8.ParamByName('CODIGO').AsString := IBSQL3.FieldByName('COD_EPROV_CAPITAL').AsString;
        IBSQL8.ExecQuery;
        New(ar);
        AR^.codigo := IBSQL3.FieldByName('COD_EPROV_CAPITAL').AsString;
        AR^.centro := IdAgencia;
        AR^.nomcuenta := IBSQL8.FieldByName('NOMBRE').AsString;
        AR^.nocuenta := 0;
        AR^.nocredito := '';
        AR^.tipoide := 0;
        AR^.idpersona := '';
        AR^.monto := 0;
        AR^.tasa := 0;
        AR^.estado := 'O';
        AR^.credito := IBSQL3.FieldByName('PCAPITAL_REV').AsCurrency;
        AR^.debito := 0;
        Lista.Add(AR);
        IBSQL8.Close;
      End;

    If IBSQL3.FieldByName('PCAPITAL_GAS').AsCurrency > 0 Then
      Begin
        IBSQL8.Close;
        IBSQL8.SQL.Clear;
        IBSQL8.SQL.Add('select NOMBRE from "con$puc" where CODIGO = :CODIGO');
        IBSQL8.ParamByName('CODIGO').AsString := IBSQL3.FieldByName('COD_EPROV_CAPITAL').AsString;
        IBSQL8.ExecQuery;
        New(ar);
        AR^.codigo := IBSQL3.FieldByName('COD_EPROV_CAPITAL').AsString;
        AR^.centro := IdAgencia;
        AR^.nomcuenta := IBSQL8.FieldByName('NOMBRE').AsString;
        AR^.nocuenta := 0;
        AR^.nocredito := '';
        AR^.tipoide := 0;
        AR^.idpersona := '';
        AR^.monto := 0;
        AR^.tasa := 0;
        AR^.estado := 'O';
        AR^.credito := 0;
        AR^.debito := IBSQL3.FieldByName('PCAPITAL_GAS').AsCurrency;
        Lista.Add(AR);
        IBSQL8.Close;
      End;
    ActualizarGrid;
    IBSQL3.Next;
  End;
//Fin de While ibsql3
IBSQL3.Close;
IBSQL0.Next;
End;
Actualizargrid;
IBSQL1.Transaction.Commit;

End;

Procedure TfrmCausacionCarteraDiaria.QuintoPC;

Var AR: PList;
  Valor,ValorProvision: Currency;
  Codigo: string;
  Comercial,Consumo,Vivienda,Microcredito, ValorE: Currency;
  Aplica : Boolean;
  IdAgencia: Integer;
  FechaInicial, FechaFinal: TDateTime;
Begin
  TryEncodeDate(YearOf(EdFechaCorte.Date), 1, 1, FechaInicial);
  TryEncodeDate(YearOf(EdFechaCorte.Date), MonthOf(EdFechaCorte.Date), DaysInAMonth(YearOf(EdFechaCorte.Date), MonthOf(EdFechaCorte.Date)), FechaFinal);

      If IBSQL0.Transaction.InTransaction Then
        IBSQL0.Transaction.Rollback;
      IBSQL0.Transaction.StartTransaction;
      IBSQL0.Close;
      IBSQL0.SQL.Clear;
      IBSQL0.SQL.Add('SELECT ID_AGENCIA FROM "gen$agencia" ORDER BY ID_AGENCIA ASC');
      IBSQL0.ExecQuery;
      While Not IBSQL0.Eof Do
        Begin
          IdAgencia := IBSQL0.FieldByName('ID_AGENCIA').AsInteger;
          Comercial    := 0;
          Consumo      := 0;
          Vivienda     := 0;
          Microcredito := 0;
          ValorE       := 0;
          IBSQL1.Close;
          IBSQL1.SQL.Clear;
          IBSQL1.SQL.Add('select * from "col$porccausacion"');
          IBSQL1.SQL.Add('where ID_GARANTIA = 2');
          IBSQL1.SQL.Add('order by ID_CLASIFICACION,ID_GARANTIA,ID_EDAD');
          Try
            IBSQL1.ExecQuery;
          Except
            IBSQL1.Transaction.Rollback;
            raise;
          End;
          While Not IBSQL1.Eof Do
            Begin
              IBSQL2.Close;
              IBSQL2.SQL.Clear;
              IBSQL2.SQL.Add('select SUM("col$causaciondiaria".PINTERES) AS PINTERES');
              IBSQL2.SQL.Add('from "col$causaciondiaria"');
              IBSQL2.SQL.Add('where ID_CLASIFICACION = :ID_CLASIFICACION and ');
              IBSQL2.SQL.Add('ID_ARRASTRE = :ID_CATEGORIA and');
              IBSQL2.SQL.Add('FECHA_CORTE = :FECHA_CORTE and');
                 { Dato Adicional Filtrado centro }
              IBSQL2.SQL.Add('ID_AGENCIA = :ID_AGENCIA');
              IBSQL2.ParamByName('ID_AGENCIA').AsInteger := IdAgencia;
              IBSQL2.ParamByName('ID_CLASIFICACION').AsInteger := IBSQL1.FieldByName('ID_CLASIFICACION').AsInteger;
              IBSQL2.ParamByName('ID_CATEGORIA').AsString := IBSQL1.FieldByName('ID_EDAD').AsString;
              IBSQL2.ParamByName('FECHA_CORTE').AsDate := EdFechaCorte.Date;
              Try
                IBSQL2.ExecQuery;
                If IBSQL2.RecordCount > 0 Then
                  ValorProvision := IBSQL2.FieldByName('PINTERES').AsCurrency
                Else
                  ValorProvision := 0;
              Except
                MessageDlg('Error al Buscar Deuda',mtError,[mbcancel],0);
                IBSQL2.Transaction.Rollback;
                raise;
                Exit;
              End;

              // Buscar y Comparar Valores
              // Buscar Codigo Puc
              IBSQL3.Close;
              IBSQL3.SQL.Clear;
              IBSQL3.SQL.Add('select "col$codigospuc".COD_PROV_INTERES');
              IBSQL3.SQL.Add('from "col$codigospuc" where "col$codigospuc".ID_CLASIFICACION = :ID_CLASIFICACION and ');
              IBSQL3.SQL.Add('"col$codigospuc".ID_GARANTIA = :ID_GARANTIA and "col$codigospuc".ID_CATEGORIA = :ID_CATEGORIA');
              IBSQL3.ParamByName('ID_CLASIFICACION').AsInteger := IBSQL1.FieldByName('ID_CLASIFICACION').AsInteger;
              IBSQL3.ParamByName('ID_GARANTIA').AsInteger := 2;
              IBSQL3.ParamByName('ID_CATEGORIA').AsString := IBSQL1.FieldByName('ID_EDAD').AsString;
              Try
                IBSQL3.ExecQuery;
                Codigo := IBSQL3.FieldByName('COD_PROV_INTERES').AsString;
              Except
                MessageDlg('Error Buscando Codigo Provision Interes',mtError,[mbcancel],0);
                IBSQL3.Transaction.Rollback;
                raise;
                Exit;
              End;
              //  Buscar en Puc Saldos Actuales
              IBSQL3.Close;
              IBSQL3.SQL.Clear;
              IBSQL3.SQL.Add('select * from VALOR_CENTRO(:ID_AGENCIA, :FECHA_INICIAL, :FECHA_FINAL, :CODIGO)');
                 { Dato adicionado para filtrar por Centro }
              IBSQL3.ParamByName('ID_AGENCIA').AsInteger := IdAgencia;
              IBSQL3.ParamByName('FECHA_INICIAL').AsDate := FechaInicial;
              IBSQL3.ParamByName('FECHA_FINAL').AsDate := FechaFinal;
                 { Dato adicionado para filtrar por Centro }
              // IBSQL3.ParamByName('MES').AsInteger := Monthof(EdFechaCorte.Date);
              IBSQL3.ParamByName('CODIGO').AsString := Codigo;
              Try
                IBSQL3.ExecQuery;
                Valor := IBSQL3.FieldByName('SALDO').AsCurrency;
              Except
                MessageDlg('Error al Obtener valor de Corto Plazo',mtError,[mbcancel],0);
                IBSQL3.Transaction.Rollback;
                raise;
                Exit;
              End;
              //Comparar Saldos y Contabilizar

              IBSQL3.Close;
              IBSQL3.SQL.Clear;
              IBSQL3.SQL.Add('select NOMBRE from "con$puc" where CODIGO = :CODIGO');
              IBSQL3.ParamByName('CODIGO').AsString := Codigo;
              IBSQL3.ExecQuery;
              Aplica := False;
              If Valor > (-ValorProvision) Then
                Begin
                  New(AR);
                  AR^.codigo := Codigo;
                  AR^.centro := IdAgencia;
                  AR^.nomcuenta := IBSQL3.FieldByName('NOMBRE').AsString;
                  AR^.nocuenta := 0;
                  AR^.nocredito := '';
                  AR^.tipoide := 0;
                  AR^.idpersona := '';
                  AR^.monto := 0;
                  AR^.tasa := 0;
                  AR^.estado := 'O';
                  AR^.debito := 0;
                  AR^.credito := Valor - -ValorProvision;
                  Lista.Add(AR);
                  Aplica := True;
                End
              Else If Valor < (-ValorProvision) Then
                     Begin
                       New(AR);
                       AR^.codigo := Codigo;
                       AR^.centro := IdAgencia;
                       AR^.nomcuenta := IBSQL3.FieldByName('NOMBRE').AsString;
                       AR^.nocuenta := 0;
                       AR^.nocredito := '';
                       AR^.tipoide := 0;
                       AR^.idpersona := '';
                       AR^.monto := 0;
                       AR^.tasa := 0;
                       AR^.estado := 'O';
                       AR^.credito := 0;
                       AR^.debito := -ValorProvision - Valor;
                       Lista.Add(AR);
                       Aplica := True;
                     End;
              ActualizarGrid;

            IBSQL2.Close;
            IBSQL2.SQL.Clear;
            IBSQL2.SQL.Add('select SUM("col$causaciondiaria".PCOSTAS) AS PCOSTAS');
            IBSQL2.SQL.Add('from "col$causaciondiaria"');
            IBSQL2.SQL.Add('where ID_CLASIFICACION = :ID_CLASIFICACION and ');
            IBSQL2.SQL.Add('ID_ARRASTRE = :ID_CATEGORIA and');
            IBSQL2.SQL.Add('FECHA_CORTE = :FECHA_CORTE and ID_AGENCIA = :ID_AGENCIA');
            IBSQL2.ParamByName('ID_CLASIFICACION').AsInteger := IBSQL1.FieldByName('ID_CLASIFICACION').AsInteger;
            IBSQL2.ParamByName('ID_CATEGORIA').AsString := IBSQL1.FieldByName('ID_EDAD').AsString;
            IBSQL2.ParamByName('FECHA_CORTE').AsDate := EdFechaCorte.Date;
            IBSQL2.ParamByName('ID_AGENCIA').AsInteger := IdAgencia;
            Try
              IBSQL2.ExecQuery;
              If IBSQL2.RecordCount > 0 Then
                ValorProvision := IBSQL2.FieldByName('PCOSTAS').AsCurrency
              Else
                ValorProvision := 0;
            Except
              MessageDlg('Error al Buscar Deuda',mtError,[mbcancel],0);
              IBSQL2.Transaction.Rollback;
              raise;
              Exit;
            End;
            // Buscar y Comparar Valores
            // Buscar Codigo Puc
            IBSQL3.Close;
            IBSQL3.SQL.Clear;
            IBSQL3.SQL.Add('select "col$codigospuc".COD_PROV_COSTAS');
            IBSQL3.SQL.Add('from "col$codigospuc" where "col$codigospuc".ID_CLASIFICACION = :ID_CLASIFICACION and ');
            IBSQL3.SQL.Add('"col$codigospuc".ID_GARANTIA = :ID_GARANTIA and "col$codigospuc".ID_CATEGORIA = :ID_CATEGORIA');
            IBSQL3.ParamByName('ID_CLASIFICACION').AsInteger := IBSQL1.FieldByName('ID_CLASIFICACION').AsInteger;
            IBSQL3.ParamByName('ID_GARANTIA').AsInteger := 2;
            IBSQL3.ParamByName('ID_CATEGORIA').AsString := IBSQL1.FieldByName('ID_EDAD').AsString;
            Try
              IBSQL3.ExecQuery;
              Codigo := IBSQL3.FieldByName('COD_PROV_COSTAS').AsString;
            Except
              MessageDlg('Error Buscando Codigo Provision Costas',mtError,[mbcancel],0);
              IBSQL3.Transaction.Rollback;
              raise;
              Exit;
            End;
            //  Buscar en Puc Saldos Actuales
            IBSQL3.Close;
            IBSQL3.SQL.Clear;
            IBSQL3.SQL.Add('select * from VALOR_CENTRO(:ID_AGENCIA, :FECHA_INICIAL, :FECHA_FINAL, :CODIGO)');
                 { Dato adicionado para filtrar por Centro }
            IBSQL3.ParamByName('ID_AGENCIA').AsInteger := IdAgencia;
            IBSQL3.ParamByName('FECHA_INICIAL').AsDate := FechaInicial;
            IBSQL3.ParamByName('FECHA_FINAL').AsDate := FechaFinal;
                 { Dato adicionado para filtrar por Centro }
            // IBSQL3.ParamByName('MES').AsInteger := Monthof(EdFechaCorte.Date);
            IBSQL3.ParamByName('CODIGO').AsString := Codigo;
            Try
              IBSQL3.ExecQuery;
              Valor := IBSQL3.FieldByName('SALDO').AsCurrency;
            Except
              MessageDlg('Error al Obtener valor de Corto Plazo',mtError,[mbcancel],0);
              IBSQL3.Transaction.Rollback;
              raise;
              Exit;
            End;
            //Comparar Saldos y Contabilizar

            IBSQL3.Close;
            IBSQL3.SQL.Clear;
            IBSQL3.SQL.Add('select NOMBRE from "con$puc" where CODIGO = :CODIGO');
            IBSQL3.ParamByName('CODIGO').AsString := Codigo;
            IBSQL3.ExecQuery;
            Aplica := False;
            If Valor > (-ValorProvision) Then
              Begin
                New(AR);
                AR^.codigo := Codigo;
                AR^.centro := IdAgencia;
                AR^.nomcuenta := IBSQL3.FieldByName('NOMBRE').AsString;
                AR^.nocuenta := 0;
                AR^.nocredito := '';
                AR^.tipoide := 0;
                AR^.idpersona := '';
                AR^.monto := 0;
                AR^.tasa := 0;
                AR^.estado := 'O';
                AR^.debito := 0;
                AR^.credito := Valor - -ValorProvision;
                Lista.Add(AR);
                Aplica := True;
              End
            Else If Valor < (-ValorProvision) Then
                   Begin
                     New(AR);
                     AR^.codigo := Codigo;
                     AR^.centro := IdAgencia;
                     AR^.nomcuenta := IBSQL3.FieldByName('NOMBRE').AsString;
                     AR^.nocuenta := 0;
                     AR^.nocredito := '';
                     AR^.tipoide := 0;
                     AR^.idpersona := '';
                     AR^.monto := 0;
                     AR^.tasa := 0;
                     AR^.estado := 'O';
                     AR^.credito := 0;
                     AR^.debito := -ValorProvision - Valor;
                     Lista.Add(AR);
                     Aplica := True;
                   End;
            ActualizarGrid;
            IBSQL1.Next;
          End;

          IBSQL3.Close;
          IBSQL3.SQL.Clear;
          IBSQL3.SQL.Add('select "col$causaciondiaria".ID_CLASIFICACION,');
          IBSQL3.SQL.Add('SUM("col$causaciondiaria".PINTERES_REC) AS PINTERES_REC,');
          IBSQL3.SQL.Add('SUM("col$causaciondiaria".PINTERES_REV) AS PINTERES_REV,');
          IBSQL3.SQL.Add('SUM("col$causaciondiaria".PINTERES_GAS) AS PINTERES_GAS');
          IBSQL3.SQL.Add('from "col$causaciondiaria"');
          IBSQL3.SQL.Add('where');
          IBSQL3.SQL.Add('"col$causaciondiaria".FECHA_CORTE = :FECHA_CORTE AND "col$causaciondiaria".ID_AGENCIA = :ID_AGENCIA');
          IBSQL3.SQL.Add('group by "col$causaciondiaria".ID_CLASIFICACION');
          IBSQL3.SQL.Add('order by "col$causaciondiaria".ID_CLASIFICACION ASC');
          IBSQL3.ParamByName('FECHA_CORTE').AsDate := EdFechaCorte.Date;
          IBSQL3.ParamByName('ID_AGENCIA').AsInteger := IdAgencia;
          Try
            IBSQL3.ExecQuery;
          Except
            MessageDlg('Error Buscando Recuperacion Interes',mtError,[mbcancel],0);
            IBSQL3.Transaction.Rollback;
            raise;
            Exit;
          End;

          While Not IBSQL3.Eof Do
            Begin
              Aplica := False;
              If IBSQL3.FieldByName('PINTERES_REC').AsCurrency > 0 Then
                Begin
                  New(ar);
                  AR^.codigo := '425005010000000000';
                  AR^.centro := IdAgencia;
                  //Nuevo C?digo
                  AR^.nomcuenta := 'REINTEGRO PROVISIONES DE CUENTAS POR COBRAR';
                  AR^.nocuenta := 0;
                  AR^.nocredito := '';
                  AR^.tipoide := 0;
                  AR^.idpersona := '';
                  AR^.monto := 0;
                  AR^.tasa := 0;
                  AR^.estado := 'O';
                  AR^.credito := IBSQL3.FieldByName('PINTERES_REC').AsCurrency;
                  AR^.debito := 0;
                  Lista.Add(AR);
                  Aplica := True;
                End;

              If IBSQL3.FieldByName('PINTERES_REV').AsCurrency > 0 Then
                Begin
                  New(ar);
                  AR^.codigo := '519910010000000000';
                  AR^.centro := IdAgencia;
                  //Nuevo C?digo
                  AR^.nomcuenta := 'REVERSION DE PROVISIONES DE CUENTAS POR COBRAR';
                  AR^.nocuenta := 0;
                  AR^.nocredito := '';
                  AR^.tipoide := 0;
                  AR^.idpersona := '';
                  AR^.monto := 0;
                  AR^.tasa := 0;
                  AR^.estado := 'O';
                  AR^.credito := IBSQL3.FieldByName('PINTERES_REV').AsCurrency;
                  AR^.debito := 0;
                  Lista.Add(AR);
                  Aplica := True;
                End;

              If IBSQL3.FieldByName('PINTERES_GAS').AsCurrency > 0 Then
                Begin
                  New(ar);
                  //AR^.codigo := '425037000000000000'; //Anterior
                  //AR^.codigo := '418026000000000000'; //Anterior
                  AR^.codigo := '519910010000000000';
                  AR^.centro := IdAgencia;
                  //Nuevo C?digo
                  AR^.nomcuenta := 'REVERSION DE PROVISIONES DE CUENTAS POR COBRAR';
                  AR^.nocuenta := 0;
                  AR^.nocredito := '';
                  AR^.tipoide := 0;
                  AR^.idpersona := '';
                  AR^.monto := 0;
                  AR^.tasa := 0;
                  AR^.estado := 'O';
                  AR^.debito := IBSQL3.FieldByName('PINTERES_GAS').AsCurrency;
                  AR^.credito := 0;
                  Lista.Add(AR);
                  Aplica := True;
                End;
              ActualizarGrid;
              IBSQL3.Next;
            End;
          //Fin de While ibsql3

            IBSQL3.Close;
            IBSQL3.SQL.Clear;
            IBSQL3.SQL.Add('select "col$causaciondiaria".ID_CLASIFICACION,');
            IBSQL3.SQL.Add('SUM("col$causaciondiaria".PCOSTAS_REC) AS PCOSTAS_REC,');
            IBSQL3.SQL.Add('SUM("col$causaciondiaria".PCOSTAS_REV) AS PCOSTAS_REV,');
            IBSQL3.SQL.Add('SUM("col$causaciondiaria".PCOSTAS_GAS) AS PCOSTAS_GAS');
            IBSQL3.SQL.Add('from "col$causaciondiaria"');
            IBSQL3.SQL.Add('where');
            IBSQL3.SQL.Add('"col$causaciondiaria".FECHA_CORTE = :FECHA_CORTE AND "col$causaciondiaria".ID_AGENCIA = :ID_AGENCIA');
            IBSQL3.SQL.Add('group by "col$causaciondiaria".ID_CLASIFICACION');
            IBSQL3.SQL.Add('order by "col$causaciondiaria".ID_CLASIFICACION ASC');
            IBSQL3.ParamByName('FECHA_CORTE').AsDate := EdFechaCorte.Date;
            IBSQL3.ParamByName('ID_AGENCIA').AsInteger := IdAgencia;
            Try
              IBSQL3.ExecQuery;
            Except
              MessageDlg('Error Buscando Recuperacion Interes',mtError,[mbcancel],0);
              IBSQL3.Transaction.Rollback;
              raise;
              Exit;
            End;

            While Not IBSQL3.Eof Do
              Begin
                Aplica := False;
                If IBSQL3.FieldByName('PCOSTAS_REC').AsCurrency > 0 Then
                  Begin
                    New(ar);
                    //AR^.codigo := '425037000000000000'; //Anterior
                    //AR^.codigo := '418026000000000000'; //Anterior
                    AR^.codigo := '425005010000000000';
                    AR^.centro := IdAgencia;
                    //Nuevo C?digo
                    AR^.nomcuenta := 'REINTEGRO PROVISIONES DE CUENTAS POR COBRAR';
                    AR^.nocuenta := 0;
                    AR^.nocredito := '';
                    AR^.tipoide := 0;
                    AR^.idpersona := '';
                    AR^.monto := 0;
                    AR^.tasa := 0;
                    AR^.estado := 'O';
                    AR^.credito := IBSQL3.FieldByName('PINTERES_REC').AsCurrency;
                    AR^.debito := 0;
                    Lista.Add(AR);
                    Aplica := True;
                  End;

                If IBSQL3.FieldByName('PCOSTAS_REV').AsCurrency > 0 Then
                  Begin
                    New(ar);
                    //AR^.codigo := '425037000000000000'; //Anterior
                    //AR^.codigo := '418026000000000000'; //Anterior
                    AR^.codigo := '519910010000000000';
                    AR^.centro := IdAgencia;
                    //Nuevo C?digo
                    AR^.nomcuenta := 'REVERSION DE PROVISIONES DE CUENTAS POR COBRAR';
                    AR^.nocuenta := 0;
                    AR^.nocredito := '';
                    AR^.tipoide := 0;
                    AR^.idpersona := '';
                    AR^.monto := 0;
                    AR^.tasa := 0;
                    AR^.estado := 'O';
                    AR^.credito := IBSQL3.FieldByName('PINTERES_REV').AsCurrency;
                    AR^.debito := 0;
                    Lista.Add(AR);
                    Aplica := True;
                  End;

                If IBSQL3.FieldByName('PCOSTAS_GAS').AsCurrency > 0 Then
                  Begin
                    New(ar);
                    //AR^.codigo := '425037000000000000'; //Anterior
                    //AR^.codigo := '418026000000000000'; //Anterior
                    AR^.codigo := '519910010000000000';
                    AR^.centro := IdAgencia;
                    //Nuevo C?digo
                    AR^.nomcuenta := 'REVERSION DE PROVISIONES DE CUENTAS POR COBRAR';
                    AR^.nocuenta := 0;
                    AR^.nocredito := '';
                    AR^.tipoide := 0;
                    AR^.idpersona := '';
                    AR^.monto := 0;
                    AR^.tasa := 0;
                    AR^.estado := 'O';
                    AR^.debito := IBSQL3.FieldByName('PINTERES_GAS').AsCurrency;
                    AR^.credito := 0;
                    Lista.Add(AR);
                    Aplica := True;
                  End;
                ActualizarGrid;

                IBSQL3.Next;
              End;
            //Fin de While ibsql3

            IBSQL3.Close;
            IBSQL0.Next;
          End;
  IBSQL0.Transaction.Commit;
  Actualizargrid;
End;

Procedure TfrmCausacionCarteraDiaria.SextoPC; // Provisión General

Var AR: PList;
  Valor: Currency;
  Codigo: string;
  Colocaciones: Currency;
  Aplica : Boolean;
  ProvisionGral: Double;
  IdAgencia: Integer;
Begin
  Colocaciones    := 0;
      If IBSQL2.Transaction.InTransaction Then
        IBSQL2.Transaction.Rollback;
      IBSQL2.Transaction.StartTransaction;
      IBSQL2.Close;
      IBSQL2.SQL.Clear;
      IBSQL2.SQL.Add('select ID_AGENCIA, SUM("col$causaciondiaria".DEUDA) AS DEUDA ');
      IBSQL2.SQL.Add('from "col$causaciondiaria"');
      IBSQL2.SQL.Add('where "col$causaciondiaria".FECHA_CORTE = :FECHA_CORTE');
      IBSQL2.SQL.Add('group by ID_AGENCIA');
      IBSQL2.ParamByName('FECHA_CORTE').AsDate := EdFechaCorte.Date;
      Try
        IBSQL2.ExecQuery;
        // Valor := FieldByName('DEUDA').AsCurrency;
      Except
        MessageDlg('Error al Buscar Deuda',mtError,[mbcancel],0);
        IBSQL2.Transaction.Rollback;
        raise;
        Exit;
      End;


    IBSQL3.Close;
    IBSQL3.SQL.Clear;
    IBSQL3.SQL.Add('select VALOR_MINIMO from "gen$minimos" where ID_MINIMO = 30');
    IBSQL3.ExecQuery;
    ProvisionGral := IBSQL3.FieldByName('VALOR_MINIMO').AsFloat;
    IBSQL3.Close;

  while Not IBSQL2.Eof do
  begin
    IdAgencia := IBSQL2.FieldByName('ID_AGENCIA').AsInteger;
    Colocaciones := SimpleRoundTo((Valor * ProvisionGral),0);
    // Validar Contra Saldo Actual
    Codigo := '139990010000000000';

    IBSQL3.Close;
    IBSQL3.SQL.Clear;
    IBSQL3.SQL.Add('select * from VALOR_CENTRO(:ID_AGENCIA, :FECHA_INICIAL, :FECHA_FINAL, :CODIGO)');
                 { Dato adicionado para filtrar por Centro }
    IBSQL3.ParamByName('ID_AGENCIA').AsInteger := IdAgencia;
    IBSQL3.ParamByName('FECHA_INICIAL').AsDate := FechaInicial;
    IBSQL3.ParamByName('FECHA_FINAL').AsDate := FechaFinal;
                 { Dato adicionado para filtrar por Centro }
    // IBSQL3.ParamByName('MES').AsInteger := Monthof(EdFechaCorte.Date);
    IBSQL3.ParamByName('CODIGO').AsString := Codigo;
  Try
    IBSQL3.ExecQuery;
    Valor := IBSQL3.FieldByName('SALDO').AsCurrency;
  Except
    MessageDlg('Error al Obtener valor de Corto Plazo',mtError,[mbcancel],0);
    IBSQL3.Transaction.Rollback;
    raise;
    Exit;
  End;

  //Comparar Saldos y Contabilizar

  IBSQL3.Close;
  IBSQL3.SQL.Clear;
  IBSQL3.SQL.Add('select NOMBRE from "con$puc" where CODIGO = :CODIGO');
  IBSQL3.ParamByName('CODIGO').AsString := Codigo;
  IBSQL3.ExecQuery;
  Aplica := False;
  If Valor > (-Colocaciones) Then
  Begin
    New(AR);
    AR^.codigo := Codigo;
    AR^.centro := IdAgencia;
    AR^.nomcuenta := IBSQL3.FieldByName('NOMBRE').AsString;
    AR^.nocuenta := 0;
    AR^.nocredito := '';
    AR^.tipoide := 0;
    AR^.idpersona := '';
    AR^.monto := 0;
    AR^.tasa := 0;
    AR^.estado := 'O';
    AR^.debito := 0;
    AR^.credito := Valor - -Colocaciones;
    Lista.Add(AR);
    Aplica := True;
  End
  Else If Valor < (-Colocaciones) Then
       Begin
         New(AR);
         AR^.codigo := Codigo;
          AR^.centro := IdAgencia;
         AR^.nomcuenta := IBSQL3.FieldByName('NOMBRE').AsString;
         AR^.nocuenta := 0;
         AR^.nocredito := '';
         AR^.tipoide := 0;
         AR^.idpersona := '';
         AR^.monto := 0;
         AR^.tasa := 0;
         AR^.estado := 'O';
         AR^.credito := 0;
         AR^.debito := -Colocaciones - Valor;
         Lista.Add(AR);
         Aplica := True;
       End;
  Valor := ar^.debito - AR^.credito;

  Codigo := '519910010000000000';
  IBSQL3.SQL.Clear;
  IBSQL3.SQL.Add('select NOMBRE from "con$puc" where CODIGO = :CODIGO');

  If Valor <> 0 Then
  Begin
    New(ar);
    IBSQL3.Close;
    IBSQL3.ParamByName('CODIGO').AsString := Codigo;
    IBSQL3.ExecQuery;
    AR^.codigo := Codigo;
    AR^.centro := IdAgencia;
    AR^.nomcuenta := IBSQL3.FieldByName('NOMBRE').AsString;
    AR^.nocuenta := 0;
    AR^.nocredito := '';
    AR^.tipoide := 0;
    AR^.idpersona := '';
    AR^.monto := 0;
    AR^.tasa := 0;
    AR^.estado := 'O';
    If Valor < 0 Then
      Begin
        AR^.debito := -Valor;
        AR^.credito := 0;
      End
    Else
      Begin
        AR^.credito := Valor;
        AR^.debito := 0;
      End;
    Lista.Add(AR);
  End;
  IBSQL2.Next;
End;
actualizargrid;
IBSQL3.Transaction.Commit;
End;

Procedure TfrmCausacionCarteraDiaria.SeptimoPC;

Var AR: PList;
  Valor,ValorAnticipado: Currency;
  Codigo: string;
  Comercial,Consumo,Vivienda,Microcredito: Currency;
  Aplica : Boolean;
Begin
  Comercial    := 0;
  Consumo      := 0;
  Vivienda     := 0;
  Microcredito := 0;
  With IBSQL1 Do
    Begin
      If Transaction.InTransaction Then
        Transaction.Rollback;
      Transaction.StartTransaction;
      Close;
      SQL.Clear;
      SQL.Add('select * from "col$porccausacion"');
      SQL.Add('where ID_EDAD = :ID_EDAD and ID_GARANTIA = 1');
      SQL.Add('order by ID_CLASIFICACION,ID_GARANTIA,ID_EDAD');
      ParamByName('ID_EDAD').AsString := 'A';
      Try
        ExecQuery;
      Except
        Transaction.Rollback;
        raise;
    End;
  While Not Eof Do
    Begin
      IBSQL2.Close;
      IBSQL2.SQL.Clear;
      IBSQL2.SQL.Add('select SUM("col$causaciondiaria".ANTICIPADOS) AS ANTICIPADOS');
      IBSQL2.SQL.Add('from "col$causaciondiaria"');
      IBSQL2.SQL.Add('where ID_CLASIFICACION = :ID_CLASIFICACION and');
      IBSQL2.SQL.Add('FECHA_CORTE = :FECHA_CORTE');
      IBSQL2.ParamByName('ID_CLASIFICACION').AsInteger := FieldByName('ID_CLASIFICACION').AsInteger;
      IBSQL2.ParamByName('FECHA_CORTE').AsDate := EdFechaCorte.Date;
      Try
        IBSQL2.ExecQuery;
        If IBSQL2.RecordCount > 0 Then
          ValorAnticipado := IBSQL2.FieldByName('ANTICIPADOS').AsCurrency
        Else
          ValorAnticipado := 0;
      Except
        MessageDlg('Error al Buscar Deuda',mtError,[mbcancel],0);
        Transaction.Rollback;
        raise;
        Exit;
    End;

  // Buscar y Comparar Valores
  // Buscar Codigo Puc
  IBSQL3.Close;
  IBSQL3.SQL.Clear;
  IBSQL3.SQL.Add('select "col$codigospuc".COD_INT_ANT');
  IBSQL3.SQL.Add('from "col$codigospuc" where "col$codigospuc".ID_CLASIFICACION = :ID_CLASIFICACION and ');
  IBSQL3.SQL.Add('"col$codigospuc".ID_GARANTIA = :ID_GARANTIA and "col$codigospuc".ID_CATEGORIA = :ID_CATEGORIA');
  IBSQL3.ParamByName('ID_CLASIFICACION').AsInteger := FieldByName('ID_CLASIFICACION').AsInteger;
  IBSQL3.ParamByName('ID_GARANTIA').AsInteger := fieldbyname('ID_GARANTIA').AsInteger;
  IBSQL3.ParamByName('ID_CATEGORIA').AsString := fieldbyname('ID_EDAD').AsString;
  Try
    IBSQL3.ExecQuery;
    Codigo := IBSQL3.FieldByName('COD_INT_ANT').AsString;
  Except
    MessageDlg('Error Buscando Codigo Provision Interes',mtError,[mbcancel],0);
    Transaction.Rollback;
    raise;
    Exit;
End;
//  Buscar en Puc Saldos Actuales

{
                     IBSQL3.Close;
                     IBSQL3.SQL.Clear;
                     IBSQL3.SQL.Add('select "con$puc".SALDOINICIAL AS SALDO');
                     IBSQL3.SQL.Add('from "con$puc"');
                     IBSQL3.SQL.Add('where "con$puc".CODIGO = :CODIGO');
                     IBSQL3.ParamByName('CODIGO').AsString := Codigo;
                     try
                      IBSQL3.ExecQuery;
                      Valor := IBSQL3.FieldByName('SALDO').AsCurrency;
                     except
                      MessageDlg('Error al Obtener valor de Corto Plazo',mtError,[mbcancel],0);
                      Transaction.Rollback;
                      raise;
                      Exit;
                     end;
                     IBSQL3.Close;
                     IBSQL3.SQL.Clear;
                     IBSQL3.SQL.Add('select SUM("con$saldoscuenta".DEBITO - "con$saldoscuenta".CREDITO) AS SALDO');
                     IBSQL3.SQL.Add('from "con$puc"');
                     IBSQL3.SQL.Add('left join "con$saldoscuenta" ON ("con$puc".ID_AGENCIA = "con$saldoscuenta".ID_AGENCIA and ');
                     IBSQL3.SQL.Add('"con$puc".CODIGO = "con$saldoscuenta".CODIGO)');
                     IBSQL3.SQL.Add('where "con$saldoscuenta".ID_AGENCIA = :ID_AGENCIA and "con$puc".CODIGO = :CODIGO and "con$saldoscuenta".MES <= :MES');
                     IBSQL3.SQL.Add('group by "con$puc".SALDOINICIAL');
                     IBSQL3.ParamByName('ID_AGENCIA').AsInteger;
                     IBSQL3.ParamByName('CODIGO').AsString := Codigo;
                     IBSQL3.ParamByName('MES').AsInteger := Monthof(EdFechaCorte.Date);
                     try
                      IBSQL3.ExecQuery;
                      Valor := Valor + IBSQL3.FieldByName('SALDO').AsCurrency;
                     except
                      MessageDlg('Error al Obtener valor de Corto Plazo',mtError,[mbcancel],0);
                      Transaction.Rollback;
                      raise;
                      Exit;
                     end;
}
IBSQL3.Close;
IBSQL3.SQL.Clear;
IBSQL3.SQL.Add('select * from VALOR_AGENCIA(:MES,:CODIGO)');
IBSQL3.ParamByName('MES').AsInteger := Monthof(EdFechaCorte.Date);
IBSQL3.ParamByName('CODIGO').AsString := Codigo;
Try
  IBSQL3.ExecQuery;
  Valor := IBSQL3.FieldByName('SALDO').AsCurrency;
Except
  MessageDlg('Error al Obtener valor de Corto Plazo',mtError,[mbcancel],0);
  Transaction.Rollback;
  raise;
  Exit;
End;

//Comparar Saldos y Contabilizar
IBSQL3.Close;
IBSQL3.SQL.Clear;
IBSQL3.SQL.Add('select NOMBRE from "con$puc" where CODIGO = :CODIGO');
IBSQL3.ParamByName('CODIGO').AsString := Codigo;
IBSQL3.ExecQuery;
Aplica := False;
If Valor > (-ValorAnticipado) Then
  Begin
    New(AR);
    AR^.codigo := Codigo;
    AR^.centro := 1;
    AR^.nomcuenta := IBSQL3.FieldByName('NOMBRE').AsString;
    AR^.nocuenta := 0;
    AR^.nocredito := '';
    AR^.tipoide := 0;
    AR^.idpersona := '';
    AR^.monto := 0;
    AR^.tasa := 0;
    AR^.estado := 'O';
    AR^.debito := 0;
    AR^.credito := Valor - -ValorAnticipado;
    Lista.Add(AR);
    Aplica := True;
  End
Else If Valor < (-ValorAnticipado) Then
       Begin
         New(AR);
         AR^.codigo := Codigo;
         AR^.centro := 1;
         AR^.nomcuenta := IBSQL3.FieldByName('NOMBRE').AsString;
         AR^.nocuenta := 0;
         AR^.nocredito := '';
         AR^.tipoide := 0;
         AR^.idpersona := '';
         AR^.monto := 0;
         AR^.tasa := 0;
         AR^.estado := 'O';
         AR^.credito := 0;
         AR^.debito := -ValorAnticipado - Valor;
         Lista.Add(AR);
         Aplica := True;
       End;
If Aplica Then
  If FieldByName('ID_CLASIFICACION').AsInteger = 1 Then
    Comercial := Comercial + ar^.debito - ar^.credito
Else If FieldByName('ID_CLASIFICACION').AsInteger = 2 Then
       Consumo := Consumo + ar^.debito - ar^.credito
Else If FieldByName('ID_CLASIFICACION').AsInteger = 3 Then
       Vivienda := Vivienda + ar^.debito - ar^.credito
Else If FieldByName('ID_CLASIFICACION').AsInteger = 4 Then
       Microcredito := Microcredito + ar^.debito - ar^.credito;
ActualizarGrid;
Next;
End;
// while
End;
// with
Codigo := '415005000000000000';
IBSQL3.SQL.Clear;
IBSQL3.SQL.Add('select NOMBRE from "con$puc" where CODIGO = :CODIGO');

If Comercial <> 0 Then
  Begin
    New(ar);
    IBSQL3.Close;
    IBSQL3.ParamByName('CODIGO').AsString := Codigo;
    IBSQL3.ExecQuery;
    AR^.codigo := Codigo;
    AR^.centro := 1;
    AR^.nomcuenta := IBSQL3.FieldByName('NOMBRE').AsString;
    AR^.nocuenta := 0;
    AR^.nocredito := '';
    AR^.tipoide := 0;
    AR^.idpersona := '';
    AR^.monto := 0;
    AR^.tasa := 0;
    AR^.estado := 'O';
    If Comercial < 0 Then
      Begin
        AR^.debito := -Comercial;
        AR^.credito := 0;
      End
    Else
      Begin
        AR^.credito := Comercial;
        AR^.debito := 0;
      End;
    Lista.Add(AR);
  End;

Codigo := '415010000000000000';
If Consumo <> 0 Then
  Begin
    New(ar);
    IBSQL3.Close;
    IBSQL3.ParamByName('CODIGO').AsString := Codigo;
    IBSQL3.ExecQuery;
    AR^.codigo := Codigo;
    AR^.centro := 1;
    AR^.nomcuenta := IBSQL3.FieldByName('NOMBRE').AsString;
    AR^.nocuenta := 0;
    AR^.nocredito := '';
    AR^.tipoide := 0;
    AR^.idpersona := '';
    AR^.monto := 0;
    AR^.tasa := 0;
    AR^.estado := 'O';
    If Consumo < 0 Then
      Begin
        AR^.debito := -Consumo;
        AR^.credito := 0;
      End
    Else
      Begin
        AR^.credito := Consumo;
        AR^.debito := 0;
      End;
    Lista.Add(AR);
  End;

Codigo := '415015000000000000';
If Vivienda <> 0 Then
  Begin
    New(ar);
    IBSQL3.Close;
    IBSQL3.ParamByName('CODIGO').AsString := Codigo;
    IBSQL3.ExecQuery;
    AR^.codigo := Codigo;
    AR^.centro := 1;
    AR^.nomcuenta := IBSQL3.FieldByName('NOMBRE').AsString;
    AR^.nocuenta := 0;
    AR^.nocredito := '';
    AR^.tipoide := 0;
    AR^.idpersona := '';
    AR^.monto := 0;
    AR^.tasa := 0;
    AR^.estado := 'O';
    If Vivienda < 0 Then
      Begin
        AR^.debito := -Vivienda;
        AR^.credito := 0;
      End
    Else
      Begin
        AR^.credito := Vivienda;
        AR^.debito := 0;
      End;
    Lista.Add(AR);
  End;

Codigo := '415017000000000000';
If Microcredito <> 0 Then
  Begin
    New(ar);
    IBSQL3.Close;
    IBSQL3.ParamByName('CODIGO').AsString := Codigo;
    IBSQL3.ExecQuery;
    AR^.codigo := Codigo;
    AR^.centro := 1;
    AR^.nomcuenta := IBSQL3.FieldByName('NOMBRE').AsString;
    AR^.nocuenta := 0;
    AR^.nocredito := '';
    AR^.tipoide := 0;
    AR^.idpersona := '';
    AR^.monto := 0;
    AR^.tasa := 0;
    AR^.estado := 'O';
    If Microcredito < 0 Then
      Begin
        AR^.debito := -Microcredito;
        AR^.credito := 0;
      End
    Else
      Begin
        AR^.credito := Microcredito;
        AR^.debito := 0;
      End;
    Lista.Add(AR);
  End;
Actualizargrid;
IBSQL1.Transaction.Commit;
End;

Procedure TfrmCausacionCarteraDiaria.OctavoPC;

Var AR: PList;
  Valor,ValorContingencia: Currency;
  Codigo: string;
  Comercial,Consumo,Vivienda,Microcredito: Currency;
  Aplica : Boolean;
Begin
  Comercial    := 0;
  Consumo      := 0;
  Vivienda     := 0;
  Microcredito := 0;
  With IBSQL1 Do
    Begin
      If Transaction.InTransaction Then
        Transaction.Rollback;
      Transaction.StartTransaction;
      Close;
      SQL.Clear;
      SQL.Add('select * from "col$porccausacion"');
      SQL.Add('where ID_GARANTIA = 1 and ID_EDAD >= ''C''');
      SQL.Add('order by ID_CLASIFICACION,ID_GARANTIA,ID_EDAD');
      Try
        ExecQuery;
      Except
        Transaction.Rollback;
        raise;
    End;
  While Not Eof Do
    Begin
      IBSQL2.Close;
      IBSQL2.SQL.Clear;
      IBSQL2.SQL.Add('select SUM("col$causaciondiaria".CONTINGENCIAS) AS CONTINGENCIAS');
      IBSQL2.SQL.Add('from "col$causaciondiaria"');
      IBSQL2.SQL.Add('where ID_CLASIFICACION = :ID_CLASIFICACION and ');
      IBSQL2.SQL.Add('ID_ARRASTRE = :ID_CATEGORIA and');
      IBSQL2.SQL.Add('FECHA_CORTE = :FECHA_CORTE');
      IBSQL2.ParamByName('ID_CLASIFICACION').AsInteger := FieldByName('ID_CLASIFICACION').AsInteger;
      IBSQL2.ParamByName('ID_CATEGORIA').AsString := FieldByName('ID_EDAD').AsString;
      IBSQL2.ParamByName('FECHA_CORTE').AsDate := EdFechaCorte.Date;
      Try
        IBSQL2.ExecQuery;
        If IBSQL2.RecordCount > 0 Then
          ValorContingencia := IBSQL2.FieldByName('CONTINGENCIAS').AsCurrency
        Else
          ValorContingencia := 0;
      Except
        MessageDlg('Error al Buscar Deuda',mtError,[mbcancel],0);
        Transaction.Rollback;
        raise;
        Exit;
    End;

  // Buscar y Comparar Valores
  // Buscar Codigo Puc
  IBSQL3.Close;
  IBSQL3.SQL.Clear;
  IBSQL3.SQL.Add('select "col$codigospuc".COD_CONTINGENCIA');
  IBSQL3.SQL.Add('from "col$codigospuc" where "col$codigospuc".ID_CLASIFICACION = :ID_CLASIFICACION and ');
  IBSQL3.SQL.Add('"col$codigospuc".ID_GARANTIA = :ID_GARANTIA and "col$codigospuc".ID_CATEGORIA = :ID_CATEGORIA');
  IBSQL3.ParamByName('ID_CLASIFICACION').AsInteger := FieldByName('ID_CLASIFICACION').AsInteger;
  IBSQL3.ParamByName('ID_GARANTIA').AsInteger := Fieldbyname('ID_GARANTIA').AsInteger;;
  IBSQL3.ParamByName('ID_CATEGORIA').AsString := fieldbyname('ID_EDAD').AsString;
  Try
    IBSQL3.ExecQuery;
    Codigo := IBSQL3.FieldByName('COD_CONTINGENCIA').AsString;
  Except
    MessageDlg('Error Buscando Codigo Provision Interes',mtError,[mbcancel],0);
    Transaction.Rollback;
    raise;
    Exit;
End;
//  Buscar en Puc Saldos Actuales

IBSQL3.Close;
IBSQL3.SQL.Clear;
IBSQL3.SQL.Add('select * from VALOR_AGENCIA(:MES,:CODIGO)');
IBSQL3.ParamByName('MES').AsInteger := Monthof(EdFechaCorte.Date);
IBSQL3.ParamByName('CODIGO').AsString := Codigo;
Try
  IBSQL3.ExecQuery;
  Valor := IBSQL3.FieldByName('SALDO').AsCurrency;
Except
  MessageDlg('Error al Obtener valor de Corto Plazo',mtError,[mbcancel],0);
  Transaction.Rollback;
  raise;
  Exit;
End;

//Comparar Saldos y Contabilizar
IBSQL3.Close;
IBSQL3.SQL.Clear;
IBSQL3.SQL.Add('select NOMBRE from "con$puc" where CODIGO = :CODIGO');
IBSQL3.ParamByName('CODIGO').AsString := Codigo;
IBSQL3.ExecQuery;
Aplica := False;
If Valor > (ValorContingencia) Then
  Begin
    New(AR);
    AR^.codigo := Codigo;
    AR^.centro := 1;
    AR^.nomcuenta := IBSQL3.FieldByName('NOMBRE').AsString;
    AR^.nocuenta := 0;
    AR^.nocredito := '';
    AR^.tipoide := 0;
    AR^.idpersona := '';
    AR^.monto := 0;
    AR^.tasa := 0;
    AR^.estado := 'O';
    AR^.debito := 0;
    AR^.credito := Valor - ValorContingencia;
    Lista.Add(AR);
    Aplica := True;
  End
Else If Valor < (ValorContingencia) Then
       Begin
         New(AR);
         AR^.codigo := Codigo;
         AR^.centro := 1;
         AR^.nomcuenta := IBSQL3.FieldByName('NOMBRE').AsString;
         AR^.nocuenta := 0;
         AR^.nocredito := '';
         AR^.tipoide := 0;
         AR^.idpersona := '';
         AR^.monto := 0;
         AR^.tasa := 0;
         AR^.estado := 'O';
         AR^.credito := 0;
         AR^.debito := ValorContingencia - Valor;
         Lista.Add(AR);
         Aplica := True;
       End;
If Aplica Then
  If FieldByName('ID_CLASIFICACION').AsInteger = 1 Then
    Comercial := Comercial + ar^.debito - ar^.credito
Else If FieldByName('ID_CLASIFICACION').AsInteger = 2 Then
       Consumo := Consumo + ar^.debito - ar^.credito
Else If FieldByName('ID_CLASIFICACION').AsInteger = 3 Then
       Vivienda := Vivienda + ar^.debito - ar^.credito
Else If FieldByName('ID_CLASIFICACION').AsInteger = 4 Then
       Microcredito := Microcredito + ar^.debito - ar^.credito;
ActualizarGrid;
Next;
End;
// while
End;
// with
Codigo := '860500000000000000';
IBSQL3.SQL.Clear;
IBSQL3.SQL.Add('select NOMBRE from "con$puc" where CODIGO = :CODIGO');

If (Comercial+Consumo+Vivienda+Microcredito) <> 0 Then
  Begin
    New(ar);
    IBSQL3.Close;
    IBSQL3.ParamByName('CODIGO').AsString := Codigo;
    IBSQL3.ExecQuery;
    AR^.codigo := Codigo;
    AR^.centro := 1;
    AR^.nomcuenta := IBSQL3.FieldByName('NOMBRE').AsString;
    AR^.nocuenta := 0;
    AR^.nocredito := '';
    AR^.tipoide := 0;
    AR^.idpersona := '';
    AR^.monto := 0;
    AR^.tasa := 0;
    AR^.estado := 'O';
    If (Comercial+Consumo+Vivienda+Microcredito) < 0 Then
      Begin
        AR^.debito := -(Comercial+Consumo+Vivienda+Microcredito);
        AR^.credito := 0;
      End
    Else
      Begin
        AR^.credito := (Comercial+Consumo+Vivienda+Microcredito);
        AR^.debito := 0;
      End;
    Lista.Add(AR);
  End;
Actualizargrid;
IBSQL1.Transaction.Commit;
End;

Procedure TfrmCausacionCarteraDiaria.NovenoPC;

Var AR: PList;
  i: Integer;
  Valor,Valor1: Currency;
Begin
  Valor := 0;
  For i := 0 To Lista.Count - 1 Do
    Begin
      AR := Lista.Items[i];
      If (LeftStr(AR^.codigo,1) = '5') And
         (AR^.credito > 0) Then
        Begin
          Valor := Valor + AR^.credito;
          Lista.Items[i] := Nil;
        End;
    End;
  If Valor > 0 Then
    For i := 0 To Lista.Count - 1 Do
      Begin
        AR := Lista.Items[i];
        If AR <> Nil Then
          If AR^.codigo = '149810000000000000' Then
            Begin
              If AR^.credito > 0 Then
                AR^.credito := AR^.credito + Valor
              Else
                Begin
                  AR^.debito := ar^.debito - Valor;
                  If AR^.debito < 0 Then
                    Begin
                      AR^.credito := -ar^.debito;
                      AR^.debito := 0;
                    End;
                End;
            End
        Else
          If AR^.codigo = '511524000000000000' Then
            Begin
              If AR^.debito > 0 Then
                AR^.debito := AR^.debito + Valor
              Else
                Begin
                  AR^.credito := ar^.credito - Valor;
                  If AR^.credito < 0 Then
                    Begin
                      AR^.debito := -ar^.debito;
                      AR^.credito := 0;
                    End;
                End;
            End;
      End;
  i := 0;
  While True Do
    Begin
      If i > (Lista.Count - 1) Then Break;
      If Lista.Items[i] = Nil Then Lista.Delete(i);
      i := i + 1;
    End;

  Lista.Pack;


  actualizargrid;

End;

Procedure TfrmCausacionCarteraDiaria.DecimoPC;

Var I: Integer;
  TotalDebito: Currency;
  TotalCredito: Currency;
  ARecord: PList;
  FechaComp: TDate;
  idauxiliar: Integer;
Begin

  FechaComp := EncodeDate(YearOf(EdFechaCorte.Date),MonthOf(EdFechaCorte.Date),DaysInAMonth(YearOf(EdFechaCorte.Date),MonthOf(EdFechaCorte.Date)));
  Consecutivo := ObtenerConsecutivo(IBSQL1,1);
  EdComprobante.Caption := FormatCurr('0000000',Consecutivo);

  TotalDebito := 0;
  TotalCredito := 0;

  For I := 0 To Lista.Count - 1 Do
    Begin
      ARecord := Lista.Items[i];
      TotalDebito := TotalDebito + arecord^.debito;
      TotalCredito := TotalCredito + arecord^.credito;
    End;

  With IBSQL1 Do
    Begin
      If Transaction.InTransaction Then
        Transaction.Rollback;
      Transaction.StartTransaction;
      Close;
      sql.Clear;
      sql.Add('insert into "con$comprobante" ("con$comprobante"."ID_COMPROBANTE",');
      sql.Add('"con$comprobante"."FECHADIA", "con$comprobante"."TIPO_COMPROBANTE",');
      sql.Add('"con$comprobante"."ID_AGENCIA", "con$comprobante"."DESCRIPCION",');
      sql.Add('"con$comprobante"."TOTAL_DEBITO", "con$comprobante"."TOTAL_CREDITO",');
      sql.Add('"con$comprobante"."ESTADO", "con$comprobante"."IMPRESO",');
      sql.Add('"con$comprobante"."ANULACION","con$comprobante".ID_EMPLEADO)');
      sql.Add('values (');
      sql.Add(':"ID_COMPROBANTE", :"FECHADIA", :"TIPO_COMPROBANTE",');
      sql.Add(':"ID_AGENCIA", :"DESCRIPCION", :"TOTAL_DEBITO",');
      sql.Add(':"TOTAL_CREDITO", :"ESTADO", :"IMPRESO", :"ANULACION",:ID_EMPLEADO)');

      ParamByName('ID_COMPROBANTE').AsInteger := Consecutivo;
      ParamByname('FECHADIA').AsDate := FechaComp;
      ParamByName('ID_AGENCIA').AsInteger := Agencia;
      ParamByName('TIPO_COMPROBANTE').AsInteger := 1;
      ParamByName('DESCRIPCION').AsString := 'AJUSTE CALIFICACION, CAUSACION Y PROVISION DE CARTERA EN LA FECHA';
      ParamByName('TOTAL_DEBITO').AsCurrency  := TotalDebito;
      ParamByName('TOTAL_CREDITO').AsCurrency  := TotalCredito;
      ParamByName('ESTADO').AsString  := 'O';
      ParamByname('ANULACION').asstring := '';
      ParamByName('IMPRESO').AsInteger  := 1;
      ParamByName('ID_EMPLEADO').AsString := DBAlias;
      ExecQuery;

      If Lista.Count > 0 Then
        For I := 0 To Lista.Count -1 Do
          Begin
            Close;
            SQL.Clear;
            SQL.Add('insert into "con$auxiliar" values (');
            SQL.Add(':"ID_COMPROBANTE",:"ID_AGENCIA",:"FECHA",:"CODIGO",:"DEBITO",');
            SQL.Add(':"CREDITO",:"ID_CUENTA",:"ID_COLOCACION",:"ID_IDENTIFICACION",');
            SQL.Add(':"ID_PERSONA",:"MONTO_RETENCION",:"TASA_RETENCION",:"ESTADOAUX",:"TIPO_COMPROBANTE",:"ID",:"ID_CLASE_OPERACION")');
            ARecord := Lista.Items[I];
            idauxiliar :=  ObtenerConsecutivoAuxiliar(IBSQLAux);
            ParamByName('ID_COMPROBANTE').AsInteger := Consecutivo;
            ParamByName('ID_AGENCIA').AsInteger := Arecord^.centro;
            ParamByName('FECHA').AsDate := FechaComp;
            ParamByName('CODIGO').AsString := Arecord^.codigo;
            ParamByName('DEBITO').AsCurrency := Arecord^.debito;
            ParamByName('CREDITO').AsCurrency := Arecord^.credito;
            ParamByName('ID_CUENTA').Clear;
            ParamByName('ID_COLOCACION').Clear;
            ParamByName('ID_IDENTIFICACION').AsInteger := 0;
            ParamByName('ID_PERSONA').Clear;
            ParamByName('MONTO_RETENCION').AsCurrency := 0;
            ParamByName('TASA_RETENCION').AsFloat := 0;
            ParamByName('ESTADOAUX').AsString := 'O';
            ParamByName('TIPO_COMPROBANTE').AsInteger := 1;
            ParamByName('ID').AsInteger := idauxiliar;
            ParamByName('ID_CLASE_OPERACION').Clear;
            ExecQuery;

            Close;
            SQL.Clear;
            SQL.Add(
'INSERT INTO "con$auxiliarext" (ID, DETALLE, CHEQUE,ID_COMPROBANTE, TIPO_COMPROBANTE,ID_AGENCIA) VALUES (:ID,:DETALLE,:CHEQUE,:ID_COMPROBANTE,:TIPO_COMPROBANTE,:ID_AGENCIA)'
            );
            ParamByName('ID').AsInteger := idauxiliar;
            ParamByName('DETALLE').AsString := 'AJUSTE CALIFICACION, CAUSACION Y PROVISION DE CARTERA EN LA FECHA';
            ParamByName('CHEQUE').AsString := '';
            ParamByName('TIPO_COMPROBANTE').AsInteger := 1;
            ParamByName('ID_COMPROBANTE').AsInteger := Consecutivo;
            ParamByName('ID_AGENCIA').AsInteger := Agencia;
            ExecQuery;

          End;

      Close;
      SQL.Clear;
      SQL.Add('update "col$causacionescontrol" set CONTABILIZADA = 1, ID_COMPROBANTE = :CSC');
      SQL.Add('where FECHA = :FECHA');
      ParamByName('FECHA').AsDate := EdFechaCorte.Date;
      ParamByName('CSC').AsInteger := Consecutivo;
      ExecQuery;
      Try
        Transaction.Commit;
      Except
        Transaction.Rollback;
        raise;
        Exit;
    End;
End;
End;

Procedure TfrmCausacionCarteraDiaria.ContabilizarCPLP;

Var AR : Plist;
  Aplica : Boolean;
  CodigoCorto,CodigoLargo: string;
  ValorCorto,ValorLargo: Currency;
Begin
  With IBSQL2 Do
    Begin
      If Transaction.InTransaction Then
        Transaction.Rollback;
      Transaction.StartTransaction;
      Close;
      SQL.Clear;
      SQL.Add('select "col$causaciondiaria".ID_CLASIFICACION,');
      SQL.Add('"col$causaciondiaria".ID_GARANTIA,"col$causaciondiaria".ID_EDAD_ACT,');
      SQL.Add('SUM("col$causaciondiaria".CORTO_PL) AS CORTO,');
      SQL.Add('SUM("col$causaciondiaria".LARGO_PL) AS LARGO,');
      SQL.Add('"col$codigospuc".COD_CAPITAL_CP,');
      SQL.Add('"col$codigospuc".COD_CAPITAL_LP');
      SQL.Add('from "col$causaciondiaria"');
      SQL.Add('inner join "col$codigospuc" on');
      SQL.Add('("col$causaciondiaria".ID_CLASIFICACION = "col$codigospuc".ID_CLASIFICACION and');
      SQL.Add('"col$causaciondiaria".ID_GARANTIA = "col$codigospuc".ID_GARANTIA and');
      SQL.Add('"col$causaciondiaria".ID_EDAD_ACT = "col$codigospuc".ID_CATEGORIA)');
      SQL.Add('where');
      SQL.Add('"col$causaciondiaria".FECHA_CORTE = :FECHA_CORTE');
      SQL.Add('group by "col$causaciondiaria".ID_CLASIFICACION, "col$causaciondiaria".ID_GARANTIA,');
      SQL.Add('"col$causaciondiaria".ID_EDAD_ACT,"col$codigospuc".COD_CAPITAL_CP,"col$codigospuc".COD_CAPITAL_LP');
      SQL.Add('order by "col$causaciondiaria".ID_CLASIFICACION DESC,"col$causaciondiaria".ID_GARANTIA,');
      SQL.Add('"col$causaciondiaria".ID_EDAD_ACT');
      ParamByName('FECHA_CORTE').AsDate := EdFechaCorte.Date;
      Try
        ExecQuery;
      Except
        MessageDlg('Error al Buscar Corto y Largo Plazo',mtError,[mbcancel],0);
        Transaction.Rollback;
        raise;
        Exit;
    End;

  // Buscar y Comparar Valores
  While Not Eof Do
    Begin
      CodigoCorto := FieldByName('COD_CAPITAL_CP').AsString;
      CodigoLargo := FieldByName('COD_CAPITAL_LP').AsString;

      IBSQL3.Close;
      IBSQL3.SQL.Clear;
      IBSQL3.SQL.Add('select * from VALOR_AGENCIA(:MES,:CODIGO)');
      IBSQL3.ParamByName('MES').AsInteger := Monthof(EdFechaCorte.Date);
      IBSQL3.ParamByName('CODIGO').AsString := CodigoCorto;
      Try
        IBSQL3.ExecQuery;
        ValorCorto := IBSQL3.FieldByName('SALDO').AsCurrency;
      Except
        MessageDlg('Error al Obtener valor de Corto Plazo',mtError,[mbcancel],0);
        Transaction.Rollback;
        raise;
        Exit;
    End;

  IBSQL3.Close;
  IBSQL3.SQL.Clear;
  IBSQL3.SQL.Add('select * from VALOR_AGENCIA(:MES,:CODIGO)');
  IBSQL3.ParamByName('MES').AsInteger := Monthof(EdFechaCorte.Date);
  IBSQL3.ParamByName('CODIGO').AsString := CodigoLargo;
  Try
    IBSQL3.ExecQuery;
    ValorLargo := IBSQL3.FieldByName('SALDO').AsCurrency;
  Except
    MessageDlg('Error al Obtener valor de Corto Plazo',mtError,[mbcancel],0);
    Transaction.Rollback;
    raise;
    Exit;
End;

//  Comparar Valor y Contabilizar Diferencia
IBSQL3.Close;
IBSQL3.SQL.Clear;
IBSQL3.SQL.Add('select NOMBRE from "con$puc" where CODIGO = :CODIGO');
IBSQL3.ParamByName('CODIGO').AsString := CodigoCorto;
IBSQL3.ExecQuery;
Aplica := False;
If ValorCorto > FieldByName('CORTO').AsCurrency Then
  Begin
    New(AR);
    AR^.codigo := CodigoCorto;
    AR^.centro := 1;
    AR^.nomcuenta := IBSQL3.FieldByName('NOMBRE').AsString;
    AR^.nocuenta := 0;
    AR^.nocredito := '';
    AR^.tipoide := 0;
    AR^.idpersona := '';
    AR^.monto := 0;
    AR^.tasa := 0;
    AR^.estado := 'O';
    AR^.debito := 0;
    AR^.credito := ValorCorto - FieldByName('CORTO').AsCurrency;
    Lista.Add(AR);
    Aplica := True;
  End
Else If ValorCorto < FieldByName('SALDO').AsCurrency Then
       Begin
         New(AR);
         AR^.codigo := CodigoCorto;
         AR^.centro := 1;
         AR^.nomcuenta := IBSQL3.FieldByName('NOMBRE').AsString;
         AR^.nocuenta := 0;
         AR^.nocredito := '';
         AR^.tipoide := 0;
         AR^.idpersona := '';
         AR^.monto := 0;
         AR^.tasa := 0;
         AR^.estado := 'O';
         AR^.credito := 0;
         AR^.debito := FieldByName('CORTO').AsCurrency - ValorCorto;
         Lista.Add(AR);
         Aplica := True;
       End;

IBSQL3.Close;
IBSQL3.ParamByName('CODIGO').AsString := CodigoLargo;
IBSQL3.ExecQuery;
If ValorLargo > FieldByName('LARGO').AsCurrency Then
  Begin
    New(AR);
    AR^.codigo := CodigoLargo;
    AR^.centro := 1;
    AR^.nomcuenta := IBSQL3.FieldByName('NOMBRE').AsString;
    AR^.nocuenta := 0;
    AR^.nocredito := '';
    AR^.tipoide := 0;
    AR^.idpersona := '';
    AR^.monto := 0;
    AR^.tasa := 0;
    AR^.estado := 'O';
    AR^.debito := 0;
    AR^.credito := ValorLargo - FieldByName('LARGO').AsCurrency;
    Lista.Add(AR);
    Aplica := True;
  End
Else If ValorLargo < FieldByName('LARGO').AsCurrency Then
       Begin
         New(AR);
         AR^.codigo := CodigoLargo;
         AR^.centro := 1;
         AR^.nomcuenta := IBSQL3.FieldByName('NOMBRE').AsString;
         AR^.nocuenta := 0;
         AR^.nocredito := '';
         AR^.tipoide := 0;
         AR^.idpersona := '';
         AR^.monto := 0;
         AR^.tasa := 0;
         AR^.estado := 'O';
         AR^.credito := 0;
         AR^.debito := FieldByName('LARGO').AsCurrency - ValorLargo;
         Lista.Add(AR);
       End;
ActualizarGrid;
Next;
End;
// while
End;
// with
IBSQL2.Transaction.Commit;
End;

Procedure TfrmCausacionCarteraDiaria.ContabilizarKC;

Var AR: PList;
  Codigo: string;
  Valor,ValorDeuda: Currency;
  Aplica : Boolean;
Begin
  With IBSQL1 Do
    Begin
      If Transaction.InTransaction Then
        Transaction.Rollback;
      Transaction.StartTransaction;
      Close;
      SQL.Clear;
      SQL.Add('select * from "col$porccausacion"');
      SQL.Add('where ID_EDAD > :ID_EDAD');
      SQL.Add('order by ID_CLASIFICACION,ID_GARANTIA,ID_EDAD');
      ParamByName('ID_EDAD').AsString := 'A';
      Try
        ExecQuery;
      Except
        Transaction.Rollback;
        raise;
    End;
  While Not Eof Do
    Begin
      IBSQL2.Close;
      IBSQL2.SQL.Clear;
      IBSQL2.SQL.Add('select SUM("col$causaciondiaria".DEUDA) AS DEUDA');
      IBSQL2.SQL.Add('from "col$causaciondiaria"');
      IBSQL2.SQL.Add('where ID_CLASIFICACION = :ID_CLASIFICACION and ');
      IBSQL2.SQL.Add('ID_GARANTIA = :ID_GARANTIA and ID_ARRASTRE = :ID_CATEGORIA and');
      IBSQL2.SQL.Add('FECHA_CORTE = :FECHA_CORTE');
      IBSQL2.ParamByName('ID_CLASIFICACION').AsInteger := FieldByName('ID_CLASIFICACION').AsInteger;
      IBSQL2.ParamByName('ID_GARANTIA').AsInteger := FieldByName('ID_GARANTIA').AsInteger;
      IBSQL2.ParamByName('ID_CATEGORIA').AsString := FieldByName('ID_EDAD').AsString;
      IBSQL2.ParamByName('FECHA_CORTE').AsDate := EdFechaCorte.Date;
      Try
        IBSQL2.ExecQuery;
        If IBSQL2.RecordCount > 0 Then
          ValorDeuda := IBSQL2.FieldByName('DEUDA').AsCurrency
        Else
          ValorDeuda := 0;
      Except
        MessageDlg('Error al Buscar Deuda',mtError,[mbcancel],0);
        Transaction.Rollback;
        raise;
        Exit;
    End;

  IBSQL3.Close;
  IBSQL3.SQL.Clear;
  IBSQL3.SQL.Add('select "col$codigospuc".COD_CAPITAL_CP');
  IBSQL3.SQL.Add('from "col$codigospuc" where "col$codigospuc".ID_CLASIFICACION = :ID_CLASIFICACION and ');
  IBSQL3.SQL.Add('"col$codigospuc".ID_GARANTIA = :ID_GARANTIA and "col$codigospuc".ID_CATEGORIA = :ID_CATEGORIA');
  IBSQL3.ParamByName('ID_CLASIFICACION').AsInteger := FieldByName('ID_CLASIFICACION').AsInteger;
  IBSQL3.ParamByName('ID_GARANTIA').AsInteger := fieldbyname('ID_GARANTIA').AsInteger;
  IBSQL3.ParamByName('ID_CATEGORIA').AsString := fieldbyname('ID_EDAD').AsString;
  Try
    IBSQL3.ExecQuery;
    Codigo := IBSQL3.FieldByName('COD_CAPITAL_CP').AsString;
  Except
    MessageDlg('Error Buscando Codigos Corto y Largo Plazo',mtError,[mbcancel],0);
    Transaction.Rollback;
    raise;
    Exit;
End;

IBSQL3.Close;
IBSQL3.SQL.Clear;
IBSQL3.SQL.Add('select * from VALOR_AGENCIA(:MES,:CODIGO)');
IBSQL3.ParamByName('MES').AsInteger := Monthof(EdFechaCorte.Date);
IBSQL3.ParamByName('CODIGO').AsString := Codigo;
Try
  IBSQL3.ExecQuery;
  Valor := IBSQL3.FieldByName('SALDO').AsCurrency;
Except
  MessageDlg('Error al Obtener valor de Corto Plazo',mtError,[mbcancel],0);
  Transaction.Rollback;
  raise;
  Exit;
End;


//Comparar Saldos y Contabilizar

IBSQL3.Close;
IBSQL3.SQL.Clear;
IBSQL3.SQL.Add('select NOMBRE from "con$puc" where CODIGO = :CODIGO');
IBSQL3.ParamByName('CODIGO').AsString := Codigo;
IBSQL3.ExecQuery;
Aplica := False;
If Valor > ValorDeuda Then
  Begin
    New(AR);
    AR^.codigo := Codigo;
    AR^.centro := 1;
    AR^.nomcuenta := IBSQL3.FieldByName('NOMBRE').AsString;
    AR^.nocuenta := 0;
    AR^.nocredito := '';
    AR^.tipoide := 0;
    AR^.idpersona := '';
    AR^.monto := 0;
    AR^.tasa := 0;
    AR^.estado := 'O';
    AR^.debito := 0;
    AR^.credito := Valor - ValorDeuda;
    Lista.Add(AR);
    Aplica := True;
  End
Else If Valor < ValorDeuda Then
       Begin
         New(AR);
         AR^.codigo := Codigo;
         AR^.centro := 1;
         AR^.nomcuenta := IBSQL3.FieldByName('NOMBRE').AsString;
         AR^.nocuenta := 0;
         AR^.nocredito := '';
         AR^.tipoide := 0;
         AR^.idpersona := '';
         AR^.monto := 0;
         AR^.tasa := 0;
         AR^.estado := 'O';
         AR^.credito := 0;
         AR^.debito := ValorDeuda - Valor;
         Lista.Add(AR);
         Aplica := True;
       End;
ActualizarGrid;
Next;
End;
// while
End;
// with
IBSQL1.Transaction.Commit;

// Ajuste Costas
With IBSQL1 Do
  Begin
    If Transaction.InTransaction Then
      Transaction.Rollback;
    Transaction.StartTransaction;
    Close;
    SQL.Clear;
    SQL.Add('select * from "col$porccausacion"');
    SQL.Add('where ID_GARANTIA = 1');
    SQL.Add('order by ID_CLASIFICACION,ID_GARANTIA,ID_EDAD');
    Try
      ExecQuery;
    Except
      Transaction.Rollback;
      raise;
  End;
While Not Eof Do
  Begin
    IBSQL2.Close;
    IBSQL2.SQL.Clear;
    IBSQL2.SQL.Add('select SUM("col$causaciondiaria".COSTAS) AS COSTAS');
    IBSQL2.SQL.Add('from "col$causaciondiaria"');
    IBSQL2.SQL.Add('where ID_CLASIFICACION = :ID_CLASIFICACION and ');
    IBSQL2.SQL.Add('ID_ARRASTRE = :ID_CATEGORIA and');
    IBSQL2.SQL.Add('FECHA_CORTE = :FECHA_CORTE');
    IBSQL2.ParamByName('ID_CLASIFICACION').AsInteger := FieldByName('ID_CLASIFICACION').AsInteger;
    IBSQL2.ParamByName('ID_CATEGORIA').AsString := FieldByName('ID_EDAD').AsString;
    IBSQL2.ParamByName('FECHA_CORTE').AsDate := EdFechaCorte.Date;
    Try
      IBSQL2.ExecQuery;
      If IBSQL2.RecordCount > 0 Then
        ValorDeuda := IBSQL2.FieldByName('COSTAS').AsCurrency
      Else
        ValorDeuda := 0;
    Except
      MessageDlg('Error al Buscar Deuda',mtError,[mbcancel],0);
      Transaction.Rollback;
      raise;
      Exit;
  End;

// Buscar y Comparar Valores
// Buscar Codigo Puc
IBSQL3.Close;
IBSQL3.SQL.Clear;
IBSQL3.SQL.Add('select "col$codigospuc".COD_COSTAS');
IBSQL3.SQL.Add('from "col$codigospuc" where "col$codigospuc".ID_CLASIFICACION = :ID_CLASIFICACION and ');
IBSQL3.SQL.Add('"col$codigospuc".ID_GARANTIA = :ID_GARANTIA and "col$codigospuc".ID_CATEGORIA = :ID_CATEGORIA');
IBSQL3.ParamByName('ID_CLASIFICACION').AsInteger := FieldByName('ID_CLASIFICACION').AsInteger;
IBSQL3.ParamByName('ID_GARANTIA').AsInteger := 1;
IBSQL3.ParamByName('ID_CATEGORIA').AsString := fieldbyname('ID_EDAD').AsString;
Try
  IBSQL3.ExecQuery;
  Codigo := IBSQL3.FieldByName('COD_COSTAS').AsString;
Except
  MessageDlg('Error Buscando Codigos Costas',mtError,[mbcancel],0);
  Transaction.Rollback;
  raise;
  Exit;
End;
//  Buscar en Puc Saldos Actuales
IBSQL3.Close;
IBSQL3.SQL.Clear;
IBSQL3.SQL.Add('select * from VALOR_AGENCIA(:MES,:CODIGO)');
IBSQL3.ParamByName('MES').AsInteger := Monthof(EdFechaCorte.Date);
IBSQL3.ParamByName('CODIGO').AsString := Codigo;
Try
  IBSQL3.ExecQuery;
  Valor := IBSQL3.FieldByName('SALDO').AsCurrency;
Except
  MessageDlg('Error al Obtener valor de Costas',mtError,[mbcancel],0);
  Transaction.Rollback;
  raise;
  Exit;
End;


//Comparar Saldos y Contabilizar

IBSQL3.Close;
IBSQL3.SQL.Clear;
IBSQL3.SQL.Add('select NOMBRE from "con$puc" where CODIGO = :CODIGO');
IBSQL3.ParamByName('CODIGO').AsString := Codigo;
IBSQL3.ExecQuery;
Aplica := False;
If Valor > ValorDeuda Then
  Begin
    New(AR);
    AR^.codigo := Codigo;
    AR^.centro := 1;
    AR^.nomcuenta := IBSQL3.FieldByName('NOMBRE').AsString;
    AR^.nocuenta := 0;
    AR^.nocredito := '';
    AR^.tipoide := 0;
    AR^.idpersona := '';
    AR^.monto := 0;
    AR^.tasa := 0;
    AR^.estado := 'O';
    AR^.debito := 0;
    AR^.credito := Valor - ValorDeuda;
    Lista.Add(AR);
    Aplica := True;
  End
Else If Valor < ValorDeuda Then
       Begin
         New(AR);
         AR^.codigo := Codigo;
         AR^.centro := 1;
         AR^.nomcuenta := IBSQL3.FieldByName('NOMBRE').AsString;
         AR^.nocuenta := 0;
         AR^.nocredito := '';
         AR^.tipoide := 0;
         AR^.idpersona := '';
         AR^.monto := 0;
         AR^.tasa := 0;
         AR^.estado := 'O';
         AR^.credito := 0;
         AR^.debito := ValorDeuda - Valor;
         Lista.Add(AR);
         Aplica := True;
       End;
ActualizarGrid;
Next;
End;
// while
End;
// with
IBSQL1.Transaction.Commit;

End;

Procedure TfrmCausacionCarteraDiaria.ContabilizarCau;

Var AR: PList;
  Valor,ValorCausado: Currency;
  Codigo: string;
  Comercial,Consumo,Vivienda,Microcredito: Currency;
  Aplica : Boolean;
Begin
  Comercial    := 0;
  Consumo      := 0;
  Vivienda     := 0;
  Microcredito := 0;
  With IBSQL1 Do
    Begin
      If Transaction.InTransaction Then
        Transaction.Rollback;
      Transaction.StartTransaction;
      Close;
      SQL.Clear;
      SQL.Add('select * from "col$porccausacion"');
      SQL.Add('where ID_GARANTIA = 1');
      SQL.Add('order by ID_CLASIFICACION,ID_GARANTIA,ID_EDAD');
      Try
        ExecQuery;
      Except
        Transaction.Rollback;
        raise;
    End;
  While Not Eof Do
    Begin
      IBSQL2.Close;
      IBSQL2.SQL.Clear;
      IBSQL2.SQL.Add('select SUM("col$causaciondiaria".CAUSADOS) AS CAUSADOS');
      IBSQL2.SQL.Add('from "col$causaciondiaria"');
      IBSQL2.SQL.Add('where ID_CLASIFICACION = :ID_CLASIFICACION and ');
      IBSQL2.SQL.Add('ID_ARRASTRE = :ID_CATEGORIA and');
      IBSQL2.SQL.Add('FECHA_CORTE = :FECHA_CORTE');
      IBSQL2.ParamByName('ID_CLASIFICACION').AsInteger := FieldByName('ID_CLASIFICACION').AsInteger;
      IBSQL2.ParamByName('ID_CATEGORIA').AsString := FieldByName('ID_EDAD').AsString;
      IBSQL2.ParamByName('FECHA_CORTE').AsDate := EdFechaCorte.Date;
      Try
        IBSQL2.ExecQuery;
        If IBSQL2.RecordCount > 0 Then
          ValorCausado := IBSQL2.FieldByName('CAUSADOS').AsCurrency
        Else
          ValorCausado := 0;
      Except
        MessageDlg('Error al Buscar Deuda',mtError,[mbcancel],0);
        Transaction.Rollback;
        raise;
        Exit;
    End;

  // Buscar y Comparar Valores
  // Buscar Codigo Puc
  IBSQL3.Close;
  IBSQL3.SQL.Clear;
  IBSQL3.SQL.Add('select "col$codigospuc".COD_CXC');
  IBSQL3.SQL.Add('from "col$codigospuc" where "col$codigospuc".ID_CLASIFICACION = :ID_CLASIFICACION and ');
  IBSQL3.SQL.Add('"col$codigospuc".ID_GARANTIA = :ID_GARANTIA and "col$codigospuc".ID_CATEGORIA = :ID_CATEGORIA');
  IBSQL3.ParamByName('ID_CLASIFICACION').AsInteger := FieldByName('ID_CLASIFICACION').AsInteger;
  IBSQL3.ParamByName('ID_GARANTIA').AsInteger := 1;
  IBSQL3.ParamByName('ID_CATEGORIA').AsString := fieldbyname('ID_EDAD').AsString;
  Try
    IBSQL3.ExecQuery;
    Codigo := IBSQL3.FieldByName('COD_CXC').AsString;
  Except
    MessageDlg('Error Buscando Codigos Interes Causado',mtError,[mbcancel],0);
    Transaction.Rollback;
    raise;
    Exit;
End;
//  Buscar en Puc Saldos Actuales
IBSQL3.Close;
IBSQL3.SQL.Clear;
IBSQL3.SQL.Add('select * from VALOR_AGENCIA(:MES,:CODIGO)');
IBSQL3.ParamByName('MES').AsInteger := Monthof(EdFechaCorte.Date);
IBSQL3.ParamByName('CODIGO').AsString := Codigo;
Try
  IBSQL3.ExecQuery;
  Valor := IBSQL3.FieldByName('SALDO').AsCurrency;
Except
  MessageDlg('Error al Obtener valor de Corto Plazo',mtError,[mbcancel],0);
  Transaction.Rollback;
  raise;
  Exit;
End;
//Comparar Saldos y Contabilizar
IBSQL3.Close;
IBSQL3.SQL.Clear;
IBSQL3.SQL.Add('select NOMBRE from "con$puc" where CODIGO = :CODIGO');
IBSQL3.ParamByName('CODIGO').AsString := Codigo;
IBSQL3.ExecQuery;
Aplica := False;
If Valor > ValorCausado Then
  Begin
    New(AR);
    AR^.codigo := Codigo;
    AR^.centro := 1;
    AR^.nomcuenta := IBSQL3.FieldByName('NOMBRE').AsString;
    AR^.nocuenta := 0;
    AR^.nocredito := '';
    AR^.tipoide := 0;
    AR^.idpersona := '';
    AR^.monto := 0;
    AR^.tasa := 0;
    AR^.estado := 'O';
    AR^.debito := 0;
    AR^.credito := Valor - ValorCausado;
    Lista.Add(AR);
    Aplica := True;
  End
Else If Valor < ValorCausado Then
       Begin
         New(AR);
         AR^.codigo := Codigo;
         AR^.centro := 1;
         AR^.nomcuenta := IBSQL3.FieldByName('NOMBRE').AsString;
         AR^.nocuenta := 0;
         AR^.nocredito := '';
         AR^.tipoide := 0;
         AR^.idpersona := '';
         AR^.monto := 0;
         AR^.tasa := 0;
         AR^.estado := 'O';
         AR^.credito := 0;
         AR^.debito := ValorCausado - Valor;
         Lista.Add(AR);
         Aplica := True;
       End;
If Aplica Then
  If FieldByName('ID_CLASIFICACION').AsInteger = 1 Then
    Comercial := Comercial - ar^.debito + ar^.credito
Else If FieldByName('ID_CLASIFICACION').AsInteger = 2 Then
       Consumo := Consumo + ar^.credito - ar^.debito
Else If FieldByName('ID_CLASIFICACION').AsInteger = 3 Then
       Vivienda := Vivienda + ar^.credito - ar^.debito
Else If FieldByName('ID_CLASIFICACION').AsInteger = 4 Then
       Microcredito := Microcredito + ar^.credito - ar^.debito;
ActualizarGrid;
Next;
End;
// while
End;
// with
Codigo := '415005000000000000';
IBSQL3.SQL.Clear;
IBSQL3.SQL.Add('select NOMBRE from "con$puc" where CODIGO = :CODIGO');

If Comercial <> 0 Then
  Begin
    New(ar);
    IBSQL3.Close;
    IBSQL3.ParamByName('CODIGO').AsString := Codigo;
    IBSQL3.ExecQuery;
    AR^.codigo := Codigo;
    AR^.centro := 1;
    AR^.nomcuenta := IBSQL3.FieldByName('NOMBRE').AsString;
    AR^.nocuenta := 0;
    AR^.nocredito := '';
    AR^.tipoide := 0;
    AR^.idpersona := '';
    AR^.monto := 0;
    AR^.tasa := 0;
    AR^.estado := 'O';
    If Comercial < 0 Then
      Begin
        AR^.credito := -Comercial;
        AR^.debito := 0;
      End
    Else
      Begin
        AR^.debito := Comercial;
        AR^.credito := 0;
      End;
    Lista.Add(AR);
  End;

Codigo := '415010000000000000';
If Consumo <> 0 Then
  Begin
    New(ar);
    IBSQL3.Close;
    IBSQL3.ParamByName('CODIGO').AsString := Codigo;
    IBSQL3.ExecQuery;
    AR^.codigo := Codigo;
    AR^.centro := 1;
    AR^.nomcuenta := IBSQL3.FieldByName('NOMBRE').AsString;
    AR^.nocuenta := 0;
    AR^.nocredito := '';
    AR^.tipoide := 0;
    AR^.idpersona := '';
    AR^.monto := 0;
    AR^.tasa := 0;
    AR^.estado := 'O';
    If Consumo < 0 Then
      Begin
        AR^.credito := -Consumo;
        AR^.debito := 0;
      End
    Else
      Begin
        AR^.debito := Consumo;
        AR^.credito := 0;
      End;
    Lista.Add(AR);
  End;

Codigo := '415015000000000000';
If Vivienda <> 0 Then
  Begin
    New(ar);
    IBSQL3.Close;
    IBSQL3.ParamByName('CODIGO').AsString := Codigo;
    IBSQL3.ExecQuery;
    AR^.codigo := Codigo;
    AR^.centro := 1;
    AR^.nomcuenta := IBSQL3.FieldByName('NOMBRE').AsString;
    AR^.nocuenta := 0;
    AR^.nocredito := '';
    AR^.tipoide := 0;
    AR^.idpersona := '';
    AR^.monto := 0;
    AR^.tasa := 0;
    AR^.estado := 'O';
    If Vivienda < 0 Then
      Begin
        AR^.credito := -Vivienda;
        AR^.debito := 0;
      End
    Else
      Begin
        AR^.debito := Vivienda;
        AR^.credito := 0;
      End;
    Lista.Add(AR);
  End;

Codigo := '415017000000000000';
If Microcredito <> 0 Then
  Begin
    New(ar);
    IBSQL3.Close;
    IBSQL3.ParamByName('CODIGO').AsString := Codigo;
    IBSQL3.ExecQuery;
    AR^.codigo := Codigo;
    AR^.centro := 1;
    AR^.nomcuenta := IBSQL3.FieldByName('NOMBRE').AsString;
    AR^.nocuenta := 0;
    AR^.nocredito := '';
    AR^.tipoide := 0;
    AR^.idpersona := '';
    AR^.monto := 0;
    AR^.tasa := 0;
    AR^.estado := 'O';
    If Microcredito < 0 Then
      Begin
        AR^.credito := -Microcredito;
        AR^.debito := 0;
      End
    Else
      Begin
        AR^.debito := Microcredito;
        AR^.credito := 0;
      End;
    Lista.Add(AR);
  End;

Actualizargrid;
IBSQL1.Transaction.Commit;
End;


Procedure TfrmCausacionCarteraDiaria.ContabilizarR;

Var AR : Plist;
  Aplica : Boolean;
  CortoActual,LargoActual: Currency;
  CodigoCorto,CodigoLargo: string;
  CodigoPK,CodigoPI,CodigoPC: string;
  CodigoRK,CodigoRI,CodigoRC: string;
  CodigoGK,CodigoGI,CodigoGC: string;
  ValorCorto,ValorLargo: Currency;
Begin
  With IBSQL2 Do
    Begin
      If Transaction.InTransaction Then
        Transaction.Rollback;
      Transaction.StartTransaction;
      Close;
      SQL.Clear;
      SQL.Add('select "col$causaciondiaria".ID_CLASIFICACION,');
      SQL.Add('"col$causaciondiaria".ID_GARANTIA,"col$causaciondiaria".ID_EDAD_ACT,');
      SQL.Add('SUM("col$causaciondiaria".DEUDA) AS SALDO,');
      SQL.Add('"col$codigospuc".COD_CAPITAL_CP,');
      SQL.Add('"col$codigospuc".COD_CAPITAL_LP');
      SQL.Add('from "col$causaciondiaria"');
      SQL.Add('inner join "col$codigospuc" on');
      SQL.Add('("col$causaciondiaria".ID_CLASIFICACION = "col$codigospuc".ID_CLASIFICACION and');
      SQL.Add('"col$causaciondiaria".ID_GARANTIA = "col$codigospuc".ID_GARANTIA and');
      SQL.Add('"col$causaciondiaria".ID_EDAD_ACT = "col$codigospuc".ID_CATEGORIA)');
      SQL.Add('where');
      SQL.Add('"col$causaciondiaria".FECHA_CORTE = :FECHA_CORTE');
      SQL.Add('group by "col$causaciondiaria".ID_CLASIFICACION, "col$causaciondiaria".ID_GARANTIA,');
      SQL.Add('"col$causaciondiaria".ID_EDAD_ACT,"col$codigospuc".COD_CAPITAL_CP,"col$codigospuc".COD_CAPITAL_LP');
      SQL.Add('order by "col$causaciondiaria".ID_CLASIFICACION DESC,"col$causaciondiaria".ID_GARANTIA,');
      SQL.Add('"col$causaciondiaria".ID_EDAD_ACT');
      ParamByName('FECHA_CORTE').AsDate := EdFechaCorte.Date;
      Try
        ExecQuery;
      Except
        MessageDlg('Error al Buscar Corto y Largo Plazo',mtError,[mbcancel],0);
        Transaction.Rollback;
        raise;
        Exit;
    End;

  // Buscar y Comparar Valores
  While Not Eof Do
    Begin
      CodigoCorto := FieldByName('COD_CAPITAL_CP').AsString;
      CodigoLargo := FieldByName('COD_CAPITAL_LP').AsString;

      IBSQL3.Close;
      IBSQL3.SQL.Clear;
      IBSQL3.SQL.Add('select * from VALOR_AGENCIA(:MES,:CODIGO)');
      IBSQL3.ParamByName('MES').AsInteger := Monthof(EdFechaCorte.Date);
      IBSQL3.ParamByName('CODIGO').AsString := CodigoCorto;
      Try
        IBSQL3.ExecQuery;
        ValorCorto := IBSQL3.FieldByName('SALDO').AsCurrency;
      Except
        MessageDlg('Error al Obtener valor de Corto Plazo',mtError,[mbcancel],0);
        Transaction.Rollback;
        raise;
        Exit;
    End;

  IBSQL3.Close;
  IBSQL3.SQL.Clear;
  IBSQL3.SQL.Add('select * from VALOR_AGENCIA(:MES, :CODIGO)');
  IBSQL3.ParamByName('MES').AsInteger := Monthof(EdFechaCorte.Date);
  IBSQL3.ParamByName('CODIGO').AsString := CodigoLargo;
  Try
    IBSQL3.ExecQuery;
    ValorLargo := IBSQL3.FieldByName('SALDO').AsCurrency;
  Except
    MessageDlg('Error al Obtener valor de Corto Plazo',mtError,[mbcancel],0);
    Transaction.Rollback;
    raise;
    Exit;
End;

//  Comparar Valor y Contabilizar Diferencia
IBSQL3.Close;
IBSQL3.SQL.Clear;
IBSQL3.SQL.Add('select NOMBRE from "con$puc" where CODIGO = :CODIGO');
IBSQL3.ParamByName('CODIGO').AsString := CodigoCorto;
IBSQL3.ExecQuery;
Aplica := False;
If ValorCorto > FieldByName('CORTO').AsCurrency Then
  Begin
    New(AR);
    AR^.codigo := CodigoCorto;
    AR^.centro := 1;
    AR^.nomcuenta := IBSQL3.FieldByName('NOMBRE').AsString;
    AR^.nocuenta := 0;
    AR^.nocredito := '';
    AR^.tipoide := 0;
    AR^.idpersona := '';
    AR^.monto := 0;
    AR^.tasa := 0;
    AR^.estado := 'O';
    AR^.debito := 0;
    AR^.credito := ValorCorto - FieldByName('CORTO').AsCurrency;
    Lista.Add(AR);
    Aplica := True;
  End
Else If ValorCorto < FieldByName('CORTO').AsCurrency Then
       Begin
         New(AR);
         AR^.codigo := CodigoCorto;
         AR^.centro := 1;
         AR^.nomcuenta := IBSQL3.FieldByName('NOMBRE').AsString;
         AR^.nocuenta := 0;
         AR^.nocredito := '';
         AR^.tipoide := 0;
         AR^.idpersona := '';
         AR^.monto := 0;
         AR^.tasa := 0;
         AR^.estado := 'O';
         AR^.credito := 0;
         AR^.debito := FieldByName('CORTO').AsCurrency - ValorCorto;
         Lista.Add(AR);
         Aplica := True;
       End;

IBSQL3.Close;
IBSQL3.ParamByName('CODIGO').AsString := CodigoLargo;
IBSQL3.ExecQuery;
If ValorLargo > FieldByName('LARGO').AsCurrency Then
  Begin
    New(AR);
    AR^.codigo := CodigoLargo;
    AR^.centro := 1;
    AR^.nomcuenta := IBSQL3.FieldByName('NOMBRE').AsString;
    AR^.nocuenta := 0;
    AR^.nocredito := '';
    AR^.tipoide := 0;
    AR^.idpersona := '';
    AR^.monto := 0;
    AR^.tasa := 0;
    AR^.estado := 'O';
    AR^.debito := 0;
    AR^.credito := ValorLargo - FieldByName('LARGO').AsCurrency;
    Lista.Add(AR);
    Aplica := True;
  End
Else If ValorLargo < FieldByName('LARGO').AsCurrency Then
       Begin
         New(AR);
         AR^.codigo := CodigoLargo;
         AR^.centro := 1;
         AR^.nomcuenta := IBSQL3.FieldByName('NOMBRE').AsString;
         AR^.nocuenta := 0;
         AR^.nocredito := '';
         AR^.tipoide := 0;
         AR^.idpersona := '';
         AR^.monto := 0;
         AR^.tasa := 0;
         AR^.estado := 'O';
         AR^.credito := 0;
         AR^.debito := FieldByName('LARGO').AsCurrency - ValorLargo;
         Lista.Add(AR);
       End;
ActualizarGrid;
Next;
End;
// while
End;
// with
IBSQL2.Transaction.Commit;
End;

Procedure TfrmCausacionCarteraDiaria.DescuentoGarReal;

Var 
  Capital,Interes,PCostas: Currency;
  PCapDiaAnt,PIntDiaAnt,PCosDiaAnt: Currency;
  PCapAcum,PIntAcum,PCosAcum: Currency;
  MovCapital,RecCapital,RevGCapital,GCapital: Currency;
  MovInteres,RecInteres,RevGInteres,GInteres: Currency;
  MovCostas,RecCostas,RevGCostas,GCostas: Currency;
  TipoId: Integer;
  Persona: string;
  edad_ant: string;
  SaldoGarantia,SaldoCapital,NuevaDeuda: Currency;
  PorcGarantia: Double;
  MoraCredito: Integer;
Begin
  With IBQReal Do
    Begin
      If Transaction.InTransaction Then
        Transaction.Rollback;
      Transaction.StartTransaction;

      //          Close;
      //          SQL.Clear;
      //          SQL.Add('
      Try
        Open;
      Except
        MessageDlg('Error al Iniciar la Tabla Temporal para proceso de Garantias',mtError,[mbcancel],0);
        Transaction.Rollback;
        raise;
        Exit;
    End;

  DPReal.DataSet := IBQReal;
  CDReal.ProviderName := 'DPReal';
  CDReal.Open;

  CDReal1.ProviderName := 'DPReal';
  CDReal1.Open;

  frmPantallaProgreso  := TfrmProgreso.Create(Self);
  frmPantallaProgreso.Min := 0;
  frmPantallaProgreso.Max := CDReal.RecordCount;
  frmPantallaProgreso.Titulo := 'Aplicando Descuento de Garant�as Reales';
  frmPantallaProgreso.Position := 0;
  frmPantallaProgreso.Ejecutar;

  While Not CDReal.Eof  Do
    Begin
      frmPantallaProgreso.Position := CDReal.RecNo;
      frmPantallaProgreso.InfoLabel := CDReal.FieldByName('ID_PERSONA').AsString + '-' + CDReal.FieldByName('ID_COLOCACION').AsString;
      Application.ProcessMessages;

      If CDReal.FieldByName('TIPOC_INTERES').AsString = 'A' Then
        MoraCredito := CDReal.FieldByName('MOROSIDAD').AsInteger + CDReal.FieldByName('AMORTIZA_INTERES').AsInteger
      Else
        MoraCredito := CDReal.FieldByName('MOROSIDAD').AsInteger;

      IBSQL9.Close;
      IBSQL9.SQL.Clear;
      IBSQL9.SQL.Add('SELECT VALOR_MINIMO FROM "gen$minimos" WHERE ID_MINIMO = :MINIMO');
      If (MoraCredito <= 540) Then
        IBSQL9.ParamByName('MINIMO').AsInteger := 50
      Else If ((MoraCredito > 540) And (MoraCredito <= 720)) Then
             IBSQL9.ParamByName('MINIMO').AsInteger := 52
      Else If ((MoraCredito >= 720) And (MoraCredito <= 900)) Then
             IBSQL9.ParamByName('MINIMO').AsInteger := 53
      Else If ((MoraCredito >= 900) And (MoraCredito <= 1080)) Then
             IBSQL9.ParamByName('MINIMO').AsInteger := 54
      Else If (MoraCredito > 1080) Then
             IBSQL9.ParamByName('MINIMO').AsInteger := 55;

      IBSQL9.ExecQuery;
      PorcGarantia := IBSQL9.FieldByName('VALOR_MINIMO').AsFloat;

      TipoId := CDReal.FieldByName('ID_IDENTIFICACION').AsInteger;
      Persona := CDReal.FieldByName('ID_PERSONA').AsString;
      SaldoCapital := 0;
      SaldoGarantia := 0;

      CDReal1.Filtered := False;
      CDReal1.Filter := 'ID_PERSONA = ' + '''' + Persona + '''' + ' and id_identificacion = ' + IntToStr(TipoId);
      CDReal1.Filtered := True;
      While Not CDReal1.Eof Do
        Begin
          SaldoCapital := CDReal1.FieldByName('DEUDA').AsCurrency - CDReal1.FieldByName('GARANTIA_DESCONTADA').AsCurrency;
          SaldoGarantia := SaldoGarantia + SimpleRoundTo((CDReal1.FieldByName('VALOR_GARANTIA').AsCurrency * PorcGarantia),0);
          If SaldoCapital < SaldoGarantia Then
            Begin
              CDReal1.Edit;
              CDReal1.FieldValues['GARANTIA_DESCONTADA'] := SaldoCapital;
              CDReal1.Post;
              SaldoGarantia := SaldoGarantia - SaldoCapital;
              SaldoCapital := 0;
            End
          Else If SaldoCapital > SaldoGarantia Then
                 Begin
                   CDReal1.Edit;
                   CDReal1.FieldValues['GARANTIA_DESCONTADA'] := SaldoGarantia;
                   CDReal1.Post;
                   SaldoCapital := SaldoCapital - SaldoGarantia;
                   SaldoGarantia := 0;
                 End
          Else If SaldoCapital = SaldoGarantia Then
                 Begin
                   CDReal1.Edit;
                   CDReal1.FieldValues['GARANTIA_DESCONTADA'] := SaldoGarantia;
                   CDReal1.Post;
                   SaldoGarantia := 0;
                   SaldoCapital := 0;
                 End;
          CDReal1.Next;
        End;
      //fin de while filtrado por persona
      CDReal1.Filtered := False;
      CDReal.Next;

      //Buscar Fianzas
      If SaldoGarantia > 0 Then
        Begin
          IBSQL9.Close;
          IBSQL9.SQL.Clear;
          IBSQL9.SQL.Add('SELECT "col$colgarantias".ID_AGENCIA,');
          IBSQL9.SQL.Add('"col$colgarantias".ID_COLOCACION,"col$colgarantiasreal".CUENTAS_DE_ORDEN,');
          IBSQL9.SQL.Add('"col$causaciondiariatmp".ID_ARRASTRE,"col$causaciondiariatmp".DEUDA,');
          IBSQL9.SQL.Add('"col$causaciondiariatmp".CAUSADOS,"col$causaciondiariatmp".PCAPITAL,');
          IBSQL9.SQL.Add('"col$causaciondiariatmp".PINTERES,"col$causaciondiariatmp".PCOSTAS,');
          IBSQL9.SQL.Add('"col$causaciondiariatmp".PCAPITAL_REC,"col$causaciondiariatmp".PINTERES_REC,');
          IBSQL9.SQL.Add('"col$causaciondiariatmp".PCOSTAS_REC,"col$causaciondiariatmp".PCAPITAL_REV,');
          IBSQL9.SQL.Add('"col$causaciondiariatmp".PINTERES_REV,"col$causaciondiariatmp".PCAPITAL_GAS,');
          IBSQL9.SQL.Add('"col$causaciondiariatmp".PCOSTAS_REV,"col$causaciondiariatmp".PINTERES_GAS,');
          IBSQL9.SQL.Add('"col$causaciondiariatmp".PCOSTAS_GAS,"col$causaciondiariatmp".VALOR_GARANTIA,');
          IBSQL9.SQL.Add('"col$causaciondiariatmp".GARANTIA_DESCONTADA FROM "col$colgarantias"');
          IBSQL9.SQL.Add('INNER JOIN "col$colgarantiasreal" ON ("col$colgarantias".ID_AGENCIA = "col$colgarantiasreal".ID_AGENCIA)');
          IBSQL9.SQL.Add('AND ("col$colgarantias".ID_COLOCACION = "col$colgarantiasreal".ID_COLOCACION)');
          IBSQL9.SQL.Add('INNER JOIN "col$causaciondiariatmp" ON ("col$colgarantias".ID_AGENCIA = "col$causaciondiariatmp".ID_AGENCIA)');
          IBSQL9.SQL.Add('AND ("col$colgarantias".ID_COLOCACION = "col$causaciondiariatmp".ID_COLOCACION)');
          IBSQL9.SQL.Add('WHERE "col$colgarantias".ID_IDENTIFICACION = :ID_IDENTIFICACION AND');
          IBSQL9.SQL.Add('"col$colgarantias".ID_PERSONA = :ID_PERSONA AND "col$colgarantiasreal".ES_HIPOTECA = 1');
          IBSQL9.ParamByName('ID_IDENTIFICACION').AsInteger := TIPOID;
          IBSQL9.ParamByName('ID_PERSONA').AsString := Persona;
          Try
            Open;
          Except
            MessageDlg('Error al Buscar Fianzas para Aplicar Descuento de Garant�a',mtError,[mbcancel],0);
            Transaction.Rollback;
            raise;
            Exit;
        End;

      While Not IBSQL9.Eof Do
        Begin
          SaldoCapital := IBSQL9.FieldByName('DEUDA').AsCurrency - IBSQL9.FieldByName('GARANTIA_DESCONTADA').AsCurrency;
          SaldoGarantia := SaldoGarantia + SimpleRoundTo((IBSQL9.FieldByName('VALOR_GARANTIA').AsCurrency * PorcGarantia),0);
          If SaldoCapital < SaldoGarantia Then
            Begin
              CDReal1.Filtered := False;
              CDReal1.Filter := 'ID_COLOCACION = ' + '''' + IBSQL9.FieldByName('ID_COLOCACION').AsString + '''' + ' and ID_AGENCIA = ' + IntToStr(IBSQL9.
                                FieldByName('ID_AGENCIA').AsInteger);
              CDReal1.Filtered := True;
              CDReal1.Edit;
              CDReal1.FieldValues['GARANTIA_DESCONTADA'] := SaldoCapital;
              CDReal1.Post;
              SaldoGarantia := SaldoGarantia - SaldoCapital;
              SaldoCapital := 0;
            End
          Else If SaldoCapital > SaldoGarantia Then
                 Begin
                   CDReal1.Filtered := False;
                   CDReal1.Filter := 'ID_COLOCACION = ' + '''' + IBSQL9.FieldByName('ID_COLOCACION').AsString + '''' + ' and ID_AGENCIA = ' + IntToStr(IBSQL9.
                                     FieldByName('ID_AGENCIA').AsInteger);
                   CDReal1.Filtered := True;
                   CDReal1.Edit;
                   CDReal1.FieldValues['GARANTIA_DESCONTADA'] := SaldoGarantia;
                   CDReal1.Post;
                   SaldoGarantia := SaldoGarantia - SaldoCapital;
                   SaldoCapital := SaldoCapital - SaldoGarantia;
                 End
          Else If SaldoCapital = SaldoGarantia Then
                 Begin
                   CDReal1.Filtered := False;
                   CDReal1.Filter := 'ID_COLOCACION = ' + '''' + IBSQL9.FieldByName('ID_COLOCACION').AsString + '''' + ' and ID_AGENCIA = ' + IntToStr(IBSQL9.
                                     FieldByName('ID_AGENCIA').AsInteger);
                   CDReal1.Filtered := True;
                   CDReal1.Edit;
                   CDReal1.FieldValues['GARANTIA_DESCONTADA'] := SaldoGarantia;
                   CDReal1.Post;
                   SaldoGarantia := 0;
                   SaldoCapital := 0;
                 End;
          IBSQL9.Next;
        End;
      //Fin While Fianzas
    End;
  //fin SaldoGarantia > 0

End;
// while
frmPantallaProgreso.Cerrar;
IBQReal.Close;

//Actualizar Tabla Temporal con Datos de Descuento Garantias
frmPantallaProgreso  := TfrmProgreso.Create(Self);
frmPantallaProgreso.Min := 0;
frmPantallaProgreso.Max := CDReal.RecordCount;
frmPantallaProgreso.Titulo := 'Actualizando Garant�as Reales';
frmPantallaProgreso.Position := 0;
frmPantallaProgreso.Ejecutar;

CDReal1.Filtered := False;
CDReal1.Last;
CDReal1.First;
While Not CDReal1.Eof Do
  Begin
    frmPantallaProgreso.Position := CDReal1.RecNo;
    frmPantallaProgreso.InfoLabel := CDReal1.FieldByName('ID_PERSONA').AsString + '-' + CDReal1.FieldByName('ID_COLOCACION').AsString;
    Application.ProcessMessages;
    IBQRealAct.SQL.Clear;
    IBQRealAct.SQL.Add('UPDATE "col$causaciondiariatmp" set VALOR_GARANTIA = :VALOR_GARANTIA, GARANTIA_DESCONTADA = :GARANTIA_DESCONTADA');
    IBQRealAct.SQL.Add ('WHERE ID_AGENCIA = :ID_AGENCIA AND ID_COLOCACION = :ID_COLOCACION');
    IBQRealAct.ParamByName('ID_AGENCIA').AsInteger := CDReal1.FieldByName('ID_AGENCIA').AsInteger;
    IBQRealAct.ParamByName('ID_COLOCACION').AsString := CDReal1.FieldByName('ID_COLOCACION').AsString;
    IBQRealAct.ParamByName('VALOR_GARANTIA').AsCurrency := CDReal1.FieldByName('VALOR_GARANTIA').AsCurrency;
    IBQRealAct.ParamByName('GARANTIA_DESCONTADA').AsCurrency := CDReal1.FieldByName('GARANTIA_DESCONTADA').AsCurrency;
    IBQRealAct.ExecSQL;
    CDReal1.Next;
  End;
IBQRealAct.Transaction.Commit;
frmPantallaProgreso.Close;
End;
//Fin de With inicial

End;

Procedure TfrmCausacionCarteraDiaria.GarantiasReales;

Var 
  Capital,Interes,PCostas: Currency;
  edad_ant: string;
  SaldoGarantia,SaldoCapital,NuevaDeuda: Currency;
  PorcGarantia: Double;
  MoraCredito: Integer;
Begin
  With IBQReal Do
    Begin
      If Transaction.InTransaction Then
        Transaction.Rollback;
      Transaction.StartTransaction;

      Close;
      SQL.Clear;
      SQL.Add('SELECT');
      SQL.Add('"col$datogarantia".MATRICULA,');
      SQL.Add('"col$datogarantia".CUENTAS_DE_ORDEN');
      SQL.Add('FROM  "col$datogarantia"');
      SQL.Add('WHERE "col$datogarantia".ESTADO = 0 AND CUENTAS_DE_ORDEN > 0');
      SQL.Add('ORDER BY MATRICULA ASC');
      Try
        Open;
      Except
        MessageDlg('Error al Seleccionar las Garantias Reales',mtError,[mbcancel],0);
        Transaction.Rollback;
        raise;
        Exit;
    End;

  DPReal.DataSet := IBQReal;
  CDReal.ProviderName := 'DPReal';
  CDReal.Open;

  frmPantallaProgreso  := TfrmProgreso.Create(Self);
  frmPantallaProgreso.Min := 0;
  frmPantallaProgreso.Max := CDReal.RecordCount;
  frmPantallaProgreso.Titulo := 'Aplicando Descuento de Garant�as Reales';
  frmPantallaProgreso.Position := 0;
  frmPantallaProgreso.Ejecutar;

  SaldoGarantia := 0;
  While Not CDReal.Eof  Do
    Begin
      SaldoGarantia := CDReal.FieldByName('CUENTAS_DE_ORDEN').AsCurrency;

      IBSQL10.Close;
      IBSQL10.SQL.Clear;
      IBSQL10.SQL.Add('SELECT');
      IBSQL10.SQL.Add('"col$garantiacol".ID_AGENCIA,');
      IBSQL10.SQL.Add('"col$garantiacol".ID_COLOCACION,');
      IBSQL10.SQL.Add('"col$garantiacol".TIPO_RESPALDO,');
      IBSQL10.SQL.Add('"col$causaciondiariatmp".DEUDA,');
      IBSQL10.SQL.Add('"col$causaciondiariatmp".TIPOC_INTERES,');
      IBSQL10.SQL.Add('"col$causaciondiariatmp".AMORTIZA_INTERES,');
      IBSQL10.SQL.Add('"col$causaciondiariatmp".MOROSIDAD,');
      IBSQL10.SQL.Add('"col$causaciondiariatmp".GARANTIA_DESCONTADA');
      IBSQL10.SQL.Add('FROM');
      IBSQL10.SQL.Add('"col$garantiacol"');
      IBSQL10.SQL.Add('INNER JOIN "col$causaciondiariatmp" ON ("col$garantiacol".ID_AGENCIA = "col$causaciondiariatmp".ID_AGENCIA)');
      IBSQL10.SQL.Add('AND ("col$garantiacol".ID_COLOCACION = "col$causaciondiariatmp".ID_COLOCACION)');
      IBSQL10.SQL.Add('WHERE');
      IBSQL10.SQL.Add('"col$causaciondiariatmp".FECHA_CORTE = :FECHA_CORTE AND');
      IBSQL10.SQL.Add('"col$causaciondiariatmp".ID_GARANTIA = 1 AND');
      IBSQL10.SQL.Add('"col$causaciondiariatmp".ID_ARRASTRE IN (' + QuotedStr('B') + ',' + QuotedStr('C') + ',' + QuotedStr('D') + ',' + QuotedStr('E') +
      ') AND');
      IBSQL10.SQL.Add('"col$garantiacol".MATRICULA = :MATRICULA');
      IBSQL10.SQL.Add('ORDER BY TIPO_RESPALDO ASC, ID_COLOCACION ASC');
      IBSQL10.ParamByName('FECHA_CORTE').AsDate := EdFechaCorte.Date;
      IBSQL10.ParamByName('MATRICULA').AsString := CDReal.FieldByName('MATRICULA').AsString;
      IBSQL10.ExecQuery;

      While Not IBSQL10.Eof Do
        Begin
          frmPantallaProgreso.Position := CDReal.RecNo;
          frmPantallaProgreso.InfoLabel := CDReal.FieldByName('MATRICULA').AsString;
          Application.ProcessMessages;

          If IBSQL10.FieldByName('TIPOC_INTERES').AsString = 'A' Then
            MoraCredito := IBSQL10.FieldByName('MOROSIDAD').AsInteger + IBSQL10.FieldByName('AMORTIZA_INTERES').AsInteger
          Else
            MoraCredito := IBSQL10.FieldByName('MOROSIDAD').AsInteger;

          IBSQL9.Close;
          IBSQL9.SQL.Clear;
          IBSQL9.SQL.Add('SELECT VALOR_MINIMO FROM "gen$minimos" WHERE ID_MINIMO = :MINIMO');
          If (MoraCredito <= 540) Then
            IBSQL9.ParamByName('MINIMO').AsInteger := 50
          Else If ((MoraCredito > 540) And (MoraCredito <= 720)) Then
                 IBSQL9.ParamByName('MINIMO').AsInteger := 52
          Else If ((MoraCredito >= 720) And (MoraCredito <= 900)) Then
                 IBSQL9.ParamByName('MINIMO').AsInteger := 53
          Else If ((MoraCredito >= 900) And (MoraCredito <= 1080)) Then
                 IBSQL9.ParamByName('MINIMO').AsInteger := 54
          Else If (MoraCredito > 1080) Then
                 IBSQL9.ParamByName('MINIMO').AsInteger := 55;
          IBSQL9.ExecQuery;

          PorcGarantia := IBSQL9.FieldByName('VALOR_MINIMO').AsFloat;

          SaldoGarantia := SimpleRoundTo((SaldoGarantia * PorcGarantia),0);
          SaldoCapital := IBSQL10.FieldByName('DEUDA').AsCurrency;

          If SaldoCapital < SaldoGarantia Then
            Begin
              IBQRealAct.SQL.Clear;
              IBQRealAct.SQL.Add(
       'UPDATE "col$causaciondiariatmp" set VALOR_GARANTIA = VALOR_GARANTIA + :VALOR_GARANTIA, GARANTIA_DESCONTADA = GARANTIA_DESCONTADA + :GARANTIA_DESCONTADA'
              );
              IBQRealAct.SQL.Add ('WHERE ID_AGENCIA = :ID_AGENCIA AND ID_COLOCACION = :ID_COLOCACION');
              IBQRealAct.ParamByName('ID_AGENCIA').AsInteger := IBSQL10.FieldByName('ID_AGENCIA').AsInteger;
              IBQRealAct.ParamByName('ID_COLOCACION').AsString := IBSQL10.FieldByName('ID_COLOCACION').AsString;
              IBQRealAct.ParamByName('VALOR_GARANTIA').AsCurrency := SaldoGarantia;
              IBQRealAct.ParamByName('GARANTIA_DESCONTADA').AsCurrency := SaldoCapital;
              IBQRealAct.ExecSQL;

              SaldoGarantia := SaldoGarantia - SaldoCapital;
              SaldoCapital := 0;
            End
          Else If SaldoCapital > SaldoGarantia Then
                 Begin
                   IBQRealAct.SQL.Clear;
                   IBQRealAct.SQL.Add(
       'UPDATE "col$causaciondiariatmp" set VALOR_GARANTIA = VALOR_GARANTIA + :VALOR_GARANTIA, GARANTIA_DESCONTADA = GARANTIA_DESCONTADA + :GARANTIA_DESCONTADA'
                   );
                   IBQRealAct.SQL.Add ('WHERE ID_AGENCIA = :ID_AGENCIA AND ID_COLOCACION = :ID_COLOCACION');
                   IBQRealAct.ParamByName('ID_AGENCIA').AsInteger := IBSQL10.FieldByName('ID_AGENCIA').AsInteger;
                   IBQRealAct.ParamByName('ID_COLOCACION').AsString := IBSQL10.FieldByName('ID_COLOCACION').AsString;
                   IBQRealAct.ParamByName('VALOR_GARANTIA').AsCurrency := SaldoGarantia;
                   IBQRealAct.ParamByName('GARANTIA_DESCONTADA').AsCurrency := SaldoGarantia;
                   IBQRealAct.ExecSQL;

                   SaldoGarantia := 0;
                   SaldoCapital := SaldoCapital - SaldoGarantia;
                 End
          Else If SaldoCapital = SaldoGarantia Then
                 Begin
                   IBQRealAct.SQL.Clear;
                   IBQRealAct.SQL.Add(
       'UPDATE "col$causaciondiariatmp" set VALOR_GARANTIA = VALOR_GARANTIA + :VALOR_GARANTIA, GARANTIA_DESCONTADA = GARANTIA_DESCONTADA + :GARANTIA_DESCONTADA'
                   );
                   IBQRealAct.SQL.Add ('WHERE ID_AGENCIA = :ID_AGENCIA AND ID_COLOCACION = :ID_COLOCACION');
                   IBQRealAct.ParamByName('ID_AGENCIA').AsInteger := IBSQL10.FieldByName('ID_AGENCIA').AsInteger;
                   IBQRealAct.ParamByName('ID_COLOCACION').AsString := IBSQL10.FieldByName('ID_COLOCACION').AsString;
                   IBQRealAct.ParamByName('VALOR_GARANTIA').AsCurrency := SaldoGarantia;
                   IBQRealAct.ParamByName('GARANTIA_DESCONTADA').AsCurrency := SaldoGarantia;
                   IBQRealAct.ExecSQL;

                   SaldoGarantia := 0;
                   SaldoCapital := 0;
                 End;
          IBSQL10.Next;
        End;
      // Fin While IBSQL10
      CDReal.Next;
    End;
  // Fin de While CDReal

  IBQRealAct.Transaction.Commit;
  frmPantallaProgreso.Close;
End;
//Fin de With inicial
End;

Procedure TfrmCausacionCarteraDiaria.CalculoProvision;

Var 
  Deuda, ProvisionCapital, ProvisionInteres, ProvisionCostas: Currency;
  ProvisionCapitalAnhoAnterior, ProvisionInteresAnhoAnterior, ProvisionCostasAnhoAnterior: Currency;
  PCapDiaAnt,PIntDiaAnt,PCosDiaAnt: Currency;
  PCapAcum,PIntAcum,PCosAcum: Currency;
  FechaAnterior,FechaAnhoAnterior : TDate;
  MovCapital,RecCapital,RevGCapital,GCapital: Currency;
  MovInteres,RecInteres,RevGInteres,GInteres: Currency;
  MovCostas,RecCostas,RevGCostas,GCostas: Currency;
  _iDiasMora,_iIdEstadoCol : Integer;
Begin
  With IBQuery1 Do
    Begin
      If Transaction.InTransaction Then
        Transaction.Rollback;
      Transaction.StartTransaction;

      // Busco Periodo Anterior
      IBSQL6.Close;
      IBSQL6.SQL.Clear;
      IBSQL6.SQL.Add('SELECT first 1 FECHA from "col$causacionescontrol" WHERE FECHA < :FECHA_CORTE order by FECHA DESC');
      IBSQL6.ParamByName('FECHA_CORTE').AsDate := EdFechaCorte.Date;
      IBSQL6.ExecQuery;
      FechaAnterior := IBSQL6.FieldByName('FECHA').AsDate;
      IBSQL6.Close;

      // Establezco periodo final a�o anterior
      FechaAnhoAnterior := EncodeDate(YearOf(EdFechaCorte.Date) - 1, 12, 30);

      // Insertar Colocaciones ya Saldadas con Provision, para calcular la recuperacion o reversion
      Close;
      SQL.Clear;
      SQL.Add('INSERT INTO "col$causaciondiariatmp" SELECT ');
      SQL.Add('cc.ID_AGENCIA, ');
      SQL.Add('cc.ID_COLOCACION, ');
      SQL.Add(QuotedStr(FormatDateTime('yyyy/mm/dd', EdFechaCorte.DateTime)) + ' AS FECHA_CORTE, ');
      SQL.Add('cc.ID_CLASIFICACION, ');
      SQL.Add('cc.ID_GARANTIA, ');
      SQL.Add('cc.ID_EDAD_ANT, ');
      SQL.Add('cc.ID_EDAD_ACT, ');
      SQL.Add('ID_ARRASTRE, ');
      SQL.Add('cc.ID_IDENTIFICACION, ');
      SQL.Add('cc.ID_PERSONA, ');
      SQL.Add('cc.FECHA_DESEMBOLSO, ');
      SQL.Add('cc.VALOR, ');
      SQL.Add('0 AS DEUDA, ');
      SQL.Add('cc.ID_TIPO_CUOTA, ');
      SQL.Add('cc.FECHA_CAPITAL, ');
      SQL.Add('cc.FECHA_INTERES, ');
      SQL.Add('cc.TIPOC_INTERES, ');
      SQL.Add('cc.AMORTIZA_CAPITAL, ');
      SQL.Add('cc.AMORTIZA_INTERES, ');
      SQL.Add('cc.TIPO_INTERES, ');
      SQL.Add('cc.TASA_INTERES_CORRIENTE, ');
      SQL.Add('cc.ID_INTERES, ');
      SQL.Add('cc.VALOR_ACTUAL_TASA, ');
      SQL.Add('cc.PUNTOS_INTERES, ');
      SQL.Add('cc.DIAS, ');
      SQL.Add('cc.TASA, ');
      SQL.Add('0 AS ANTICIPADOS, ');
      SQL.Add('0 AS CAUSADOS, ');
      SQL.Add('0 AS CONTINGENCIAS, ');
      SQL.Add('0 AS APORTES, ');
      SQL.Add('0 AS PCAPITAL, ');
      SQL.Add('0 AS PINTERES, ');
      SQL.Add('0 AS PCOSTAS, ');
      SQL.Add('0 AS CORTO_PL, ');
      SQL.Add('0 AS LARGO_PL, ');
      SQL.Add('0 AS COSTAS, ');
      SQL.Add('7 AS ID_ESTADO, ');
      SQL.Add('0 AS PCAPITAL_REC, ');
      SQL.Add('0 AS PINTERES_REC, ');
      SQL.Add('0 AS PCOSTAS_REC, ');
      SQL.Add('0 AS PCAPITAL_REV, ');
      SQL.Add('0 AS PINTERES_REV, ');
      SQL.Add('0 AS PCOSTAS_REV, ');
      SQL.Add('0 AS PCAPITAL_GAS, ');
      SQL.Add('0 AS PINTERES_GAS, ');
      SQL.Add('0 AS PCOSTAS_GAS, ');
      SQL.Add('0 AS VALOR_GARANTIA, ');
      SQL.Add('0 AS GARANTIA_DESCONTADA, ');
      SQL.Add('0 AS MOROSIDAD ');
      SQL.Add('FROM "col$causaciondiaria" cc ');
      SQL.Add('WHERE ');
      SQL.Add('(cc.PCAPITAL > 0 OR cc.PINTERES > 0 OR cc.PCOSTAS > 0) AND ');
      SQL.Add('cc.FECHA_CORTE = :FECHA_ANTERIOR AND ');
      SQL.Add('cc.ID_ESTADO < 3 AND ');
      SQL.Add('cc.ID_COLOCACION NOT IN (SELECT cc2.ID_COLOCACION FROM "col$causaciondiariatmp" cc2 WHERE cc2.FECHA_CORTE = :FECHA_ACTUAL) ');
      ParamByName('FECHA_ANTERIOR').AsDate := FechaAnterior;
      ParamByName('FECHA_ACTUAL').AsDate := EdFechaCorte.Date;
      ExecSQL;
      //Busco total de colocaciones a procesar

      Close;
      SQL.Clear;
      SQL.Add('select count(*) as TOTAL from "col$causaciondiariatmp" where FECHA_CORTE = :FECHA_CORTE');
      ParamByName('FECHA_CORTE').AsDate := EdFechaCorte.Date;
      Open;
      Total := FieldByName('TOTAL').AsInteger;

      frmPantallaProgreso  := TfrmProgreso.Create(Self);
      frmPantallaProgreso.Min := 0;
      frmPantallaProgreso.Max := Total;
      frmPantallaProgreso.Titulo := 'Calculando Provisi�n...';
      frmPantallaProgreso.Position := 0;
      frmPantallaProgreso.Ejecutar;

      Close;
      SQL.Clear;
      SQL.Add(
       'select * from "col$causaciondiariatmp" WHERE FECHA_CORTE = :FECHA_CORTE ORDER BY ID_IDENTIFICACION,ID_PERSONA,ID_ARRASTRE DESC,ID_AGENCIA,ID_COLOCACION'
      );
      ParamByName('FECHA_CORTE').AsDate := EdFechaCorte.Date;
      Try
        Open;
        frmPantallaProgreso.Titulo := 'Calculando Provisi�n ...'+'- Leyendo Colocaciones';
      Except
        MessageDlg('Error al Iniciar la Tabla Temporal para el Segundo proceso',mtError,[mbcancel],0);
        Transaction.Rollback;
        raise;
        Exit;
    End;
  //          end;

  While Not IBQuery1.Eof Do
    Begin
      frmPantallaProgreso.Position := IBQuery1.RecNo;
      frmPantallaProgreso.InfoLabel := IBQuery1.FieldByName('ID_PERSONA').AsString + '-' + IBQuery1.FieldByName('ID_COLOCACION').AsString;
      Application.ProcessMessages;


      ProvisionCapital := 0;
      ProvisionInteres := 0;
      ProvisionCostas := 0;
      PCapAcum := 0;
      PIntAcum := 0;
      PCosAcum := 0;
      MovCapital := 0;
      MovInteres := 0;
      MovCostas := 0;
      PCapDiaAnt := 0;
      PIntDiaAnt := 0;
      PCosDiaAnt := 0;
      RevGInteres := 0;
      RevGCapital := 0;
      RevGCostas := 0;
      RecCapital := 0;
      RecInteres := 0;
      RecCostas := 0;
      GCapital := 0;
      GInteres := 0;
      GCostas := 0;

      With IBSQL3 Do
        Begin
          Close;
          SQL.Clear;
          SQL.Add('SELECT A_CAPITAL,A_INTERESES,A_COSTAS from "col$porccausacion" where');
          SQL.Add('ID_CLASIFICACION = :ID_CLASIFICACION and ID_GARANTIA = :ID_GARANTIA and');
          SQL.Add('ID_EDAD = :ID_EDAD');
          ParamByName('ID_CLASIFICACION').AsInteger := IBQuery1.FieldByName('ID_CLASIFICACION').AsInteger;
          ParamByName('ID_GARANTIA').AsInteger := IBQuery1.fieldbyname('ID_GARANTIA').AsInteger;
          ParamByName('ID_EDAD').AsString := IBQuery1.FieldByName('ID_ARRASTRE').AsString;
          Try
            ExecQuery;
            frmPantallaProgreso.Titulo := 'Calculando Provisi�n ...'+'- Leyendo Porcentajes Provisi�n';
          Except
            MessageDlg('Error al Buscar Datos Para Aplicar Provisi�n',mtError,[mbcancel],0);
            frmPantallaProgreso.Cerrar;
            raise;
            Exit;
        End;
      // try

      frmPantallaProgreso.Titulo := 'Calculando Provision ...'+'- Calc Capital';
      If (IBQuery1.FieldByName('ID_ESTADO').AsInteger = 2) Then
        ProvisionCapital := SimpleRoundTo((IBQuery1.FieldByName('DEUDA').AsCurrency) * (FieldByName('A_CAPITAL').AsFloat / 100),0)
      Else
        ProvisionCapital := SimpleRoundTo((IBQuery1.FieldByName('DEUDA').AsCurrency - IBQuery1.FieldByName('GARANTIA_DESCONTADA').AsCurrency) * (FieldByName(
                            'A_CAPITAL').AsFloat / 100),0);
      If ProvisionCapital < 0 Then ProvisionCapital := 0;
      frmPantallaProgreso.Titulo := 'Calculando Provision ...'+'- Calc Interes';
      ProvisionInteres := SimpleRoundTo(IBQuery1.FieldByName('CAUSADOS').AsCurrency * (FieldByName('A_INTERESES').AsFloat / 100),0);
      frmPantallaProgreso.Titulo := 'Calculando Provision ...'+'- Calc Costas';
      ProvisionCostas := SimpleRoundTo(IBQuery1.FieldByName('COSTAS').AsCurrency * (FieldByName('A_COSTAS').AsFloat / 100),0);
    End;
  // with

  frmPantallaProgreso.Titulo := 'Calculando Provision A�o Anterior';
  IBSQL6.Close;
  IBSQL6.SQL.Clear;
  IBSQL6.SQL.Add('SELECT PCAPITAL, PINTERES, PCOSTAS FROM "col$causaciondiaria" ');
  IBSQL6.SQL.Add('WHERE ID_AGENCIA = :ID_AGENCIA AND ID_COLOCACION = :ID_COLOCACION AND FECHA_CORTE = :FECHA_CORTE');
  IBSQL6.ParamByName('ID_AGENCIA').AsInteger := IBQuery1.FieldByName('ID_AGENCIA').AsInteger;
  IBSQL6.ParamByName('ID_COLOCACION').AsString := IBQuery1.FieldByName('ID_COLOCACION').AsString;
  IBSQL6.ParamByName('FECHA_CORTE').AsDate := FechaAnhoAnterior;
  IBSQL6.ExecQuery;
  ProvisionCapitalAnhoAnterior := IBSQL6.FieldByName('PCAPITAL').AsCurrency;
  ProvisionInteresAnhoAnterior := IBSQL6.FieldByName('PINTERES').AsCurrency;
  ProvisionCostasAnhoAnterior  := IBSQL6.FieldByName('PCOSTAS').AsCurrency;

  If (FechaAnterior > FechaAnhoAnterior) Then
    Begin
      IBSQL6.Close;
      IBSQL6.SQL.Clear;
      IBSQL6.SQL.Add('SELECT SUM(PCAPITAL_REC) AS PCAPITAL_REC, SUM(PINTERES_REC) AS PINTERES_REC, SUM(PCOSTAS_REC) AS PCOSTAS_REC FROM "col$causaciondiaria" ')
      ;
      IBSQL6.SQL.Add('WHERE ID_AGENCIA = :ID_AGENCIA AND ID_COLOCACION = :ID_COLOCACION AND FECHA_CORTE BETWEEN :FECHA_INICIAL AND :FECHA_FINAL');
      IBSQL6.ParamByName('ID_AGENCIA').AsInteger := IBQuery1.FieldByName('ID_AGENCIA').AsInteger;
      IBSQL6.ParamByName('ID_COLOCACION').AsString := IBQuery1.FieldByName('ID_COLOCACION').AsString;
      IBSQL6.ParamByName('FECHA_INICIAL').AsDate := EncodeDate(YearOf(EdFechaCorte.Date), 1, 30);
      IBSQL6.ParamByName('FECHA_FINAL').AsDate := FechaAnterior;
      IBSQL6.ExecQuery;

      ProvisionCapitalAnhoAnterior := ProvisionCapitalAnhoAnterior - IBSQL6.FieldByName('PCAPITAL_REC').AsCurrency;
      ProvisionInteresAnhoAnterior := ProvisionInteresAnhoAnterior - IBSQL6.FieldByName('PINTERES_REC').AsCurrency;
      ProvisionCostasAnhoAnterior  := ProvisionCostasAnhoAnterior - IBSQL6.FieldByName('PCOSTAS_REC').AsCurrency;
    End;


  frmPantallaProgreso.Titulo := 'Calculando Provision ...'+'- Causacion Anterior';
  IBSQL6.Close;
  IBSQL6.SQL.Clear;
  IBSQL6.SQL.Add('select PCAPITAL, PINTERES, PCOSTAS from "col$causaciondiaria"');
  IBSQL6.SQL.Add('where ID_AGENCIA = :ID_AGENCIA AND ID_COLOCACION = :ID_COLOCACION AND FECHA_CORTE = :FECHA_CORTE');
  IBSQL6.ParamByName('ID_AGENCIA').AsInteger := IBQuery1.FieldByName('ID_AGENCIA').AsInteger;
  IBSQL6.ParamByName('ID_COLOCACION').AsString := IBQuery1.FieldByName('ID_COLOCACION').AsString;
  IBSQL6.ParamByName('FECHA_CORTE').AsDate := FechaAnterior;
  IBSQL6.ExecQuery;
  PCapAcum := IBSQL6.FieldByName('PCAPITAL').AsCurrency;
  PIntAcum := IBSQL6.FieldByName('PINTERES').AsCurrency;
  PCosAcum := IBSQL6.FieldByName('PCOSTAS').AsCurrency;
  IBSQL6.Close;

  frmPantallaProgreso.Titulo := 'Calculando Provision ...'+'- Capital Vs PCapAcum';
  If ProvisionCapital < PCapAcum Then
    // Caso Reversion o Recuperacion
    Begin
      MovCapital := PCapAcum - ProvisionCapital;
      // Revisar si se hace Recuperacion
      If (ProvisionCapitalAnhoAnterior > 0) Then
        Begin
          If (ProvisionCapitalAnhoAnterior > MovCapital) Then
            Begin
              RecCapital := MovCapital;
              MovCapital := 0;
            End
          Else
            Begin
              RecCapital := ProvisionCapitalAnhoAnterior;
              MovCapital := MovCapital - RecCapital;
            End;
        End;
      // Reviso si hay reversi{on
      If (MovCapital > 0) Then
        Begin
          RevGCapital := MovCapital;
        End;
    End
  Else
    Begin
      MovCapital := ProvisionCapital - PCapAcum;
      GCapital := MovCapital;
    End;

  frmPantallaProgreso.Titulo := 'Calculando Provision ...'+'- Interes Vs PIntAcum';
  If ProvisionInteres < PIntAcum Then
    // Caso Reversion o Recuperacion
    Begin
      MovInteres := PIntAcum - ProvisionInteres;
      // Revisar si se hace Recuperacion
      If (ProvisionInteresAnhoAnterior > 0) Then
        Begin
          If (ProvisionInteresAnhoAnterior > MovInteres) Then
            Begin
              RecInteres := MovInteres;
              MovInteres := 0;
            End
          Else
            Begin
              RecInteres := ProvisionInteresAnhoAnterior;
              MovInteres := MovInteres - RecInteres;
            End;
        End;
      // Reviso si hay reversion
      If (MovInteres > 0) Then
        Begin
          RevGInteres := MovInteres;
        End;
    End
  Else
    Begin
      MovInteres := ProvisionInteres - PIntAcum;
      GInteres := MovInteres;
    End;

  frmPantallaProgreso.Titulo := 'Calculando Provision ...'+'- Costas Vs PCosAcum';
  If ProvisionCostas < PCosAcum Then
    // Caso Reversion o Recuperacion
    Begin
      MovCostas := PCosAcum - ProvisionCostas;
      // Revisar si se hace Recuperacion
      If (ProvisionCostasAnhoAnterior > 0) Then
        Begin
          If (ProvisionCostasAnhoAnterior > MovCostas) Then
            Begin
              RecCostas := MovCostas;
              MovCostas := 0;
            End
          Else
            Begin
              RecCostas := ProvisionCostasAnhoAnterior;
              MovCostas := MovCostas - RecCostas;
            End;
        End;
      // Reviso si hay reversi{on
      If (MovCostas > 0) Then
        Begin
          RevGCostas := MovCostas;
        End;
    End
  Else
    Begin
      MovCostas := ProvisionCostas - PCosAcum;
      GCostas := MovCostas;
    End;

  // Actualizar Provision

  With IBSQL3 Do
    Begin
      Close;
      SQL.Clear;
      SQL.Add('update "col$causaciondiariatmp" SET ');
      SQL.Add('PCAPITAL = :PCAPITAL, PINTERES = :PINTERES, PCOSTAS = :PCOSTAS,');
      SQL.Add('PCAPITAL_REC = :PCAPITAL_REC, PINTERES_REC = :PINTERES_REC, PCOSTAS_REC = :PCOSTAS_REC,');
      SQL.Add('PCAPITAL_REV = :PCAPITAL_REV, PINTERES_REV = :PINTERES_REV, PCOSTAS_REV = :PCOSTAS_REV,');
      SQL.Add('PCAPITAL_GAS = :PCAPITAL_GAS, PINTERES_GAS = :PINTERES_GAS, PCOSTAS_GAS = :PCOSTAS_GAS');
      SQL.Add('where ID_AGENCIA = :ID_AGENCIA and ID_COLOCACION = :ID_COLOCACION AND FECHA_CORTE = :FECHA_CORTE');
      ParamByName('ID_AGENCIA').AsInteger := IBQuery1.fieldbyname('ID_AGENCIA').AsInteger;
      ParamByName('ID_COLOCACION').AsString := IBQuery1.FieldByName('ID_COLOCACION').AsString;
      ParamByName('PCAPITAL').AsCurrency := ProvisionCapital;
      ParamByName('PINTERES').AsCurrency := ProvisionInteres;
      ParamByName('PCOSTAS').AsCurrency := ProvisionCostas;
      ParamByName('PCAPITAL_REC').AsCurrency := RecCapital;
      ParamByName('PINTERES_REC').AsCurrency := RecInteres;
      ParamByName('PCOSTAS_REC').AsCurrency := RecCostas;
      ParamByName('PCAPITAL_REV').AsCurrency := RevGCapital;
      ParamByName('PINTERES_REV').AsCurrency := RevGInteres;
      ParamByName('PCOSTAS_REV').AsCurrency := RevGCostas;
      ParamByName('PCAPITAL_GAS').AsCurrency := GCapital;
      ParamByName('PINTERES_GAS').AsCurrency := GInteres;
      ParamByName('PCOSTAS_GAS').AsCurrency := GCostas;
      ParamByName('FECHA_CORTE').AsDate := EdFechaCorte.Date;
      Try
        ExecQuery;
      Except
        //frmPantallaProgreso.Cerrar;
        //MessageDlg('Error Actualizando Tabla Temporal',mtError,[mbcancel],0);
        //Transaction.Rollback;
        //raise;
        //Exit;
    End;
End;
// with
IBQuery1.Next;
End;
//fin While Principal
End;
//fin with Principal IBQuery1
frmPantallaProgreso.Cerrar;
IBSQL3.Transaction.Commit;
// MessageDlg('Provision Terminada con Exito!!',mtInformation,[mbok],0);
// Fin Actualizacion
End;

Procedure TfrmCausacionCarteraDiaria.Button1Click(Sender: TObject);

Var 
  vFechaGracia: TDate;
  DiasMora: Integer;
  Dia: Word;
  NFecha: TDateTime;
  Total: Integer;
Begin
  frmPantallaProgreso := TfrmProgreso.Create(Self);
  With IBQuery1 Do
    Begin
      If Transaction.InTransaction Then Transaction.Rollback;
      Transaction.StartTransaction;
      Close;
      SQL.Clear;
      SQL.Add('select count(*) as TOTAL from "col$causaciondiariatmp"');
      Try
        Open;
      Except
        Transaction.Rollback;
        frmPantallaProgreso.Cerrar;
        raise;
        Exit;
    End;

  Total := FieldByName('TOTAL').AsInteger;

  Close;
  SQL.Clear;
  SQL.Add('select * from "col$causaciondiariatmp"');
  Try
    Open;
  Except
    Transaction.Rollback;
    frmPantallaProgreso.Cerrar;
    raise;
    Exit;
End;
End;
frmPantallaProgreso.Min := 0;
frmPantallaProgreso.Max := Total;
frmPantallaProgreso.Position := 0;
frmPantallaProgreso.InfoLabel := 'Procesando Anticipados Causaci�n de Colocaciones';
While Not IBQuery1.Eof Do
  Begin
    frmPantallaProgreso.Position := IBQuery1.RecNo;
    Application.ProcessMessages;
    FechaInicial := IBQuery1.FieldByName('FECHA_INTERES').AsDateTime;
    FechaFinal := EdFechaCorte.Date;

    IBSQL3.Close;
    IBSQL3.SQL.Clear;
    IBSQL3.SQL.Add('select VALOR_MINIMO from "gen$minimos" WHERE ID_MINIMO = 33');
    IBSQL3.ExecQuery;
    vFechaGracia := DateOf(IBSQL3.FieldByName('VALOR_MINIMO').AsInteger);

    If IBQuery1.FieldByName('ID_ESTADO').AsInteger = 2 Then
      Dias := DiasEntreFechas(IncDay(FechaInicial),FechaFinal,IBQuery1.FieldByName('FECHA_DESEMBOLSO').AsDateTime)
    Else
      Begin
        Dia := DayOf(IBQuery1.FieldByName('FECHA_DESEMBOLSO').AsDateTime);
        If TryEncodeDate(YearOf(FechaInicial),MonthOf(FechaInicial),Dia,NFecha) Then
          FechaInicial := NFecha;
        Dias := DiasEntreFechas(IncDay(FechaInicial),FechaFinal,IBQuery1.FieldByName('FECHA_DESEMBOLSO').AsDateTime);
      End;

    // Buscar Tasa Anticipada
    If Dias < 0 Then
      Begin
        TasaAnt := BuscoTasaAnt(IBQuery1.FieldByName('ID_AGENCIA').AsInteger,IBQuery1.FieldByName('ID_COLOCACION').AsString,IBQuery1.FieldByName('FECHA_INTERES'
                   ).AsDateTime);
        If TasaAnt = 0 Then
          Begin
            Case IBQuery1.FieldByName('ID_INTERES').AsInteger Of 
              0 :
                  Begin
                    TasaAnt := BuscoTasaEfectivaMaxima1(IBQVarios,EdFechaCorte.Date,IBQuery1.FieldByName('ID_CLASIFICACION').AsInteger,'A');
                    If IBQuery1.FieldByName('TASA_INTERES_CORRIENTE').AsFloat < TasaAnt Then
                      TasaAnt := IBQuery1.FieldByName('TASA_INTERES_CORRIENTE').AsFloat;
                  End;

              1 : TasaAnt := BuscoTasaEfectivaMaximaDtfNueva(IBQVarios,EdFechaCorte.Date);

              2 : TasaAnt := BuscoTasaEfectivaMaximaIPCNueva(IBQVarios);
            End;
            If IBQuery1.FieldByName('TIPOC_INTERES').AsString = 'A' Then
              TasaAnt := TasaNominalAnticipada(TasaAnt,IBQuery1.fieldbyname('AMORTIZA_INTERES').AsInteger)
            Else
              TasaAnt := TasaNominalVencida(TasaAnt,IBQuery1.FieldByName('AMORTIZA_INTERES').AsInteger);
          End;
        // Calculo Intereses
        Anticipados := SimpleRoundTo(((IBQuery1.FieldByName('DEUDA').AsCurrency * (TasaAnt/100)) / 360 ) * -Dias,0);
        With IBSQL4 Do
          Begin
            Close;
            SQL.Clear;
            SQL.Add('update "col$causaciondiariatmp" set DIAS = :DIAS, ANTICIPADOS = :ANTICIPADOS');
            SQL.Add('WHERE ID_AGENCIA = :ID_AGENCIA AND ID_COLOCACION = :ID_COLOCACION');
            ParamByName('ID_AGENCIA').AsInteger := IBQuery1.FieldByName('ID_AGENCIA').AsInteger;
            ParamByName('ID_COLOCACION').AsString := IBQuery1.FieldByName('ID_COLOCACION').AsString;
            ParamByName('DIAS').AsInteger := Dias;
            ParamByName('ANTICIPADOS').AsCurrency := Anticipados;
            Try
              ExecQuery;
            Except
              MessageDlg('Error al Guardar Datos en la Temporal',mtError,[mbcancel],0);
              frmProgreso.Cerrar;
              Transaction.Rollback;
              raise;
              Exit;
          End;
      End;
  End;
// Fin Buqueda de Tasa Anticipada
Anticipados := 0;
// Continuar ciclo while
IBQuery1.Next;
End;
// while
IBQuery1.Transaction.Commit;
IBQuery1.Close;
MessageDlg('Proceso Anticipados Terminado con Exito',mtinformation,[mbok],0);

End;

Procedure TfrmCausacionCarteraDiaria.btnRecalcularClick(Sender: TObject);

Var 
  DiasMora: Integer;
Begin
  frmPantallaProgreso := TfrmProgreso.Create(Self);
  FechaFinal := EdFechaCorte.Date;
  With IBQuery1 Do
    Begin
      Close;
      SQL.Clear;
      SQL.Add(
'SELECT c.ID_COLOCACION, c.ID_CLASIFICACION, c.ID_GARANTIA, c.AMORTIZA_INTERES, t.ID_ESTADO_COLOCACION, t.ID_LINEA, c.FECHA_INTERES, c.FECHA_DESEMBOLSO, t.DIAS_PAGO, c.TIPOC_INTERES FROM "col$causaciondiariatmp" c '
      );
      SQL.Add('INNER JOIN "col$colocacion" t ON c.ID_COLOCACION = t.ID_COLOCACION WHERE c.FECHA_CORTE = :FECHA_CORTE');
      ParamByName('FECHA_CORTE').AsDate := EdFechaCorte.Date;
      Open;
      Last;
      First;

      frmPantallaProgreso.Min := 0;
      frmPantallaProgreso.Max := RecordCount;
      frmPantallaProgreso.Position := 0;
      frmPantallaProgreso.Show;

      While Not Eof Do
        Begin
          frmPantallaProgreso.Position := RecNo;
          Application.ProcessMessages;
          Dias := DiasEntre(IncDay(IBQuery1.FieldByName('FECHA_INTERES').AsDateTime),FechaFinal);
          //if IBQuery1.FieldByName('TIPOC_INTERES').AsString = 'V' then
          //begin
          //  Dias := Dias + IBQuery1.FieldByName('AMORTIZA_INTERES').AsInteger;
          //end;
          DiasMora := Dias - IBQuery1.FieldByName('AMORTIZA_INTERES').AsInteger;


{
                ObtenerDiasMoraCausacion(IBQuery1.FieldByName('ID_ESTADO_COLOCACION').AsInteger,
                                                     IBQuery1.FieldByName('ID_LINEA').AsInteger,
                                                     IBQuery1.FieldByName('AMORTIZA_INTERES').AsInteger,
                                                     IBQuery1.FieldByName('DIAS_PAGO').AsInteger,
                                                     IBQuery1.FieldByName('FECHA_DESEMBOLSO').AsDateTime,
                                                     IBQuery1.FieldByName('FECHA_INTERES').AsDateTime,
                                                     EdFechaCorte.Date,
                                                     IBQuery1.FieldByName('TIPOC_INTERES').AsString );
                }

          If Dias < 1 Then Dias := 0;
          DiasCorrientes := Dias;

          // Evaluar Edad Y Dias de Mora
          //if IBQuery1.FieldByName('ID_ESTADO_COLOCACION').AsInteger = 2 then

//    DiasMora := DiasEntreFechas(IncDay(IBQuery1.FieldByName('FECHA_INTERES').AsDateTime),FechaFinal,IBQuery1.FieldByName('FECHA_DESEMBOLSO').AsDateTime + IBQuery1.FieldByName('DIAS_PAGO').AsInteger);

          If DiasMora < 1 Then DiasMora := 0;
          Edad := EvaluarEdad(IBQuery1.FieldByName('ID_CLASIFICACION').AsInteger,
                  IBQuery1.FieldByName('ID_GARANTIA').AsInteger,DiasMora);


          IBSQL4.Close;
          IBSQL4.SQL.Clear;
          IBSQL4.SQL.Add(
'UPDATE "col$causaciondiariatmp" c SET c.DIAS = :DIAS, c.MOROSIDAD = :MOROSIDAD , c.ID_EDAD_ACT = :EDAD, c.ID_ARRASTRE = :EDAD WHERE c.ID_COLOCACION = :ID_COLOCACION'
          );
          IBSQL4.ParamByName('ID_COLOCACION').AsString := IBQuery1.FieldByName('ID_COLOCACION').AsString;
          IBSQL4.ParamByName('DIAS').AsInteger := DiasCorrientes;
          IBSQL4.ParamByName('MOROSIDAD').AsInteger := DiasMora;
          IBSQL4.ParamByName('EDAD').AsString := Edad;
          IBSQL4.ExecQuery;
          IBSQL4.Transaction.CommitRetaining;

          Next;
        End;
      frmPantallaProgreso.Cerrar;
    End;
  SegundoPasoCausacion;
  GarantiasReales;
  CalculoProvision;
  TercerPasoCausacion;
End;

Procedure TfrmCausacionCarteraDiaria.btnReNotaClick(Sender: TObject);

Var I: Integer;
  TotalDebito: Currency;
  TotalCredito: Currency;
  ARecord: PList;
  FechaComp: TDate;
  idauxiliar: Integer;
Begin
  Try
    Lista := Tlist.Create;
  Finally
    Lista.Clear;
End;

// PrimerPC;   // verificarCuadre('Corto y Largo Plazo');
SegundoPC;
// verificarCuadre('Ajustar Calificacion');
TercerPC;
// verificarCuadre('Causacion de Intereses');
CuartoPC;
// verificarCuadre('Provision de Capital de Colocaciones');
QuintoPC;
// verificarCuadre('Provision de Interes de Colocaciones y Costas Judiciales');
SextoPC;
// verificarCuadre('Provision General');
// SeptimoPC;  // verificarCuadre('Traslado de Intereses Anticipados');
// OctavoPC;   // verificarCuadre('Contingencias');


Consecutivo := StrToInt(EdComprobante.Caption);
FechaComp := EdFechaCorte.Date;

TotalDebito := 0;
TotalCredito := 0;

For I := 0 To Lista.Count - 1 Do
  Begin
    ARecord := Lista.Items[i];
    TotalDebito := TotalDebito + arecord^.debito;
    TotalCredito := TotalCredito + arecord^.credito;
  End;

With IBSQL1 Do
  Begin
    If Transaction.InTransaction Then
      Transaction.Rollback;
    Transaction.StartTransaction;
    Close;
    sql.Clear;
    sql.Add('UPDATE "con$comprobante" SET ');
    sql.Add('"con$comprobante"."TOTAL_DEBITO" = :TOTAL_DEBITO, "con$comprobante"."TOTAL_CREDITO" = :TOTAL_CREDITO');
    sql.Add('WHERE TIPO_COMPROBANTE = :TIPO_COMPROBANTE and ID_COMPROBANTE = :ID_COMPROBANTE');

    ParamByName('ID_COMPROBANTE').AsInteger := Consecutivo;
    ParamByName('TIPO_COMPROBANTE').AsInteger := 1;
    ParamByName('TOTAL_DEBITO').AsCurrency  := TotalDebito;
    ParamByName('TOTAL_CREDITO').AsCurrency  := TotalCredito;
    ExecQuery;

    SQL.Clear;
    SQL.Add('DELETE FROM "con$auxiliar" WHERE TIPO_COMPROBANTE = :TIPO_COMPROBANTE and ID_COMPROBANTE = :ID_COMPROBANTE');
    ParamByName('ID_COMPROBANTE').AsInteger := Consecutivo;
    ParamByName('TIPO_COMPROBANTE').AsInteger := 1;
    ExecQuery;

    If Lista.Count > 0 Then
      For I := 0 To Lista.Count -1 Do
        Begin
          Close;
          SQL.Clear;
          SQL.Add('insert into "con$auxiliar" values (');
          SQL.Add(':"ID_COMPROBANTE",:"ID_AGENCIA",:"FECHA",:"CODIGO",:"DEBITO",');
          SQL.Add(':"CREDITO",:"ID_CUENTA",:"ID_COLOCACION",:"ID_IDENTIFICACION",');
          SQL.Add(':"ID_PERSONA",:"MONTO_RETENCION",:"TASA_RETENCION",:"ESTADOAUX",:"TIPO_COMPROBANTE",:"ID",:"ID_CLASE_OPERACION")');
          ARecord := Lista.Items[I];
          idauxiliar :=  ObtenerConsecutivoAuxiliar(IBSQLAux);
          ParamByName('ID_COMPROBANTE').AsInteger := Consecutivo;
          ParamByName('ID_AGENCIA').AsInteger := Arecord^.centro;
          ParamByName('FECHA').AsDate := FechaComp;
          ParamByName('CODIGO').AsString := Arecord^.codigo;
          ParamByName('DEBITO').AsCurrency := Arecord^.debito;
          ParamByName('CREDITO').AsCurrency := Arecord^.credito;
          ParamByName('ID_CUENTA').Clear;
          ParamByName('ID_COLOCACION').Clear;
          ParamByName('ID_IDENTIFICACION').AsInteger := 0;
          ParamByName('ID_PERSONA').Clear;
          ParamByName('MONTO_RETENCION').AsCurrency := 0;
          ParamByName('TASA_RETENCION').AsFloat := 0;
          ParamByName('ESTADOAUX').AsString := 'O';
          ParamByName('TIPO_COMPROBANTE').AsInteger := 1;
          ParamByName('ID').AsInteger := idauxiliar;
          ParamByName('ID_CLASE_OPERACION').Clear;
          ExecQuery;

          Close;
          SQL.Clear;
          SQL.Add(
'INSERT INTO "con$auxiliarext" (ID, DETALLE, CHEQUE,ID_COMPROBANTE, TIPO_COMPROBANTE,ID_AGENCIA) VALUES (:ID,:DETALLE,:CHEQUE,:ID_COMPROBANTE,:TIPO_COMPROBANTE,:ID_AGENCIA)'
          );
          ParamByName('ID').AsInteger := idauxiliar;
          ParamByName('DETALLE').AsString := 'AJUSTE CALIFICACION, CAUSACION Y PROVISION DE CARTERA EN LA FECHA';
          ParamByName('CHEQUE').AsString := '';
          ParamByName('TIPO_COMPROBANTE').AsInteger := 1;
          ParamByName('ID_COMPROBANTE').AsInteger := Consecutivo;
          ParamByName('ID_AGENCIA').AsInteger := Agencia;
          ExecQuery;

        End;
    Try
      Transaction.Commit;
    Except
      Transaction.Rollback;
      raise;
      Exit;
  End;
End;


End;

Procedure TfrmCausacionCarteraDiaria.btnRecProvisionClick(Sender: TObject);

Var 
  Deuda, ProvisionCapital, ProvisionInteres, ProvisionCostas: Currency;
  ProvisionCapitalAnhoAnterior, ProvisionInteresAnhoAnterior, ProvisionCostasAnhoAnterior: Currency;
  PCapDiaAnt,PIntDiaAnt,PCosDiaAnt: Currency;
  PCapAcum,PIntAcum,PCosAcum: Currency;
  FechaAnterior,FechaAnhoAnterior : TDate;
  MovCapital,RecCapital,RevGCapital,GCapital: Currency;
  MovInteres,RecInteres,RevGInteres,GInteres: Currency;
  MovCostas,RecCostas,RevGCostas,GCostas: Currency;
  _iDiasMora,_iIdEstadoCol : Integer;
Begin
  With IBQuery1 Do
    Begin
      If Transaction.InTransaction Then
        Transaction.Rollback;
      Transaction.StartTransaction;

      // Busco Periodo Anterior
      IBSQL6.Close;
      IBSQL6.SQL.Clear;
      IBSQL6.SQL.Add('SELECT first 1 FECHA from "col$causacionescontrol" WHERE FECHA < :FECHA_CORTE order by FECHA DESC');
      IBSQL6.ParamByName('FECHA_CORTE').AsDate := EdFechaCorte.Date;
      IBSQL6.ExecQuery;
      FechaAnterior := IBSQL6.FieldByName('FECHA').AsDate;
      IBSQL6.Close;

      // Establezco periodo final a�o anterior
      FechaAnhoAnterior := EncodeDate(YearOf(EdFechaCorte.Date) - 1, 12, 30);
      //Busco total de colocaciones a procesar

      Close;
      SQL.Clear;
      SQL.Add('select count(*) as TOTAL from "col$causaciondiaria" where FECHA_CORTE = :FECHA_CORTE');
      ParamByName('FECHA_CORTE').AsDate := EdFechaCorte.Date;
      Open;
      Total := FieldByName('TOTAL').AsInteger;

      frmPantallaProgreso  := TfrmProgreso.Create(Self);
      frmPantallaProgreso.Min := 0;
      frmPantallaProgreso.Max := Total;
      frmPantallaProgreso.Titulo := 'Calculando Provisi�n...';
      frmPantallaProgreso.Position := 0;
      frmPantallaProgreso.Ejecutar;

      Close;
      SQL.Clear;
      SQL.Add(
          'select * from "col$causaciondiaria" WHERE FECHA_CORTE = :FECHA_CORTE ORDER BY ID_IDENTIFICACION,ID_PERSONA,ID_ARRASTRE DESC,ID_AGENCIA,ID_COLOCACION'
      );
      ParamByName('FECHA_CORTE').AsDate := EdFechaCorte.Date;
      Try
        Open;
        frmPantallaProgreso.Titulo := 'Calculando Provisi�n ...'+'- Leyendo Colocaciones';
      Except
        MessageDlg('Error al Iniciar la Tabla Temporal para el Segundo proceso',mtError,[mbcancel],0);
        Transaction.Rollback;
        raise;
        Exit;
    End;
  //          end;

  While Not IBQuery1.Eof Do
    Begin
      frmPantallaProgreso.Position := IBQuery1.RecNo;
      frmPantallaProgreso.InfoLabel := IBQuery1.FieldByName('ID_PERSONA').AsString + '-' + IBQuery1.FieldByName('ID_COLOCACION').AsString;
      Application.ProcessMessages;


      ProvisionCapital := 0;
      ProvisionInteres := 0;
      ProvisionCostas := 0;
      PCapAcum := 0;
      PIntAcum := 0;
      PCosAcum := 0;
      MovCapital := 0;
      MovInteres := 0;
      MovCostas := 0;
      PCapDiaAnt := 0;
      PIntDiaAnt := 0;
      PCosDiaAnt := 0;
      RevGInteres := 0;
      RevGCapital := 0;
      RevGCostas := 0;
      RecCapital := 0;
      RecInteres := 0;
      RecCostas := 0;
      GCapital := 0;
      GInteres := 0;
      GCostas := 0;

      With IBSQL3 Do
        Begin
          Close;
          SQL.Clear;
          SQL.Add('SELECT A_CAPITAL,A_INTERESES,A_COSTAS from "col$porccausacion" where');
          SQL.Add('ID_CLASIFICACION = :ID_CLASIFICACION and ID_GARANTIA = :ID_GARANTIA and');
          SQL.Add('ID_EDAD = :ID_EDAD');
          ParamByName('ID_CLASIFICACION').AsInteger := IBQuery1.FieldByName('ID_CLASIFICACION').AsInteger;
          ParamByName('ID_GARANTIA').AsInteger := IBQuery1.fieldbyname('ID_GARANTIA').AsInteger;
          ParamByName('ID_EDAD').AsString := IBQuery1.FieldByName('ID_ARRASTRE').AsString;
          Try
            ExecQuery;
            frmPantallaProgreso.Titulo := 'Calculando Provisi�n ...'+'- Leyendo Porcentajes Provisi�n';
          Except
            MessageDlg('Error al Buscar Datos Para Aplicar Provisi�n',mtError,[mbcancel],0);
            frmPantallaProgreso.Cerrar;
            raise;
            Exit;
        End;
      // try

      frmPantallaProgreso.Titulo := 'Calculando Provision ...'+'- Calc Capital';
      If (IBQuery1.FieldByName('ID_ESTADO').AsInteger = 2) Then
        ProvisionCapital := SimpleRoundTo((IBQuery1.FieldByName('DEUDA').AsCurrency) * (FieldByName('A_CAPITAL').AsFloat / 100),0)
      Else
        ProvisionCapital := SimpleRoundTo((IBQuery1.FieldByName('DEUDA').AsCurrency - IBQuery1.FieldByName('GARANTIA_DESCONTADA').AsCurrency) * (FieldByName(
                            'A_CAPITAL').AsFloat / 100),0);
      If ProvisionCapital < 0 Then ProvisionCapital := 0;
      frmPantallaProgreso.Titulo := 'Calculando Provision ...'+'- Calc Interes';
      ProvisionInteres := SimpleRoundTo(IBQuery1.FieldByName('CAUSADOS').AsCurrency * (FieldByName('A_INTERESES').AsFloat / 100),0);
      frmPantallaProgreso.Titulo := 'Calculando Provision ...'+'- Calc Costas';
      ProvisionCostas := SimpleRoundTo(IBQuery1.FieldByName('COSTAS').AsCurrency * (FieldByName('A_COSTAS').AsFloat / 100),0);
    End;
  // with

  frmPantallaProgreso.Titulo := 'Calculando Provision A�o Anterior';
  IBSQL6.Close;
  IBSQL6.SQL.Clear;
  IBSQL6.SQL.Add('SELECT PCAPITAL, PINTERES, PCOSTAS FROM "col$causaciondiaria" ');
  IBSQL6.SQL.Add('WHERE ID_AGENCIA = :ID_AGENCIA AND ID_COLOCACION = :ID_COLOCACION AND FECHA_CORTE = :FECHA_CORTE');
  IBSQL6.ParamByName('ID_AGENCIA').AsInteger := IBQuery1.FieldByName('ID_AGENCIA').AsInteger;
  IBSQL6.ParamByName('ID_COLOCACION').AsString := IBQuery1.FieldByName('ID_COLOCACION').AsString;
  IBSQL6.ParamByName('FECHA_CORTE').AsDate := FechaAnhoAnterior;
  IBSQL6.ExecQuery;
  ProvisionCapitalAnhoAnterior := IBSQL6.FieldByName('PCAPITAL').AsCurrency;
  ProvisionInteresAnhoAnterior := IBSQL6.FieldByName('PINTERES').AsCurrency;
  ProvisionCostasAnhoAnterior  := IBSQL6.FieldByName('PCOSTAS').AsCurrency;

  If (FechaAnterior > FechaAnhoAnterior) Then
    Begin
      IBSQL6.Close;
      IBSQL6.SQL.Clear;
      IBSQL6.SQL.Add('SELECT SUM(PCAPITAL_REC) AS PCAPITAL_REC, SUM(PINTERES_REC) AS PINTERES_REC, SUM(PCOSTAS_REC) AS PCOSTAS_REC FROM "col$causaciondiaria" ')
      ;
      IBSQL6.SQL.Add('WHERE ID_AGENCIA = :ID_AGENCIA AND ID_COLOCACION = :ID_COLOCACION AND FECHA_CORTE BETWEEN :FECHA_INICIAL AND :FECHA_FINAL');
      IBSQL6.ParamByName('ID_AGENCIA').AsInteger := IBQuery1.FieldByName('ID_AGENCIA').AsInteger;
      IBSQL6.ParamByName('ID_COLOCACION').AsString := IBQuery1.FieldByName('ID_COLOCACION').AsString;
      IBSQL6.ParamByName('FECHA_INICIAL').AsDate := EncodeDate(YearOf(EdFechaCorte.Date), 1, 30);
      IBSQL6.ParamByName('FECHA_FINAL').AsDate := FechaAnterior;
      IBSQL6.ExecQuery;

      ProvisionCapitalAnhoAnterior := ProvisionCapitalAnhoAnterior - IBSQL6.FieldByName('PCAPITAL_REC').AsCurrency;
      ProvisionInteresAnhoAnterior := ProvisionInteresAnhoAnterior - IBSQL6.FieldByName('PINTERES_REC').AsCurrency;
      ProvisionCostasAnhoAnterior  := ProvisionCostasAnhoAnterior - IBSQL6.FieldByName('PCOSTAS_REC').AsCurrency;
    End;


  frmPantallaProgreso.Titulo := 'Calculando Provision ...'+'- Causacion Anterior';
  IBSQL6.Close;
  IBSQL6.SQL.Clear;
  IBSQL6.SQL.Add('select PCAPITAL, PINTERES, PCOSTAS from "col$causaciondiaria"');
  IBSQL6.SQL.Add('where ID_AGENCIA = :ID_AGENCIA AND ID_COLOCACION = :ID_COLOCACION AND FECHA_CORTE = :FECHA_CORTE');
  IBSQL6.ParamByName('ID_AGENCIA').AsInteger := IBQuery1.FieldByName('ID_AGENCIA').AsInteger;
  IBSQL6.ParamByName('ID_COLOCACION').AsString := IBQuery1.FieldByName('ID_COLOCACION').AsString;
  IBSQL6.ParamByName('FECHA_CORTE').AsDate := FechaAnterior;
  IBSQL6.ExecQuery;
  PCapAcum := IBSQL6.FieldByName('PCAPITAL').AsCurrency;
  PIntAcum := IBSQL6.FieldByName('PINTERES').AsCurrency;
  PCosAcum := IBSQL6.FieldByName('PCOSTAS').AsCurrency;
  IBSQL6.Close;

  frmPantallaProgreso.Titulo := 'Calculando Provision ...'+'- Capital Vs PCapAcum';
  If ProvisionCapital < PCapAcum Then
    // Caso Reversion o Recuperacion
    Begin
      MovCapital := PCapAcum - ProvisionCapital;
      // Revisar si se hace Recuperacion
      If (ProvisionCapitalAnhoAnterior > 0) Then
        Begin
          If (ProvisionCapitalAnhoAnterior > MovCapital) Then
            Begin
              RecCapital := MovCapital;
              MovCapital := 0;
            End
          Else
            Begin
              RecCapital := ProvisionCapitalAnhoAnterior;
              MovCapital := MovCapital - RecCapital;
            End;
        End;
      // Reviso si hay reversi{on
      If (MovCapital > 0) Then
        Begin
          RevGCapital := MovCapital;
        End;
    End
  Else
    Begin
      MovCapital := ProvisionCapital - PCapAcum;
      GCapital := MovCapital;
    End;

  frmPantallaProgreso.Titulo := 'Calculando Provision ...'+'- Interes Vs PIntAcum';
  If ProvisionInteres < PIntAcum Then
    // Caso Reversion o Recuperacion
    Begin
      MovInteres := PIntAcum - ProvisionInteres;
      // Revisar si se hace Recuperacion
      If (ProvisionInteresAnhoAnterior > 0) Then
        Begin
          If (ProvisionInteresAnhoAnterior > MovInteres) Then
            Begin
              RecInteres := MovInteres;
              MovInteres := 0;
            End
          Else
            Begin
              RecInteres := ProvisionInteresAnhoAnterior;
              MovInteres := MovInteres - RecInteres;
            End;
        End;
      // Reviso si hay reversion
      If (MovInteres > 0) Then
        Begin
          RevGInteres := MovInteres;
        End;
    End
  Else
    Begin
      MovInteres := ProvisionInteres - PIntAcum;
      GInteres := MovInteres;
    End;

  frmPantallaProgreso.Titulo := 'Calculando Provision ...'+'- Costas Vs PCosAcum';
  If ProvisionCostas < PCosAcum Then
    // Caso Reversion o Recuperacion
    Begin
      MovCostas := PCosAcum - ProvisionCostas;
      // Revisar si se hace Recuperacion
      If (ProvisionCostasAnhoAnterior > 0) Then
        Begin
          If (ProvisionCostasAnhoAnterior > MovCostas) Then
            Begin
              RecCostas := MovCostas;
              MovCostas := 0;
            End
          Else
            Begin
              RecCostas := ProvisionCostasAnhoAnterior;
              MovCostas := MovCostas - RecCostas;
            End;
        End;
      // Reviso si hay reversi{on
      If (MovCostas > 0) Then
        Begin
          RevGCostas := MovCostas;
        End;
    End
  Else
    Begin
      MovCostas := ProvisionCostas - PCosAcum;
      GCostas := MovCostas;
    End;

  // Actualizar Provision

  With IBSQL3 Do
    Begin
      Close;
      SQL.Clear;
      SQL.Add('update "col$causaciondiaria" SET ');
      SQL.Add('PCAPITAL = :PCAPITAL, PINTERES = :PINTERES, PCOSTAS = :PCOSTAS,');
      SQL.Add('PCAPITAL_REC = :PCAPITAL_REC, PINTERES_REC = :PINTERES_REC, PCOSTAS_REC = :PCOSTAS_REC,');
      SQL.Add('PCAPITAL_REV = :PCAPITAL_REV, PINTERES_REV = :PINTERES_REV, PCOSTAS_REV = :PCOSTAS_REV,');
      SQL.Add('PCAPITAL_GAS = :PCAPITAL_GAS, PINTERES_GAS = :PINTERES_GAS, PCOSTAS_GAS = :PCOSTAS_GAS');
      SQL.Add('where ID_AGENCIA = :ID_AGENCIA and ID_COLOCACION = :ID_COLOCACION AND FECHA_CORTE = :FECHA_CORTE');
      ParamByName('ID_AGENCIA').AsInteger := IBQuery1.fieldbyname('ID_AGENCIA').AsInteger;
      ParamByName('ID_COLOCACION').AsString := IBQuery1.FieldByName('ID_COLOCACION').AsString;
      ParamByName('PCAPITAL').AsCurrency := ProvisionCapital;
      ParamByName('PINTERES').AsCurrency := ProvisionInteres;
      ParamByName('PCOSTAS').AsCurrency := ProvisionCostas;
      ParamByName('PCAPITAL_REC').AsCurrency := RecCapital;
      ParamByName('PINTERES_REC').AsCurrency := RecInteres;
      ParamByName('PCOSTAS_REC').AsCurrency := RecCostas;
      ParamByName('PCAPITAL_REV').AsCurrency := RevGCapital;
      ParamByName('PINTERES_REV').AsCurrency := RevGInteres;
      ParamByName('PCOSTAS_REV').AsCurrency := RevGCostas;
      ParamByName('PCAPITAL_GAS').AsCurrency := GCapital;
      ParamByName('PINTERES_GAS').AsCurrency := GInteres;
      ParamByName('PCOSTAS_GAS').AsCurrency := GCostas;
      ParamByName('FECHA_CORTE').AsDate := EdFechaCorte.Date;
      Try
        ExecQuery;
      Except
        //frmPantallaProgreso.Cerrar;
        //MessageDlg('Error Actualizando Tabla Temporal',mtError,[mbcancel],0);
        //Transaction.Rollback;
        //raise;
        //Exit;
    End;
End;
// with
IBQuery1.Next;
End;
//fin While Principal
End;
//fin with Principal IBQuery1
frmPantallaProgreso.Cerrar;
IBSQL3.Transaction.Commit;
MessageDlg('Provision Terminada con Exito!!',mtInformation,[mbok],0);
// Fin Actualizacion

End;

End.
