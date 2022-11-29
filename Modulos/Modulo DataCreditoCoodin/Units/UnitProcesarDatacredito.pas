unit UnitProcesarDatacredito;

interface

uses
  Windows, Messages, DateUtils, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, StdCtrls, ComCtrls, Buttons, DB, IBCustomDataSet,
<<<<<<< HEAD
  IBQuery, IBDatabase, IBSQL, StrUtils, DBClient, UnitDmGeneral, UnitGlobalesCol;
=======
  IBQuery, IBDatabase, IBSQL, StrUtils, DBClient, UnitDmGeneral;
>>>>>>> 171925b3cf59501bab9dd1664befb26ff80c6cee

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
    CheckBox4: TCheckBox;
    IBTmp: TIBQuery;
    IBSReporteAnt: TIBSQL;
    CheckBox3: TCheckBox;
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
    DataActualNOMBREC: TStringField;
    DataSaldadosNOMBREC: TStringField;
    DataSaldadosLINEA: TStringField;
    DataSaldadosFECHA_DESEMBOLSO: TStringField;
    DataSaldadosFECHA_VENCIMIENTO: TStringField;
    DataSaldadosIDIDENT: TStringField;
    DataActualLINEA: TStringField;
    DataActualFECHA_DESEMBOLSO: TStringField;
    DataActualFECHA_VENCIMIENTO: TStringField;
    DataActualIDIDENT: TStringField;
    CheckBox6: TCheckBox;
    pagare: TLabel;
    SD1: TSaveDialog;
    procedure CmdCerrarClick(Sender: TObject);
    procedure CmdProcesarClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure CmdGenerarClick(Sender: TObject);
    procedure CmdVerClick(Sender: TObject);
    procedure EdFechaCorteExit(Sender: TObject);
  private
    procedure Encabezado;
    procedure ColActivas;
    function Novedad(IDAgencia: Integer; IdColocacion: string;Dias:Integer): Integer;
    function Adjetivo(IdAgencia: Integer; IdColocacion: string): string;
    procedure RegistroFin;
    procedure ColCastigadas;
    procedure InsertarTabla;
    procedure ColSaldadas;
    { Private declarations }
  public
    { Public declarations }
  end;

type Registro = Record
    C001_TpIden:string; // * 01
    Identificacion:string; // * 11
    Numero:string; // * 18
    NombreC:string; // *45
    STitular: String; // 1
    FApert:string; // * 08
    FVenci:string; // * 08
    Respon:string; // * 02  00 para deudor, 01 para codeudor // Anexo 2.3
    TpObli:string; // * 01  Anexo 2.4
    SHipotecario: String; // 01 Aplica para TpObli tipo 3
    FSubsidio: String; // 08
    TContrato: String; // 01  siempre colocar 1
    FoPago:string; // * 01 forma de pago
    PePago:string; // * 01 periodo de pago
    Noveda:string; // * 02
    EOCuenta: String; // 01  Anexo 2.7
    FEOrigen: String; // 08
    ECuenta: String; // 02  Anexo 2.8
    FECuenta: String; // 08 aqui la fecha de corte
    EPlastico: String; // 01 Colocar 0
    FEPlastico: String; // 08 colocar 00000000
    Adjeti:string; // * 01
    FAdjetivo: String; // * 08 colocar fecha de corte
    CTarjeta: String; // * 1 colocar 0
    Franquicia: String; // * 1 Colocar 0
    NMPrivada: String; // * 30 Colocar en blanco
    TpMone:string; // * 01
    TpGara:string; // * 01
    Califi:string; // * 01
    PIncumplimiento: String; // 03 colocar 000
    EdMora:string; // * 03
    ValIni:string; // * 11
    ValDeu:string; // * 11
    ValDis:string; // * 11
    VCuota:string; // * 11
    ValMor:string; // * 11
    TCuota:string; // * 03
    CCance:string; // * 03
    CeMora:string; // * 03
    CPermanencia: String; // * 03 colocar 000
    FCPermanencia: String; // * 08 colocar 00000000
    FLPago: String; // * 08 colocar la fecha en que se debió pagar la última cuota
    FUPago:string; // * 08
    Oficin:string; // * 30
    CRadic:string; // * 20 ciudad radicación
    CRDane: String; // * 8
    CResid:string; // * 20
    CVDane: String; // * 08
    DeptoResidencia: String; // * 20
    DResid:string; // * 60
    TResid:string; // * 12
    CLabor:string; // * 15
    CLDane:String; // * 08
    DeptoLabora: String; // * 20
    DirLabora: String;  // * 60
    TLabor:string; // * 12
    CCorre:string; // * 15
    CCDane: String; // * 8
    DeptoCorre: String; // 20
    DCorre:string; // * 60
    Email: String; // * 60
    Celular: String; // * 12
    SubDestino: String; // * 06 colocar 000000
    NTarjeta: String; // 18 colocar 000000000000000000
    DGarantia: String; // * 01  colocar 0
    Rellen:string; // * 18  en ceros
end;

var
  frmProcesarDatacredito: TfrmProcesarDatacredito;
  dmGeneral: TdmGeneral;

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
  Dia:Integer;


    cadena:string;
    LineaC:registro;
    LineaError:string;
    ColocacionNew:string;
    ConverColocacion:Int64;
    ColocacionAnt:string;
    ColocacionActual:string;
    DiasMora:Integer;
<<<<<<< HEAD
    ValorMora:Currency;
    _deuda: Deuda;
=======
>>>>>>> 171925b3cf59501bab9dd1664befb26ff80c6cee
    NoCod:Integer;
    NovedadLocal:Integer;
    Fecha:TDate;
    Nombre:string;
    NombreC,Apel1C,Apel2C:string;
    FechaNacimiento:string;

    i,j: Integer;
    Entero: Integer;
    S1,S2 :TStringList;
    ColocacionErr : string;
    DescAgencia:string;
    CiudadAgencia: String;
implementation

{$R *.dfm}

<<<<<<< HEAD
uses UnitMuestroArchivoData, UnitGlobales;
=======
uses UnitGlobalesCol, UnitMuestroArchivoData, UnitGlobales;
>>>>>>> 171925b3cf59501bab9dd1664befb26ff80c6cee

procedure TfrmProcesarDatacredito.CmdCerrarClick(Sender: TObject);
begin
        Close;
end;

procedure TfrmProcesarDatacredito.Encabezado;
var cadena:string;
    LineaC:string;
    i1,i2 :Integer;
    J:Integer;
begin
// Generar Encabezado del Archivo
      cadena := 'HHHHHHHHHHHHHHHHHH';
      LineaC := cadena;
// Codigo y Tipo Cartera
//      cadena := '27391927';
      cadena := '36006936';
      LineaC := LineaC + cadena;
// Fecha Corte
      cadena := Format('%.4d',[YearOf(EdFechaCorte.Date)])+Format('%.2d',[monthOf(EdFechaCorte.Date)])+Format('%.2d',[DayOf(EdFechaCorte.Date)]);
      LineaC := LineaC + cadena;
// Ampliacion Milenio
      cadena := 'M';
      LineaC := LineaC + cadena;
// Indicador de Valores en Miles
      cadena := '0';
      LineaC := LineaC + cadena;
// Tipo de Entrega
      cadena := 'T';
      LineaC := LineaC + cadena;
// Fecha Inicio Reporte
      cadena := '00000000';
      LineaC := LineaC + cadena;
// Fecha Fin Reporte
      cadena := '00000000';
      LineaC := LineaC + cadena;
// Indicador de Partir
      cadena := 'N';
      LineaC := LineaC + cadena;
// Relleno
      cadena := '';
      i1 := 1;
      i2 := 746;
      for J := i1 to i2 do
          cadena := cadena + '0';
      LineaC := LineaC + cadena;
      PlanoReporte.Add(LineaC);
      CheckBox1.Checked := True;
end;

procedure TfrmProcesarDatacredito.ColActivas;  //Procesar las Colocaciones Causadas
<<<<<<< HEAD
var
  _capital_estimado, _capital_diferencia : Currency;
  _dias_liq_mora : Integer;
  _tasa: Double;
=======
>>>>>>> 171925b3cf59501bab9dd1664befb26ff80c6cee
begin
        if dmGeneral.IBTransaction1.InTransaction then
          dmGeneral.IBTransaction1.Rollback;
        dmGeneral.IBTransaction1.StartTransaction;

        with IBQuery2 do begin
         SQL.Clear;
         SQL.Add('select DESCRIPCION_AGENCIA, CODIGO_MUNICIPIO, CIUDAD from "gen$agencia" where ID_AGENCIA = :ID_AGENCIA');
         ParamByName('ID_AGENCIA').AsInteger := Agencia;
         Open;
         DescAgencia := LeftStr(Trim(FieldByName('DESCRIPCION_AGENCIA').AsString),30);
         CiudadAgencia := FieldByName('CIUDAD').AsString;
         Close;
        end;

        SumaNovedad := 0;
        SumaRegistros := 0;
        with IBQuery1 do begin
           Close;
           SQL.Clear;
           SQL.Add('select count(*) as CONTEO from "col$causaciondiaria" where FECHA_CORTE = :"FECHA_CORTE" AND ID_ESTADO <> 7');
           ParamByName('FECHA_CORTE').AsDate := EdFechaCorte.Date;
           try
            Open;
            if RecordCount < 1 then begin
              MessageDlg('No existe información con esa fecha de corte',mtInformation,[mbok],0);
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
           SQL.Add('select * from "col$causaciondiaria" where FECHA_CORTE = :FECHA_CORTE AND ID_ESTADO <> 7 ORDER BY ID_COLOCACION ASC');
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
              SQL.Add('"gen$direccion".COD_MUNICIPIO,');
              SQL.Add('"gen$direccion".TELEFONO1');
              SQL.Add('from "col$colocacion"');
              SQL.Add('left join "gen$persona" on ("col$colocacion".ID_IDENTIFICACION = "gen$persona".ID_IDENTIFICACION and "col$colocacion".ID_PERSONA = "gen$persona".ID_PERSONA)');
              SQL.Add('left join "gen$direccion" on ("col$colocacion".ID_IDENTIFICACION = "gen$direccion".ID_IDENTIFICACION and "col$colocacion".ID_PERSONA = "gen$direccion".ID_PERSONA and "gen$direccion".CONSECUTIVO = 1)');
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
                ColocacionNew := Format('%.18d',[ConverColocacion]); //'000000000000000000';
                ColocacionNew := stringreplace(Format('%18s',[colocacionnew]),' ','0',[rfReplaceAll]);
                NovedadLocal := 0;
              except
                ShowMessage(ColocacionNew);
                raise;
              end;
            end;
            pagare.Caption := ColocacionNew;
            LineaC.Numero := ColocacionNew;
            LineaC.STitular := '0';
            LineaC.Identificacion := StringReplace(Format('%11s',[Trim(IBSClientes.FieldByName('ID_PERSONA').AsString)]),' ','0',[rfReplaceAll]);
            with IBQuery2 do begin
              Close;
              SQL.Clear;
              SQL.Add('select DESCRIPCION_AGENCIA, CODIGO_MUNICIPIO, CIUDAD from "gen$agencia" where ID_AGENCIA = :ID_AGENCIA');
              ParamByName('ID_AGENCIA').AsInteger := IBQuery1.FieldByName('ID_AGENCIA').AsInteger;
              Open;
              LineaC.CRDane := RightPad(FieldByName('CODIGO_MUNICIPIO').AsString, 8, '0');
              DescAgencia := FieldByName('DESCRIPCION_AGENCIA').AsString;
              CiudadAgencia := FieldByName('CIUDAD').AsString;
              Close;
            end;
            with IBPersona do begin
              Application.ProcessMessages;
              Close;
              SQL.Clear;
              SQL.Add('select PRIMER_APELLIDO, SEGUNDO_APELLIDO,');
              SQL.Add('NOMBRE, FECHA_NACIMIENTO, EMAIL');
              SQL.Add('from "gen$persona" where ');
              SQL.Add('ID_IDENTIFICACION = :"ID_IDENTIFICACION" and');
              SQL.Add('ID_PERSONA = :"ID_PERSONA"');
              ParamByName('ID_IDENTIFICACION').AsInteger := IBSClientes.FieldByName('ID_IDENTIFICACION').AsInteger;
              ParamByName('ID_PERSONA').AsString := IBSClientes.FieldByName('ID_PERSONA').AsString;
              ExecQuery;
              Nombre := Trim(IBPersona.FieldByName('PRIMER_APELLIDO').AsString + ' ' +
                      IBPersona.FieldByName('SEGUNDO_APELLIDO').AsString + ' ' +
                      IBPersona.FieldByName('NOMBRE').AsString);
              LineaC.Email := RightPad(IBPersona.FieldByName('EMAIL').AsString, 60, ' ');

               if (IBSClientes.FieldByName('ID_IDENTIFICACION').AsInteger <> 2) or (IBSClientes.FieldByName('ID_IDENTIFICACION').AsInteger <> 7) then
                begin
                  NombreC := Format('%-45s',[LeftStr(IBPersona.FieldByName('NOMBRE').AsString + ' ' +IBPersona.FieldByName('PRIMER_APELLIDO').AsString + ' ' + IBPersona.FieldByName('SEGUNDO_APELLIDO').AsString, 45)]);
                  LineaC.NombreC := RightPad(NombreC, 45, ' ');
                end
               else
                begin
                  NombreC := Format('%-45s',[LeftStr(IBPersona.FieldByName('PRIMER_APELLIDO').AsString + ' ' +
                  IBPersona.FieldByName('SEGUNDO_APELLIDO').AsString + ' ' +
                  IBPersona.FieldByName('NOMBRE').AsString,45)]);
                  LineaC.NombreC := RightPad(NombreC, 45, ' ');
                end;

              LineaC.STitular := '0';
              NombreC := '';

              FechaNacimiento := IBPersona.FieldByName('FECHA_NACIMIENTO').AsString;
              Close;
            end;
<<<<<<< HEAD
             DiasMora := 0;
             ValorMora := 0;
=======

