unit UnitProcesarDatacreditoConsolidado;

interface

uses
  Windows, Messages, DateUtils, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, StdCtrls, ComCtrls, Buttons, DB, IBCustomDataSet,
  IBQuery, IBDatabase, IBSQL, StrUtils, DBClient;

type
  TfrmProcesarDatacredito = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    CmdProcesar: TBitBtn;
    EdFechaCorte: TDateTimePicker;
    Label1: TLabel;
    GroupBox1: TGroupBox;
    CheckBox1: TCheckBox;
    CheckBox2: TCheckBox;
    CheckBox5: TCheckBox;
    GroupBox2: TGroupBox;
    Bar: TProgressBar;
    CmdGenerar: TBitBtn;
    CmdEnviar: TBitBtn;
    CmdVer: TBitBtn;
    CmdCerrar: TBitBtn;
    IBQuery1: TIBQuery;
    IBSNoCredito: TIBSQL;
    IBSClientes: TIBSQL;
    IBSCodeudores: TIBSQL;
    IBSCuotas: TIBSQL;
    IBQuery2: TIBQuery;
    DataAnterior: TClientDataSet;
    DataErrores: TClientDataSet;
    DataErroresCOLOCACION_ERRADO: TStringField;
    DataErroresIDENTIFICACION: TStringField;
    DataErroresAGENCIA: TIntegerField;
    DataErroresCOLOCACION_CORRECTO: TStringField;
    DataAnteriorNUMERO: TStringField;
    DataAnteriorIDENTIFICACION: TStringField;
    DataAnteriorNOMBRE: TStringField;
    DataAnteriorFNACIM: TStringField;
    DataAnteriorFAPERT: TStringField;
    DataAnteriorFVENCI: TStringField;
    DataAnteriorVCUOTA: TStringField;
    Ed1: TEdit;
    OpenDialog1: TOpenDialog;
    DataAnteriorNOVEDA: TStringField;
    DataAnteriorADJETI: TStringField;
    DataAnteriorTPIDEN: TStringField;
    DataAnteriorVALINI: TStringField;
    DataAnteriorVALDEU: TStringField;
    DataAnteriorVALMOR: TStringField;
    DataAnteriorVALDIS: TStringField;
    DataAnteriorTPMONE: TStringField;
    DataAnteriorTPOBLI: TStringField;
    DataAnteriorTPGARA: TStringField;
    DataAnteriorCALIFI: TStringField;
    DataAnteriorCRESID: TStringField;
    DataAnteriorDRESID: TStringField;
    DataAnteriorTRESID: TStringField;
    DataAnteriorCLABOR: TStringField;
    DataAnteriorTLABOR: TStringField;
    DataAnteriorCCORRE: TStringField;
    DataAnteriorDCORRE: TStringField;
    DataAnteriorCIIU: TStringField;
    DataAnteriorTCUOTA: TStringField;
    DataAnteriorCCANCE: TStringField;
    DataAnteriorCEMORA: TStringField;
    DataAnteriorFUPAGO: TStringField;
    DataAnteriorOFICIN: TStringField;
    DataAnteriorCRADIC: TStringField;
    DataAnteriorFOPAGO: TStringField;
    DataAnteriorPEPAGO: TStringField;
    DataAnteriorEDMORA: TStringField;
    DataAnteriorFACTUA: TStringField;
    DataAnteriorRECLAM: TStringField;
    DataAnteriorRESPON: TStringField;
    DataAnteriorESTRAC: TStringField;
    DataAnteriorRELLEN: TStringField;
    DataActual: TClientDataSet;
    StringField1: TStringField;
    StringField2: TStringField;
    StringField3: TStringField;
    StringField4: TStringField;
    StringField5: TStringField;
    StringField6: TStringField;
    StringField7: TStringField;
    StringField8: TStringField;
    StringField9: TStringField;
    StringField10: TStringField;
    StringField11: TStringField;
    StringField12: TStringField;
    StringField13: TStringField;
    StringField14: TStringField;
    StringField15: TStringField;
    StringField16: TStringField;
    StringField17: TStringField;
    StringField18: TStringField;
    StringField19: TStringField;
    StringField20: TStringField;
    StringField21: TStringField;
    StringField22: TStringField;
    StringField23: TStringField;
    StringField24: TStringField;
    StringField25: TStringField;
    StringField26: TStringField;
    StringField27: TStringField;
    StringField28: TStringField;
    StringField29: TStringField;
    StringField30: TStringField;
    StringField31: TStringField;
    StringField32: TStringField;
    StringField33: TStringField;
    StringField34: TStringField;
    StringField35: TStringField;
    StringField36: TStringField;
    StringField37: TStringField;
    StringField38: TStringField;
    StringField39: TStringField;
    StringField40: TStringField;
    Ed2: TEdit;
    IBPersona: TIBSQL;
    CheckBox3: TCheckBox;
    IBTmp: TIBQuery;
    IBSReporteAnt: TIBSQL;
    CheckBox4: TCheckBox;
    IBQuery3: TIBQuery;
    DataActualizaTabla: TClientDataSet;
    StringField41: TStringField;
    StringField42: TStringField;
    StringField43: TStringField;
    StringField44: TStringField;
    StringField45: TStringField;
    StringField46: TStringField;
    StringField47: TStringField;
    StringField48: TStringField;
    StringField49: TStringField;
    StringField50: TStringField;
    StringField51: TStringField;
    StringField52: TStringField;
    StringField53: TStringField;
    StringField54: TStringField;
    StringField55: TStringField;
    StringField56: TStringField;
    StringField57: TStringField;
    StringField58: TStringField;
    StringField59: TStringField;
    StringField60: TStringField;
    StringField61: TStringField;
    StringField62: TStringField;
    StringField63: TStringField;
    StringField64: TStringField;
    StringField65: TStringField;
    StringField66: TStringField;
    StringField67: TStringField;
    StringField68: TStringField;
    StringField69: TStringField;
    StringField70: TStringField;
    StringField71: TStringField;
    StringField72: TStringField;
    StringField73: TStringField;
    StringField74: TStringField;
    StringField75: TStringField;
    StringField76: TStringField;
    StringField77: TStringField;
    StringField78: TStringField;
    StringField79: TStringField;
    StringField80: TStringField;
    DataSaldados: TClientDataSet;
    StringField81: TStringField;
    StringField82: TStringField;
    StringField83: TStringField;
    StringField84: TStringField;
    StringField85: TStringField;
    StringField86: TStringField;
    StringField87: TStringField;
    StringField88: TStringField;
    StringField89: TStringField;
    StringField90: TStringField;
    StringField91: TStringField;
    StringField92: TStringField;
    StringField93: TStringField;
    StringField94: TStringField;
    StringField95: TStringField;
    StringField96: TStringField;
    StringField97: TStringField;
    StringField98: TStringField;
    StringField99: TStringField;
    StringField100: TStringField;
    StringField101: TStringField;
    StringField102: TStringField;
    StringField103: TStringField;
    StringField104: TStringField;
    StringField105: TStringField;
    StringField106: TStringField;
    StringField107: TStringField;
    StringField108: TStringField;
    StringField109: TStringField;
    StringField110: TStringField;
    StringField111: TStringField;
    StringField112: TStringField;
    StringField113: TStringField;
    StringField114: TStringField;
    StringField115: TStringField;
    StringField116: TStringField;
    StringField117: TStringField;
    StringField118: TStringField;
    StringField119: TStringField;
    StringField120: TStringField;
    procedure CmdCerrarClick(Sender: TObject);
    procedure CmdProcesarClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure CmdGenerarClick(Sender: TObject);
    procedure CmdVerClick(Sender: TObject);
    procedure EdFechaCorteExit(Sender: TObject);
  private
    procedure PrimerPaso;
    procedure SegundoPaso;
    procedure TercerPaso;
    function Novedad(IDAgencia: Integer; IdColocacion: string;Dias:Integer): Integer;
    function Adjetivo(IdAgencia: Integer; IdColocacion: string): string;
    procedure CuartoPaso;
    procedure Castigados;
    procedure QuintoPaso;
    { Private declarations }
  public
    { Public declarations }
  end;

type Registro = Record
    Numero:string; // * 18
    Identificacion:string; // * 11
    Nombre:string; // * 45
    FNacim:string; // * 06
    FApert:string; // * 06
    FVenci:string; // * 06
    VCuota:string; // * 10
    Noveda:string; // * 02
    Adjeti:string; // * 02
    TpIden:string; // * 01
    ValIni:string; // * 10
    ValDeu:string; // * 10
    ValMor:string; // * 10
    ValDis:string; // * 10
    TpMone:string; // * 01
    TpObli:string; // * 01
    TpGara:string; // * 01
    Califi:string; // * 01
    CResid:string; // * 15
    DResid:string; // * 30
    TResid:string; // * 10
    CLabor:string; // * 15
    TLabor:string; // * 10
    CCorre:string; // * 15
    DCorre:string; // * 30
    Ciiu  :string; // * 06
    TCuota:string; // * 03
    CCance:string; // * 03
    CeMora:string; // * 03
    FUPago:string; // * 06
    Oficin:string; // * 15
    CRadic:string; // * 15 ciudad radicaci�n
    FoPago:string; // * 01 forma de pago
    PePago:string; // * 01 periodo de pago
    EdMora:string; // * 03
    FActua:string; // * 08 Fecha de Corte
    Reclam:string; // * 01
    Respon:string; // * 02  00 para deudor, 01 para codeudor
    Estrac:string; // * 01  Estrato Social
    Rellen:string; // * 14  en ceros
end;

var
  frmProcesarDatacredito: TfrmProcesarDatacredito;
  PlanoReporte:TStringList;
  SumaNovedad:Integer;
  SumaRegistros:Integer;
  PlanoErrores:TStringList;
  MesCorteAct:string;
  MesCorteAnt:string;
  Mes,Ano : Integer;
  MesAnt,AnoAnt : string;
  MesAct,AnoAct : string;
  FechaAnt : TDate;
implementation

{$R *.dfm}

uses UnitDmGeneral, UnitGlobalesCol,UnitDmcolocacion, UnitMuestroArchivoData, UnitGlobales;

procedure TfrmProcesarDatacredito.CmdCerrarClick(Sender: TObject);
begin
        Close;
end;

procedure TfrmProcesarDatacredito.PrimerPaso;
var cadena:string;
    LineaC:string;
    i1,i2 :Integer;
    J:Integer;
begin
// Generar Encabezado del Archivo
      cadena := '000000000000000000';
      LineaC := cadena;
// Codigo y Tipo Cartera
      cadena := '27391927';
      LineaC := LineaC + cadena;
// Fecha Corte
      cadena := Format('%.4d',[YearOf(EdFechaCorte.Date)])+Format('%.2d',[monthOf(EdFechaCorte.Date)]);
      LineaC := LineaC + cadena;
// Ampliacion Milenio
      cadena := 'M';
      LineaC := LineaC + cadena;
// Indicador de Valores en Miles
      cadena := '0';
      LineaC := LineaC + cadena;
// Relleno
      cadena := '';
      i1 := 1;
      i2 := 326;
      for J := i1 to i2 do
          cadena := cadena + '0';
      LineaC := LineaC + cadena;
      PlanoReporte.Add(LineaC);
      CheckBox1.Checked := True;
end;

procedure TfrmProcesarDatacredito.SegundoPaso;
var cadena:string;
    LineaC:registro;
    LineaError:string;
    ColocacionNew:string;
    ConverColocacion:Int64;
    ColocacionAnt:string;
    ColocacionActual:string;
    DiasMora:Integer;
    NoCod:Integer;
    NovedadLocal:Integer;
    Fecha:TDate;
    Nombre:string;
    FechaNacimiento:string;
    DescAgencia:string;

    i,j: Integer;
    Entero: Integer;
    S1,S2 :TStringList;
    ColocacionErr : string;
