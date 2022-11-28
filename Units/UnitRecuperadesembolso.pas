unit UnitRecuperadesembolso;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms, Math,
  Dialogs, DBCtrls, StdCtrls, ExtCtrls, Buttons, DB, IBCustomDataSet,
  IBQuery, FR_DSet, FR_DBSet, FR_Class, IBDatabase, DBClient, UnitDmGeneral,
  NLetra, IBSQL;

type
  TFrmRecuperarInforme = class(TForm)
    Panel1: TPanel;
    Label2: TLabel;
    EDcolocacion: TEdit;
    Panel2: TPanel;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    IBQuery1: TIBQuery;
    DataSource1: TDataSource;
    IBQuerytabla: TIBQuery;
    IBQuerytablaID_COLOCACION: TIBStringField;
    IBQuerytablaCUOTA_NUMERO: TIntegerField;
    IBQuerytablaFECHA_A_PAGAR: TDateField;
    IBQuerytablaCAPITAL_A_PAGAR: TIBBCDField;
    IBQuerytablaINTERES_A_PAGAR: TIBBCDField;
    IBQuerytablaTOTALCUOTA: TIBBCDField;
    IBQuerycolocacion: TIBQuery;
    IBQueryGarPersonal: TIBQuery;
    frCompositeReport1: TfrCompositeReport;
    frReport1: TfrReport;
    frDBDataSet2: TfrDBDataSet;
    frDBDataSet1: TfrDBDataSet;
    frDBDataSet3: TfrDBDataSet;
    frDBDataSet4: TfrDBDataSet;
    IBtranreporte: TIBTransaction;
    IBQuerycontable: TIBQuery;
    IBQueryGarReal: TIBQuery;
    CDliquidacion: TClientDataSet;
    CDliquidacioncuota: TIntegerField;
    CDliquidacionfecha_pago: TDateField;
    CDliquidacioncapital: TCurrencyField;
    CDliquidacioninteres: TCurrencyField;
    CDliquidacionsaldo: TCurrencyField;
    CDliquidaciontotalcuota: TCurrencyField;
    IBentidad: TIBQuery;
    IBTransaction6: TIBTransaction;
    frDBDataSet5: TfrDBDataSet;
    IBhorario: TIBQuery;
    CDliquidacionotros: TCurrencyField;
    CDSDescuento: TClientDataSet;
    CDSDescuentoID_DESCUENTO: TIntegerField;
    CDSDescuentoDESCONTAR: TBooleanField;
    CDSDescuentoDESCRIPCION_DESCUENTO: TStringField;
    CDSADescontar: TClientDataSet;
    CDSADescontarID_DESCUENTO: TIntegerField;
    CDSADescontarCODIGO: TStringField;
    CDSADescontarCUOTA: TIntegerField;
    CDSADescontarVALOR: TCurrencyField;
    NLetra1: TNLetra;
    IBQDescuento: TIBQuery;
    IBSQL4: TIBSQL;
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure DBagenciaKeyPress(Sender: TObject; var Key: Char);
    procedure EDcolocacionKeyPress(Sender: TObject; var Key: Char);
    procedure frReport1GetValue(const ParName: String;
      var ParValue: Variant);
  private
  nota_contable :Integer;
  estado :Integer;
  lugar_e :string;
  tasanominal :Double;
  v_cuota :Currency;
  vNumeroCuenta :Integer;
  vExequial,vEquivida,vDescuentos,vAportes,vCartera,vNetoRecibido,vValorOtros :Currency;
    function recupera_codigo(codigo: integer): string;
    function recupera_saldo(codigo, estado: Integer;tipo: string): Currency;
    { Private declarations }
  public
  published
    procedure recupera_informe;
    procedure imprimir_reporte(cadena: string);
    { Public declarations }
  end;

var
  FrmRecuperarInforme: TFrmRecuperarInforme;
  dmGeneral: TdmGeneral;
  vAgencia: Integer;
  vDesembolso: Currency;
  vSaldoActual: Currency;
  vAmortiza: Integer;

implementation

uses UnitDmSolicitud, UnitDesembolso, UnitGlobales, unitMain, UnitGlobalesCol,
  UnitImpresion;

{$R *.dfm}

procedure TFrmRecuperarInforme.BitBtn2Click(Sender: TObject);
begin
        Close;
end;