>>>>>>> 171925b3cf59501bab9dd1664befb26ff80c6cee
             LineaC.FApert := Format('%.4d',[YearOf(IBSClientes.FieldByName('FECHA_DESEMBOLSO').AsDateTime)])+Format('%.2d',[monthOf(IBSClientes.FieldByName('FECHA_DESEMBOLSO').AsDateTime)]) + Format('%.2d',[dayOf(IBSClientes.FieldByName('FECHA_DESEMBOLSO').AsDateTime)]);
             LineaC.FVenci := Format('%.4d',[YearOf(IBSClientes.FieldByName('FECHA_VENCIMIENTO').AsDateTime)])+Format('%.2d',[monthOf(IBSClientes.FieldByName('FECHA_VENCIMIENTO').AsDateTime)]) + Format('%.2d',[dayOf(IBSClientes.FieldByName('FECHA_VENCIMIENTO').AsDateTime)]);
             LineaC.VCuota := Formatcurr('00000000000',IBSClientes.FieldByName('VALOR_CUOTA').ASCurrency);
             Fecha := IBQuery1.FieldByName('FECHA_INTERES').AsDateTime;
             if IBSClientes.FieldByName('INTERES').AsString = 'V' then
                Fecha := CalculoFecha(Fecha,IBQuery1.FieldByName('AMORTIZA_INTERES').AsInteger);
             Fecha := IncDay(Fecha);
<<<<<<< HEAD
             // _deuda := ObtenerDeudaFecha(IBQuery1.FieldByName('ID_AGENCIA').AsInteger,IBQuery1.FieldByName('ID_COLOCACION').AsString,EdFechaCorte.Date,IBSCodeudores);
             // DiasMora := _deuda.Dias;
             // ValorMora := _deuda.Valor;
             DiasMora := IBQuery1.FieldByName('MOROSIDAD').AsInteger;
             if DiasMora > 0 then
             begin
               with IBQuery2 do
               begin
                 Application.ProcessMessages;
                 Close;
                 SQL.Clear;
                 SQL.Add('select SUM(CAPITAL_A_PAGAR) AS CAPITAL from "col$tablaliquidacion"');
                 SQL.Add('where ');
                 SQL.Add('ID_COLOCACION = :"ID_COLOCACION" and');
                 SQL.Add('PAGADA = 0 and FECHA_PAGADA <= :FECHA_CORTE');
                 ParamByName('ID_COLOCACION').AsString := IBQuery1.FieldByName('ID_COLOCACION').AsString;
                 ParamByName('FECHA_CORTE').AsDate := EdFechaCorte.Date;
                 Open;
                 try
                   _capital_estimado := IBQuery2.FieldByName('CAPITAL').AsCurrency;
                   Close;
                 except
                   ShowMessage(LineaC.FUPago);
                   raise;
                 end;
               end;
               _capital_diferencia := _capital_estimado - (IBQuery1.FieldByName('VALOR').AsCurrency - IBQuery1.FieldByName('DEUDA').AsCurrency);
               if _capital_diferencia > 0 then
               begin
                  if DiasMora > 90 then _dias_liq_mora := 90
                 else _dias_liq_mora := DiasMora;
                 _tasa := IBQuery1.FieldByName('TASA').AsFloat;
                 ValorMora := _capital_diferencia  + (_capital_diferencia * (_tasa / 100) / 360 * _dias_liq_mora);
               end
               else
               begin
                 ValorMora := IBQuery1.FieldByName('DEUDA').AsCurrency;
               end
             end
             else
             begin
               ValorMora := 0;
             end;
=======
 //            DiasMora := ObtenerDeudaFecha(IBQuery1.FieldByName('ID_AGENCIA').AsInteger,IBQuery1.FieldByName('ID_COLOCACION').AsString,EdFechaCorte.Date,IBSCodeudores).Dias;
 //            DiasMora := DiasEntre(Fecha,EdFechaCorte.Date);
             DiasMora := IBQuery1.FieldByName('MOROSIDAD').AsInteger;
>>>>>>> 171925b3cf59501bab9dd1664befb26ff80c6cee
             NovedadLocal := Novedad(IBQuery1.FieldByName('ID_AGENCIA').AsInteger,IBQuery1.FieldByName('ID_COLOCACION').AsString,DiasMora);
             SumaNovedad := SumaNovedad + NovedadLocal;
             LineaC.Noveda := StringReplace(Format('%2s',[IntToStr(Novedadlocal)]),' ','0',[rfReplaceAll]);
             LineaC.Adjeti := adjetivo(IBQuery1.FieldByName('ID_AGENCIA').AsInteger,IBQuery1.FieldByName('ID_COLOCACION').AsString);
             if (LineaC.Adjeti = '0') then
             begin
               LineaC.FAdjetivo := '00000000';
             end
             else
             begin
               LineaC.FAdjetivo :=  FormatDateTime('yyyymmdd', EdFechaCorte.Date);
             end;
             case IBSClientes.FieldByName('ID_IDENTIFICACION').AsInteger of
               3 : LineaC.C001_TpIden := '1';
               4 : LineaC.C001_TpIden := '2';
               6 : LineaC.C001_TpIden := '3';
               7 : LineaC.C001_TpIden := '4';
               9 : LineaC.C001_TpIden := '5';
               0 : LineaC.C001_TpIden := '1';
             end;
            LineaC.ValIni := FormatCurr('00000000000',ibquery1.FieldByName('VALOR').AsCurrency);
            LineaC.ValDeu := FormatCurr('00000000000',ibquery1.FieldByName('DEUDA').AsCurrency);
<<<<<<< HEAD
            // if (IBQuery1.FieldByName('ID_ARRASTRE').AsString = 'A') or (IBQuery1.FieldByName('ID_ARRASTRE').AsString = 'B') then
              LineaC.ValMor := FormatCurr('00000000000',ValorMora);
            //else
             // LineaC.ValMor := FormatCurr('00000000000',IBQuery1.FieldByName('DEUDA').AsCurrency);
=======
            if (IBQuery1.FieldByName('ID_ARRASTRE').AsString = 'A') or (IBQuery1.FieldByName('ID_ARRASTRE').AsString = 'B') then
              LineaC.ValMor := FormatCurr('00000000000',ObtenerDeudaFecha(IBQuery1.FieldByName('ID_AGENCIA').AsInteger,IBQuery1.FieldByName('ID_COLOCACION').AsString,EdFechaCorte.Date,IBSCodeudores).Valor)
            else
              LineaC.ValMor := FormatCurr('00000000000',IBQuery1.FieldByName('DEUDA').AsCurrency);
>>>>>>> 171925b3cf59501bab9dd1664befb26ff80c6cee
            LineaC.ValDis := '00000000000';
            LineaC.TpMone := '1';
            LineaC.TpObli := '2';
            LineaC.TpGara := IntToStr(IBQuery1.FieldByName('ID_GARANTIA').AsInteger);
            LineaC.Califi := IBQuery1.FieldByName('ID_ARRASTRE').AsString + ' ';
            LineaC.CResid := RightPad(ibsclientes.FieldByName('MUNICIPIO').AsString, 20, ' ');
            LineaC.DResid := RightPad(ibsclientes.FieldByName('DIRECCION').AsString, 60, ' ');
            LineaC.TResid := RightPad(ibsclientes.FieldByName('TELEFONO1').AsString, 12, ' ');
            LineaC.CLabor := RightPad(ibsclientes.FieldByName('MUNICIPIO').AsString, 20, ' ');
            LineaC.DirLabora := RightPad(ibsclientes.FieldByName('DIRECCION').AsString, 60, ' ');
            LineaC.TLabor := RightPad(ibsclientes.FieldByName('TELEFONO1').AsString, 12, ' ');
            LineaC.CCorre := RightPad(ibsclientes.FieldByName('MUNICIPIO').AsString, 20, ' ');
            LineaC.DCorre := RightPad(ibsclientes.FieldByName('DIRECCION').AsString, 60, ' ');
            LineaC.CRDane := RightPad(ibsclientes.FieldByName('COD_MUNICIPIO').AsString, 8, '0');
            LineaC.CVDane := LineaC.CRDane;
            LineaC.CLDane := LineaC.CRDane;
            LineaC.CCDane := LineaC.CRDane;
            LineaC.DeptoResidencia := RightPad(GetDepartamento(LeftStr(RightStr(LineaC.CRDane,5), 2)),20, ' ');
            LineaC.DeptoLabora := LineaC.DeptoResidencia;
            LineaC.DeptoCorre := LineaC.DeptoResidencia;
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
            LineaC.Oficin := RightPad(DescAgencia,30,' ');
            LineaC.CRadic := RightPad(CiudadAgencia,20,' '); // Format('%20s',[DescAgencia]);
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
            LineaC.FEOrigen := Format('%.4d',[YearOf(EdFechaCorte.Date)]) + Format('%.2d',[monthOf(EdFechaCorte.Date)]) + Format('%.2d',[DayOf(EdFechaCorte.Date)]);
            LineaC.FECuenta := Format('%.4d',[YearOf(EdFechaCorte.Date)]) + Format('%.2d',[monthOf(EdFechaCorte.Date)]) + Format('%.2d',[DayOf(EdFechaCorte.Date)]);
            LineaC.FEPlastico := '00000000';

            LineaC.Respon := '00';
            LineaC.Rellen := '              ';
            {
            with IBSClientes do begin
              IBSClientes.Close;
              SQL.Clear;
              SQL.Add('select ID_IDENTIFICACION, ID_LINEA, FECHA_DESEMBOLSO, FECHA_VENCIMIENTO from "col$colocacion" where ID_AGENCIA = :ID_AGENCIA and ID_COLOCACION =:ID_COLOCACION');
              ParamByName('ID_AGENCIA').AsInteger := IBQuery1.FieldByName('ID_AGENCIA').AsInteger;
              ParamByName('ID_COLOCACION').AsString := IBQuery1.FieldByName('ID_COLOCACION').AsString;
              ExecQuery;
            end;

            if IBSClientes.FieldByName('ID_LINEA').AsInteger = 1 then
               LineaC.Linea := '003'
            else if IBSClientes.FieldByName('ID_LINEA').AsInteger = 7 then
               LineaC.Linea := '014'
            else    }
               // LineaC.Linea := '007';

            // LineaC.FDes := Format('%.4d',[YearOf(IBSClientes.FieldByName('FECHA_DESEMBOLSO').AsDate)])+ Format('%.2d',[monthOf(IBSClientes.FieldByName('FECHA_DESEMBOLSO').AsDate)]) + Format('%.2d',[dayOf(IBSClientes.FieldByName('FECHA_DESEMBOLSO').AsDate)]);
            // LineaC.FVen := Format('%.4d',[YearOf(IBSClientes.FieldByName('FECHA_VENCIMIENTO').AsDate)])+ Format('%.2d',[monthOf(IBSClientes.FieldByName('FECHA_VENCIMIENTO').AsDate)]) + Format('%.2d',[dayOf(IBSClientes.FieldByName('FECHA_VENCIMIENTO').AsDate)]);

            {
            case IBSClientes.FieldByName('ID_IDENTIFICACION').AsInteger of
               3 : LineaC.TpIdCi := '01';
               4 : LineaC.TpIdCi := '02';
               6 : LineaC.TpIdCi := '03';
               2 : LineaC.TpIdCi := '04';
               8 : LineaC.TpIdCi := '05';
               7 : LineaC.TpIdCi := '07';
               1 : LineaC.TpIdCi := '09';
               0 : LineaC.TpIdCi := '01';
             end;
             }
            {
            DataActual.Open;
            DataActual.Insert;
            DataActual.FieldByName('NUMERO').AsString := LineaC.Numero;
            DataActual.FieldByName('IDENTIFICACION').AsString := LineaC.Identificacion;
            DataActual.FieldByName('NOMBRE').AsString := LineaC.Nombre;
            DataActual.FieldByName('NOMBREC').AsString := LineaC.NombreC;
            DataActual.FieldByName('FNACIM').AsString := LineaC.FNacim;
            DataActual.FieldByName('FAPERT').AsString := LineaC.FApert;
            DataActual.FieldByName('FVENCI').AsString := LineaC.FVenci;
            DataActual.FieldByName('VCUOTA').AsString := LineaC.VCuota;
            DataActual.FieldByName('NOVEDA').AsString := LineaC.Noveda;
            DataActual.FieldByName('ADJETI').AsString := LineaC.Adjeti;
            DataActual.FieldByName('TPIDEN').AsString := LineaC.C001_TpIden;
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
            DataActual.FieldByName('LINEA').AsString := LineaC.Linea;
            DataActual.FieldByName('FECHA_DESEMBOLSO').AsString := LineaC.FDes;
            DataActual.FieldByName('FECHA_VENCIMIENTO').AsString := LineaC.FVen;
            DataActual.FieldByName('IDIDENT').AsString := LineaC.TpIdCi;
            DataActual.Post;
            DataActual.Close;
            }
            LineaC.SHipotecario := '0';
            LineaC.FSubsidio := '00000000';
            LineaC.TContrato := '1';
            LineaC.EOCuenta := '0';
            LineaC.FEOrigen := LineaC.FApert;
            if (StrToInt(LineaC.ValMor) = 0) then
            begin
               LineaC.ECuenta := '01';
            end
            else
            begin
               LineaC.ECuenta := '02';
            end;
            LineaC.FECuenta := FormatDateTime('yyyymmdd', EdFechaCorte.Date);
            LineaC.EPlastico := '0';
            LineaC.FEPlastico := '00000000';
            LineaC.CTarjeta := '0';
            LineaC.Franquicia := '0';
            LineaC.NMPrivada := RightPad(Format('%30s', [' ']), 30, ' ');
            LineaC.PIncumplimiento := '000';
            LineaC.CPermanencia := '000';
            LineaC.FCPermanencia := '00000000';
            LineaC.FLPago := '00000000';


            PlanoReporte.Add(LineaC.C001_TpIden  + LineaC.Identificacion  + LineaC.Numero  + LineaC.NombreC  + LineaC.STitular  + LineaC.FApert  + LineaC.FVenci  +
            LineaC.Respon  + LineaC.TpObli  + LineaC.SHipotecario  + LineaC.FSubsidio  + LineaC.TContrato  + LineaC.FoPago  + LineaC.PePago  +
            LineaC.Noveda  + LineaC.EOCuenta  + LineaC.FEOrigen  + LineaC.ECuenta  + LineaC.FECuenta  + LineaC.EPlastico  + LineaC.FEPlastico  +
            LineaC.Adjeti  + LineaC.FAdjetivo  + LineaC.CTarjeta  + LineaC.Franquicia  + LineaC.NMPrivada  + LineaC.TpMone  +
            LineaC.TpGara  + LineaC.Califi  + LineaC.PIncumplimiento  + LineaC.EdMora  + LineaC.ValIni  + LineaC.ValDeu  + LineaC.ValDis  + LineaC.VCuota  +
            LineaC.ValMor  + LineaC.TCuota  + LineaC.CCance  + LineaC.CeMora  + LineaC.CPermanencia  + LineaC.FCPermanencia  + LineaC.FLPago  + LineaC.FUPago  +
            LineaC.Oficin  + LineaC.CRadic  + LineaC.CRDane  + LineaC.CResid  + LineaC.CVDane  + LineaC.DeptoResidencia  + LineaC.DResid  + LineaC.TResid  +
            LineaC.CLabor  + LineaC.CLDane  + LineaC.DeptoLabora  + LineaC.DirLabora  + LineaC.TLabor  + LineaC.CCorre  + LineaC.CCDane  + LineaC.DeptoCorre  +
            LineaC.DCorre  + LineaC.Email  + LineaC.Celular  + LineaC.SubDestino  + LineaC.NTarjeta  + LineaC.DGarantia  + LineaC.Rellen);

            SumaRegistros := SumaRegistros + 1;
            //IBSClientes.Close;
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

               if (IBSCodeudores.FieldByName('ID_IDENTIFICACION').AsInteger <> 2) or (IBSCodeudores.FieldByName('ID_IDENTIFICACION').AsInteger <> 7) then
                begin
                  NombreC := RightPad(IBSCodeudores.FieldByName('NOMBRE').AsString + ' ' +IBSCodeudores.FieldByName('PRIMER_APELLIDO').AsString + ' ' + IBSCodeudores.FieldByName('SEGUNDO_APELLIDO').AsString, 45, ' '); // Format('%-45s',[LeftStr(IBSCodeudores.FieldByName('NOMBRE').AsString + ' ' +IBSCodeudores.FieldByName('PRIMER_APELLIDO').AsString + ' ' + IBSCodeudores.FieldByName('SEGUNDO_APELLIDO').AsString, 45)]);
                  LineaC.NombreC := NombreC;
                end
               else
                begin
                  NombreC := RightPad(IBSCodeudores.FieldByName('PRIMER_APELLIDO').AsString + ' ' +
                  IBSCodeudores.FieldByName('SEGUNDO_APELLIDO').AsString + ' ' +
                  IBSCodeudores.FieldByName('NOMBRE').AsString, 45, ' ');// Format('%-45s',[LeftStr(IBSCodeudores.FieldByName('PRIMER_APELLIDO').AsString + ' ' +
