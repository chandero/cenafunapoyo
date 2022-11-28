unit unitMain;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ImgList, Menus, ActnList, StdActns, ComCtrls,
  jpeg, ExtCtrls, pr_Common, pr_TxClasses, DB, IBCustomDataSet, IBQuery,
  IdBaseComponent, IdComponent, sdXmlDocuments, DateUtils,
  ToolWin, IBSQL, DBClient, FR_Class, FR_DSet, FR_DBSet, UnitDmGeneral,
  IdIntercept, IdLogBase, IdLogDebug, StdCtrls, UnitSmsRequest, UnitDialogoSMS, UnitConsultaSMS,
  UnitInformeCausacionyProvision, UnitCarteraEnMoraPorAsesor, UnitProyeccionRecuperacionCartera,
  UnitGenerarCodigoReversionCartera, IdTCPConnection, IdTCPClient, IdHTTP,
  IdSSLIntercept, IdSSLOpenSSL, IBDatabase;

type
  TfrmMain = class(TForm)
    MainMenu: TMainMenu;
    PrinterSetupDialog: TPrinterSetupDialog;
    ActionList: TActionList;
    Mnu01: TMenuItem;
    ConfigurarImpresora1: TMenuItem;
    N1: TMenuItem;
    SalirdePSI1: TMenuItem;
    Configurar_Impresora: TAction;
    N2: TMenuItem;
    Consultas1: TMenuItem;
    Colocacion1: TMenuItem;
    VerTablaLiquidacion1: TMenuItem;
    Cartera1: TMenuItem;
    LiquidacindeCuotas1: TMenuItem;
    ConsolidadoDiario1: TMenuItem;
    IBQuery1: TIBQuery;
    LiquidacinManual1: TMenuItem;
    ExtractoColocacion2: TMenuItem;
    CalcularTasas1: TMenuItem;
    IBQuery2: TIBQuery;
    ReversarAbono1: TMenuItem;
    ControldeCobro1: TMenuItem;
    LiquidacionManual1: TMenuItem;
    EstadodeCobro1: TMenuItem;
    Informes1: TMenuItem;
    ColocacionesporEstado1: TMenuItem;
    Utilidades1: TMenuItem;
    Mantenimiento1: TMenuItem;
    Barrido1: TMenuItem;
    ExtractoCaptacion1: TMenuItem;
    RecuperarLiquidacin1: TMenuItem;
    ImageList: TImageList;
    ToolBar1: TToolBar;
    ToolButton2: TToolButton;
    BtnExtracto: TToolButton;
    ToolButton3: TToolButton;
    BtnConsultaPersona: TToolButton;
    ToolButton5: TToolButton;
    BtnSalir: TToolButton;
    BtnExtractoCredito: TToolButton;
    BtnDescuentoCartera: TToolButton;
    ToolButton1: TToolButton;
    AgregarCostas1: TMenuItem;
    CambiarContrasea1: TMenuItem;
    ConsultasGerenciales1: TMenuItem;
    Ocultas1: TMenuItem;
    Liquidacin1: TMenuItem;
    N3: TMenuItem;
    N4: TMenuItem;
    N5: TMenuItem;
    N6: TMenuItem;
    CmdControlCobro: TToolButton;
    ToolButton6: TToolButton;
    Gestiones1: TMenuItem;
    ResumenCartera1: TMenuItem;
    ConsultaColocacionesAhorros1: TMenuItem;
    N8: TMenuItem;
    ReporteAsociadosporMunicipio1: TMenuItem;
    MarcarProrroga1: TMenuItem;
    Timer1: TTimer;
    LiquidaciondePrueba1: TMenuItem;
    Timer2: TTimer;
    ConsultaEscritura1: TMenuItem;
    ReporteGeneralColocaciones1: TMenuItem;
    N9: TMenuItem;
    ComprobantesContables1: TMenuItem;
    LiquidacionCastigada1: TMenuItem;
    Balance1: TMenuItem;
    CausacinyProvisindeCartera1: TMenuItem;
    ReporteCreditosCancelados1: TMenuItem;
    ConsultaDeduccionesAseguradora1: TMenuItem;
    Observaciones1: TMenuItem;
    ImpresindeBarrido1: TMenuItem;
    N11: TMenuItem;
    Abogados1: TMenuItem;
    MantenimientodeAbogados1: TMenuItem;
    AsignacindeAbogados1: TMenuItem;
    Cartera2: TMenuItem;
    ColocacionesenAbogados1: TMenuItem;
    Creditos1: TMenuItem;
    IBSQL1: TIBSQL;
    LiquidacindePrueba1: TMenuItem;
    ConsultadeSolicitud1: TMenuItem;
    ControlCarta1: TMenuItem;
    LiquidacionDesembolso1: TMenuItem;
    N7: TMenuItem;
    DiasEntreFechas1: TMenuItem;
    N10: TMenuItem;
    ListadosConsolidados1: TMenuItem;
    N12: TMenuItem;
    ReversionesdeCartera1: TMenuItem;
    EndosoPagares1: TMenuItem;
    ColocacionesEndosadas1: TMenuItem;
    CargarPagares1: TMenuItem;
    DecargarPagares1: TMenuItem;
    CambiosdeEstado1: TMenuItem;
    CarteradePrivilegiados1: TMenuItem;
    Lineas: TMenuItem;
    R1: TMenuItem;
    Reporte: TprTxReport;
    CausacionyProvisionDiaria1: TMenuItem;
    N13: TMenuItem;
    SolicitudesSeccionCrditos1: TMenuItem;
    SolicitudesenAnalisis1: TMenuItem;
    SolicitudesAprobadas1: TMenuItem;
    CdAnalisis: TClientDataSet;
    CdAnalisisnombre: TStringField;
    CdAnalisisanalista: TStringField;
    CdAnalisissolicitud: TStringField;
    CdAnalisisfecha: TDateField;
    CdAnalisisvalor_solicitado: TCurrencyField;
    CdAnalisisvalor_pendiente: TCurrencyField;
    CdAnalisisv_pendiente: TStringField;
    CdAnalisisv_solicitado: TStringField;
    CdAnalisisid_empleado: TStringField;
    IBanalisis: TIBQuery;
    IbAgencias: TIBQuery;
    frReport1: TfrReport;
    GeneracionPlanoBancoldex1: TMenuItem;
    CDsolicitud: TClientDataSet;
    CDsolicitudid_solicitud: TStringField;
    CDsolicitudempleado: TStringField;
    CDsolicitudvalor: TCurrencyField;
    CDsolicitudfecha: TDateField;
    CDsolicitudasociado: TStringField;
    CDsolicitudagencia: TStringField;
    frDBDataSet3: TfrDBDataSet;
    frDBDataSet2: TfrDBDataSet;
    RecuperacionesdeCartera1: TMenuItem;
    InformeMer1: TMenuItem;
    RequerimientoSIstemas1: TMenuItem;
    DesembolsosDiarios1: TMenuItem;
    ReporteAseguradora1: TMenuItem;
    ProyeccinRecuperacinCartera1: TMenuItem;
    EstablecerCompromiso1: TMenuItem;
    ClculodeComisinAsesor1: TMenuItem;
    ValorRecuperadodeAportesporCuotasPagadas1: TMenuItem;
    CarteraporAsesor1: TMenuItem;
    RecuperacindeCapitalizacin1: TMenuItem;
    EnviarSMS1: TMenuItem;
    ConsultarEstadodelosSMS1: TMenuItem;
    MnCausacionProvision: TMenuItem;
    CarteraEnMoraPorAsesor1: TMenuItem;
    ProyeccinRecuperacinCartera2: TMenuItem;
    InformeCarteraSaldada1: TMenuItem;
    GenerarCdigodeAprobacinReversinAbonoCartera1: TMenuItem;
    estSOAPConexus1: TMenuItem;
    estGETConexus1: TMenuItem;
    IdHTTP1: TIdHTTP;
    IdConnectionInterceptOpenSSL1: TIdConnectionInterceptOpenSSL;
    AcuerdosdePago1: TMenuItem;
    IBQtablaacuerdo: TIBQuery;
    IBTtablaacuerdo: TIBTransaction;
    procedure Configurar_ImpresoraExecute(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure ConfigurarImpresora1Click(Sender: TObject);
    procedure SalirdePSI1Click(Sender: TObject);
    procedure LiquidacindeCuotas1Click(Sender: TObject);
    procedure VerTablaLiquidacion1Click(Sender: TObject);
    procedure LiquidacinManual1Click(Sender: TObject);
    procedure ExtractoColocacion1Click(Sender: TObject);
    procedure Colocacion1Click(Sender: TObject);
    procedure CalcularTasas1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure ConsolidadoDiario1Click(Sender: TObject);
    procedure ReversarAbono1Click(Sender: TObject);
    procedure ConsultaGerencia1Click(Sender: TObject);
    procedure ControldeCobro1Click(Sender: TObject);
    procedure LiquidacionManual1Click(Sender: TObject);
    procedure EstadodeCobro1Click(Sender: TObject);
    procedure ColocacionesporEstado1Click(Sender: TObject);
    procedure BarridodeCartera1Click(Sender: TObject);
    procedure Mantenimiento1Click(Sender: TObject);
    procedure ExtractoCaptacion1Click(Sender: TObject);
    procedure RecuperarLiquidacin1Click(Sender: TObject);
    procedure BtnExtractoClick(Sender: TObject);
    procedure BtnSalirClick(Sender: TObject);
    procedure BtnDescuentoCarteraClick(Sender: TObject);
    procedure FormPaint(Sender: TObject);
    procedure BtnExtractoCreditoClick(Sender: TObject);
    procedure AgregarCostas1Click(Sender: TObject);
    procedure CambiarContrasea1Click(Sender: TObject);
    procedure CmdControlCobroClick(Sender: TObject);
    procedure ResumenCartera1Click(Sender: TObject);
    procedure ConsultaColocacionesAhorros1Click(Sender: TObject);
    procedure ReporteAsociadosporMunicipio1Click(Sender: TObject);
    procedure MarcarProrroga1Click(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
    procedure LiquidaciondePrueba1Click(Sender: TObject);
    procedure FormMouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure Timer2Timer(Sender: TObject);
    procedure ConsultaEscritura1Click(Sender: TObject);
    procedure ReporteGeneralColocaciones1Click(Sender: TObject);
    procedure ComprobantesContables1Click(Sender: TObject);
    procedure LiquidacionCastigada1Click(Sender: TObject);
    procedure CausacinyProvisindeCartera1Click(Sender: TObject);
    procedure ReporteCreditosCancelados1Click(Sender: TObject);
    procedure EstadodeCaptacin1Click(Sender: TObject);
    procedure ConsultaDeduccionesAseguradora1Click(Sender: TObject);
    procedure Observaciones1Click(Sender: TObject);
    procedure ImpresindeBarrido1Click(Sender: TObject);
    procedure MantenimientodeAbogados1Click(Sender: TObject);
    procedure AsignacindeAbogados1Click(Sender: TObject);
    procedure ColocacionesenAbogados1Click(Sender: TObject);
    procedure LiquidacindePrueba1Click(Sender: TObject);
    procedure ConsultadeSolicitud1Click(Sender: TObject);
    procedure ControlCarta1Click(Sender: TObject);
    procedure LiquidacionDesembolso1Click(Sender: TObject);
    procedure DiasEntreFechas1Click(Sender: TObject);
    procedure ListadosConsolidados1Click(Sender: TObject);
    procedure ReversionesdeCartera1Click(Sender: TObject);
    procedure ColocacionesEndosadas1Click(Sender: TObject);
    procedure CargarPagares1Click(Sender: TObject);
    procedure DecargarPagares1Click(Sender: TObject);
    procedure EndosoPagares1Click(Sender: TObject);
    procedure CambiosdeEstado1Click(Sender: TObject);
    procedure CarteradePrivilegiados1Click(Sender: TObject);
    procedure LineasClick(Sender: TObject);
    procedure R1Click(Sender: TObject);
    procedure CausacionyProvisionDiaria1Click(Sender: TObject);
    procedure ProvisionyCausacion1Click(Sender: TObject);
    procedure SolicitudesenAnalisis1Click(Sender: TObject);
    procedure GeneracionPlanoBancoldex1Click(Sender: TObject);
    procedure SolicitudesSeccionCrditos1Click(Sender: TObject);
    procedure RecuperacionesdeCartera1Click(Sender: TObject);
    procedure InformeMer1Click(Sender: TObject);
    procedure RequerimientoSIstemas1Click(Sender: TObject);
    procedure DesembolsosDiarios1Click(Sender: TObject);
    procedure ReporteAseguradora1Click(Sender: TObject);
    procedure ClculodeComisinAsesor1Click(Sender: TObject);
    procedure CarteraporAsesor1Click(Sender: TObject);
    procedure ValorRecuperadodeAportesporCuotasPagadas1Click(
      Sender: TObject);
    procedure EnviarSMS1Click(Sender: TObject);
    procedure ConsultarEstadodelosSMS1Click(Sender: TObject);
    procedure MnCausacionProvisionClick(Sender: TObject);
    procedure CarteraEnMoraPorAsesor1Click(Sender: TObject);
    procedure ProyeccinRecuperacinCartera2Click(Sender: TObject);
    procedure InformeCarteraSaldada1Click(Sender: TObject);
    procedure GenerarCdigodeAprobacinReversinAbonoCartera1Click(
      Sender: TObject);
    procedure estSOAPConexus1Click(Sender: TObject);
    procedure estGETConexus1Click(Sender: TObject);
    procedure AcuerdosdePago1Click(Sender: TObject);
  private
    { Private declarations }
    SalirMal:Boolean;
    TheGraphic: TBitmap;
    FUltimaActividad:TDateTime;
    XmlPetC :TsdXmlDocument;
    XmlresC :TsdXmlDocument;
    nodo,nodo1 :TXmlNode;
    Valida_Tcp :Boolean;
    Astream :TMemoryStream;
    tamano :Integer;

    procedure AtraparMensajes(var Msg: TMsg; var Handled: Boolean);
    procedure AnaOficinas(puerto, id_agencia: integer; DesAgencia,
      hostp: string);
    procedure SolicitudCreditos;
    procedure agencias(host_r, dagencia: string; puerto,
      vIdAgencia: integer);
  public
  ruta1 :string;
  published
    procedure imprimir_reporte(cadena: string);
    { Public declarations }
  end;

var
  frmMain: TfrmMain;
  FechaHora:TDateTime;
implementation

{$R *.dfm}

uses unitLogin, unitdmColocacion, IniFiles,
     UnitLiquidaciondePrueba, UnitCalculoCuotadePrueba,
     UnitTablaLiquidacion, UnitConsultaColocacion,
     UnitVistaPreliminar,
     UnitExtractoColocacion, UnitCalculoTasas,
     UnitInformeDiarioCartera, UnitReversionAbonoCartera,
     UnitConsultaProductos, UnitGlobales, UnitEnvioJudicialCastigada,
     UnitControlCobroCartera, UnitLiquidacionExtraordinaria1, UnitInformeColocacionesporestado,
     UnitBarridoCartera, UnitCreaciondePersona, UnitConsultaExtractoCaptacion,
     UnitRecuperarLiquidacionColocacion, UnitCargarCostasJudiciales,
     UnitCambiarContrasena, UnitResumenColocaciones, UnitInformeCobroConstante,
     UnitInformeAsociadosporMunicipio, UnitMarcarProrroga,
     UnitLiquidacionCarteraJudicial, UnitReLogin, UnitBuscarEscritura, UnitInformeColocacionFiltrado,
     Unit_Comprobante, UnitLiquidacionCastigada,UnitCausacionColocaciones,
     UnitInformeCreditosCancelados, UnitEstadoCaptacionporCartera,
     UnitInformeAseguradoraCartera, UnitControldeObservaciones, UnitRecuperarBarridoCartera,
     UnitMantenimientoAbogados, UnitAsignacionAbogado, UnitRCarteraAbogados,
     UnitConsultaSol, UnitLiquidacionGral, UnitControlCarta,UnitLiquidacionJudicialDes,
     UnitDiasEntreFechas, UnitColocaciones, UnitReporteReversionCartera,
     UnitEndosoPagare, UnitReporteEndoso, UnitDescargaPagare, UnitReporteCambioEstadoColocacion,
     UnitInformeCarteraPrivilegiados,UnitExtractoCredito, UnitMidificaLinea, UnitCausacionCarteraDiaria,
     UnitPantallaProgreso, UnitImpresion, UnitConsolidarPlanoBancoldex, UnitRecuperacionesCartera,
     UnitInformeAsociadosMercado, UnitCambios, UnitInformeDiarioDesembolsos, UnitReporteAseguradora, UnitCalculoComisionAsesor,
     UnitCarteraxAsesor, UnitRecuperaciondeAportesPorCuotasPagas, UnitInformeCarteraSaldada, UnitFacturar, UnitInformeAcuerdoPago;

procedure TfrmMain.Configurar_ImpresoraExecute(Sender: TObject);
begin
        PrinterSetupDialog.Execute;
end;

procedure TfrmMain.FormCreate(Sender: TObject);
var frmLogin:TfrmLogin;
    frmCambiarContrasena:TfrmCambiarContrasena;
    Veces :SmallInt;
    Mensaje :String;
    Ruta:string;
    AA,MM,DD,H,M,S,ms:Word;
//    Role:string;
    Dias:Integer;
    Ufecha,Hoy:TDate;
    dmGeneral: TdmGeneral;
//    frmConectando:TfrmConectando;
begin
  Application.OnMessage := AtraparMensajes;
  Timer2.Enabled := False;

  MiINI := ChangeFileExt(Application.ExeName,'.ini');
  with TIniFile.Create(MiINI) do
  try
    DBserver := ReadString('DBNAME','server','localhost');
    DBPath := ReadString('DBNAME','path','C:/base/');
    DBname := ReadString('DBNAME','name','database.fdb');
    Empresa := ReadString('EMPRESA','name','ALEXANDER CRUZ');
    Nit     := ReadString('EMPRESA','nit','91.288.352-5');
    Agencia := ReadInteger('EMPRESA','Agencia',1);
    Ciudad  := ReadString('EMPRESA','city','BUCARAMANGA');
    DBMinutos := ReadFloat('ADICIONALES','timerrelogin',1);
    DBAnho := ReadInteger('EMPRESA','Anho',2017);
  finally
    free;
  end;
     dmGeneral := TdmGeneral.Create(self);
//  Timer1.OnTimer(Sender);
     DecodeDateTime(Now,AA,MM,DD,H,M,S,ms);
     H := 00;
     M := 00;
     S := 00;
     ms := 00;
     control_consulta := True;
     Veces := 0;
        frmLogin := TfrmLogin.Create(Self);
        frmLogin.EdRole.Text := 'CARTERA';
        dmGeneral.IBDatabase1.Connected := false;
        while Not dmGeneral.IBDatabase1.Connected do
          begin
           if Veces = 3 then
           begin
                SalirMal := True;
//                Self.Close;
                Exit;
           end;
          if frmLogin.ShowModal = mrOk then
           begin
             with frmLogin do
             begin
                DBAlias := EdUsuario.Text;
                DBPasabordo:= EdPasabordo.Text;
                Role := EdRole.Text;
                dmGeneral.IBDatabase1.DataBaseName := DBserver + ':' + DBpath + DBname;
                dmGeneral.IBDatabase1.Params.Values['lc_ctype'] := 'ISO8859_1';
                dmGeneral.IBDatabase1.Params.Values['User_Name'] := DBAlias;
                dmGeneral.IBDatabase1.Params.Values['PassWord'] := DBPasabordo;
                dmGeneral.IBDatabase1.Params.Values['sql_role_name'] := Role;
                Veces := Veces + 1;
                try
                    dmGeneral.IBDatabase1.Connected := True;
                    dmGeneral.IBTransaction1.Active := True;
                except
                        on E: Exception do
                        begin
                          if StrLIComp(PChar(E.Message),PChar('Your user name'),14) = 0 then
                           begin
                            Mensaje :='Verifique su Nombre y su Contraseña' + #10 + #13 + 'Mensaje:' + E.Message;
                            MessageBox(0,PChar(Mensaje),PChar('Usuario Invalido'),MB_OK OR MB_ICONERROR);
                           end
                          else
                           begin
                            Mensaje := 'Verifique su Configuración o Informe al Administrador de la Red' + #10 + #13 + 'Mensaje:' + E.Message;
                            MessageBox(0,PChar(Mensaje),PChar('Configuración Erronea'),MB_OK OR MB_ICONERROR);
                           end;
                        end; //fin del begin de la excepción.
                end; // fin del try

             end; //fin del begin del with

            end // fin del begin del if superior
          else
          begin
             SalirMal := True;
         //    Self.Close;
             Exit;
          end;
         end; // fin del while


  IBSQL1.Database := dmGeneral.IBDatabase1;
  IBSQL1.Transaction := dmGeneral.IBTransaction1;
  with IBSQL1 do begin
    if Transaction.InTransaction then
       Transaction.Rollback;
    Transaction.StartTransaction;
    Close;
    SQL.Clear;
    SQL.Add('select * from "gen$minimos" where ID_MINIMO = 11');
    try
     ExecQuery;
    except
     Transaction.Rollback;
     raise;
    end;
    Dias := FieldByName('VALOR_MINIMO').AsInteger;

    Close;
    SQL.Clear;
    SQL.Add('select ULTIMO_CAMBIO_PASABORDO from "gen$empleado"');
    SQL.Add('where ID_EMPLEADO = :ID_EMPLEADO');
    ParamByName('ID_EMPLEADO').AsString := DBAlias;
    try
     ExecQuery;
    except
     Transaction.Rollback;
     raise;
    end;

    Ufecha := FieldByName('ULTIMO_CAMBIO_PASABORDO').AsDate;
    Transaction.Commit;
  end;

  Ufecha := IncDay(Ufecha,Dias);
  Hoy:= fFechaActual;

  if Ufecha < Hoy then
  begin
   frmCambiarContrasena := TfrmCambiarContrasena.Create(Self);
   while not frmCambiarContrasena.Bien do
   begin
       frmCambiarContrasena.ShowModal;
   end;
  end;

  FUltimaActividad := Now;
//  Timer2.Enabled := True;
  DecimalSeparator := '.';
  Ruta := ExtractFilePath(Application.ExeName);
  ruta1 := ruta;
  TheGraphic := TBitmap.Create; { Create the bitmap object }
  TheGraphic.LoadFromFile(Ruta+'\grafico.bmp');
  dmGeneral.Free;
end;

procedure TfrmMain.FormClose(Sender: TObject; var Action: TCloseAction);
begin
       if Not SalirMal then
        if MessageDlg('Seguro que desea cerrar CARTERA',mtConfirmation,[mbYes,mbNo],0) = mrYes Then
        begin
            Action:= caFree;
        end
        else
            Action := caNone
       else
         begin
            Action := caFree;
         end;
end;

procedure TfrmMain.ConfigurarImpresora1Click(Sender: TObject);
begin
        PrinterSetupDialog.Execute;
end;


procedure TfrmMain.SalirdePSI1Click(Sender: TObject);
begin
        Close;
end;

Procedure TfrmMain.LiquidacindeCuotas1Click(Sender: TObject);
var frmCalculoCuotadePrueba: TfrmCalculoCuotadePrueba;
begin
        frmCalculoCuotadePrueba := TfrmCalculoCuotadePrueba.Create(Self);
        frmCalculoCuotadePrueba.ShowModal;
end;

procedure TfrmMain.Colocacion1Click(Sender: TObject);
var frmConsultaColocacion: TfrmConsultaColocacion;
begin
        frmConsultaColocacion := TfrmConsultaColocacion.Create(Self);
        frmConsultaColocacion.ShowModal;
end;

procedure TfrmMain.VerTablaLiquidacion1Click(Sender: TObject);
var frmTablaLiquidacion :TfrmTablaLiquidacion;
begin
        frmTablaLiquidacion := TfrmTablaLiquidacion.Create(Self);
        frmTablaLiquidacion.ShowModal;
end;


procedure TfrmMain.LiquidacinManual1Click(Sender: TObject);
var frmLiquidacionCarteraJudicial : TfrmLiquidacionCarteraJudicial;
//var frmLiquidacionExtraordinaria : tfrmliquidacionextraordinaria;
begin
//        frmliquidacionextraordinaria := TFrmLiquidacionExtraordinaria.Create(Self);
//        frmliquidacionextraordinaria.ShowModal;
        frmLiquidacionCarteraJudicial := TfrmLiquidacionCarteraJudicial.Create(Self);
        frmLiquidacionCarteraJudicial.ShowModal;
end;

procedure TfrmMain.ExtractoColocacion1Click(Sender: TObject);
//var frmExtractoColocacion : TfrmExtractoColocacion;
var frmExtractoCredito : TFrmExtractoCredito;
begin
//        frmExtractoColocacion := TfrmExtractoColocacion.Create(Self);
//        frmExtractoColocacion.ShowModal;
        frmExtractoCredito := TfrmExtractoCredito.Create(Self);
        frmExtractoCredito.ShowModal;
end;

procedure TfrmMain.CalcularTasas1Click(Sender: TObject);
var frmCalculoTasas : TfrmCalculoTasas;
begin
        frmCalculoTasas := TfrmCalculoTasas.Create(Self);
        frmCalculoTasas.ShowModal;
end;

procedure TfrmMain.FormShow(Sender: TObject);
begin
        Self.Caption := 'Módulo de Cartera - ' + DBserver;

        if salirmal then close;
{        if DmGeneral.IBTransaction1.InTransaction then
         begin
           DmGeneral.IBTransaction1.Commit;
           DmGeneral.IBTransaction1.StartTransaction;
         end;}

         // Validar Acuerdos
         //-- IBTtablaacuerdo.DefaultDatabase := dmGeneral.IBDatabase1;
         //-- IBTtablaacuerdo.StartTransaction;
         //-- IBQtablaacuerdo.Close;
         //-- IBQtablaacuerdo.ParamByName('FECHA').AsDate := fFechaActual;
         //-- IBQtablaacuerdo.Open;
         //-- if (IBQtablaacuerdo.RecordCount > 0) then
         //-- begin
           //-- ShowMessage('Hay Compromiso de Pago de Acuerdo para Hoy');
         //-- end;
end;

procedure TfrmMain.ConsolidadoDiario1Click(Sender: TObject);
var frmInformeDiarioCartera : TfrmInformeDiarioCartera;
begin
        frmInformeDiarioCartera := TfrmInformeDiarioCartera.Create(Self);
        frmInformeDiarioCartera.ShowModal;
end;

procedure TfrmMain.ReversarAbono1Click(Sender: TObject);
var frmReversionAbonoCartera : TfrmReversionAbonoCartera;
begin
          frmReversionAbonoCartera := TfrmReversionAbonoCartera.Create(Self);
          frmReversionAbonoCartera.ShowModal;
end;

procedure TfrmMain.ConsultaGerencia1Click(Sender: TObject);
var frmConsultaProductos : TfrmConsultaProductos;
begin
        frmConsultaProductos := TfrmConsultaProductos.Create(Self);
        frmConsultaProductos.ShowModal;
end;

procedure TfrmMain.ControldeCobro1Click(Sender: TObject);
var FrmControlCobroCartera: TFrmControlCobroCartera;
begin
        FrmControlCobroCartera := TfrmControlCobroCartera.Create(nil);
        FrmControlCobroCartera.Show;
end;

procedure TfrmMain.LiquidacionManual1Click(Sender: TObject);
var frmLiquidacionExtraordinaria1 : TfrmLiquidacionExtraordinaria1;
begin
        frmLiquidacionExtraordinaria1 := TfrmLiquidacionExtraordinaria1.Create(Self);
        frmLiquidacionExtraordinaria1.ShowModal;
end;

procedure TfrmMain.EstadodeCobro1Click(Sender: TObject);
var frmEnvioJudicialCastigada : TfrmEnvioJudicialCastigada;
begin
        frmEnvioJudicialCastigada := TfrmEnvioJudicialCastigada.Create(Self);
        frmEnvioJudicialCastigada.ShowModal;
end;

procedure TfrmMain.ColocacionesporEstado1Click(Sender: TObject);
var frmInformeColocacionesporEstado : TfrmInformeColocacionesporEstado;
begin
        frminformecolocacionesporestado := Tfrminformecolocacionesporestado.Create(Self);
        frminformecolocacionesporestado.ShowModal;
end;

procedure TfrmMain.BarridodeCartera1Click(Sender: TObject);
var frmBarridoCartera : TfrmBarridoCartera;
begin
      //  Timer2.Enabled := False;
        frmBarridoCartera := TfrmBarridoCartera.Create(Self);
        frmBarridoCartera.ShowModal;
     //   Timer2.Enabled := True;
end;

procedure TfrmMain.Mantenimiento1Click(Sender: TObject);
var frmCreacionPersona : TfrmCreacionPersona;
begin
        frmCreacionPersona := TfrmCreacionPersona.Create(Self);
        frmCreacionPersona.ShowModal;
end;

procedure TfrmMain.ExtractoCaptacion1Click(Sender: TObject);
var frmConsultaExtractoCaptacion : TfrmConsultaExtractoCaptacion;
begin
        frmConsultaExtractoCaptacion := TfrmConsultaExtractoCaptacion.Create(self);
        frmConsultaExtractoCaptacion.Show;
end;

procedure TfrmMain.RecuperarLiquidacin1Click(Sender: TObject);
var frmRecuperarLiquidacionColocacion : TfrmRecuperarLiquidacionColocacion;
begin
        frmRecuperarLiquidacionColocacion := tfrmrecuperarliquidacioncolocacion.Create(Self);
        frmRecuperarLiquidacionColocacion.ShowModal;
end;

procedure TfrmMain.BtnExtractoClick(Sender: TObject);
begin
        ExtractoCaptacion1.Click;
end;

procedure TfrmMain.BtnSalirClick(Sender: TObject);
begin
        Close;
end;

procedure TfrmMain.BtnDescuentoCarteraClick(Sender: TObject);
begin
        LiquidacindeCuotas1.Click;
end;

procedure TfrmMain.FormPaint(Sender: TObject);
begin
    frmMain.Canvas.Draw(0, 0, TheGraphic);
end;

procedure TfrmMain.BtnExtractoCreditoClick(Sender: TObject);
begin
        ExtractoColocacion2.Click;
end;

procedure TfrmMain.AgregarCostas1Click(Sender: TObject);
var frmCargarCostasJudiciales : TfrmCargarCostasJudiciales;
begin
        frmcargarcostasjudiciales := tfrmcargarcostasjudiciales.Create(Self);
        frmcargarcostasjudiciales.ShowModal;
end;

procedure TfrmMain.CambiarContrasea1Click(Sender: TObject);
var frmCambiarContrasena : TfrmCambiarContrasena;
begin
        frmCambiarContrasena := TfrmCambiarContrasena.Create(Self);
        frmCambiarContrasena.ShowModal;
end;

procedure TfrmMain.CmdControlCobroClick(Sender: TObject);
begin
        ControldeCobro1.Click;
end;

procedure TfrmMain.ResumenCartera1Click(Sender: TObject);
var frmResumenColocaciones : TfrmResumenColocaciones;
begin
        frmResumenColocaciones := TfrmResumenColocaciones.Create(Self);
        frmResumenColocaciones.ShowModal;
end;

procedure TfrmMain.ConsultaColocacionesAhorros1Click(Sender: TObject);
var frmInformeCobroConstante : TfrmInformeCobroConstante;
begin
        frmInformeCobroConstante := TfrmInformeCobroConstante.Create(Self);
        frmInformeCobroConstante.ShowModal;
end;

procedure TfrmMain.ReporteAsociadosporMunicipio1Click(Sender: TObject);
var frmInformeAsociadosporMunicipio : TfrmInformeAsociadosporMunicipio;
begin
        frmInformeAsociadosporMunicipio := TfrmInformeAsociadosporMunicipio.Create(Self);
        frmInformeAsociadosporMunicipio.ShowModal;
end;

procedure TfrmMain.MarcarProrroga1Click(Sender: TObject);
var frmMarcarProrroga : TfrmMarcarProrroga;
begin
        frmMarcarProrroga := TfrmMarcarProrroga.Create(Self);
        frmMarcarProrroga.ShowModal;
end;

procedure TfrmMain.Timer1Timer(Sender: TObject);
begin
{      try
        IdTime1.Host := DBserver;
        IdTime1.SyncTime;
        IdTime1.DateTime;
      finally
        IdTime1.Disconnect;
      end;
}
end;

procedure TfrmMain.LiquidaciondePrueba1Click(Sender: TObject);
var frmLiquidaciondePrueba : TfrmLiquidaciondePrueba;
begin
        frmLiquidaciondePrueba := TfrmLiquidaciondePrueba.Create(Self);
        frmLiquidaciondePrueba.ShowModal;
end;

procedure TfrmMain.FormMouseMove(Sender: TObject; Shift: TShiftState; X,
  Y: Integer);
begin
        FechaHora := fFechaHoraActual;
end;

procedure TfrmMain.FormKeyPress(Sender: TObject; var Key: Char);
begin
        FechaHora := Date;
end;

procedure TfrmMain.Timer2Timer(Sender: TObject);
var frmReLogin:TfrmReLogin;
    Pasabordo :string;
    ESPERA:Extended;
begin
  Timer2.Enabled := False;
  ESPERA := ((1 / 24 / 60) * DBMinutos);
  if (FUltimaActividad + ESPERA) < Now then begin
    frmReLogin := TfrmReLogin.Create(Self);
    if frmReLogin.ShowModal = mrOk then
    begin
     Pasabordo := frmReLogin.EdPasabordo.Text;
     if Pasabordo <> DBPasabordo then
      begin
        ShowMessage('Confirmación no valida!, Cerrando el Módulo');
        SalirMal := True;
        Close;
        Exit;
      end;
    end
    else
    begin
        SalirMal := True;
        Close;
        Exit;
    end;
  end;
  Timer2.Enabled := True;

end;

procedure tfrmmain.AtraparMensajes(var Msg: TMsg; var Handled: Boolean);
begin
  case Msg.Message of
    WM_KEYFIRST..WM_KEYLAST,
    WM_LBUTTONDOWN..WM_MOUSELAST: FUltimaActividad := Now;
  end;
end;

procedure TfrmMain.ConsultaEscritura1Click(Sender: TObject);
var frmBusquedadeEscritura : TfrmBusquedadeEscritura;
begin
        frmBusquedadeEscritura := TfrmBusquedadeEscritura.Create(Self);
        frmBusquedadeEscritura.ShowModal;
end;

procedure TfrmMain.ReporteGeneralColocaciones1Click(Sender: TObject);
var frmInformeColocacionesFiltrado : TfrmInformeColocacionesFiltrado;
begin
        frmInformeColocacionesFiltrado := TfrmInformeColocacionesFiltrado.Create(Self);
        frmInformeColocacionesFiltrado.ShowModal;
end;

procedure TfrmMain.ComprobantesContables1Click(Sender: TObject);
var frmComprobante:TfrmComprobante;
begin
        frmComprobante := TfrmComprobante.Create(Self);
        frmComprobante.ShowModal;
end;

procedure TfrmMain.LiquidacionCastigada1Click(Sender: TObject);
var frmLiquidacionCastigada:TfrmLiquidacionCastigada;
begin
        frmLiquidacionCastigada := TfrmLiquidacionCastigada.Create(Self);
        frmLiquidacionCastigada.ShowModal;
end;

procedure TfrmMain.CausacinyProvisindeCartera1Click(Sender: TObject);
var frmCausacionColocaciones:TfrmCausacionColocaciones;
begin
        Timer2.Enabled := False;
        frmCausacionColocaciones := TfrmCausacionColocaciones.Create(Self);
        frmCausacionColocaciones.ShowModal;
        Timer2.Enabled := True;            
end;

procedure TfrmMain.ReporteCreditosCancelados1Click(Sender: TObject);
var frmInformeCreditosCancelados : TfrmInformeCreditosCancelados;
begin
        frmInformeCreditosCancelados := TfrmInformeCreditosCancelados.Create(Self);
        frmInformeCreditosCancelados.ShowModal;
end;

procedure TfrmMain.EstadodeCaptacin1Click(Sender: TObject);
var frmEstadoCaptacionporCartera : TfrmEstadoCaptacionporCartera;
begin
        frmEstadoCaptacionporCartera := TfrmEstadoCaptacionporCartera.Create(Self);
        frmEstadoCaptacionporCartera.ShowModal;
end;

procedure TfrmMain.ConsultaDeduccionesAseguradora1Click(Sender: TObject);
var frmInformeAseguradoraCartera : TfrmInformeAseguradoraCartera;
begin
        frmInformeAseguradoraCartera := TfrmInformeAseguradoraCartera.Create(Self);
        frmInformeAseguradoraCartera.ShowModal;
end;

procedure TfrmMain.Observaciones1Click(Sender: TObject);
var frmControldeObservaciones : TfrmControldeObservaciones;
begin
        frmControldeObservaciones := TfrmControldeObservaciones.Create(Self);
        frmControldeObservaciones.ShowModal;
end;

procedure TfrmMain.ImpresindeBarrido1Click(Sender: TObject);
var frmRecuperarBarridoCartera : TfrmRecuperarBarridoCartera;
begin
        frmRecuperarBarridoCartera := TfrmRecuperarBarridoCartera.Create(Self);
        frmRecuperarBarridoCartera.ShowModal;
end;

procedure TfrmMain.MantenimientodeAbogados1Click(Sender: TObject);
var frmMantenimientoAbogados : TfrmMantenimientoAbogados;
begin
        frmMantenimientoAbogados := TfrmMantenimientoAbogados.Create(Self);
        frmMantenimientoAbogados.ShowModal;
end;

procedure TfrmMain.AsignacindeAbogados1Click(Sender: TObject);
var frmAsignacionAbogado : TfrmAsignacionAbogado;
begin
        frmAsignacionAbogado := TfrmAsignacionAbogado.Create(Self);
        frmAsignacionAbogado.ShowModal;
end;

procedure TfrmMain.ColocacionesenAbogados1Click(Sender: TObject);
var frmRCarteraAbogados : TfrmRCarteraAbogados;
begin
        frmRCarteraAbogados := TfrmRCarteraAbogados.Create(Self);
        frmRCarteraAbogados.ShowModal;
end;

procedure TfrmMain.LiquidacindePrueba1Click(Sender: TObject);
var frmLiquidacionGral : TfrmLiquidacionGral;
begin
        frmLiquidacionGral := TfrmLiquidacionGral.Create(Self);
        frmLiquidacionGral.ShowModal;
end;

procedure TfrmMain.ConsultadeSolicitud1Click(Sender: TObject);
var frmConsultaSol : TFrmConsultaSol;
begin
        frmConsultaSol := TFrmConsultaSol.Create(Self);
        frmConsultaSol.ShowModal;
end;

procedure TfrmMain.ControlCarta1Click(Sender: TObject);
begin
        FrmControlCarta := TFrmControlCarta.Create(self);
        FrmControlCarta.ShowModal;
end;

procedure TfrmMain.LiquidacionDesembolso1Click(Sender: TObject);
var frmLiquidacionJudicialDes : TfrmLiquidacionJudicialDes;
begin
        frmLiquidacionJudicialDes := TfrmLiquidacionJudicialDes.Create(Self);
        frmLiquidacionJudicialDes.ShowModal;
end;

procedure TfrmMain.DiasEntreFechas1Click(Sender: TObject);
var frmDiasEntreFechas:TfrmDiasEntreFechas;
begin
    frmDiasEntreFechas  := TfrmDiasEntreFechas.Create(Self);
    frmDiasEntreFechas.ShowModal;
end;

procedure TfrmMain.ListadosConsolidados1Click(Sender: TObject);
begin
        if ValidarOpcion((Sender as TMenuItem).Tag) then
        begin
          FrmColocacion := TFrmColocacion.Create(self);
          FrmColocacion.ShowModal;
        end;
end;

procedure TfrmMain.ReversionesdeCartera1Click(Sender: TObject);
var frmReporteReversionCartera :TfrmReporteReversionCartera;
begin
        if ValidarOpcion((Sender as TMenuItem).Tag) then
        begin
          frmReporteReversionCartera := TfrmReporteReversionCartera.Create(Self);
          frmReporteReversionCartera.ShowModal;
        end;
end;

procedure TfrmMain.ColocacionesEndosadas1Click(Sender: TObject);
begin
        FrmReporteEndoso := TFrmReporteEndoso.Create(self);
        FrmReporteEndoso.ShowModal;
end;

procedure TfrmMain.CargarPagares1Click(Sender: TObject);
begin
        FrmEndosoPagare := TFrmEndosoPagare.Create(Self);
        FrmEndosoPagare.ShowModal;

end;

procedure TfrmMain.DecargarPagares1Click(Sender: TObject);
begin
        FrmDescargaPagare := TFrmDescargaPagare.Create(self);
        FrmDescargaPagare.ShowModal;
end;

procedure TfrmMain.EndosoPagares1Click(Sender: TObject);
begin
        if ValidarOpcion((Sender as TMenuItem).Tag) then begin
        end;
end;

procedure TfrmMain.CambiosdeEstado1Click(Sender: TObject);
var frmReporteCambioEstadoColocacion : TfrmReporteCambioEstadoColocacion;
begin
        if ValidarOpcion((Sender as TMenuItem).Tag) then
        begin
          frmReporteCambioEstadoColocacion := TfrmReporteCambioEstadoColocacion.Create(Self);
          frmReporteCambioEstadoColocacion.ShowModal;
        end;
end;
procedure TfrmMain.CarteradePrivilegiados1Click(Sender: TObject);
var frmInformeCarteraPrivilegiados : TfrmInformeCarteraPrivilegiados;
begin
        if ValidarOpcion((Sender as TMenuItem).Tag) then
         begin
           frmInformeCarteraPrivilegiados := TfrmInformeCarteraPrivilegiados.Create(Self);
           frmInformeCarteraPrivilegiados.ShowModal;
         end;
end;

procedure TfrmMain.LineasClick(Sender: TObject);
begin
        FrmModificaLinea := TFrmModificaLinea.Create(self);
        FrmModificaLinea.ShowModal;
end;

procedure TfrmMain.R1Click(Sender: TObject);
begin
           Reporte.LoadPreparedReportFromFile(ruta1 + '\reporte\RepResumen.pr');
           Reporte.PreviewPreparedReport(True);
end;

procedure TfrmMain.CausacionyProvisionDiaria1Click(Sender: TObject);
var frmCausacionCarteraDiaria : tfrmCausacionCarteraDiaria;
begin
        Timer2.Enabled := False;
        frmCausacionCarteraDiaria := TfrmCausacionCarteraDiaria.Create(Self);
        frmCausacionCarteraDiaria.ShowModal;
        Timer2.Enabled := True;
end;

procedure TfrmMain.ProvisionyCausacion1Click(Sender: TObject);
//var frmCausacionColocaciones1 : TfrmCausacionColocaciones1;
begin
//        frmCausacioncolocaciones1 := frmcausacioncolocaciones1.Create(Self);
//        frmcausacioncolocaciones1.ShowModal;
end;

procedure TfrmMain.SolicitudesenAnalisis1Click(Sender: TObject);
var
  dmGeneral: TdmGeneral;
begin
//        if ValidarOpcion((Sender as TMenuItem).Tag) then
        begin
        CdAnalisis.CancelUpdates;

          dmGeneral := TdmGeneral.Create(self);
          dmGeneral.getConnected;
          IBanalisis.Database := dmGeneral.IBDatabase1;
          IBanalisis.Transaction := dmGeneral.IBTransaction1;
          with IBanalisis do
          begin
            if Transaction.InTransaction then
               Transaction.Commit;
            Transaction.StartTransaction;
            Close;
            Open;
            while not Eof do
            begin
              CdAnalisis.Append;
              CdAnalisis.FieldValues['nombre'] := FieldByName('NOMBRE').AsString;
              CdAnalisis.FieldValues['analista'] := FieldByName('EMPLEADO').AsString;
              CdAnalisis.FieldValues['solicitud'] := FieldByName('ID_SOLICITUD').AsString + '-1';
              CdAnalisis.FieldValues['fecha'] := FieldByName('FECHAHORA').AsDateTime;
              if FieldByName('PENDIENTE').AsInteger = 0 then
              begin
                CdAnalisis.FieldValues['valor_solicitado'] := FieldByName('VALOR_SOLICITADO').AsCurrency;
                CdAnalisis.FieldValues['v_solicitado'] := currtostrf(FieldByName('VALOR_SOLICITADO').AsCurrency,ffnumber,2);
                CdAnalisis.FieldValues['valor_pendiente'] := 0;
              end
              else
              begin
                CdAnalisis.FieldValues['valor_solicitado'] := 0;
                CdAnalisis.FieldValues['v_pendiente'] := currtostrf(FieldByName('VALOR_SOLICITADO').AsCurrency,ffnumber,2);
                CdAnalisis.FieldValues['valor_pendiente'] := FieldByName('VALOR_SOLICITADO').AsCurrency;
              end;
              CdAnalisis.FieldValues['id_empleado'] := FieldByName('ID_EMPLEADO').AsString;
              CdAnalisis.Append;
              Next;
            end;
          end;
          IbAgencias.Database := dmGeneral.IBDatabase1;
          IbAgencias.Transaction := dmGeneral.IBTransaction1;
          with IbAgencias do
          begin
          if Transaction.InTransaction then
             Transaction.Rollback;
          Transaction.StartTransaction;
          Close;
          Open;
          while not Eof do
          begin
              CdAnalisis.Append;
              CdAnalisis.FieldValues['nombre'] := FieldByName('NOMBRES').AsString;
              CdAnalisis.FieldValues['analista'] := FieldByName('EMPLEADO').AsString;
              CdAnalisis.FieldValues['solicitud'] := FieldByName('ID_SOLICITUD').AsString + '-' + FieldByName('ID_AGENCIA').AsString;
              CdAnalisis.FieldValues['fecha'] := FieldByName('FECHA_HORA').AsDateTime;
              CdAnalisis.FieldValues['valor_solicitado'] := 0;
              CdAnalisis.FieldValues['v_solicitado'] := currtostrf(FieldByName('VALOR').AsCurrency,ffnumber,2);
              CdAnalisis.FieldValues['valor_pendiente'] := 0;
              CdAnalisis.FieldValues['id_empleado'] := FieldByName('ID_EMPLEADO').AsString;
              CdAnalisis.Post;
              Next;
          end;
        end;
        //informacion de las oficinas

          //imprimir_reporte(ruta1 + '\Reporte\RepAnalisSolicitud.frf');
//          AnaOficinas(puerto_abrego,2,'ABREGO',host_abrego);
//          AnaOficinas(puerto_convencion,3,'CONVENCION',host_convencion);
          imprimir_reporte(ruta1 + '\Reporte\RepAnalisSolicitudPen.frf');
       end;
  dmGeneral.Free;

end;

procedure TfrmMain.AnaOficinas(puerto, id_agencia: integer; DesAgencia,
  hostp: string);
var     sentencia :string;
        AList,AListCampos:TList;
        cadena :string;
        i :Integer;

begin

end;

procedure TfrmMain.imprimir_reporte(cadena: string);
begin
        FrmImpresion := TFrmImpresion.Create(self);
        frReport1.LoadFromFile(cadena);
        frReport1.Dictionary.Variables.Variable['EMPRESA'] := QuotedStr(Empresa);
        frReport1.ModifyPrepared := False;
        frReport1.Preview := FrmImpresion.frPreview1;
        frReport1.ShowReport;
        FrmImpresion.ShowModal

end;

procedure TfrmMain.GeneracionPlanoBancoldex1Click(Sender: TObject);
var frmConsolidarPlanoBancoldex : TfrmConsolidarPlanoBancoldex;
begin
        frmConsolidarPlanoBancoldex := TfrmConsolidarPlanoBancoldex.Create(self);
        frmConsolidarPlanoBancoldex.ShowModal;
end;

procedure TfrmMain.SolicitudCreditos;
var
   dmGeneneral: TdmGeneral;
begin
        dmGeneral := TdmGeneral.Create(self);
        dmGeneral.getConnected;
        CDsolicitud.CancelUpdates;
        if dmGeneral.IBTransaction1.InTransaction then
           dmGeneral.IBTransaction1.Commit;
        dmGeneral.IBTransaction1.StartTransaction;
        IBQuery1.Database := dmGeneral.IBDatabase1;
        IBQuery1.Transaction := dmGeneral.IBTransaction1;
        with IBQuery1 do
        begin
          Close;
          SQL.Clear;
          SQL.Add('SELECT ');
          SQL.Add('"col$solicitudempleado".ID_EMPLEADO,');
          SQL.Add('"col$solicitudempleado".ID_SOLICITUD,');
          SQL.Add('"gen$empleado".NOMBRE,');
          SQL.Add('"gen$empleado".SEGUNDO_APELLIDO,');
          SQL.Add('"gen$empleado".PRIMER_APELLIDO,');
          SQL.Add('"col$solicitudempleado".ENTREGADO,');
          SQL.Add('"col$solicitud".VALOR_SOLICITADO,');
          SQL.Add('"col$solicitudempleado".FECHAHORA,');
          SQL.Add('"gen$persona".NOMBRE AS NOMBRE1,');
          SQL.Add('"gen$persona".PRIMER_APELLIDO AS PRIMER_APELLIDO1,');
          SQL.Add('"gen$persona".SEGUNDO_APELLIDO AS SEGUNDO_APELLIDO1');
          SQL.Add('FROM');
          SQL.Add('"col$solicitudempleado"');
          SQL.Add('INNER JOIN "gen$empleado" ON ("col$solicitudempleado".ID_EMPLEADO="gen$empleado".ID_EMPLEADO)');
          SQL.Add('INNER JOIN "col$solicitud" ON ("col$solicitudempleado".ID_SOLICITUD="col$solicitud".ID_SOLICITUD)');
          SQL.Add('INNER JOIN "gen$persona" ON ("col$solicitud".ID_PERSONA="gen$persona".ID_PERSONA)');
          SQL.Add('AND ("col$solicitud".ID_IDENTIFICACION="gen$persona".ID_IDENTIFICACION)');
          SQL.Add('WHERE');
          SQL.Add('("col$solicitudempleado".ENTREGADO = 0) and ("col$solicitud".ESTADO IN (1,2,3,13))');
          Open;
          Last;
          First;
          frmProgreso := TfrmProgreso.Create(Self);
          frmProgreso.Max := RecordCount;
          frmProgreso.Min := 0;
          frmProgreso.Titulo := 'Solicitudes en Sección Creditos';
          frmProgreso.Ejecutar;
          while not Eof do
          begin
            frmProgreso.Position := RecNo;
            frmProgreso.InfoLabel := 'Analizando Solicitud No: ' + FieldByName('ID_SOLICITUD').AsString;
            Application.ProcessMessages;
            IBSQL1.Close;
            IBSQL1.SQL.Clear;
            IBSQL1.SQL.Add('SELECT');
            IBSQL1.SQL.Add('COUNT(ID_SOLICITUD) AS CONTEO');
            IBSQL1.SQL.Add('FROM');
            IBSQL1.SQL.Add('"col$solicitudanalista"');
            IBSQL1.SQL.Add('WHERE ES_VIGENTE = 1 AND ID_SOLICITUD = :ID_SOLICITUD');
            IBSQL1.ParamByName('ID_SOLICITUD').AsString := FieldByName('ID_SOLICITUD').AsString;
            IBSQL1.ExecQuery;
            if IBSQL1.FieldByName('CONTEO').AsInteger = 0 then
            begin
              CDsolicitud.Append;
              CDsolicitudid_solicitud.Value := FieldByName('ID_SOLICITUD').AsString;
              CDsolicitudempleado.Value := FieldByName('NOMBRE').AsString + ' ' + FieldByName('PRIMER_APELLIDO').AsString + ' ' + FieldByName('SEGUNDO_APELLIDO').AsString;
              CDsolicitudasociado.Value := FieldByName('NOMBRE1').AsString + ' ' + FieldByName('PRIMER_APELLIDO1').AsString + ' ' + FieldByName('SEGUNDO_APELLIDO1').AsString;
              CDsolicitudvalor.Value := FieldByName('VALOR_SOLICITADO').AsCurrency;
              CDsolicitudfecha.Value := FieldByName('FECHAHORA').AsDateTime;
              CDsolicitudagencia.Value := Ciudad;
              CDsolicitud.Post
            end;
            Next;
          end;
          frmProgreso.Cerrar;
        end;
//        agencias(host_abrego,'Abrego',puerto_abrego,2);
//        agencias(host_convencion,'Convención',puerto_convencion,3);
        if CDsolicitud.RecordCount = 0 then
        begin
          MessageDlg('No Existen Registros Para Mostrar',mtInformation,[mbok],0);
          Exit;
        end;
        imprimir_reporte(ruta1 + '\Reporte\RepCreditos.frf');
        dmGeneral.Free;

end;

procedure TfrmMain.agencias(host_r, dagencia: string; puerto,
  vIdAgencia: integer);
var     sentencia :string;
        AList,AListCampos:TList;
        cadena :string;
        i :Integer;
begin
end;

procedure TfrmMain.SolicitudesSeccionCrditos1Click(Sender: TObject);
begin
//        if ValidarOpcion((Sender as TMenuItem).Tag) then
        begin
          SolicitudCreditos;
        end;
end;

procedure TfrmMain.RecuperacionesdeCartera1Click(Sender: TObject);
begin
        frmRecuperacionesCartera := TfrmRecuperacionesCartera.Create(Self);
        frmRecuperacionesCartera.ShowModal;
end;

procedure TfrmMain.InformeMer1Click(Sender: TObject);
begin
//        frmInformeAsociadosporMercado := tfrmInformeAsociadosporMercado.create(Self)
//        frmInformeAsociadosporMercado.ShowModal;
end;

procedure TfrmMain.RequerimientoSIstemas1Click(Sender: TObject);
begin
        FrmCambios := TFrmCambios.Create(Self);
        FrmCambios.ShowModal;
end;

procedure TfrmMain.DesembolsosDiarios1Click(Sender: TObject);
begin
        frmInformeDiarioDesembolsos := TfrmInformeDiarioDesembolsos.Create(self);
        frmInformeDiarioDesembolsos.ShowModal;
end;

procedure TfrmMain.ReporteAseguradora1Click(Sender: TObject);
begin
        frmReporteAseguradora := TfrmReporteAseguradora.Create(self);
        frmReporteAseguradora.ShowModal;
end;

procedure TfrmMain.ClculodeComisinAsesor1Click(Sender: TObject);
var
  frmCalculoComisionAsesor: TfrmCalculoComisionAsesor;
begin
     frmCalculoComisionAsesor := TfrmCalculoComisionAsesor.Create(self);
     frmCalculoComisionAsesor.ShowModal;
end;

procedure TfrmMain.CarteraporAsesor1Click(Sender: TObject);
var
  frmCarteraxAsesor: TfrmCarteraxAsesor;
begin
       frmCarteraxAsesor := TfrmCarteraxAsesor.Create(self);
       frmCarteraxAsesor.ShowModal;
end;

procedure TfrmMain.ValorRecuperadodeAportesporCuotasPagadas1Click(
  Sender: TObject);
var
  frmRecuperaciondeAportesPorCuotasPagas : TfrmRecuperaciondeAportePorCuotasPagas;
begin
        frmRecuperaciondeAportesPorCuotasPagas := TfrmRecuperaciondeAportePorCuotasPagas.Create(self);
        frmRecuperaciondeAportesPorCuotasPagas.ShowModal;
end;

procedure TfrmMain.EnviarSMS1Click(Sender: TObject);
var
  Sms: TSmsRequest;
  Dialog: TDialogSMS;
  _ibquery: TIBQuery;
  ListStrings: TStringList;
  _i :Integer;
  _numero: String;
  dmGeneral: TdmGeneral;
begin
        _ibquery := TIBQuery.Create(self);
        dmGeneral := TdmGeneral.Create(self);
        _ibquery.Database := dmGeneral.IBDatabase1;
        _ibquery.Transaction := dmGeneral.IBTransaction1;
        dmGeneral.getConnected;
        Sms := TSmsRequest.Create;
        Dialog := TDialogSMS.Create(self);
        ListStrings := TStringList.Create;
        // Buscar Datos
        with _ibquery do
        begin
            Close;
            SQL.Clear;
            SQL.Add('select * from "gen$direccion" where ');
            SQL.Add('ID_IDENTIFICACION = :"ID_IDENTIFICACION" and ');
            SQL.Add('ID_PERSONA = :"ID_PERSONA"');
            ParamByName('ID_IDENTIFICACION').AsInteger := Id;
            ParamByName('ID_PERSONA').AsString := Documento;
            Open;
            Dialog.edNumero.Text := Trim(FieldByName('TELEFONO1').AsString);
        end;

        Sms.Credenciales := GetSMSCredentials;
        if (Dialog.ShowModal = mrOk) then
        begin
              if (Dialog.edNumero.Text = '') then
              begin
                  ShowMessage('Error: Debe digitar el número o numeros de móvil');
                  Exit;
              end;
              if (Dialog.edMensaje.Text = '') then
              begin
                  ShowMessage('Error: Debe digitar el mensaje a enviar');
                  Exit;
              end;
              ExtractStrings([','],[],PChar(Dialog.edNumero.Text), ListStrings);
              if (ListStrings.Count > 0) then
              begin
                for _i := 0 to ListStrings.Count -1 do
                begin
                   _numero := ListStrings.Strings[0];
                   _numero := Trim(_numero);
                   if (Length(_numero) = 10) then
                   begin
                       Sms.sendMessage(_numero, Dialog.edMensaje.Text, '');
                   end
                   else
                      ShowMessage('Número no válido:'+_numero);
                end;
              end;


        end;

end;

procedure TfrmMain.ConsultarEstadodelosSMS1Click(Sender: TObject);
var
  frmConsultaSMS: TfrmConsultaSMS;
begin
       frmConsultaSMS := TfrmConsultaSMS.Create(self);
       frmConsultaSMS.ShowModal;
end;

procedure TfrmMain.MnCausacionProvisionClick(Sender: TObject);
var
  frmInformeCausacionyProvision: TfrmInformeCausacionyProvision;
begin
   frmInformeCausacionyProvision := TfrmInformeCausacionyProvision.Create(self);
   frmInformeCausacionyProvision.ShowModal;
end;

procedure TfrmMain.CarteraEnMoraPorAsesor1Click(Sender: TObject);
var
  frmCarteraEnMoraPorAsesor: TfrmCarteraEnMoraPorAsesor;
begin
        frmCarteraEnMoraPorAsesor := TfrmCarteraEnMoraPorAsesor.Create(self);
        frmCarteraEnMoraPorAsesor.ShowModal;
end;

procedure TfrmMain.ProyeccinRecuperacinCartera2Click(Sender: TObject);
var
  frmProyeccionRecuperacionCartera: TfrmProyeccionRecuperacionCartera;
begin
   frmProyeccionRecuperacionCartera := TfrmProyeccionRecuperacionCartera.Create(self);
   frmProyeccionRecuperacionCartera.ShowModal;
end;

procedure TfrmMain.InformeCarteraSaldada1Click(Sender: TObject);
var
  frmInformeCarteraSaldada: TfrmInformeCarteraSaldada;
begin
     frmInformeCarteraSaldada := TfrmInformeCarteraSaldada.Create(self);
     frmInformeCarteraSaldada.ShowModal;
end;

procedure TfrmMain.GenerarCdigodeAprobacinReversinAbonoCartera1Click(
  Sender: TObject);
var
  frmGenerarCodigoReversionCartera: TfrmGenerarCodigoReversionCartera;
begin
   frmGenerarCodigoReversionCartera := TfrmGenerarCodigoReversionCartera.Create(self);
   if ValidarOpcion((Sender as TMenuItem).Tag) then
   begin
     frmGenerarCodigoReversionCartera.ShowModal
   end;
end;

procedure TfrmMain.estSOAPConexus1Click(Sender: TObject);
var
 _facturar : TFacturar;
 _result : String;
begin
        _facturar := TFacturar.Create;
        _result := _facturar.Status;
end;

procedure TfrmMain.estGETConexus1Click(Sender: TObject);
var
 _facturar : TFacturar;
 _result : String;
begin
      _facturar := TFacturar.Create;
      _result := _facturar.GetURLAsString('http://10.0.2.2:9000/api/http/status') ;
      ShowMessage(_result);
      _result := _facturar.GetURLAsString('http://10.0.2.2:9000/api/http/gtbi/SETT505/201911/901180226') ;
      ShowMessage(_result);

end;

procedure TfrmMain.AcuerdosdePago1Click(Sender: TObject);
var
  frmInformeAcuerdoPago: TfrmInformeAcuerdoPago;
begin
     frmInformeAcuerdoPago := TfrmInformeAcuerdoPago.Create(self);
     frmInformeAcuerdoPago.ShowModal;
end;

end.