procedure  TFrmRecuperarInforme.BitBtn1Click(Sender: TObject);
begin
        IBentidad.Close;
        IBentidad.Open;
        CDliquidacion.CancelUpdates;
        with DmSolicitud.IBSolicitud1 do
        begin
          Close;
          SQL.Clear;
          SQL.Add('select ID_COLOCACION,VALOR_DESEMBOLSO, VALOR_CUOTA, AMORTIZA_CAPITAL, ID_ESTADO_COLOCACION,NOTA_CONTABLE,NUMERO_CUENTA from "col$colocacion"');
          SQL.Add('where ID_COLOCACION = :ID_COLOCACION');
          ParamByName('ID_COLOCACION').AsString := EDcolocacion.Text;
          Open;
          if RecordCount = 0 then
          begin
             MessageDlg('Numero de Colocación no Existe',mtInformation,[mbok],0);
             Exit;
          end;
          estado := FieldByName('ID_ESTADO_COLOCACION').AsInteger;
          v_cuota := FieldByName('VALOR_CUOTA').AsCurrency;
          vNumeroCuenta := FieldByName('NUMERO_CUENTA').AsInteger;
          vDesembolso := FieldByName('VALOR_DESEMBOLSO').AsCurrency;
          vSaldoActual := vDesembolso;
          vAmortiza := FieldByName('AMORTIZA_CAPITAL').AsInteger;
          try
            nota_contable := StrToInt(FieldByName('NOTA_CONTABLE').AsString);
          except
            nota_contable := -1;
          end;
          recupera_informe;
        end;
end;

procedure TFrmRecuperarInforme.FormCreate(Sender: TObject);
begin
        dmGeneral := TdmGeneral.Create(self);
        dmGeneral.getConnected;
        DmSolicitud := TDmSolicitud.Create(Self);
        iBQuery1.Database := dmGeneral.IBDatabase1;
        IBQuery1.Transaction := dmGeneral.IBTransaction1;
        IBQuery1.Open;
        IBQuery1.Last;

        IBtranreporte.DefaultDatabase := dmGeneral.IBDatabase1;
        IBTransaction6.DefaultDatabase := dmGeneral.IBDatabase1;

        IBhorario.Database := dmGeneral.IBDatabase1;
        IBQuerycontable.Database := dmGeneral.IBDatabase1;
        IBQueryGarReal.Database := dmGeneral.IBDatabase1;
        IBentidad.Database := dmGeneral.IBDatabase1;
        IBQuerycolocacion.Database := dmGeneral.IBDatabase1;
        IBQuerycontable.Database := dmGeneral.IBDatabase1;
        IBQuerytabla.Database := dmGeneral.IBDatabase1;
        IBQueryGarPersonal.Database := dmGeneral.IBDatabase1;
        IBQDescuento.Database := dmGeneral.IBDatabase1;
        IBQDescuento.Transaction := IBtranreporte;
        IBSQL4.Database := dmGeneral.IBDatabase1;
        IBSQL4.Transaction := IBtranreporte;

        IBtranreporte.StartTransaction;
        IBTransaction6.StartTransaction;
end;

procedure TFrmRecuperarInforme.DBagenciaKeyPress(Sender: TObject;
  var Key: Char);
begin
        EnterTabs(Key,Self)
end;

procedure TFrmRecuperarInforme.EDcolocacionKeyPress(Sender: TObject;
  var Key: Char);
begin
        EnterTabs(Key,Self)
end;