//                  IBSCodeudores.FieldByName('SEGUNDO_APELLIDO').AsString + ' ' +
//                  IBSCodeudores.FieldByName('NOMBRE').AsString,45)]);
                  LineaC.NombreC := NombreC;
                end;
               LineaC.STitular := '0';
               NombreC := '';

               Nombre := Trim(IBSCodeudores.FieldByName('PRIMER_APELLIDO').AsString + ' '
                         + IBSCodeudores.FieldByName('SEGUNDO_APELLIDO').AsString + ' '
                         + IBSCodeudores.FieldByName('NOMBRE').AsString);

               Nombre := '';
              
               SumaNovedad := SumaNovedad + NovedadLocal;
               case IBSCodeudores.FieldByName('ID_IDENTIFICACION').AsInteger of
                 3 : LineaC.C001_TpIden := '1';
                 4 : LineaC.C001_TpIden := '2';
                 6 : LineaC.C001_TpIden := '3';
                 7 : LineaC.C001_TpIden := '4';
                 9 : LineaC.C001_TpIden := '5';
                 0 : LineaC.C001_TpIden := '1';
               end;

              with IBSCuotas do begin
               Application.ProcessMessages;
               IBSCuotas.Close;
               SQL.Clear;
               SQL.Add('select first 1');
               SQL.Add('"gen$direccion".ID_DIRECCION,');
               SQL.Add('"gen$direccion".DIRECCION,');
               SQL.Add('"gen$direccion".MUNICIPIO,');
               SQL.Add('"gen$direccion".TELEFONO1,');
               SQL.Add('"gen$direccion".COD_MUNICIPIO ');
               SQL.Add('from "gen$direccion"');
               SQL.Add('where');
               SQL.Add('"gen$direccion".ID_IDENTIFICACION = :"ID_IDENTIFICACION" and');
               SQL.Add('"gen$direccion".ID_PERSONA = :"ID_PERSONA"');
               ParamByName('ID_IDENTIFICACION').AsInteger := IBSCodeudores.FieldByName('ID_IDENTIFICACION').AsInteger;
               ParamByName('ID_PERSONA').AsString := Trim(IBSCodeudores.FieldByName('ID_PERSONA').AsString);
               ExecQuery;
               LineaC.CResid := RightPad(ibscuotas.FieldByName('MUNICIPIO').AsString, 20, ' '); //Format('%20s',[leftstr(trim(ibscuotas.FieldByName('MUNICIPIO').AsString),20)]);
               LineaC.DResid := RightPad(ibscuotas.FieldByName('DIRECCION').AsString, 60, ' '); //Format('%60s',[leftstr(trim(ibscuotas.FieldByName('DIRECCION').AsString),60)]);
               LineaC.TResid := RightPad(ibscuotas.FieldByName('TELEFONO1').AsString, 12, ' '); // StringReplace(Format('%12s',[leftstr(trim(ibscuotas.FieldByName('TELEFONO1').AsString),12)]),' ','0',[rfReplaceAll]);
               LineaC.CLabor := RightPad(ibscuotas.FieldByName('MUNICIPIO').AsString, 20, ' '); //  Format('%20s',[leftstr(trim(ibscuotas.FieldByName('MUNICIPIO').AsString),20)]);
               LineaC.DirLabora := RightPad(ibscuotas.FieldByName('DIRECCION').AsString, 60, ' ');
               LineaC.TLabor := RightPad(ibscuotas.FieldByName('TELEFONO1').AsString, 12, ' '); //StringReplace(Format('%12s',[leftstr(trim(ibscuotas.FieldByName('TELEFONO1').AsString),12)]),' ','0',[rfReplaceAll]);
               LineaC.CCorre := RightPad(ibscuotas.FieldByName('MUNICIPIO').AsString, 20, ' '); // Format('%20s',[leftstr(trim(ibscuotas.FieldByName('MUNICIPIO').AsString),20)]);
               LineaC.DCorre := RightPad(ibscuotas.FieldByName('DIRECCION').AsString, 60, ' ' ); //Format('%60s',[leftstr(trim(ibscuotas.FieldByName('DIRECCION').AsString),60)]);
               LineaC.CRDane := RightPad(ibscuotas.FieldByName('COD_MUNICIPIO').AsString, 8, '0');
               LineaC.CVDane := LineaC.CRDane;
               LineaC.CLDane := LineaC.CRDane;
               LineaC.CCDane := LineaC.CRDane;
               LineaC.DeptoResidencia := RightPad(GetDepartamento(LeftStr(RightStr(LineaC.CRDane,5), 2)),20, ' ');
               LineaC.DeptoLabora := LineaC.DeptoResidencia;
               LineaC.DeptoCorre := LineaC.DeptoResidencia;

               IBSCuotas.Close;
              end;

              LineaC.Respon := '01';

             {
              with IBSClientes do begin
                IBSClientes.Close;
                SQL.Clear;
                SQL.Add('select ID_IDENTIFICACION, ID_LINEA, FECHA_DESEMBOLSO, FECHA_VENCIMIENTO from "col$colocacion" where ID_AGENCIA = :ID_AGENCIA and ID_COLOCACION =:ID_COLOCACION');
                ParamByName('ID_AGENCIA').AsInteger := IBQuery1.FieldByName('ID_AGENCIA').AsInteger;
                ParamByName('ID_COLOCACION').AsString := IBQuery1.FieldByName('ID_COLOCACION').AsString;
                ExecQuery;
              end;

              if IBSClientes.FieldByName('ID_LINEA').AsInteger = 1 then
                 LineaC.Linea := '003'
              else if IBSClientes.FieldByName('ID_LINEA').AsInteger = 7 then
                 LineaC.Linea := '014'
              else  }
                 // LineaC.Linea := '007';

              // LineaC.FDes := Format('%.4d',[YearOf(IBSClientes.FieldByName('FECHA_DESEMBOLSO').AsDate)])+ Format('%.2d',[monthOf(IBSClientes.FieldByName('FECHA_DESEMBOLSO').AsDate)]) + Format('%.2d',[dayOf(IBSClientes.FieldByName('FECHA_DESEMBOLSO').AsDate)]);
              // LineaC.FVen := Format('%.4d',[YearOf(IBSClientes.FieldByName('FECHA_VENCIMIENTO').AsDate)])+ Format('%.2d',[monthOf(IBSClientes.FieldByName('FECHA_VENCIMIENTO').AsDate)]) + Format('%.2d',[dayOf(IBSClientes.FieldByName('FECHA_VENCIMIENTO').AsDate)]);
              {
              case IBSCodeudores.FieldByName('ID_IDENTIFICACION').AsInteger of
                 3 : LineaC.TpIdCi := '01';
                 4 : LineaC.TpIdCi := '02';
                 6 : LineaC.TpIdCi := '03';
                 2 : LineaC.TpIdCi := '04';
                 8 : LineaC.TpIdCi := '05';
                 7 : LineaC.TpIdCi := '07';
                 1 : LineaC.TpIdCi := '09';
                 0 : LineaC.TpIdCi := '01';
              end;
              }
              {
              DataActual.Open;
              DataActual.Insert;
              DataActual.FieldByName('NUMERO').AsString := LineaC.Numero;
              DataActual.FieldByName('IDENTIFICACION').AsString := LineaC.Identificacion;
              DataActual.FieldByName('NOMBRE').AsString := LineaC.Nombre;
              DataActual.FieldByName('NOMBREC').AsString := LineaC.NombreC;
              DataActual.FieldByName('FNACIM').AsString := LineaC.FNacim;
              DataActual.FieldByName('FAPERT').AsString := LineaC.FApert;
              DataActual.FieldByName('FVENCI').AsString := LineaC.FVenci;
              DataActual.FieldByName('VCUOTA').AsString := LineaC.VCuota;
              DataActual.FieldByName('NOVEDA').AsString := LineaC.Noveda;
              DataActual.FieldByName('ADJETI').AsString := LineaC.Adjeti;
              DataActual.FieldByName('TPIDEN').AsString := LineaC.C001_TpIden;
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
              DataActual.FieldByName('LINEA').AsString := LineaC.Linea;
              DataActual.FieldByName('FECHA_DESEMBOLSO').AsString := LineaC.FDes;
              DataActual.FieldByName('FECHA_VENCIMIENTO').AsString := LineaC.FVen;
              DataActual.FieldByName('IDIDENT').AsString := LineaC.TpIdCi;
              DataActual.Post;
              DataActual.Close;
}
              LineaC.SHipotecario := '0';
              LineaC.FSubsidio := '00000000';
              LineaC.TContrato := '1';
              LineaC.EOCuenta := '0';
              LineaC.FEOrigen := LineaC.FApert;
              if (StrToInt(LineaC.ValMor) = 0) then
              begin
                 LineaC.ECuenta := '01';
              end
              else
              begin
                 LineaC.ECuenta := '02';
              end;
              LineaC.FECuenta := FormatDateTime('yyyymmdd', EdFechaCorte.Date);
              LineaC.EPlastico := '0';
              LineaC.FEPlastico := '00000000';
              LineaC.CTarjeta := '0';
              LineaC.Franquicia := '0';
              LineaC.NMPrivada := RightPad(' ', 30, ' '); //Format('%30s', [' ']);
              LineaC.PIncumplimiento := '000';
              LineaC.CPermanencia := '000';
              LineaC.FCPermanencia := '00000000';
              LineaC.FLPago := '00000000';

            PlanoReporte.Add(LineaC.C001_TpIden  + LineaC.Identificacion  + LineaC.Numero  + LineaC.NombreC  + LineaC.STitular  + LineaC.FApert  + LineaC.FVenci  +
            LineaC.Respon  + LineaC.TpObli  + LineaC.SHipotecario  + LineaC.FSubsidio  + LineaC.TContrato  + LineaC.FoPago  + LineaC.PePago  +
            LineaC.Noveda  + LineaC.EOCuenta  + LineaC.FEOrigen  + LineaC.ECuenta  + LineaC.FECuenta  + LineaC.EPlastico  + LineaC.FEPlastico  +
            LineaC.Adjeti  + LineaC.FAdjetivo  + LineaC.CTarjeta  + LineaC.Franquicia  + LineaC.NMPrivada  + LineaC.TpMone  +
            LineaC.TpGara  + LineaC.Califi  + LineaC.PIncumplimiento  + LineaC.EdMora  + LineaC.ValIni  + LineaC.ValDeu  + LineaC.ValDis  + LineaC.VCuota  +
            LineaC.ValMor  + LineaC.TCuota  + LineaC.CCance  + LineaC.CeMora  + LineaC.CPermanencia  + LineaC.FCPermanencia  + LineaC.FLPago  + LineaC.FUPago  +
            LineaC.Oficin  + LineaC.CRadic  + LineaC.CRDane  + LineaC.CResid  + LineaC.CVDane  + LineaC.DeptoResidencia  + LineaC.DResid  + LineaC.TResid  +
            LineaC.CLabor  + LineaC.CLDane  + LineaC.DeptoLabora  + LineaC.DirLabora  + LineaC.TLabor  + LineaC.CCorre  + LineaC.CCDane  + LineaC.DeptoCorre  +
            LineaC.DCorre  + LineaC.Email  + LineaC.Celular  + LineaC.SubDestino  + LineaC.NTarjeta  + LineaC.DGarantia  + LineaC.Rellen);

              SumaRegistros := SumaRegistros + 1;
              Application.ProcessMessages;
              IBSCodeudores.Next;
             end; // fin de While Codeudores
            IBSCodeudores.Close;
            IBSClientes.Close;
             Application.ProcessMessages;
            // Fin proceso Codeudores
            Next;
//             end; // fin with IBSClientes
           end; // fin de while
           Close;
        end; //fin de with principal

