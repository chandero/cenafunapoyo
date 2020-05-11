unit Unit_ComprobanteC;

interface                                                                 

uses
  Windows, Messages, SysUtils, Math, DateUtils, StrUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, StdCtrls, Buttons, Grids, DBGrids, DBCtrls, DB,
  IB, IBCustomDataSet, IBQuery, XStringGrid, Mask, CEForm, pr_Common, pr_Parser, pr_TxClasses,
  IBSQL, JvEdit, JvTypedEdit, IBDatabase, pr_Classes,
  // Propias
  UnitPlantillas, ComCtrls, UnitdmGeneral, DBClient, JvFloatEdit,
  IBStoredProc, JvDBLookupTreeView
  ;

 type
      TComprobante = class
   end;

type
  PList = ^AList;
  AList = record
    codigo   : string;
    nomcuenta: string;
    debito   : currency;
    credito  : currency;
    tipoide  : integer;
    idpersona: string;
    monto    : currency;
    tasa     : single;
    estado   : string;
  end;

type PCuentas = ^ACuentas;
     ACuentas = record
        Tp:Integer;
        Cuenta:Integer;
        Debitos:Currency;
        Creditos:Currency;
end;

type
  PSaldos = ^ASaldos;
  ASaldos = record
    tipo:Integer;
    numero:Integer;
    saldo:Currency;
end;