procedure TFrmRecuperarInforme.recupera_informe;
var
PuntosAdic: Double;
Saldo,valor_colocacion,vColocacion, valorAporte, valorTotalAporte, valorAporteCobrado :Currency;
vAmortizaCapital, vPlazoAporte: Integer;
begin
        Empleado;
        vAmortizaCapital := vAmortiza;
        if IBtranreporte.InTransaction then
           IBtranreporte.Commit;
        IBtranreporte.StartTransaction;
        with IBQuerycolocacion do
        begin
             SQL.Clear;
             SQL.Add('SELECT "col$colocacion".ID_COLOCACION,"col$colocacion".VALOR_DESEMBOLSO, "col$colocacion".ID_PERSONA, "gen$persona".NOMBRE,');
             SQL.Add('"gen$persona".PRIMER_APELLIDO,"gen$persona".LUGAR_EXPEDICION,"gen$persona".SEGUNDO_APELLIDO,');
             SQL.Add('"gen$tiposidentificacion".DESCRIPCION_IDENTIFICACION,');
             SQL.Add('"col$clasificacion".DESCRIPCION_CLASIFICACION,');
             SQL.Add('"col$lineas".DESCRIPCION_LINEA,"col$inversion".DESCRIPCION_INVERSION,');
             SQL.Add('"col$respaldo".DESCRIPCION_RESPALDO,"col$garantia".DESCRIPCION_GARANTIA,');
             SQL.Add('"col$colocacion".FECHA_DESEMBOLSO,"col$colocacion".VALOR_DESEMBOLSO,');
             SQL.Add('"col$colocacion".PLAZO_COLOCACION,"col$colocacion".FECHA_VENCIMIENTO,');
             SQL.Add('"col$colocacion".TIPO_INTERES,"col$tasasvariables".DESCRIPCION_TASA,');
             SQL.Add('"col$colocacion".TASA_INTERES_CORRIENTE,"col$colocacion".TASA_INTERES_MORA,');
             SQL.Add('"col$colocacion".PUNTOS_INTERES,"col$tiposcuota".DESCRIPCION_TIPO_CUOTA,');
             SQL.Add('"col$colocacion".AMORTIZA_CAPITAL,"col$colocacion".AMORTIZA_INTERES,');
             SQL.Add('"col$colocacion".PERIODO_GRACIA,"col$colocacion".VALOR_CUOTA,');
             SQL.Add('"col$colocacion".FECHA_CAPITAL,"col$colocacion".FECHA_INTERES,');
             SQL.Add('"col$colocacion".NUMERO_CUENTA,"col$colocacion".NOTA_CONTABLE,');
             SQL.Add('"col$tiposcuota".INTERES,');
             SQL.Add('"gen$empleado".PRIMER_APELLIDO AS PRIMER_APELLIDO1,');
             SQL.Add('"gen$empleado".SEGUNDO_APELLIDO AS SEGUNDO_APELLIDO1,');
             SQL.Add('"gen$empleado".NOMBRE AS NOMBRE1,');
             SQL.Add('"gen$agencia".DESCRIPCION_AGENCIA');
             SQL.Add('FROM ');
             SQL.Add('"col$colocacion" INNER JOIN "gen$persona" ON ("col$colocacion".ID_PERSONA = "gen$persona".ID_PERSONA) AND ("col$colocacion".ID_IDENTIFICACION = "gen$persona".ID_IDENTIFICACION)');
             SQL.Add('INNER JOIN "gen$tiposidentificacion" ON ("gen$persona".ID_IDENTIFICACION = "gen$tiposidentificacion".ID_IDENTIFICACION)');
             SQL.Add('INNER JOIN "col$clasificacion" ON ("col$colocacion".ID_CLASIFICACION = "col$clasificacion".ID_CLASIFICACION)');
             SQL.Add('INNER JOIN "col$lineas" ON ("col$colocacion".ID_LINEA = "col$lineas".ID_LINEA)');
             SQL.Add('INNER JOIN "col$inversion" ON ("col$colocacion".ID_INVERSION = "col$inversion".ID_INVERSION)');
             SQL.Add('INNER JOIN "col$respaldo" ON ("col$colocacion".ID_RESPALDO = "col$respaldo".ID_RESPALDO)');
             SQL.Add('INNER JOIN "col$garantia" ON ("col$colocacion".ID_GARANTIA = "col$garantia".ID_GARANTIA)');
             //SQL.Add('INNER JOIN "col$tiposcuota" ON ("col$colocacion".ID_TIPO_CUOTA = "col$tiposcuota".ID_TIPOS_CUOTA)');
             SQL.Add('LEFT OUTER JOIN "col$tasasvariables" ON ("col$colocacion".ID_INTERES = "col$tasasvariables".ID_INTERES)');
             SQL.Add('INNER JOIN "col$tiposcuota" ON ("col$colocacion".ID_TIPO_CUOTA = "col$tiposcuota".ID_TIPOS_CUOTA)');
             SQL.Add('INNER JOIN "gen$empleado" ON ("col$colocacion".ID_EMPLEADO = "gen$empleado".ID_EMPLEADO) ');
             SQL.Add('INNER JOIN "gen$agencia" ON ("col$colocacion".ID_AGENCIA = "gen$agencia".ID_AGENCIA)');
             SQL.Add(' where ("col$colocacion".ID_COLOCACION = :"ID_COLOCACION")');
             ParamByName('ID_COLOCACION').AsString := EDcolocacion.Text;
             Open;
             PuntosAdic := FieldByName('PUNTOS_INTERES').AsFloat;
             Saldo := FieldByName('VALOR_DESEMBOLSO').AsCurrency;
             lugar_e := FieldByName('LUGAR_EXPEDICION').AsString;
             vcolocacion := FieldByName('VALOR_DESEMBOLSO').AsCurrency;
             if FieldByName('INTERES').AsString = 'A' then
                TasaNominal := TasaNominalAnticipada(FieldByName('TASA_INTERES_CORRIENTE').AsFloat,FieldByName('AMORTIZA_INTERES').AsInteger) + PuntosAdic
             else
                TasaNominal := TasaNominalVencida(FieldByName('TASA_INTERES_CORRIENTE').AsFloat,FieldByName('AMORTIZA_INTERES').AsInteger) + PuntosAdic;
        end;
        valor_colocacion := Saldo;
        valorAporteCobrado := 0;
          // Cargar descuentos a aplicar en cuotas
             IBQDescuento.Close;
             IBQDescuento.SQL.Clear;
             IBQDescuento.SQL.Add('SELECT ccd.ID_DESCUENTO, cd.DESCRIPCION_DESCUENTO FROM "col$colocaciondescuento" ccd');
             IBQDescuento.SQL.Add('INNER JOIN "col$descuentos" cd ON cd.ID_DESCUENTO = ccd.ID_DESCUENTO');
             IBQDescuento.SQL.Add('WHERE ccd.ID_COLOCACION = :"ID_COLOCACION"');
             IBQDescuento.ParamByName('ID_COLOCACION').AsString := EDcolocacion.Text;
             IBQDescuento.Open;
             CDSDescuento.Open;
             while not IBQDescuento.Eof do
             begin
                 CDSDescuento.Append;
                 CDSDescuento.FieldByName('ID_DESCUENTO').AsInteger := IBQDescuento.FieldByName('ID_DESCUENTO').AsInteger;
                 CDSDescuento.FieldByName('DESCRIPCION_DESCUENTO').AsString := IBQDescuento.FieldByName('DESCRIPCION_DESCUENTO').AsString;
                 CDSDescuento.FieldByName('DESCONTAR').AsBoolean := True;
                 CDSDescuento.Post;
                 IBQDescuento.Next;
             end;
             CDSDescuento.First;
          // fin

             // Buscar Valor Aporte
            IBSQL4.Close;
            IBSQL4.SQL.Clear;
            IBSQL4.SQL.Add('SELECT APORTE, PLAZO  FROM COL$APORTEVINCULADO WHERE ID_COLOCACION = :ID_COLOCACION');
            IBSQL4.ParamByName('ID_COLOCACION').AsString := EDcolocacion.Text;
            IBSQL4.ExecQuery;
            if IBSQL4.FieldByName('APORTE').AsCurrency <= 0 then
             valorAporte := 0
            else
            begin
             valorTotalAporte := IBSQL4.FieldByName('APORTE').AsCurrency;
             vPlazoAporte := IBSQL4.FieldByName('PLAZO').AsInteger;
             valorAporte := SimpleRoundTo(valorTotalAporte / vPlazoAporte, 0);
            end;

        with IBQuerytabla do
        begin
             SQL.Clear;
             SQL.Add('select ID_COLOCACION, CUOTA_NUMERO, FECHA_A_PAGAR, CAPITAL_A_PAGAR, ');
             SQL.Add('INTERES_A_PAGAR,(CAPITAL_A_PAGAR + INTERES_A_PAGAR) as TOTALCUOTA ');
             SQL.Add('from "col$tablaliquidacion" where ');
             SQL.Add('(ID_COLOCACION = :"ID_COLOCACION") ORDER BY CUOTA_NUMERO');
             ParamByName('ID_COLOCACION').AsString := EDcolocacion.Text;
             Open;
             Last;
             First;
             valorAporteCobrado := 0;
             while not Eof do
             begin
               valor_colocacion := valor_colocacion - FieldByName('CAPITAL_A_PAGAR').AsCurrency;
               if (valor_colocacion <= 0) then
               begin
                 valorAporte := valorTotalAporte - valorAporteCobrado;
               end;
               valorAporteCobrado := valorAporteCobrado + valorAporte;
               CDliquidacion.Append;
               CDliquidacion.FieldValues['cuota_numero'] := FieldByName('CUOTA_NUMERO').AsInteger;
               CDliquidacion.FieldValues['fecha_a_pagar'] := FieldByName('FECHA_A_PAGAR').AsDateTime;
               CDliquidacion.FieldValues['capital_a_pagar'] := FieldByName('CAPITAL_A_PAGAR').AsCurrency;
               CDliquidacion.FieldValues['interes_a_pagar'] := FieldByName('INTERES_A_PAGAR').AsCurrency;
               CDliquidacion.FieldValues['otros'] := valorAporte;
               CDliquidacion.FieldValues['saldo'] := valor_colocacion ;
               CDliquidacion.FieldValues['totalcuota'] := FieldByName('TOTALCUOTA').AsCurrency;
               CDliquidacion.Post;
               Next;
             end;

             CalcularDescuentoPorCuota(CDliquidacion,CDSDescuento, CDSADescontar, vDesembolso, vAmortizaCapital, vDesembolso);

             CDSADescontar.First;
             while not CDSADescontar.Eof do
             begin
                if CDliquidacion.Locate('CUOTA_NUMERO',VarArrayOf([CDSADescontar.FieldByName('CUOTA_NUMERO').AsVariant]),[loCaseInsensitive]) then
                begin
                   CDliquidacion.Edit;
                   CDliquidacionotros.Value := CDliquidacionotros.Value + CDSADescontar.FieldByName('VALOR').AsCurrency;
                   CDliquidacion.Post;
                end;
                CDSADescontar.Next;
             end;
        end;
        with IBQuerycontable do
        begin
          SQL.Clear;
          if estado = 4 then
          begin
             SQL.Add('select "col$concol".ID_AGENCIA, ID_COLOCACION,"col$concol"."CODIGO",NOMBRE,DEBITO,CREDITO');
             SQL.Add(' FROM "col$concol" left join "con$puc" ON ');
             SQL.Add('("col$concol"."CODIGO" = "con$puc"."CODIGO") ');
             SQL.Add('where ("col$concol".ID_COLOCACION = :"ID_COLOCACION") ORDER BY CREDITO,"col$concol"."CODIGO"');
             ParamByName('ID_COLOCACION').AsString := EDcolocacion.Text;
          end
          else
          begin
             SQL.Add('SELECT');
             SQL.Add('"con$puc".NOMBRE,');
             SQL.Add('"con$auxiliar".ID_AGENCIA,');
             SQL.Add('"con$auxiliar".DEBITO,');
             SQL.Add('"con$auxiliar".CREDITO,');
             SQL.Add('"con$puc".CODIGO');
             SQL.Add('FROM');
             SQL.Add('"con$auxiliar"');
             SQL.Add('INNER JOIN "con$puc" ON ("con$auxiliar".CODIGO = "con$puc".CODIGO)');
             SQL.Add('WHERE');
             SQL.Add('("con$auxiliar".ID_COMPROBANTE = :ID AND "con$auxiliar".TIPO_COMPROBANTE = :TIPO)');
             SQL.Add('ORDER BY "con$auxiliar".CREDITO,"con$puc".CODIGO');
             ParamByName('ID').AsInteger := nota_contable;
             ParamByName('TIPO').AsInteger := 1;
          end;
             Open;
        end;
        with IBQueryGarPersonal do
        begin
           SQL.Clear;
           SQL.Add('select "gen$persona".PRIMER_APELLIDO,"gen$persona".SEGUNDO_APELLIDO,');
           SQL.Add('"gen$persona".NOMBRE,"col$colgarantias".ID_COLOCACION,');
           SQL.Add('"col$colgarantias".ID_PERSONA FROM "col$colgarantias" ');
           SQL.Add('inner join "gen$persona" on ');
           SQL.Add('("col$colgarantias".ID_PERSONA = "gen$persona".ID_PERSONA) and ("col$colgarantias".ID_IDENTIFICACION = "gen$persona".ID_IDENTIFICACION) ');
           SQL.Add('where (ID_COLOCACION = :"ID_COLOCACION")');
           ParamByName('ID_COLOCACION').AsString := EDcolocacion.Text;
           Open;
        end;
        with IBQueryGarReal do
        begin
           SQL.Clear;
           SQL.Clear;
           SQL.Add('SELECT ');
           SQL.Add('"col$garantiacol".ID_COLOCACION,');
           SQL.Add('"col$datogarantia".NUMERO_ESCRITURA,');
           SQL.Add('"col$datogarantia".FECHA_ESCRITURA,');
           SQL.Add('"col$datogarantia".NOMBRE_NOTARIA,');
           SQL.Add('"col$datogarantia".CIUDAD_ESCRITURA,');
           SQL.Add('"col$datogarantia".MATRICULA,');
           SQL.Add('"col$datogarantia".FECHA_MATRICULA,');
           SQL.Add('"col$datogarantia".AVALUO,');
           SQL.Add('"col$datogarantia".FECHA_AVALUO,');
           SQL.Add('"col$datogarantia".CUENTAS_DE_ORDEN,');
           SQL.Add('"col$datogarantia".POLIZA_INCENDIO,');
           SQL.Add('"col$datogarantia".FECHA_INICIAL_POLIZA,');
           SQL.Add('"col$datogarantia".FECHA_FINAL_POLIZA,');
           SQL.Add('"col$datogarantia".VALOR_ASEGURADO');
           SQL.Add('FROM');
           SQL.Add('"col$datogarantia"');
           SQL.Add('INNER JOIN "col$garantiacol" ON ("col$datogarantia".ID_AGENCIA = "col$garantiacol".ID_AGENCIA)');
           SQL.Add('AND ("col$datogarantia".MATRICULA = "col$garantiacol".MATRICULA)');
           SQL.Add('WHERE');
           SQL.Add('"col$garantiacol".ID_COLOCACION = :ID_COLOCACION');
           ParamByName('ID_COLOCACION').AsString := EDcolocacion.Text;
           Open;
        end;
        vEquivida := recupera_saldo(14,estado,'C');
        vExequial := recupera_saldo(15,estado,'C');
        vCartera := recupera_saldo(8,estado,'D');
        vAportes := recupera_saldo(3,estado,'C');
        //ShowMessage(CurrToStr(recupera_saldo(8,estado,'C')));
        vNetoRecibido := recupera_saldo(8,estado,'C') - vCartera;
        vValorOtros := vColocacion - (vEquivida + vExequial + vCartera + vAportes + vNetoRecibido);
        if vValorOtros <= 0 then
        begin
           vNetoRecibido := vNetoRecibido + vValorOtros;
           vValorOtros := 0;
        end;