//        PlanoReporte.SaveToFile('c:/Datacredito/Datacredito' + '2Paso' + '.TXT');
        CheckBox2.Checked := True;
        Application.ProcessMessages;
end;

procedure TfrmProcesarDatacredito.CmdProcesarClick(Sender: TObject);
begin
        CmdProcesar.Enabled := False;
        EdFechaCorteexit(Sender);

        Encabezado;
        ColActivas;
        Colcastigadas;
        ColSaldadas;
        InsertarTabla;
        RegistroFin;

        with IBSClientes do begin
         if Transaction.InTransaction then
           Transaction.Commit;
         Transaction.StartTransaction;
         Close;
         SQL.Clear;
         SQL.Add('insert into "col$controlreportedata" (FECHA_CORTE,FECHA_PROCESO,ID_EMPLEADO,PROCESADO,DATACREDITO,CIFIN) VALUES(:FECHA_CORTE,:FECHA_PROCESO,:ID_EMPLEADO,:PROCESADO,1,0)');
         ParamByName('FECHA_CORTE').AsString := MidStr(MesCorteAct,1,6);
         ParamByName('FECHA_PROCESO').AsDate := fFechaActual;
         ParamByName('ID_EMPLEADO').AsString := DBAlias;
         ParamByName('PROCESADO').AsInteger := 1;
         ExecQuery;
         Close;
         IBSClientes.Transaction.Commit;
        end;             

        CmdGenerar.Enabled := True;
end;

procedure TfrmProcesarDatacredito.FormShow(Sender: TObject);
var
    Dia:Word;
    Mes:Word;
    Ano:Word;
begin
        PlanoReporte := TStringList.Create;
//        PlanoErrores := TStringList.Create;
        PlanoReporte.Clear;
//        PlanoErrores.Clear;
        if dmGeneral.IBTransaction1.InTransaction then
          dmGeneral.IBTransaction1.Rollback;
        dmGeneral.IBTransaction1.StartTransaction;
        dmGeneral.IBDSagencias.Active := True;


        Ano := YearOf(Date);
        Mes := MonthOf(Date);
        Dia := DayOf(Date);

        Mes := Mes - 1;
        if Mes < 1 then
        begin
          Mes := 12;
          Ano := Ano -1;
        end;

        EdFechaCorte.Date := EncodeDate(Ano,Mes,Dia);

        EdFechaCorte.Date := RecodeDay(EdFechaCorte.Date,Dayof(EndOfAMonth(YearOf(EdFechaCorte.Date),MonthOf(EdFechaCorte.Date))));
        Dia := Dayof(EdFechaCorte.Date);
        if Dia > 30 then Dia := 30;
        EdFechaCorte.Date := RecodeDay(EdFechaCorte.Date,Dia);
        MesCorteAct := IntToStr(YearOf(EdFechaCorte.Date)) + FormatCurr('00',MonthOf(EdFechaCorte.Date)) + FormatCurr('00',DayOf(EdFechaCorte.Date));


{        EdFechaCorte.Date := RecodeDay(Date,Dayof(EndOfAMonth(YearOf(Date),MonthOf(Date))));
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
        MesCorteAct := IntToStr(YearOf(edFechaCorte.Date)) + MesAct;     }
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

        with IBSCuotas do begin
         Close;
         SQL.Clear;
         SQL.Add('select "col$causaciondiaria".DEUDA, "col$causaciondiaria".ID_EDAD_ACT, "col$causaciondiaria".ID_ESTADO');
         SQL.Add('from "col$causaciondiaria"');
         SQL.Add('where ID_AGENCIA = :ID_AGENCIA and');
         SQL.Add('ID_COLOCACION = :ID_COLOCACION and');
         SQL.Add('FECHA_CORTE = :FECHA_CORTE');
         ParamByName('ID_AGENCIA').AsInteger := IDAgencia;
         ParamByName('ID_COLOCACION').AsString := IdColocacion;
         ParamByName('FECHA_CORTE').AsDate := EdFechaCorte.Date;
         ExecQuery;
         Saldo := FieldByName('DEUDA').AsCurrency;
         Edad := FieldByName('ID_EDAD_ACT').AsString;
         Edad := Edad + Edad;
         Estado := FieldByName('ID_ESTADO').AsInteger;
         if (Estado = 2) then Novedad := 12;//'05'
         
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

        if (Estado = Fallecido) then Result := '1'
        else Result := '0';

end;

procedure TfrmProcesarDatacredito.FormCreate(Sender: TObject);
begin
        dmGeneral := TdmGeneral.Create(Self);
        dmGeneral.getConnected;

        IBQuery1.Database := dmGeneral.IBDatabase1;
        IBSNoCredito.Database := dmGeneral.IBDatabase1;
        IBSClientes.Database := dmGeneral.IBDatabase1;
        IBSCodeudores.Database := dmGeneral.IBDatabase1;
        IBSCuotas.Database := dmGeneral.IBDatabase1;
        IBQuery2.Database := dmGeneral.IBDatabase1;
        IBPersona.Database := dmGeneral.IBDatabase1;
        IBTmp.Database := dmGeneral.IBDatabase1;
        IBSReporteAnt.Database := dmGeneral.IBDatabase1;
        IBQuery3.Database := dmGeneral.IBDatabase1;

        IBQuery1.Transaction := dmGeneral.IBTransaction1;
        IBSNoCredito.Transaction := dmGeneral.IBTransaction1;
        IBSClientes.Transaction := dmGeneral.IBTransaction1;
        IBSCodeudores.Transaction := dmGeneral.IBTransaction1;
        IBSCuotas.Transaction := dmGeneral.IBTransaction1;
        IBQuery2.Transaction := dmGeneral.IBTransaction1;
        IBPersona.Transaction := dmGeneral.IBTransaction1;
        IBTmp.Transaction := dmGeneral.IBTransaction1;
        IBSReporteAnt.Transaction := dmGeneral.IBTransaction1;
        IBQuery3.Transaction := dmGeneral.IBTransaction1;
end;

procedure TfrmProcesarDatacredito.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
        DmGeneral.Free;
        Action := caFree;
end;

procedure TfrmProcesarDatacredito.CmdGenerarClick(Sender: TObject);
begin
//        PlanoReporte.SaveToFile('c:/Datacredito' + MesCorteAct + '.TXT');
        SD1.FileName := 'C:\360069.' + FormatDateTime('yyyymmdd', EdFechaCorte.Date) + '.T';
        if (SD1.Execute) then
        begin

                PlanoReporte.SaveToFile(SD1.FileName);
     //   PlanoErrores.SaveToFile('c:/ErroresDatacredito' + MesCorteAct + '.TXT');
                CmdVer.Enabled := True;
        end;
end;

procedure TfrmProcesarDatacredito.CmdVerClick(Sender: TObject);
var frmMuestroArchivoData : TfrmMuestroArchivoData;
begin
        frmMuestroArchivoData := TfrmMuestroArchivoData.Create(Self);
        frmMuestroArchivoData.Nombre := SD1.FileName;
        frmMuestroArchivoData.ShowModal;
end;

procedure TfrmProcesarDatacredito.RegistroFin;
var cadena:string;
    LineaC:string;
    i1,i2 :Integer;
    J:Integer;
begin
// Generar Identificador
      cadena := 'ZZZZZZZZZZZZZZZZZZ';
      LineaC := cadena;
// Fecha Proceso
      cadena := Format('%.4d',[YearOf(Date)]) + Format('%.2d',[monthOf(Date)])+ Format('%.2d',[dayof(Date)]);
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

procedure TfrmProcesarDatacredito.ColCastigadas;
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
             with IBQuery2 do begin
               Close;
               SQL.Clear;
               SQL.Add('select DESCRIPCION_AGENCIA, CODIGO_MUNICIPIO, CIUDAD from "gen$agencia" where ID_AGENCIA = :ID_AGENCIA');
               ParamByName('ID_AGENCIA').AsInteger := IBQuery1.FieldByName('ID_AGENCIA').AsInteger;
               Open;
               LineaC.CRDane := RightPad(FieldByName('CODIGO_MUNICIPIO').AsString,8, '0');
               DescAgencia := RightPad(LeftStr(Trim(FieldByName('DESCRIPCION_AGENCIA').AsString),30), 30, ' ');
               CiudadAgencia := FieldByName('CIUDAD').AsString;
               Close;
             end;

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
               SQL.Add('"gen$direccion".COD_MUNICIPIO,');
               SQL.Add('"gen$direccion".TELEFONO1');
               SQL.Add('from "gen$persona"');
               SQL.Add('left join "gen$direccion" on ("gen$persona".ID_IDENTIFICACION = "gen$direccion".ID_IDENTIFICACION and "gen$persona".ID_PERSONA = "gen$direccion".ID_PERSONA and "gen$direccion".CONSECUTIVO = 1)');
               SQL.Add('where');
               SQL.Add('"gen$persona".ID_IDENTIFICACION = :"ID_IDENTIFICACION" and');
               SQL.Add('"gen$persona".ID_PERSONA = :"ID_PERSONA"');
               ParamByName('ID_IDENTIFICACION').AsInteger := IBQuery1.FieldByName('ID_IDENTIFICACION').AsInteger;
               ParamByName('ID_PERSONA').AsString := IBQuery1.FieldByName('ID_PERSONA').AsString;
               ExecQuery;
               Nombre := Trim(IBPersona.FieldByName('PRIMER_APELLIDO').AsString + ' ' +
                      IBPersona.FieldByName('SEGUNDO_APELLIDO').AsString + ' ' +
                      IBPersona.FieldByName('NOMBRE').AsString);

               if (IBQuery1.FieldByName('ID_IDENTIFICACION').AsInteger <> 2) or (IBQuery1.FieldByName('ID_IDENTIFICACION').AsInteger <> 7) then
                begin
                  NombreC := RightPad(Format('%-45s',[LeftStr(IBPersona.FieldByName('NOMBRE').AsString + ' ' +IBPersona.FieldByName('PRIMER_APELLIDO').AsString + ' ' + IBPersona.FieldByName('SEGUNDO_APELLIDO').AsString, 45)]), 45, ' ');
                  LineaC.NombreC := NombreC;
                end
               else
                begin
                  NombreC := RightPad(Format('%-45s',[LeftStr(IBPersona.FieldByName('PRIMER_APELLIDO').AsString + ' ' +
                  IBPersona.FieldByName('SEGUNDO_APELLIDO').AsString + ' ' +
                  IBPersona.FieldByName('NOMBRE').AsString,45)]), 45, ' ');
                  LineaC.NombreC := NombreC;
                end;

               FechaNacimiento := IBPersona.FieldByName('FECHA_NACIMIENTO').AsString;
            end;
            LineaC.STitular := '0';
            NombreC := '';

             // LineaC.Nombre := Format('%-45s',[nombre]);
             Nombre := '';
             // LineaC.FNacim := '000000';
             LineaC.FApert := Format('%.4d',[YearOf(IBQuery1.FieldByName('FECHA_DESEMBOLSO').AsDateTime)])+Format('%.2d',[monthOf(IBQuery1.FieldByName('FECHA_DESEMBOLSO').AsDateTime)])+Format('%.2d',[dayOf(IBQuery1.FieldByName('FECHA_DESEMBOLSO').AsDateTime)]);
             LineaC.FVenci := Format('%.4d',[YearOf(IBQuery1.FieldByName('FECHA_VENCIMIENTO').AsDateTime)])+Format('%.2d',[monthOf(IBQuery1.FieldByName('FECHA_VENCIMIENTO').AsDateTime)]) + Format('%.2d',[dayOf(IBQuery1.FieldByName('FECHA_VENCIMIENTO').AsDateTime)]);
             LineaC.VCuota := Formatcurr('00000000000',IBQuery1.FieldByName('VALOR_CUOTA').ASCurrency);
             Fecha := IBQuery1.FieldByName('FECHA_INTERES').AsDateTime;
             if IBQuery1.FieldByName('INTERES').AsString = 'V' then
                Fecha := CalculoFecha(Fecha,IBQuery1.FieldByName('AMORTIZA_INTERES').AsInteger);
             Fecha := IncDay(Fecha);
             DiasMora := DiasEntre(Fecha,EdFechaCorte.Date);
             NovedadLocal := 13; //Novedad(IBQuery1.FieldByName('ID_AGENCIA').AsInteger,IBQuery1.FieldByName('ID_COLOCACION').AsString,DiasMora);
             SumaNovedad := SumaNovedad + NovedadLocal;
             LineaC.Noveda := StringReplace(Format('%2s',[IntToStr(Novedadlocal)]),' ','0',[rfReplaceAll]);
             LineaC.Adjeti := adjetivo(IBQuery1.FieldByName('ID_AGENCIA').AsInteger,IBQuery1.FieldByName('ID_COLOCACION').AsString);
             if (LineaC.Adjeti = '0') then
             begin
               LineaC.FAdjetivo :=  '00000000';
             end
             else
             begin
               LineaC.FAdjetivo :=  FormatDateTime('yyyymmdd', EdFechaCorte.Date);
             end;
             case IBQuery1.FieldByName('ID_IDENTIFICACION').AsInteger of
               3 : LineaC.C001_TpIden := '1';
               4 : LineaC.C001_TpIden := '2';
               6 : LineaC.C001_TpIden := '3';
               7 : LineaC.C001_TpIden := '4';
               9 : LineaC.C001_TpIden := '5';
               0 : LineaC.C001_TpIden := '1';
             end;
            LineaC.ValIni := FormatCurr('00000000000',ibquery1.FieldByName('VALOR_DESEMBOLSO').AsCurrency);
            LineaC.ValDeu := FormatCurr('00000000000',ibquery1.FieldByName('SALDO').AsCurrency);
<<<<<<< HEAD
            // if (IBQuery1.FieldByName('ID_ARRASTRE').AsString = 'A') or (IBQuery1.FieldByName('ID_ARRASTRE').AsString = 'B') then
              // LineaC.ValMor := FormatCurr('00000000000',ObtenerDeudaFecha(IBQuery1.FieldByName('ID_AGENCIA').AsInteger,IBQuery1.FieldByName('ID_COLOCACION').AsString,EdFechaCorte.Date,IBSCodeudores).Valor)
            // else
            LineaC.ValMor := FormatCurr('00000000000',IBQuery1.FieldByName('SALDO').AsCurrency);