begin
           if dmGeneral.IBTransaction1.InTransaction then
              dmGeneral.IBTransaction1.Rollback;
           dmGeneral.IBTransaction1.StartTransaction;

        with IBQuery1 do begin
          SQL.Clear;
          SQL.Add('select * from "col$erroresdata"');
          Open;
          while not Eof do begin
            DataErrores.Append;
            DataErrores.FieldByName('COLOCACION_ERRADO').AsString := FieldByName('COLOCACION_ERRADO').AsString;
            DataErrores.FieldByName('IDENTIFICACION').AsString := FieldByName('IDENTIFICACION').AsString;
            DataErrores.FieldByName('AGENCIA').AsInteger := FieldByName('AGENCIA').AsInteger;
            DataErrores.FieldByName('COLOCACION_CORRECTO').AsString := FieldByName('COLOCACION_CORRECTO').AsString;
            DataErrores.Post;
            IBQuery1.Next;
          end;
        end;
        
        SumaNovedad := 0;
        SumaRegistros := 0;
        with IBQuery1 do begin
           Close;
           SQL.Clear;
           SQL.Add('select count(*) as CONTEO from "col$causaciones" where FECHA_CORTE = :"FECHA_CORTE"');
           ParamByName('FECHA_CORTE').AsDate := EdFechaCorte.Date;
           try
            Open;
            if RecordCount < 1 then begin
              MessageDlg('No existe informaci�n con esa fecha de corte',mtInformation,[mbok],0);
              Transaction.Rollback;
              Exit;
            end;
            Bar.Min := 0;
            Bar.Max := FieldByName('CONTEO').AsInteger;
            Bar.Position := 0;
           except
              Transaction.Rollback;
              raise;
              Exit;
           end;
        end;

        with IBQuery1 do begin
           Close;
           SQL.Clear;
           SQL.Add('select * from "col$causaciones" where FECHA_CORTE = :FECHA_CORTE order by ID_COLOCACION ASC');
           ParamByName('FECHA_CORTE').AsDate := EdFechaCorte.Date;
           try
            Open;
           except
            Transaction.Rollback;
            raise;
            Exit;
           end;

           while not eof do begin
             Bar.Position := RecNo;
             Application.ProcessMessages;
             // Proceso informacion Clientes
             with IBSClientes do begin
              Close;
              SQL.Clear;
              SQL.Add('select ');
              SQL.Add('"col$colocacion".ID_IDENTIFICACION,');
              SQL.Add('"col$colocacion".ID_PERSONA,');
              SQL.Add('"col$colocacion".FECHA_DESEMBOLSO,');
              SQL.Add('"col$colocacion".FECHA_VENCIMIENTO,');
              SQL.Add('"col$colocacion".VALOR_CUOTA,');
              SQL.Add('"col$colocacion".ID_TIPO_CUOTA,');
              SQL.Add('"col$tiposcuota".INTERES,');
              SQL.Add('"gen$direccion".ID_DIRECCION,');
              SQL.Add('"gen$direccion".DIRECCION,');
              SQL.Add('"gen$direccion".MUNICIPIO,');
              SQL.Add('"gen$direccion".TELEFONO1');
              SQL.Add('from "col$colocacion"');
              SQL.Add('left join "gen$persona" on ("col$colocacion".ID_IDENTIFICACION = "gen$persona".ID_IDENTIFICACION and "col$colocacion".ID_PERSONA = "gen$persona".ID_PERSONA)');
              SQL.Add('left join "gen$direccion" on ("col$colocacion".ID_IDENTIFICACION = "gen$direccion".ID_IDENTIFICACION and "col$colocacion".ID_PERSONA = "gen$direccion".ID_PERSONA)');
              SQL.Add('INNER JOIN "col$tiposcuota" ON ("col$colocacion".ID_TIPO_CUOTA = "col$tiposcuota".ID_TIPOS_CUOTA)');
              SQL.Add('where');
              SQL.Add('"col$colocacion".ID_AGENCIA = :"ID_AGENCIA" and');
              SQL.Add('"col$colocacion".ID_COLOCACION = :"ID_COLOCACION"');
              ParamByName('ID_AGENCIA').AsInteger := IBQuery1.FieldByName('ID_AGENCIA').AsInteger;
              ParamByName('ID_COLOCACION').AsString := IBQuery1.FieldByName('ID_COLOCACION').AsString;
              ExecQuery;
              try
                ColocacionNew := IntToStr(IBQuery1.FieldByName('ID_AGENCIA').AsInteger) + IBQuery1.FieldByName('ID_COLOCACION').AsString;
                ConverColocacion := StrToInt64(ColocacionNew);
                ColocacionNew := Format('%.18d',[ConverColocacion]);       //'000000000000000000';
                ColocacionNew := stringreplace(Format('%18s',[colocacionnew]),' ','0',[rfReplaceAll]);
                NovedadLocal := 0;
              except
                ShowMessage(ColocacionNew);
                raise;
              end;
            end;
            LineaC.Numero := ColocacionNew;
            LineaC.Identificacion := StringReplace(Format('%11s',[trim(IBSClientes.FieldByName('ID_PERSONA').AsString)]),' ','0',[rfReplaceAll]);
            with IBPersona do begin
              Application.ProcessMessages;
              Close;
              SQL.Clear;
              SQL.Add('select PRIMER_APELLIDO, SEGUNDO_APELLIDO,');
              SQL.Add('NOMBRE, FECHA_NACIMIENTO');
              SQL.Add('from "gen$persona" where ');
              SQL.Add('ID_IDENTIFICACION = :"ID_IDENTIFICACION" and');
              SQL.Add('ID_PERSONA = :"ID_PERSONA"');
              ParamByName('ID_IDENTIFICACION').AsInteger := IBSClientes.FieldByName('ID_IDENTIFICACION').AsInteger;
              ParamByName('ID_PERSONA').AsString := IBSClientes.FieldByName('ID_PERSONA').AsString;
              ExecQuery;
              Nombre := Trim(IBPersona.FieldByName('PRIMER_APELLIDO').AsString + ' ' +
                      IBPersona.FieldByName('SEGUNDO_APELLIDO').AsString + ' ' +
                      IBPersona.FieldByName('NOMBRE').AsString);
//              Nombre := Format('%-45s',[leftstr(IBPersona.FieldByName('PRIMER_APELLIDO').AsString + ' ' +
//                      IBPersona.FieldByName('SEGUNDO_APELLIDO').AsString + ' ' +
//                      IBPersona.FieldByName('NOMBRE').AsString,45)]);

              FechaNacimiento := IBPersona.FieldByName('FECHA_NACIMIENTO').AsString;
              Close;
            end;

             LineaC.Nombre := Format('%-45s',[LeftStr(Nombre,45)]);
             Nombre := '';
             LineaC.FNacim := '000000';
             LineaC.FApert := Format('%.4d',[YearOf(IBSClientes.FieldByName('FECHA_DESEMBOLSO').AsDateTime)])+Format('%.2d',[monthOf(IBSClientes.FieldByName('FECHA_DESEMBOLSO').AsDateTime)]);
             LineaC.FVenci := Format('%.4d',[YearOf(IBSClientes.FieldByName('FECHA_VENCIMIENTO').AsDateTime)])+Format('%.2d',[monthOf(IBSClientes.FieldByName('FECHA_VENCIMIENTO').AsDateTime)]);
             LineaC.VCuota := Formatcurr('0000000000',IBSClientes.FieldByName('VALOR_CUOTA').ASCurrency);
             Fecha := IBQuery1.FieldByName('FECHA_INTERES').AsDateTime;
             if IBSClientes.FieldByName('INTERES').AsString = 'V' then
                Fecha := CalculoFecha(Fecha,IBQuery1.FieldByName('AMORTIZA_INTERES').AsInteger);
             Fecha := IncDay(Fecha);
             DiasMora := ObtenerDeudaFecha(IBQuery1.FieldByName('ID_AGENCIA').AsInteger,IBQuery1.FieldByName('ID_COLOCACION').AsString,EdFechaCorte.Date,IBSCodeudores).Dias;
//             DiasMora := DiasEntre(Fecha,EdFechaCorte.Date);
             NovedadLocal := Novedad(IBQuery1.FieldByName('ID_AGENCIA').AsInteger,IBQuery1.FieldByName('ID_COLOCACION').AsString,DiasMora);
             SumaNovedad := SumaNovedad + NovedadLocal;
             LineaC.Noveda := StringReplace(Format('%2s',[IntToStr(Novedadlocal)]),' ','0',[rfReplaceAll]);
             LineaC.Adjeti := adjetivo(IBQuery1.FieldByName('ID_AGENCIA').AsInteger,IBQuery1.FieldByName('ID_COLOCACION').AsString);
             case IBSClientes.FieldByName('ID_IDENTIFICACION').AsInteger of
               3 : LineaC.TpIden := '1';
               4 : LineaC.TpIden := '2';
               6 : LineaC.TpIden := '3';
               7 : LineaC.TpIden := '4';
               9 : LineaC.TpIden := '5';
               0 : LineaC.TpIden := '1';
             end;
            LineaC.ValIni := FormatCurr('0000000000',ibquery1.FieldByName('VALOR').AsCurrency);
            LineaC.ValDeu := FormatCurr('0000000000',ibquery1.FieldByName('DEUDA').AsCurrency);
            if (IBQuery1.FieldByName('ID_ARRASTRE').AsString = 'A') or (IBQuery1.FieldByName('ID_ARRASTRE').AsString = 'B') then
              LineaC.ValMor := FormatCurr('0000000000',ObtenerDeudaFecha(IBQuery1.FieldByName('ID_AGENCIA').AsInteger,IBQuery1.FieldByName('ID_COLOCACION').AsString,EdFechaCorte.Date,IBSCodeudores).Valor)
            else
              LineaC.ValMor := FormatCurr('0000000000',IBQuery1.FieldByName('DEUDA').AsCurrency);
            LineaC.ValDis := '0000000000';
            LineaC.TpMone := '1';
            LineaC.TpObli := IntToStr(IBQuery1.FieldByName('ID_CLASIFICACION').AsInteger);
            LineaC.TpGara := IntToStr(IBQuery1.FieldByName('ID_GARANTIA').AsInteger);
            LineaC.Califi := IBQuery1.FieldByName('ID_ARRASTRE').AsString;
            LineaC.CResid := Format('%15s',[leftstr(trim(ibsclientes.FieldByName('MUNICIPIO').AsString),15)]);
            LineaC.DResid := Format('%30s',[leftstr(trim(ibsclientes.FieldByName('DIRECCION').AsString),30)]);
            LineaC.TResid := StringReplace(Format('%10s',[leftstr(trim(ibsclientes.FieldByName('TELEFONO1').AsString),10)]),' ','0',[rfReplaceAll]);
            LineaC.CLabor := Format('%15s',[LeftStr(trim(ibsclientes.FieldByName('MUNICIPIO').AsString),15)]);
            LineaC.TLabor := StringReplace(Format('%10s',[LeftStr(trim(ibsclientes.FieldByName('TELEFONO1').AsString),10)]),' ','0',[rfReplaceAll]);
            LineaC.CCorre := Format('%15s',[leftstr(trim(ibsclientes.FieldByName('MUNICIPIO').AsString),15)]);
            LineaC.DCorre := Format('%30s',[leftstr(trim(ibsclientes.FieldByName('DIRECCION').AsString),30)]);
            LineaC.Ciiu := '000000';
            with IBSCuotas do
             begin
               Application.ProcessMessages;
               SQL.Clear;
               SQL.Add('select count(CUOTA_NUMERO) as CUOTAS from "col$tablaliquidacion"');
               SQL.Add('where ');
               SQL.Add('ID_AGENCIA = :"ID_AGENCIA" and');
               SQL.Add('ID_COLOCACION = :"ID_COLOCACION"');
               ParamByName('ID_AGENCIA').AsInteger := IBQuery1.FieldByName('ID_AGENCIA').AsInteger;
               ParamByName('ID_COLOCACION').AsString := IBQuery1.FieldByName('ID_COLOCACION').AsString;
               ExecQuery;
               try
                 LineaC.TCuota := Format('%.3d',[FieldByName('CUOTAS').AsInteger]);
                 Close;
               except
                 raise;
               end;
             end;
            with IBSCuotas do
             begin
               Application.ProcessMessages;
               SQL.Clear;
               SQL.Add('select count(CUOTA_NUMERO) as CUOTASPAG from "col$tablaliquidacion"');
               SQL.Add('where ');
               SQL.Add('ID_AGENCIA = :"ID_AGENCIA" and');
               SQL.Add('ID_COLOCACION = :"ID_COLOCACION" and');
               SQL.Add('PAGADA = 1 and FECHA_A_PAGAR <= :"FECHA_CORTE"');
               ParamByName('ID_AGENCIA').AsInteger := IBQuery1.FieldByName('ID_AGENCIA').AsInteger;
               ParamByName('ID_COLOCACION').AsString := IBQuery1.FieldByName('ID_COLOCACION').AsString;
               ParamByName('FECHA_CORTE').AsDate := EdFechaCorte.Date;
               ExecQuery;
               try
                 LineaC.CCance := Format('%.3d',[FieldByName('CUOTASPAG').AsInteger]);
                 Close;
               except
                 raise;
               end;
             end;
            if (NovedadLocal = 1) or (NovedadLocal = 5) then
             LineaC.CeMora := '000'
            else
            begin
              with IBSCuotas do
               begin
                 Application.ProcessMessages;
                 SQL.Clear;
                 SQL.Add('select count(CUOTA_NUMERO) as CUOTASMORA from "col$tablaliquidacion"');
                 SQL.Add('where ');
                 SQL.Add('ID_AGENCIA = :"ID_AGENCIA" and');
                 SQL.Add('ID_COLOCACION = :"ID_COLOCACION" and');
                 SQL.Add('FECHA_A_PAGAR <= :"FECHA_CORTE" and FECHA_PAGADA <= :"FECHA_CORTE" and');
                 SQL.Add('PAGADA = 0');
                 ParamByName('ID_AGENCIA').AsInteger := IBQuery1.FieldByName('ID_AGENCIA').AsInteger;
                 ParamByName('ID_COLOCACION').AsString := IBQuery1.FieldByName('ID_COLOCACION').AsString;
                 ParamByName('FECHA_CORTE').AsDate := EdFechaCorte.Date;
                 ExecQuery;
                 try
                   LineaC.CeMora := Format('%.3d',[FieldByName('CUOTASMORA').AsInteger]);
                   Close;
                 except
                 raise;
                 end;
               end;
            end;
            with IBQuery2 do
             begin
               Application.ProcessMessages;
               Close;
               SQL.Clear;
               SQL.Add('select FECHA_PAGADA from "col$tablaliquidacion"');
               SQL.Add('where ');
               SQL.Add('ID_AGENCIA = :"ID_AGENCIA" and');
               SQL.Add('ID_COLOCACION = :"ID_COLOCACION" and');
               SQL.Add('PAGADA = 1 and FECHA_PAGADA <= :FECHA_CORTE');
               ParamByName('ID_AGENCIA').AsInteger := IBQuery1.FieldByName('ID_AGENCIA').AsInteger;
               ParamByName('ID_COLOCACION').AsString := IBQuery1.FieldByName('ID_COLOCACION').AsString;
               ParamByName('FECHA_CORTE').AsDate := EdFechaCorte.Date;
               Open;
               try
                 IBQuery2.First;
                 IBQuery2.Last;
                 if IBQuery2.FieldByName('FECHA_PAGADA').AsDateTime <> 0 then
                    LineaC.FUPago := Format('%.4d',[YearOf(IBQuery2.FieldByName('FECHA_PAGADA').AsDateTime)])+ Format('%.2d',[monthOf(IBQuery2.FieldByName('FECHA_PAGADA').AsDateTime)]) + Format('%.2d',[DayOf(IBQuery2.FieldByName('FECHA_PAGADA').AsDateTime)])
                 else
                    LineaC.FUPago := '00000000';
                 Close;
               except
                 ShowMessage(LineaC.FUPago);
                 raise;
               end;
             end;
            with IBQuery2 do begin
             SQL.Clear;
             SQL.Add('select DESCRIPCION_AGENCIA from "gen$agencia" where ID_AGENCIA = :ID_AGENCIA');
             ParamByName('ID_AGENCIA').AsInteger := Agencia;
             Open;
             DescAgencia := LeftStr(Trim(FieldByName('DESCRIPCION_AGENCIA').AsString),15);
             Close;
            end;

            LineaC.Oficin := Format('%15s',[DescAgencia]);
            LineaC.CRadic := Format('%15s',[DescAgencia]);
            LineaC.FoPago := '0';
            case IBQuery1.FieldByName('AMORTIZA_CAPITAL').AsInteger of
              30 : LineaC.PePago := '1';
              60 : LineaC.PePago := '2';
              90 : LineaC.PePago := '3';
              180 : LineaC.PePago := '4';
              360 : LineaC.PePago := '5';
            end;
            if LineaC.PePago = '' then LineaC.PePago := '9';

            if (DiasMora < 30) then LineaC.EdMora := '001'
            else if (DiasMora >= 30) and (DiasMora < 60) then LineaC.EdMora := '030'
            else if (DiasMora >= 60) and (DiasMora < 90) then LineaC.EdMora := '060'
            else if (DiasMora >= 90) and (DiasMora < 120) then LineaC.EdMora := '090'
            else if (DiasMora >= 120) and (DiasMora < 150) then LineaC.EdMora := '120'
            else if (DiasMora >= 150) and (DiasMora < 180) then LineaC.EdMora := '150'
            else if (DiasMora >= 180) and (DiasMora < 210) then LineaC.EdMora := '180'
            else if (DiasMora >= 210) and (DiasMora < 240) then LineaC.EdMora := '210'
            else if (DiasMora >= 240) and (DiasMora < 270) then LineaC.EdMora := '240'
            else if (DiasMora >= 270) and (DiasMora < 300) then LineaC.EdMora := '270'
            else if (DiasMora >= 300) and (DiasMora < 330) then LineaC.EdMora := '300'
            else if (DiasMora >= 330) and (DiasMora < 360) then LineaC.EdMora := '330'
            else if (DiasMora > 360) then LineaC.EdMora := '360';
            LineaC.FActua := Format('%.4d',[YearOf(EdFechaCorte.Date)]) + Format('%.2d',[monthOf(EdFechaCorte.Date)]) + Format('%.2d',[DayOf(EdFechaCorte.Date)]);
            LineaC.Reclam := '0';
            LineaC.Respon := '00';
            LineaC.Estrac := '3';
            LineaC.Rellen := '              ';
            PlanoReporte.Add(LineaC.Numero + LineaC.Identificacion + LineaC.Nombre +
                             LineaC.FNacim + LineaC.FApert + LineaC.FVenci + LineaC.VCuota +
                             LineaC.Noveda + LineaC.Adjeti + LineaC.TpIden + LineaC.ValIni +
                             LineaC.ValDeu + LineaC.ValMor + LineaC.ValDis + LineaC.TpMone +
                             LineaC.TpObli + LineaC.TpGara + LineaC.Califi + LineaC.CResid +
                             LineaC.DResid + LineaC.TResid + LineaC.CLabor + LineaC.TLabor +
                             LineaC.CCorre + LineaC.DCorre + LineaC.Ciiu + LineaC.TCuota +
                             LineaC.CCance + LineaC.CeMora + LineaC.FUPago + LineaC.Oficin +
                             LineaC.CRadic + LineaC.FoPago + LineaC.PePago + LineaC.EdMora +
                             LineaC.FActua + LineaC.Reclam + LineaC.Respon + LineaC.Estrac + LineaC.Rellen);

            DataActual.Open;
            DataActual.Insert;
            DataActual.FieldByName('NUMERO').AsString := LineaC.Numero;
            DataActual.FieldByName('IDENTIFICACION').AsString := LineaC.Identificacion;
            DataActual.FieldByName('NOMBRE').AsString := LineaC.Nombre;
            DataActual.FieldByName('FNACIM').AsString := LineaC.FNacim;
            DataActual.FieldByName('FAPERT').AsString := LineaC.FApert;
            DataActual.FieldByName('FVENCI').AsString := LineaC.FVenci;
            DataActual.FieldByName('VCUOTA').AsString := LineaC.VCuota;
            DataActual.FieldByName('NOVEDA').AsString := LineaC.Noveda;
            DataActual.FieldByName('ADJETI').AsString := LineaC.Adjeti;
            DataActual.FieldByName('TPIDEN').AsString := LineaC.TpIden;
            DataActual.FieldByName('VALINI').AsString := LineaC.ValIni;
            DataActual.FieldByName('VALDEU').AsString := LineaC.ValDeu;
            DataActual.FieldByName('VALMOR').AsString := LineaC.ValMor;
            DataActual.FieldByName('VALDIS').AsString := LineaC.ValDis;
            DataActual.FieldByName('TPMONE').AsString := LineaC.TpMone;
            DataActual.FieldByName('TPOBLI').AsString := LineaC.TpObli;
            DataActual.FieldByName('TPGARA').AsString := LineaC.TpGara;
            DataActual.FieldByName('CALIFI').AsString := LineaC.Califi;
            DataActual.FieldByName('CRESID').AsString := LineaC.CResid;
            DataActual.FieldByName('DRESID').AsString := LineaC.DResid;
            DataActual.FieldByName('TRESID').AsString := LineaC.TResid;
            DataActual.FieldByName('CLABOR').AsString := LineaC.CLabor;
            DataActual.FieldByName('TLABOR').AsString := LineaC.TLabor;
            DataActual.FieldByName('CCORRE').AsString := LineaC.CCorre;
            DataActual.FieldByName('DCORRE').AsString := LineaC.DCorre;
            DataActual.FieldByName('CIIU').AsString := LineaC.Ciiu;
            DataActual.FieldByName('TCUOTA').AsString := LineaC.TCuota;
            DataActual.FieldByName('CCANCE').AsString := LineaC.CCance;
            DataActual.FieldByName('CEMORA').AsString := LineaC.CeMora;
            DataActual.FieldByName('FUPAGO').AsString := LineaC.FUPago;
            DataActual.FieldByName('OFICIN').AsString := LineaC.Oficin;
            DataActual.FieldByName('CRADIC').AsString := LineaC.CRadic;
            DataActual.FieldByName('FOPAGO').AsString := LineaC.FoPago;
            DataActual.FieldByName('PEPAGO').AsString := LineaC.PePago;
            DataActual.FieldByName('EDMORA').AsString := LineaC.EdMora;
            DataActual.FieldByName('FACTUA').AsString := LineaC.FActua;
            DataActual.FieldByName('RECLAM').AsString := LineaC.Reclam;
            DataActual.FieldByName('RESPON').AsString := LineaC.Respon;
            DataActual.FieldByName('ESTRAC').AsString := LineaC.Estrac;
            DataActual.FieldByName('RELLEN').AsString := LineaC.Rellen;
            DataActual.Post;
            DataActual.Close;

            SumaRegistros := SumaRegistros + 1;
            IBSClientes.Close;
            // fin de proceso clientes

            // Inicio proceso CODEUDORES