//        CDliquidacion.Active//
        imprimir_reporte(frmMain.ruta1 + '\reporte\repdesembolso.frf');
        //Saldo := vDesembolso;
        IBQuerytabla.Close;
        IBQuerycontable.Close;
        IBQuerycolocacion.Close;
        IBQueryGarPersonal.Close;
        IBQueryGarReal.Close;
end;

procedure TFrmRecuperarInforme.imprimir_reporte(cadena: string);
begin
        FrmImpresion := TFrmImpresion.Create(self);
        frReport1.LoadFromFile(cadena);
        frCompositeReport1.DoublePass := True;
        frCompositeReport1.Reports.Clear;
        frCompositeReport1.Reports.Add(frReport1);
        frReport1.Dictionary.Variables.Variable['nit'] := QuotedStr(Nit);
        frReport1.Preview := FrmImpresion.frPreview1;
        frReport1.ShowReport;
        FrmImpresion.ShowModal

end;

procedure TFrmRecuperarInforme.frReport1GetValue(const ParName: String;
  var ParValue: Variant);

begin
        if ParName = 'd_otro' then
           ParValue := vValorOtros;
        if ParName = 'tasanominal' then
           ParValue := TasaNominal;
        if ParName = 'empresa' then
           ParValue := Empresa;
        if ParName = 'copia' then
           ParValue := 'COPIA';
        if ParName  = 'de' then
           ParValue := lugar_e;
        if ParName = 'aportes' then
           ParValue := vAportes;
        if ParName = 'cartera' then
           ParValue := vCartera;
        if ParName = 'equivida' then
           ParValue := vEquivida;
        if ParName = 'exequial' then
           ParValue := vExequial;
        if ParName = 'neto_recibido' then
           ParValue := vNetoRecibido;
        if ParName = 'valor_cuota' then
           ParValue := v_cuota;
        with IBhorario do
        begin
          Close;
          Open;
          if ParName = 'ho1' then
             ParValue := FieldByName('HORARIO').AsString;
          Next;
          if ParName = 'ho2' then
             ParValue := FieldByName('HORARIO').AsString;
          Next;
          if ParName = 'ho3' then
             ParValue := FieldByName('HORARIO').AsString;
          Next;
          if ParName = 'hs1' then
             ParValue := FieldByName('HORARIO').AsString;
          Next;
          if ParName = 'hs2' then
             ParValue := FieldByName('HORARIO').AsString;
          Next;
          if ParName = 'hs3' then
             ParValue := FieldByName('HORARIO').AsString;
          Next;
          if ParName = 'hs4' then
             ParValue := FieldByName('HORARIO').AsString;
          Close;
        end;
        if ParName = 'agencia' then
        begin
           with DmSolicitud.IBSolicitud1 do
           begin
             if Transaction.InTransaction then
                Transaction.Commit;
             Transaction.StartTransaction;
             Close;
             SQL.Clear;
             SQL.Add('SELECT');
             SQL.Add('"gen$agencia".DESCRIPCION_AGENCIA');
             SQL.Add('FROM');
             SQL.Add('"gen$agencia"');
             SQL.Add('WHERE');
             SQL.Add('("gen$agencia".ID_AGENCIA = :ID_AGENCIA)');
             ParamByName('ID_AGENCIA').AsInteger := vAgencia;
             Open;
             ParValue := FieldByName('DESCRIPCION_AGENCIA').AsString;
             Close;
           end;
        end;
        if ParName = 'valor_en_pesos' then
        begin
           ParValue := '$'+ FormatCurr('#,##0.00',vAportes);
        end;
        if ParName = 'valor_en_letras' then
        begin
           NLetra1.Numero := Trunc(vAportes);
           ParValue := UpperCase(NLetra1.Letras) + ' PESOS';
        end;        