=======
            if (IBQuery1.FieldByName('ID_ARRASTRE').AsString = 'A') or (IBQuery1.FieldByName('ID_ARRASTRE').AsString = 'B') then
              LineaC.ValMor := FormatCurr('00000000000',ObtenerDeudaFecha(IBQuery1.FieldByName('ID_AGENCIA').AsInteger,IBQuery1.FieldByName('ID_COLOCACION').AsString,EdFechaCorte.Date,IBSCodeudores).Valor)
            else
              LineaC.ValMor := FormatCurr('00000000000',IBQuery1.FieldByName('DEUDA').AsCurrency);
>>>>>>> 171925b3cf59501bab9dd1664befb26ff80c6cee
            LineaC.ValDis := '00000000000';
            LineaC.TpMone := '1';
            LineaC.TpObli := '2';
            LineaC.TpGara := IntToStr(IBQuery1.FieldByName('ID_GARANTIA').AsInteger);
            LineaC.Califi := IBQuery1.FieldByName('ID_EVALUACION').AsString + ' ';
            LineaC.CResid := RightPad(IBPersona.FieldByName('MUNICIPIO').AsString, 20, ' ');
            LineaC.DResid := RightPad(IBPersona.FieldByName('DIRECCION').AsString, 60, ' ');
            LineaC.TResid := RightPad(IBPersona.FieldByName('TELEFONO1').AsString, 12, ' ');
            LineaC.DirLabora := RightPad(IBPersona.FieldByName('DIRECCION').AsString, 60, ' ');
            LineaC.CLabor := RightPad(IBPersona.FieldByName('MUNICIPIO').AsString, 20, ' ');
            LineaC.TLabor := RightPad(IBPersona.FieldByName('TELEFONO1').AsString, 12, ' ');
            LineaC.CCorre := RightPad(IBPersona.FieldByName('MUNICIPIO').AsString, 20, ' ');
            LineaC.DCorre := RightPad(IBPersona.FieldByName('DIRECCION').AsString, 60, ' ');
            LineaC.CVDane := LineaC.CRDane;
            LineaC.CLDane := LineaC.CRDane;
            LineaC.CCDane := LineaC.CRDane;
            LineaC.DeptoResidencia := RightPad(GetDepartamento(LeftStr(RightStr(LineaC.CRDane,5), 2)),20, ' ');
            LineaC.DeptoLabora := LineaC.DeptoResidencia;
            LineaC.DeptoCorre := LineaC.DeptoResidencia;
            IBPersona.Close;
            // LineaC.Ciiu := '000000';
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

            LineaC.Oficin := RightPad(DescAgencia, 30, ' ');
            LineaC.CRadic := RightPad(CiudadAgencia, 20, ' ');

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
            // LineaC.FActua := Format('%.4d',[YearOf(EdFechaCorte.Date)]) + Format('%.2d',[monthOf(EdFechaCorte.Date)]) + Format('%.2d',[DayOf(EdFechaCorte.Date)]);
            // LineaC.Reclam := '0';
            LineaC.Respon := '00';
            // LineaC.Estrac := '3';
            LineaC.Rellen := '              ';

            with IBSClientes do begin
              IBSClientes.Close;
              SQL.Clear;
              SQL.Add('select ID_IDENTIFICACION, ID_LINEA, FECHA_DESEMBOLSO, FECHA_VENCIMIENTO from "col$colocacion" where ID_AGENCIA = :ID_AGENCIA and ID_COLOCACION =:ID_COLOCACION');
              ParamByName('ID_AGENCIA').AsInteger := IBQuery1.FieldByName('ID_AGENCIA').AsInteger;
              ParamByName('ID_COLOCACION').AsString := IBQuery1.FieldByName('ID_COLOCACION').AsString;
              ExecQuery;
            end;

<<<<<<< HEAD
=======
            {
            if IBSClientes.FieldByName('ID_LINEA').AsInteger = 1 then
               LineaC.Linea := '003'
            else if IBSClientes.FieldByName('ID_LINEA').AsInteger = 7 then
               LineaC.Linea := '014'
            else
               LineaC.Linea := '007';
            }
            // LineaC.FDes := Format('%.4d',[YearOf(IBSClientes.FieldByName('FECHA_DESEMBOLSO').AsDate)])+ Format('%.2d',[monthOf(IBSClientes.FieldByName('FECHA_DESEMBOLSO').AsDate)]) + Format('%.2d',[dayOf(IBSClientes.FieldByName('FECHA_DESEMBOLSO').AsDate)]);
            // LineaC.FVen := Format('%.4d',[YearOf(IBSClientes.FieldByName('FECHA_VENCIMIENTO').AsDate)])+ Format('%.2d',[monthOf(IBSClientes.FieldByName('FECHA_VENCIMIENTO').AsDate)]) + Format('%.2d',[dayOf(IBSClientes.FieldByName('FECHA_VENCIMIENTO').AsDate)]);
            {
            case IBSClientes.FieldByName('ID_IDENTIFICACION').AsInteger of
               3 : LineaC.TpIdCi := '01';
               4 : LineaC.TpIdCi := '02';
               6 : LineaC.TpIdCi := '03';
               2 : LineaC.TpIdCi := '04';
               8 : LineaC.TpIdCi := '05';
               7 : LineaC.TpIdCi := '07';
               1 : LineaC.TpIdCi := '09';
               0 : LineaC.TpIdCi := '01';
            end;
            }



>>>>>>> 171925b3cf59501bab9dd1664befb26ff80c6cee
            LineaC.SHipotecario := '0';
            LineaC.FSubsidio := '00000000';
            LineaC.TContrato := '1';
            LineaC.EOCuenta := '0';
            LineaC.FEOrigen := LineaC.FApert;
            if (StrToInt(LineaC.ValMor) = 0) then
            begin
               LineaC.ECuenta := '06';
            end
            else
            begin
               LineaC.ECuenta := '06';
            end;
            LineaC.FECuenta := FormatDateTime('yyyymmdd', EdFechaCorte.Date);
            LineaC.EPlastico := '0';
            LineaC.FEPlastico := '00000000';
            LineaC.CTarjeta := '0';
            LineaC.Franquicia := '0';
            LineaC.NMPrivada := RightPad(Format('%30s', [' ']), 30, ' ');
            LineaC.PIncumplimiento := '000';
            LineaC.CPermanencia := '000';
            LineaC.FCPermanencia := '00000000';
            LineaC.FLPago := '00000000';


            PlanoReporte.Add(LineaC.C001_TpIden  + LineaC.Identificacion  + LineaC.Numero  + LineaC.NombreC  + LineaC.STitular  + LineaC.FApert  + LineaC.FVenci  +
            LineaC.Respon  + LineaC.TpObli  + LineaC.SHipotecario  + LineaC.FSubsidio  + LineaC.TContrato  + LineaC.FoPago  + LineaC.PePago  +
            LineaC.Noveda  + LineaC.EOCuenta  + LineaC.FEOrigen  + LineaC.ECuenta  + LineaC.FECuenta  + LineaC.EPlastico  + LineaC.FEPlastico  +
            LineaC.Adjeti  + LineaC.FAdjetivo  + LineaC.CTarjeta  + LineaC.Franquicia  + LineaC.NMPrivada  + LineaC.TpMone  +
            LineaC.TpGara  + LineaC.Califi  + LineaC.PIncumplimiento  + LineaC.EdMora  + LineaC.ValIni  + LineaC.ValDeu  + LineaC.ValDis  + LineaC.VCuota  +
            LineaC.ValMor  + LineaC.TCuota  + LineaC.CCance  + LineaC.CeMora  + LineaC.CPermanencia  + LineaC.FCPermanencia  + LineaC.FLPago  + LineaC.FUPago  +
            LineaC.Oficin  + LineaC.CRadic  + LineaC.CRDane  + LineaC.CResid  + LineaC.CVDane  + LineaC.DeptoResidencia  + LineaC.DResid  + LineaC.TResid  +
            LineaC.CLabor  + LineaC.CLDane  + LineaC.DeptoLabora  + LineaC.DirLabora  + LineaC.TLabor  + LineaC.CCorre  + LineaC.CCDane  + LineaC.DeptoCorre  +
            LineaC.DCorre  + LineaC.Email  + LineaC.Celular  + LineaC.SubDestino  + LineaC.NTarjeta  + LineaC.DGarantia  + LineaC.Rellen);

<<<<<<< HEAD
=======
            {
            DataActual.Open;
            DataActual.Insert;
            DataActual.FieldByName('NUMERO').AsString := LineaC.Numero;
            DataActual.FieldByName('IDENTIFICACION').AsString := LineaC.Identificacion;
            DataActual.FieldByName('NOMBRE').AsString := LineaC.Nombre;
            DataActual.FieldByName('NOMBREC').AsString := LineaC.NombreC;
            DataActual.FieldByName('FNACIM').AsString := LineaC.FNacim;
            DataActual.FieldByName('FAPERT').AsString := LineaC.FApert;
            DataActual.FieldByName('FVENCI').AsString := LineaC.FVenci;
            DataActual.FieldByName('VCUOTA').AsString := LineaC.VCuota;
            DataActual.FieldByName('NOVEDA').AsString := LineaC.Noveda;
            DataActual.FieldByName('ADJETI').AsString := LineaC.Adjeti;
            DataActual.FieldByName('TPIDEN').AsString := LineaC.C001_TpIden;
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
            DataActual.FieldByName('LINEA').AsString := LineaC.Linea;
            DataActual.FieldByName('FECHA_DESEMBOLSO').AsString := LineaC.FDes;
            DataActual.FieldByName('FECHA_VENCIMIENTO').AsString := LineaC.FVen;
            DataActual.FieldByName('IDIDENT').AsString := LineaC.TpIdCi;
            DataActual.Post;
            DataActual.Close;
            }
>>>>>>> 171925b3cf59501bab9dd1664befb26ff80c6cee
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
<<<<<<< HEAD
=======
              {
               Nombre := IBSCodeudores.FieldByName('PRIMER_APELLIDO').AsString + ' '
                         + IBSCodeudores.FieldByName('SEGUNDO_APELLIDO').AsString + ' '
                         + IBSCodeudores.FieldByName('NOMBRE').AsString;

               LineaC.Nombre := Format('%-45s',[trim(IBSCodeudores.FieldByName('PRIMER_APELLIDO').AsString) + ' '
                       + trim(IBSCodeudores.FieldByName('SEGUNDO_APELLIDO').AsString) + ' '
                       + trim(IBSCodeudores.FieldByName('NOMBRE').AsString)]);
               Nombre := '';
               }
>>>>>>> 171925b3cf59501bab9dd1664befb26ff80c6cee

               if (IBSCodeudores.FieldByName('ID_IDENTIFICACION').AsInteger <> 2) or (IBSCodeudores.FieldByName('ID_IDENTIFICACION').AsInteger <> 7) then
                begin
                  NombreC := Format('%-45s',[LeftStr(IBSCodeudores.FieldByName('NOMBRE').AsString + ' ' +IBSCodeudores.FieldByName('PRIMER_APELLIDO').AsString + ' ' + IBSCodeudores.FieldByName('SEGUNDO_APELLIDO').AsString, 45)]);
                  LineaC.NombreC := RightPad(NombreC, 45, ' ');
                end
               else
                begin
                  NombreC := Format('%-45s',[LeftStr(IBSCodeudores.FieldByName('PRIMER_APELLIDO').AsString + ' ' +
                  IBSCodeudores.FieldByName('SEGUNDO_APELLIDO').AsString + ' ' +
                  IBSCodeudores.FieldByName('NOMBRE').AsString,45)]);
                  LineaC.NombreC := RightPad(NombreC, 45, ' ');
                end;

               LineaC.STitular := '0';
<<<<<<< HEAD

=======
               {
               if (IBSCodeudores.FieldByName('FECHA_NACIMIENTO').AsString = '') or (IBSCodeudores.FieldByName('FECHA_NACIMIENTO').AsString = '1899/12/30') Then
                LineaC.FNacim := '000000'
               else
                LineaC.FNacim := Format('%.4d',[YearOf(IBSCodeudores.FieldByName('FECHA_NACIMIENTO').AsDateTime)])+Format('%.2d',[monthOf(IBSCodeudores.FieldByName('FECHA_NACIMIENTO').AsDateTime)]);
               }