//             NoCod := 0;
             with IBSCodeudores do begin
              Close;
              SQL.Clear;
              SQL.Add('select ');
              SQL.Add('"col$colgarantias".ID_IDENTIFICACION,');
              SQL.Add('"col$colgarantias".ID_PERSONA,');
              SQL.Add('"col$colgarantias".CSC_GARANTIA,');
              SQL.Add('"gen$persona".PRIMER_APELLIDO,');
              SQL.Add('"gen$persona".SEGUNDO_APELLIDO,');
              SQL.Add('"gen$persona".NOMBRE,');
              SQL.Add('"gen$persona".FECHA_NACIMIENTO');
              SQL.Add('from "col$colgarantias"');
              SQL.Add('left join "gen$persona" on ("col$colgarantias".ID_IDENTIFICACION = "gen$persona".ID_IDENTIFICACION and "col$colgarantias".ID_PERSONA = "gen$persona".ID_PERSONA)');
              SQL.Add('where');
              SQL.Add('"col$colgarantias".ID_AGENCIA = :"ID_AGENCIA" and');
              SQL.Add('"col$colgarantias".ID_COLOCACION = :"ID_COLOCACION"');
              ParamByName('ID_AGENCIA').AsInteger := IBQuery1.FieldByName('ID_AGENCIA').AsInteger;
              ParamByName('ID_COLOCACION').AsString := IBQuery1.FieldByName('ID_COLOCACION').AsString;
              ExecQuery;
            end;

            while not IBSCodeudores.Eof do
             begin
               Application.ProcessMessages;
               ColocacionNew := IntToStr(IBQuery1.FieldByName('ID_AGENCIA').AsInteger) + IBQuery1.FieldByName('ID_COLOCACION').AsString;
               ConverColocacion := StrToInt64(ColocacionNew);
            //   ColocacionNew := Format('%.16d',[ConverColocacion]);
               ColocacionNew := ColocacionNew + 'C' + IntToStr(IBSCodeudores.FieldByName('CSC_GARANTIA').AsInteger);
               ColocacionNew := stringreplace(Format('%18s',[colocacionnew]),' ','0',[rfReplaceAll]);
             //  NovedadLocal := 0;

               LineaC.Numero := ColocacionNew;
               LineaC.Identificacion := StringReplace(Format('%11s',[trim(IBSCodeudores.FieldByName('ID_PERSONA').AsString)]),' ','0',[rfReplaceAll]);
               //proceso verificacion codeudores
               if DataErrores.Locate('COLOCACION_ERRADO;IDENTIFICACION',VarArrayOf([LineaC.Numero,trim(IBSCodeudores.FieldByName('ID_PERSONA').AsString)]),[locaseinsensitive]) then
                  LineaC.Numero := DataErrores.FieldValues['COLOCACION_CORRECTO'];
               //fin
               Nombre := Trim(IBSCodeudores.FieldByName('PRIMER_APELLIDO').AsString + ' '
                         + IBSCodeudores.FieldByName('SEGUNDO_APELLIDO').AsString + ' '
                         + IBSCodeudores.FieldByName('NOMBRE').AsString);
               LineaC.Nombre := Format('%-45s',[LeftStr(Nombre,45)]);
               Nombre := '';
               LineaC.FNacim := '000000';
               SumaNovedad := SumaNovedad + NovedadLocal;
               case IBSCodeudores.FieldByName('ID_IDENTIFICACION').AsInteger of
                 3 : LineaC.TpIden := '1';
                 4 : LineaC.TpIden := '2';
                 6 : LineaC.TpIden := '3';
                 7 : LineaC.TpIden := '4';
                 9 : LineaC.TpIden := '5';
                 0 : LineaC.TpIden := '1';
               end;

              with IBSCuotas do begin
               Application.ProcessMessages;
               IBSCuotas.Close;
               SQL.Clear;
               SQL.Add('select first 1');
               SQL.Add('"gen$direccion".ID_DIRECCION,');
               SQL.Add('"gen$direccion".DIRECCION,');
               SQL.Add('"gen$direccion".MUNICIPIO,');
               SQL.Add('"gen$direccion".TELEFONO1');
               SQL.Add('from "gen$direccion"');
               SQL.Add('where');
               SQL.Add('"gen$direccion".ID_IDENTIFICACION = :"ID_IDENTIFICACION" and');
               SQL.Add('"gen$direccion".ID_PERSONA = :"ID_PERSONA"');
               ParamByName('ID_IDENTIFICACION').AsInteger := IBSCodeudores.FieldByName('ID_IDENTIFICACION').AsInteger;
               ParamByName('ID_PERSONA').AsString := Trim(IBSCodeudores.FieldByName('ID_PERSONA').AsString);
               ExecQuery;
               LineaC.CResid := Format('%15s',[leftstr(trim(ibscuotas.FieldByName('MUNICIPIO').AsString),15)]);
               LineaC.DResid := Format('%30s',[leftstr(trim(ibscuotas.FieldByName('DIRECCION').AsString),30)]);
               LineaC.TResid := StringReplace(Format('%10s',[leftstr(trim(ibscuotas.FieldByName('TELEFONO1').AsString),10)]),' ','0',[rfReplaceAll]);
               LineaC.CLabor := Format('%15s',[leftstr(trim(ibscuotas.FieldByName('MUNICIPIO').AsString),15)]);
               LineaC.TLabor := StringReplace(Format('%10s',[leftstr(trim(ibscuotas.FieldByName('TELEFONO1').AsString),10)]),' ','0',[rfReplaceAll]);
               LineaC.CCorre := Format('%15s',[leftstr(trim(ibscuotas.FieldByName('MUNICIPIO').AsString),15)]);
               LineaC.DCorre := Format('%30s',[leftstr(trim(ibscuotas.FieldByName('DIRECCION').AsString),30)]);
               IBSCuotas.Close;
              end;

              LineaC.Respon := '01';


              PlanoReporte.Add(LineaC.Numero + LineaC.Identificacion + LineaC.Nombre +
                               LineaC.FNacim + LineaC.FApert + LineaC.FVenci + LineaC.VCuota +
                               LineaC.Noveda + LineaC.Adjeti + LineaC.TpIden + LineaC.ValIni +
                               LineaC.ValDeu + LineaC.ValMor + LineaC.ValDis + LineaC.TpMone +
                               LineaC.TpObli + LineaC.TpGara + LineaC.Califi + LineaC.CResid +
                               LineaC.DResid + LineaC.TResid + LineaC.CLabor + LineaC.TLabor +
                               LineaC.CCorre + LineaC.DCorre + LineaC.Ciiu + LineaC.TCuota +
                               LineaC.CCance + LineaC.CeMora + LineaC.FUPago + LineaC.Oficin +
                               LineaC.CRadic + LineaC.FoPago + LineaC.PePago + LineaC.EdMora +
                               LineaC.FActua + LineaC.Reclam + LineaC.Respon + LineaC.Estrac + LineaC.Rellen);

              DataActual.Open;
              DataActual.Insert;
              DataActual.FieldByName('NUMERO').AsString := LineaC.Numero;
              DataActual.FieldByName('IDENTIFICACION').AsString := LineaC.Identificacion;
              DataActual.FieldByName('NOMBRE').AsString := LineaC.Nombre;
              DataActual.FieldByName('FNACIM').AsString := LineaC.FNacim;
              DataActual.FieldByName('FAPERT').AsString := LineaC.FApert;
              DataActual.FieldByName('FVENCI').AsString := LineaC.FVenci;
              DataActual.FieldByName('VCUOTA').AsString := LineaC.VCuota;
              DataActual.FieldByName('NOVEDA').AsString := LineaC.Noveda;
              DataActual.FieldByName('ADJETI').AsString := LineaC.Adjeti;
              DataActual.FieldByName('TPIDEN').AsString := LineaC.TpIden;
              DataActual.FieldByName('VALINI').AsString := LineaC.ValIni;
              DataActual.FieldByName('VALDEU').AsString := LineaC.ValDeu;
              DataActual.FieldByName('VALMOR').AsString := LineaC.ValMor;
              DataActual.FieldByName('VALDIS').AsString := LineaC.ValDis;
              DataActual.FieldByName('TPMONE').AsString := LineaC.TpMone;
              DataActual.FieldByName('TPOBLI').AsString := LineaC.TpObli;
              DataActual.FieldByName('TPGARA').AsString := LineaC.TpGara;
              DataActual.FieldByName('CALIFI').AsString := LineaC.Califi;
              DataActual.FieldByName('CRESID').AsString := LineaC.CResid;
              DataActual.FieldByName('DRESID').AsString := LineaC.DResid;
              DataActual.FieldByName('TRESID').AsString := LineaC.TResid;
              DataActual.FieldByName('CLABOR').AsString := LineaC.CLabor;
              DataActual.FieldByName('TLABOR').AsString := LineaC.TLabor;
              DataActual.FieldByName('CCORRE').AsString := LineaC.CCorre;
              DataActual.FieldByName('DCORRE').AsString := LineaC.DCorre;
              DataActual.FieldByName('CIIU').AsString := LineaC.Ciiu;
              DataActual.FieldByName('TCUOTA').AsString := LineaC.TCuota;
              DataActual.FieldByName('CCANCE').AsString := LineaC.CCance;
              DataActual.FieldByName('CEMORA').AsString := LineaC.CeMora;
              DataActual.FieldByName('FUPAGO').AsString := LineaC.FUPago;
              DataActual.FieldByName('OFICIN').AsString := LineaC.Oficin;
              DataActual.FieldByName('CRADIC').AsString := LineaC.CRadic;
              DataActual.FieldByName('FOPAGO').AsString := LineaC.FoPago;
              DataActual.FieldByName('PEPAGO').AsString := LineaC.PePago;
              DataActual.FieldByName('EDMORA').AsString := LineaC.EdMora;
              DataActual.FieldByName('FACTUA').AsString := LineaC.FActua;
              DataActual.FieldByName('RECLAM').AsString := LineaC.Reclam;
              DataActual.FieldByName('RESPON').AsString := LineaC.Respon;
              DataActual.FieldByName('ESTRAC').AsString := LineaC.Estrac;
              DataActual.FieldByName('RELLEN').AsString := LineaC.Rellen;
              DataActual.Post;
              DataActual.Close;

              SumaRegistros := SumaRegistros + 1;
              IBSCodeudores.Next;
             end; // fin de While Codeudores
            IBSCodeudores.Close;
            // Fin proceso Codeudores
            Next;