type
  TfrmComprobanteC = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    Label5: TLabel;
    editdescripcion: TMemo;
    Label6: TLabel;
    Label7: TLabel;
    Panel2: TPanel;
    Panel3: TPanel;
    BtnBuscar: TBitBtn;
    BtnGrabar: TBitBtn;
    BtnAnular: TBitBtn;
    Btnreporte: TBitBtn;
    Btnlimpiar: TBitBtn;
    Btncerrar: TBitBtn;
    btnrefrescar: TBitBtn;
    QueryComprobante: TIBQuery;
    NoComprobante: TLabel;
    Label8: TLabel;
    editanulacion: TMemo;
    QueryComprobanteID_COMPROBANTE: TIntegerField;
    QueryComprobanteFECHADIA: TDateField;
    QueryComprobanteDESCRIPCION: TMemoField;
    QueryComprobanteTOTAL_DEBITO: TIBBCDField;
    QueryComprobanteTOTAL_CREDITO: TIBBCDField;
    QueryComprobanteESTADO: TIBStringField;
    QueryComprobanteIMPRESO: TSmallintField;
    QueryComprobanteANULACION: TMemoField;
    QueryComprobanteDESCRIPCION1: TIBStringField;
    QueryComprobanteDESCRIPCION_AGENCIA: TIBStringField;
    IBQTabla: TIBQuery;
    QueryAuxiliar: TIBQuery;
    QueryAuxiliarID_COMPROBANTE: TIntegerField;
    QueryAuxiliarID_AGENCIA: TSmallintField;
    QueryAuxiliarCODIGO: TIBStringField;
    QueryAuxiliarNOMBRE: TIBStringField;
    QueryAuxiliarDEBITO: TIBBCDField;
    QueryAuxiliarCREDITO: TIBBCDField;
    QueryAuxiliarID_CUENTA: TIntegerField;
    QueryAuxiliarID_COLOCACION: TIBStringField;
    QueryAuxiliarID_IDENTIFICACION: TSmallintField;
    QueryAuxiliarID_PERSONA: TIBStringField;
    QueryAuxiliarMONTO_RETENCION: TIBBCDField;
    QueryAuxiliarTASA_RETENCION: TFloatField;
    IBPagar: TIBSQL;
    IBOtros: TIBSQL;
    IBAuxiliar: TIBQuery;
    IBSQL1: TIBSQL;
    IBAuxiliar1: TIBQuery;
    Panel4: TPanel;
    Label9: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    nomcta: TLabel;
    CmdPUC: TSpeedButton;
    editcodigo: TMaskEdit;
    EdDebito: TJvCurrencyEdit;
    EdCredito: TJvCurrencyEdit;
    GroupBox1: TGroupBox;
    CheckBoxcerrado: TCheckBox;
    CheckBoxanulado: TCheckBox;
    CheckBoximpreso: TCheckBox;
    PanelXS: TPanel;
    BtnAgregar: TBitBtn;
    BtnModificarGrid: TBitBtn;
    BtnEliminar: TBitBtn;
    DSTiposIdentificacion: TDataSource;
    IBQTiposIdentificacion: TIBQuery;
    IBSQL2: TIBSQL;
    IBTransaction1: TIBTransaction;
    Panel5: TPanel;
    IBTransaction2: TIBTransaction;
    Label4: TLabel;
    dblcbtipo: TDBLookupComboBox;
    IBQTipoC: TIBQuery;
    DsTipoC: TDataSource;
    IBTransaction3: TIBTransaction;
    Label13: TLabel;
    btnGuardarPlantilla: TBitBtn;
    btnRecuperarPlantilla: TBitBtn;
    edFecha: TDateTimePicker;
    Dscomprobante: TDataSource;
    Dsauxiliar: TDataSource;
    Dsagencia: TDataSource;
    Dstipocomp: TDataSource;
    IBQuery1: TIBQuery;
    Dspersona: TDataSource;
    Dstipoid: TDataSource;
    IBQuery2: TIBQuery;
    IBQuery3: TIBQuery;
    IBVarios: TIBSQL;
    IBQsetagencia: TIBQuery;
    IBQsettipocomp: TIBQuery;
    IBQsetpersona: TIBQuery;
    IBQsettipoid: TIBQuery;
    IBQsetauxiliar: TIBQuery;
    IBQsetcomprobante: TIBQuery;
    IBDataSet1: TIBDataSet;
    BitBtn1: TBitBtn;
    DBauxiliargrid: TDBGrid;
    CDSauxiliargrid: TClientDataSet;
    DSauxiliargrid: TDataSource;
    CDSauxiliargridCODIGO: TStringField;
    CDSauxiliargridCUENTA: TStringField;
    CDSauxiliargridDEBITO: TCurrencyField;
    CDSauxiliargridCREDITO: TCurrencyField;
    CDSauxiliargridID_IDENTIFICACION: TIntegerField;
    CDSauxiliargridMONTO: TCurrencyField;
    CDSauxiliargridTASA: TFloatField;
    CDSauxiliargridESTADO: TStringField;
    CDSauxiliargridID_COLOCACION: TStringField;
    CDSauxiliargridPRIMER_APELLIDO: TStringField;
    CDSauxiliargridSEGUNDO_APELLIDO: TStringField;
    CDSauxiliargridNOMBRE: TStringField;
    edittotaldebito: TJvCurrencyEdit;
    edittotalcredito: TJvCurrencyEdit;
    edittotaldiferencia: TJvCurrencyEdit;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    GrupoInforme: TGroupBox;
    Label20: TLabel;
    Label21: TLabel;
    Label22: TLabel;
    Label23: TLabel;
    Label3: TLabel;
    Label14: TLabel;
    Edtipoid: TDBLookupComboBox;
    edMonto: TJvCurrencyEdit;
    edTasa: TJvFloatEdit;
    edNit: TJvEdit;
    TabBanco: TTabSheet;
    Label15: TLabel;
    edCheque: TEdit;
    CDSauxiliargridCHEQUE: TStringField;
    CDSauxiliargridDETALLE: TStringField;
    TabDetalle: TTabSheet;
    txtNota: TMemo;
    spGetAuxiliarID: TIBStoredProc;
    CDSauxiliargridNUMERO_CUENTA: TStringField;
    IBAux: TIBQuery;
    btnCheque: TBitBtn;
    CDSauxiliargridESBANCO: TBooleanField;
    CDSauxiliargridID_PERSONA: TStringField;
    txtCheque: TprTxReport;
    CDSauxiliargridID_AGENCIA: TIntegerField;
    Label16: TLabel;
    EdAgencia: TDBLookupComboBox;
    IBTransaction4: TIBTransaction;
    btnReversar: TBitBtn;
    Label17: TLabel;
    cbClaseOperacion: TDBLookupComboBox;
    DSclaseoperacion: TDataSource;
    IBQclaseoperacion: TIBQuery;
    CDSauxiliargridDESCRIPCION_AGENCIA: TStringField;
    CDSauxiliargridDESCRIPCION_CLASE_OPERACION: TStringField;
    CDSauxiliargridID_CLASE_OPERACION: TStringField;
    btnLimpiarClaseOperacion: TButton;
    IBAuxiliarID_AGENCIA: TSmallintField;
    IBAuxiliarID_COMPROBANTE: TIntegerField;
    IBAuxiliarDESCRIPCION_AGENCIA: TIBStringField;
    IBAuxiliarTIPO: TIBStringField;
    IBAuxiliarFECHADIA: TDateField;
    IBAuxiliarDESCRIPCION: TMemoField;
    IBAuxiliarPRIMER_APELLIDO: TIBStringField;
    IBAuxiliarSEGUNDO_APELLIDO: TIBStringField;
    IBAuxiliarNOMBRE: TIBStringField;
    IBAuxiliarCODIGO: TIBStringField;
    IBAuxiliarCUENTA: TIBStringField;
    IBAuxiliarID_CUENTA: TIBStringField;
    IBAuxiliarID_COLOCACION: TIBStringField;
    IBAuxiliarID_IDENTIFICACION: TSmallintField;
    IBAuxiliarID_PERSONA: TIBStringField;
    IBAuxiliarPRIMER_APELLIDO1: TIBStringField;
    IBAuxiliarSEGUNDO_APELLIDO1: TIBStringField;
    IBAuxiliarNOMBRE1: TIBStringField;
    IBAuxiliarDEBITO: TIBBCDField;
    IBAuxiliarCREDITO: TIBBCDField;
    Report1: TprTxReport;
    prReport1: TprReport;

    procedure BtnGrabarClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure bloquear;
    procedure desbloquear;
    procedure BtncerrarClick(Sender: TObject);
    procedure BtnAgregarClick(Sender: TObject);
    procedure actualizaxsauxiliar;
    procedure CheckBoximpresoKeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure BtnlimpiarClick(Sender: TObject);
    procedure editdescripcionExit(Sender: TObject);
    procedure BtnBuscarClick(Sender: TObject);
    procedure btnrefrescarClick(Sender: TObject);
    procedure BtnAnularClick(Sender: TObject);
    procedure CheckBoxcerradoKeyPress(Sender: TObject; var Key: Char);
    procedure CheckBoxanuladoKeyPress(Sender: TObject; var Key: Char);
    procedure editanulacionKeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure editanulacionExit(Sender: TObject);
    procedure editanulacionKeyPress(Sender: TObject; var Key: Char);
    procedure dblcbtipo_compKeyPress(Sender: TObject; var Key: Char);
    procedure DblcbAgenciaKeyPress(Sender: TObject; var Key: Char);
    procedure editdescripcionKeyPress(Sender: TObject; var Key: Char);
    procedure BtnModificarGridClick(Sender: TObject);
    procedure BtnEliminarClick(Sender: TObject);
    procedure BtnreporteClick(Sender: TObject);
    procedure CheckBoximpresoExit(Sender: TObject);
    procedure Report1PrintComplete(Sender: TObject);
    procedure EdittotaldebitoExit(Sender: TObject);
    procedure EdittotalcreditoExit(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure Report1InitDetailBandDataSet(Sender: TObject;
      DetailBand: TprBand; DataSet: TObject; const DataSetName: String);
    procedure editcodigoExit(Sender: TObject);
    procedure editcodigoEnter(Sender: TObject);
    procedure editcodigoKeyPress(Sender: TObject; var Key: Char);
    procedure EdDebitoEnter(Sender: TObject);
    procedure EdDebitoExit(Sender: TObject);
    procedure EdCreditoEnter(Sender: TObject);
    procedure EdCreditoExit(Sender: TObject);
    procedure EdtipoidEnter(Sender: TObject);
    procedure EdtipoidExit(Sender: TObject);
    procedure EdtipoidKeyPress(Sender: TObject; var Key: Char);
    procedure EdNitEnter(Sender: TObject);
    procedure EdNitExit(Sender: TObject);
    procedure EdNitKeyPress(Sender: TObject; var Key: Char);
    procedure EdTasaEnter(Sender: TObject);
    procedure EdTasaKeyPress(Sender: TObject; var Key: Char);
    procedure EdMontoEnter(Sender: TObject);
    procedure EdMontoKeyPress(Sender: TObject; var Key: Char);
    procedure EdDebitoKeyPress(Sender: TObject; var Key: Char);
    procedure EdCreditoKeyPress(Sender: TObject; var Key: Char);
    procedure prReport1InitDetailBandDataSet(Sender: TObject;
      DetailBand: TprBand; DataSet: TObject; const DataSetName: String);
    procedure prReport1PrintComplete(Sender: TObject);
    procedure dblcbtipoKeyPress(Sender: TObject; var Key: Char);
    procedure dblcbtipoEnter(Sender: TObject);
    procedure CmdPUCClick(Sender: TObject);
    procedure btnRecuperarPlantillaClick(Sender: TObject);
    procedure btnGuardarPlantillaClick(Sender: TObject);
    procedure dblcbtipoExit(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure CDSauxiliargridAfterScroll(DataSet: TDataSet);
    procedure txtNotaKeyPress(Sender: TObject; var Key: Char);
    procedure txtNotaExit(Sender: TObject);
    procedure edChequeExit(Sender: TObject);
    procedure edChequeKeyPress(Sender: TObject; var Key: Char);
    procedure DBauxiliargridCellClick(Column: TColumn);
    procedure DBauxiliargridTitleClick(Column: TColumn);
    procedure btnChequeClick(Sender: TObject);
    procedure edFechaExit(Sender: TObject);
    procedure btnReversarClick(Sender: TObject);
    procedure EdAgenciaExit(Sender: TObject);
    procedure btnLimpiarClaseOperacionClick(Sender: TObject);
    procedure cbClaseOperacionKeyPress(Sender: TObject; var Key: Char);
    procedure EdAgenciaKeyPress(Sender: TObject; var Key: Char);


  private


    function getimpreso : boolean;
    procedure setimpreso (nvalor:boolean);
    function getdescripcion:string;
    procedure setdescripcion (nvalor:string);
    function grabar : Boolean;
    function actualizar : Boolean;
    Procedure Empleado;
    function EvaluarCodigo(Codigo: string): string;
    procedure buscarcomprobante(TIPO_COMPROBANTE:Integer;ID_COMPROBANTE: integer);
    procedure BuscarComp(Tp, Id: Integer);
    procedure Inicializar;
    function Evaluarinforme(id : string) : string;
    function gettipoide :integer;
    procedure settipoide (nvalor:integer);
    function getmonto : currency;
    procedure setmonto (nvalor:currency);
    function gettasa : single;
    procedure settasa (nvalor:single);
    function Getdebito : currency;
    procedure Setdebito (nvalor:currency);
    function Getcredito : currency;
    procedure Setcredito (nvalor:currency);
    function getcodigo : string;
    procedure setcodigo (nvalor:string);
    function getidpersona:string;
    procedure setidpersona(nvalor:string);
    function getestado :string;
    procedure setestado (nvalor:string);
    function getnomcuenta : string;
    procedure setnomcuenta (nvalor:string);
    function getdetalle : String;
    procedure setdetalle (nvalor: String);
    function getcheque : String;
    procedure setcheque (nvalor: String);
    function getnombre: String;
    procedure setnombre(nvalor: String);
    function gettotaldebito: Currency;
    procedure settotaldebito(nvalor: Currency);
    function gettotalcredito: Currency;
    procedure settotalcredito(nvalor: Currency);
    function getp_apellido: String;
    procedure setp_apellido(nvalor: String);
    function gets_apellido: String;
    procedure sets_apellido(nvalor: String);
    function DiaCerrado:Boolean;
    procedure setagencia(nValue: Integer);
    function getagencia:integer;

  public
    property impreso : boolean read getimpreso write setimpreso;
    property descripcion : string read getdescripcion write setdescripcion;
    property tipoide : integer read gettipoide write settipoide;
    property monto : currency read getmonto write setmonto;
    property tasa : single read gettasa write settasa;
    property codigo: string read getcodigo write setcodigo;
    property debito : currency read getdebito write setdebito;
    property credito : currency read getcredito write setcredito;
    property detalle: string read getdetalle write setdetalle;
    property cheque: string read getcheque write setcheque;
    property idpersona : string read getidpersona write setidpersona;
    property estado: string read getestado write setestado;
    property nomcuenta: string read getnomcuenta write setnomcuenta;
    property nombre: string read getnombre write setnombre;
    property p_apellido: string read getp_apellido write setp_apellido;
    property s_apellido: string read gets_apellido write sets_apellido;    
    property totaldebito:currency read gettotaldebito write settotaldebito;
    property totalcredito:currency read gettotalcredito write settotalcredito;
    property vAgencia:integer read getagencia write setagencia;
  end;


var
  frmComprobanteC: TfrmComprobanteC;
  dmGeneral: TdmGeneral;
//  dmGeneral: TdmGeneral;
//  dmComprobante :TDmComprobante;
   
  vid_comprobante       :string;
  vfechadia             :TDate;
  vfechadiamod          :TDate;
  vtipo_comprobante     :integer;
  vdescripcion          :string;
  vtotal_debito         :currency;
  vtotal_credito        :currency;
  vestadoc              :string;
  vimpreso              :boolean;
  vcomprobante          :integer;
  vcodigo               :string;
  vestado               :string;
  vdetalle              :string;
  vcheque               :string;
  anulacion             :string;
  id_comprobante        :integer;
  id_agencia            :integer;
  id_tipocomprobante    :integer;
  codigo                :string;
  nombre                :string;
  debito                :currency;
  credito               :currency;
  nocuenta              :integer;
  nocredito             :string;
  estadoa               :string;
  vestadoa              :string;
  consecutivo           :integer;
  consec                :string;
  List                  :TList;
  posgrid               :integer;
  vmodificar            :boolean;
  estadoc               :string;
  Nombres               :String;
  Apellidos             :String;
  SCuentas              :TList;
  movimiento            :Boolean;
  vid_persona           :string;
  vp_apellido           :string;
  vs_apellido           :string;
  vtipoid               :integer;
  vmonto                :currency;
  vtasa                 :single;
  vdebito               :Currency;
  vcredito              :Currency;
  vnombre               :String;
  id                    :string;
  vnomcuenta            :string;
  esbanco               :boolean;
  enedicion             :boolean;
  vIdAgencia            :integer;

implementation

uses UnitCreaciondePersona, Unit_buscarcomprobante,unit_Dmpuc, UnitGlobales, Unit_Mantenimientopuc, NLetra;


{$R *.dfm}

function TfrmComprobanteC.getagencia: integer;
begin
    result := vIdAgencia;
end;

procedure TfrmComprobanteC.setagencia(nValue: Integer);
begin
    vIdAgencia := nValue;
    EdAgencia.KeyValue := vIdAgencia;
end;


function TfrmComprobanteC.getp_apellido : String;
begin
    result := vp_apellido;
end;

procedure TfrmComprobanteC.setp_apellido(nvalor: String);
begin
    vp_apellido := nvalor;
end;

function TfrmComprobanteC.gets_apellido : String;
begin
    result := vs_apellido;
end;

procedure TfrmComprobanteC.sets_apellido(nvalor: String);
begin
    vs_apellido := nvalor;
end;

function TfrmComprobanteC.gettotaldebito : currency;
begin
       result := vtotal_debito;
end;

procedure TfrmComprobanteC.settotaldebito(nvalor: Currency);
begin
        vtotal_debito := nvalor;
        edittotaldebito.value  := nvalor;
end;

function TfrmComprobanteC.gettotalcredito : currency;
begin
       result := vtotal_debito;
end;

procedure TfrmComprobanteC.settotalcredito(nvalor: Currency);
begin
        vtotal_credito := nvalor;
        edittotalcredito.value  := nvalor;
end;


function TfrmComprobanteC.getnombre : string;
begin
       result := vnombre;
end;

procedure TfrmComprobanteC.setnombre(nvalor: String);
begin
        vnombre := nvalor;
end;

function TfrmComprobanteC.getdetalle : string;
begin
       result := vdetalle;
end;

procedure TfrmComprobanteC.setdetalle(nvalor: String);
begin
        vdetalle := nvalor;
        txtNota.Text := nvalor;
end;

function TfrmComprobanteC.getcheque: String;
begin
        result := vcheque;
end;

procedure TfrmComprobanteC.setcheque(nvalor: String);
begin
        vcheque := nvalor;
        edCheque.Text := nvalor;
end;


function TfrmComprobanteC.getdescripcion : string;
begin
        result:= vdescripcion;
end;

procedure TfrmComprobanteC.setdescripcion (nvalor:string);
begin
        vdescripcion:= nvalor;
        editdescripcion.Text:= vdescripcion;

end;


function TfrmComprobanteC.getimpreso : boolean;
begin
        result:= vimpreso;
end;

procedure TfrmComprobanteC.setimpreso (nvalor:boolean);
begin
        vimpreso:= nvalor;
        checkboximpreso.Checked := vimpreso;
end;

procedure TfrmComprobanteC.FormCreate(Sender: TObject);
begin
        dmGeneral := TdmGeneral.Create(self);
        dmGeneral.getConnected;

        IBAuxiliar1.Database := dmGeneral.IBDatabase1;
        IBAuxiliar1.Transaction := dmGeneral.IBTransaction1;
        IBQTabla.Database := dmGeneral.IBDatabase1;
        IBQTabla.Transaction := dmGeneral.IBTransaction1;
        IBPagar.Database := dmGeneral.IBDatabase1;
        IBPagar.Transaction := dmGeneral.IBTransaction1;
        IBOtros.Database := dmGeneral.IBDatabase1;
        IBOtros.Transaction := dmGeneral.IBTransaction1;
        IBAuxiliar.Database := dmGeneral.IBDatabase1;
        IBAuxiliar.Transaction := dmGeneral.IBTransaction1;
        IBQTiposIdentificacion.Database := dmGeneral.IBDatabase1;
        IBQTiposIdentificacion.Transaction := dmGeneral.IBTransaction1;
        IBSQL2.Database := dmGeneral.IBDatabase1;
        IBQTabla.Database := dmGeneral.IBDatabase1;
        IBQTabla.Transaction := dmGeneral.IBTransaction1;
        IBQTiposIdentificacion.Database := dmGeneral.IBDatabase1;
        IBQTiposIdentificacion.Transaction := dmGeneral.IBTransaction1;
        IBQTipoC.Database := dmGeneral.IBDatabase1;


        QueryComprobante.Database := dmGeneral.IBDatabase1;
        QueryComprobante.Transaction := dmGeneral.IBTransaction1;

        IBTransaction1.DefaultDatabase := dmGeneral.IBDatabase1;
        IBTransaction2.DefaultDatabase := dmGeneral.IBDatabase1;
        IBTransaction3.DefaultDatabase := dmGeneral.IBDatabase1;
        IBTransaction4.DefaultDatabase := dmGeneral.IBDatabase1;

        IBSQL1.Database := dmGeneral.IBDatabase1;
        IBSQL1.Transaction := IBTransaction4;


        IBQuery1.Database := dmGeneral.IBDatabase1;
        IBQuery1.Transaction := dmGeneral.IBTransaction1;
        IBQuery2.Database := dmGeneral.IBDatabase1;
        IBQuery2.Transaction := dmGeneral.IBTransaction1;
        IBQuery3.Database := dmGeneral.IBDatabase1;
        IBQuery3.Transaction := dmGeneral.IBTransaction1;
        IBVarios.Database := dmGeneral.IBDatabase1;
        IBVarios.Transaction := dmGeneral.IBTransaction1;
        IBQsetagencia.Database := dmGeneral.IBDatabase1;
        IBQsetagencia.Transaction := dmGeneral.IBTransaction1;
        IBQsettipocomp.Database := dmGeneral.IBDatabase1;
        IBQsettipocomp.Transaction := dmGeneral.IBTransaction1;
        IBQsetpersona.Database := dmGeneral.IBDatabase1;
        IBQsetpersona.Transaction := IBTransaction2;
        IBQsettipoid.Database := dmGeneral.IBDatabase1;
        IBQsettipoid.Transaction := dmGeneral.IBTransaction1;
        IBQsetauxiliar.Database := dmGeneral.IBDatabase1;
        IBQsetauxiliar.Transaction := dmGeneral.IBTransaction1;
        IBQsetauxiliar.Transaction := dmGeneral.IBTransaction1;
        IBQsetcomprobante.Database := dmGeneral.IBDatabase1;
        IBQsetcomprobante.Transaction := dmGeneral.IBTransaction1;
        IBDataSet1.Database := dmGeneral.IBDatabase1;
        IBDataSet1.Transaction := dmGeneral.IBTransaction1;

        spGetAuxiliarID.Database := dmGeneral.IBDatabase1;

        edFecha.Date := fFechaActual();
end;

function TfrmComprobanteC.grabar : Boolean;
var
I:integer;
_transaccion, _transaccion2: TIBTransaction;
_query: TIBQuery;
idauxiliar: Integer;
begin

      Consecutivo := ObtenerConsecutivo(IBSQL1,dblcbtipo.KeyValue);
      Consec := FormatCurr('0000000',Consecutivo);
      Nocomprobante.Caption := consec;
      vid_comprobante:= consec;

      _transaccion := TIBTransaction.Create(nil);
      _query := TIBQuery.Create(nil);
      _transaccion.DefaultDatabase :=  dmgeneral.IBDatabase1;
      _transaccion.StartTransaction;
      _query.Transaction := _transaccion;
      _transaccion2 := TIBTransaction.Create(nil);
      _transaccion2.DefaultDatabase := dmGeneral.IBDatabase1;
      spGetAuxiliarID.Transaction := _transaccion2;

      with _query do
        try
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

         ParamByName('ID_COMPROBANTE').AsString:= vid_comprobante;
         ParamByname('FECHADIA').AsDate := edFecha.Date;
         ParamByName('ID_AGENCIA').AsInteger := Agencia;
         ParamByName('TIPO_COMPROBANTE').AsInteger := dblcbtipo.KeyValue;
         ParamByName('DESCRIPCION').AsBlob := vdescripcion;
         ParamByName('TOTAL_DEBITO').AsCurrency  := vtotal_debito;
         ParamByName('TOTAL_CREDITO').AsCurrency  := vtotal_credito;
         ParamByName('ESTADO').AsString  := 'O';
         ParamByname('ANULACION').asstring := '';
         ParamByName('IMPRESO').AsInteger  := Ord(false);
         ParamByName('ID_EMPLEADO').AsString := DBAlias;
         ExecSQL;

         SQL.Clear;
         SQL.Add('insert into "con$auxiliar" values (');
         SQL.Add(':"ID_COMPROBANTE",:"ID_AGENCIA",:"FECHA",:"CODIGO",:"DEBITO",');
         SQL.Add(':"CREDITO",:"ID_CUENTA",:"ID_COLOCACION",:"ID_IDENTIFICACION",');
         SQL.Add(':"ID_PERSONA",:"MONTO_RETENCION",:"TASA_RETENCION",:"ESTADOAUX",:"TIPO_COMPROBANTE", :"ID", :ID_CLASE_OPERACION")');
         CDSauxiliargrid.First;
         if CDSauxiliargrid.RecordCount > 0 then
         while not CDSauxiliargrid.Eof do
         begin
            Close;
            SQL.Clear;
            SQL.Add('insert into "con$auxiliar" values (');
            SQL.Add(':"ID_COMPROBANTE",:"ID_AGENCIA",:"FECHA",:"CODIGO",:"DEBITO",');
            SQL.Add(':"CREDITO",:"ID_CUENTA",:"ID_COLOCACION",:"ID_IDENTIFICACION",');
            SQL.Add(':"ID_PERSONA",:"MONTO_RETENCION",:"TASA_RETENCION",:"ESTADOAUX",:"TIPO_COMPROBANTE", :"ID", :"ID_CLASE_OPERACION")');
            idauxiliar :=  ObtenerConsecutivoAuxiliar(IBSQL1);
            ParamByName('ID').AsInteger := idauxiliar;
            ParamByName('TIPO_COMPROBANTE').AsInteger :=  dblcbtipo.KeyValue;
            ParamByName('ID_COMPROBANTE').AsString := vid_comprobante;
            ParamByName('ID_AGENCIA').AsInteger:= CDSauxiliargridID_AGENCIA.Value;
            ParamByName('FECHA').AsDate := edFecha.Date;
            ParamByName('CODIGO').AsString := CDSauxiliargridCODIGO.Value;
            ParamByName('DEBITO').AsCurrency := CDSauxiliargridDEBITO.Value;
            ParamByName('CREDITO').AsCurrency := CDSauxiliargridCREDITO.Value;
            ParamByName('ID_CUENTA').AsString := CDSauxiliargridNUMERO_CUENTA.Value;
            ParamByName('ID_COLOCACION').AsString := CDSauxiliargridID_COLOCACION.Value;
            ParamByName('ID_IDENTIFICACION').AsInteger := CDSauxiliargridID_IDENTIFICACION.Value;
            ParamByName('ID_PERSONA').AsString := CDSauxiliargridID_PERSONA.Value;
            ParamByName('MONTO_RETENCION').AsCurrency := CDSauxiliargridMONTO.Value;
            ParamByName('TASA_RETENCION').AsFloat := CDSauxiliargridTASA.Value;
            ParamByName('ESTADOAUX').AsString := 'O';
            ParamByName('ID_CLASE_OPERACION').AsString := CDSauxiliargridID_CLASE_OPERACION.Value;
            ExecSQL;


            Close;
            SQL.Clear;
            SQL.Add('INSERT INTO "con$auxiliarext" (ID, DETALLE, CHEQUE,ID_COMPROBANTE, TIPO_COMPROBANTE,ID_AGENCIA) VALUES (:ID,:DETALLE,:CHEQUE,:ID_COMPROBANTE,:TIPO_COMPROBANTE,:ID_AGENCIA)');
            ParamByName('ID').AsInteger := idauxiliar;
            ParamByName('DETALLE').AsString := CDSauxiliargridDETALLE.Value;
            ParamByName('CHEQUE').AsString := CDSauxiliargridCHEQUE.Value;
            ParamByName('TIPO_COMPROBANTE').AsInteger := dblcbtipo.KeyValue;
            ParamByName('ID_COMPROBANTE').AsString := vid_comprobante;
            ParamByName('ID_AGENCIA').AsInteger:= CDSauxiliargridID_AGENCIA.Value;
            ExecSQL;

            CDSauxiliargrid.Next;
          end;
         _transaccion.Commit;
         Result := true;
       except
         _transaccion.Rollback;
         Result := false;
         raise;
       end;
end;

function TfrmComprobanteC.actualizar: Boolean;
var
I, idauxiliar:integer;
_transaccion: TIBTransaction;
_transaccion2: TIBTransaction;
_query: TIBQuery;
begin
      _transaccion := TIBTransaction.Create(nil);

      _query := TIBQuery.Create(nil);
      _transaccion.DefaultDatabase := dmgeneral.IBDatabase1;
      _transaccion2 := TIBTransaction.Create(nil);
      _transaccion2.DefaultDatabase := dmgeneral.IBDatabase1;
      spGetAuxiliarID.Transaction := _transaccion2;
      _transaccion.StartTransaction;
      _query.Transaction := _transaccion;


      with _query do
       try
         sql.Clear;
         sql.Add('update "con$comprobante" set ');
         sql.Add('"con$comprobante"."DESCRIPCION" =:"DESCRIPCION",');
         sql.Add('"con$comprobante"."TOTAL_DEBITO" =:"TOTAL_DEBITO",');
         sql.Add('"con$comprobante"."TOTAL_CREDITO" =:"TOTAL_CREDITO",');
         sql.Add('"con$comprobante"."ESTADO" =:"ESTADO",');
         sql.Add('"con$comprobante"."IMPRESO" =:"IMPRESO",');
         sql.Add('"con$comprobante"."ANULACION" =:"ANULACION",');
         sql.Add('"con$comprobante".ID_EMPLEADO = :ID_EMPLEADO,');
         sql.Add('"con$comprobante".FECHADIA = :FECHADIA');
         sql.Add(' where ');
         sql.Add('"con$comprobante"."TIPO_COMPROBANTE" = :"TIPO_COMPROBANTE" and');
         sql.Add('"con$comprobante"."ID_COMPROBANTE" = :"ID_COMPROBANTE"');

         ParamByName('TIPO_COMPROBANTE').AsInteger := dblcbtipo.KeyValue;
         ParamByName('ID_COMPROBANTE').AsString:= vid_comprobante;
         
         ParamByName('FECHADIA').AsDate := edFecha.Date;
         ParamByName('DESCRIPCION').AsString := vdescripcion;
         ParamByName('TOTAL_DEBITO').AsCurrency  := vtotal_debito;
         ParamByName('TOTAL_CREDITO').AsCurrency  := vtotal_credito;
         ParamByName('ESTADO').AsString  := 'O';
         ParamByName('IMPRESO').AsInteger  := Ord(False);
         ParamByName('ANULACION').AsString := anulacion;
         parambyname('ID_EMPLEADO').AsString := DBAlias;
         ExecSQL;

         SQL.Clear;
         SQL.Add('delete from "con$auxiliar" where ');
         SQL.Add('"con$auxiliar"."TIPO_COMPROBANTE" = :"TIPO_COMPROBANTE" and');
         SQL.Add('"con$auxiliar"."ID_COMPROBANTE" = :"ID_COMPROBANTE"');
         ParamByName('TIPO_COMPROBANTE').AsInteger := dblcbtipo.KeyValue;
         ParamByName('ID_COMPROBANTE').AsString:= vid_comprobante;
         ExecSQL;

         SQL.Clear;
         SQL.Add('delete from "con$auxiliarext" where ');
         SQL.Add('"con$auxiliarext"."TIPO_COMPROBANTE" = :"TIPO_COMPROBANTE" and');
         SQL.Add('"con$auxiliarext"."ID_COMPROBANTE" = :"ID_COMPROBANTE" and');
         SQL.Add('"con$auxiliarext"."ID_AGENCIA" = :"ID_AGENCIA"');
         ParamByName('TIPO_COMPROBANTE').AsInteger := dblcbtipo.KeyValue;
         ParamByName('ID_COMPROBANTE').AsString:= vid_comprobante;
         ExecSQL;

         CDSauxiliargrid.First;
         if CDSauxiliargrid.RecordCount > 0 then
         while not CDSauxiliargrid.Eof do
         begin
            Close;
            SQL.Clear;
            SQL.Add('insert into "con$auxiliar" values (');
            SQL.Add(':"ID_COMPROBANTE",:"ID_AGENCIA",:"FECHA",:"CODIGO",:"DEBITO",');
            SQL.Add(':"CREDITO",:"ID_CUENTA",:"ID_COLOCACION",:"ID_IDENTIFICACION",');
            SQL.Add(':"ID_PERSONA",:"MONTO_RETENCION",:"TASA_RETENCION",:"ESTADOAUX",:"TIPO_COMPROBANTE", :"ID", :"ID_CLASE_OPERACION")');
            idauxiliar :=  ObtenerConsecutivoAuxiliar(IBSQL1);
            ParamByName('ID').AsInteger := idauxiliar;
            ParamByName('TIPO_COMPROBANTE').AsInteger :=  dblcbtipo.KeyValue;
            ParamByName('ID_COMPROBANTE').AsString := vid_comprobante;
            ParamByName('ID_AGENCIA').AsInteger:= CDSauxiliargridID_AGENCIA.Value;
            ParamByName('FECHA').AsDate := edFecha.Date;
            ParamByName('CODIGO').AsString := CDSauxiliargridCODIGO.Value;
            ParamByName('DEBITO').AsCurrency := CDSauxiliargridDEBITO.Value;
            ParamByName('CREDITO').AsCurrency := CDSauxiliargridCREDITO.Value;
            ParamByName('ID_CUENTA').AsString := CDSauxiliargridNUMERO_CUENTA.Value;
            ParamByName('ID_COLOCACION').AsString := CDSauxiliargridID_COLOCACION.Value;
            ParamByName('ID_IDENTIFICACION').AsInteger := CDSauxiliargridID_IDENTIFICACION.Value;
            ParamByName('ID_PERSONA').AsString := CDSauxiliargridID_PERSONA.Value;
            ParamByName('MONTO_RETENCION').AsCurrency := CDSauxiliargridMONTO.Value;
            ParamByName('TASA_RETENCION').AsFloat := CDSauxiliargridTASA.Value;
            ParamByname('ESTADOAUX').AsString := 'O';
            ParamByName('ID_CLASE_OPERACION').AsString := cbClaseOperacion.KeyValue;

            ExecSQL;

            Close;
            SQL.Clear;
            SQL.Add('INSERT INTO "con$auxiliarext" (ID, DETALLE, CHEQUE,ID_COMPROBANTE, TIPO_COMPROBANTE,ID_AGENCIA) VALUES (:ID,:DETALLE,:CHEQUE,:ID_COMPROBANTE,:TIPO_COMPROBANTE,:ID_AGENCIA)');
            ParamByName('ID').AsInteger := idauxiliar;
            ParamByName('DETALLE').AsString := CDSauxiliargridDETALLE.Value;
            ParamByName('CHEQUE').AsString := CDSauxiliargridCHEQUE.Value;
            ParamByName('TIPO_COMPROBANTE').AsInteger := dblcbtipo.KeyValue;
            ParamByName('ID_COMPROBANTE').AsString := vid_comprobante;
            ParamByName('ID_AGENCIA').AsInteger:= CDSauxiliargridID_AGENCIA.Value;
            ExecSQL;

            CDSauxiliargrid.Next;            
         end;
         _transaccion.Commit;
         Result := true;
         vmodificar:= true;
         buscarcomp(dblcbtipo.KeyValue,strtoint(vid_comprobante));
       except
         _transaccion.Rollback;
         vmodificar:= true;
         buscarcomp(dblcbtipo.KeyValue,StrToInt(vid_comprobante));
         Result := false;
       end;
end;


procedure TfrmComprobanteC.BtnGrabarClick(Sender: TObject);
var
    TotalDebito:Currency;
    TotalCredito:Currency;
    i:Integer;
    ARecord: PList;
begin
  Application.ProcessMessages;

  if (DiaCerrado) then
  begin
      ShowMessage('No puede crear comprobantes con esta fecha, ya se encuentra cerrado!');
      Exit;
  end;

  TotalDebito := 0;
  TotalCredito := 0;
  actualizaxsauxiliar;

  TotalDebito := vtotal_debito;
  TotalCredito := vtotal_credito;

  if vModificar then
     begin
      if descripcion ='' then begin
         messagedlg('No ha digitado la descripción',mtError,[mbOk],0);
         editdescripcion.SetFocus;
         exit;
        end;
      if CDSauxiliargrid.RecordCount < 1 then
       begin
         messagedlg('No ha digitado ningún movimiento',mtError,[mbOk],0);
         exit;
       end;
      if TotalDebito <> TotalCredito then
       begin
        messagedlg('El comprobante No está cuadrado',mtError,[mbOk],0);
        exit;
       end;
      BtnGrabar.Enabled := False;
      if Actualizar then
          begin
           MessageDlg('El Comprobante se Actualizó',mtInformation,[mbOK],0);
           vmodificar := true;
           exit;
          end
        else
          begin
           MessageDlg('Comprobante no Actualizado',mtError,[mbOK],0);
           exit;
          end;
     end
     else
     begin
      if descripcion ='' then
        begin
         messagedlg('No ha digitado la descripción',mtError,[mbOk],0);
         editdescripcion.SetFocus;
         exit;
        end;
      if CDSauxiliargrid.RecordCount < 1 then
       begin
         messagedlg('No ha digitado ningún movimiento',mtError,[mbOk],0);
         exit;
       end;
      if TotalDebito <> TotalCredito then
        begin
         messagedlg('El comprobante No está cuadrado',mtError,[mbOk],0);
         exit;
        end;
     BtnGrabar.Enabled := False;
     if Grabar then
       begin
       MessageDlg('El Comprobante fue Grabado',mtInformation,[mbOK],0);
       BtnGrabar.Enabled := True;
       Btngrabar.Caption := '&Modificar';
       Application.ProcessMessages;
       Btnreporte.Click;
       vmodificar := True;
       BuscarComp(dblcbtipo.KeyValue, StrToInt(vid_comprobante));
       end
     else
       MessageDlg('Comprobante No Grabado',mtError,[mbOK],0);
   end;
end;


procedure TfrmComprobanteC.BtncerrarClick(Sender: TObject);
begin
        self.Close;
end;

procedure TfrmComprobanteC.actualizaxsauxiliar;
var
  TotalDebito, TotalCredito: Currency;
begin

     TotalDebito:= 0;
     TotalCredito:= 0;


     cdsauxiliargrid.First;
     while not CDSauxiliargrid.Eof do
     begin
         TotalDebito := TotalDebito + CDSauxiliargridDEBITO.Value;
         TotalCredito := TotalCredito + CDSauxiliargridCREDITO.Value;
         CDSauxiliargrid.Next;
     end;
     edittotaldebito.Value := TotalDebito;
     edittotalcredito.Value := TotalCredito;
     edittotaldiferencia.Value := TotalDebito - TotalCredito;
     vtotal_debito := TotalDebito;
     vtotal_credito := TotalCredito;

end;

procedure TfrmComprobanteC.CheckBoximpresoKeyUp(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
        if Key = 13 then
        btnAgregar.SetFocus;
end;


procedure TfrmComprobanteC.BtnlimpiarClick(Sender: TObject);
begin
        Inicializar;
end;

procedure TfrmComprobanteC.editdescripcionExit(Sender: TObject);
begin
        if editdescripcion.Text <> '' then
          begin
           descripcion := editdescripcion.Text;
           editdescripcion.Text := descripcion;
           vdescripcion := editdescripcion.Text;
           editcodigo.SetFocus;           
          end
        else
          begin
           MessageDlg('No ha digitado la Descripcion del Comprobante',mtError,[mbOK],0);
//           editdescripcion.SetFocus;
          end;

end;

procedure TfrmComprobanteC.BtnBuscarClick(Sender: TObject);
var
opcion:integer;
begin
        btnlimpiar.Click;
        frmbuscarcomprobante := Tfrmbuscarcomprobante.Create(Self);
        frmBuscarcomprobante.Position:= poMainFormCenter;
        Opcion := frmbuscarcomprobante.ShowModal;
        if Opcion = mrOK then
        begin
          id_comprobante:= strtoint(frmbuscarcomprobante.EditCODIGO.Text);
          id_tipocomprobante := frmbuscarcomprobante.dblcbtipo.KeyValue;
          frmBuscarcomprobante.Free;
          buscarcomp(id_tipocomprobante, id_comprobante);
        end;
end;


procedure TfrmComprobanteC.btnrefrescarClick(Sender: TObject);
begin
     IBQsetcomprobante.Close;
     IBQsetcomprobante.Open;
     IBQsetauxiliar.close;
     IBQsetauxiliar.Open;
end;

procedure TfrmComprobanteC.BtnAnularClick(Sender: TObject);
begin
                if (estadoc= 'N')  then
                 begin
                  buscarcomprobante(id_tipocomprobante, id_comprobante);
                  bloquear;
                  MessageDlg('El Comprobante ya está anulado',mtError,[mbOk],0);
                  Btnlimpiarclick(sender);
                  desbloquear;
                  exit;
                 end;
                if (estadoc= 'C') or (estadoc= 'O') then
                 begin
                   if  MessageDlg('Seguro de Anular Comprobante',mtConfirmation,[mbYes,mbNo],0) = mrYes then
                    begin
                        vestadoc:= 'N';
                        vestadoa:= 'N';
                        buscarcomprobante(id_tipocomprobante, id_comprobante);
                        label8.Visible:= true;
                        editanulacion.Visible:= true;
                        editanulacion.SetFocus;
                     end;
                end;
                if (estadoc ='') then
                 begin
                  MessageDlg('El comprobante no existe',mtError,[mbOk],0);
                  BtnAnular.SetFocus;
                 end;
end;

procedure TfrmComprobanteC.bloquear;
var
I,J:integer;
begin
    I := Self.ComponentCount -1;

    for J := 0 to I do
    begin
        if Self.Components[J] is TMemo then begin
           TMemo(Self.Components[J]).ReadOnly:= true;
           TMemo(Self.Components[J]).Color:= clLtGray;
        end
        else
        if Self.Components[J] is TDBLookupComboBox then begin
           TDBLookupComboBox(Self.Components[J]).ReadOnly:= true;
           TDBLookupComboBox(Self.Components[J]).Color:= clLtGray;
        end
        else
        if Self.Components[J] is TEdit then begin
           TEdit(Self.Components[J]).ReadOnly:= true;
           TEdit(Self.Components[J]).color:= clLtgray;
        end
        else
        if Self.Components[J] is TMaskEdit then begin
           TEdit(Self.Components[J]).ReadOnly:= true;
           TEdit(Self.Components[J]).color:= clLtgray;
        end
        else
        if Self.Components[J] is TJvCurrencyEdit then begin
           TEdit(Self.Components[J]).ReadOnly:= true;
           TEdit(Self.Components[J]).color:= clLtgray;
        end

        end;
    end;

procedure TfrmComprobanteC.desbloquear;
var
I,J:integer;
begin
    I := Self.ComponentCount -1;

    for J := 0 to I do
    begin
        if Self.Components[J] is TMemo then begin
           TMemo(Self.Components[J]).ReadOnly:= false;
           TMemo(Self.Components[J]).Color:= clWhite;
        end
        else
        if Self.Components[J] is TDBLookupComboBox then begin
           TDBLookupComboBox(Self.Components[J]).ReadOnly:= false;
           TDBLookupComboBox(Self.Components[J]).Color:= clWhite;
        end
        else
        if Self.Components[J] is TEdit then begin
           TEdit(Self.Components[J]).ReadOnly:= false;
           TEdit(Self.Components[J]).color:= clWhite;
        end
        else
        if Self.Components[J] is TMaskEdit then begin
           TEdit(Self.Components[J]).ReadOnly:= false;
           TEdit(Self.Components[J]).color:= clWhite;
        end
        else
        if Self.Components[J] is TJvCurrencyEdit then begin
           TEdit(Self.Components[J]).ReadOnly:= false;
           TEdit(Self.Components[J]).color:= clWhite;
        end

        end;
    end;

procedure TfrmComprobanteC.buscarcomprobante(TIPO_COMPROBANTE: Integer; ID_COMPROBANTE: integer);
var
_transaccion: TIBTransaction;
_query: TIBQuery;
_query2: TIBQuery;
auxiliar:integer;
Arecord:Plist;
begin
      _transaccion := TIBTransaction.Create(nil);
      _query := TIBQuery.Create(nil);
      _query2 := TIBQuery.Create(nil);
      _transaccion.DefaultDatabase := dmgeneral.IBDatabase1;
      _transaccion.StartTransaction;
      _query.Transaction := _transaccion;
      _query2.Transaction := _transaccion;

        with _query do
            begin
                SQL.Clear;
                SQL.Add('select * from "con$comprobante" where "con$comprobante".TIPO_COMPROBANTE = :"TIPO_COMPROBANTE" and "con$comprobante"."ID_COMPROBANTE" =:"ID_COMPROBANTE"');
                ParamByName('TIPO_COMPROBANTE').AsInteger := TIPO_COMPROBANTE;
                paramByName('ID_COMPROBANTE').AsInteger:= ID_COMPROBANTE;
                Open;
                id_tipocomprobante := strtoint(trim(fieldbyname('TIPO_COMPROBANTE').AsString));
                vid_comprobante:= inttostr(fieldbyname('ID_COMPROBANTE').AsInteger);
                if RecordCount > 0 then
                begin
                   dblcbtipo.KeyValue := id_tipocomprobante;
                   NoComprobante.Caption := FormatCurr('0000000',StrToCurr(vid_comprobante));
                   edFecha.Date := FieldByName('FECHADIA').AsDateTime;
                   vtipo_comprobante := strtoint(trim(fieldbyname('TIPO_COMPROBANTE').AsString));
                   dblcbtipo.KeyValue := vtipo_comprobante;
                   vdescripcion := fieldbyname('DESCRIPCION').AsString;
                   editdescripcion.Text:= vdescripcion;
                   vtotal_debito := fieldbyname('TOTAL_DEBITO').AsCurrency;
                   edittotaldebito.Text:= formatcurr('#,##0.00',vtotal_debito);
                   vtotal_credito := fieldbyname('TOTAL_CREDITO').AsCurrency;
                   edittotalcredito.Text:= formatcurr('#,##0.00',vtotal_credito);
                   edittotaldiferencia.Text := formatcurr('#,##0.00', (vtotal_debito - vtotal_credito));
                   vestadoc:= fieldbyname('ESTADO').AsString;
                   vimpreso := inttoboolean(fieldbyname('IMPRESO').AsInteger);
                   BtnGrabar.Caption := '&Modificar';
                   if vimpreso then
                      checkboximpreso.Checked := true;
                   if vestadoc = 'N' then
                     begin
                      checkboxanulado.Checked:= true;
                      label8.Visible:= true;
                      editanulacion.Visible:= true;
                      anulacion := fieldbyname('ANULACION').AsString;
                      editanulacion.Text:= anulacion;
                     end
                   else
                   if estadoc = 'C' then
                     checkboxcerrado.Checked:= true;
                end;
            end;

        with _query2 do
          begin
                CDSauxiliargrid.EmptyDataSet;
                SQL.Clear;
                SQL.Add('select a.*, ae.*, p.NOMBRE AS CUENTA, p.ESBANCO,  g.PRIMER_APELLIDO, g.SEGUNDO_APELLIDO, g.NOMBRE, c.DESCRIPCION_AGENCIA, o.DESCRIPCION_CLASE_OPERACION from "con$auxiliar" a ');
                SQL.Add('inner join "con$puc" p on a.CODIGO = p.CODIGO ');
                SQL.Add('left join "gen$persona" g ON g.ID_IDENTIFICACION = a.ID_IDENTIFICACION and g.ID_PERSONA = a.ID_PERSONA');
                SQL.Add('left join "con$auxiliarext" ae ON a.ID = ae.ID');
                SQL.Add('left join "gen$agencia" c ON a.ID_AGENCIA = c.ID_AGENCIA');
                SQL.Add('left join "gen$claseoperacion" o ON o.ID_CLASE_OPERACION = a.ID_CLASE_OPERACION');
                SQL.Add('where a."TIPO_COMPROBANTE" = :"TIPO_COMPROBANTE" and a."ID_COMPROBANTE" =:"ID_COMPROBANTE"');
                ParamByName('TIPO_COMPROBANTE').AsInteger := TIPO_COMPROBANTE;
                paramByName('ID_COMPROBANTE').AsInteger:= ID_COMPROBANTE;
                Active := True;
                auxiliar:= fieldbyname('ID_COMPROBANTE').AsInteger;
                if (auxiliar <> 0) then
                 begin
                    Open;
                    Last;
                    First;
                    while not Eof do
                    begin
                    CDSauxiliargrid.Insert;
                    CDSauxiliargridCODIGO.Value := fieldbyname('CODIGO').AsString;
                    CDSauxiliargridCUENTA.Value := fieldbyname('CUENTA').AsString;
                    CDSauxiliargridESBANCO.Value := InttoBoolean(FieldByName('ESBANCO').AsInteger);
                    CDSauxiliargridDEBITO.Value := fieldbyname('DEBITO').AsCurrency;
                    CDSauxiliargridCREDITO.Value := fieldbyname('CREDITO').AsCurrency;
                    CDSauxiliargridID_IDENTIFICACION.Value :=fieldbyname('ID_IDENTIFICACION').AsInteger;
                    if (FieldByName('ID_PERSONA').AsString <> '') then
                            CDSauxiliargridID_PERSONA.Value := fieldbyname('ID_PERSONA').AsString
                    else
                            CDSauxiliargridID_PERSONA.Clear;
                    CDSauxiliargridMONTO.Value :=fieldbyname('MONTO_RETENCION').AsCurrency;
                    CDSauxiliargridTASA.Value :=fieldbyname('TASA_RETENCION').AsFloat;
                    CDSauxiliargridESTADO.Value :=fieldbyname('ESTADOAUX').AsString;
                    CDSauxiliargridID_COLOCACION.Value := FieldByName('ID_COLOCACION').AsString;
                    CDSauxiliargridNUMERO_CUENTA.Value := FieldByName('ID_CUENTA').AsString;
                    CDSauxiliargridDETALLE.Value := FieldByName('DETALLE').AsString;
                    CDSauxiliargridCHEQUE.Value := FieldByName('CHEQUE').AsString;
                    CDSauxiliargridPRIMER_APELLIDO.Value := FieldByName('PRIMER_APELLIDO').AsString;
                    CDSauxiliargridSEGUNDO_APELLIDO.Value := FieldByName('SEGUNDO_APELLIDO').AsString;
                    CDSauxiliargridNOMBRE.Value := FieldByName('NOMBRE').AsString;
                    CDSauxiliargridID_AGENCIA.Value := FieldByName('ID_AGENCIA').AsInteger;
                    CDSauxiliargridID_CLASE_OPERACION.Value := FieldByName('ID_CLASE_OPERACION').AsString;
                    CDSauxiliargridDESCRIPCION_AGENCIA.Value := FieldByName('DESCRIPCION_AGENCIA').AsString;
                    CDSauxiliargridDESCRIPCION_CLASE_OPERACION.Value := FieldByName('DESCRIPCION_CLASE_OPERACION').AsString;
                    CDSauxiliargrid.Post;
                    next;
                    end;
                    actualizaxsauxiliar;
                 end;
          end;
end;



procedure TfrmComprobanteC.CheckBoxcerradoKeyPress(Sender: TObject;
  var Key: Char);
begin
        EnterTabs(key,self);
end;

procedure TfrmComprobanteC.CheckBoxanuladoKeyPress(Sender: TObject;
  var Key: Char);
begin
        EnterTabs(key,self);
end;

procedure TfrmComprobanteC.editanulacionKeyUp(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
        if key = 13 then
        BtnAgregar.SetFocus;
end;

procedure TfrmComprobanteC.editanulacionExit(Sender: TObject);
var
I : integer;
begin
anulacion:=editanulacion.Text;
editanulacion.Text := uppercase(anulacion);
anulacion := editanulacion.Text;
if anulacion <> '' then
 begin
 try
  with IBQuery1 do
   begin
    sql.Clear;
    Sql.Add('update "con$comprobante" set "con$comprobante"."ANULACION" = :"anulacion",');
    Sql.Add('"con$comprobante"."ESTADO" = :"ESTADO"');
    sql.Add('where "con$comprobante"."TIPO_COMPROBANTE" = :"TIPO_COMPROBANTE" and "con$comprobante"."ID_COMPROBANTE" = :"ID_COMPROBANTE" ');
    ParamByName('TIPO_COMPROBANTE').AsInteger := id_tipocomprobante;
    parambyname('ID_COMPROBANTE').AsInteger := id_comprobante;
    parambyname('ANULACION').AsString := anulacion;
    parambyname('ESTADO').AsString := 'N';
    ExecSQL;
   end;
  with IBQuery2 do
   begin
    sql.Clear;
    Sql.Add('update "con$auxiliar" set ');
    Sql.Add('"con$auxiliar"."ESTADOAUX" = :"ESTADOAUX"');
    sql.Add('where "con$auxiliar"."TIPO_COMPROBANTE" = :"TIPO_COMPROBANTE" and "con$auxiliar"."ID_COMPROBANTE" = :"ID_COMPROBANTE"');
    ParamByName('TIPO_COMPROBANTE').AsInteger := id_tipocomprobante;
    parambyname('ID_COMPROBANTE').AsInteger := id_comprobante;
    ParambyName('ESTADOAUX').AsString := 'N';
    ExecSQL;
    Transaction.Commit;
   end;
    MessageDlg('Comprobante Anulado',mtConfirmation,[mbOk],0);
    BtnLimpiarClick(sender);
    label8.Visible:= false;
    editanulacion.Visible:= false;
  except
    IBQuery2.Transaction.Rollback;
    raise;
  end;
 end
 else
 begin
  MessageDlg('Debe digitar la causal de anulacion',mtError,[mbOk],0);
  editanulacion.SetFocus;
 end;
end;


procedure TfrmComprobanteC.editanulacionKeyPress(Sender: TObject;
  var Key: Char);
begin
        if key = #13 then
        BtnBuscar.SetFocus;
end;

procedure TfrmComprobanteC.dblcbtipo_compKeyPress(Sender: TObject;
  var Key: Char);
begin
        EnterTabs(Key,Self);
end;

procedure TfrmComprobanteC.DblcbAgenciaKeyPress(Sender: TObject;
  var Key: Char);
begin
        EnterTabs(Key,Self);
end;

procedure TfrmComprobanteC.editdescripcionKeyPress(Sender: TObject;
  var Key: Char);
begin
       EnterTabs(Key,Self);
end;

procedure TfrmComprobanteC.BtnModificarGridClick(Sender: TObject);
begin
        if codigo = '' then begin
          MessageDlg('Debe Digitar un Código',mtError,[mbok],0);
          editcodigo.SetFocus;
          Exit;
        end;

        if (debito = 0) and (credito = 0) then
          begin
           MessageDlg('Debe digitar un valor debito ó crédito',mtError,[mbOk],0);
           eddebito.SetFocus;
           Exit;
          end;     

           enedicion := true;
           CDSauxiliargrid.Edit;
           CDSauxiliargridCODIGO.Value := codigo;
           CDSauxiliargridCUENTA.Value := nomcuenta;
           CDSauxiliargridDEBITO.Value := debito;
           CDSauxiliargridCREDITO.Value := credito;
           CDSauxiliargridID_IDENTIFICACION.Value := tipoide;
           if (idpersona <> '') then
                   CDSauxiliargridID_PERSONA.Value := idpersona
           else
                   CDSauxiliargridID_PERSONA.Clear;
           CDSauxiliargridMONTO.Value := monto;
           CDSauxiliargridTASA.Value := tasa;
           CDSauxiliargridESTADO.Value := estado;
           CDSauxiliargridDETALLE.Value := detalle;
           CDSauxiliargridCHEQUE.Value := cheque;
           CDSauxiliargridID_AGENCIA.Value := EdAgencia.KeyValue;
           CDSauxiliargridDESCRIPCION_AGENCIA.Value := EdAgencia.Text;
           CDSauxiliargridID_CLASE_OPERACION.Value := cbClaseOperacion.KeyValue;
           CDSauxiliargridDESCRIPCION_CLASE_OPERACION.Value := cbClaseOperacion.Text;
           CDSauxiliargrid.Post;
           enedicion := false;
           actualizaxsauxiliar;

end;

procedure TfrmComprobanteC.BtnAgregarClick(Sender: TObject);
var
i:Integer;
begin
        if codigo = '' then begin
          MessageDlg('Debe Digitar un Código',mtError,[mbok],0);
          editcodigo.SetFocus;
          Exit;
        end;

        if (debito = 0) and (credito = 0) then
          begin
           MessageDlg('Debe digitar un valor debito ó crédito',mtError,[mbOk],0);
           eddebito.SetFocus;
           Exit;
          end;

        if (edAgencia.KeyValue < 1) then
        begin
           ShowMessage('Debe seleccionar el Centro de Costo');
           EdAgencia.SetFocus;
           Exit;
        end;

        if (cbClaseOperacion.Enabled) then
        begin
            if (cbClaseOperacion.KeyValue = '') then
            begin
                cbClaseOperacion.Color := clRed;
                cbClaseOperacion.SetFocus;
            end
            else
            begin
                cbClaseOperacion.Color := clWhite;
            end;
        end
        else
        begin
               cbClaseOperacion.Color := clWhite;
        end;

           enedicion := true;
           CDSauxiliargrid.Insert;
           CDSauxiliargridCODIGO.Value := CODIGO;
           CDSauxiliargridCUENTA.Value := nomcuenta;
           CDSauxiliargridDEBITO.Value := DEBITO;
           CDSauxiliargridCREDITO.Value := CREDITO;
           CDSauxiliargridID_IDENTIFICACION.Value := tipoide;
           if (idpersona <> '') then
                   CDSauxiliargridID_PERSONA.Value := idpersona
           else
                   CDSauxiliargridID_PERSONA.Clear;
           CDSauxiliargridMONTO.Value := monto;
           CDSauxiliargridTASA.Value := tasa;
           CDSauxiliargridESTADO.Value := estado;
           CDSauxiliargridDETALLE.Value := txtNota.Text;
           CDSauxiliargridCHEQUE.Value := edCheque.Text;
           CDSauxiliargridESTADO.Value := 'O';
           CDSauxiliargridNOMBRE.Value := nombre;
           CDSauxiliargridPRIMER_APELLIDO.Value := p_apellido;
           CDSauxiliargridSEGUNDO_APELLIDO.Value := s_apellido;
           CDSauxiliargridID_AGENCIA.Value := EdAgencia.KeyValue;
           CDSauxiliargridDESCRIPCION_AGENCIA.Value := EdAgencia.Text;
           CDSauxiliargridID_CLASE_OPERACION.Value := cbClaseOperacion.KeyValue;
           CDSauxiliargridDESCRIPCION_CLASE_OPERACION.Value := cbClaseOperacion.Text;
           CDSauxiliargrid.Post;
           enedicion := false;
           
           actualizaxsauxiliar;

           codigo := '';
           debito := 0;
           credito := 0;
           detalle := '';
           cheque := '';
           Label11.Caption := '';
           nombre := '';
           p_apellido := '';
           s_apellido := '';

           Edtipoid.KeyValue := -1;
           Edtipoid.Enabled := False;

           EdNit.Clear;
           EdNit.Enabled := False;

           EdMonto.Clear;
           EdMonto.Enabled := False;

           EdTasa.Clear;
           EdTasa.Enabled := False;

           Label3.Caption := '';
           Label3.Visible := False;
           edagencia.KeyValue := 1;
           editcodigo.SetFocus;

end;


procedure TfrmComprobanteC.BtnEliminarClick(Sender: TObject);
begin

        if (MessageDlg('Seguro de eliminar la partida código:'+CDSauxiliargridCODIGO.Value,mtConfirmation,[mbYes,mbNo],0) = mrYes) then
        begin
           CDSauxiliargrid.Delete;
           Actualizaxsauxiliar;
           BtnEliminar.Enabled := false;
           BtnModificargrid.Enabled := false;

           codigo := '';
           debito := 0;
           credito := 0;
           monto := 0;
           tasa := 0;
           Label11.Caption := '';

           Edtipoid.KeyValue := -1;
           Edtipoid.Enabled := False;

           EdNit.Clear;
           EdNit.Enabled := False;

           EdMonto.Clear;
           EdMonto.Enabled := False;

           EdTasa.Clear;
           EdTasa.Enabled := False;

           Label3.Caption := '';
           Label3.Visible := False;
        end;
end;


procedure TfrmComprobanteC.BtnreporteClick(Sender: TObject);
var
anulacion : string;
Tabla : String;
begin
        with IBAuxiliar do begin
         if  Transaction.InTransaction then
            Transaction.Commit;
         Transaction.StartTransaction;
         empleado;

         Close;
         ParamByName('ID_COMPROBANTE').AsInteger := StrToInt(NoComprobante.Caption);
         ParamByName('TIPO_COMPROBANTE').AsInteger := dblcbtipo.KeyValue;         
         try
          Open;
          Report1.Variables.ByName['EMPRESA'].AsString := Empresa;
          Report1.Variables.ByName['NIT'].AsString := Nit;
          if Report1.PrepareReport then
            Report1.PreviewPreparedReport(True);
         except
          MessageDlg('Error al generar el reporte',mtError,[mbcancel],0);
         end;
        end;
end;

procedure TfrmComprobanteC.CheckBoximpresoExit(Sender: TObject);
begin
        if checkboximpreso.Checked = true then
          vimpreso := true
        else
          vimpreso := false;
end;

procedure TfrmComprobanteC.Report1PrintComplete(Sender: TObject);
begin
      vimpreso := true;
      with IBQuery2 do
       begin
         sql.Clear;
         sql.Add('update "con$comprobante" set ');
         sql.Add('"con$comprobante"."IMPRESO" = :"IMPRESO"');
         sql.Add(' where ');
         sql.Add('"con$comprobante"."TIPO_COMPROBANTE" = :"TIPO_COMPROBANTE" and');
         sql.Add('"con$comprobante"."ID_COMPROBANTE" = :"ID_COMPROBANTE" and');
         sql.Add('"con$comprobante"."ID_AGENCIA" = :"ID_AGENCIA"');

         ParamByName('TIPO_COMPROBANTE').AsInteger := dblcbtipo.KeyValue;
         ParamByName('ID_COMPROBANTE').AsString:= vid_comprobante;
         ParamByName('ID_AGENCIA').AsInteger := Agencia;
         ParamByName('IMPRESO').AsInteger  := ord(vimpreso);
         ExecSQL;
       end;
end;


procedure TfrmComprobanteC.EdittotaldebitoExit(Sender: TObject);
begin
        vtotal_debito:= strtocurr(edittotaldebito.Text);
end;

procedure TfrmComprobanteC.EdittotalcreditoExit(Sender: TObject);
begin
        vtotal_credito:= strtocurr(edittotalcredito.Text);
end;

procedure TfrmComprobanteC.Empleado;
begin
        with IBQuery1 do
         begin
           sql.Clear;
           sql.Add('select PRIMER_APELLIDO, SEGUNDO_APELLIDO, NOMBRE from "gen$empleado"');
           sql.Add('where "gen$empleado"."ID_EMPLEADO" =:"ID_EMPLEADO"');
           ParamByName('ID_EMPLEADO').AsString := DBAlias;
           Open;
           Nombres := FieldByName('NOMBRE').AsString;
           Apellidos := FieldByname('PRIMER_APELLIDO').AsString + '   ' + FieldByName('SEGUNDO_APELLIDO').AsString;
         end;
end;

procedure TfrmComprobanteC.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
        dmGeneral.Free;
end;

function TfrmComprobanteC.EvaluarCodigo(Codigo: string): string;
begin
    with IBQuery1 do
    begin
     sql.Clear;
     Sql.Add('select "NOMBRE", "MOVIMIENTO", "INFORME", "ESBANCO"');
     Sql.Add('from "con$puc"');
     Sql.Add('where "con$puc"."ID_AGENCIA" =:"ID_AGENCIA" and');
     Sql.Add('"con$puc"."CODIGO" =:"CODIGO"');
     parambyname('ID_AGENCIA').AsInteger := Agencia;
     parambyname('CODIGO').AsString := codigo;
     Open;
     nomcuenta := FieldByName('NOMBRE').AsString;
     movimiento:= IntToBoolean(FieldByName('MOVIMIENTO').AsInteger);
     id := Fieldbyname('INFORME').AsString;
     esbanco := InttoBoolean(FieldByName('ESBANCO').AsInteger);
     if IBQuery1.RecordCount > 0 then
      begin
        Label11.Visible:= true;
        Label11.Caption:= nomcuenta;
        result := nomcuenta;

        if not movimiento then
          begin
           MessageDlg('La Cuenta no es de Movimiento',mtError,[mbOk],0);
           editcodigo.SetFocus;
           editcodigo.Text:= '';
           label11.Visible := false;
           exit;
          end;
      end
     else
      begin
        MessageDlg('La cuenta no Existe',mtError,[mbOk],0);
        editcodigo.Text:= '';
        editcodigo.SetFocus;
        label11.Caption := '';
        Label11.Visible := False;
        GrupoInforme.Enabled := False;
      end;
    end;
end;


procedure TfrmComprobanteC.BuscarComp(Tp, Id : Integer);
var
_transaccion: TIBTransaction;
_query: TIBQuery;
begin
      _transaccion := TIBTransaction.Create(nil);
      _query := TIBQuery.Create(nil);
      _query.Database := dmGeneral.IBDatabase1;
      _transaccion.DefaultDatabase :=  dmgeneral.IBDatabase1;
      _transaccion.StartTransaction;
      _query.Transaction := _transaccion;

      with _query do
          begin
           IBQsetagencia.Open;
           IBQsettipocomp.Open;
           IBQsetauxiliar.Open;
           SQL.Clear;
           SQL.Add('select "con$comprobante".ESTADO from "con$comprobante"');
           SQL.Add('LEFT JOIN "con$auxiliar" ON ("con$comprobante".TIPO_COMPROBANTE = "con$auxiliar".TIPO_COMPROBANTE and "con$comprobante".ID_COMPROBANTE = "con$auxiliar".ID_COMPROBANTE and "con$comprobante".ID_AGENCIA = "con$auxiliar".ID_AGENCIA)');
           SQL.Add(' where "con$comprobante".TIPO_COMPROBANTE = :"TIPO_COMPROBANTE" and "con$comprobante".ID_COMPROBANTE = :"ID_COMPROBANTE"');
           ParamByName('TIPO_COMPROBANTE').AsInteger := Tp;
           ParamByName('ID_COMPROBANTE').AsInteger:= Id;

           Open;
           if RecordCount > 0 then
             begin
              estadoc:= Fieldbyname('ESTADO').AsString;

              buscarcomprobante(Tp, Id);
              vmodificar:= true;
              if (estadoc= 'N') or (estadoc = 'C') then
                 begin
                 MessageDlg('No se puede Modificar, El Comprobante está Cerrado o Anulado',mtError,[mbOk],0);
                 BtnGrabar.Enabled := false;
                 BtnAnular.Enabled := false;
                 BtnRefrescar.Enabled := false;
                 BtnAgregar.Enabled := false;
                 btnReversar.Enabled := True;
                 BtnCerrar.Enabled := True;
                 PanelXS.Enabled := False;
                 bloquear;
                 end;
             end
           else
             begin
              MessageDlg('El comprobante no existe',mtError,[mbOk],0);
              BtnBuscar.SetFocus;
             end;
          end;

          _query.Close;
          _query.Free;
          _transaccion.Rollback;
          _transaccion.Free;
          if vmodificar then
          begin
           BtnModificarGrid.Enabled := False;
           BtnEliminar.Enabled := False;
          end
          else
          begin
           BtnModificarGrid.Enabled := True;
           BtnEliminar.Enabled := True;
          end;

end;

procedure TfrmComprobanteC.Inicializar;
begin
        if dmGeneral.IBTransaction1.InTransaction then
           dmGeneral.IBTransaction1.Commit;
        dmGeneral.IBTransaction1.StartTransaction;

        if IBTransaction1.InTransaction then
          IBTransaction1.Commit;
        IBTransaction1.StartTransaction;

        if IBTransaction2.InTransaction then
          IBTransaction2.Commit;
        IBTransaction2.StartTransaction;

        if IBTransaction3.InTransaction then
          IBTransaction3.Commit;
        IBTransaction3.StartTransaction;

        IBQTipoC.Open;
        IBQTipoC.Last;
        IBQTipoC.First;

{        if dmComprobante.dmGeneral.IBTransaction1.InTransaction then
           dmComprobante.dmGeneral.IBTransaction1.commit;
        dmComprobante.dmGeneral.IBTransaction1.StartTransaction;
        }
        IBQsetagencia.Open;
        IBQsetagencia.Last;
        IBQsetagencia.First;
        IBQsetauxiliar.Open;
        

        editdescripcion.Text := '';
        totaldebito := 0;
        totalcredito := 0;
        edittotaldiferencia.Value :=0;
        editanulacion.Text:='';
        BtnModificargrid.Enabled := false;
        BtnEliminar.Enabled := false;
        vmodificar := False;
        id_comprobante:= 0;
        id_agencia:= 0;
        vid_comprobante:= '';
        vtipo_comprobante := 0;
        vdescripcion:= '';
        anulacion:= '';
        vestadoc:= '';
        estadoc := '';
        vestadoa:= '';
        estadoa := '';
        desbloquear;
        edittotaldebito.Color := clMoneyGreen;
        edittotalcredito.Color := clMoneyGreen;
        edittotaldiferencia.Color := clMoneyGreen;        
        label8.Visible := false;
        editanulacion.Visible := false;
        BtnGrabar.Enabled := true;
        BtnGrabar.Caption := '&Grabar';
        BtnAnular.Enabled := true;
        BtnRefrescar.Enabled := true;
        Btncerrar.Enabled := true;
        btnReversar.Enabled := False;
        BtnAgregar.Enabled := True;
        PanelXS.Enabled := True;
        editcodigo.Text := '';
        EdDebito.Value := 0;
        EdCredito.Value := 0;
        Edtipoid.KeyValue := -1;
        EdNit.Text := '';
        EdTasa.Clear;
        EdMonto.Clear;
        Edtipoid.Enabled := False;
        EdNit.Enabled := False;
        EdTasa.Enabled := False;
        EdMonto.Enabled := False;
        NoComprobante.Caption := '';
        Label11.Caption := '';
        Label3.Caption := '';
        nombre := '';
        p_apellido := '';
        s_apellido := '';
        codigo := '';
        debito := 0;
        credito := 0;
        nomcuenta := '';
        vmonto := 0;
        vtasa := 0;
        tipoide := 0;
        cheque := '';
        detalle := '';
        idpersona := '';
        vAgencia := 1;
        dblcbtipo.DropDown;
        dblcbtipo.KeyValue := 1;
        dblcbtipo.SetFocus;
        CDSauxiliargrid.EmptyDataSet;
        txtNota.Text := '';
        edCheque.Text := '';

        IBQclaseoperacion.Close;
        IBQclaseoperacion.Open;
        IBQclaseoperacion.Last;

        cbClaseOperacion.KeyValue := '';
        edAgencia.KeyValue := Agencia;
end;

procedure TfrmComprobanteC.FormShow(Sender: TObject);
begin
        Inicializar;
        Panel5.Caption := Empresa + '   Nit   ' + Nit;
        enedicion := false;
end;

procedure TfrmComprobanteC.Report1InitDetailBandDataSet(Sender: TObject;
  DetailBand: TprBand; DataSet: TObject; const DataSetName: String);
begin
        if DataSetName = 'IBAuxiliar1' then begin
          with IBAuxiliar1 do begin
            Close;
            ParamByName('ID_IDENTIFICACION').AsInteger := IBAuxiliar.FieldByName('ID_IDENTIFICACION').AsInteger;
            ParamByName('ID_PERSONA').AsString := IBAuxiliar.FieldByName('ID_PERSONA').AsString;
            try
             Open;
            except
             raise;
            end;
          end;
        end;
end;

procedure TfrmComprobanteC.editcodigoExit(Sender: TObject);
var Cadena, informe:string;
begin
    Cadena := EditCODIGO.Text;
    while Pos(' ',Cadena) > 0 do
    Cadena[Pos(' ',Cadena)] := '0';
    Codigo := Cadena;
    if (codigo = '') then exit;
    if (codigo <> '') then begin
      nomcuenta := evaluarcodigo(codigo);
//      informe := evaluarinforme(id);
    end;
    PageControl1.ActivePageIndex := 0;
    if (LeftStr(Codigo,2) = '11') then
    begin
      cbClaseOperacion.Enabled := True;
      cbClaseOperacion.KeyValue := '';
    end
    else
    begin
      cbClaseOperacion.Enabled := False;
      cbClaseOperacion.KeyValue := '';
    end;
    txtNota.SetFocus;
end;

procedure TfrmComprobanteC.editcodigoEnter(Sender: TObject);
begin
        editcodigo.SelectAll;
end;

procedure TfrmComprobanteC.editcodigoKeyPress(Sender: TObject;
  var Key: Char);
begin
        EnterTabs(Key,Self);
end;

procedure TfrmComprobanteC.EdDebitoEnter(Sender: TObject);
begin
//        EdDebito.Value := debito;
        EdDebito.SelectAll;
end;

procedure TfrmComprobanteC.EdDebitoExit(Sender: TObject);
begin
        debito := EdDebito.Value;
//        if debito > 0 then BtnAgregar.SetFocus;
end;

procedure TfrmComprobanteC.EdCreditoEnter(Sender: TObject);
begin
//        EdCredito.Value := credito;
        EdCredito.SelectAll;
end;

procedure TfrmComprobanteC.EdCreditoExit(Sender: TObject);
begin
        credito := EdCredito.Value;
        if (debito <> 0) and (credito<>0) then
        begin
          MessageDlg('Ambos, debitos y creditos no pueden tener valor',mtError,[mbcancel],0);
          EdDebito.SetFocus;
          Exit;
        end;
        if (credito > 0) and (esbanco) then
        begin
            PageControl1.ActivePageIndex := 2;
            edCheque.SetFocus;
        end
        else
        //evaluarinforme(id);
        BtnAgregar.SetFocus;
end;

procedure TfrmComprobanteC.EdtipoidEnter(Sender: TObject);
begin
    Edtipoid.KeyValue := self.tipoide;
    Edtipoid.DropDown;
end;

procedure TfrmComprobanteC.EdtipoidExit(Sender: TObject);
begin
    tipoide := Edtipoid.KeyValue;
end;

procedure TfrmComprobanteC.EdtipoidKeyPress(Sender: TObject;
  var Key: Char);
begin
        if key= #13 then
          EdNit.SetFocus;
end;

procedure TfrmComprobanteC.EdNitEnter(Sender: TObject);
begin
        EdNit.SelectAll;
end;

procedure TfrmComprobanteC.EdNitExit(Sender: TObject);
var
 frmPersona:TfrmCreacionPersona;
begin
            with IBSQL2 do
              begin
               if Transaction.InTransaction then
                 Transaction.Commit;
               Transaction.StartTransaction;
               vid_persona := ednit.Text;
               Close;
               SQL.Clear;
               SQL.Add('select * from "gen$persona" where ID_IDENTIFICACION = :ID_IDENTIFICACION and ID_PERSONA = :ID_PERSONA');
               ParamByName('ID_IDENTIFICACION').AsInteger := Edtipoid.KeyValue;
               ParamByName('ID_PERSONA').AsString := EdNit.Text;
               try
                ExecQuery;
                if RecordCount > 0 then begin
                   Label3.Visible := True;
                   Label3.Caption := FieldByName('PRIMER_APELLIDO').AsString + ' ' +
                                     FieldByName('SEGUNDO_APELLIDO').AsString + ' ' +
                                     FieldByName('NOMBRE').AsString;
                   p_apellido := FieldByName('PRIMER_APELLIDO').AsString;
                   s_apellido := FieldByName('SEGUNDO_APELLIDO').AsString;
                   nombre := FieldByName('NOMBRE').AsString;
                end
                else
                  if MessageDlg('El Documento no Existe!, Desea Agregarlo',mtConfirmation,[mbyes,mbno],0) = mryes then
                  begin
                    frmPersona := TfrmCreacionPersona.Create(Self);
                    frmPersona.ShowModal;
                    EdNitexit(Sender);
                  end
               except
                  Transaction.Rollback;
                  raise;
               end;
              end;
end;

procedure TfrmComprobanteC.EdNitKeyPress(Sender: TObject; var Key: Char);
begin
    if key = #13 then
        if EdNit.Text <> '' then
         begin
           vid_persona := EdNit.Text;
           if EdMonto.Enabled then
             EdMonto.SetFocus
           else
             cbClaseOperacion.SetFocus;

           with IBQsetpersona do
            begin
              if Transaction.InTransaction then
                Transaction.Commit;
              Transaction.StartTransaction;
              ParamByName('ID_IDENTIFICACION').AsInteger := Edtipoid.KeyValue;
              ParamByName('ID_PERSONA').AsString := EdNit.Text;
              Open;
              Last;
              First;
              if RecordCount = 1 then
               begin
                 label3.Visible:= true;
                 label3.Caption := FieldByName('PRIMER_APELLIDO').AsString + ' '+
                                   FieldByName('SEGUNDO_APELLIDO').AsString + ' ' +
                                   FieldByName('NOMBRE').AsString;
               end
              else
               begin
                if MessageDlg('La Persona no existe, ¿Desea Crearla?',mtconfirmation,[mbYes,mbNo],0)= mryes then
                 begin
//                   frmCreacionPersona:= TfrmCreacionPersona.Create(self);
//                   frmcreacionpersona.Show;
                 end
                else
                   EdNit.SetFocus;
               end;
            end;
         end;
end;

procedure TfrmComprobanteC.EdTasaEnter(Sender: TObject);
begin
        EdTasa.SelectAll;
end;

procedure TfrmComprobanteC.EdTasaKeyPress(Sender: TObject; var Key: Char);
begin
       Numerico(sender,key);
       if key = #13 then
        begin
        if EdTasa.Text <> '' then
          begin
            tasa := strtofloat(EdTasa.Text);
            EdTasa.Value := tasa;
            cbClaseOperacion.SetFocus;
          end;
         end;
end;

procedure TfrmComprobanteC.EdMontoEnter(Sender: TObject);
begin
        EdMonto.SelectAll;
end;

procedure TfrmComprobanteC.EdMontoKeyPress(Sender: TObject; var Key: Char);
begin
       Numerico(sender,key);
       if key = #13 then
        begin
        if EdMonto.Text <> '' then
          begin
            monto := strtocurr(EdMonto.Text);
            EdMonto.Text := formatcurr('#,##0.00',monto);
            if EdTasa.Visible then
             EdTasa.SetFocus
            else
             cbClaseOperacion.SetFocus;
          end;
         end;
end;

function TfrmComprobanteC.Evaluarinforme(id : string) : string;
var
pidoid, pidotasa, pidotipoid, pidomonto: boolean;
begin
        with IBQuery1 do
        begin
         sql.Clear;
         Sql.Add('select "PIDOID", "PIDOMONTO", "PIDOTASA", "PIDOTIPOID" from "con$informes" where "con$informes"."ID" =:"ID"');
         parambyname('ID').AsString := id;
         Open;
         if (RecordCount > 0) then
         begin
         pidoid := inttoboolean(fieldbyname('PIDOID').AsInteger);
         pidotasa:= inttoboolean(fieldbyname('PIDOTASA').AsInteger);
         pidotipoid:= inttoboolean(fieldbyname('PIDOTIPOID').AsInteger);
         pidomonto:= inttoboolean(fieldbyname('PIDOMONTO').AsInteger);
         if pidotipoid then begin
          PageControl1.ActivePageIndex := 1;
          GrupoInforme.Enabled := True;
          IBQTiposIdentificacion.Open;
          IBQTiposIdentificacion.Last;
          Edtipoid.Enabled := True;
          Edtipoid.SetFocus;
         end;
         if pidoid then begin
          GrupoInforme.Enabled := True;
          EdNit.Enabled := true;
         end;
         if pidotasa then begin
          GrupoInforme.Enabled := True;
          EdTasa.Enabled := true;
//          EdTasa.SetFocus;
         end;
         if pidomonto then begin
          GrupoInforme.Enabled := True;
          EdMonto.Enabled := True;
//          EdMonto.SetFocus;
         end;
        end
        else
        begin
          cbClaseOperacion.SetFocus;
        end;
        id := '';
        end;
end;

function TfrmComprobanteC.gettipoide : integer;
begin
        result:= vtipoid;
end;

procedure TfrmComprobanteC.settipoide (nvalor:integer);
begin
        vtipoid:= nvalor;
        Edtipoid.KeyValue := vtipoid;
end;
function TfrmComprobanteC.getmonto : currency;
begin
        result:= vmonto;
end;

procedure TfrmComprobanteC.setmonto (nvalor:currency);
begin
        vmonto:= nvalor;
        EdMonto.Text := formatcurr('#,##0.00',vmonto);
end;

function TfrmComprobanteC.gettasa : single;
begin
        result:= vtasa;
end;

procedure TfrmComprobanteC.settasa (nvalor:single);
begin
        vtasa:= nvalor;
        EdTasa.Value := vtasa;
end;

function TfrmComprobanteC.getcodigo  : string;
begin
    result:= vcodigo;
end;

procedure TfrmComprobanteC.setcodigo (nvalor:string);
begin
    vcodigo:= nvalor;
    editcodigo.Text := vcodigo;
end;

function TfrmComprobanteC.Getdebito : currency;
begin
    result := vdebito;
end;

procedure TfrmComprobanteC.Setdebito(nvalor:currency);
begin
        vdebito := nValor;
        EdDebito.Value := vdebito;
end;

function TfrmComprobanteC.Getcredito :currency;
begin
        result:= vcredito;
end;

procedure TfrmComprobanteC.Setcredito(nvalor:currency);
begin
        vcredito := nvalor;
        EdCredito.Value := vcredito;
end;

function TfrmComprobanteC.getidpersona : string;
begin
        result:= vid_persona;
end;

procedure TfrmComprobanteC.setidpersona (nvalor:string);
begin
        vid_persona := nvalor;
        EdNit.Text := vid_persona;
end;

function TfrmComprobanteC.getestado : string;
begin
        result := vestado;
end;

procedure TfrmComprobanteC.setestado(nvalor:string);
begin
        vestado:= 'O';
end;

function TfrmComprobanteC.getnomcuenta : string;
begin
        result := vnomcuenta;
end;

procedure TfrmComprobanteC.setnomcuenta (nvalor: string);
begin
        vnomcuenta := nvalor;
        label11.Caption := vnomcuenta;
end;

procedure TfrmComprobanteC.EdDebitoKeyPress(Sender: TObject;
  var Key: Char);
begin
        EnterTabs(Key,Self);
end;

procedure TfrmComprobanteC.EdCreditoKeyPress(Sender: TObject;
  var Key: Char);
begin
        EnterTabs(Key,Self);
end;

procedure TfrmComprobanteC.prReport1InitDetailBandDataSet(Sender: TObject;
  DetailBand: TprBand; DataSet: TObject; const DataSetName: String);
begin
        if DataSetName = 'IBAuxiliar1' then begin
          with IBAuxiliar1 do begin
            Close;
            ParamByName('ID_IDENTIFICACION').AsInteger := IBAuxiliar.FieldByName('ID_IDENTIFICACION').AsInteger;
            ParamByName('ID_PERSONA').AsString := IBAuxiliar.FieldByName('ID_PERSONA').AsString;
            try
             Open;
            except
             raise;
            end;
          end;
        end;
end;

procedure TfrmComprobanteC.prReport1PrintComplete(Sender: TObject);
begin
      vimpreso := true;
      with IBQuery2 do
       begin
         Close;
         sql.Clear;
         sql.Add('update "con$comprobante" set ');
         sql.Add('"con$comprobante"."IMPRESO" = :"IMPRESO"');
         sql.Add(' where ');
         sql.Add('"con$comprobante"."TIPO_COMPROBANTE = :"TIPO_COMPROBANTE" and');
         sql.Add('"con$comprobante"."ID_COMPROBANTE" = :"ID_COMPROBANTE"');

         ParamByName('TIPO_COMPROBANTE').AsInteger := id_tipocomprobante;
         ParamByName('ID_COMPROBANTE').AsInteger := StrToInt(vid_comprobante);
         ParamByName('IMPRESO').AsInteger  := ord(vimpreso);
         ExecSQL;
         Transaction.Commit;
       end;
end;

procedure TfrmComprobanteC.dblcbtipoKeyPress(Sender: TObject;
  var Key: Char);
begin
       EnterTabs(Key,Self);
end;

procedure TfrmComprobanteC.dblcbtipoEnter(Sender: TObject);
begin
        dblcbtipo.DropDown;
end;

procedure TfrmComprobanteC.CmdPUCClick(Sender: TObject);
var
   frmPUC: TfrmMantenimientopuc;
begin
        frmPUC := TfrmMantenimientopuc.Create(self);
        frmPUC.CodigoSeleccionado := editcodigo.Text;
        frmPUC.btnSeleccionar.Enabled := true;
        if ( frmPUC.ShowModal = mrOK ) then
        begin
            frmPUC.btnSeleccionar.Enabled := false;
            editcodigo.Text := frmPUC.CodigoSeleccionado;
            dmGeneral.IBTransaction1.Commit;
            dmGeneral.IBTransaction1.StartTransaction;
           // IBTransaction1.StartTransaction;
           // IBTransaction2.StartTransaction;
           // IBTransaction3.StartTransaction;
            IBQTipoC.Open;
            IBQTipoC.Last;
            IBQTipoC.First;
            dblcbtipo.KeyValue := id_tipocomprobante;
            PageControl1.ActivePageIndex := 0;
            editcodigoExit(editCodigo);

        end;
        frmPUC.Free;
end;

procedure TfrmComprobanteC.btnRecuperarPlantillaClick(Sender: TObject);
var
  frmPlantilla: TfrmPlantilla;
  auxiliar:integer;
begin
    frmPlantilla := TfrmPlantilla.Create(self);
    if ( frmPlantilla.ShowModal = mrOK ) then
    begin
        with frmPlantilla.Query do
          begin
                 while not Eof do
                 begin
                  enedicion := true;
                  CDSauxiliargrid.Insert;
                  CDSauxiliargridCODIGO.Value := Fieldbyname('PLDE_CODIGO').AsString;
                  with IBQuery1 do
                  begin
                      Close;
                      SQL.Clear;
                      SQL.Add('select "NOMBRE" from "con$puc" where "con$puc"."CODIGO" =:"CODIGO"');
                      ParamByName('CODIGO').AsString := frmPlantilla.Query.FieldByName('PLDE_CODIGO').AsString;
                      Open;
                      nomcuenta := FieldByName('NOMBRE').AsString;
                  end;
                  CDSauxiliargridCUENTA.Value := nomcuenta;
                  CDSauxiliargridDEBITO.Value := fieldbyname('PLDE_DEBITO').AsCurrency;
                  CDSauxiliargridCREDITO.Value := fieldbyname('PLDE_CREDITO').AsCurrency;
                  CDSauxiliargridID_IDENTIFICACION.Value := FieldByName('PLDE_ID_IDENTIFICACION').AsInteger;
                  CDSauxiliargridID_PERSONA.Value := FieldByName('PLDE_ID_PERSONA').AsString;
                  CDSauxiliargridMONTO.Value := FieldByName('PLDE_MONTO').AsCurrency;
                  CDSauxiliargridTASA.Value := FieldByName('PLDE_TASA').AsFloat;
                  CDSauxiliargridESTADO.Value := 'O';
                  CDSauxiliargrid.Post;
                  enedicion := false;
                  next;
                 end;
                 actualizaxsauxiliar;
          end;
    end;
end;

procedure TfrmComprobanteC.btnGuardarPlantillaClick(Sender: TObject);
var
Arecord : Plist;
I:integer;
plantillanombre:string;
fecha:string;
plantillaID: Integer;
transaction : TIBTransaction;
transaction2: TIBTransaction;
ibsql : TIBQuery;
ibsql2: TIBSQL;
begin
         transaction := TIBTransaction.Create(nil);
         transaction.DefaultDatabase := dmGeneral.IBDatabase1;
         transaction.StartTransaction;
         transaction2 := TIBTransaction.Create(nil);
         transaction2.DefaultDatabase := dmGeneral.IBDatabase1;
// Obtener Consecutivo
         ibsql2 := TIBSQL.Create(nil);
         ibsql2.Transaction := transaction2;
         plantillaID := ObtenerConsecutivoPlantilla(ibsql2);
         transaction2.Free;
         ibsql2.Free;
// Fin Obtener Consecutivo
         ibsql := TIBQuery.Create(nil);
         ibsql.Transaction := transaction;
         DateTimeToString(fecha,'yyyyMMddHHmm',now);
         plantillanombre := InputBox('Nombre para la Plantilla','Digite un Nombre Para la Plantilla','Plantilla_'+fecha);
         ibsql.SQL.Clear;
         ibsql.SQL.Add('insert into "con$plantilla" (PLAN_ID,PLAN_DESCRIPCION) values (');
         ibsql.SQL.Add(':PLAN_ID,:PLAN_DESCRIPCION)');
         ibsql.ParamByName('PLAN_ID').AsInteger := plantillaID;
         ibsql.ParamByName('PLAN_DESCRIPCION').AsString := plantillanombre;
         ibsql.ExecSQL;
         if CDSauxiliargrid.RecordCount > 0 then
         while not CDSauxiliargrid.Eof do
         begin
            ibsql.Close;
            ibsql.SQL.Clear;
            ibsql.SQL.Add('insert into "con$plantilladetalle" values (');
            ibsql.SQL.Add(':PLAN_ID,:PLDE_ORDEN,:PLDE_CODIGO,:PLDE_DEBITO,:PLDE_CREDITO, :PLDE_ID_IDENTIFICACION, :PLDE_ID_PERSONA, :PLDE_NUMERO_CUENTA, :PLDE_ID_COLOCACION, :PLDE_MONTO, :PLDE_TASA)');
            ibsql.ParamByName('PLAN_ID').AsInteger := plantillaID;
            ibsql.ParamByName('PLDE_ORDEN').AsInteger := CDSauxiliargrid.RecNo;
            ibsql.ParamByName('PLDE_CODIGO').AsString := CDSauxiliargridCODIGO.Value;
            ibsql.ParamByName('PLDE_DEBITO').AsCurrency := CDSauxiliargridDEBITO.Value;
            ibsql.ParamByName('PLDE_CREDITO').AsCurrency := CDSauxiliargridCREDITO.Value;
            ibsql.ParamByName('PLDE_ID_IDENTIFICACION').AsInteger := CDSauxiliargridID_IDENTIFICACION.Value;
            ibsql.ParamByName('PLDE_ID_PERSONA').AsString := CDSauxiliargridID_PERSONA.Value;
            ibsql.ParamByName('PLDE_NUMERO_CUENTA').AsString := CDSauxiliargridNUMERO_CUENTA.Value;
            ibsql.ParamByName('PLDE_ID_COLOCACION').AsString := CDSauxiliargridID_COLOCACION.Value;
            ibsql.ParamByName('PLDE_MONTO').AsCurrency := CDSauxiliargridMONTO.Value;
            ibsql.ParamByName('PLDE_TASA').AsFloat := CDSauxiliargridTASA.Value;
            try
               ibsql.ExecSQL;
            except
               raise;
            end;
          end;
         transaction.Commit;
         transaction.Free;
         ibsql.Free;

end;

procedure TfrmComprobanteC.dblcbtipoExit(Sender: TObject);
begin
        id_tipocomprobante := dblcbtipo.KeyValue;
end;

procedure TfrmComprobanteC.BitBtn1Click(Sender: TObject);
var
anulacion : string;
Tabla : String;
begin
        with IBAuxiliar do begin
         if  Transaction.InTransaction then
            Transaction.Commit;
         Transaction.StartTransaction;
         empleado;

         Close;
         ParamByName('ID_COMPROBANTE').AsInteger := StrToInt(NoComprobante.Caption);
         ParamByName('TIPO_COMPROBANTE').AsInteger := dblcbtipo.KeyValue;
         try
          Open;
          prReport1.Variables.ByName['EMPRESA'].AsString := Empresa;
          prReport1.Variables.ByName['NIT'].AsString := Nit;
          prReport1.Variables.ByName['FechaHoy'].AsDateTime := fFechaActual;
          if prReport1.PrepareReport then
            prReport1.PreviewPreparedReport(True);
         except
          MessageDlg('Error al generar el reporte',mtError,[mbcancel],0);
         end;
        end;end;

procedure TfrmComprobanteC.CDSauxiliargridAfterScroll(DataSet: TDataSet);
begin
          if not enedicion then
          begin
           codigo := DataSet.FieldByName('CODIGO').AsString;
           Label11.Caption := DataSet.FieldByName('CUENTA').AsString;
           nomcuenta := DataSet.FieldByName('CUENTA').AsString;
           Label11.Visible := True;
           debito := DataSet.FieldByName('DEBITO').AsCurrency;
           credito := DataSet.FieldByName('CREDITO').AsCurrency;
           tipoide := DataSet.FieldByName('ID_IDENTIFICACION').AsInteger;
           idpersona := DataSet.FieldByName('ID_PERSONA').AsString;
           nombre := DataSet.FieldByName('NOMBRE').AsString;
           p_apellido := DataSet.FieldByName('PRIMER_APELLIDO').AsString;
           s_apellido := DataSet.FieldByName('SEGUNDO_APELLIDO').AsString;
           Label3.Caption := nombre + ' ' + p_apellido + ' ' + s_apellido;
           monto := DataSet.FieldByName('MONTO').AsCurrency;
           tasa := DataSet.FieldByName('TASA').AsFloat;
           estado := DataSet.FieldByName('ESTADO').AsString;
           detalle := DataSet.FieldByName('DETALLE').AsString;
           cheque := DataSet.FieldByName('CHEQUE').AsString;
           vAgencia := DataSet.FieldByName('ID_AGENCIA').AsInteger;

           BtnModificargrid.Enabled := true;
           BtnEliminar.Enabled := true;
          end;

end;

procedure TfrmComprobanteC.txtNotaKeyPress(Sender: TObject; var Key: Char);
begin
        EnterTabs(Key, Self);
end;

procedure TfrmComprobanteC.txtNotaExit(Sender: TObject);
var
  informe : String;
begin
        if (txtNota.Text = '') then txtNota.Text := editdescripcion.Text;
        detalle := txtNota.Text;
        informe := evaluarinforme(id);
end;

procedure TfrmComprobanteC.edChequeExit(Sender: TObject);
begin
        cheque := edCheque.Text;
        BtnAgregar.SetFocus;
end;

procedure TfrmComprobanteC.edChequeKeyPress(Sender: TObject;
  var Key: Char);
begin
        EnterTabs(Key, Self);
end;

procedure TfrmComprobanteC.DBauxiliargridCellClick(Column: TColumn);
begin
          if not enedicion then
          begin
           codigo := CDSauxiliargrid.FieldByName('CODIGO').AsString;
           Label11.Caption := CDSauxiliargrid.FieldByName('CUENTA').AsString;
           nomcuenta := CDSauxiliargrid.FieldByName('CUENTA').AsString;
           Label11.Visible := True;
           debito := CDSauxiliargrid.FieldByName('DEBITO').AsCurrency;
           credito := CDSauxiliargrid.FieldByName('CREDITO').AsCurrency;
           tipoide := CDSauxiliargrid.FieldByName('ID_IDENTIFICACION').AsInteger;
           idpersona := CDSauxiliargrid.FieldByName('ID_PERSONA').AsString;
           nombre := CDSauxiliargrid.FieldByName('NOMBRE').AsString + ' ' + CDSauxiliargrid.FieldByName('PRIMER_APELLIDO').AsString + ' ' + CDSauxiliargrid.FieldByName('SEGUNDO_APELLIDO').AsString;
           monto := CDSauxiliargrid.FieldByName('MONTO').AsCurrency;
           tasa := CDSauxiliargrid.FieldByName('TASA').AsFloat;
           estado := CDSauxiliargrid.FieldByName('ESTADO').AsString;
           detalle := CDSauxiliargrid.FieldByName('DETALLE').AsString;
           cheque := CDSauxiliargrid.FieldByName('CHEQUE').AsString;
           vAgencia := CDSauxiliargridID_AGENCIA.Value;

           BtnModificargrid.Enabled := true;
           BtnEliminar.Enabled := true;
          end;

end;

procedure TfrmComprobanteC.DBauxiliargridTitleClick(Column: TColumn);
begin
       case Column.Index of
       0: Cdsauxiliargrid.IndexName := 'CDSauxiliargridIndex1';
       1: Cdsauxiliargrid.IndexName := 'CDSauxiliargridIndex2';
       2: Cdsauxiliargrid.IndexName := 'CDSauxiliargridIndex3';
       3: Cdsauxiliargrid.IndexName := 'CDSauxiliargridIndex4';
       5: Cdsauxiliargrid.IndexName := 'CDSauxiliargridIndex5';
       6: Cdsauxiliargrid.IndexName := 'CDSauxiliargridIndex6';
       7: Cdsauxiliargrid.IndexName := 'CDSauxiliargridIndex7';
       8: Cdsauxiliargrid.IndexName := 'CDSauxiliargridIndex8';
       end;
end;

procedure TfrmComprobanteC.btnChequeClick(Sender: TObject);
var
  Valor: Currency;
  Anyo: Word;
  Mes: Word;
  Dia: Word;
  Portador: String;
  ValorEnLetras: String;
  NumeroALetra : TNLetra;
  Cheque, SEP: String;
begin
// Imprimir cheque
        NumeroALetra := TNLetra.Create(self);
// Leer Nota Contable
        try
        CDSauxiliargrid.First;
          while not CDSauxiliargrid.Eof do
          begin
              if (CDSauxiliargrid.FieldByName('ESBANCO').AsBoolean ) then
              begin
                Valor := CDSauxiliargrid.FieldByName('CREDITO').AsCurrency;
                Cheque := CDSauxiliargrid.FieldByName('CHEQUE').AsString;
                Portador := CDSauxiliargrid.FieldByName('NOMBRE').AsString + ' ' + CDSauxiliargrid.FieldByName('PRIMER_APELLIDO').AsString + ' ' + CDSauxiliargrid.FieldByName('SEGUNDO_APELLIDO').AsString;
                break;
              end;
              CDSauxiliargrid.Next;
          end;
          NumeroALetra.Numero := StrToInt(CurrToStr(Valor));
          ValorEnLetras := Trim(UpperCase(NumeroALetra.Letras));
          if RightStr(ValorEnLetras, 6) = 'MILLON' then
          begin
              SEP := ' DE';
          end;
          if RightStr(ValorEnLetras, 8) = 'MILLONES' then
          begin
              SEP := ' DE';
          end;
          ValorEnLetras := ValorEnLetras + '****';
          DecodeDate(EdFecha.Date, Anyo, Mes, Dia);

          CDSauxiliargrid.First;
          if (Valor > 0) then
          begin
                  txtCheque.LoadTemplateFromFile(ExtractFilePath( Application.ExeName ) +'ReportesCon/Cheque.prt',false);
                  txtCheque.Variables.ByName['VALOR'].AsString := FormatFloat('#,##0.00',Valor);
                  txtCheque.Variables.ByName['ANYO'].AsInteger := Anyo;
                  txtCheque.Variables.ByName['MES'].AsInteger := Mes;
                  txtCheque.Variables.ByName['DIA'].AsInteger := Dia;
                  txtCheque.Variables.ByName['CHEQUE'].AsString := Cheque;
                  txtCheque.Variables.ByName['COMPROBANTE'].AsString := NoComprobante.Caption;
                  txtCheque.Variables.ByName['PORTADOR'].AsString := Portador;
                  txtCheque.Variables.ByName['VALORENLETRAS'].AsString := ValorEnLetras;
                  //txtCheque.Variables.ByName['CHEQUE'].AsString := Cheque;
                  if txtCheque.PrepareReport then
                     txtCheque.PreviewPreparedReport(true);
          end
          else
            ShowMessage('El comprobante no tiene salida de bancos');
        except
        end;

end;

function TfrmComprobanteC.DiaCerrado:Boolean;
begin
      {
      if IBSQL1.Transaction.InTransaction then
      begin
          IBSQL1.Transaction.Commit;
      end;
      IBSQL1.Transaction.StartTransaction;
      IBSQL1.Close;
      IBSQL1.SQL.Clear;
      IBSQL1.SQL.Add('SELECT COUNT(*) AS TOTAL FROM "con$comprobante" WHERE ESTADO = :ESTADO AND FECHADIA = :FECHADIA');
      IBSQL1.ParamByName('ESTADO').AsString := 'C';
      IBSQL1.ParamByName('FECHADIA').AsDate := edFecha.Date;
      IBSQL1.ExecQuery;
      if (IBSQL1.FieldByName('TOTAL').AsInteger > 0) then
        result := true
      else
        result := false;
      IBSQL1.Transaction.Commit;
      }
      result := false;
end;

procedure TfrmComprobanteC.edFechaExit(Sender: TObject);
begin
        if (DiaCerrado) then
        begin
            ShowMessage('Advertencia! Dia Ya Cerrado');
        end;
end;

procedure TfrmComprobanteC.btnReversarClick(Sender: TObject);
var
  localTransaction: TIBTransaction;
  IBQuery1 : TIBQuery;
  IBQuery2 : TIBQuery;

  l_id_comprobante : Integer;
  l_id_agencia : Integer;
  l_id_tipocomprobante : Integer;
begin

if (estadoc= 'C') then
   if  MessageDlg('Seguro de Reversar el Comprobante',mtConfirmation,[mbYes,mbNo],0) = mrYes then
   begin
   IBQuery1 := TIBQuery.Create(self);
   IBQuery2 := TIBQuery.Create(self);
   localTransaction := TIBTransaction.Create(self);
   localTransaction.DefaultDatabase := dmGeneral.IBDatabase1;
   localTransaction.StartTransaction;
   IBQuery1.Transaction := localTransaction;
   IBQuery2.Transaction := localTransaction;
   with IBQuery1 do
   begin
    sql.Clear;
    Sql.Add('update "con$comprobante" set ');
    Sql.Add('"con$comprobante"."ESTADO" = :"estado"');
    sql.Add('where "con$comprobante"."TIPO_COMPROBANTE" = :"TIPO_COMPROBANTE" and "con$comprobante"."ID_COMPROBANTE" = :"ID_COMPROBANTE"');
    ParamByName('TIPO_COMPROBANTE').AsInteger := id_tipocomprobante;
    parambyname('ID_COMPROBANTE').AsInteger := id_comprobante;
    parambyname('ESTADO').AsString := 'O';
    ExecSQL;
   end;
  with IBQuery2 do
   begin
    sql.Clear;
    Sql.Add('update "con$auxiliar" set ');
    Sql.Add('"con$auxiliar"."ESTADOAUX" = :"ESTADOAUX"');
    sql.Add('where "con$auxiliar"."TIPO_COMPROBANTE" = :"TIPO_COMPROBANTE" and "con$auxiliar"."ID_COMPROBANTE" = :"ID_COMPROBANTE"');
    ParamByName('TIPO_COMPROBANTE').AsInteger := id_tipocomprobante;
    parambyname('ID_COMPROBANTE').AsInteger := id_comprobante;
    ParamByName('ESTADOAUX').AsString := 'O';
    ExecSQL;
   end;
    localTransaction.Commit;
    l_id_comprobante := strtoint(vid_comprobante);
    l_id_tipocomprobante := dblcbtipo.KeyValue;
    l_id_agencia := agencia;
    Btnlimpiar.Click;
    buscarcomp(l_id_tipocomprobante,l_id_comprobante);
    id_tipocomprobante := l_id_tipocomprobante;
    id_agencia := l_id_agencia;
    id_comprobante := l_id_comprobante;
  end;
end;

procedure TfrmComprobanteC.EdAgenciaExit(Sender: TObject);
begin
        if EdAgencia.KeyValue < 1 then EdAgencia.KeyValue := 1;
end;

procedure TfrmComprobanteC.btnLimpiarClaseOperacionClick(Sender: TObject);
begin
        cbClaseOperacion.KeyValue := '';
end;

procedure TfrmComprobanteC.cbClaseOperacionKeyPress(Sender: TObject;
  var Key: Char);
begin
        EnterTabs(Key, Self);
end;

procedure TfrmComprobanteC.EdAgenciaKeyPress(Sender: TObject;
  var Key: Char);
begin
        EnterTabs(Key, Self);
end;

end.