>>>>>>> 171925b3cf59501bab9dd1664befb26ff80c6cee
               SumaNovedad := SumaNovedad + NovedadLocal;
               case IBSCodeudores.FieldByName('ID_IDENTIFICACION').AsInteger of
                 3 : LineaC.C001_TpIden := '1';
                 4 : LineaC.C001_TpIden := '2';
                 6 : LineaC.C001_TpIden := '3';
                 7 : LineaC.C001_TpIden := '4';
                 9 : LineaC.C001_TpIden := '5';
                 0 : LineaC.C001_TpIden := '1';
               end;

              with IBSCuotas do begin
               Application.ProcessMessages;
               IBSCuotas.Close;
               SQL.Clear;
               SQL.Add('select first 1');
               SQL.Add('"gen$direccion".ID_DIRECCION,');
               SQL.Add('"gen$direccion".DIRECCION,');
               SQL.Add('"gen$direccion".MUNICIPIO,');
               SQL.Add('"gen$direccion".TELEFONO1,');
               SQL.Add('"gen$direccion".COD_MUNICIPIO');
               SQL.Add('from "gen$direccion"');
               SQL.Add('where');
               SQL.Add('"gen$direccion".ID_IDENTIFICACION = :"ID_IDENTIFICACION" and');
               SQL.Add('"gen$direccion".ID_PERSONA = :"ID_PERSONA"');
               ParamByName('ID_IDENTIFICACION').AsInteger := IBSCodeudores.FieldByName('ID_IDENTIFICACION').AsInteger;
               ParamByName('ID_PERSONA').AsString := Trim(IBSCodeudores.FieldByName('ID_PERSONA').AsString);
               ExecQuery;
               LineaC.CResid := RightPad(ibscuotas.FieldByName('MUNICIPIO').AsString, 20, ' '); //Format('%20s',[leftstr(trim(ibscuotas.FieldByName('MUNICIPIO').AsString),20)]);
               LineaC.DResid := RightPad(ibscuotas.FieldByName('DIRECCION').AsString, 60, ' '); //Format('%60s',[leftstr(trim(ibscuotas.FieldByName('DIRECCION').AsString),60)]);
               LineaC.TResid := RightPad(ibscuotas.FieldByName('TELEFONO1').AsString, 12, ' '); // StringReplace(Format('%12s',[leftstr(trim(ibscuotas.FieldByName('TELEFONO1').AsString),12)]),' ','0',[rfReplaceAll]);
               LineaC.DirLabora := RightPad(ibscuotas.FieldByName('DIRECCION').AsString, 60, ' ');
               LineaC.CLabor := RightPad(ibscuotas.FieldByName('MUNICIPIO').AsString, 20, ' '); //  Format('%20s',[leftstr(trim(ibscuotas.FieldByName('MUNICIPIO').AsString),20)]);
               LineaC.TLabor := RightPad(ibscuotas.FieldByName('TELEFONO1').AsString, 12, ' '); //StringReplace(Format('%12s',[leftstr(trim(ibscuotas.FieldByName('TELEFONO1').AsString),12)]),' ','0',[rfReplaceAll]);
               LineaC.CCorre := RightPad(ibscuotas.FieldByName('MUNICIPIO').AsString, 20, ' '); // Format('%20s',[leftstr(trim(ibscuotas.FieldByName('MUNICIPIO').AsString),20)]);
               LineaC.DCorre := RightPad(ibscuotas.FieldByName('DIRECCION').AsString, 60, ' ' ); //Format('%60s',[leftstr(trim(ibscuotas.FieldByName('DIRECCION').AsString),60)]);
               LineaC.CRDane := RightPad(FieldByName('COD_MUNICIPIO').AsString, 8, '0');
               LineaC.CLDane := LineaC.CRDane;
               LineaC.CVDane := LineaC.CRDane;
               LineaC.DeptoResidencia := RightPad(GetDepartamento(LeftStr(RightStr(LineaC.CRDane,5), 2)),20, ' ');
               LineaC.DeptoLabora := LineaC.DeptoResidencia;
               LineaC.DeptoCorre := LineaC.DeptoResidencia;
               IBSCuotas.Close;
              end;

              LineaC.Respon := '01';

              with IBSClientes do begin
                IBSClientes.Close;
                SQL.Clear;
                SQL.Add('select ID_IDENTIFICACION, ID_LINEA, FECHA_DESEMBOLSO, FECHA_VENCIMIENTO from "col$colocacion" where ID_AGENCIA = :ID_AGENCIA and ID_COLOCACION =:ID_COLOCACION');
                ParamByName('ID_AGENCIA').AsInteger := IBQuery1.FieldByName('ID_AGENCIA').AsInteger;
                ParamByName('ID_COLOCACION').AsString := IBQuery1.FieldByName('ID_COLOCACION').AsString;
                ExecQuery;
              end;
<<<<<<< HEAD
=======
              {
              if IBSClientes.FieldByName('ID_LINEA').AsInteger = 1 then
                 LineaC.Linea := '003'
              else if IBSClientes.FieldByName('ID_LINEA').AsInteger = 7 then
                 LineaC.Linea := '014'
              else
                 LineaC.Linea := '007';
              }
              // LineaC.FDes := Format('%.4d',[YearOf(IBSClientes.FieldByName('FECHA_DESEMBOLSO').AsDate)])+ Format('%.2d',[monthOf(IBSClientes.FieldByName('FECHA_DESEMBOLSO').AsDate)]) + Format('%.2d',[dayOf(IBSClientes.FieldByName('FECHA_DESEMBOLSO').AsDate)]);
              // LineaC.FVen := Format('%.4d',[YearOf(IBSClientes.FieldByName('FECHA_VENCIMIENTO').AsDate)])+ Format('%.2d',[monthOf(IBSClientes.FieldByName('FECHA_VENCIMIENTO').AsDate)]) + Format('%.2d',[dayOf(IBSClientes.FieldByName('FECHA_VENCIMIENTO').AsDate)]);
              {
              case IBSCodeudores.FieldByName('ID_IDENTIFICACION').AsInteger of
                 3 : LineaC.TpIdCi := '01';
                 4 : LineaC.TpIdCi := '02';
                 6 : LineaC.TpIdCi := '03';
                 2 : LineaC.TpIdCi := '04';
                 8 : LineaC.TpIdCi := '05';
                 7 : LineaC.TpIdCi := '07';
                 1 : LineaC.TpIdCi := '09';
                 0 : LineaC.TpIdCi := '01';
              end;
              }
>>>>>>> 171925b3cf59501bab9dd1664befb26ff80c6cee

            LineaC.SHipotecario := '0';
            LineaC.FSubsidio := '00000000';
            LineaC.TContrato := '1';
            LineaC.EOCuenta := '0';
            LineaC.FEOrigen := LineaC.FApert;
            if (StrToInt(LineaC.ValMor) = 0) then
            begin
               LineaC.ECuenta := '06';
            end
            else
            begin
               LineaC.ECuenta := '06';
            end;
            LineaC.FECuenta := FormatDateTime('yyyymmdd', EdFechaCorte.Date);
            LineaC.EPlastico := '0';
            LineaC.FEPlastico := '00000000';
            LineaC.CTarjeta := '0';
            LineaC.Franquicia := '0';
            LineaC.NMPrivada := RightPad(Format('%30s', [' ']), 30, ' ');
            LineaC.PIncumplimiento := '000';
            LineaC.CPermanencia := '000';
            LineaC.FCPermanencia := '00000000';
            LineaC.FLPago := '00000000';

            PlanoReporte.Add(LineaC.C001_TpIden  + LineaC.Identificacion  + LineaC.Numero  + LineaC.NombreC  + LineaC.STitular  + LineaC.FApert  + LineaC.FVenci  +
            LineaC.Respon  + LineaC.TpObli  + LineaC.SHipotecario  + LineaC.FSubsidio  + LineaC.TContrato  + LineaC.FoPago  + LineaC.PePago  +
            LineaC.Noveda  + LineaC.EOCuenta  + LineaC.FEOrigen  + LineaC.ECuenta  + LineaC.FECuenta  + LineaC.EPlastico  + LineaC.FEPlastico  +
            LineaC.Adjeti  + LineaC.FAdjetivo  + LineaC.CTarjeta  + LineaC.Franquicia  + LineaC.NMPrivada  + LineaC.TpMone  +
            LineaC.TpGara  + LineaC.Califi  + LineaC.PIncumplimiento  + LineaC.EdMora  + LineaC.ValIni  + LineaC.ValDeu  + LineaC.ValDis  + LineaC.VCuota  +
            LineaC.ValMor  + LineaC.TCuota  + LineaC.CCance  + LineaC.CeMora  + LineaC.CPermanencia  + LineaC.FCPermanencia  + LineaC.FLPago  + LineaC.FUPago  +
            LineaC.Oficin  + LineaC.CRadic  + LineaC.CRDane  + LineaC.CResid  + LineaC.CVDane  + LineaC.DeptoResidencia  + LineaC.DResid  + LineaC.TResid  +
            LineaC.CLabor  + LineaC.CLDane  + LineaC.DeptoLabora  + LineaC.DirLabora  + LineaC.TLabor  + LineaC.CCorre  + LineaC.CCDane  + LineaC.DeptoCorre  +
            LineaC.DCorre  + LineaC.Email  + LineaC.Celular  + LineaC.SubDestino  + LineaC.NTarjeta  + LineaC.DGarantia  + LineaC.Rellen);

<<<<<<< HEAD
=======
            {
              DataActual.Open;
              DataActual.Insert;
              DataActual.FieldByName('NUMERO').AsString := LineaC.Numero;
              DataActual.FieldByName('IDENTIFICACION').AsString := LineaC.Identificacion;
              DataActual.FieldByName('NOMBRE').AsString := LineaC.Nombre;
              DataActual.FieldByName('NOMBREC').AsString := LineaC.NombreC;
              DataActual.FieldByName('FNACIM').AsString := LineaC.FNacim;
              DataActual.FieldByName('FAPERT').AsString := LineaC.FApert;
              DataActual.FieldByName('FVENCI').AsString := LineaC.FVenci;
              DataActual.FieldByName('VCUOTA').AsString := LineaC.VCuota;
              DataActual.FieldByName('NOVEDA').AsString := LineaC.Noveda;
              DataActual.FieldByName('ADJETI').AsString := LineaC.Adjeti;
              DataActual.FieldByName('TPIDEN').AsString := LineaC.C001_TpIden;
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
              DataActual.FieldByName('LINEA').AsString := LineaC.Linea;
              DataActual.FieldByName('FECHA_DESEMBOLSO').AsString := LineaC.FDes;
              DataActual.FieldByName('FECHA_VENCIMIENTO').AsString := LineaC.FVen;
              DataActual.FieldByName('IDIDENT').AsString := LineaC.TpIdCi;
              DataActual.Post;
              DataActual.Close;
              }
>>>>>>> 171925b3cf59501bab9dd1664befb26ff80c6cee
              Application.ProcessMessages;
              SumaRegistros := SumaRegistros + 1;
              IBSCodeudores.Next;
             end; // fin de While Codeudores
            // Fin proceso Codeudores
            Application.ProcessMessages;
            Next;
           end; // fin de while
        end; //fin de with principal


//        PlanoReporte.SaveToFile('c:/Datacredito/Datacredito' + 'Castigados' + '.TXT');
//        PlanoErrores.SaveToFile('c:/Datacredito/ErroresDatacredito' + 'Castigados' + '.TXT');

        CheckBox3.Checked := True;
end;

procedure TfrmProcesarDatacredito.InsertarTabla;
var
S1,S2 :TStringList;
Colocacion,Documento:string;
i:Integer;
begin
        DataActual.Open;
        DataActual.Last;
        Bar.Min := 0;
        Bar.Max := DataActual.RecordCount;
        Bar.Position := 0;
        DataActual.First;
        while not DataActual.Eof do begin
          Bar.Position := DataActual.RecNo;
          Application.ProcessMessages;
          with IBSCodeudores do begin
            Close;
            SQL.Clear;
            SQL.Add('insert into "col$ReporteData"');
            SQL.Add('values (:NUMERO,:IDENTIFICACION,:NOMBRE,:NOMBREC,:FNACIM,:FAPERT,:FVENCI,');
            SQL.Add(':VCUOTA,:NOVEDAD,:ADJETI,:TPIDEN,:VALINI,:VALDEU,:VALMOR,:VALDIS,:TPMONE,:TPOBLI,:TPGARA,:CALIFI,');
            SQL.Add(':CRESID,:DRESID,:TRESID,:CLABOR,:TLABOR,:CCORRE,:DCORRE,:CIIU,:TCUOTA,:CCANCE,:CEMORA,:FUPAGO,:OFICIN,');
            SQL.Add(':CRADIC,:FOPAGO,:PEPAGO,:EDMORA,:FACTUA,:RECLAM,:RESPON,:ESTRAC,:RELLEN,:FECHA_CORTE,:LINEA,:FECHA_DESEMBOLSO,:FECHA_VENCIMIENTO,:IDIDENT)');
            ParamByName('NUMERO').AsString := DataActual.FieldByName('NUMERO').AsString;
            ParamByName('IDENTIFICACION').AsString := DataActual.FieldByName('IDENTIFICACION').AsString;
            ParamByName('NOMBRE').AsString := DataActual.FieldByName('NOMBRE').AsString;
            ParamByName('NOMBREC').AsString := DataActual.FieldByName('NOMBREC').AsString;
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
            ParamByName('FECHA_CORTE').AsString := MidStr(MesCorteAct,1,6);
            ParamByName('LINEA').AsString := DataActual.FieldByName('LINEA').AsString;
            ParamByName('FECHA_DESEMBOLSO').AsString := DataActual.FieldByName('FECHA_DESEMBOLSO').AsString;
            ParamByName('FECHA_VENCIMIENTO').AsString := DataActual.FieldByName('FECHA_VENCIMIENTO').AsString;
            ParamByName('IDIDENT').AsString := DataActual.FieldByName('IDIDENT').AsString;
            IBSCodeudores.ExecQuery;
            IBSCodeudores.Close;
          end;
          Application.ProcessMessages;
          DataActual.Next;
        end;

        CheckBox6.Checked := True;
        IBSCodeudores.Transaction.Commit;
end;

procedure TfrmProcesarDatacredito.ColSaldadas;
begin
        if dmGeneral.IBTransaction1.InTransaction then
          dmGeneral.IBTransaction1.Rollback;
        dmGeneral.IBTransaction1.StartTransaction;

    with IBQuery1 do begin
     Close;
     SQL.Clear;
     SQL.Add('select count(*) as CONTEO from "col$colocacion" where (extract(year from fecha_saldado) = :ANO and extract(month from FECHA_SALDADO) = :MES)');
     ParamByName('ANO').AsString := AnoAct;
     ParamByName('MES').AsString := MesAct;
     try
       Open;
       if RecordCount < 1 then begin
         MessageDlg('No existen Colocaciones Saldadas con esa fecha de corte',mtInformation,[mbok],0);
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
//    end;

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
     SQL.Add('"col$colocacion".FECHA_INTERES,');
     SQL.Add('"col$colocacion".ID_TIPO_CUOTA,');
     SQL.Add('"col$colocacion".AMORTIZA_INTERES,');
     SQL.Add('"col$colocacion".AMORTIZA_CAPITAL,');     
     SQL.Add('"col$colocacion".VALOR_DESEMBOLSO,');
     SQL.Add('"col$colocacion".ABONOS_CAPITAL,');
     SQL.Add('"col$colocacion".ID_CLASIFICACION,');
     SQL.Add('"col$colocacion".ID_CATEGORIA,');
     SQL.Add('"col$colocacion".ID_GARANTIA,');
     SQL.Add('"col$tiposcuota".INTERES,');
     SQL.Add('"col$colocacion".ID_LINEA,');
     SQL.Add('"col$colocacion".ID_ESTADO_COLOCACION');
     SQL.Add('from "col$colocacion"');
     SQL.Add('left join "gen$persona" on ("col$colocacion".ID_IDENTIFICACION = "gen$persona".ID_IDENTIFICACION and "col$colocacion".ID_PERSONA = "gen$persona".ID_PERSONA)');
     SQL.Add('INNER JOIN "col$tiposcuota" ON ("col$colocacion".ID_TIPO_CUOTA = "col$tiposcuota".ID_TIPOS_CUOTA)');
     SQL.Add('where');
     SQL.Add('(extract(year from fecha_saldado) = :ano and extract(month from FECHA_SALDADO) = :MES) order by ID_COLOCACION ASC');
     ParamByName('ANO').AsString := AnoAct;
     ParamByName('MES').AsString := MesAct;
     try
       Open;
     except
       Transaction.Rollback;
       raise;
       Exit;
     end;
    end;

     while not eof do begin
      Bar.Position := RecNo;
      Application.ProcessMessages;