//             end; // fin with IBSClientes
           end; // fin de while
           Close;
        end; //fin de with principal

//        PlanoReporte.SaveToFile('c:/Datacredito/Datacredito' + '2Paso' + '.TXT');
        CheckBox2.Checked := True;
end;

procedure TfrmProcesarDatacredito.TercerPaso;
var S3,S4 : TStringList;
    cadena:string;
    i1,i2 :Integer;
    J:Integer;
    LineaC:Registro;
    NovedadL:Integer;
    AgenciaLocal:Integer;
    ColocacionLocal:string;
    Dias:Integer;
    SaldoExtracto:Currency;
begin
{    with IBTmp do begin
     Close;
     SQL.Clear;
     SQL.Add('select * from "col$ReporteDatatmp"');
     Open;}

    try
       DataActual.Close;
    finally
       DataActual.Open;
    end;

    with IBSReporteAnt do begin
     Close;
     SQL.Clear;
     SQL.Add('select * from "col$ReporteData" where FECHA_CORTE =:FECHA_CORTE');
     ParamByName('FECHA_CORTE').AsString := MesCorteAnt;
     ExecQuery;
     while not IBSReporteAnt.Eof do begin
      cadena := IBSReporteAnt.FieldByName('NUMERO').AsString;
      // Proceso Novedad de Saldo = 0

      if not(DataActual.Locate('NUMERO;IDENTIFICACION',VarArrayOf([IBSReporteAnt.FieldByName('NUMERO').AsString,IBSReporteAnt.FieldByName('IDENTIFICACION').AsString]),[locaseinsensitive])) and
         ((IBSReporteAnt.FieldByName('NOVEDAD').AsString <> '05') and (IBSReporteAnt.FieldByName('NOVEDAD').AsString <> '14')) then
       begin
         LineaC.Numero := IBSReporteAnt.FieldByName('NUMERO').AsString;
         LineaC.Identificacion := IBSReporteAnt.FieldByName('IDENTIFICACION').AsString;
         LineaC.Nombre := Format('%-45s',[trim(IBSReporteAnt.FieldByName('NOMBRE').AsString)]);
         LineaC.FNacim := '000000'; //IBSReporteAnt.FieldByName('FNACIM').AsString;
         LineaC.FApert := IBSReporteAnt.FieldByName('FAPERT').AsString;
         LineaC.FVenci := IBSReporteAnt.FieldByName('FVENCI').AsString;
         LineaC.VCuota := IBSReporteAnt.FieldByName('VCUOTA').AsString;
//
      if MidStr(cadena,17,1) = 'C' then
       begin
         AgenciaLocal := StrToInt(MidStr(cadena,5,1));
         ColocacionLocal := MidStr(cadena,6,11);
       end
      else
       begin
         AgenciaLocal := StrToInt(MidStr(cadena,7,1));
         ColocacionLocal := MidStr(cadena,8,11);
       end;



      with IBSCodeudores do begin
       Close;
       SQL.Clear;
       SQL.Add('select ID_ESTADO_COLOCACION from "col$colocacion"');
       SQL.Add('where ID_AGENCIA = :ID_AGENCIA and ID_COLOCACION = :ID_COLOCACION');
       ParamByName('ID_AGENCIA').AsInteger := AgenciaLocal;
       ParamByName('ID_COLOCACION').AsString := ColocacionLocal;
       ExecQuery;
       if IBSCodeudores.FieldByName('ID_ESTADO_COLOCACION').AsInteger = 6 then
         NovedadL := 14
       else if IBSCodeudores.FieldByName('ID_ESTADO_COLOCACION').AsInteger = 7 then
         NovedadL := 5;
       Close;
      end;
      // Fin proceso novedad


         LineaC.Noveda := StringReplace(Format('%2s',[IntToStr(NovedadL)]),' ','0',[rfReplaceAll]);
         SumaNovedad := SumaNovedad + NovedadL;
         NovedadL := 0;
         LineaC.Adjeti := IBSReporteAnt.FieldByName('ADJETI').AsString;
         LineaC.TpIden := IBSReporteAnt.FieldByName('TPIDEN').AsString;
         LineaC.ValIni := IBSReporteAnt.FieldByName('VALINI').AsString;
         LineaC.ValDeu := IBSReporteAnt.FieldByName('VALDEU').AsString;
         LineaC.ValMor := '0000000000'; //IBSReporteAnt.FieldByName('VALMOR').AsString;
         LineaC.ValDis := IBSReporteAnt.FieldByName('VALDIS').AsString;
         LineaC.TpMone := IBSReporteAnt.FieldByName('TPMONE').AsString;
         LineaC.TpObli := IBSReporteAnt.FieldByName('TPOBLI').AsString;
         LineaC.TpGara := IBSReporteAnt.FieldByName('TPGARA').AsString;
         LineaC.Califi := IBSReporteAnt.FieldByName('CALIFI').AsString;
         LineaC.CResid := Format('%15s',[trim(IBSReporteAnt.FieldByName('CRESID').AsString)]);
         LineaC.DResid := Format('%30s',[trim(IBSReporteAnt.FieldByName('DRESID').AsString)]);
         LineaC.TResid := IBSReporteAnt.FieldByName('TRESID').AsString;
         LineaC.CLabor := Format('%15s',[trim(IBSReporteAnt.FieldByName('CLABOR').AsString)]);
         LineaC.TLabor := IBSReporteAnt.FieldByName('TLABOR').AsString;
         LineaC.CCorre := Format('%15s',[trim(IBSReporteAnt.FieldByName('CCORRE').AsString)]);
         LineaC.DCorre := Format('%30s',[trim(IBSReporteAnt.FieldByName('DCORRE').AsString)]);
         LineaC.Ciiu :=  IBSReporteAnt.FieldByName('CIIU').AsString;
         LineaC.TCuota := IBSReporteAnt.FieldByName('TCUOTA').AsString;
         LineaC.CCance := IBSReporteAnt.FieldByName('CCANCE').AsString;
         LineaC.CeMora := IBSReporteAnt.FieldByName('CEMORA').AsString;
         LineaC.FUPago := '00000000'; //IBSReporteAnt.FieldByName('FUPAGO').AsString;
         LineaC.Oficin := Format('%15s',[trim(IBSReporteAnt.FieldByName('OFICIN').AsString)]);
         LineaC.CRadic := Format('%15s',[trim(IBSReporteAnt.FieldByName('CRADIC').AsString)]);
         LineaC.FoPago := IBSReporteAnt.FieldByName('FOPAGO').AsString;
         LineaC.PePago := IBSReporteAnt.FieldByName('PEPAGO').AsString;
         LineaC.EdMora := IBSReporteAnt.FieldByName('EDMORA').AsString;
         LineaC.FActua := Format('%.4d',[YearOf(EdFechaCorte.Date)]) + Format('%.2d',[monthOf(EdFechaCorte.Date)]) + Format('%.2d',[DayOf(EdFechaCorte.Date)]);
         LineaC.Reclam := IBSReporteAnt.FieldByName('RECLAM').AsString;
         LineaC.Respon := IBSReporteAnt.FieldByName('RESPON').AsString;
         LineaC.Estrac := IBSReporteAnt.FieldByName('ESTRAC').AsString;
         LineaC.Rellen := IBSReporteAnt.FieldByName('RELLEN').AsString;

         PlanoReporte.Add(LineaC.Numero + LineaC.Identificacion + LineaC.Nombre +
                          LineaC.FNacim + LineaC.FApert + LineaC.FVenci + LineaC.VCuota +
                          LineaC.Noveda + LineaC.Adjeti + LineaC.TpIden + LineaC.ValIni +
                          LineaC.ValDeu + LineaC.ValMor + LineaC.ValDis + LineaC.TpMone +
                          LineaC.TpObli + LineaC.TpGara + LineaC.Califi + LineaC.CResid +
                          LineaC.DResid + LineaC.TResid + LineaC.CLabor + LineaC.TLabor +
                          LineaC.CCorre + LineaC.DCorre + LineaC.Ciiu + LineaC.TCuota +
                          LineaC.CCance + LineaC.CeMora + LineaC.FUPago + LineaC.Oficin +
                          LineaC.CRadic + LineaC.FoPago + LineaC.PePago + LineaC.EdMora +
                          LineaC.FActua + LineaC.Reclam + LineaC.Respon + LineaC.Estrac + LineaC.Rellen);

            DataSaldados.Open;
            DataSaldados.Insert;
            DataSaldados.FieldByName('NUMERO').AsString := LineaC.Numero;
            DataSaldados.FieldByName('IDENTIFICACION').AsString := LineaC.Identificacion;
            DataSaldados.FieldByName('NOMBRE').AsString := LineaC.Nombre;
            DataSaldados.FieldByName('FNACIM').AsString := LineaC.FNacim;
            DataSaldados.FieldByName('FAPERT').AsString := LineaC.FApert;
            DataSaldados.FieldByName('FVENCI').AsString := LineaC.FVenci;
            DataSaldados.FieldByName('VCUOTA').AsString := LineaC.VCuota;
            DataSaldados.FieldByName('NOVEDA').AsString := LineaC.Noveda;
            DataSaldados.FieldByName('ADJETI').AsString := LineaC.Adjeti;
            DataSaldados.FieldByName('TPIDEN').AsString := LineaC.TpIden;
            DataSaldados.FieldByName('VALINI').AsString := LineaC.ValIni;
            DataSaldados.FieldByName('VALDEU').AsString := LineaC.ValDeu;
            DataSaldados.FieldByName('VALMOR').AsString := LineaC.ValMor;
            DataSaldados.FieldByName('VALDIS').AsString := LineaC.ValDis;
            DataSaldados.FieldByName('TPMONE').AsString := LineaC.TpMone;
            DataSaldados.FieldByName('TPOBLI').AsString := LineaC.TpObli;
            DataSaldados.FieldByName('TPGARA').AsString := LineaC.TpGara;
            DataSaldados.FieldByName('CALIFI').AsString := LineaC.Califi;
            DataSaldados.FieldByName('CRESID').AsString := LineaC.CResid;
            DataSaldados.FieldByName('DRESID').AsString := LineaC.DResid;
            DataSaldados.FieldByName('TRESID').AsString := LineaC.TResid;
            DataSaldados.FieldByName('CLABOR').AsString := LineaC.CLabor;
            DataSaldados.FieldByName('TLABOR').AsString := LineaC.TLabor;
            DataSaldados.FieldByName('CCORRE').AsString := LineaC.CCorre;
            DataSaldados.FieldByName('DCORRE').AsString := LineaC.DCorre;
            DataSaldados.FieldByName('CIIU').AsString := LineaC.Ciiu;
            DataSaldados.FieldByName('TCUOTA').AsString := LineaC.TCuota;
            DataSaldados.FieldByName('CCANCE').AsString := LineaC.CCance;
            DataSaldados.FieldByName('CEMORA').AsString := LineaC.CeMora;
            DataSaldados.FieldByName('FUPAGO').AsString := LineaC.FUPago;
            DataSaldados.FieldByName('OFICIN').AsString := LineaC.Oficin;
            DataSaldados.FieldByName('CRADIC').AsString := LineaC.CRadic;
            DataSaldados.FieldByName('FOPAGO').AsString := LineaC.FoPago;
            DataSaldados.FieldByName('PEPAGO').AsString := LineaC.PePago;
            DataSaldados.FieldByName('EDMORA').AsString := LineaC.EdMora;
            DataSaldados.FieldByName('FACTUA').AsString := LineaC.FActua;
            DataSaldados.FieldByName('RECLAM').AsString := LineaC.Reclam;
            DataSaldados.FieldByName('RESPON').AsString := LineaC.Respon;
            DataSaldados.FieldByName('ESTRAC').AsString := LineaC.Estrac;
            DataSaldados.FieldByName('RELLEN').AsString := LineaC.Rellen;
            DataSaldados.Post;
            DataSaldados.Close;

         SumaRegistros := SumaRegistros + 1;
       end;  // fin de if operacion de inclusion en registro
       Next;
      end;  // fin de While
    end; //fin de with principal;
//    end; // fin with temporal

    IBSReporteAnt.Close;
//    IBTmp.Close;

//        PlanoReporte.SaveToFile('c:/Datacredito/Datacredito' + '3Pasof' + '.TXT');
    CheckBox3.Checked := True;
end;