end;
      
function TFrmRecuperarInforme.recupera_codigo(codigo: integer): string;
begin
    with DmSolicitud.IBSolicitud3 do
    begin
      if Transaction.InTransaction then
         Transaction.Commit;
      Transaction.StartTransaction;
     SQL.Clear;
     SQL.Add('select CODIGO from "col$codigospucbasicos" where ID_CODIGOPUCBASICO = :codigo');
     ParamByName('codigo').AsInteger := codigo;
     Open;
     Result := FieldByName('CODIGO').AsString;
     Close;
   end;

end;

function TFrmRecuperarInforme.recupera_saldo(codigo, estado: integer;
  tipo: string): Currency;
begin
        with DmSolicitud.IBSQL1 do
        begin
          Close;
          if Transaction.InTransaction then
             Transaction.Commit;
          Transaction.StartTransaction;
          SQL.Clear;
        try
          if estado = 4 then
          begin
            if tipo = 'D' then
              SQL.Add('select sum(DEBITO) as SALDO from "col$concol"')
            else
              SQL.Add('select sum(CREDITO) as SALDO from "col$concol"');
            SQL.Add('where (ID_COLOCACION = :"ID_COLOCACION") AND (CODIGO = :CODIGO)');
            ParamByName('ID_COLOCACION').AsString := EDcolocacion.Text;
            ParamByName('CODIGO').AsString := recupera_codigo(codigo);
            ExecQuery;
          end
          else
          begin
            if tipo = 'D' then
               SQL.Add('select sum(DEBITO) as SALDO from "con$auxiliar"')
            else
               SQL.Add('select sum(CREDITO) as SALDO from "con$auxiliar"');
            SQL.Add('where ID_COMPROBANTE = :ID_COMPROBANTE and  CODIGO = :CODIGO');
            if codigo = 8 then
            begin
               SQL.Add('and ID_CUENTA = :ID_CUENTA');
               ParamByName('ID_CUENTA').AsInteger := vNumeroCuenta;
            end;
            ParamByName('ID_COMPROBANTE').AsInteger := nota_contable;
            ParamByName('CODIGO').AsString := recupera_codigo(codigo);
            ExecQuery;
          end;
          Result := FieldByName('SALDO').AsCurrency;
        except
          Result := 0;
        end;
        end;
end;

end.