<<<<<<< HEAD
      DiasMora := 0;
      ValorMora := 0;
=======
>>>>>>> 171925b3cf59501bab9dd1664befb26ff80c6cee

      ColocacionNew := IntToStr(IBQuery1.FieldByName('ID_AGENCIA').AsInteger) + IBQuery1.FieldByName('ID_COLOCACION').AsString;
      ConverColocacion := StrToInt64(ColocacionNew);
      ColocacionNew := Format('%.18d',[ConverColocacion]);       //'000000000000000000';
      ColocacionNew := stringreplace(Format('%18s',[colocacionnew]),' ','0',[rfReplaceAll]);
      NovedadLocal := 0;

      LineaC.Numero := ColocacionNew;
      LineaC.Identificacion := StringReplace(Format('%11s',[trim(Ibquery1.FieldByName('ID_PERSONA').AsString)]),' ','0',[rfReplaceAll]);
      with IBPersona do begin
       Application.ProcessMessages;
       Close;
       SQL.Clear;
       SQL.Add('select "gen$persona".PRIMER_APELLIDO, "gen$persona".SEGUNDO_APELLIDO,');
       SQL.Add('"gen$persona".NOMBRE, "gen$persona".FECHA_NACIMIENTO,');
       SQL.Add('"gen$direccion".ID_DIRECCION, "gen$direccion".DIRECCION,');
       SQL.Add('"gen$direccion".MUNICIPIO, "gen$direccion".TELEFONO1, "gen$direccion".COD_MUNICIPIO');
       SQL.Add('from "gen$persona"');
       SQL.Add('left join "gen$direccion" on ("gen$persona".ID_IDENTIFICACION = "gen$direccion".ID_IDENTIFICACION and "gen$persona".ID_PERSONA = "gen$direccion".ID_PERSONA)');
       SQL.Add('where "gen$persona".ID_IDENTIFICACION = :"ID_IDENTIFICACION" and');
       SQL.Add('"gen$persona".ID_PERSONA = :"ID_PERSONA"');
       ParamByName('ID_IDENTIFICACION').AsInteger := IBQuery1.FieldByName('ID_IDENTIFICACION').AsInteger;
       ParamByName('ID_PERSONA').AsString := IBQuery1.FieldByName('ID_PERSONA').AsString;
       ExecQuery;
       Nombre := Trim(IBPersona.FieldByName('PRIMER_APELLIDO').AsString + ' ' +
                 IBPersona.FieldByName('SEGUNDO_APELLIDO').AsString + ' ' +
                 IBPersona.FieldByName('NOMBRE').AsString);

       if (IBQuery1.FieldByName('ID_IDENTIFICACION').AsInteger <> 2) or (IBQuery1.FieldByName('ID_IDENTIFICACION').AsInteger <> 7) then
        begin
                  NombreC := RightPad(IBPersona.FieldByName('NOMBRE').AsString + ' ' +IBPersona.FieldByName('PRIMER_APELLIDO').AsString + ' ' + IBPersona.FieldByName('SEGUNDO_APELLIDO').AsString , 45, ' '); // Format('%-45s',[LeftStr(IBPersona.FieldByName('NOMBRE').AsString + ' ' +IBPersona.FieldByName('PRIMER_APELLIDO').AsString + ' ' + IBPersona.FieldByName('SEGUNDO_APELLIDO').AsString, 45)]);
                  LineaC.NombreC := NombreC;
        end
       else
        begin
          NombreC := RightPad(IBPersona.FieldByName('PRIMER_APELLIDO').AsString +
                     IBPersona.FieldByName('SEGUNDO_APELLIDO').AsString +
                     IBPersona.FieldByName('NOMBRE').AsString, 45, ' '); // Format('%-45s',[LeftStr(IBPersona.FieldByName('PRIMER_APELLIDO').AsString +
//                      IBPersona.FieldByName('SEGUNDO_APELLIDO').AsString +
//                     IBPersona.FieldByName('NOMBRE').AsString,45)]);
          LineaC.NombreC := NombreC;
        end;
       LineaC.STitular := '0';
       NombreC := '';
       FechaNacimiento := IBPersona.FieldByName('FECHA_NACIMIENTO').AsString;
       Close;
      end;

      with IBQuery2 do begin
        Close;
        SQL.Clear;
        SQL.Add('select DESCRIPCION_AGENCIA, CODIGO_MUNICIPIO, CIUDAD from "gen$agencia" where ID_AGENCIA = :ID_AGENCIA');
        ParamByName('ID_AGENCIA').AsInteger := IBQuery1.FieldByName('ID_AGENCIA').AsInteger;
        Open;

        DescAgencia := RightPad(LeftStr(Trim(FieldByName('DESCRIPCION_AGENCIA').AsString),30), 30, ' ');
        CiudadAgencia := FieldByName('CIUDAD').AsString;
        Close;
      end;

      // LineaC.Nombre := Format('%-45s',[LeftStr(Nombre,45)]);
      // Nombre := '';
      LineaC.FApert := Format('%.4d',[YearOf(IBQuery1.FieldByName('FECHA_DESEMBOLSO').AsDateTime)])+Format('%.2d',[monthOf(IBQuery1.FieldByName('FECHA_DESEMBOLSO').AsDateTime)])+Format('%.2d',[dayOf(IBQuery1.FieldByName('FECHA_DESEMBOLSO').AsDateTime)]);
      LineaC.FVenci := Format('%.4d',[YearOf(IBQuery1.FieldByName('FECHA_VENCIMIENTO').AsDateTime)])+Format('%.2d',[monthOf(IBQuery1.FieldByName('FECHA_VENCIMIENTO').AsDateTime)])+Format('%.2d',[dayOf(IBQuery1.FieldByName('FECHA_VENCIMIENTO').AsDateTime)]);
      LineaC.VCuota := Formatcurr('00000000000',IBQuery1.FieldByName('VALOR_CUOTA').ASCurrency);
      Fecha := IBQuery1.FieldByName('FECHA_INTERES').AsDateTime;
      if IBQuery1.FieldByName('INTERES').AsString = 'V' then
        Fecha := CalculoFecha(Fecha,IBQuery1.FieldByName('AMORTIZA_INTERES').AsInteger);
      Fecha := IncDay(Fecha);
<<<<<<< HEAD
      // _deuda := ObtenerDeudaFecha(IBQuery1.FieldByName('ID_AGENCIA').AsInteger,IBQuery1.FieldByName('ID_COLOCACION').AsString,EdFechaCorte.Date,IBSCodeudores);
      // DiasMora := _deuda.Dias;
      // ValorMora := _deuda.Valor;
      DiasMora := 0;
      ValorMora := 0;
=======
      DiasMora := ObtenerDeudaFecha(IBQuery1.FieldByName('ID_AGENCIA').AsInteger,IBQuery1.FieldByName('ID_COLOCACION').AsString,EdFechaCorte.Date,IBSCodeudores).Dias;
>>>>>>> 171925b3cf59501bab9dd1664befb26ff80c6cee
      if FieldByName('ID_ESTADO_COLOCACION').AsInteger = 7 THEN
        NovedadLocal := 5
      else
        NovedadLocal := 14;
      SumaNovedad := SumaNovedad + NovedadLocal;
      LineaC.Noveda := StringReplace(Format('%2s',[IntToStr(Novedadlocal)]),' ','0',[rfReplaceAll]);
      LineaC.Adjeti := adjetivo(IBQuery1.FieldByName('ID_AGENCIA').AsInteger,IBQuery1.FieldByName('ID_COLOCACION').AsString);
      if (LineaC.Adjeti = '0') then
      begin
        LineaC.FAdjetivo := '00000000';
      end
      else
      begin
        LineaC.FAdjetivo :=  FormatDateTime('yyyymmdd', EdFechaCorte.Date);
      end;
      case IBQuery1.FieldByName('ID_IDENTIFICACION').AsInteger of
        3 : LineaC.C001_TpIden := '1';
        4 : LineaC.C001_TpIden := '2';
        6 : LineaC.C001_TpIden := '3';
        7 : LineaC.C001_TpIden := '4';
        9 : LineaC.C001_TpIden := '5';
        0 : LineaC.C001_TpIden := '1';
      end;
            LineaC.ValIni := FormatCurr('00000000000',ibquery1.FieldByName('VALOR_DESEMBOLSO').AsCurrency);
            LineaC.ValDeu := '00000000000';
            if (IBQuery1.FieldByName('ID_CATEGORIA').AsString = 'A') or (IBQuery1.FieldByName('ID_CATEGORIA').AsString = 'B') then
<<<<<<< HEAD
              LineaC.ValMor := FormatCurr('00000000000',ValorMora)
=======
              LineaC.ValMor := FormatCurr('00000000000',ObtenerDeudaFecha(IBQuery1.FieldByName('ID_AGENCIA').AsInteger,IBQuery1.FieldByName('ID_COLOCACION').AsString,EdFechaCorte.Date,IBSCodeudores).Valor)