procedure TfrmProcesarDatacredito.CmdProcesarClick(Sender: TObject);
begin
        CmdProcesar.Enabled := False;
        with IBSClientes do begin
         Close;
         SQL.Clear;
         SQL.Add('select * from "col$controlreportedata" where FECHA_CORTE =:FECHA_CORTE and DATACREDITO = 1');
         ParamByName('FECHA_CORTE').AsString := MesCorteAct;
         ExecQuery;
         if RecordCount > 0 then begin
           MessageDlg('El Reporte DATACREDITO para esta Fecha' +  #13 + 'Ya fue Generado',mtError,[mbok],0);
           Exit;
         end;
         Close;
        end;

        primerpaso;
        segundopaso;
        castigados;
        tercerpaso;
        cuartopaso;
        quintopaso;
        PlanoReporte.SaveToFile('c:/Datacredito' + MesCorteAct + '.TXT');

        if IBSClientes.Transaction.InTransaction then
          IBSClientes.Transaction.Commit;
        IBSClientes.Transaction.StartTransaction;

        with IBSClientes do begin
         Close;
         SQL.Clear;
         SQL.Add('insert into "col$controlreportedata" (FECHA_CORTE,FECHA_PROCESO,ID_EMPLEADO,PROCESADO,DATACREDITO,CIFIN,TREGISTROS,TNOVEDAD) VALUES(:FECHA_CORTE,:FECHA_PROCESO,:ID_EMPLEADO,:PROCESADO,1,0,:TREGISTROS,:TNOVEDAD)');
         ParamByName('FECHA_CORTE').AsString := MesCorteAct;
         ParamByName('FECHA_PROCESO').AsDate := fFechaActual;
         ParamByName('ID_EMPLEADO').AsString := DBAlias;
         ParamByName('PROCESADO').AsInteger := 1;
         ParamByName('TREGISTROS').AsInteger := SumaRegistros;
         ParamByName('TNOVEDAD').AsInteger := SumaNovedad;
         ExecQuery;
         Close;
         IBSClientes.Transaction.Commit;
        end;             

        CmdGenerar.Enabled := True;
end;

procedure TfrmProcesarDatacredito.FormShow(Sender: TObject);
begin
        PlanoReporte := TStringList.Create;
//        PlanoErrores := TStringList.Create;
        PlanoReporte.Clear;
//        PlanoErrores.Clear;
        dmColocacion.IBDSagencias.Active := True;
        EdFechaCorte.Date := RecodeDay(Date,Dayof(EndOfAMonth(YearOf(Date),MonthOf(Date))));
        Mes := MonthOf(EdFechaCorte.Date);
        Ano := YearOf(EdFechaCorte.Date);
        MesAct := FormatCurr('00',Mes);
        AnoAct := FormatCurr('0000',Ano);
        Mes := Mes - 1;
        if Mes = 0 then begin
          Mes  := 12;
          AnoAnt := FormatCurr('0000',Ano - 1);
        end
        else
          AnoAnt := FormatCurr('0000',Ano);
        MesAnt := FormatCurr('00',Mes);
        MesCorteAnt := AnoAnt + MesAnt;
        MesCorteAct := IntToStr(YearOf(edFechaCorte.Date)) + MesAct;
end;

function TfrmProcesarDatacredito.Novedad(IdAgencia: Integer;
  IdColocacion: string;Dias:Integer): Integer;
var
Mora:Integer;
Novedad:integer;
Saldo:Currency;
Estado:Integer;
Edad:string;
begin
        if (Dias < 30) then Novedad := 1 //'01'
        else if (Dias >= 30) and (Dias < 60) then Novedad := 6 //'06'
        else if (Dias >= 60) and (Dias < 90) then Novedad := 7 //'07'
        else if (Dias >= 90) and (Dias < 120) then Novedad := 8 //'08'
        else if (Dias >= 120) and (Dias < 180) then Novedad := 9 //'09'
        else if (Dias >= 180) then Novedad := 12; //'12';

{        with IBSCuotas do begin
         Close;
         SQL.Clear;
         SQL.Add('select (VALOR_DESEMBOLSO - ABONOS_CAPITAL) as SALDO, ID_ESTADO_COLOCACION');
         SQL.Add('from "col$colocacion"');
         SQL.Add('where ');
         SQL.Add('ID_AGENCIA =:"ID_AGENCIA" and');
         SQL.Add('ID_COLOCACION =:"ID_COLOCACION"');
         ParamByName('ID_AGENCIA').AsInteger := IDAgencia;
         ParamByName('ID_COLOCACION').AsString := IdColocacion;
         ExecQuery;
         Saldo := FieldByName('SALDO').AsCurrency;
         Estado := FieldByName('ID_ESTADO_COLOCACION').AsInteger;
        end;

        if (Saldo = 0) then
         begin
           if (Estado = 7) then Novedad := 5 //'05'
           else if (Estado = 6) then Novedad := 14; //'14';
         end
        else
           if (Estado >= 3)then
              Novedad := 13; //'13';

        Result := Novedad;
          }

        with IBSCuotas do begin
         Close;
         SQL.Clear;
         SQL.Add('select "col$causaciones".DEUDA, "col$causaciones".ID_EDAD');
         SQL.Add('from "col$causaciones"');
         SQL.Add('where ID_AGENCIA = :ID_AGENCIA and');
         SQL.Add('ID_COLOCACION = :ID_COLOCACION and');
         SQL.Add('FECHA_CORTE = :FECHA_CORTE');
         ParamByName('ID_AGENCIA').AsInteger := IDAgencia;
         ParamByName('ID_COLOCACION').AsString := IdColocacion;
         ParamByName('FECHA_CORTE').AsDate := EdFechaCorte.Date;
         ExecQuery;
         Saldo := FieldByName('DEUDA').AsCurrency;
         Edad := FieldByName('ID_EDAD').AsString;

         if (Saldo = 0) then
          begin
            if (Edad = 'A') or (Edad = 'B') then Novedad := 5 //'05'
            else if (Edad = 'C') then Novedad := 14; //'14';
          end;
        end;

        Result := Novedad;
end;

function TfrmProcesarDatacredito.Adjetivo(IdAgencia: Integer;
  IdColocacion: string): string;
var
Estado:Integer;
Castigado,Fallecido:Integer;
begin
        with IBSCuotas do begin
         Close;
         SQL.Clear;
         SQL.Add('select ID_ESTADO_COLOCACION from "col$estado"');
         SQL.Add('where');
         SQL.Add('ES_FALLECIDO = 1');
         ExecQuery;
         Fallecido := FieldByName('ID_ESTADO_COLOCACION').AsInteger;
         Close;

         SQL.Clear;
         SQL.Add('select ID_ESTADO_COLOCACION from "col$colocacion"');
         SQL.Add('where ');
         SQL.Add('ID_AGENCIA =:"ID_AGENCIA" and');
         SQL.Add('ID_COLOCACION =:"ID_COLOCACION"');
         ParamByName('ID_AGENCIA').AsInteger := IdAgencia;
         ParamByName('ID_COLOCACION').AsString := IdColocacion;
         ExecQuery;
         Estado := FieldByName('ID_ESTADO_COLOCACION').AsInteger;
         Close;
        end;

        if (Estado = Fallecido) then Result := '16'
        else Result := '00';

end;

procedure TfrmProcesarDatacredito.FormCreate(Sender: TObject);
begin
        DmColocacion := TDmColocacion.Create(Self);
end;

procedure TfrmProcesarDatacredito.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
        DmColocacion.Free;
        Action := caFree;
end;

procedure TfrmProcesarDatacredito.CmdGenerarClick(Sender: TObject);
begin
//        PlanoReporte.SaveToFile('c:/Datacredito' + MesCorteAct + '.TXT');
//        PlanoErrores.SaveToFile('c:/Datacredito/ErroresDatacredito' + MesCorteAct + '.TXT');
        CmdVer.Enabled := True;
end;

procedure TfrmProcesarDatacredito.CmdVerClick(Sender: TObject);
var frmMuestroArchivoData : TfrmMuestroArchivoData;
begin
        frmMuestroArchivoData := TfrmMuestroArchivoData.Create(Self);
        frmMuestroArchivoData.FechaCorte := MesCorteAct;
        frmMuestroArchivoData.ShowModal;
end;

procedure TfrmProcesarDatacredito.CuartoPaso;
var cadena:string;
    LineaC:string;
    i1,i2 :Integer;
    J:Integer;
begin
// Generar Identificador
      cadena := 'ZZZZZZZZZZZZZZZZZZ';
      LineaC := cadena;
// Fecha Proceso
      cadena := Format('%.2d',[dayof(Date)])+Format('%.2d',[monthOf(Date)])+Format('%.4d',[YearOf(Date)]);
      LineaC := LineaC + cadena;
// Numero de Regitros
      cadena := StringReplace(Format('%8d',[SumaRegistros + 2]),' ','0',[rfReplaceAll]);
      LineaC := LineaC + cadena;
// Sumatoria Novedades
      cadena := StringReplace(Format('%8d',[SumaNovedad]),' ','0',[rfReplaceAll]);
      LineaC := LineaC + cadena;
// Relleno
      cadena := '';
      i1 := 1;
      i2 := 318;
      for J := i1 to i2 do
          cadena := cadena + '0';
      LineaC := LineaC + cadena;
      PlanoReporte.Add(LineaC);
      CheckBox5.Checked := True;
      CmdGenerar.Enabled := True;
end;

procedure TfrmProcesarDatacredito.EdFechaCorteExit(Sender: TObject);
begin
        Mes := MonthOf(EdFechaCorte.Date);
        Ano := YearOf(EdFechaCorte.Date);
        MesAct := FormatCurr('00',Mes);
        AnoAct := FormatCurr('0000',Ano);
        Mes := Mes - 1;
        if Mes = 0 then begin
          Mes  := 12;
          AnoAnt := FormatCurr('0000',Ano - 1);
        end
        else
          AnoAnt := FormatCurr('0000',Ano);
        MesAnt := FormatCurr('00',Mes);
        MesCorteAnt := AnoAnt + MesAnt;
        MesCorteAct := IntToStr(YearOf(edFechaCorte.Date)) + MesAct;
end;

procedure TfrmProcesarDatacredito.Castigados;
var cadena:string;
    LineaC:registro;
    LineaError:string;
    ColocacionNew:string;
    ConverColocacion:Int64;
    ColocacionAnt:string;
    ColocacionActual:string;
    DiasMora:Integer;
    NoCod:Integer;
    NovedadLocal:Integer;
    Fecha:TDate;
    Nombre:string;
    FechaNacimiento:string;

    i,j: Integer;
    Entero: Integer;
    S1,S2 :TStringList;
    ColocacionErr : string;
begin
        with IBQuery1 do begin
           Close;
           SQL.Clear;
           SQL.Add('select ');
           SQL.Add('"col$colocacion".ID_AGENCIA,');
           SQL.Add('"col$colocacion".ID_COLOCACION,');
           SQL.Add('"col$colocacion".ID_IDENTIFICACION,');
           SQL.Add('"col$colocacion".ID_PERSONA,');
           SQL.Add('"col$colocacion".FECHA_DESEMBOLSO,');
           SQL.Add('"col$colocacion".FECHA_VENCIMIENTO,');
           SQL.Add('"col$colocacion".VALOR_CUOTA,');
           SQL.Add('"col$colocacion".ID_TIPO_CUOTA,');
           SQL.Add('"col$colocacion".FECHA_INTERES,');
           SQL.Add('"col$colocacion".AMORTIZA_INTERES,');
           SQL.Add('"col$colocacion".AMORTIZA_CAPITAL,');
           SQL.Add('"col$colocacion".ID_EVALUACION,');
           SQL.Add('"col$colocacion".ID_GARANTIA,');
           SQL.Add('"col$colocacion".ID_CLASIFICACION,');
           SQL.Add('"col$colocacion".VALOR_DESEMBOLSO,');
           SQL.Add('("col$colocacion".VALOR_DESEMBOLSO - ABONOS_CAPITAL) AS SALDO,');
           SQL.Add('"col$tiposcuota".INTERES');
           SQL.Add('from "col$colocacion"');
           SQL.Add('left join "gen$persona" on ("col$colocacion".ID_IDENTIFICACION = "gen$persona".ID_IDENTIFICACION and "col$colocacion".ID_PERSONA = "gen$persona".ID_PERSONA)');
           SQL.Add('INNER JOIN "col$tiposcuota" ON ("col$colocacion".ID_TIPO_CUOTA = "col$tiposcuota".ID_TIPOS_CUOTA)');
           SQL.Add('where');
           SQL.Add('"col$colocacion".ID_ESTADO_COLOCACION = 3');
           SQL.Add('and ("col$colocacion".VALOR_DESEMBOLSO - "col$colocacion".ABONOS_CAPITAL) > 0');
           try
            Open;
           except
            Transaction.Rollback;
            raise;
            Exit;
           end;

           while not eof do begin
             Application.ProcessMessages;
             // Proceso informacion Clientes
             ColocacionNew := IntToStr(IBQuery1.FieldByName('ID_AGENCIA').AsInteger) + IBQuery1.FieldByName('ID_COLOCACION').AsString;
             ConverColocacion := StrToInt64(ColocacionNew);
             ColocacionNew := Format('%.18d',[ConverColocacion]);       //'000000000000000000';
             ColocacionNew := stringreplace(Format('%18s',[colocacionnew]),' ','0',[rfReplaceAll]);
             NovedadLocal := 0;

             LineaC.Numero := ColocacionNew;
             LineaC.Identificacion := StringReplace(Format('%11s',[trim(IBQuery1.FieldByName('ID_PERSONA').AsString)]),' ','0',[rfReplaceAll]);
             with IBPersona do begin
               Application.ProcessMessages;
               IBPersona.Close;
               SQL.Clear;
               SQL.Add('select "gen$persona".PRIMER_APELLIDO,');
               SQL.Add('"gen$persona".SEGUNDO_APELLIDO,');
               SQL.Add('"gen$persona".NOMBRE, "gen$persona".FECHA_NACIMIENTO,');
               SQL.Add('"gen$direccion".ID_DIRECCION,');
               SQL.Add('"gen$direccion".DIRECCION,');
               SQL.Add('"gen$direccion".MUNICIPIO,');
               SQL.Add('"gen$direccion".TELEFONO1');
               SQL.Add('from "gen$persona"');
               SQL.Add('left join "gen$direccion" on ("gen$persona".ID_IDENTIFICACION = "gen$direccion".ID_IDENTIFICACION and "gen$persona".ID_PERSONA = "gen$direccion".ID_PERSONA)');
               SQL.Add('where');
               SQL.Add('"gen$persona".ID_IDENTIFICACION = :"ID_IDENTIFICACION" and');
               SQL.Add('"gen$persona".ID_PERSONA = :"ID_PERSONA"');
               ParamByName('ID_IDENTIFICACION').AsInteger := IBQuery1.FieldByName('ID_IDENTIFICACION').AsInteger;
               ParamByName('ID_PERSONA').AsString := IBQuery1.FieldByName('ID_PERSONA').AsString;
               ExecQuery;
               Nombre := Trim(IBPersona.FieldByName('PRIMER_APELLIDO').AsString + ' ' +
                      IBPersona.FieldByName('SEGUNDO_APELLIDO').AsString + ' ' +
                      IBPersona.FieldByName('NOMBRE').AsString);
               FechaNacimiento := IBPersona.FieldByName('FECHA_NACIMIENTO').AsString;
            end;

             LineaC.Nombre := Format('%-45s',[nombre]);
             Nombre := '';
             LineaC.FNacim := '000000';
             LineaC.FApert := Format('%.4d',[YearOf(IBQuery1.FieldByName('FECHA_DESEMBOLSO').AsDateTime)])+Format('%.2d',[monthOf(IBQuery1.FieldByName('FECHA_DESEMBOLSO').AsDateTime)]);
             LineaC.FVenci := Format('%.4d',[YearOf(IBQuery1.FieldByName('FECHA_VENCIMIENTO').AsDateTime)])+Format('%.2d',[monthOf(IBQuery1.FieldByName('FECHA_VENCIMIENTO').AsDateTime)]);
             LineaC.VCuota := Formatcurr('0000000000',IBQuery1.FieldByName('VALOR_CUOTA').ASCurrency);
             Fecha := IBQuery1.FieldByName('FECHA_INTERES').AsDateTime;
             if IBQuery1.FieldByName('INTERES').AsString = 'V' then
                Fecha := CalculoFecha(Fecha,IBQuery1.FieldByName('AMORTIZA_INTERES').AsInteger);
             Fecha := IncDay(Fecha);
             DiasMora := DiasEntre(Fecha,EdFechaCorte.Date);
             NovedadLocal := 13; //Novedad(IBQuery1.FieldByName('ID_AGENCIA').AsInteger,IBQuery1.FieldByName('ID_COLOCACION').AsString,DiasMora);
             SumaNovedad := SumaNovedad + NovedadLocal;
             LineaC.Noveda := StringReplace(Format('%2s',[IntToStr(Novedadlocal)]),' ','0',[rfReplaceAll]);
             LineaC.Adjeti := adjetivo(IBQuery1.FieldByName('ID_AGENCIA').AsInteger,IBQuery1.FieldByName('ID_COLOCACION').AsString);
             case IBQuery1.FieldByName('ID_IDENTIFICACION').AsInteger of
               3 : LineaC.TpIden := '1';
               4 : LineaC.TpIden := '2';
               6 : LineaC.TpIden := '3';
               7 : LineaC.TpIden := '4';
               9 : LineaC.TpIden := '5';
               0 : LineaC.TpIden := '1';
             end;
            LineaC.ValIni := FormatCurr('0000000000',IBQuery1.FieldByName('VALOR_DESEMBOLSO').AsCurrency);
            LineaC.ValDeu := FormatCurr('0000000000',IBQuery1.FieldByName('SALDO').AsCurrency);
            if (IBQuery1.FieldByName('ID_EVALUACION').AsString = 'A') or (IBQuery1.FieldByName('ID_EVALUACION').AsString = 'B') then
              LineaC.ValMor := FormatCurr('0000000000',ObtenerDeudafecha(IBQuery1.FieldByName('ID_AGENCIA').AsInteger,IBQuery1.FieldByName('ID_COLOCACION').AsString,EdFechaCorte.Date,IBSCodeudores).Valor)
            else
              LineaC.ValMor := FormatCurr('0000000000',IBQuery1.FieldByName('SALDO').AsCurrency);
            LineaC.ValDis := '0000000000';
            LineaC.TpMone := '1';
            LineaC.TpObli := IntToStr(IBQuery1.FieldByName('ID_CLASIFICACION').AsInteger);
            LineaC.TpGara := IntToStr(IBQuery1.FieldByName('ID_GARANTIA').AsInteger);
            LineaC.Califi := IBQuery1.FieldByName('ID_EVALUACION').AsString;
            LineaC.CResid := Format('%15s',[leftstr(trim(IBPersona.FieldByName('MUNICIPIO').AsString),15)]);
            LineaC.DResid := Format('%30s',[leftstr(trim(IBPersona.FieldByName('DIRECCION').AsString),30)]);
            LineaC.TResid := StringReplace(Format('%10s',[leftstr(trim(IBPersona.FieldByName('TELEFONO1').AsString),10)]),' ','0',[rfReplaceAll]);
            LineaC.CLabor := Format('%15s',[LeftStr(trim(IBPersona.FieldByName('MUNICIPIO').AsString),15)]);
            LineaC.TLabor := StringReplace(Format('%10s',[LeftStr(trim(IBPersona.FieldByName('TELEFONO1').AsString),10)]),' ','0',[rfReplaceAll]);
            LineaC.CCorre := Format('%15s',[leftstr(trim(IBPersona.FieldByName('MUNICIPIO').AsString),15)]);
            LineaC.DCorre := Format('%30s',[leftstr(trim(IBPersona.FieldByName('DIRECCION').AsString),30)]);
            IBPersona.Close;
            LineaC.Ciiu := '000000';
            with IBSCuotas do
             begin
               Application.ProcessMessages;
               SQL.Clear;
               SQL.Add('select count(CUOTA_NUMERO) as CUOTAS from "col$tablaliquidacion"');
               SQL.Add('where ');
               SQL.Add('ID_AGENCIA = :"ID_AGENCIA" and');
               SQL.Add('ID_COLOCACION = :"ID_COLOCACION"');
               ParamByName('ID_AGENCIA').AsInteger := IBQuery1.FieldByName('ID_AGENCIA').AsInteger;
               ParamByName('ID_COLOCACION').AsString := IBQuery1.FieldByName('ID_COLOCACION').AsString;
               ExecQuery;
               try
                 LineaC.TCuota := Format('%.3d',[FieldByName('CUOTAS').AsInteger]);
                 Close;
               except
                 raise;
               end;
             end;
            with IBSCuotas do
             begin
               Application.ProcessMessages;
               SQL.Clear;
               SQL.Add('select count(CUOTA_NUMERO) as CUOTASPAG from "col$tablaliquidacion"');
               SQL.Add('where ');
               SQL.Add('ID_AGENCIA = :"ID_AGENCIA" and');
               SQL.Add('ID_COLOCACION = :"ID_COLOCACION" and');
               SQL.Add('PAGADA = 1 and FECHA_A_PAGAR <= :"FECHA_CORTE"');
               ParamByName('ID_AGENCIA').AsInteger := IBQuery1.FieldByName('ID_AGENCIA').AsInteger;
               ParamByName('ID_COLOCACION').AsString := IBQuery1.FieldByName('ID_COLOCACION').AsString;
               ParamByName('FECHA_CORTE').AsDate := EdFechaCorte.Date;
               ExecQuery;
               try
                 LineaC.CCance := Format('%.3d',[FieldByName('CUOTASPAG').AsInteger]);
                 Close;
               except
                 raise;
               end;
             end;
            with IBSCuotas do
             begin
               Application.ProcessMessages;
               SQL.Clear;
               SQL.Add('select count(CUOTA_NUMERO) as CUOTASMORA from "col$tablaliquidacion"');
               SQL.Add('where ');
               SQL.Add('ID_AGENCIA = :"ID_AGENCIA" and');
               SQL.Add('ID_COLOCACION = :"ID_COLOCACION" and');
               SQL.Add('FECHA_A_PAGAR <= :"FECHA_CORTE" and');
               SQL.Add('PAGADA = 0');
               ParamByName('ID_AGENCIA').AsInteger := IBQuery1.FieldByName('ID_AGENCIA').AsInteger;
               ParamByName('ID_COLOCACION').AsString := IBQuery1.FieldByName('ID_COLOCACION').AsString;
               ParamByName('FECHA_CORTE').AsDate := EdFechaCorte.Date;
               ExecQuery;
               try
                 LineaC.CeMora := Format('%.3d',[FieldByName('CUOTASMORA').AsInteger]);
                 Close;
               except
                 raise;
               end;
             end;
            with IBQuery2 do
             begin
               Application.ProcessMessages;
               Close;
               SQL.Clear;
               SQL.Add('select FECHA_PAGADA from "col$tablaliquidacion"');
               SQL.Add('where ');
               SQL.Add('ID_AGENCIA = :"ID_AGENCIA" and');
               SQL.Add('ID_COLOCACION = :"ID_COLOCACION" and');
               SQL.Add('PAGADA = 1');
               ParamByName('ID_AGENCIA').AsInteger := IBQuery1.FieldByName('ID_AGENCIA').AsInteger;
               ParamByName('ID_COLOCACION').AsString := IBQuery1.FieldByName('ID_COLOCACION').AsString;
               Open;
               try
                 IBQuery2.First;
                 IBQuery2.Last;
                 if IBQuery2.FieldByName('FECHA_PAGADA').AsDateTime <> 0 then
                    LineaC.FUPago := Format('%.4d',[YearOf(IBQuery2.FieldByName('FECHA_PAGADA').AsDateTime)])+ Format('%.2d',[monthOf(IBQuery2.FieldByName('FECHA_PAGADA').AsDateTime)]) + Format('%.2d',[DayOf(IBQuery2.FieldByName('FECHA_PAGADA').AsDateTime)])
                 else
                    LineaC.FUPago := '00000000';
                 Close;
               except
                 ShowMessage(LineaC.FUPago);
                 raise;
               end;
             end;
            LineaC.Oficin := '          OCA�A';
            LineaC.CRadic := '          OCA�A';
            LineaC.FoPago := '0';
            case IBQuery1.FieldByName('AMORTIZA_CAPITAL').AsInteger of
              30 : LineaC.PePago := '1';
              60 : LineaC.PePago := '2';
              90 : LineaC.PePago := '3';
              180 : LineaC.PePago := '4';
              360 : LineaC.PePago := '5';
            end;
            if LineaC.PePago = '' then LineaC.PePago := '9';

            if (DiasMora < 30) then LineaC.EdMora := '001'
            else if (DiasMora >= 30) and (DiasMora < 60) then LineaC.EdMora := '030'
            else if (DiasMora >= 60) and (DiasMora < 90) then LineaC.EdMora := '060'
            else if (DiasMora >= 90) and (DiasMora < 120) then LineaC.EdMora := '090'
            else if (DiasMora >= 120) and (DiasMora < 150) then LineaC.EdMora := '120'
            else if (DiasMora >= 150) and (DiasMora < 180) then LineaC.EdMora := '150'
            else if (DiasMora >= 180) and (DiasMora < 210) then LineaC.EdMora := '180'
            else if (DiasMora >= 210) and (DiasMora < 240) then LineaC.EdMora := '210'
            else if (DiasMora >= 240) and (DiasMora < 270) then LineaC.EdMora := '240'
            else if (DiasMora >= 270) and (DiasMora < 300) then LineaC.EdMora := '270'
            else if (DiasMora >= 300) and (DiasMora < 330) then LineaC.EdMora := '300'
            else if (DiasMora >= 330) and (DiasMora < 360) then LineaC.EdMora := '330'
            else if (DiasMora > 360) then LineaC.EdMora := '360';
            LineaC.FActua := Format('%.4d',[YearOf(EdFechaCorte.Date)]) + Format('%.2d',[monthOf(EdFechaCorte.Date)]) + Format('%.2d',[DayOf(EdFechaCorte.Date)]);
            LineaC.Reclam := '0';
            LineaC.Respon := '00';
            LineaC.Estrac := '3';
            LineaC.Rellen := '              ';
            PlanoReporte.Add(LineaC.Numero + LineaC.Identificacion + LineaC.Nombre +
                             LineaC.FNacim + LineaC.FApert + LineaC.FVenci + LineaC.VCuota +
                             LineaC.Noveda + LineaC.Adjeti + LineaC.TpIden + LineaC.ValIni +
                             LineaC.ValDeu + LineaC.ValMor + LineaC.ValDis + LineaC.TpMone +
                             LineaC.TpObli + LineaC.TpGara + LineaC.Califi + LineaC.CResid +
                             LineaC.DResid + LineaC.TResid + LineaC.CLabor + LineaC.TLabor +
                             LineaC.CCorre + LineaC.DCorre + LineaC.Ciiu + LineaC.TCuota +
                             LineaC.CCance + LineaC.CeMora + LineaC.FUPago + LineaC.Oficin +
                             LineaC.CRadic + LineaC.FoPago + LineaC.PePago + LineaC.EdMora +
                             LineaC.FActua + LineaC.Reclam + LineaC.Respon + LineaC.Estrac + LineaC.Rellen);

            DataActual.Open;
            DataActual.Insert;
            DataActual.FieldByName('NUMERO').AsString := LineaC.Numero;
            DataActual.FieldByName('IDENTIFICACION').AsString := LineaC.Identificacion;
            DataActual.FieldByName('NOMBRE').AsString := LineaC.Nombre;
            DataActual.FieldByName('FNACIM').AsString := LineaC.FNacim;
            DataActual.FieldByName('FAPERT').AsString := LineaC.FApert;
            DataActual.FieldByName('FVENCI').AsString := LineaC.FVenci;
            DataActual.FieldByName('VCUOTA').AsString := LineaC.VCuota;
            DataActual.FieldByName('NOVEDA').AsString := LineaC.Noveda;
            DataActual.FieldByName('ADJETI').AsString := LineaC.Adjeti;
            DataActual.FieldByName('TPIDEN').AsString := LineaC.TpIden;
            DataActual.FieldByName('VALINI').AsString := LineaC.ValIni;
            DataActual.FieldByName('VALDEU').AsString := LineaC.ValDeu;
            DataActual.FieldByName('VALMOR').AsString := LineaC.ValMor;
            DataActual.FieldByName('VALDIS').AsString := LineaC.ValDis;
            DataActual.FieldByName('TPMONE').AsString := LineaC.TpMone;
            DataActual.FieldByName('TPOBLI').AsString := LineaC.TpObli;
            DataActual.FieldByName('TPGARA').AsString := LineaC.TpGara;
            DataActual.FieldByName('CALIFI').AsString := LineaC.Califi;
            DataActual.FieldByName('CRESID').AsString := LineaC.CResid;
            DataActual.FieldByName('DRESID').AsString := LineaC.DResid;
            DataActual.FieldByName('TRESID').AsString := LineaC.TResid;
            DataActual.FieldByName('CLABOR').AsString := LineaC.CLabor;
            DataActual.FieldByName('TLABOR').AsString := LineaC.TLabor;
            DataActual.FieldByName('CCORRE').AsString := LineaC.CCorre;
            DataActual.FieldByName('DCORRE').AsString := LineaC.DCorre;
            DataActual.FieldByName('CIIU').AsString := LineaC.Ciiu;
            DataActual.FieldByName('TCUOTA').AsString := LineaC.TCuota;
            DataActual.FieldByName('CCANCE').AsString := LineaC.CCance;
            DataActual.FieldByName('CEMORA').AsString := LineaC.CeMora;
            DataActual.FieldByName('FUPAGO').AsString := LineaC.FUPago;
            DataActual.FieldByName('OFICIN').AsString := LineaC.Oficin;
            DataActual.FieldByName('CRADIC').AsString := LineaC.CRadic;
            DataActual.FieldByName('FOPAGO').AsString := LineaC.FoPago;
            DataActual.FieldByName('PEPAGO').AsString := LineaC.PePago;
            DataActual.FieldByName('EDMORA').AsString := LineaC.EdMora;
            DataActual.FieldByName('FACTUA').AsString := LineaC.FActua;
            DataActual.FieldByName('RECLAM').AsString := LineaC.Reclam;
            DataActual.FieldByName('RESPON').AsString := LineaC.Respon;
            DataActual.FieldByName('ESTRAC').AsString := LineaC.Estrac;
            DataActual.FieldByName('RELLEN').AsString := LineaC.Rellen;
            DataActual.Post;
            DataActual.Close;

            SumaRegistros := SumaRegistros + 1;
            // fin de proceso clientes

            // Inicio proceso CODEUDORES
//             NoCod := 0;
             with IBSCodeudores do begin
              Close;
              SQL.Clear;
              SQL.Add('select ');
              SQL.Add('"col$colgarantias".ID_IDENTIFICACION,');
              SQL.Add('"col$colgarantias".ID_PERSONA,');
              SQL.Add('"col$colgarantias".CSC_GARANTIA,');
              SQL.Add('"gen$persona".PRIMER_APELLIDO,');
              SQL.Add('"gen$persona".SEGUNDO_APELLIDO,');
              SQL.Add('"gen$persona".NOMBRE,');
              SQL.Add('"gen$persona".FECHA_NACIMIENTO');
              SQL.Add('from "col$colgarantias"');
              SQL.Add('left join "gen$persona" on ("col$colgarantias".ID_IDENTIFICACION = "gen$persona".ID_IDENTIFICACION and "col$colgarantias".ID_PERSONA = "gen$persona".ID_PERSONA)');
              SQL.Add('where');
              SQL.Add('"col$colgarantias".ID_AGENCIA = :"ID_AGENCIA" and');
              SQL.Add('"col$colgarantias".ID_COLOCACION = :"ID_COLOCACION"');
              ParamByName('ID_AGENCIA').AsInteger := IBQuery1.FieldByName('ID_AGENCIA').AsInteger;
              ParamByName('ID_COLOCACION').AsString := IBQuery1.FieldByName('ID_COLOCACION').AsString;
              ExecQuery;
            end;

            while not IBSCodeudores.Eof do
             begin
               Application.ProcessMessages;
               ColocacionNew := IntToStr(IBQuery1.FieldByName('ID_AGENCIA').AsInteger) + IBQuery1.FieldByName('ID_COLOCACION').AsString;
               ConverColocacion := StrToInt64(ColocacionNew);
               ColocacionNew := Format('%.16d',[ConverColocacion]);
               ColocacionNew := ColocacionNew + 'C' + IntToStr(IBSCodeudores.FieldByName('CSC_GARANTIA').AsInteger);
               ColocacionNew := stringreplace(Format('%18s',[colocacionnew]),' ','0',[rfReplaceAll]);
               NovedadLocal := 0;

               LineaC.Numero := ColocacionNew;
               LineaC.Identificacion := StringReplace(Format('%11s',[trim(IBSCodeudores.FieldByName('ID_PERSONA').AsString)]),' ','0',[rfReplaceAll]);
//proceso verificacion codeudores
               if DataErrores.Locate('COLOCACION_ERRADO;IDENTIFICACION',VarArrayOf([LineaC.Numero,trim(IBSCodeudores.FieldByName('ID_PERSONA').AsString)]),[locaseinsensitive]) then
                  LineaC.Numero := DataErrores.FieldValues['COLOCACION_CORRECTO'];
//fin
               Nombre := IBSCodeudores.FieldByName('PRIMER_APELLIDO').AsString + ' '
                         + IBSCodeudores.FieldByName('SEGUNDO_APELLIDO').AsString + ' '
                         + IBSCodeudores.FieldByName('NOMBRE').AsString;
               LineaC.Nombre := Format('%-45s',[trim(IBSCodeudores.FieldByName('PRIMER_APELLIDO').AsString) + ' '
                       + trim(IBSCodeudores.FieldByName('SEGUNDO_APELLIDO').AsString) + ' '
                       + trim(IBSCodeudores.FieldByName('NOMBRE').AsString)]);
               Nombre := '';
               if (IBSCodeudores.FieldByName('FECHA_NACIMIENTO').AsString = '') or (IBSCodeudores.FieldByName('FECHA_NACIMIENTO').AsString = '1899/12/30') Then
                LineaC.FNacim := '000000'
               else
                LineaC.FNacim := Format('%.4d',[YearOf(IBSCodeudores.FieldByName('FECHA_NACIMIENTO').AsDateTime)])+Format('%.2d',[monthOf(IBSCodeudores.FieldByName('FECHA_NACIMIENTO').AsDateTime)]);
               SumaNovedad := SumaNovedad + NovedadLocal;
               case IBSCodeudores.FieldByName('ID_IDENTIFICACION').AsInteger of
                 3 : LineaC.TpIden := '1';
                 4 : LineaC.TpIden := '2';
                 6 : LineaC.TpIden := '3';
                 7 : LineaC.TpIden := '4';
                 9 : LineaC.TpIden := '5';
                 0 : LineaC.TpIden := '1';
               end;

              with IBSCuotas do begin
               Application.ProcessMessages;
               IBSCuotas.Close;
               SQL.Clear;
               SQL.Add('select first 1');
               SQL.Add('"gen$direccion".ID_DIRECCION,');
               SQL.Add('"gen$direccion".DIRECCION,');
               SQL.Add('"gen$direccion".MUNICIPIO,');
               SQL.Add('"gen$direccion".TELEFONO1');
               SQL.Add('from "gen$direccion"');
               SQL.Add('where');
               SQL.Add('"gen$direccion".ID_IDENTIFICACION = :"ID_IDENTIFICACION" and');
               SQL.Add('"gen$direccion".ID_PERSONA = :"ID_PERSONA"');
               ParamByName('ID_IDENTIFICACION').AsInteger := IBSCodeudores.FieldByName('ID_IDENTIFICACION').AsInteger;
               ParamByName('ID_PERSONA').AsString := Trim(IBSCodeudores.FieldByName('ID_PERSONA').AsString);
               ExecQuery;
               LineaC.CResid := Format('%15s',[leftstr(trim(ibscuotas.FieldByName('MUNICIPIO').AsString),15)]);
               LineaC.DResid := Format('%30s',[leftstr(trim(ibscuotas.FieldByName('DIRECCION').AsString),30)]);
               LineaC.TResid := StringReplace(Format('%10s',[leftstr(trim(ibscuotas.FieldByName('TELEFONO1').AsString),10)]),' ','0',[rfReplaceAll]);
               LineaC.CLabor := Format('%15s',[leftstr(trim(ibscuotas.FieldByName('MUNICIPIO').AsString),15)]);
               LineaC.TLabor := StringReplace(Format('%10s',[leftstr(trim(ibscuotas.FieldByName('TELEFONO1').AsString),10)]),' ','0',[rfReplaceAll]);
               LineaC.CCorre := Format('%15s',[leftstr(trim(ibscuotas.FieldByName('MUNICIPIO').AsString),15)]);
               LineaC.DCorre := Format('%30s',[leftstr(trim(ibscuotas.FieldByName('DIRECCION').AsString),30)]);
               IBSCuotas.Close;
              end;

              LineaC.Respon := '01';


              PlanoReporte.Add(LineaC.Numero + LineaC.Identificacion + LineaC.Nombre +
                               LineaC.FNacim + LineaC.FApert + LineaC.FVenci + LineaC.VCuota +
                               LineaC.Noveda + LineaC.Adjeti + LineaC.TpIden + LineaC.ValIni +
                               LineaC.ValDeu + LineaC.ValMor + LineaC.ValDis + LineaC.TpMone +
                               LineaC.TpObli + LineaC.TpGara + LineaC.Califi + LineaC.CResid +
                               LineaC.DResid + LineaC.TResid + LineaC.CLabor + LineaC.TLabor +
                               LineaC.CCorre + LineaC.DCorre + LineaC.Ciiu + LineaC.TCuota +
                               LineaC.CCance + LineaC.CeMora + LineaC.FUPago + LineaC.Oficin +
                               LineaC.CRadic + LineaC.FoPago + LineaC.PePago + LineaC.EdMora +
                               LineaC.FActua + LineaC.Reclam + LineaC.Respon + LineaC.Estrac + LineaC.Rellen);

              DataActual.Open;
              DataActual.Insert;
              DataActual.FieldByName('NUMERO').AsString := LineaC.Numero;
              DataActual.FieldByName('IDENTIFICACION').AsString := LineaC.Identificacion;
              DataActual.FieldByName('NOMBRE').AsString := LineaC.Nombre;
              DataActual.FieldByName('FNACIM').AsString := LineaC.FNacim;
              DataActual.FieldByName('FAPERT').AsString := LineaC.FApert;
              DataActual.FieldByName('FVENCI').AsString := LineaC.FVenci;
              DataActual.FieldByName('VCUOTA').AsString := LineaC.VCuota;
              DataActual.FieldByName('NOVEDA').AsString := LineaC.Noveda;
              DataActual.FieldByName('ADJETI').AsString := LineaC.Adjeti;
              DataActual.FieldByName('TPIDEN').AsString := LineaC.TpIden;
              DataActual.FieldByName('VALINI').AsString := LineaC.ValIni;
              DataActual.FieldByName('VALDEU').AsString := LineaC.ValDeu;
              DataActual.FieldByName('VALMOR').AsString := LineaC.ValMor;
              DataActual.FieldByName('VALDIS').AsString := LineaC.ValDis;
              DataActual.FieldByName('TPMONE').AsString := LineaC.TpMone;
              DataActual.FieldByName('TPOBLI').AsString := LineaC.TpObli;
              DataActual.FieldByName('TPGARA').AsString := LineaC.TpGara;
              DataActual.FieldByName('CALIFI').AsString := LineaC.Califi;
              DataActual.FieldByName('CRESID').AsString := LineaC.CResid;
              DataActual.FieldByName('DRESID').AsString := LineaC.DResid;
              DataActual.FieldByName('TRESID').AsString := LineaC.TResid;
              DataActual.FieldByName('CLABOR').AsString := LineaC.CLabor;
              DataActual.FieldByName('TLABOR').AsString := LineaC.TLabor;
              DataActual.FieldByName('CCORRE').AsString := LineaC.CCorre;
              DataActual.FieldByName('DCORRE').AsString := LineaC.DCorre;
              DataActual.FieldByName('CIIU').AsString := LineaC.Ciiu;
              DataActual.FieldByName('TCUOTA').AsString := LineaC.TCuota;
              DataActual.FieldByName('CCANCE').AsString := LineaC.CCance;
              DataActual.FieldByName('CEMORA').AsString := LineaC.CeMora;
              DataActual.FieldByName('FUPAGO').AsString := LineaC.FUPago;
              DataActual.FieldByName('OFICIN').AsString := LineaC.Oficin;
              DataActual.FieldByName('CRADIC').AsString := LineaC.CRadic;
              DataActual.FieldByName('FOPAGO').AsString := LineaC.FoPago;
              DataActual.FieldByName('PEPAGO').AsString := LineaC.PePago;
              DataActual.FieldByName('EDMORA').AsString := LineaC.EdMora;
              DataActual.FieldByName('FACTUA').AsString := LineaC.FActua;
              DataActual.FieldByName('RECLAM').AsString := LineaC.Reclam;
              DataActual.FieldByName('RESPON').AsString := LineaC.Respon;
              DataActual.FieldByName('ESTRAC').AsString := LineaC.Estrac;
              DataActual.FieldByName('RELLEN').AsString := LineaC.Rellen;
              DataActual.Post;
              DataActual.Close;

              SumaRegistros := SumaRegistros + 1;
              IBSCodeudores.Next;
             end; // fin de While Codeudores
            // Fin proceso Codeudores
            Next;
           end; // fin de while
        end; //fin de with principal


//        PlanoReporte.SaveToFile('c:/Datacredito/Datacredito' + 'Castigados' + '.TXT');
//        PlanoErrores.SaveToFile('c:/Datacredito/ErroresDatacredito' + 'Castigados' + '.TXT');

        CheckBox4.Checked := True;
end;

procedure TfrmProcesarDatacredito.QuintoPaso;
var
S1,S2 :TStringList;
Colocacion,Documento:string;
i:Integer;
begin
{        S2 := TStringList.Create;
        S2.LoadFromFile('C:\Datacredito\DATACREDITO1.TXT');
        for i := 0 to S2.Count - 1 do
        begin
          DataActualizaTabla.Append;
          with IBSCodeudores do begin
           Close;
           SQL.Clear;
           SQL.Add('select first 1 ID_NUEVO from "col$cambioclaves"');
           SQL.Add('where ID_ANTERIOR =:"ID_ANTERIOR"');
           ParamByName('ID_ANTERIOR').AsString := MidStr(S2[i],1,18);
           ExecQuery;
           Colocacion := FieldByName('ID_NUEVO').AsString;
           Documento := MidStr(S2[i],19,11);
           Close;
          end;

          if DataErrores.Locate('COLOCACION_ERRADO;IDENTIFICACION',VarArrayOf([Colocacion,Documento]),[locaseinsensitive]) then
             DataActualizaTabla.FieldByName('NUMERO').AsString := DataErrores.FieldValues['COLOCACION_CORRECTO']
          else
             DataActualizaTabla.FieldByName('NUMERO').AsString := Colocacion; //MidStr(S2[i],1,18);
          DataActualizaTabla.FieldByName('IDENTIFICACION').AsString := MidStr(S2[i],19,11);
          DataActualizaTabla.FieldByName('NOMBRE').AsString := MidStr(S2[i],30,45);
          DataActualizaTabla.FieldByName('FNACIM').AsString := MidStr(S2[i],75,6);
          DataActualizaTabla.FieldByName('FAPERT').AsString := MidStr(S2[i],81,6);
          DataActualizaTabla.FieldByName('FVENCI').AsString := MidStr(S2[i],87,6);
          DataActualizaTabla.FieldByName('VCUOTA').AsString := MidStr(S2[i],93,10);
          DataActualizaTabla.FieldByName('NOVEDA').AsString := MidStr(S2[i],103,2);
          DataActualizaTabla.FieldByName('ADJETI').AsString := MidStr(S2[i],105,2);
          DataActualizaTabla.FieldByName('TPIDEN').AsString := MidStr(S2[i],107,1);
          DataActualizaTabla.FieldByName('VALINI').AsString := MidStr(S2[i],108,10);
          DataActualizaTabla.FieldByName('VALDEU').AsString := MidStr(S2[i],118,10);
          DataActualizaTabla.FieldByName('VALMOR').AsString := MidStr(S2[i],128,10);
          DataActualizaTabla.FieldByName('VALDIS').AsString := MidStr(S2[i],138,10);
          DataActualizaTabla.FieldByName('TPMONE').AsString := MidStr(S2[i],148,1);
          DataActualizaTabla.FieldByName('TPOBLI').AsString := MidStr(S2[i],149,1);
          DataActualizaTabla.FieldByName('TPGARA').AsString := MidStr(S2[i],150,1);
          DataActualizaTabla.FieldByName('CALIFI').AsString := MidStr(S2[i],151,1);
          DataActualizaTabla.FieldByName('CRESID').AsString := MidStr(S2[i],152,15);
          DataActualizaTabla.FieldByName('DRESID').AsString := MidStr(S2[i],167,30);
          DataActualizaTabla.FieldByName('TRESID').AsString := MidStr(S2[i],197,10);
          DataActualizaTabla.FieldByName('CLABOR').AsString := MidStr(S2[i],207,15);
          DataActualizaTabla.FieldByName('TLABOR').AsString := MidStr(S2[i],222,10);
          DataActualizaTabla.FieldByName('CCORRE').AsString := MidStr(S2[i],232,15);
          DataActualizaTabla.FieldByName('DCORRE').AsString := MidStr(S2[i],247,30);
          DataActualizaTabla.FieldByName('CIIU').AsString := MidStr(S2[i],277,6);
          DataActualizaTabla.FieldByName('TCUOTA').AsString := MidStr(S2[i],283,3);
          DataActualizaTabla.FieldByName('CCANCE').AsString := MidStr(S2[i],286,3);
          DataActualizaTabla.FieldByName('CEMORA').AsString := MidStr(S2[i],289,3);
          DataActualizaTabla.FieldByName('FUPAGO').AsString := MidStr(S2[i],292,8);
          DataActualizaTabla.FieldByName('OFICIN').AsString := MidStr(S2[i],300,15);
          DataActualizaTabla.FieldByName('CRADIC').AsString := MidStr(S2[i],315,15);
          DataActualizaTabla.FieldByName('FOPAGO').AsString := MidStr(S2[i],330,1);
          DataActualizaTabla.FieldByName('PEPAGO').AsString := MidStr(S2[i],331,1);
          DataActualizaTabla.FieldByName('EDMORA').AsString := MidStr(S2[i],332,3);
          DataActualizaTabla.FieldByName('FACTUA').AsString := MidStr(S2[i],335,8);
          DataActualizaTabla.FieldByName('RECLAM').AsString := MidStr(S2[i],343,1);
          DataActualizaTabla.FieldByName('RESPON').AsString := MidStr(S2[i],344,2);
          DataActualizaTabla.FieldByName('ESTRAC').AsString := MidStr(S2[i],346,1);
          DataActualizaTabla.FieldByName('RELLEN').AsString := MidStr(S2[i],347,14);
          DataActualizaTabla.Post;
        end;
        S1.Free;
        S2.Free;                 }

        DataActual.Last;
        DataActual.First;
        while not DataActual.Eof do begin
          with IBSCodeudores do begin
            Close;
            SQL.Clear;
            SQL.Add('insert into "col$ReporteData"');
            SQL.Add('values (:NUMERO,:IDENTIFICACION,:NOMBRE,:FNACIM,:FAPERT,:FVENCI,');
            SQL.Add(':VCUOTA,:NOVEDAD,:ADJETI,:TPIDEN,:VALINI,:VALDEU,:VALMOR,:VALDIS,:TPMONE,:TPOBLI,:TPGARA,:CALIFI,');
            SQL.Add(':CRESID,:DRESID,:TRESID,:CLABOR,:TLABOR,:CCORRE,:DCORRE,:CIIU,:TCUOTA,:CCANCE,:CEMORA,:FUPAGO,:OFICIN,');
            SQL.Add(':CRADIC,:FOPAGO,:PEPAGO,:EDMORA,:FACTUA,:RECLAM,:RESPON,:ESTRAC,:RELLEN,:FECHA_CORTE)');
            ParamByName('NUMERO').AsString := DataActual.FieldByName('NUMERO').AsString;
            ParamByName('IDENTIFICACION').AsString := DataActual.FieldByName('IDENTIFICACION').AsString;
            ParamByName('NOMBRE').AsString := DataActual.FieldByName('NOMBRE').AsString;
            ParamByName('FNACIM').AsString := DataActual.FieldByName('FNACIM').AsString;
            ParamByName('FAPERT').AsString := DataActual.FieldByName('FAPERT').AsString;
            ParamByName('FVENCI').AsString := DataActual.FieldByName('FVENCI').AsString;
            ParamByName('VCUOTA').AsString := DataActual.FieldByName('VCUOTA').AsString;
            ParamByName('NOVEDAD').AsString := DataActual.FieldByName('NOVEDA').AsString;
            ParamByName('ADJETI').AsString := DataActual.FieldByName('ADJETI').AsString;
            ParamByName('TPIDEN').AsString := DataActual.FieldByName('TPIDEN').AsString;
            ParamByName('VALINI').AsString := DataActual.FieldByName('VALINI').AsString;
            ParamByName('VALDEU').AsString := DataActual.FieldByName('VALDEU').AsString;
            ParamByName('VALMOR').AsString := DataActual.FieldByName('VALMOR').AsString;
            ParamByName('VALDIS').AsString := DataActual.FieldByName('VALDIS').AsString;
            ParamByName('TPMONE').AsString := DataActual.FieldByName('TPMONE').AsString;
            ParamByName('TPOBLI').AsString := DataActual.FieldByName('TPOBLI').AsString;
            ParamByName('TPGARA').AsString := DataActual.FieldByName('TPGARA').AsString;
            ParamByName('CALIFI').AsString := DataActual.FieldByName('CALIFI').AsString;
            ParamByName('CRESID').AsString := DataActual.FieldByName('CRESID').AsString;
            ParamByName('DRESID').AsString := DataActual.FieldByName('DRESID').AsString;
            ParamByName('TRESID').AsString := DataActual.FieldByName('TRESID').AsString;
            ParamByName('CLABOR').AsString := DataActual.FieldByName('CLABOR').AsString;
            ParamByName('TLABOR').AsString := DataActual.FieldByName('TLABOR').AsString;
            ParamByName('CCORRE').AsString := DataActual.FieldByName('CCORRE').AsString;
            ParamByName('DCORRE').AsString := DataActual.FieldByName('DCORRE').AsString;
            ParamByName('CIIU').AsString := DataActual.FieldByName('CIIU').AsString;
            ParamByName('TCUOTA').AsString := DataActual.FieldByName('TCUOTA').AsString;
            ParamByName('CCANCE').AsString := DataActual.FieldByName('CCANCE').AsString;
            ParamByName('CEMORA').AsString := DataActual.FieldByName('CEMORA').AsString;
            ParamByName('FUPAGO').AsString := DataActual.FieldByName('FUPAGO').AsString;
            ParamByName('OFICIN').AsString := DataActual.FieldByName('OFICIN').AsString;
            ParamByName('CRADIC').AsString := DataActual.FieldByName('CRADIC').AsString;
            ParamByName('FOPAGO').AsString := DataActual.FieldByName('FOPAGO').AsString;
            ParamByName('PEPAGO').AsString := DataActual.FieldByName('PEPAGO').AsString;
            ParamByName('EDMORA').AsString := DataActual.FieldByName('EDMORA').AsString;
            ParamByName('FACTUA').AsString := DataActual.FieldByName('FACTUA').AsString;
            ParamByName('RECLAM').AsString := DataActual.FieldByName('RECLAM').AsString;
            ParamByName('RESPON').AsString := DataActual.FieldByName('RESPON').AsString;
            ParamByName('ESTRAC').AsString := DataActual.FieldByName('ESTRAC').AsString;
            ParamByName('RELLEN').AsString := '              ';//DataActual.FieldByName('RELLEN').AsString;
            ParamByName('FECHA_CORTE').AsString := MesCorteAct;
            IBSCodeudores.ExecQuery;
            IBSCodeudores.Close;
          end;
          DataActual.Next;
        end;
        IBSCodeudores.Transaction.Commit;

        IBSCodeudores.Transaction.StartTransaction;
        DataSaldados.Last;
        DataSaldados.First;
        while not DataSaldados.Eof do begin
          with IBSCodeudores do begin
            Close;
            SQL.Clear;
            SQL.Add('insert into "col$ReporteData"');
            SQL.Add('values (:NUMERO,:IDENTIFICACION,:NOMBRE,:FNACIM,:FAPERT,:FVENCI,');
            SQL.Add(':VCUOTA,:NOVEDAD,:ADJETI,:TPIDEN,:VALINI,:VALDEU,:VALMOR,:VALDIS,:TPMONE,:TPOBLI,:TPGARA,:CALIFI,');
            SQL.Add(':CRESID,:DRESID,:TRESID,:CLABOR,:TLABOR,:CCORRE,:DCORRE,:CIIU,:TCUOTA,:CCANCE,:CEMORA,:FUPAGO,:OFICIN,');
            SQL.Add(':CRADIC,:FOPAGO,:PEPAGO,:EDMORA,:FACTUA,:RECLAM,:RESPON,:ESTRAC,:RELLEN,:FECHA_CORTE)');
            ParamByName('NUMERO').AsString := DataSaldados.FieldByName('NUMERO').AsString;
            ParamByName('IDENTIFICACION').AsString := DataSaldados.FieldByName('IDENTIFICACION').AsString;
            ParamByName('NOMBRE').AsString := DataSaldados.FieldByName('NOMBRE').AsString;
            ParamByName('FNACIM').AsString := DataSaldados.FieldByName('FNACIM').AsString;
            ParamByName('FAPERT').AsString := DataSaldados.FieldByName('FAPERT').AsString;
            ParamByName('FVENCI').AsString := DataSaldados.FieldByName('FVENCI').AsString;
            ParamByName('VCUOTA').AsString := DataSaldados.FieldByName('VCUOTA').AsString;
            ParamByName('NOVEDAD').AsString := DataSaldados.FieldByName('NOVEDA').AsString;
            ParamByName('ADJETI').AsString := DataSaldados.FieldByName('ADJETI').AsString;
            ParamByName('TPIDEN').AsString := DataSaldados.FieldByName('TPIDEN').AsString;
            ParamByName('VALINI').AsString := DataSaldados.FieldByName('VALINI').AsString;
            ParamByName('VALDEU').AsString := DataSaldados.FieldByName('VALDEU').AsString;
            ParamByName('VALMOR').AsString := DataSaldados.FieldByName('VALMOR').AsString;
            ParamByName('VALDIS').AsString := DataSaldados.FieldByName('VALDIS').AsString;
            ParamByName('TPMONE').AsString := DataSaldados.FieldByName('TPMONE').AsString;
            ParamByName('TPOBLI').AsString := DataSaldados.FieldByName('TPOBLI').AsString;
            ParamByName('TPGARA').AsString := DataSaldados.FieldByName('TPGARA').AsString;
            ParamByName('CALIFI').AsString := DataSaldados.FieldByName('CALIFI').AsString;
            ParamByName('CRESID').AsString := DataSaldados.FieldByName('CRESID').AsString;
            ParamByName('DRESID').AsString := DataSaldados.FieldByName('DRESID').AsString;
            ParamByName('TRESID').AsString := DataSaldados.FieldByName('TRESID').AsString;
            ParamByName('CLABOR').AsString := DataSaldados.FieldByName('CLABOR').AsString;
            ParamByName('TLABOR').AsString := DataSaldados.FieldByName('TLABOR').AsString;
            ParamByName('CCORRE').AsString := DataSaldados.FieldByName('CCORRE').AsString;
            ParamByName('DCORRE').AsString := DataSaldados.FieldByName('DCORRE').AsString;
            ParamByName('CIIU').AsString := DataSaldados.FieldByName('CIIU').AsString;
            ParamByName('TCUOTA').AsString := DataSaldados.FieldByName('TCUOTA').AsString;
            ParamByName('CCANCE').AsString := DataSaldados.FieldByName('CCANCE').AsString;
            ParamByName('CEMORA').AsString := DataSaldados.FieldByName('CEMORA').AsString;
            ParamByName('FUPAGO').AsString := DataSaldados.FieldByName('FUPAGO').AsString;
            ParamByName('OFICIN').AsString := DataSaldados.FieldByName('OFICIN').AsString;
            ParamByName('CRADIC').AsString := DataSaldados.FieldByName('CRADIC').AsString;
            ParamByName('FOPAGO').AsString := DataSaldados.FieldByName('FOPAGO').AsString;
            ParamByName('PEPAGO').AsString := DataSaldados.FieldByName('PEPAGO').AsString;
            ParamByName('EDMORA').AsString := DataSaldados.FieldByName('EDMORA').AsString;
            ParamByName('FACTUA').AsString := DataSaldados.FieldByName('FACTUA').AsString;
            ParamByName('RECLAM').AsString := DataSaldados.FieldByName('RECLAM').AsString;
            ParamByName('RESPON').AsString := DataSaldados.FieldByName('RESPON').AsString;
            ParamByName('ESTRAC').AsString := DataSaldados.FieldByName('ESTRAC').AsString;
            ParamByName('RELLEN').AsString := '              ';//DataSaldados.FieldByName('RELLEN').AsString;
            ParamByName('FECHA_CORTE').AsString := MesCorteAct;
            IBSCodeudores.ExecQuery;
            IBSCodeudores.Close;
          end;
          DataSaldados.Next;
        end;
        IBSCodeudores.Transaction.Commit;


end;

end.