>>>>>>> 171925b3cf59501bab9dd1664befb26ff80c6cee
            else
              LineaC.ValMor := FormatCurr('00000000000',0);
            LineaC.ValDis := '00000000000';
      LineaC.TpMone := '1';
      LineaC.TpObli := '2';
      LineaC.TpGara := IntToStr(IBQuery1.FieldByName('ID_GARANTIA').AsInteger);
      LineaC.Califi := IBQuery1.FieldByName('ID_CATEGORIA').AsString + ' ';
      LineaC.CResid := RightPad(IBPersona.FieldByName('MUNICIPIO').AsString, 20, ' ');
      LineaC.DResid := RightPad(IBPersona.FieldByName('DIRECCION').AsString, 60, ' ');
      LineaC.TResid := RightPad(IBPersona.FieldByName('TELEFONO1').AsString, 12, ' ');
      LineaC.DirLabora := RightPad(IBPersona.FieldByName('DIRECCION').AsString, 60, ' ');
      LineaC.CLabor := RightPad(IBPersona.FieldByName('MUNICIPIO').AsString, 20, ' ');
      LineaC.TLabor := RightPad(IBPersona.FieldByName('TELEFONO1').AsString, 12, ' ');
      LineaC.CCorre := RightPad(IBPersona.FieldByName('MUNICIPIO').AsString, 20, ' ');
      LineaC.DCorre := RightPad(IBPersona.FieldByName('DIRECCION').AsString, 60, ' ');
      LineaC.CRDane := RightPad(IBPersona.FieldByName('COD_MUNICIPIO').AsString, 8, '0');
      LineaC.CVDane := LineaC.CRDane;
      LineaC.CLDane := LineaC.CRDane;
      LineaC.CCDane := LineaC.CRDane;
      LineaC.DeptoResidencia := RightPad(GetDepartamento(LeftStr(RightStr(LineaC.CRDane,5), 2)),20, ' ');
      LineaC.DeptoLabora := LineaC.DeptoResidencia;
      LineaC.DeptoCorre := LineaC.DeptoResidencia;

      // LineaC.Ciiu := '000000';
      with IBSCuotas do begin
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
         LineaC.CCance := Format('%.3d',[FieldByName('CUOTAS').AsInteger]);
         Close;
       except
         raise;
       end;
      end;

      LineaC.CeMora := '000';

      with IBQuery2 do begin
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


      LineaC.Oficin := RightPad(DescAgencia, 30, ' ');
      LineaC.CRadic := RightPad(CiudadAgencia, 20, ' ');
      LineaC.FoPago := '1';
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
      // LineaC.FActua := Format('%.4d',[YearOf(EdFechaCorte.Date)]) + Format('%.2d',[monthOf(EdFechaCorte.Date)]); // + Format('%.2d',[DayOf(EdFechaCorte.Date)]);
      // LineaC.Reclam := '0';
      LineaC.Respon := '00';
      // LineaC.Estrac := '3';
      LineaC.Rellen := '              ';

      {
      if IBQuery1.FieldByName('ID_LINEA').AsInteger = 1 then
        LineaC.Linea := '003'
      else if IBQuery1.FieldByName('ID_LINEA').AsInteger = 7 then
        LineaC.Linea := '014'
      else
        LineaC.Linea := '007';
      }
      // LineaC.FDes := Format('%.4d',[YearOf(IBQuery1.FieldByName('FECHA_DESEMBOLSO').AsDateTime)])+ Format('%.2d',[monthOf(IBQuery1.FieldByName('FECHA_DESEMBOLSO').AsDateTime)]) + Format('%.2d',[dayOf(IBQuery1.FieldByName('FECHA_DESEMBOLSO').AsDateTime)]);
      // LineaC.FVen := Format('%.4d',[YearOf(IBQuery1.FieldByName('FECHA_VENCIMIENTO').AsDateTime)])+ Format('%.2d',[monthOf(IBQuery1.FieldByName('FECHA_VENCIMIENTO').AsDateTime)]) + Format('%.2d',[dayOf(IBQuery1.FieldByName('FECHA_VENCIMIENTO').AsDateTime)]);
      {
      case IBQuery1.FieldByName('ID_IDENTIFICACION').AsInteger of
        3 : LineaC.TpIdCi := '01';
        4 : LineaC.TpIdCi := '02';
        6 : LineaC.TpIdCi := '03';
        2 : LineaC.TpIdCi := '04';
        8 : LineaC.TpIdCi := '05';
        7 : LineaC.TpIdCi := '07';
        1 : LineaC.TpIdCi := '09';
        0 : LineaC.TpIdCi := '01';
      end;
      }
     {
     DataActual.Open;
     DataActual.Insert;
     DataActual.FieldByName('NUMERO').AsString := LineaC.Numero;
     DataActual.FieldByName('IDENTIFICACION').AsString := LineaC.Identificacion;
     DataActual.FieldByName('NOMBRE').AsString := LineaC.Nombre;
     DataActual.FieldByName('NOMBREC').AsString := LineaC.NombreC;
     DataActual.FieldByName('FNACIM').AsString := LineaC.FNacim;
     DataActual.FieldByName('FAPERT').AsString := LineaC.FApert;
     DataActual.FieldByName('FVENCI').AsString := LineaC.FVenci;
     DataActual.FieldByName('VCUOTA').AsString := LineaC.VCuota;
     DataActual.FieldByName('NOVEDA').AsString := LineaC.Noveda;
     DataActual.FieldByName('ADJETI').AsString := LineaC.Adjeti;
     DataActual.FieldByName('TPIDEN').AsString := LineaC.C001_TpIden;
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
     DataActual.FieldByName('LINEA').AsString := LineaC.Linea;
     DataActual.FieldByName('FECHA_DESEMBOLSO').AsString := LineaC.FDes;
     DataActual.FieldByName('FECHA_VENCIMIENTO').AsString := LineaC.FVen;
     DataActual.FieldByName('IDIDENT').AsString := LineaC.TpIdCi;
     DataActual.Post;
     DataActual.Close;
     }
            LineaC.SHipotecario := '0';
            LineaC.FSubsidio := '00000000';
            LineaC.TContrato := '1';
            LineaC.EOCuenta := '0';
            LineaC.FEOrigen := LineaC.FApert;
            if (StrToInt(LineaC.ValMor) = 0) then
            begin
               LineaC.ECuenta := '03';
            end
            else
            begin
               LineaC.ECuenta := '03';
            end;
            LineaC.FECuenta := LineaC.FUPago;
            LineaC.EPlastico := '0';
            LineaC.FEPlastico := '00000000';
            LineaC.CTarjeta := '0';
            LineaC.Franquicia := '0';
            LineaC.NMPrivada := RightPad(Format('%30s', [' ']), 30, ' ');;
            LineaC.PIncumplimiento := '000';
            LineaC.CPermanencia := '000';
            LineaC.FCPermanencia := '00000000';
            LineaC.FLPago := '00000000';

            PlanoReporte.Add(LineaC.C001_TpIden  + LineaC.Identificacion  + LineaC.Numero  + LineaC.NombreC  + LineaC.STitular  + LineaC.FApert  + LineaC.FVenci  +
            LineaC.Respon  + LineaC.TpObli  + LineaC.SHipotecario  + LineaC.FSubsidio  + LineaC.TContrato  + LineaC.FoPago  + LineaC.PePago  +
            LineaC.Noveda  + LineaC.EOCuenta  + LineaC.FEOrigen  + LineaC.ECuenta  + LineaC.FECuenta  + LineaC.EPlastico  + LineaC.FEPlastico  +
            LineaC.Adjeti  + LineaC.FAdjetivo  + LineaC.CTarjeta  + LineaC.Franquicia  + LineaC.NMPrivada  + LineaC.TpMone  +
            LineaC.TpGara  + LineaC.Califi  + LineaC.PIncumplimiento  + LineaC.EdMora  + LineaC.ValIni  + LineaC.ValDeu  + LineaC.ValDis  + LineaC.VCuota  +
            LineaC.ValMor  + LineaC.TCuota  + LineaC.CCance  + LineaC.CeMora  + LineaC.CPermanencia  + LineaC.FCPermanencia  + LineaC.FLPago  + LineaC.FUPago  +
            LineaC.Oficin  + LineaC.CRadic  + LineaC.CRDane  + LineaC.CResid  + LineaC.CVDane  + LineaC.DeptoResidencia  + LineaC.DResid  + LineaC.TResid  +
            LineaC.CLabor  + LineaC.CLDane  + LineaC.DeptoLabora  + LineaC.DirLabora  + LineaC.TLabor  + LineaC.CCorre  + LineaC.CCDane  + LineaC.DeptoCorre  +
            LineaC.DCorre  + LineaC.Email  + LineaC.Celular  + LineaC.SubDestino  + LineaC.NTarjeta  + LineaC.DGarantia  + LineaC.Rellen);

     SumaRegistros := SumaRegistros + 1;
     // fin de proceso clientes

    // Inicio proceso CODEUDORES
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

    while not IBSCodeudores.Eof do begin
     Application.ProcessMessages;
     ColocacionNew := IntToStr(IBQuery1.FieldByName('ID_AGENCIA').AsInteger) + IBQuery1.FieldByName('ID_COLOCACION').AsString;
     ConverColocacion := StrToInt64(ColocacionNew);
     ColocacionNew := ColocacionNew + 'C' + IntToStr(IBSCodeudores.FieldByName('CSC_GARANTIA').AsInteger);
     ColocacionNew := stringreplace(Format('%18s',[colocacionnew]),' ','0',[rfReplaceAll]);

     LineaC.Numero := ColocacionNew;
     LineaC.Identificacion := StringReplace(Format('%11s',[trim(IBSCodeudores.FieldByName('ID_PERSONA').AsString)]),' ','0',[rfReplaceAll]);

     if (IBSCodeudores.FieldByName('ID_IDENTIFICACION').AsInteger <> 2) or (IBSCodeudores.FieldByName('ID_IDENTIFICACION').AsInteger <> 7) then
      begin
                  NombreC := RightPad(Format('%-45s',[LeftStr(IBSCodeudores.FieldByName('NOMBRE').AsString + ' ' +IBSCodeudores.FieldByName('PRIMER_APELLIDO').AsString + ' ' + IBSCodeudores.FieldByName('SEGUNDO_APELLIDO').AsString, 45)]), 45, ' ');
                  LineaC.NombreC := NombreC;
      end
     else
      begin
        NombreC := RightPad(Format('%-45s',[LeftStr(IBSCodeudores.FieldByName('PRIMER_APELLIDO').AsString + ' ' +
        IBSCodeudores.FieldByName('SEGUNDO_APELLIDO').AsString + ' ' +
        IBSCodeudores.FieldByName('NOMBRE').AsString,45)]), 45, ' ');
        LineaC.NombreC := NombreC;
      end;
     LineaC.STitular := '0';
     NombreC := '';

     Nombre := Trim(IBSCodeudores.FieldByName('PRIMER_APELLIDO').AsString + ' '
               + IBSCodeudores.FieldByName('SEGUNDO_APELLIDO').AsString + ' '
               + IBSCodeudores.FieldByName('NOMBRE').AsString);
     // LineaC.Nombre := Format('%-45s',[LeftStr(Nombre,45)]);
     Nombre := '';
     // LineaC.FNacim := '000000';
     SumaNovedad := SumaNovedad + NovedadLocal;
     case IBSCodeudores.FieldByName('ID_IDENTIFICACION').AsInteger of
      3 : LineaC.C001_TpIden := '1';
      4 : LineaC.C001_TpIden := '2';
      6 : LineaC.C001_TpIden := '3';
      7 : LineaC.C001_TpIden := '4';
      9 : LineaC.C001_TpIden := '5';
      0 : LineaC.C001_TpIden := '1';
     end;

     with IBSCuotas do begin
      Application.ProcessMessages;
      IBSCuotas.Close;
      SQL.Clear;
      SQL.Add('select first 1');
      SQL.Add('"gen$direccion".ID_DIRECCION,');
      SQL.Add('"gen$direccion".DIRECCION,');
      SQL.Add('"gen$direccion".MUNICIPIO,');
      SQL.Add('"gen$direccion".TELEFONO1,');
      SQL.Add('"gen$direccion".COD_MUNICIPIO ');
      SQL.Add('from "gen$direccion"');
      SQL.Add('where');
      SQL.Add('"gen$direccion".ID_IDENTIFICACION = :"ID_IDENTIFICACION" and');
      SQL.Add('"gen$direccion".ID_PERSONA = :"ID_PERSONA"');
      ParamByName('ID_IDENTIFICACION').AsInteger := IBSCodeudores.FieldByName('ID_IDENTIFICACION').AsInteger;
      ParamByName('ID_PERSONA').AsString := Trim(IBSCodeudores.FieldByName('ID_PERSONA').AsString);
      ExecQuery;
      LineaC.CResid := RightPad(ibscuotas.FieldByName('MUNICIPIO').AsString, 20, ' ');
      LineaC.DResid := RightPad(ibscuotas.FieldByName('DIRECCION').AsString, 60, ' ');
      LineaC.TResid := RightPad(ibscuotas.FieldByName('TELEFONO1').AsString, 12, ' ');
      LineaC.DirLabora := RightPad(ibscuotas.FieldByName('DIRECCION').AsString, 60, ' ');
      LineaC.CLabor := RightPad(ibscuotas.FieldByName('MUNICIPIO').AsString, 20, ' ');
      LineaC.TLabor := RightPad(ibscuotas.FieldByName('TELEFONO1').AsString, 12, ' ');
      LineaC.CCorre := RightPad(ibscuotas.FieldByName('MUNICIPIO').AsString, 20, ' ');
      LineaC.DCorre := RightPad(ibscuotas.FieldByName('DIRECCION').AsString, 60, ' ');
      LineaC.CRDane := RightPad(ibscuotas.FieldByName('COD_MUNICIPIO').AsString, 8, '0');
      LineaC.CVDane := LineaC.CRDane;
      LineaC.CLDane := LineaC.CRDane;
      LineaC.CCDane := LineaC.CRDane;
      LineaC.DeptoResidencia := RightPad(GetDepartamento(LeftStr(RightStr(LineaC.CRDane,5), 2)),20, ' ');
      LineaC.DeptoLabora := LineaC.DeptoResidencia;
      LineaC.DeptoCorre := LineaC.DeptoResidencia;

      IBSCuotas.Close;
     end;

     LineaC.Respon := '01';

     {
     DataActual.Open;
     DataActual.Insert;
     DataActual.FieldByName('NUMERO').AsString := LineaC.Numero;
     DataActual.FieldByName('IDENTIFICACION').AsString := LineaC.Identificacion;
     DataActual.FieldByName('NOMBRE').AsString := LineaC.Nombre;
     DataActual.FieldByName('NOMBREC').AsString := LineaC.NombreC;
     DataActual.FieldByName('FNACIM').AsString := LineaC.FNacim;
     DataActual.FieldByName('FAPERT').AsString := LineaC.FApert;
     DataActual.FieldByName('FVENCI').AsString := LineaC.FVenci;
     DataActual.FieldByName('VCUOTA').AsString := LineaC.VCuota;
     DataActual.FieldByName('NOVEDA').AsString := LineaC.Noveda;
     DataActual.FieldByName('ADJETI').AsString := LineaC.Adjeti;
     DataActual.FieldByName('TPIDEN').AsString := LineaC.C001_TpIden;
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
     DataActual.FieldByName('LINEA').AsString := LineaC.Linea;
     DataActual.FieldByName('FECHA_DESEMBOLSO').AsString := LineaC.FDes;
     DataActual.FieldByName('FECHA_VENCIMIENTO').AsString := LineaC.FVen;
     DataActual.FieldByName('IDIDENT').AsString := LineaC.TpIdCi;
     DataActual.Post;
     DataActual.Close;

     }
            LineaC.SHipotecario := '0';
            LineaC.FSubsidio := '00000000';
            LineaC.TContrato := '1';
            LineaC.EOCuenta := '0';
            LineaC.FEOrigen := LineaC.FApert;
            if (StrToInt(LineaC.ValMor) = 0) then
            begin
               LineaC.ECuenta := '03';
            end
            else
            begin
               LineaC.ECuenta := '03';
            end;
            LineaC.FECuenta := LineaC.FUPago;
            LineaC.EPlastico := '0';
            LineaC.FEPlastico := '00000000';
            LineaC.CTarjeta := '0';
            LineaC.Franquicia := '0';
            LineaC.NMPrivada := RightPad(Format('%30s', ['                              ']), 30, ' ');
            LineaC.PIncumplimiento := '000';
            LineaC.CPermanencia := '000';
            LineaC.FCPermanencia := '00000000';
            LineaC.FLPago := '00000000';

            PlanoReporte.Add(LineaC.C001_TpIden  + LineaC.Identificacion  + LineaC.Numero  + LineaC.NombreC  + LineaC.STitular  + LineaC.FApert  + LineaC.FVenci  +
            LineaC.Respon  + LineaC.TpObli  + LineaC.SHipotecario  + LineaC.FSubsidio  + LineaC.TContrato  + LineaC.FoPago  + LineaC.PePago  +
            LineaC.Noveda  + LineaC.EOCuenta  + LineaC.FEOrigen  + LineaC.ECuenta  + LineaC.FECuenta  + LineaC.EPlastico  + LineaC.FEPlastico  +
            LineaC.Adjeti  + LineaC.FAdjetivo  + LineaC.CTarjeta  + LineaC.Franquicia  + LineaC.NMPrivada  + LineaC.TpMone  +
            LineaC.TpGara  + LineaC.Califi  + LineaC.PIncumplimiento  + LineaC.EdMora  + LineaC.ValIni  + LineaC.ValDeu  + LineaC.ValDis  + LineaC.VCuota  +
            LineaC.ValMor  + LineaC.TCuota  + LineaC.CCance  + LineaC.CeMora  + LineaC.CPermanencia  + LineaC.FCPermanencia  + LineaC.FLPago  + LineaC.FUPago  +
            LineaC.Oficin  + LineaC.CRadic  + LineaC.CRDane  + LineaC.CResid  + LineaC.CVDane  + LineaC.DeptoResidencia  + LineaC.DResid  + LineaC.TResid  +
            LineaC.CLabor  + LineaC.CLDane  + LineaC.DeptoLabora  + LineaC.DirLabora  + LineaC.TLabor  + LineaC.CCorre  + LineaC.CCDane  + LineaC.DeptoCorre  +
            LineaC.DCorre  + LineaC.Email  + LineaC.Celular  + LineaC.SubDestino  + LineaC.NTarjeta  + LineaC.DGarantia  + LineaC.Rellen);

     SumaRegistros := SumaRegistros + 1;
     Application.ProcessMessages;
     IBSCodeudores.Next;
    end; // fin de While Codeudores

     IBSCodeudores.Close;
     Application.ProcessMessages;
     // Fin proceso Codeudores
     Next;

           end; // fin de while
           Close;
        end; //fin de with principal

//        PlanoReporte.SaveToFile('c:/Datacredito/Datacredito' + '2Paso' + '.TXT');
        CheckBox4.Checked := True;
        Application.ProcessMessages;

end;


end.
