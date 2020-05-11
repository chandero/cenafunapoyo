// ************************************************************************ //
// The types declared in this file were generated from data read from the
// WSDL File described below:
// WSDL     : wsdl_conexus.wsdl
//  >Import : wsdl_conexus.wsdl:0
//  >Import : wsdl_conexus.wsdl:1
//  >Import : wsdl_conexus.wsdl:2
//  >Import : wsdl_conexus.wsdl:3
// (2019/12/10 9:57:23 - - $Rev: 10138 $)
// ************************************************************************ //

unit wsdl_conexus;

interface

uses InvokeRegistry, SOAPHTTPClient, Types, XSBuiltIns, Classes, Dialogs;

const
  IS_OPTN = $0001;
  IS_UNBD = $0002;
  IS_NLBL = $0004;
  IS_REF  = $0080;


type

  // ************************************************************************ //
  // The following types, referred to in the WSDL document are not being represented
  // in this file. They are either aliases[@] of other types represented or were referred
  // to but never[!] declared in the document. The types from the latter category
  // typically map to predefined/known XML or Borland types; however, they could also 
  // indicate incorrect WSDL documents that failed to declare or import a schema type.
  // ************************************************************************ //
  // !:string          - "http://www.w3.org/2001/XMLSchema"[Gbl]
  // !:int             - "http://www.w3.org/2001/XMLSchema"[Gbl]
  // !:boolean         - "http://www.w3.org/2001/XMLSchema"[Gbl]
  // !:dateTime        - "http://www.w3.org/2001/XMLSchema"[Gbl]
  // !:decimal         - "http://www.w3.org/2001/XMLSchema"[Gbl]

  AutorizacionType     = class;                 { "http://schemas.datacontract.org/2004/07/WCFServiceData"[GblCplx] }
  CompradorType        = class;                 { "http://schemas.datacontract.org/2004/07/WCFServiceData"[GblCplx] }
  EmisorType           = class;                 { "http://schemas.datacontract.org/2004/07/WCFServiceData"[GblCplx] }
  EncabezadoType       = class;                 { "http://schemas.datacontract.org/2004/07/WCFServiceData"[GblCplx] }
  InfoMonetarioType    = class;                 { "http://schemas.datacontract.org/2004/07/WCFServiceData"[GblCplx] }
  ReferenciaType       = class;                 { "http://schemas.datacontract.org/2004/07/WCFServiceData"[GblCplx] }
  SoftwareSeguridadType = class;                { "http://schemas.datacontract.org/2004/07/WCFServiceData"[GblCplx] }
  DocumentType         = class;                 { "http://schemas.datacontract.org/2004/07/WCFServiceData"[GblCplx] }
  AdicionalesType      = class;                 { "http://schemas.datacontract.org/2004/07/WCFServiceData"[GblCplx] }
  DetalleType          = class;                 { "http://schemas.datacontract.org/2004/07/WCFServiceData"[GblCplx] }
  ImpuestoDetalleType  = class;                 { "http://schemas.datacontract.org/2004/07/WCFServiceData"[GblCplx] }
  ImpuestoType         = class;                 { "http://schemas.datacontract.org/2004/07/WCFServiceData"[GblCplx] }
  AnticipoType         = class;                 { "http://schemas.datacontract.org/2004/07/WCFServiceData"[GblCplx] }
  CargosType           = class;                 { "http://schemas.datacontract.org/2004/07/WCFServiceData"[GblCplx] }
  DetalleNotaType      = class;                 { "http://schemas.datacontract.org/2004/07/WCFServiceData"[GblCplx] }
  FormaPagoType        = class;                 { "http://schemas.datacontract.org/2004/07/WCFServiceData"[GblCplx] }
  NotaType             = class;                 { "http://schemas.datacontract.org/2004/07/WCFServiceData"[GblCplx] }
  ResponseType         = class;                 { "http://schemas.datacontract.org/2004/07/WCFServiceData"[GblCplx] }
  ProcesoType          = class;                 { "http://schemas.datacontract.org/2004/07/WCFServiceData"[GblCplx] }
  DocumentType2        = class;                 { "http://schemas.datacontract.org/2004/07/WCFServiceData"[GblElm] }
  AutorizacionType2    = class;                 { "http://schemas.datacontract.org/2004/07/WCFServiceData"[GblElm] }
  CompradorType2       = class;                 { "http://schemas.datacontract.org/2004/07/WCFServiceData"[GblElm] }
  EmisorType2          = class;                 { "http://schemas.datacontract.org/2004/07/WCFServiceData"[GblElm] }
  EncabezadoType2      = class;                 { "http://schemas.datacontract.org/2004/07/WCFServiceData"[GblElm] }
  InfoMonetarioType2   = class;                 { "http://schemas.datacontract.org/2004/07/WCFServiceData"[GblElm] }
  AdicionalesType2     = class;                 { "http://schemas.datacontract.org/2004/07/WCFServiceData"[GblElm] }
  DetalleType2         = class;                 { "http://schemas.datacontract.org/2004/07/WCFServiceData"[GblElm] }
  ImpuestoDetalleType2 = class;                 { "http://schemas.datacontract.org/2004/07/WCFServiceData"[GblElm] }
  ImpuestoType2        = class;                 { "http://schemas.datacontract.org/2004/07/WCFServiceData"[GblElm] }
  ReferenciaType2      = class;                 { "http://schemas.datacontract.org/2004/07/WCFServiceData"[GblElm] }
  SoftwareSeguridadType2 = class;               { "http://schemas.datacontract.org/2004/07/WCFServiceData"[GblElm] }
  AnticipoType2        = class;                 { "http://schemas.datacontract.org/2004/07/WCFServiceData"[GblElm] }
  CargosType2          = class;                 { "http://schemas.datacontract.org/2004/07/WCFServiceData"[GblElm] }
  DetalleNotaType2     = class;                 { "http://schemas.datacontract.org/2004/07/WCFServiceData"[GblElm] }
  FormaPagoType2       = class;                 { "http://schemas.datacontract.org/2004/07/WCFServiceData"[GblElm] }
  NotaType2            = class;                 { "http://schemas.datacontract.org/2004/07/WCFServiceData"[GblElm] }
  ResponseType2        = class;                 { "http://schemas.datacontract.org/2004/07/WCFServiceData"[GblElm] }
  ProcesoType2         = class;                 { "http://schemas.datacontract.org/2004/07/WCFServiceData"[GblElm] }
  DetalleCargosType    = class;                 { "http://schemas.datacontract.org/2004/07/"[GblCplx] }
  DetalleCargosType2   = class;                 { "http://schemas.datacontract.org/2004/07/"[GblElm] }



  // ************************************************************************ //
  // XML       : AutorizacionType, global, <complexType>
  // Namespace : http://schemas.datacontract.org/2004/07/WCFServiceData
  // ************************************************************************ //
  AutorizacionType = class(TRemotable)
  private
    FAutFechaFinal: WideString;
    FAutFechaFinal_Specified: boolean;
    FAutFechaInicio: WideString;
    FAutFechaInicio_Specified: boolean;
    FAutNumAutorizacion: WideString;
    FAutNumAutorizacion_Specified: boolean;
    FAutPrefijo: WideString;
    FAutPrefijo_Specified: boolean;
    FAutSecuenciaFinal: WideString;
    FAutSecuenciaFinal_Specified: boolean;
    FAutSecuenciaInicio: WideString;
    FAutSecuenciaInicio_Specified: boolean;
    procedure SetAutFechaFinal(Index: Integer; const AWideString: WideString);
    function  AutFechaFinal_Specified(Index: Integer): boolean;
    procedure SetAutFechaInicio(Index: Integer; const AWideString: WideString);
    function  AutFechaInicio_Specified(Index: Integer): boolean;
    procedure SetAutNumAutorizacion(Index: Integer; const AWideString: WideString);
    function  AutNumAutorizacion_Specified(Index: Integer): boolean;
    procedure SetAutPrefijo(Index: Integer; const AWideString: WideString);
    function  AutPrefijo_Specified(Index: Integer): boolean;
    procedure SetAutSecuenciaFinal(Index: Integer; const AWideString: WideString);
    function  AutSecuenciaFinal_Specified(Index: Integer): boolean;
    procedure SetAutSecuenciaInicio(Index: Integer; const AWideString: WideString);
    function  AutSecuenciaInicio_Specified(Index: Integer): boolean;
  published
    property AutFechaFinal:      WideString  Index (IS_OPTN or IS_NLBL) read FAutFechaFinal write SetAutFechaFinal stored AutFechaFinal_Specified;
    property AutFechaInicio:     WideString  Index (IS_OPTN or IS_NLBL) read FAutFechaInicio write SetAutFechaInicio stored AutFechaInicio_Specified;
    property AutNumAutorizacion: WideString  Index (IS_OPTN or IS_NLBL) read FAutNumAutorizacion write SetAutNumAutorizacion stored AutNumAutorizacion_Specified;
    property AutPrefijo:         WideString  Index (IS_OPTN or IS_NLBL) read FAutPrefijo write SetAutPrefijo stored AutPrefijo_Specified;
    property AutSecuenciaFinal:  WideString  Index (IS_OPTN or IS_NLBL) read FAutSecuenciaFinal write SetAutSecuenciaFinal stored AutSecuenciaFinal_Specified;
    property AutSecuenciaInicio: WideString  Index (IS_OPTN or IS_NLBL) read FAutSecuenciaInicio write SetAutSecuenciaInicio stored AutSecuenciaInicio_Specified;
  end;



  // ************************************************************************ //
  // XML       : CompradorType, global, <complexType>
  // Namespace : http://schemas.datacontract.org/2004/07/WCFServiceData
  // ************************************************************************ //
  CompradorType = class(TRemotable)
  private
    FCompradorApellidos: WideString;
    FCompradorApellidos_Specified: boolean;
    FCompradorCiudad: WideString;
    FCompradorCiudad_Specified: boolean;
    FCompradorCodCiudad: WideString;
    FCompradorCodCiudad_Specified: boolean;
    FCompradorCodDepartamento: WideString;
    FCompradorCodDepartamento_Specified: boolean;
    FCompradorCodPostal: WideString;
    FCompradorCodPostal_Specified: boolean;
    FCompradorCorreoElectronico: WideString;
    FCompradorCorreoElectronico_Specified: boolean;
    FCompradorDVIdentificacion: WideString;
    FCompradorDVIdentificacion_Specified: boolean;
    FCompradorDepartamento: WideString;
    FCompradorDepartamento_Specified: boolean;
    FCompradorDireccion: WideString;
    FCompradorDireccion_Specified: boolean;
    FCompradorEnviarCorreo: Boolean;
    FCompradorEnviarCorreo_Specified: boolean;
    FCompradorIdentificacion: WideString;
    FCompradorIdentificacion_Specified: boolean;
    FCompradorImpuesto: WideString;
    FCompradorImpuesto_Specified: boolean;
    FCompradorNombreCompleto: WideString;
    FCompradorNombreCompleto_Specified: boolean;
    FCompradorNombrePais: WideString;
    FCompradorNombrePais_Specified: boolean;
    FCompradorNotaCont: WideString;
    FCompradorNotaCont_Specified: boolean;
    FCompradorPais: WideString;
    FCompradorPais_Specified: boolean;
    FCompradorPrimerNombre: WideString;
    FCompradorPrimerNombre_Specified: boolean;
    FCompradorRazonSocial: WideString;
    FCompradorRazonSocial_Specified: boolean;
    FCompradorRespFiscal: WideString;
    FCompradorRespFiscal_Specified: boolean;
    FCompradorSector: WideString;
    FCompradorSector_Specified: boolean;
    FCompradorSegundoNombre: WideString;
    FCompradorSegundoNombre_Specified: boolean;
    FCompradorTelefonoCont: WideString;
    FCompradorTelefonoCont_Specified: boolean;
    FCompradorTipoIdentificacion: WideString;
    FCompradorTipoIdentificacion_Specified: boolean;
    FCompradorTipoPersona: WideString;
    FCompradorTipoPersona_Specified: boolean;
    FCompradorTipoRegimen: WideString;
    FCompradorTipoRegimen_Specified: boolean;
    procedure SetCompradorApellidos(Index: Integer; const AWideString: WideString);
    function  CompradorApellidos_Specified(Index: Integer): boolean;
    procedure SetCompradorCiudad(Index: Integer; const AWideString: WideString);
    function  CompradorCiudad_Specified(Index: Integer): boolean;
    procedure SetCompradorCodCiudad(Index: Integer; const AWideString: WideString);
    function  CompradorCodCiudad_Specified(Index: Integer): boolean;
    procedure SetCompradorCodDepartamento(Index: Integer; const AWideString: WideString);
    function  CompradorCodDepartamento_Specified(Index: Integer): boolean;
    procedure SetCompradorCodPostal(Index: Integer; const AWideString: WideString);
    function  CompradorCodPostal_Specified(Index: Integer): boolean;
    procedure SetCompradorCorreoElectronico(Index: Integer; const AWideString: WideString);
    function  CompradorCorreoElectronico_Specified(Index: Integer): boolean;
    procedure SetCompradorDVIdentificacion(Index: Integer; const AWideString: WideString);
    function  CompradorDVIdentificacion_Specified(Index: Integer): boolean;
    procedure SetCompradorDepartamento(Index: Integer; const AWideString: WideString);
    function  CompradorDepartamento_Specified(Index: Integer): boolean;
    procedure SetCompradorDireccion(Index: Integer; const AWideString: WideString);
    function  CompradorDireccion_Specified(Index: Integer): boolean;
    procedure SetCompradorEnviarCorreo(Index: Integer; const ABoolean: Boolean);
    function  CompradorEnviarCorreo_Specified(Index: Integer): boolean;
    procedure SetCompradorIdentificacion(Index: Integer; const AWideString: WideString);
    function  CompradorIdentificacion_Specified(Index: Integer): boolean;
    procedure SetCompradorImpuesto(Index: Integer; const AWideString: WideString);
    function  CompradorImpuesto_Specified(Index: Integer): boolean;
    procedure SetCompradorNombreCompleto(Index: Integer; const AWideString: WideString);
    function  CompradorNombreCompleto_Specified(Index: Integer): boolean;
    procedure SetCompradorNombrePais(Index: Integer; const AWideString: WideString);
    function  CompradorNombrePais_Specified(Index: Integer): boolean;
    procedure SetCompradorNotaCont(Index: Integer; const AWideString: WideString);
    function  CompradorNotaCont_Specified(Index: Integer): boolean;
    procedure SetCompradorPais(Index: Integer; const AWideString: WideString);
    function  CompradorPais_Specified(Index: Integer): boolean;
    procedure SetCompradorPrimerNombre(Index: Integer; const AWideString: WideString);
    function  CompradorPrimerNombre_Specified(Index: Integer): boolean;
    procedure SetCompradorRazonSocial(Index: Integer; const AWideString: WideString);
    function  CompradorRazonSocial_Specified(Index: Integer): boolean;
    procedure SetCompradorRespFiscal(Index: Integer; const AWideString: WideString);
    function  CompradorRespFiscal_Specified(Index: Integer): boolean;
    procedure SetCompradorSector(Index: Integer; const AWideString: WideString);
    function  CompradorSector_Specified(Index: Integer): boolean;
    procedure SetCompradorSegundoNombre(Index: Integer; const AWideString: WideString);
    function  CompradorSegundoNombre_Specified(Index: Integer): boolean;
    procedure SetCompradorTelefonoCont(Index: Integer; const AWideString: WideString);
    function  CompradorTelefonoCont_Specified(Index: Integer): boolean;
    procedure SetCompradorTipoIdentificacion(Index: Integer; const AWideString: WideString);
    function  CompradorTipoIdentificacion_Specified(Index: Integer): boolean;
    procedure SetCompradorTipoPersona(Index: Integer; const AWideString: WideString);
    function  CompradorTipoPersona_Specified(Index: Integer): boolean;
    procedure SetCompradorTipoRegimen(Index: Integer; const AWideString: WideString);
    function  CompradorTipoRegimen_Specified(Index: Integer): boolean;
  published
    property CompradorApellidos:          WideString  Index (IS_OPTN or IS_NLBL) read FCompradorApellidos write SetCompradorApellidos stored CompradorApellidos_Specified;
    property CompradorCiudad:             WideString  Index (IS_OPTN or IS_NLBL) read FCompradorCiudad write SetCompradorCiudad stored CompradorCiudad_Specified;
    property CompradorCodCiudad:          WideString  Index (IS_OPTN or IS_NLBL) read FCompradorCodCiudad write SetCompradorCodCiudad stored CompradorCodCiudad_Specified;
    property CompradorCodDepartamento:    WideString  Index (IS_OPTN or IS_NLBL) read FCompradorCodDepartamento write SetCompradorCodDepartamento stored CompradorCodDepartamento_Specified;
    property CompradorCodPostal:          WideString  Index (IS_OPTN or IS_NLBL) read FCompradorCodPostal write SetCompradorCodPostal stored CompradorCodPostal_Specified;
    property CompradorCorreoElectronico:  WideString  Index (IS_OPTN or IS_NLBL) read FCompradorCorreoElectronico write SetCompradorCorreoElectronico stored CompradorCorreoElectronico_Specified;
    property CompradorDVIdentificacion:   WideString  Index (IS_OPTN or IS_NLBL) read FCompradorDVIdentificacion write SetCompradorDVIdentificacion stored CompradorDVIdentificacion_Specified;
    property CompradorDepartamento:       WideString  Index (IS_OPTN or IS_NLBL) read FCompradorDepartamento write SetCompradorDepartamento stored CompradorDepartamento_Specified;
    property CompradorDireccion:          WideString  Index (IS_OPTN or IS_NLBL) read FCompradorDireccion write SetCompradorDireccion stored CompradorDireccion_Specified;
    property CompradorEnviarCorreo:       Boolean     Index (IS_OPTN) read FCompradorEnviarCorreo write SetCompradorEnviarCorreo stored CompradorEnviarCorreo_Specified;
    property CompradorIdentificacion:     WideString  Index (IS_OPTN or IS_NLBL) read FCompradorIdentificacion write SetCompradorIdentificacion stored CompradorIdentificacion_Specified;
    property CompradorImpuesto:           WideString  Index (IS_OPTN or IS_NLBL) read FCompradorImpuesto write SetCompradorImpuesto stored CompradorImpuesto_Specified;
    property CompradorNombreCompleto:     WideString  Index (IS_OPTN or IS_NLBL) read FCompradorNombreCompleto write SetCompradorNombreCompleto stored CompradorNombreCompleto_Specified;
    property CompradorNombrePais:         WideString  Index (IS_OPTN or IS_NLBL) read FCompradorNombrePais write SetCompradorNombrePais stored CompradorNombrePais_Specified;
    property CompradorNotaCont:           WideString  Index (IS_OPTN or IS_NLBL) read FCompradorNotaCont write SetCompradorNotaCont stored CompradorNotaCont_Specified;
    property CompradorPais:               WideString  Index (IS_OPTN or IS_NLBL) read FCompradorPais write SetCompradorPais stored CompradorPais_Specified;
    property CompradorPrimerNombre:       WideString  Index (IS_OPTN or IS_NLBL) read FCompradorPrimerNombre write SetCompradorPrimerNombre stored CompradorPrimerNombre_Specified;
    property CompradorRazonSocial:        WideString  Index (IS_OPTN or IS_NLBL) read FCompradorRazonSocial write SetCompradorRazonSocial stored CompradorRazonSocial_Specified;
    property CompradorRespFiscal:         WideString  Index (IS_OPTN or IS_NLBL) read FCompradorRespFiscal write SetCompradorRespFiscal stored CompradorRespFiscal_Specified;
    property CompradorSector:             WideString  Index (IS_OPTN or IS_NLBL) read FCompradorSector write SetCompradorSector stored CompradorSector_Specified;
    property CompradorSegundoNombre:      WideString  Index (IS_OPTN or IS_NLBL) read FCompradorSegundoNombre write SetCompradorSegundoNombre stored CompradorSegundoNombre_Specified;
    property CompradorTelefonoCont:       WideString  Index (IS_OPTN or IS_NLBL) read FCompradorTelefonoCont write SetCompradorTelefonoCont stored CompradorTelefonoCont_Specified;
    property CompradorTipoIdentificacion: WideString  Index (IS_OPTN or IS_NLBL) read FCompradorTipoIdentificacion write SetCompradorTipoIdentificacion stored CompradorTipoIdentificacion_Specified;
    property CompradorTipoPersona:        WideString  Index (IS_OPTN or IS_NLBL) read FCompradorTipoPersona write SetCompradorTipoPersona stored CompradorTipoPersona_Specified;
    property CompradorTipoRegimen:        WideString  Index (IS_OPTN or IS_NLBL) read FCompradorTipoRegimen write SetCompradorTipoRegimen stored CompradorTipoRegimen_Specified;
  end;



  // ************************************************************************ //
  // XML       : EmisorType, global, <complexType>
  // Namespace : http://schemas.datacontract.org/2004/07/WCFServiceData
  // ************************************************************************ //
  EmisorType = class(TRemotable)
  private
    FEmiDVIdentificacion: WideString;
    FEmiDVIdentificacion_Specified: boolean;
    FEmiIdentificacion: WideString;
    FEmiIdentificacion_Specified: boolean;
    FEmiTipoIdentificacion: Integer;
    FEmiTipoIdentificacion_Specified: boolean;
    FEmiTipoPersona: Integer;
    FEmiTipoPersona_Specified: boolean;
    procedure SetEmiDVIdentificacion(Index: Integer; const AWideString: WideString);
    function  EmiDVIdentificacion_Specified(Index: Integer): boolean;
    procedure SetEmiIdentificacion(Index: Integer; const AWideString: WideString);
    function  EmiIdentificacion_Specified(Index: Integer): boolean;
    procedure SetEmiTipoIdentificacion(Index: Integer; const AInteger: Integer);
    function  EmiTipoIdentificacion_Specified(Index: Integer): boolean;
    procedure SetEmiTipoPersona(Index: Integer; const AInteger: Integer);
    function  EmiTipoPersona_Specified(Index: Integer): boolean;
  published
    property EmiDVIdentificacion:   WideString  Index (IS_OPTN or IS_NLBL) read FEmiDVIdentificacion write SetEmiDVIdentificacion stored EmiDVIdentificacion_Specified;
    property EmiIdentificacion:     WideString  Index (IS_OPTN or IS_NLBL) read FEmiIdentificacion write SetEmiIdentificacion stored EmiIdentificacion_Specified;
    property EmiTipoIdentificacion: Integer     Index (IS_OPTN) read FEmiTipoIdentificacion write SetEmiTipoIdentificacion stored EmiTipoIdentificacion_Specified;
    property EmiTipoPersona:        Integer     Index (IS_OPTN) read FEmiTipoPersona write SetEmiTipoPersona stored EmiTipoPersona_Specified;
  end;



  // ************************************************************************ //
  // XML       : EncabezadoType, global, <complexType>
  // Namespace : http://schemas.datacontract.org/2004/07/WCFServiceData
  // ************************************************************************ //
  EncabezadoType = class(TRemotable)
  private
    FFacCodOperacion: WideString;
    FFacCodOperacion_Specified: boolean;
    FFacFechaContingencia: WideString;
    FFacFechaContingencia_Specified: boolean;
    FFacFechaFin: WideString;
    FFacFechaFin_Specified: boolean;
    FFacFechaHoraFactura: WideString;
    FFacFechaHoraFactura_Specified: boolean;
    FFacFechaIni: WideString;
    FFacFechaIni_Specified: boolean;
    FFacRefContingencia: WideString;
    FFacRefContingencia_Specified: boolean;
    FFacTipoFactura: WideString;
    FFacTipoFactura_Specified: boolean;
    FFacTipoRefContingencia: WideString;
    FFacTipoRefContingencia_Specified: boolean;
    procedure SetFacCodOperacion(Index: Integer; const AWideString: WideString);
    function  FacCodOperacion_Specified(Index: Integer): boolean;
    procedure SetFacFechaContingencia(Index: Integer; const AWideString: WideString);
    function  FacFechaContingencia_Specified(Index: Integer): boolean;
    procedure SetFacFechaFin(Index: Integer; const AWideString: WideString);
    function  FacFechaFin_Specified(Index: Integer): boolean;
    procedure SetFacFechaHoraFactura(Index: Integer; const AWideString: WideString);
    function  FacFechaHoraFactura_Specified(Index: Integer): boolean;
    procedure SetFacFechaIni(Index: Integer; const AWideString: WideString);
    function  FacFechaIni_Specified(Index: Integer): boolean;
    procedure SetFacRefContingencia(Index: Integer; const AWideString: WideString);
    function  FacRefContingencia_Specified(Index: Integer): boolean;
    procedure SetFacTipoFactura(Index: Integer; const AWideString: WideString);
    function  FacTipoFactura_Specified(Index: Integer): boolean;
    procedure SetFacTipoRefContingencia(Index: Integer; const AWideString: WideString);
    function  FacTipoRefContingencia_Specified(Index: Integer): boolean;
  published
    property FacCodOperacion:        WideString  Index (IS_OPTN or IS_NLBL) read FFacCodOperacion write SetFacCodOperacion stored FacCodOperacion_Specified;
    property FacFechaContingencia:   WideString  Index (IS_OPTN or IS_NLBL) read FFacFechaContingencia write SetFacFechaContingencia stored FacFechaContingencia_Specified;
    property FacFechaFin:            WideString  Index (IS_OPTN or IS_NLBL) read FFacFechaFin write SetFacFechaFin stored FacFechaFin_Specified;
    property FacFechaHoraFactura:    WideString  Index (IS_OPTN or IS_NLBL) read FFacFechaHoraFactura write SetFacFechaHoraFactura stored FacFechaHoraFactura_Specified;
    property FacFechaIni:            WideString  Index (IS_OPTN or IS_NLBL) read FFacFechaIni write SetFacFechaIni stored FacFechaIni_Specified;
    property FacRefContingencia:     WideString  Index (IS_OPTN or IS_NLBL) read FFacRefContingencia write SetFacRefContingencia stored FacRefContingencia_Specified;
    property FacTipoFactura:         WideString  Index (IS_OPTN or IS_NLBL) read FFacTipoFactura write SetFacTipoFactura stored FacTipoFactura_Specified;
    property FacTipoRefContingencia: WideString  Index (IS_OPTN or IS_NLBL) read FFacTipoRefContingencia write SetFacTipoRefContingencia stored FacTipoRefContingencia_Specified;
  end;



  // ************************************************************************ //
  // XML       : InfoMonetarioType, global, <complexType>
  // Namespace : http://schemas.datacontract.org/2004/07/WCFServiceData
  // ************************************************************************ //
  InfoMonetarioType = class(TRemotable)
  private
    FFacCodMoneda: WideString;
    FFacCodMoneda_Specified: boolean;
    FFacTotalAnticipos: WideString;
    FFacTotalAnticipos_Specified: boolean;
    FFacTotalBaseImponible: WideString;
    FFacTotalBaseImponible_Specified: boolean;
    FFacTotalBrutoMasImp: WideString;
    FFacTotalBrutoMasImp_Specified: boolean;
    FFacTotalCargos: WideString;
    FFacTotalCargos_Specified: boolean;
    FFacTotalDescuentos: WideString;
    FFacTotalDescuentos_Specified: boolean;
    FFacTotalFactura: WideString;
    FFacTotalFactura_Specified: boolean;
    FFacTotalImporteBruto: WideString;
    FFacTotalImporteBruto_Specified: boolean;
    procedure SetFacCodMoneda(Index: Integer; const AWideString: WideString);
    function  FacCodMoneda_Specified(Index: Integer): boolean;
    procedure SetFacTotalAnticipos(Index: Integer; const AWideString: WideString);
    function  FacTotalAnticipos_Specified(Index: Integer): boolean;
    procedure SetFacTotalBaseImponible(Index: Integer; const AWideString: WideString);
    function  FacTotalBaseImponible_Specified(Index: Integer): boolean;
    procedure SetFacTotalBrutoMasImp(Index: Integer; const AWideString: WideString);
    function  FacTotalBrutoMasImp_Specified(Index: Integer): boolean;
    procedure SetFacTotalCargos(Index: Integer; const AWideString: WideString);
    function  FacTotalCargos_Specified(Index: Integer): boolean;
    procedure SetFacTotalDescuentos(Index: Integer; const AWideString: WideString);
    function  FacTotalDescuentos_Specified(Index: Integer): boolean;
    procedure SetFacTotalFactura(Index: Integer; const AWideString: WideString);
    function  FacTotalFactura_Specified(Index: Integer): boolean;
    procedure SetFacTotalImporteBruto(Index: Integer; const AWideString: WideString);
    function  FacTotalImporteBruto_Specified(Index: Integer): boolean;
  published
    property FacCodMoneda:          WideString  Index (IS_OPTN or IS_NLBL) read FFacCodMoneda write SetFacCodMoneda stored FacCodMoneda_Specified;
    property FacTotalAnticipos:     WideString  Index (IS_OPTN or IS_NLBL) read FFacTotalAnticipos write SetFacTotalAnticipos stored FacTotalAnticipos_Specified;
    property FacTotalBaseImponible: WideString  Index (IS_OPTN or IS_NLBL) read FFacTotalBaseImponible write SetFacTotalBaseImponible stored FacTotalBaseImponible_Specified;
    property FacTotalBrutoMasImp:   WideString  Index (IS_OPTN or IS_NLBL) read FFacTotalBrutoMasImp write SetFacTotalBrutoMasImp stored FacTotalBrutoMasImp_Specified;
    property FacTotalCargos:        WideString  Index (IS_OPTN or IS_NLBL) read FFacTotalCargos write SetFacTotalCargos stored FacTotalCargos_Specified;
    property FacTotalDescuentos:    WideString  Index (IS_OPTN or IS_NLBL) read FFacTotalDescuentos write SetFacTotalDescuentos stored FacTotalDescuentos_Specified;
    property FacTotalFactura:       WideString  Index (IS_OPTN or IS_NLBL) read FFacTotalFactura write SetFacTotalFactura stored FacTotalFactura_Specified;
    property FacTotalImporteBruto:  WideString  Index (IS_OPTN or IS_NLBL) read FFacTotalImporteBruto write SetFacTotalImporteBruto stored FacTotalImporteBruto_Specified;
  end;

  ArrayOfAdicionalesType = array of AdicionalesType;   { "http://schemas.datacontract.org/2004/07/WCFServiceData"[GblCplx] }
  ArrayOfDetalleType = array of DetalleType;    { "http://schemas.datacontract.org/2004/07/WCFServiceData"[GblCplx] }
  ArrayOfDetalleCargosType = array of DetalleCargosType;   { "http://schemas.datacontract.org/2004/07/"[GblCplx] }
  ArrayOfImpuestoDetalleType = array of ImpuestoDetalleType;   { "http://schemas.datacontract.org/2004/07/WCFServiceData"[GblCplx] }
  ArrayOfImpuestoType = array of ImpuestoType;   { "http://schemas.datacontract.org/2004/07/WCFServiceData"[GblCplx] }


  // ************************************************************************ //
  // XML       : ReferenciaType, global, <complexType>
  // Namespace : http://schemas.datacontract.org/2004/07/WCFServiceData
  // ************************************************************************ //
  ReferenciaType = class(TRemotable)
  private
    FConceptoNota: WideString;
    FConceptoNota_Specified: boolean;
    FCufeFactura: WideString;
    FCufeFactura_Specified: boolean;
    FDescNatCorreccion: WideString;
    FDescNatCorreccion_Specified: boolean;
    FFechaFactura: WideString;
    FFechaFactura_Specified: boolean;
    FNumeroFactura: WideString;
    FNumeroFactura_Specified: boolean;
    procedure SetConceptoNota(Index: Integer; const AWideString: WideString);
    function  ConceptoNota_Specified(Index: Integer): boolean;
    procedure SetCufeFactura(Index: Integer; const AWideString: WideString);
    function  CufeFactura_Specified(Index: Integer): boolean;
    procedure SetDescNatCorreccion(Index: Integer; const AWideString: WideString);
    function  DescNatCorreccion_Specified(Index: Integer): boolean;
    procedure SetFechaFactura(Index: Integer; const AWideString: WideString);
    function  FechaFactura_Specified(Index: Integer): boolean;
    procedure SetNumeroFactura(Index: Integer; const AWideString: WideString);
    function  NumeroFactura_Specified(Index: Integer): boolean;
  published
    property ConceptoNota:      WideString  Index (IS_OPTN or IS_NLBL) read FConceptoNota write SetConceptoNota stored ConceptoNota_Specified;
    property CufeFactura:       WideString  Index (IS_OPTN or IS_NLBL) read FCufeFactura write SetCufeFactura stored CufeFactura_Specified;
    property DescNatCorreccion: WideString  Index (IS_OPTN or IS_NLBL) read FDescNatCorreccion write SetDescNatCorreccion stored DescNatCorreccion_Specified;
    property FechaFactura:      WideString  Index (IS_OPTN or IS_NLBL) read FFechaFactura write SetFechaFactura stored FechaFactura_Specified;
    property NumeroFactura:     WideString  Index (IS_OPTN or IS_NLBL) read FNumeroFactura write SetNumeroFactura stored NumeroFactura_Specified;
  end;



  // ************************************************************************ //
  // XML       : SoftwareSeguridadType, global, <complexType>
  // Namespace : http://schemas.datacontract.org/2004/07/WCFServiceData
  // ************************************************************************ //
  SoftwareSeguridadType = class(TRemotable)
  private
    FClaveTecnica: WideString;
    FClaveTecnica_Specified: boolean;
    FCodigoErp: WideString;
    FCodigoErp_Specified: boolean;
    FGuidEmpresa: WideString;
    FGuidEmpresa_Specified: boolean;
    FGuidOrigen: WideString;
    FGuidOrigen_Specified: boolean;
    FHashSeguridad: WideString;
    FHashSeguridad_Specified: boolean;
    FNumeroDocumento: WideString;
    FNumeroDocumento_Specified: boolean;
    FTipoDocumento: WideString;
    FTipoDocumento_Specified: boolean;
    procedure SetClaveTecnica(Index: Integer; const AWideString: WideString);
    function  ClaveTecnica_Specified(Index: Integer): boolean;
    procedure SetCodigoErp(Index: Integer; const AWideString: WideString);
    function  CodigoErp_Specified(Index: Integer): boolean;
    procedure SetGuidEmpresa(Index: Integer; const AWideString: WideString);
    function  GuidEmpresa_Specified(Index: Integer): boolean;
    procedure SetGuidOrigen(Index: Integer; const AWideString: WideString);
    function  GuidOrigen_Specified(Index: Integer): boolean;
    procedure SetHashSeguridad(Index: Integer; const AWideString: WideString);
    function  HashSeguridad_Specified(Index: Integer): boolean;
    procedure SetNumeroDocumento(Index: Integer; const AWideString: WideString);
    function  NumeroDocumento_Specified(Index: Integer): boolean;
    procedure SetTipoDocumento(Index: Integer; const AWideString: WideString);
    function  TipoDocumento_Specified(Index: Integer): boolean;
  published
    property ClaveTecnica:    WideString  Index (IS_OPTN or IS_NLBL) read FClaveTecnica write SetClaveTecnica stored ClaveTecnica_Specified;
    property CodigoErp:       WideString  Index (IS_OPTN or IS_NLBL) read FCodigoErp write SetCodigoErp stored CodigoErp_Specified;
    property GuidEmpresa:     WideString  Index (IS_OPTN or IS_NLBL) read FGuidEmpresa write SetGuidEmpresa stored GuidEmpresa_Specified;
    property GuidOrigen:      WideString  Index (IS_OPTN or IS_NLBL) read FGuidOrigen write SetGuidOrigen stored GuidOrigen_Specified;
    property HashSeguridad:   WideString  Index (IS_OPTN or IS_NLBL) read FHashSeguridad write SetHashSeguridad stored HashSeguridad_Specified;
    property NumeroDocumento: WideString  Index (IS_OPTN or IS_NLBL) read FNumeroDocumento write SetNumeroDocumento stored NumeroDocumento_Specified;
    property TipoDocumento:   WideString  Index (IS_OPTN or IS_NLBL) read FTipoDocumento write SetTipoDocumento stored TipoDocumento_Specified;
  end;

  ArrayOfAnticipoType = array of AnticipoType;   { "http://schemas.datacontract.org/2004/07/WCFServiceData"[GblCplx] }
  ArrayOfCargosType = array of CargosType;      { "http://schemas.datacontract.org/2004/07/WCFServiceData"[GblCplx] }
  ArrayOfDetalleNotaType = array of DetalleNotaType;   { "http://schemas.datacontract.org/2004/07/WCFServiceData"[GblCplx] }
  ArrayOfFormaPagoType = array of FormaPagoType;   { "http://schemas.datacontract.org/2004/07/WCFServiceData"[GblCplx] }
  ArrayOfNotaType = array of NotaType;          { "http://schemas.datacontract.org/2004/07/WCFServiceData"[GblCplx] }


  // ************************************************************************ //
  // XML       : DocumentType, global, <complexType>
  // Namespace : http://schemas.datacontract.org/2004/07/WCFServiceData
  // ************************************************************************ //
  DocumentType = class(TRemotable)
  private
    FAutorizacionFactura: AutorizacionType;
    FAutorizacionFactura_Specified: boolean;
    FCompradorFactura: CompradorType;
    FCompradorFactura_Specified: boolean;
    FEmisorData: EmisorType;
    FEmisorData_Specified: boolean;
    FEncabezadoData: EncabezadoType;
    FEncabezadoData_Specified: boolean;
    FInfoMonetarioData: InfoMonetarioType;
    FInfoMonetarioData_Specified: boolean;
    FLsAdicionales: ArrayOfAdicionalesType;
    FLsAdicionales_Specified: boolean;
    FLsDetalle: ArrayOfDetalleType;
    FLsDetalle_Specified: boolean;
    FLsDetalleCargos: ArrayOfDetalleCargosType;
    FLsDetalleCargos_Specified: boolean;
    FLsDetalleImpuesto: ArrayOfImpuestoDetalleType;
    FLsDetalleImpuesto_Specified: boolean;
    FLsImpuestos: ArrayOfImpuestoType;
    FLsImpuestos_Specified: boolean;
    FReferenciaFactura: ReferenciaType;
    FReferenciaFactura_Specified: boolean;
    FSoftwareSeguridad: SoftwareSeguridadType;
    FSoftwareSeguridad_Specified: boolean;
    FlsAnticipos: ArrayOfAnticipoType;
    FlsAnticipos_Specified: boolean;
    FlsCargos: ArrayOfCargosType;
    FlsCargos_Specified: boolean;
    FlsDetalleNotas: ArrayOfDetalleNotaType;
    FlsDetalleNotas_Specified: boolean;
    FlsFormaPago: ArrayOfFormaPagoType;
    FlsFormaPago_Specified: boolean;
    FlsNotas: ArrayOfNotaType;
    FlsNotas_Specified: boolean;
    procedure SetAutorizacionFactura(Index: Integer; const AAutorizacionType: AutorizacionType);
    function  AutorizacionFactura_Specified(Index: Integer): boolean;
    procedure SetCompradorFactura(Index: Integer; const ACompradorType: CompradorType);
    function  CompradorFactura_Specified(Index: Integer): boolean;
    procedure SetEmisorData(Index: Integer; const AEmisorType: EmisorType);
    function  EmisorData_Specified(Index: Integer): boolean;
    procedure SetEncabezadoData(Index: Integer; const AEncabezadoType: EncabezadoType);
    function  EncabezadoData_Specified(Index: Integer): boolean;
    procedure SetInfoMonetarioData(Index: Integer; const AInfoMonetarioType: InfoMonetarioType);
    function  InfoMonetarioData_Specified(Index: Integer): boolean;
    procedure SetLsAdicionales(Index: Integer; const AArrayOfAdicionalesType: ArrayOfAdicionalesType);
    function  LsAdicionales_Specified(Index: Integer): boolean;
    procedure SetLsDetalle(Index: Integer; const AArrayOfDetalleType: ArrayOfDetalleType);
    function  LsDetalle_Specified(Index: Integer): boolean;
    procedure SetLsDetalleCargos(Index: Integer; const AArrayOfDetalleCargosType: ArrayOfDetalleCargosType);
    function  LsDetalleCargos_Specified(Index: Integer): boolean;
    procedure SetLsDetalleImpuesto(Index: Integer; const AArrayOfImpuestoDetalleType: ArrayOfImpuestoDetalleType);
    function  LsDetalleImpuesto_Specified(Index: Integer): boolean;
    procedure SetLsImpuestos(Index: Integer; const AArrayOfImpuestoType: ArrayOfImpuestoType);
    function  LsImpuestos_Specified(Index: Integer): boolean;
    procedure SetReferenciaFactura(Index: Integer; const AReferenciaType: ReferenciaType);
    function  ReferenciaFactura_Specified(Index: Integer): boolean;
    procedure SetSoftwareSeguridad(Index: Integer; const ASoftwareSeguridadType: SoftwareSeguridadType);
    function  SoftwareSeguridad_Specified(Index: Integer): boolean;
    procedure SetlsAnticipos(Index: Integer; const AArrayOfAnticipoType: ArrayOfAnticipoType);
    function  lsAnticipos_Specified(Index: Integer): boolean;
    procedure SetlsCargos(Index: Integer; const AArrayOfCargosType: ArrayOfCargosType);
    function  lsCargos_Specified(Index: Integer): boolean;
    procedure SetlsDetalleNotas(Index: Integer; const AArrayOfDetalleNotaType: ArrayOfDetalleNotaType);
    function  lsDetalleNotas_Specified(Index: Integer): boolean;
    procedure SetlsFormaPago(Index: Integer; const AArrayOfFormaPagoType: ArrayOfFormaPagoType);
    function  lsFormaPago_Specified(Index: Integer): boolean;
    procedure SetlsNotas(Index: Integer; const AArrayOfNotaType: ArrayOfNotaType);
    function  lsNotas_Specified(Index: Integer): boolean;
  public
    destructor Destroy; override;
  published
    property AutorizacionFactura: AutorizacionType            Index (IS_OPTN or IS_NLBL) read FAutorizacionFactura write SetAutorizacionFactura stored AutorizacionFactura_Specified;
    property CompradorFactura:    CompradorType               Index (IS_OPTN or IS_NLBL) read FCompradorFactura write SetCompradorFactura stored CompradorFactura_Specified;
    property EmisorData:          EmisorType                  Index (IS_OPTN or IS_NLBL) read FEmisorData write SetEmisorData stored EmisorData_Specified;
    property EncabezadoData:      EncabezadoType              Index (IS_OPTN or IS_NLBL) read FEncabezadoData write SetEncabezadoData stored EncabezadoData_Specified;
    property InfoMonetarioData:   InfoMonetarioType           Index (IS_OPTN or IS_NLBL) read FInfoMonetarioData write SetInfoMonetarioData stored InfoMonetarioData_Specified;
    property LsAdicionales:       ArrayOfAdicionalesType      Index (IS_OPTN or IS_NLBL) read FLsAdicionales write SetLsAdicionales stored LsAdicionales_Specified;
    property LsDetalle:           ArrayOfDetalleType          Index (IS_OPTN or IS_NLBL) read FLsDetalle write SetLsDetalle stored LsDetalle_Specified;
    property LsDetalleCargos:     ArrayOfDetalleCargosType    Index (IS_OPTN or IS_NLBL) read FLsDetalleCargos write SetLsDetalleCargos stored LsDetalleCargos_Specified;
    property LsDetalleImpuesto:   ArrayOfImpuestoDetalleType  Index (IS_OPTN or IS_NLBL) read FLsDetalleImpuesto write SetLsDetalleImpuesto stored LsDetalleImpuesto_Specified;
    property LsImpuestos:         ArrayOfImpuestoType         Index (IS_OPTN or IS_NLBL) read FLsImpuestos write SetLsImpuestos stored LsImpuestos_Specified;
    property ReferenciaFactura:   ReferenciaType              Index (IS_OPTN or IS_NLBL) read FReferenciaFactura write SetReferenciaFactura stored ReferenciaFactura_Specified;
    property SoftwareSeguridad:   SoftwareSeguridadType       Index (IS_OPTN or IS_NLBL) read FSoftwareSeguridad write SetSoftwareSeguridad stored SoftwareSeguridad_Specified;
    property lsAnticipos:         ArrayOfAnticipoType         Index (IS_OPTN or IS_NLBL) read FlsAnticipos write SetlsAnticipos stored lsAnticipos_Specified;
    property lsCargos:            ArrayOfCargosType           Index (IS_OPTN or IS_NLBL) read FlsCargos write SetlsCargos stored lsCargos_Specified;
    property lsDetalleNotas:      ArrayOfDetalleNotaType      Index (IS_OPTN or IS_NLBL) read FlsDetalleNotas write SetlsDetalleNotas stored lsDetalleNotas_Specified;
    property lsFormaPago:         ArrayOfFormaPagoType        Index (IS_OPTN or IS_NLBL) read FlsFormaPago write SetlsFormaPago stored lsFormaPago_Specified;
    property lsNotas:             ArrayOfNotaType             Index (IS_OPTN or IS_NLBL) read FlsNotas write SetlsNotas stored lsNotas_Specified;
  end;



  // ************************************************************************ //
  // XML       : AdicionalesType, global, <complexType>
  // Namespace : http://schemas.datacontract.org/2004/07/WCFServiceData
  // ************************************************************************ //
  AdicionalesType = class(TRemotable)
  private
    FSecuencia: Integer;
    FSecuencia_Specified: boolean;
    FValorAtributo: WideString;
    FValorAtributo_Specified: boolean;
    procedure SetSecuencia(Index: Integer; const AInteger: Integer);
    function  Secuencia_Specified(Index: Integer): boolean;
    procedure SetValorAtributo(Index: Integer; const AWideString: WideString);
    function  ValorAtributo_Specified(Index: Integer): boolean;
  published
    property Secuencia:     Integer     Index (IS_OPTN) read FSecuencia write SetSecuencia stored Secuencia_Specified;
    property ValorAtributo: WideString  Index (IS_OPTN or IS_NLBL) read FValorAtributo write SetValorAtributo stored ValorAtributo_Specified;
  end;



  // ************************************************************************ //
  // XML       : DetalleType, global, <complexType>
  // Namespace : http://schemas.datacontract.org/2004/07/WCFServiceData
  // ************************************************************************ //
  DetalleType = class(TRemotable)
  private
    FCantidad: WideString;
    FCantidad_Specified: boolean;
    FCodificacion: WideString;
    FCodificacion_Specified: boolean;
    FCodigo: WideString;
    FCodigo_Specified: boolean;
    FCodigoEstandar: WideString;
    FCodigoEstandar_Specified: boolean;
    FDescripcion: WideString;
    FDescripcion_Specified: boolean;
    FDetFacConsecutivo: Integer;
    FDetFacConsecutivo_Specified: boolean;
    FMarca: WideString;
    FMarca_Specified: boolean;
    FModelo: WideString;
    FModelo_Specified: boolean;
    FPrecioSinImpuestos: WideString;
    FPrecioSinImpuestos_Specified: boolean;
    FPrecioTotal: WideString;
    FPrecioTotal_Specified: boolean;
    FPrecioUnitario: WideString;
    FPrecioUnitario_Specified: boolean;
    FTama_oPaquete: WideString;
    FTama_oPaquete_Specified: boolean;
    FUnidadMedida: WideString;
    FUnidadMedida_Specified: boolean;
    FVencimiento: TXSDateTime;
    FVencimiento_Specified: boolean;
    procedure SetCantidad(Index: Integer; const AWideString: WideString);
    function  Cantidad_Specified(Index: Integer): boolean;
    procedure SetCodificacion(Index: Integer; const AWideString: WideString);
    function  Codificacion_Specified(Index: Integer): boolean;
    procedure SetCodigo(Index: Integer; const AWideString: WideString);
    function  Codigo_Specified(Index: Integer): boolean;
    procedure SetCodigoEstandar(Index: Integer; const AWideString: WideString);
    function  CodigoEstandar_Specified(Index: Integer): boolean;
    procedure SetDescripcion(Index: Integer; const AWideString: WideString);
    function  Descripcion_Specified(Index: Integer): boolean;
    procedure SetDetFacConsecutivo(Index: Integer; const AInteger: Integer);
    function  DetFacConsecutivo_Specified(Index: Integer): boolean;
    procedure SetMarca(Index: Integer; const AWideString: WideString);
    function  Marca_Specified(Index: Integer): boolean;
    procedure SetModelo(Index: Integer; const AWideString: WideString);
    function  Modelo_Specified(Index: Integer): boolean;
    procedure SetPrecioSinImpuestos(Index: Integer; const AWideString: WideString);
    function  PrecioSinImpuestos_Specified(Index: Integer): boolean;
    procedure SetPrecioTotal(Index: Integer; const AWideString: WideString);
    function  PrecioTotal_Specified(Index: Integer): boolean;
    procedure SetPrecioUnitario(Index: Integer; const AWideString: WideString);
    function  PrecioUnitario_Specified(Index: Integer): boolean;
    procedure SetTama_oPaquete(Index: Integer; const AWideString: WideString);
    function  Tama_oPaquete_Specified(Index: Integer): boolean;
    procedure SetUnidadMedida(Index: Integer; const AWideString: WideString);
    function  UnidadMedida_Specified(Index: Integer): boolean;
    procedure SetVencimiento(Index: Integer; const ATXSDateTime: TXSDateTime);
    function  Vencimiento_Specified(Index: Integer): boolean;
  public
    destructor Destroy; override;
  published
    property Cantidad:           WideString   Index (IS_OPTN or IS_NLBL) read FCantidad write SetCantidad stored Cantidad_Specified;
    property Codificacion:       WideString   Index (IS_OPTN or IS_NLBL) read FCodificacion write SetCodificacion stored Codificacion_Specified;
    property Codigo:             WideString   Index (IS_OPTN or IS_NLBL) read FCodigo write SetCodigo stored Codigo_Specified;
    property CodigoEstandar:     WideString   Index (IS_OPTN or IS_NLBL) read FCodigoEstandar write SetCodigoEstandar stored CodigoEstandar_Specified;
    property Descripcion:        WideString   Index (IS_OPTN or IS_NLBL) read FDescripcion write SetDescripcion stored Descripcion_Specified;
    property DetFacConsecutivo:  Integer      Index (IS_OPTN) read FDetFacConsecutivo write SetDetFacConsecutivo stored DetFacConsecutivo_Specified;
    property Marca:              WideString   Index (IS_OPTN or IS_NLBL) read FMarca write SetMarca stored Marca_Specified;
    property Modelo:             WideString   Index (IS_OPTN or IS_NLBL) read FModelo write SetModelo stored Modelo_Specified;
    property PrecioSinImpuestos: WideString   Index (IS_OPTN or IS_NLBL) read FPrecioSinImpuestos write SetPrecioSinImpuestos stored PrecioSinImpuestos_Specified;
    property PrecioTotal:        WideString   Index (IS_OPTN or IS_NLBL) read FPrecioTotal write SetPrecioTotal stored PrecioTotal_Specified;
    property PrecioUnitario:     WideString   Index (IS_OPTN or IS_NLBL) read FPrecioUnitario write SetPrecioUnitario stored PrecioUnitario_Specified;
    property Tama_oPaquete:      WideString   Index (IS_OPTN or IS_NLBL) read FTama_oPaquete write SetTama_oPaquete stored Tama_oPaquete_Specified;
    property UnidadMedida:       WideString   Index (IS_OPTN or IS_NLBL) read FUnidadMedida write SetUnidadMedida stored UnidadMedida_Specified;
    property Vencimiento:        TXSDateTime  Index (IS_OPTN) read FVencimiento write SetVencimiento stored Vencimiento_Specified;
  end;



  // ************************************************************************ //
  // XML       : ImpuestoDetalleType, global, <complexType>
  // Namespace : http://schemas.datacontract.org/2004/07/WCFServiceData
  // ************************************************************************ //
  ImpuestoDetalleType = class(TRemotable)
  private
    FBaseImponible: WideString;
    FBaseImponible_Specified: boolean;
    FCodigoImpuesto: WideString;
    FCodigoImpuesto_Specified: boolean;
    FEsRetencionImpuesto: Boolean;
    FEsRetencionImpuesto_Specified: boolean;
    FNombreImpuesto: WideString;
    FNombreImpuesto_Specified: boolean;
    FPorcentaje: WideString;
    FPorcentaje_Specified: boolean;
    FSecuencia: Integer;
    FSecuencia_Specified: boolean;
    FValorImpuesto: WideString;
    FValorImpuesto_Specified: boolean;
    procedure SetBaseImponible(Index: Integer; const AWideString: WideString);
    function  BaseImponible_Specified(Index: Integer): boolean;
    procedure SetCodigoImpuesto(Index: Integer; const AWideString: WideString);
    function  CodigoImpuesto_Specified(Index: Integer): boolean;
    procedure SetEsRetencionImpuesto(Index: Integer; const ABoolean: Boolean);
    function  EsRetencionImpuesto_Specified(Index: Integer): boolean;
    procedure SetNombreImpuesto(Index: Integer; const AWideString: WideString);
    function  NombreImpuesto_Specified(Index: Integer): boolean;
    procedure SetPorcentaje(Index: Integer; const AWideString: WideString);
    function  Porcentaje_Specified(Index: Integer): boolean;
    procedure SetSecuencia(Index: Integer; const AInteger: Integer);
    function  Secuencia_Specified(Index: Integer): boolean;
    procedure SetValorImpuesto(Index: Integer; const AWideString: WideString);
    function  ValorImpuesto_Specified(Index: Integer): boolean;
  published
    property BaseImponible:       WideString  Index (IS_OPTN or IS_NLBL) read FBaseImponible write SetBaseImponible stored BaseImponible_Specified;
    property CodigoImpuesto:      WideString  Index (IS_OPTN or IS_NLBL) read FCodigoImpuesto write SetCodigoImpuesto stored CodigoImpuesto_Specified;
    property EsRetencionImpuesto: Boolean     Index (IS_OPTN) read FEsRetencionImpuesto write SetEsRetencionImpuesto stored EsRetencionImpuesto_Specified;
    property NombreImpuesto:      WideString  Index (IS_OPTN or IS_NLBL) read FNombreImpuesto write SetNombreImpuesto stored NombreImpuesto_Specified;
    property Porcentaje:          WideString  Index (IS_OPTN or IS_NLBL) read FPorcentaje write SetPorcentaje stored Porcentaje_Specified;
    property Secuencia:           Integer     Index (IS_OPTN) read FSecuencia write SetSecuencia stored Secuencia_Specified;
    property ValorImpuesto:       WideString  Index (IS_OPTN or IS_NLBL) read FValorImpuesto write SetValorImpuesto stored ValorImpuesto_Specified;
  end;



  // ************************************************************************ //
  // XML       : ImpuestoType, global, <complexType>
  // Namespace : http://schemas.datacontract.org/2004/07/WCFServiceData
  // ************************************************************************ //
  ImpuestoType = class(TRemotable)
  private
    FBaseImponible: WideString;
    FBaseImponible_Specified: boolean;
    FCodigoImpuesto: WideString;
    FCodigoImpuesto_Specified: boolean;
    FEsRetencionImpuesto: Boolean;
    FEsRetencionImpuesto_Specified: boolean;
    FNombreImpuesto: WideString;
    FNombreImpuesto_Specified: boolean;
    FPorcentaje: WideString;
    FPorcentaje_Specified: boolean;
    FValorImpuesto: WideString;
    FValorImpuesto_Specified: boolean;
    procedure SetBaseImponible(Index: Integer; const AWideString: WideString);
    function  BaseImponible_Specified(Index: Integer): boolean;
    procedure SetCodigoImpuesto(Index: Integer; const AWideString: WideString);
    function  CodigoImpuesto_Specified(Index: Integer): boolean;
    procedure SetEsRetencionImpuesto(Index: Integer; const ABoolean: Boolean);
    function  EsRetencionImpuesto_Specified(Index: Integer): boolean;
    procedure SetNombreImpuesto(Index: Integer; const AWideString: WideString);
    function  NombreImpuesto_Specified(Index: Integer): boolean;
    procedure SetPorcentaje(Index: Integer; const AWideString: WideString);
    function  Porcentaje_Specified(Index: Integer): boolean;
    procedure SetValorImpuesto(Index: Integer; const AWideString: WideString);
    function  ValorImpuesto_Specified(Index: Integer): boolean;
  published
    property BaseImponible:       WideString  Index (IS_OPTN or IS_NLBL) read FBaseImponible write SetBaseImponible stored BaseImponible_Specified;
    property CodigoImpuesto:      WideString  Index (IS_OPTN or IS_NLBL) read FCodigoImpuesto write SetCodigoImpuesto stored CodigoImpuesto_Specified;
    property EsRetencionImpuesto: Boolean     Index (IS_OPTN) read FEsRetencionImpuesto write SetEsRetencionImpuesto stored EsRetencionImpuesto_Specified;
    property NombreImpuesto:      WideString  Index (IS_OPTN or IS_NLBL) read FNombreImpuesto write SetNombreImpuesto stored NombreImpuesto_Specified;
    property Porcentaje:          WideString  Index (IS_OPTN or IS_NLBL) read FPorcentaje write SetPorcentaje stored Porcentaje_Specified;
    property ValorImpuesto:       WideString  Index (IS_OPTN or IS_NLBL) read FValorImpuesto write SetValorImpuesto stored ValorImpuesto_Specified;
  end;



  // ************************************************************************ //
  // XML       : AnticipoType, global, <complexType>
  // Namespace : http://schemas.datacontract.org/2004/07/WCFServiceData
  // ************************************************************************ //
  AnticipoType = class(TRemotable)
  private
    FFacAnticipoFecha: WideString;
    FFacAnticipoFecha_Specified: boolean;
    FFacAnticipoSec: WideString;
    FFacAnticipoSec_Specified: boolean;
    FFacAnticipoTotal: WideString;
    FFacAnticipoTotal_Specified: boolean;
    procedure SetFacAnticipoFecha(Index: Integer; const AWideString: WideString);
    function  FacAnticipoFecha_Specified(Index: Integer): boolean;
    procedure SetFacAnticipoSec(Index: Integer; const AWideString: WideString);
    function  FacAnticipoSec_Specified(Index: Integer): boolean;
    procedure SetFacAnticipoTotal(Index: Integer; const AWideString: WideString);
    function  FacAnticipoTotal_Specified(Index: Integer): boolean;
  published
    property FacAnticipoFecha: WideString  Index (IS_OPTN or IS_NLBL) read FFacAnticipoFecha write SetFacAnticipoFecha stored FacAnticipoFecha_Specified;
    property FacAnticipoSec:   WideString  Index (IS_OPTN or IS_NLBL) read FFacAnticipoSec write SetFacAnticipoSec stored FacAnticipoSec_Specified;
    property FacAnticipoTotal: WideString  Index (IS_OPTN or IS_NLBL) read FFacAnticipoTotal write SetFacAnticipoTotal stored FacAnticipoTotal_Specified;
  end;



  // ************************************************************************ //
  // XML       : CargosType, global, <complexType>
  // Namespace : http://schemas.datacontract.org/2004/07/WCFServiceData
  // ************************************************************************ //
  CargosType = class(TRemotable)
  private
    FFacCargoBase: WideString;
    FFacCargoBase_Specified: boolean;
    FFacCargoPorc: WideString;
    FFacCargoPorc_Specified: boolean;
    FFacCargoRazon: WideString;
    FFacCargoRazon_Specified: boolean;
    FFacCargoSecuencia: WideString;
    FFacCargoSecuencia_Specified: boolean;
    FFacCargoTipo: WideString;
    FFacCargoTipo_Specified: boolean;
    FFacCargoTotal: WideString;
    FFacCargoTotal_Specified: boolean;
    FFacCodDescuento: WideString;
    FFacCodDescuento_Specified: boolean;
    procedure SetFacCargoBase(Index: Integer; const AWideString: WideString);
    function  FacCargoBase_Specified(Index: Integer): boolean;
    procedure SetFacCargoPorc(Index: Integer; const AWideString: WideString);
    function  FacCargoPorc_Specified(Index: Integer): boolean;
    procedure SetFacCargoRazon(Index: Integer; const AWideString: WideString);
    function  FacCargoRazon_Specified(Index: Integer): boolean;
    procedure SetFacCargoSecuencia(Index: Integer; const AWideString: WideString);
    function  FacCargoSecuencia_Specified(Index: Integer): boolean;
    procedure SetFacCargoTipo(Index: Integer; const AWideString: WideString);
    function  FacCargoTipo_Specified(Index: Integer): boolean;
    procedure SetFacCargoTotal(Index: Integer; const AWideString: WideString);
    function  FacCargoTotal_Specified(Index: Integer): boolean;
    procedure SetFacCodDescuento(Index: Integer; const AWideString: WideString);
    function  FacCodDescuento_Specified(Index: Integer): boolean;
  published
    property FacCargoBase:      WideString  Index (IS_OPTN or IS_NLBL) read FFacCargoBase write SetFacCargoBase stored FacCargoBase_Specified;
    property FacCargoPorc:      WideString  Index (IS_OPTN or IS_NLBL) read FFacCargoPorc write SetFacCargoPorc stored FacCargoPorc_Specified;
    property FacCargoRazon:     WideString  Index (IS_OPTN or IS_NLBL) read FFacCargoRazon write SetFacCargoRazon stored FacCargoRazon_Specified;
    property FacCargoSecuencia: WideString  Index (IS_OPTN or IS_NLBL) read FFacCargoSecuencia write SetFacCargoSecuencia stored FacCargoSecuencia_Specified;
    property FacCargoTipo:      WideString  Index (IS_OPTN or IS_NLBL) read FFacCargoTipo write SetFacCargoTipo stored FacCargoTipo_Specified;
    property FacCargoTotal:     WideString  Index (IS_OPTN or IS_NLBL) read FFacCargoTotal write SetFacCargoTotal stored FacCargoTotal_Specified;
    property FacCodDescuento:   WideString  Index (IS_OPTN or IS_NLBL) read FFacCodDescuento write SetFacCodDescuento stored FacCodDescuento_Specified;
  end;



  // ************************************************************************ //
  // XML       : DetalleNotaType, global, <complexType>
  // Namespace : http://schemas.datacontract.org/2004/07/WCFServiceData
  // ************************************************************************ //
  DetalleNotaType = class(TRemotable)
  private
    FDetSecuencia: Integer;
    FDetSecuencia_Specified: boolean;
    FNota: WideString;
    FNota_Specified: boolean;
    FSecuencia: Integer;
    FSecuencia_Specified: boolean;
    procedure SetDetSecuencia(Index: Integer; const AInteger: Integer);
    function  DetSecuencia_Specified(Index: Integer): boolean;
    procedure SetNota(Index: Integer; const AWideString: WideString);
    function  Nota_Specified(Index: Integer): boolean;
    procedure SetSecuencia(Index: Integer; const AInteger: Integer);
    function  Secuencia_Specified(Index: Integer): boolean;
  published
    property DetSecuencia: Integer     Index (IS_OPTN) read FDetSecuencia write SetDetSecuencia stored DetSecuencia_Specified;
    property Nota:         WideString  Index (IS_OPTN or IS_NLBL) read FNota write SetNota stored Nota_Specified;
    property Secuencia:    Integer     Index (IS_OPTN) read FSecuencia write SetSecuencia stored Secuencia_Specified;
  end;



  // ************************************************************************ //
  // XML       : FormaPagoType, global, <complexType>
  // Namespace : http://schemas.datacontract.org/2004/07/WCFServiceData
  // ************************************************************************ //
  FormaPagoType = class(TRemotable)
  private
    FFacFormaPago: WideString;
    FFacFormaPago_Specified: boolean;
    FFacMetodoPago: WideString;
    FFacMetodoPago_Specified: boolean;
    FFacVencimientoFac: WideString;
    FFacVencimientoFac_Specified: boolean;
    procedure SetFacFormaPago(Index: Integer; const AWideString: WideString);
    function  FacFormaPago_Specified(Index: Integer): boolean;
    procedure SetFacMetodoPago(Index: Integer; const AWideString: WideString);
    function  FacMetodoPago_Specified(Index: Integer): boolean;
    procedure SetFacVencimientoFac(Index: Integer; const AWideString: WideString);
    function  FacVencimientoFac_Specified(Index: Integer): boolean;
  published
    property FacFormaPago:      WideString  Index (IS_OPTN or IS_NLBL) read FFacFormaPago write SetFacFormaPago stored FacFormaPago_Specified;
    property FacMetodoPago:     WideString  Index (IS_OPTN or IS_NLBL) read FFacMetodoPago write SetFacMetodoPago stored FacMetodoPago_Specified;
    property FacVencimientoFac: WideString  Index (IS_OPTN or IS_NLBL) read FFacVencimientoFac write SetFacVencimientoFac stored FacVencimientoFac_Specified;
  end;



  // ************************************************************************ //
  // XML       : NotaType, global, <complexType>
  // Namespace : http://schemas.datacontract.org/2004/07/WCFServiceData
  // ************************************************************************ //
  NotaType = class(TRemotable)
  private
    FDescripcionCabecera: WideString;
    FDescripcionCabecera_Specified: boolean;
    procedure SetDescripcionCabecera(Index: Integer; const AWideString: WideString);
    function  DescripcionCabecera_Specified(Index: Integer): boolean;
  published
    property DescripcionCabecera: WideString  Index (IS_OPTN or IS_NLBL) read FDescripcionCabecera write SetDescripcionCabecera stored DescripcionCabecera_Specified;
  end;

  ArrayOfProcesoType = array of ProcesoType;    { "http://schemas.datacontract.org/2004/07/WCFServiceData"[GblCplx] }


  // ************************************************************************ //
  // XML       : ResponseType, global, <complexType>
  // Namespace : http://schemas.datacontract.org/2004/07/WCFServiceData
  // ************************************************************************ //
  ResponseType = class(TRemotable)
  private
    FCodigoTransaccion: WideString;
    FCodigoTransaccion_Specified: boolean;
    FDetalleRespuesta: WideString;
    FDetalleRespuesta_Specified: boolean;
    FDetalles: WideString;
    FDetalles_Specified: boolean;
    FNumeroTransaccion: WideString;
    FNumeroTransaccion_Specified: boolean;
    FPDFBase64: WideString;
    FPDFBase64_Specified: boolean;
    FProceso: ArrayOfProcesoType;
    FProceso_Specified: boolean;
    FTipoTransaccion: WideString;
    FTipoTransaccion_Specified: boolean;
    FXML: WideString;
    FXML_Specified: boolean;
    procedure SetCodigoTransaccion(Index: Integer; const AWideString: WideString);
    function  CodigoTransaccion_Specified(Index: Integer): boolean;
    procedure SetDetalleRespuesta(Index: Integer; const AWideString: WideString);
    function  DetalleRespuesta_Specified(Index: Integer): boolean;
    procedure SetDetalles(Index: Integer; const AWideString: WideString);
    function  Detalles_Specified(Index: Integer): boolean;
    procedure SetNumeroTransaccion(Index: Integer; const AWideString: WideString);
    function  NumeroTransaccion_Specified(Index: Integer): boolean;
    procedure SetPDFBase64(Index: Integer; const AWideString: WideString);
    function  PDFBase64_Specified(Index: Integer): boolean;
    procedure SetProceso(Index: Integer; const AArrayOfProcesoType: ArrayOfProcesoType);
    function  Proceso_Specified(Index: Integer): boolean;
    procedure SetTipoTransaccion(Index: Integer; const AWideString: WideString);
    function  TipoTransaccion_Specified(Index: Integer): boolean;
    procedure SetXML(Index: Integer; const AWideString: WideString);
    function  XML_Specified(Index: Integer): boolean;
  public
    destructor Destroy; override;
  published
    property CodigoTransaccion: WideString          Index (IS_OPTN or IS_NLBL) read FCodigoTransaccion write SetCodigoTransaccion stored CodigoTransaccion_Specified;
    property DetalleRespuesta:  WideString          Index (IS_OPTN or IS_NLBL) read FDetalleRespuesta write SetDetalleRespuesta stored DetalleRespuesta_Specified;
    property Detalles:          WideString          Index (IS_OPTN or IS_NLBL) read FDetalles write SetDetalles stored Detalles_Specified;
    property NumeroTransaccion: WideString          Index (IS_OPTN or IS_NLBL) read FNumeroTransaccion write SetNumeroTransaccion stored NumeroTransaccion_Specified;
    property PDFBase64:         WideString          Index (IS_OPTN or IS_NLBL) read FPDFBase64 write SetPDFBase64 stored PDFBase64_Specified;
    property Proceso:           ArrayOfProcesoType  Index (IS_OPTN or IS_NLBL) read FProceso write SetProceso stored Proceso_Specified;
    property TipoTransaccion:   WideString          Index (IS_OPTN or IS_NLBL) read FTipoTransaccion write SetTipoTransaccion stored TipoTransaccion_Specified;
    property XML:               WideString          Index (IS_OPTN or IS_NLBL) read FXML write SetXML stored XML_Specified;
  end;



  // ************************************************************************ //
  // XML       : ProcesoType, global, <complexType>
  // Namespace : http://schemas.datacontract.org/2004/07/WCFServiceData
  // ************************************************************************ //
  ProcesoType = class(TRemotable)
  private
    FFechaHoraAccion: WideString;
    FFechaHoraAccion_Specified: boolean;
    FMensaje: WideString;
    FMensaje_Specified: boolean;
    FOrder: TXSDecimal;
    FOrder_Specified: boolean;
    FProceso: WideString;
    FProceso_Specified: boolean;
    procedure SetFechaHoraAccion(Index: Integer; const AWideString: WideString);
    function  FechaHoraAccion_Specified(Index: Integer): boolean;
    procedure SetMensaje(Index: Integer; const AWideString: WideString);
    function  Mensaje_Specified(Index: Integer): boolean;
    procedure SetOrder(Index: Integer; const ATXSDecimal: TXSDecimal);
    function  Order_Specified(Index: Integer): boolean;
    procedure SetProceso(Index: Integer; const AWideString: WideString);
    function  Proceso_Specified(Index: Integer): boolean;
  public
    destructor Destroy; override;
  published
    property FechaHoraAccion: WideString  Index (IS_OPTN or IS_NLBL) read FFechaHoraAccion write SetFechaHoraAccion stored FechaHoraAccion_Specified;
    property Mensaje:         WideString  Index (IS_OPTN or IS_NLBL) read FMensaje write SetMensaje stored Mensaje_Specified;
    property Order:           TXSDecimal  Index (IS_OPTN) read FOrder write SetOrder stored Order_Specified;
    property Proceso:         WideString  Index (IS_OPTN or IS_NLBL) read FProceso write SetProceso stored Proceso_Specified;
  end;



  // ************************************************************************ //
  // XML       : DocumentType, global, <element>
  // Namespace : http://schemas.datacontract.org/2004/07/WCFServiceData
  // ************************************************************************ //
  DocumentType2 = class(DocumentType)
  private
  published
  end;



  // ************************************************************************ //
  // XML       : AutorizacionType, global, <element>
  // Namespace : http://schemas.datacontract.org/2004/07/WCFServiceData
  // ************************************************************************ //
  AutorizacionType2 = class(AutorizacionType)
  private
  published
  end;



  // ************************************************************************ //
  // XML       : CompradorType, global, <element>
  // Namespace : http://schemas.datacontract.org/2004/07/WCFServiceData
  // ************************************************************************ //
  CompradorType2 = class(CompradorType)
  private
  published
  end;



  // ************************************************************************ //
  // XML       : EmisorType, global, <element>
  // Namespace : http://schemas.datacontract.org/2004/07/WCFServiceData
  // ************************************************************************ //
  EmisorType2 = class(EmisorType)
  private
  published
  end;



  // ************************************************************************ //
  // XML       : EncabezadoType, global, <element>
  // Namespace : http://schemas.datacontract.org/2004/07/WCFServiceData
  // ************************************************************************ //
  EncabezadoType2 = class(EncabezadoType)
  private
  published
  end;



  // ************************************************************************ //
  // XML       : InfoMonetarioType, global, <element>
  // Namespace : http://schemas.datacontract.org/2004/07/WCFServiceData
  // ************************************************************************ //
  InfoMonetarioType2 = class(InfoMonetarioType)
  private
  published
  end;



  // ************************************************************************ //
  // XML       : AdicionalesType, global, <element>
  // Namespace : http://schemas.datacontract.org/2004/07/WCFServiceData
  // ************************************************************************ //
  AdicionalesType2 = class(AdicionalesType)
  private
  published
  end;



  // ************************************************************************ //
  // XML       : DetalleType, global, <element>
  // Namespace : http://schemas.datacontract.org/2004/07/WCFServiceData
  // ************************************************************************ //
  DetalleType2 = class(DetalleType)
  private
  published
  end;



  // ************************************************************************ //
  // XML       : ImpuestoDetalleType, global, <element>
  // Namespace : http://schemas.datacontract.org/2004/07/WCFServiceData
  // ************************************************************************ //
  ImpuestoDetalleType2 = class(ImpuestoDetalleType)
  private
  published
  end;



  // ************************************************************************ //
  // XML       : ImpuestoType, global, <element>
  // Namespace : http://schemas.datacontract.org/2004/07/WCFServiceData
  // ************************************************************************ //
  ImpuestoType2 = class(ImpuestoType)
  private
  published
  end;



  // ************************************************************************ //
  // XML       : ReferenciaType, global, <element>
  // Namespace : http://schemas.datacontract.org/2004/07/WCFServiceData
  // ************************************************************************ //
  ReferenciaType2 = class(ReferenciaType)
  private
  published
  end;



  // ************************************************************************ //
  // XML       : SoftwareSeguridadType, global, <element>
  // Namespace : http://schemas.datacontract.org/2004/07/WCFServiceData
  // ************************************************************************ //
  SoftwareSeguridadType2 = class(SoftwareSeguridadType)
  private
  published
  end;



  // ************************************************************************ //
  // XML       : AnticipoType, global, <element>
  // Namespace : http://schemas.datacontract.org/2004/07/WCFServiceData
  // ************************************************************************ //
  AnticipoType2 = class(AnticipoType)
  private
  published
  end;



  // ************************************************************************ //
  // XML       : CargosType, global, <element>
  // Namespace : http://schemas.datacontract.org/2004/07/WCFServiceData
  // ************************************************************************ //
  CargosType2 = class(CargosType)
  private
  published
  end;



  // ************************************************************************ //
  // XML       : DetalleNotaType, global, <element>
  // Namespace : http://schemas.datacontract.org/2004/07/WCFServiceData
  // ************************************************************************ //
  DetalleNotaType2 = class(DetalleNotaType)
  private
  published
  end;



  // ************************************************************************ //
  // XML       : FormaPagoType, global, <element>
  // Namespace : http://schemas.datacontract.org/2004/07/WCFServiceData
  // ************************************************************************ //
  FormaPagoType2 = class(FormaPagoType)
  private
  published
  end;



  // ************************************************************************ //
  // XML       : NotaType, global, <element>
  // Namespace : http://schemas.datacontract.org/2004/07/WCFServiceData
  // ************************************************************************ //
  NotaType2 = class(NotaType)
  private
  published
  end;



  // ************************************************************************ //
  // XML       : ResponseType, global, <element>
  // Namespace : http://schemas.datacontract.org/2004/07/WCFServiceData
  // ************************************************************************ //
  ResponseType2 = class(ResponseType)
  private
  published
  end;



  // ************************************************************************ //
  // XML       : ProcesoType, global, <element>
  // Namespace : http://schemas.datacontract.org/2004/07/WCFServiceData
  // ************************************************************************ //
  ProcesoType2 = class(ProcesoType)
  private
  published
  end;



  // ************************************************************************ //
  // XML       : DetalleCargosType, global, <complexType>
  // Namespace : http://schemas.datacontract.org/2004/07/
  // ************************************************************************ //
  DetalleCargosType = class(TRemotable)
  private
    FDetCargoBase: WideString;
    FDetCargoBase_Specified: boolean;
    FDetCargoPorc: WideString;
    FDetCargoPorc_Specified: boolean;
    FDetCargoRazon: WideString;
    FDetCargoRazon_Specified: boolean;
    FDetCargoSecuencia: WideString;
    FDetCargoSecuencia_Specified: boolean;
    FDetCargoTipo: WideString;
    FDetCargoTipo_Specified: boolean;
    FDetCargoTotal: WideString;
    FDetCargoTotal_Specified: boolean;
    FDetSecuencia: WideString;
    FDetSecuencia_Specified: boolean;
    procedure SetDetCargoBase(Index: Integer; const AWideString: WideString);
    function  DetCargoBase_Specified(Index: Integer): boolean;
    procedure SetDetCargoPorc(Index: Integer; const AWideString: WideString);
    function  DetCargoPorc_Specified(Index: Integer): boolean;
    procedure SetDetCargoRazon(Index: Integer; const AWideString: WideString);
    function  DetCargoRazon_Specified(Index: Integer): boolean;
    procedure SetDetCargoSecuencia(Index: Integer; const AWideString: WideString);
    function  DetCargoSecuencia_Specified(Index: Integer): boolean;
    procedure SetDetCargoTipo(Index: Integer; const AWideString: WideString);
    function  DetCargoTipo_Specified(Index: Integer): boolean;
    procedure SetDetCargoTotal(Index: Integer; const AWideString: WideString);
    function  DetCargoTotal_Specified(Index: Integer): boolean;
    procedure SetDetSecuencia(Index: Integer; const AWideString: WideString);
    function  DetSecuencia_Specified(Index: Integer): boolean;
  published
    property DetCargoBase:      WideString  Index (IS_OPTN or IS_NLBL) read FDetCargoBase write SetDetCargoBase stored DetCargoBase_Specified;
    property DetCargoPorc:      WideString  Index (IS_OPTN or IS_NLBL) read FDetCargoPorc write SetDetCargoPorc stored DetCargoPorc_Specified;
    property DetCargoRazon:     WideString  Index (IS_OPTN or IS_NLBL) read FDetCargoRazon write SetDetCargoRazon stored DetCargoRazon_Specified;
    property DetCargoSecuencia: WideString  Index (IS_OPTN or IS_NLBL) read FDetCargoSecuencia write SetDetCargoSecuencia stored DetCargoSecuencia_Specified;
    property DetCargoTipo:      WideString  Index (IS_OPTN or IS_NLBL) read FDetCargoTipo write SetDetCargoTipo stored DetCargoTipo_Specified;
    property DetCargoTotal:     WideString  Index (IS_OPTN or IS_NLBL) read FDetCargoTotal write SetDetCargoTotal stored DetCargoTotal_Specified;
    property DetSecuencia:      WideString  Index (IS_OPTN or IS_NLBL) read FDetSecuencia write SetDetSecuencia stored DetSecuencia_Specified;
  end;



  // ************************************************************************ //
  // XML       : DetalleCargosType, global, <element>
  // Namespace : http://schemas.datacontract.org/2004/07/
  // ************************************************************************ //
  DetalleCargosType2 = class(DetalleCargosType)
  private
  published
  end;


  // ************************************************************************ //
  // Namespace : http://tempuri.org/
  // soapAction: http://tempuri.org/IService/%operationName%
  // transport : http://schemas.xmlsoap.org/soap/http
  // style     : document
  // binding   : BasicHttpsBinding_IService
  // service   : Service
  // port      : BasicHttpsBinding_IService
  // URL       : https://demo.conexusit.com/ServicioWCF/Service.svc
  // ************************************************************************ //
  IService = interface(IInvokable)
  ['{F166B720-221A-3CBB-F11E-3388DFFFA5A8}']
    function  SetDocument(const Invoice: DocumentType): ResponseType; stdcall;
    function  GetTransaccion(const CUFE: WideString; const periodo: WideString): ResponseType; stdcall;
    function  GetTransaccionbyIdentificacion(const nroDocumento: WideString; const periodo: WideString; const emisorNit: WideString): ResponseType; stdcall;
    function  SetDocumentJson(const DocJson: WideString): WideString; stdcall;
    function  GetTransaccionJson(const CUFE: WideString; const periodo: WideString): WideString; stdcall;
    function  GetTransaccionbyIdentificacionJson(const nroDocumento: WideString; const periodo: WideString; const emisorNit: WideString): WideString; stdcall;
    function  Status: WideString; stdcall;
  end;

function GetIService(UseWSDL: Boolean=System.False; Addr: string=''; HTTPRIO: THTTPRIO = nil): IService;


implementation
  uses SysUtils;


function GetIService(UseWSDL: Boolean; Addr: string; HTTPRIO: THTTPRIO): IService;
const
  defWSDL = 'wsdl_conexus.wsdl';
  defURL  = 'https://demo.conexusit.com/ServicioWCF/Service.svc';
  defSvc  = 'Service';
  defPrt  = 'BasicHttpsBinding_IService';
  // defURL  = 'http://192.168.88.130/ServicioWCF/Service.svc';
var
  RIO: THTTPRIO;

begin

  Result := nil;
  if (Addr = '') then
  begin
    if UseWSDL then
      Addr := defWSDL
    else
      Addr := defURL;
  end;
  if HTTPRIO = nil then
    RIO := THTTPRIO.Create(nil)
  else
    RIO := HTTPRIO;
  try

    Result := (RIO as IService);
    if UseWSDL then
    begin
      RIO.WSDLLocation := Addr;
      RIO.Service := defSvc;
      RIO.Port := defPrt;
    end else
      RIO.URL := Addr;
  finally
    if (Result = nil) and (HTTPRIO = nil) then
      RIO.Free;
  end;
end;


procedure AutorizacionType.SetAutFechaFinal(Index: Integer; const AWideString: WideString);
begin
  FAutFechaFinal := AWideString;
  FAutFechaFinal_Specified := True;
end;

function AutorizacionType.AutFechaFinal_Specified(Index: Integer): boolean;
begin
  Result := FAutFechaFinal_Specified;
end;

procedure AutorizacionType.SetAutFechaInicio(Index: Integer; const AWideString: WideString);
begin
  FAutFechaInicio := AWideString;
  FAutFechaInicio_Specified := True;
end;

function AutorizacionType.AutFechaInicio_Specified(Index: Integer): boolean;
begin
  Result := FAutFechaInicio_Specified;
end;

procedure AutorizacionType.SetAutNumAutorizacion(Index: Integer; const AWideString: WideString);
begin
  FAutNumAutorizacion := AWideString;
  FAutNumAutorizacion_Specified := True;
end;

function AutorizacionType.AutNumAutorizacion_Specified(Index: Integer): boolean;
begin
  Result := FAutNumAutorizacion_Specified;
end;

procedure AutorizacionType.SetAutPrefijo(Index: Integer; const AWideString: WideString);
begin
  FAutPrefijo := AWideString;
  FAutPrefijo_Specified := True;
end;

function AutorizacionType.AutPrefijo_Specified(Index: Integer): boolean;
begin
  Result := FAutPrefijo_Specified;
end;

procedure AutorizacionType.SetAutSecuenciaFinal(Index: Integer; const AWideString: WideString);
begin
  FAutSecuenciaFinal := AWideString;
  FAutSecuenciaFinal_Specified := True;
end;

function AutorizacionType.AutSecuenciaFinal_Specified(Index: Integer): boolean;
begin
  Result := FAutSecuenciaFinal_Specified;
end;

procedure AutorizacionType.SetAutSecuenciaInicio(Index: Integer; const AWideString: WideString);
begin
  FAutSecuenciaInicio := AWideString;
  FAutSecuenciaInicio_Specified := True;
end;

function AutorizacionType.AutSecuenciaInicio_Specified(Index: Integer): boolean;
begin
  Result := FAutSecuenciaInicio_Specified;
end;

procedure CompradorType.SetCompradorApellidos(Index: Integer; const AWideString: WideString);
begin
  FCompradorApellidos := AWideString;
  FCompradorApellidos_Specified := True;
end;

function CompradorType.CompradorApellidos_Specified(Index: Integer): boolean;
begin
  Result := FCompradorApellidos_Specified;
end;

procedure CompradorType.SetCompradorCiudad(Index: Integer; const AWideString: WideString);
begin
  FCompradorCiudad := AWideString;
  FCompradorCiudad_Specified := True;
end;

function CompradorType.CompradorCiudad_Specified(Index: Integer): boolean;
begin
  Result := FCompradorCiudad_Specified;
end;

procedure CompradorType.SetCompradorCodCiudad(Index: Integer; const AWideString: WideString);
begin
  FCompradorCodCiudad := AWideString;
  FCompradorCodCiudad_Specified := True;
end;

function CompradorType.CompradorCodCiudad_Specified(Index: Integer): boolean;
begin
  Result := FCompradorCodCiudad_Specified;
end;

procedure CompradorType.SetCompradorCodDepartamento(Index: Integer; const AWideString: WideString);
begin
  FCompradorCodDepartamento := AWideString;
  FCompradorCodDepartamento_Specified := True;
end;

function CompradorType.CompradorCodDepartamento_Specified(Index: Integer): boolean;
begin
  Result := FCompradorCodDepartamento_Specified;
end;

procedure CompradorType.SetCompradorCodPostal(Index: Integer; const AWideString: WideString);
begin
  FCompradorCodPostal := AWideString;
  FCompradorCodPostal_Specified := True;
end;

function CompradorType.CompradorCodPostal_Specified(Index: Integer): boolean;
begin
  Result := FCompradorCodPostal_Specified;
end;

procedure CompradorType.SetCompradorCorreoElectronico(Index: Integer; const AWideString: WideString);
begin
  FCompradorCorreoElectronico := AWideString;
  FCompradorCorreoElectronico_Specified := True;
end;

function CompradorType.CompradorCorreoElectronico_Specified(Index: Integer): boolean;
begin
  Result := FCompradorCorreoElectronico_Specified;
end;

procedure CompradorType.SetCompradorDVIdentificacion(Index: Integer; const AWideString: WideString);
begin
  FCompradorDVIdentificacion := AWideString;
  FCompradorDVIdentificacion_Specified := True;
end;

function CompradorType.CompradorDVIdentificacion_Specified(Index: Integer): boolean;
begin
  Result := FCompradorDVIdentificacion_Specified;
end;

procedure CompradorType.SetCompradorDepartamento(Index: Integer; const AWideString: WideString);
begin
  FCompradorDepartamento := AWideString;
  FCompradorDepartamento_Specified := True;
end;

function CompradorType.CompradorDepartamento_Specified(Index: Integer): boolean;
begin
  Result := FCompradorDepartamento_Specified;
end;

procedure CompradorType.SetCompradorDireccion(Index: Integer; const AWideString: WideString);
begin
  FCompradorDireccion := AWideString;
  FCompradorDireccion_Specified := True;
end;

function CompradorType.CompradorDireccion_Specified(Index: Integer): boolean;
begin
  Result := FCompradorDireccion_Specified;
end;

procedure CompradorType.SetCompradorEnviarCorreo(Index: Integer; const ABoolean: Boolean);
begin
  FCompradorEnviarCorreo := ABoolean;
  FCompradorEnviarCorreo_Specified := True;
end;

function CompradorType.CompradorEnviarCorreo_Specified(Index: Integer): boolean;
begin
  Result := FCompradorEnviarCorreo_Specified;
end;

procedure CompradorType.SetCompradorIdentificacion(Index: Integer; const AWideString: WideString);
begin
  FCompradorIdentificacion := AWideString;
  FCompradorIdentificacion_Specified := True;
end;

function CompradorType.CompradorIdentificacion_Specified(Index: Integer): boolean;
begin
  Result := FCompradorIdentificacion_Specified;
end;

procedure CompradorType.SetCompradorImpuesto(Index: Integer; const AWideString: WideString);
begin
  FCompradorImpuesto := AWideString;
  FCompradorImpuesto_Specified := True;
end;

function CompradorType.CompradorImpuesto_Specified(Index: Integer): boolean;
begin
  Result := FCompradorImpuesto_Specified;
end;

procedure CompradorType.SetCompradorNombreCompleto(Index: Integer; const AWideString: WideString);
begin
  FCompradorNombreCompleto := AWideString;
  FCompradorNombreCompleto_Specified := True;
end;

function CompradorType.CompradorNombreCompleto_Specified(Index: Integer): boolean;
begin
  Result := FCompradorNombreCompleto_Specified;
end;

procedure CompradorType.SetCompradorNombrePais(Index: Integer; const AWideString: WideString);
begin
  FCompradorNombrePais := AWideString;
  FCompradorNombrePais_Specified := True;
end;

function CompradorType.CompradorNombrePais_Specified(Index: Integer): boolean;
begin
  Result := FCompradorNombrePais_Specified;
end;

procedure CompradorType.SetCompradorNotaCont(Index: Integer; const AWideString: WideString);
begin
  FCompradorNotaCont := AWideString;
  FCompradorNotaCont_Specified := True;
end;

function CompradorType.CompradorNotaCont_Specified(Index: Integer): boolean;
begin
  Result := FCompradorNotaCont_Specified;
end;

procedure CompradorType.SetCompradorPais(Index: Integer; const AWideString: WideString);
begin
  FCompradorPais := AWideString;
  FCompradorPais_Specified := True;
end;

function CompradorType.CompradorPais_Specified(Index: Integer): boolean;
begin
  Result := FCompradorPais_Specified;
end;

procedure CompradorType.SetCompradorPrimerNombre(Index: Integer; const AWideString: WideString);
begin
  FCompradorPrimerNombre := AWideString;
  FCompradorPrimerNombre_Specified := True;
end;

function CompradorType.CompradorPrimerNombre_Specified(Index: Integer): boolean;
begin
  Result := FCompradorPrimerNombre_Specified;
end;

procedure CompradorType.SetCompradorRazonSocial(Index: Integer; const AWideString: WideString);
begin
  FCompradorRazonSocial := AWideString;
  FCompradorRazonSocial_Specified := True;
end;

function CompradorType.CompradorRazonSocial_Specified(Index: Integer): boolean;
begin
  Result := FCompradorRazonSocial_Specified;
end;

procedure CompradorType.SetCompradorRespFiscal(Index: Integer; const AWideString: WideString);
begin
  FCompradorRespFiscal := AWideString;
  FCompradorRespFiscal_Specified := True;
end;

function CompradorType.CompradorRespFiscal_Specified(Index: Integer): boolean;
begin
  Result := FCompradorRespFiscal_Specified;
end;

procedure CompradorType.SetCompradorSector(Index: Integer; const AWideString: WideString);
begin
  FCompradorSector := AWideString;
  FCompradorSector_Specified := True;
end;

function CompradorType.CompradorSector_Specified(Index: Integer): boolean;
begin
  Result := FCompradorSector_Specified;
end;

procedure CompradorType.SetCompradorSegundoNombre(Index: Integer; const AWideString: WideString);
begin
  FCompradorSegundoNombre := AWideString;
  FCompradorSegundoNombre_Specified := True;
end;

function CompradorType.CompradorSegundoNombre_Specified(Index: Integer): boolean;
begin
  Result := FCompradorSegundoNombre_Specified;
end;

procedure CompradorType.SetCompradorTelefonoCont(Index: Integer; const AWideString: WideString);
begin
  FCompradorTelefonoCont := AWideString;
  FCompradorTelefonoCont_Specified := True;
end;

function CompradorType.CompradorTelefonoCont_Specified(Index: Integer): boolean;
begin
  Result := FCompradorTelefonoCont_Specified;
end;

procedure CompradorType.SetCompradorTipoIdentificacion(Index: Integer; const AWideString: WideString);
begin
  FCompradorTipoIdentificacion := AWideString;
  FCompradorTipoIdentificacion_Specified := True;
end;

function CompradorType.CompradorTipoIdentificacion_Specified(Index: Integer): boolean;
begin
  Result := FCompradorTipoIdentificacion_Specified;
end;

procedure CompradorType.SetCompradorTipoPersona(Index: Integer; const AWideString: WideString);
begin
  FCompradorTipoPersona := AWideString;
  FCompradorTipoPersona_Specified := True;
end;

function CompradorType.CompradorTipoPersona_Specified(Index: Integer): boolean;
begin
  Result := FCompradorTipoPersona_Specified;
end;

procedure CompradorType.SetCompradorTipoRegimen(Index: Integer; const AWideString: WideString);
begin
  FCompradorTipoRegimen := AWideString;
  FCompradorTipoRegimen_Specified := True;
end;

function CompradorType.CompradorTipoRegimen_Specified(Index: Integer): boolean;
begin
  Result := FCompradorTipoRegimen_Specified;
end;

procedure EmisorType.SetEmiDVIdentificacion(Index: Integer; const AWideString: WideString);
begin
  FEmiDVIdentificacion := AWideString;
  FEmiDVIdentificacion_Specified := True;
end;

function EmisorType.EmiDVIdentificacion_Specified(Index: Integer): boolean;
begin
  Result := FEmiDVIdentificacion_Specified;
end;

procedure EmisorType.SetEmiIdentificacion(Index: Integer; const AWideString: WideString);
begin
  FEmiIdentificacion := AWideString;
  FEmiIdentificacion_Specified := True;
end;

function EmisorType.EmiIdentificacion_Specified(Index: Integer): boolean;
begin
  Result := FEmiIdentificacion_Specified;
end;

procedure EmisorType.SetEmiTipoIdentificacion(Index: Integer; const AInteger: Integer);
begin
  FEmiTipoIdentificacion := AInteger;
  FEmiTipoIdentificacion_Specified := True;
end;

function EmisorType.EmiTipoIdentificacion_Specified(Index: Integer): boolean;
begin
  Result := FEmiTipoIdentificacion_Specified;
end;

procedure EmisorType.SetEmiTipoPersona(Index: Integer; const AInteger: Integer);
begin
  FEmiTipoPersona := AInteger;
  FEmiTipoPersona_Specified := True;
end;

function EmisorType.EmiTipoPersona_Specified(Index: Integer): boolean;
begin
  Result := FEmiTipoPersona_Specified;
end;

procedure EncabezadoType.SetFacCodOperacion(Index: Integer; const AWideString: WideString);
begin
  FFacCodOperacion := AWideString;
  FFacCodOperacion_Specified := True;
end;

function EncabezadoType.FacCodOperacion_Specified(Index: Integer): boolean;
begin
  Result := FFacCodOperacion_Specified;
end;

procedure EncabezadoType.SetFacFechaContingencia(Index: Integer; const AWideString: WideString);
begin
  FFacFechaContingencia := AWideString;
  FFacFechaContingencia_Specified := True;
end;

function EncabezadoType.FacFechaContingencia_Specified(Index: Integer): boolean;
begin
  Result := FFacFechaContingencia_Specified;
end;

procedure EncabezadoType.SetFacFechaFin(Index: Integer; const AWideString: WideString);
begin
  FFacFechaFin := AWideString;
  FFacFechaFin_Specified := True;
end;

function EncabezadoType.FacFechaFin_Specified(Index: Integer): boolean;
begin
  Result := FFacFechaFin_Specified;
end;

procedure EncabezadoType.SetFacFechaHoraFactura(Index: Integer; const AWideString: WideString);
begin
  FFacFechaHoraFactura := AWideString;
  FFacFechaHoraFactura_Specified := True;
end;

function EncabezadoType.FacFechaHoraFactura_Specified(Index: Integer): boolean;
begin
  Result := FFacFechaHoraFactura_Specified;
end;

procedure EncabezadoType.SetFacFechaIni(Index: Integer; const AWideString: WideString);
begin
  FFacFechaIni := AWideString;
  FFacFechaIni_Specified := True;
end;

function EncabezadoType.FacFechaIni_Specified(Index: Integer): boolean;
begin
  Result := FFacFechaIni_Specified;
end;

procedure EncabezadoType.SetFacRefContingencia(Index: Integer; const AWideString: WideString);
begin
  FFacRefContingencia := AWideString;
  FFacRefContingencia_Specified := True;
end;

function EncabezadoType.FacRefContingencia_Specified(Index: Integer): boolean;
begin
  Result := FFacRefContingencia_Specified;
end;

procedure EncabezadoType.SetFacTipoFactura(Index: Integer; const AWideString: WideString);
begin
  FFacTipoFactura := AWideString;
  FFacTipoFactura_Specified := True;
end;

function EncabezadoType.FacTipoFactura_Specified(Index: Integer): boolean;
begin
  Result := FFacTipoFactura_Specified;
end;

procedure EncabezadoType.SetFacTipoRefContingencia(Index: Integer; const AWideString: WideString);
begin
  FFacTipoRefContingencia := AWideString;
  FFacTipoRefContingencia_Specified := True;
end;

function EncabezadoType.FacTipoRefContingencia_Specified(Index: Integer): boolean;
begin
  Result := FFacTipoRefContingencia_Specified;
end;

procedure InfoMonetarioType.SetFacCodMoneda(Index: Integer; const AWideString: WideString);
begin
  FFacCodMoneda := AWideString;
  FFacCodMoneda_Specified := True;
end;

function InfoMonetarioType.FacCodMoneda_Specified(Index: Integer): boolean;
begin
  Result := FFacCodMoneda_Specified;
end;

procedure InfoMonetarioType.SetFacTotalAnticipos(Index: Integer; const AWideString: WideString);
begin
  FFacTotalAnticipos := AWideString;
  FFacTotalAnticipos_Specified := True;
end;

function InfoMonetarioType.FacTotalAnticipos_Specified(Index: Integer): boolean;
begin
  Result := FFacTotalAnticipos_Specified;
end;

procedure InfoMonetarioType.SetFacTotalBaseImponible(Index: Integer; const AWideString: WideString);
begin
  FFacTotalBaseImponible := AWideString;
  FFacTotalBaseImponible_Specified := True;
end;

function InfoMonetarioType.FacTotalBaseImponible_Specified(Index: Integer): boolean;
begin
  Result := FFacTotalBaseImponible_Specified;
end;

procedure InfoMonetarioType.SetFacTotalBrutoMasImp(Index: Integer; const AWideString: WideString);
begin
  FFacTotalBrutoMasImp := AWideString;
  FFacTotalBrutoMasImp_Specified := True;
end;

function InfoMonetarioType.FacTotalBrutoMasImp_Specified(Index: Integer): boolean;
begin
  Result := FFacTotalBrutoMasImp_Specified;
end;

procedure InfoMonetarioType.SetFacTotalCargos(Index: Integer; const AWideString: WideString);
begin
  FFacTotalCargos := AWideString;
  FFacTotalCargos_Specified := True;
end;

function InfoMonetarioType.FacTotalCargos_Specified(Index: Integer): boolean;
begin
  Result := FFacTotalCargos_Specified;
end;

procedure InfoMonetarioType.SetFacTotalDescuentos(Index: Integer; const AWideString: WideString);
begin
  FFacTotalDescuentos := AWideString;
  FFacTotalDescuentos_Specified := True;
end;

function InfoMonetarioType.FacTotalDescuentos_Specified(Index: Integer): boolean;
begin
  Result := FFacTotalDescuentos_Specified;
end;

procedure InfoMonetarioType.SetFacTotalFactura(Index: Integer; const AWideString: WideString);
begin
  FFacTotalFactura := AWideString;
  FFacTotalFactura_Specified := True;
end;

function InfoMonetarioType.FacTotalFactura_Specified(Index: Integer): boolean;
begin
  Result := FFacTotalFactura_Specified;
end;

procedure InfoMonetarioType.SetFacTotalImporteBruto(Index: Integer; const AWideString: WideString);
begin
  FFacTotalImporteBruto := AWideString;
  FFacTotalImporteBruto_Specified := True;
end;

function InfoMonetarioType.FacTotalImporteBruto_Specified(Index: Integer): boolean;
begin
  Result := FFacTotalImporteBruto_Specified;
end;

procedure ReferenciaType.SetConceptoNota(Index: Integer; const AWideString: WideString);
begin
  FConceptoNota := AWideString;
  FConceptoNota_Specified := True;
end;

function ReferenciaType.ConceptoNota_Specified(Index: Integer): boolean;
begin
  Result := FConceptoNota_Specified;
end;

procedure ReferenciaType.SetCufeFactura(Index: Integer; const AWideString: WideString);
begin
  FCufeFactura := AWideString;
  FCufeFactura_Specified := True;
end;

function ReferenciaType.CufeFactura_Specified(Index: Integer): boolean;
begin
  Result := FCufeFactura_Specified;
end;

procedure ReferenciaType.SetDescNatCorreccion(Index: Integer; const AWideString: WideString);
begin
  FDescNatCorreccion := AWideString;
  FDescNatCorreccion_Specified := True;
end;

function ReferenciaType.DescNatCorreccion_Specified(Index: Integer): boolean;
begin
  Result := FDescNatCorreccion_Specified;
end;

procedure ReferenciaType.SetFechaFactura(Index: Integer; const AWideString: WideString);
begin
  FFechaFactura := AWideString;
  FFechaFactura_Specified := True;
end;

function ReferenciaType.FechaFactura_Specified(Index: Integer): boolean;
begin
  Result := FFechaFactura_Specified;
end;

procedure ReferenciaType.SetNumeroFactura(Index: Integer; const AWideString: WideString);
begin
  FNumeroFactura := AWideString;
  FNumeroFactura_Specified := True;
end;

function ReferenciaType.NumeroFactura_Specified(Index: Integer): boolean;
begin
  Result := FNumeroFactura_Specified;
end;

procedure SoftwareSeguridadType.SetClaveTecnica(Index: Integer; const AWideString: WideString);
begin
  FClaveTecnica := AWideString;
  FClaveTecnica_Specified := True;
end;

function SoftwareSeguridadType.ClaveTecnica_Specified(Index: Integer): boolean;
begin
  Result := FClaveTecnica_Specified;
end;

procedure SoftwareSeguridadType.SetCodigoErp(Index: Integer; const AWideString: WideString);
begin
  FCodigoErp := AWideString;
  FCodigoErp_Specified := True;
end;

function SoftwareSeguridadType.CodigoErp_Specified(Index: Integer): boolean;
begin
  Result := FCodigoErp_Specified;
end;

procedure SoftwareSeguridadType.SetGuidEmpresa(Index: Integer; const AWideString: WideString);
begin
  FGuidEmpresa := AWideString;
  FGuidEmpresa_Specified := True;
end;

function SoftwareSeguridadType.GuidEmpresa_Specified(Index: Integer): boolean;
begin
  Result := FGuidEmpresa_Specified;
end;

procedure SoftwareSeguridadType.SetGuidOrigen(Index: Integer; const AWideString: WideString);
begin
  FGuidOrigen := AWideString;
  FGuidOrigen_Specified := True;
end;

function SoftwareSeguridadType.GuidOrigen_Specified(Index: Integer): boolean;
begin
  Result := FGuidOrigen_Specified;
end;

procedure SoftwareSeguridadType.SetHashSeguridad(Index: Integer; const AWideString: WideString);
begin
  FHashSeguridad := AWideString;
  FHashSeguridad_Specified := True;
end;

function SoftwareSeguridadType.HashSeguridad_Specified(Index: Integer): boolean;
begin
  Result := FHashSeguridad_Specified;
end;

procedure SoftwareSeguridadType.SetNumeroDocumento(Index: Integer; const AWideString: WideString);
begin
  FNumeroDocumento := AWideString;
  FNumeroDocumento_Specified := True;
end;

function SoftwareSeguridadType.NumeroDocumento_Specified(Index: Integer): boolean;
begin
  Result := FNumeroDocumento_Specified;
end;

procedure SoftwareSeguridadType.SetTipoDocumento(Index: Integer; const AWideString: WideString);
begin
  FTipoDocumento := AWideString;
  FTipoDocumento_Specified := True;
end;

function SoftwareSeguridadType.TipoDocumento_Specified(Index: Integer): boolean;
begin
  Result := FTipoDocumento_Specified;
end;

destructor DocumentType.Destroy;
var
  I: Integer;
begin
  for I := 0 to Length(FLsAdicionales)-1 do
    FreeAndNil(FLsAdicionales[I]);
  SetLength(FLsAdicionales, 0);
  for I := 0 to Length(FLsDetalle)-1 do
    FreeAndNil(FLsDetalle[I]);
  SetLength(FLsDetalle, 0);
  for I := 0 to Length(FLsDetalleCargos)-1 do
    FreeAndNil(FLsDetalleCargos[I]);
  SetLength(FLsDetalleCargos, 0);
  for I := 0 to Length(FLsDetalleImpuesto)-1 do
    FreeAndNil(FLsDetalleImpuesto[I]);
  SetLength(FLsDetalleImpuesto, 0);
  for I := 0 to Length(FLsImpuestos)-1 do
    FreeAndNil(FLsImpuestos[I]);
  SetLength(FLsImpuestos, 0);
  for I := 0 to Length(FlsAnticipos)-1 do
    FreeAndNil(FlsAnticipos[I]);
  SetLength(FlsAnticipos, 0);
  for I := 0 to Length(FlsCargos)-1 do
    FreeAndNil(FlsCargos[I]);
  SetLength(FlsCargos, 0);
  for I := 0 to Length(FlsDetalleNotas)-1 do
    FreeAndNil(FlsDetalleNotas[I]);
  SetLength(FlsDetalleNotas, 0);
  for I := 0 to Length(FlsFormaPago)-1 do
    FreeAndNil(FlsFormaPago[I]);
  SetLength(FlsFormaPago, 0);
  for I := 0 to Length(FlsNotas)-1 do
    FreeAndNil(FlsNotas[I]);
  SetLength(FlsNotas, 0);
  FreeAndNil(FAutorizacionFactura);
  FreeAndNil(FCompradorFactura);
  FreeAndNil(FEmisorData);
  FreeAndNil(FEncabezadoData);
  FreeAndNil(FInfoMonetarioData);
  FreeAndNil(FReferenciaFactura);
  FreeAndNil(FSoftwareSeguridad);
  inherited Destroy;
end;

procedure DocumentType.SetAutorizacionFactura(Index: Integer; const AAutorizacionType: AutorizacionType);
begin
  FAutorizacionFactura := AAutorizacionType;
  FAutorizacionFactura_Specified := True;
end;

function DocumentType.AutorizacionFactura_Specified(Index: Integer): boolean;
begin
  Result := FAutorizacionFactura_Specified;
end;

procedure DocumentType.SetCompradorFactura(Index: Integer; const ACompradorType: CompradorType);
begin
  FCompradorFactura := ACompradorType;
  FCompradorFactura_Specified := True;
end;

function DocumentType.CompradorFactura_Specified(Index: Integer): boolean;
begin
  Result := FCompradorFactura_Specified;
end;

procedure DocumentType.SetEmisorData(Index: Integer; const AEmisorType: EmisorType);
begin
  FEmisorData := AEmisorType;
  FEmisorData_Specified := True;
end;

function DocumentType.EmisorData_Specified(Index: Integer): boolean;
begin
  Result := FEmisorData_Specified;
end;

procedure DocumentType.SetEncabezadoData(Index: Integer; const AEncabezadoType: EncabezadoType);
begin
  FEncabezadoData := AEncabezadoType;
  FEncabezadoData_Specified := True;
end;

function DocumentType.EncabezadoData_Specified(Index: Integer): boolean;
begin
  Result := FEncabezadoData_Specified;
end;

procedure DocumentType.SetInfoMonetarioData(Index: Integer; const AInfoMonetarioType: InfoMonetarioType);
begin
  FInfoMonetarioData := AInfoMonetarioType;
  FInfoMonetarioData_Specified := True;
end;

function DocumentType.InfoMonetarioData_Specified(Index: Integer): boolean;
begin
  Result := FInfoMonetarioData_Specified;
end;

procedure DocumentType.SetLsAdicionales(Index: Integer; const AArrayOfAdicionalesType: ArrayOfAdicionalesType);
begin
  FLsAdicionales := AArrayOfAdicionalesType;
  FLsAdicionales_Specified := True;
end;

function DocumentType.LsAdicionales_Specified(Index: Integer): boolean;
begin
  Result := FLsAdicionales_Specified;
end;

procedure DocumentType.SetLsDetalle(Index: Integer; const AArrayOfDetalleType: ArrayOfDetalleType);
begin
  FLsDetalle := AArrayOfDetalleType;
  FLsDetalle_Specified := True;
end;

function DocumentType.LsDetalle_Specified(Index: Integer): boolean;
begin
  Result := FLsDetalle_Specified;
end;

procedure DocumentType.SetLsDetalleCargos(Index: Integer; const AArrayOfDetalleCargosType: ArrayOfDetalleCargosType);
begin
  FLsDetalleCargos := AArrayOfDetalleCargosType;
  FLsDetalleCargos_Specified := True;
end;

function DocumentType.LsDetalleCargos_Specified(Index: Integer): boolean;
begin
  Result := FLsDetalleCargos_Specified;
end;

procedure DocumentType.SetLsDetalleImpuesto(Index: Integer; const AArrayOfImpuestoDetalleType: ArrayOfImpuestoDetalleType);
begin
  FLsDetalleImpuesto := AArrayOfImpuestoDetalleType;
  FLsDetalleImpuesto_Specified := True;
end;

function DocumentType.LsDetalleImpuesto_Specified(Index: Integer): boolean;
begin
  Result := FLsDetalleImpuesto_Specified;
end;

procedure DocumentType.SetLsImpuestos(Index: Integer; const AArrayOfImpuestoType: ArrayOfImpuestoType);
begin
  FLsImpuestos := AArrayOfImpuestoType;
  FLsImpuestos_Specified := True;
end;

function DocumentType.LsImpuestos_Specified(Index: Integer): boolean;
begin
  Result := FLsImpuestos_Specified;
end;

procedure DocumentType.SetReferenciaFactura(Index: Integer; const AReferenciaType: ReferenciaType);
begin
  FReferenciaFactura := AReferenciaType;
  FReferenciaFactura_Specified := True;
end;

function DocumentType.ReferenciaFactura_Specified(Index: Integer): boolean;
begin
  Result := FReferenciaFactura_Specified;
end;

procedure DocumentType.SetSoftwareSeguridad(Index: Integer; const ASoftwareSeguridadType: SoftwareSeguridadType);
begin
  FSoftwareSeguridad := ASoftwareSeguridadType;
  FSoftwareSeguridad_Specified := True;
end;

function DocumentType.SoftwareSeguridad_Specified(Index: Integer): boolean;
begin
  Result := FSoftwareSeguridad_Specified;
end;

procedure DocumentType.SetlsAnticipos(Index: Integer; const AArrayOfAnticipoType: ArrayOfAnticipoType);
begin
  FlsAnticipos := AArrayOfAnticipoType;
  FlsAnticipos_Specified := True;
end;

function DocumentType.lsAnticipos_Specified(Index: Integer): boolean;
begin
  Result := FlsAnticipos_Specified;
end;

procedure DocumentType.SetlsCargos(Index: Integer; const AArrayOfCargosType: ArrayOfCargosType);
begin
  FlsCargos := AArrayOfCargosType;
  FlsCargos_Specified := True;
end;

function DocumentType.lsCargos_Specified(Index: Integer): boolean;
begin
  Result := FlsCargos_Specified;
end;

procedure DocumentType.SetlsDetalleNotas(Index: Integer; const AArrayOfDetalleNotaType: ArrayOfDetalleNotaType);
begin
  FlsDetalleNotas := AArrayOfDetalleNotaType;
  FlsDetalleNotas_Specified := True;
end;

function DocumentType.lsDetalleNotas_Specified(Index: Integer): boolean;
begin
  Result := FlsDetalleNotas_Specified;
end;

procedure DocumentType.SetlsFormaPago(Index: Integer; const AArrayOfFormaPagoType: ArrayOfFormaPagoType);
begin
  FlsFormaPago := AArrayOfFormaPagoType;
  FlsFormaPago_Specified := True;
end;

function DocumentType.lsFormaPago_Specified(Index: Integer): boolean;
begin
  Result := FlsFormaPago_Specified;
end;

procedure DocumentType.SetlsNotas(Index: Integer; const AArrayOfNotaType: ArrayOfNotaType);
begin
  FlsNotas := AArrayOfNotaType;
  FlsNotas_Specified := True;
end;

function DocumentType.lsNotas_Specified(Index: Integer): boolean;
begin
  Result := FlsNotas_Specified;
end;

procedure AdicionalesType.SetSecuencia(Index: Integer; const AInteger: Integer);
begin
  FSecuencia := AInteger;
  FSecuencia_Specified := True;
end;

function AdicionalesType.Secuencia_Specified(Index: Integer): boolean;
begin
  Result := FSecuencia_Specified;
end;

procedure AdicionalesType.SetValorAtributo(Index: Integer; const AWideString: WideString);
begin
  FValorAtributo := AWideString;
  FValorAtributo_Specified := True;
end;

function AdicionalesType.ValorAtributo_Specified(Index: Integer): boolean;
begin
  Result := FValorAtributo_Specified;
end;

destructor DetalleType.Destroy;
begin
  FreeAndNil(FVencimiento);
  inherited Destroy;
end;

procedure DetalleType.SetCantidad(Index: Integer; const AWideString: WideString);
begin
  FCantidad := AWideString;
  FCantidad_Specified := True;
end;

function DetalleType.Cantidad_Specified(Index: Integer): boolean;
begin
  Result := FCantidad_Specified;
end;

procedure DetalleType.SetCodificacion(Index: Integer; const AWideString: WideString);
begin
  FCodificacion := AWideString;
  FCodificacion_Specified := True;
end;

function DetalleType.Codificacion_Specified(Index: Integer): boolean;
begin
  Result := FCodificacion_Specified;
end;

procedure DetalleType.SetCodigo(Index: Integer; const AWideString: WideString);
begin
  FCodigo := AWideString;
  FCodigo_Specified := True;
end;

function DetalleType.Codigo_Specified(Index: Integer): boolean;
begin
  Result := FCodigo_Specified;
end;

procedure DetalleType.SetCodigoEstandar(Index: Integer; const AWideString: WideString);
begin
  FCodigoEstandar := AWideString;
  FCodigoEstandar_Specified := True;
end;

function DetalleType.CodigoEstandar_Specified(Index: Integer): boolean;
begin
  Result := FCodigoEstandar_Specified;
end;

procedure DetalleType.SetDescripcion(Index: Integer; const AWideString: WideString);
begin
  FDescripcion := AWideString;
  FDescripcion_Specified := True;
end;

function DetalleType.Descripcion_Specified(Index: Integer): boolean;
begin
  Result := FDescripcion_Specified;
end;

procedure DetalleType.SetDetFacConsecutivo(Index: Integer; const AInteger: Integer);
begin
  FDetFacConsecutivo := AInteger;
  FDetFacConsecutivo_Specified := True;
end;

function DetalleType.DetFacConsecutivo_Specified(Index: Integer): boolean;
begin
  Result := FDetFacConsecutivo_Specified;
end;

procedure DetalleType.SetMarca(Index: Integer; const AWideString: WideString);
begin
  FMarca := AWideString;
  FMarca_Specified := True;
end;

function DetalleType.Marca_Specified(Index: Integer): boolean;
begin
  Result := FMarca_Specified;
end;

procedure DetalleType.SetModelo(Index: Integer; const AWideString: WideString);
begin
  FModelo := AWideString;
  FModelo_Specified := True;
end;

function DetalleType.Modelo_Specified(Index: Integer): boolean;
begin
  Result := FModelo_Specified;
end;

procedure DetalleType.SetPrecioSinImpuestos(Index: Integer; const AWideString: WideString);
begin
  FPrecioSinImpuestos := AWideString;
  FPrecioSinImpuestos_Specified := True;
end;

function DetalleType.PrecioSinImpuestos_Specified(Index: Integer): boolean;
begin
  Result := FPrecioSinImpuestos_Specified;
end;

procedure DetalleType.SetPrecioTotal(Index: Integer; const AWideString: WideString);
begin
  FPrecioTotal := AWideString;
  FPrecioTotal_Specified := True;
end;

function DetalleType.PrecioTotal_Specified(Index: Integer): boolean;
begin
  Result := FPrecioTotal_Specified;
end;

procedure DetalleType.SetPrecioUnitario(Index: Integer; const AWideString: WideString);
begin
  FPrecioUnitario := AWideString;
  FPrecioUnitario_Specified := True;
end;

function DetalleType.PrecioUnitario_Specified(Index: Integer): boolean;
begin
  Result := FPrecioUnitario_Specified;
end;

procedure DetalleType.SetTama_oPaquete(Index: Integer; const AWideString: WideString);
begin
  FTama_oPaquete := AWideString;
  FTama_oPaquete_Specified := True;
end;

function DetalleType.Tama_oPaquete_Specified(Index: Integer): boolean;
begin
  Result := FTama_oPaquete_Specified;
end;

procedure DetalleType.SetUnidadMedida(Index: Integer; const AWideString: WideString);
begin
  FUnidadMedida := AWideString;
  FUnidadMedida_Specified := True;
end;

function DetalleType.UnidadMedida_Specified(Index: Integer): boolean;
begin
  Result := FUnidadMedida_Specified;
end;

procedure DetalleType.SetVencimiento(Index: Integer; const ATXSDateTime: TXSDateTime);
begin
  FVencimiento := ATXSDateTime;
  FVencimiento_Specified := True;
end;

function DetalleType.Vencimiento_Specified(Index: Integer): boolean;
begin
  Result := FVencimiento_Specified;
end;

procedure ImpuestoDetalleType.SetBaseImponible(Index: Integer; const AWideString: WideString);
begin
  FBaseImponible := AWideString;
  FBaseImponible_Specified := True;
end;

function ImpuestoDetalleType.BaseImponible_Specified(Index: Integer): boolean;
begin
  Result := FBaseImponible_Specified;
end;

procedure ImpuestoDetalleType.SetCodigoImpuesto(Index: Integer; const AWideString: WideString);
begin
  FCodigoImpuesto := AWideString;
  FCodigoImpuesto_Specified := True;
end;

function ImpuestoDetalleType.CodigoImpuesto_Specified(Index: Integer): boolean;
begin
  Result := FCodigoImpuesto_Specified;
end;

procedure ImpuestoDetalleType.SetEsRetencionImpuesto(Index: Integer; const ABoolean: Boolean);
begin
  FEsRetencionImpuesto := ABoolean;
  FEsRetencionImpuesto_Specified := True;
end;

function ImpuestoDetalleType.EsRetencionImpuesto_Specified(Index: Integer): boolean;
begin
  Result := FEsRetencionImpuesto_Specified;
end;

procedure ImpuestoDetalleType.SetNombreImpuesto(Index: Integer; const AWideString: WideString);
begin
  FNombreImpuesto := AWideString;
  FNombreImpuesto_Specified := True;
end;

function ImpuestoDetalleType.NombreImpuesto_Specified(Index: Integer): boolean;
begin
  Result := FNombreImpuesto_Specified;
end;

procedure ImpuestoDetalleType.SetPorcentaje(Index: Integer; const AWideString: WideString);
begin
  FPorcentaje := AWideString;
  FPorcentaje_Specified := True;
end;

function ImpuestoDetalleType.Porcentaje_Specified(Index: Integer): boolean;
begin
  Result := FPorcentaje_Specified;
end;

procedure ImpuestoDetalleType.SetSecuencia(Index: Integer; const AInteger: Integer);
begin
  FSecuencia := AInteger;
  FSecuencia_Specified := True;
end;

function ImpuestoDetalleType.Secuencia_Specified(Index: Integer): boolean;
begin
  Result := FSecuencia_Specified;
end;

procedure ImpuestoDetalleType.SetValorImpuesto(Index: Integer; const AWideString: WideString);
begin
  FValorImpuesto := AWideString;
  FValorImpuesto_Specified := True;
end;

function ImpuestoDetalleType.ValorImpuesto_Specified(Index: Integer): boolean;
begin
  Result := FValorImpuesto_Specified;
end;

procedure ImpuestoType.SetBaseImponible(Index: Integer; const AWideString: WideString);
begin
  FBaseImponible := AWideString;
  FBaseImponible_Specified := True;
end;

function ImpuestoType.BaseImponible_Specified(Index: Integer): boolean;
begin
  Result := FBaseImponible_Specified;
end;

procedure ImpuestoType.SetCodigoImpuesto(Index: Integer; const AWideString: WideString);
begin
  FCodigoImpuesto := AWideString;
  FCodigoImpuesto_Specified := True;
end;

function ImpuestoType.CodigoImpuesto_Specified(Index: Integer): boolean;
begin
  Result := FCodigoImpuesto_Specified;
end;

procedure ImpuestoType.SetEsRetencionImpuesto(Index: Integer; const ABoolean: Boolean);
begin
  FEsRetencionImpuesto := ABoolean;
  FEsRetencionImpuesto_Specified := True;
end;

function ImpuestoType.EsRetencionImpuesto_Specified(Index: Integer): boolean;
begin
  Result := FEsRetencionImpuesto_Specified;
end;

procedure ImpuestoType.SetNombreImpuesto(Index: Integer; const AWideString: WideString);
begin
  FNombreImpuesto := AWideString;
  FNombreImpuesto_Specified := True;
end;

function ImpuestoType.NombreImpuesto_Specified(Index: Integer): boolean;
begin
  Result := FNombreImpuesto_Specified;
end;

procedure ImpuestoType.SetPorcentaje(Index: Integer; const AWideString: WideString);
begin
  FPorcentaje := AWideString;
  FPorcentaje_Specified := True;
end;

function ImpuestoType.Porcentaje_Specified(Index: Integer): boolean;
begin
  Result := FPorcentaje_Specified;
end;

procedure ImpuestoType.SetValorImpuesto(Index: Integer; const AWideString: WideString);
begin
  FValorImpuesto := AWideString;
  FValorImpuesto_Specified := True;
end;

function ImpuestoType.ValorImpuesto_Specified(Index: Integer): boolean;
begin
  Result := FValorImpuesto_Specified;
end;

procedure AnticipoType.SetFacAnticipoFecha(Index: Integer; const AWideString: WideString);
begin
  FFacAnticipoFecha := AWideString;
  FFacAnticipoFecha_Specified := True;
end;

function AnticipoType.FacAnticipoFecha_Specified(Index: Integer): boolean;
begin
  Result := FFacAnticipoFecha_Specified;
end;

procedure AnticipoType.SetFacAnticipoSec(Index: Integer; const AWideString: WideString);
begin
  FFacAnticipoSec := AWideString;
  FFacAnticipoSec_Specified := True;
end;

function AnticipoType.FacAnticipoSec_Specified(Index: Integer): boolean;
begin
  Result := FFacAnticipoSec_Specified;
end;

procedure AnticipoType.SetFacAnticipoTotal(Index: Integer; const AWideString: WideString);
begin
  FFacAnticipoTotal := AWideString;
  FFacAnticipoTotal_Specified := True;
end;

function AnticipoType.FacAnticipoTotal_Specified(Index: Integer): boolean;
begin
  Result := FFacAnticipoTotal_Specified;
end;

procedure CargosType.SetFacCargoBase(Index: Integer; const AWideString: WideString);
begin
  FFacCargoBase := AWideString;
  FFacCargoBase_Specified := True;
end;

function CargosType.FacCargoBase_Specified(Index: Integer): boolean;
begin
  Result := FFacCargoBase_Specified;
end;

procedure CargosType.SetFacCargoPorc(Index: Integer; const AWideString: WideString);
begin
  FFacCargoPorc := AWideString;
  FFacCargoPorc_Specified := True;
end;

function CargosType.FacCargoPorc_Specified(Index: Integer): boolean;
begin
  Result := FFacCargoPorc_Specified;
end;

procedure CargosType.SetFacCargoRazon(Index: Integer; const AWideString: WideString);
begin
  FFacCargoRazon := AWideString;
  FFacCargoRazon_Specified := True;
end;

function CargosType.FacCargoRazon_Specified(Index: Integer): boolean;
begin
  Result := FFacCargoRazon_Specified;
end;

procedure CargosType.SetFacCargoSecuencia(Index: Integer; const AWideString: WideString);
begin
  FFacCargoSecuencia := AWideString;
  FFacCargoSecuencia_Specified := True;
end;

function CargosType.FacCargoSecuencia_Specified(Index: Integer): boolean;
begin
  Result := FFacCargoSecuencia_Specified;
end;

procedure CargosType.SetFacCargoTipo(Index: Integer; const AWideString: WideString);
begin
  FFacCargoTipo := AWideString;
  FFacCargoTipo_Specified := True;
end;

function CargosType.FacCargoTipo_Specified(Index: Integer): boolean;
begin
  Result := FFacCargoTipo_Specified;
end;

procedure CargosType.SetFacCargoTotal(Index: Integer; const AWideString: WideString);
begin
  FFacCargoTotal := AWideString;
  FFacCargoTotal_Specified := True;
end;

function CargosType.FacCargoTotal_Specified(Index: Integer): boolean;
begin
  Result := FFacCargoTotal_Specified;
end;

procedure CargosType.SetFacCodDescuento(Index: Integer; const AWideString: WideString);
begin
  FFacCodDescuento := AWideString;
  FFacCodDescuento_Specified := True;
end;

function CargosType.FacCodDescuento_Specified(Index: Integer): boolean;
begin
  Result := FFacCodDescuento_Specified;
end;

procedure DetalleNotaType.SetDetSecuencia(Index: Integer; const AInteger: Integer);
begin
  FDetSecuencia := AInteger;
  FDetSecuencia_Specified := True;
end;

function DetalleNotaType.DetSecuencia_Specified(Index: Integer): boolean;
begin
  Result := FDetSecuencia_Specified;
end;

procedure DetalleNotaType.SetNota(Index: Integer; const AWideString: WideString);
begin
  FNota := AWideString;
  FNota_Specified := True;
end;

function DetalleNotaType.Nota_Specified(Index: Integer): boolean;
begin
  Result := FNota_Specified;
end;

procedure DetalleNotaType.SetSecuencia(Index: Integer; const AInteger: Integer);
begin
  FSecuencia := AInteger;
  FSecuencia_Specified := True;
end;

function DetalleNotaType.Secuencia_Specified(Index: Integer): boolean;
begin
  Result := FSecuencia_Specified;
end;

procedure FormaPagoType.SetFacFormaPago(Index: Integer; const AWideString: WideString);
begin
  FFacFormaPago := AWideString;
  FFacFormaPago_Specified := True;
end;

function FormaPagoType.FacFormaPago_Specified(Index: Integer): boolean;
begin
  Result := FFacFormaPago_Specified;
end;

procedure FormaPagoType.SetFacMetodoPago(Index: Integer; const AWideString: WideString);
begin
  FFacMetodoPago := AWideString;
  FFacMetodoPago_Specified := True;
end;

function FormaPagoType.FacMetodoPago_Specified(Index: Integer): boolean;
begin
  Result := FFacMetodoPago_Specified;
end;

procedure FormaPagoType.SetFacVencimientoFac(Index: Integer; const AWideString: WideString);
begin
  FFacVencimientoFac := AWideString;
  FFacVencimientoFac_Specified := True;
end;

function FormaPagoType.FacVencimientoFac_Specified(Index: Integer): boolean;
begin
  Result := FFacVencimientoFac_Specified;
end;

procedure NotaType.SetDescripcionCabecera(Index: Integer; const AWideString: WideString);
begin
  FDescripcionCabecera := AWideString;
  FDescripcionCabecera_Specified := True;
end;

function NotaType.DescripcionCabecera_Specified(Index: Integer): boolean;
begin
  Result := FDescripcionCabecera_Specified;
end;

destructor ResponseType.Destroy;
var
  I: Integer;
begin
  for I := 0 to Length(FProceso)-1 do
    FreeAndNil(FProceso[I]);
  SetLength(FProceso, 0);
  inherited Destroy;
end;

procedure ResponseType.SetCodigoTransaccion(Index: Integer; const AWideString: WideString);
begin
  FCodigoTransaccion := AWideString;
  FCodigoTransaccion_Specified := True;
end;

function ResponseType.CodigoTransaccion_Specified(Index: Integer): boolean;
begin
  Result := FCodigoTransaccion_Specified;
end;

procedure ResponseType.SetDetalleRespuesta(Index: Integer; const AWideString: WideString);
begin
  FDetalleRespuesta := AWideString;
  FDetalleRespuesta_Specified := True;
end;

function ResponseType.DetalleRespuesta_Specified(Index: Integer): boolean;
begin
  Result := FDetalleRespuesta_Specified;
end;

procedure ResponseType.SetDetalles(Index: Integer; const AWideString: WideString);
begin
  FDetalles := AWideString;
  FDetalles_Specified := True;
end;

function ResponseType.Detalles_Specified(Index: Integer): boolean;
begin
  Result := FDetalles_Specified;
end;

procedure ResponseType.SetNumeroTransaccion(Index: Integer; const AWideString: WideString);
begin
  FNumeroTransaccion := AWideString;
  FNumeroTransaccion_Specified := True;
end;

function ResponseType.NumeroTransaccion_Specified(Index: Integer): boolean;
begin
  Result := FNumeroTransaccion_Specified;
end;

procedure ResponseType.SetPDFBase64(Index: Integer; const AWideString: WideString);
begin
  FPDFBase64 := AWideString;
  FPDFBase64_Specified := True;
end;

function ResponseType.PDFBase64_Specified(Index: Integer): boolean;
begin
  Result := FPDFBase64_Specified;
end;

procedure ResponseType.SetProceso(Index: Integer; const AArrayOfProcesoType: ArrayOfProcesoType);
begin
  FProceso := AArrayOfProcesoType;
  FProceso_Specified := True;
end;

function ResponseType.Proceso_Specified(Index: Integer): boolean;
begin
  Result := FProceso_Specified;
end;

procedure ResponseType.SetTipoTransaccion(Index: Integer; const AWideString: WideString);
begin
  FTipoTransaccion := AWideString;
  FTipoTransaccion_Specified := True;
end;

function ResponseType.TipoTransaccion_Specified(Index: Integer): boolean;
begin
  Result := FTipoTransaccion_Specified;
end;

procedure ResponseType.SetXML(Index: Integer; const AWideString: WideString);
begin
  FXML := AWideString;
  FXML_Specified := True;
end;

function ResponseType.XML_Specified(Index: Integer): boolean;
begin
  Result := FXML_Specified;
end;

destructor ProcesoType.Destroy;
begin
  FreeAndNil(FOrder);
  inherited Destroy;
end;

procedure ProcesoType.SetFechaHoraAccion(Index: Integer; const AWideString: WideString);
begin
  FFechaHoraAccion := AWideString;
  FFechaHoraAccion_Specified := True;
end;

function ProcesoType.FechaHoraAccion_Specified(Index: Integer): boolean;
begin
  Result := FFechaHoraAccion_Specified;
end;

procedure ProcesoType.SetMensaje(Index: Integer; const AWideString: WideString);
begin
  FMensaje := AWideString;
  FMensaje_Specified := True;
end;

function ProcesoType.Mensaje_Specified(Index: Integer): boolean;
begin
  Result := FMensaje_Specified;
end;

procedure ProcesoType.SetOrder(Index: Integer; const ATXSDecimal: TXSDecimal);
begin
  FOrder := ATXSDecimal;
  FOrder_Specified := True;
end;

function ProcesoType.Order_Specified(Index: Integer): boolean;
begin
  Result := FOrder_Specified;
end;

procedure ProcesoType.SetProceso(Index: Integer; const AWideString: WideString);
begin
  FProceso := AWideString;
  FProceso_Specified := True;
end;

function ProcesoType.Proceso_Specified(Index: Integer): boolean;
begin
  Result := FProceso_Specified;
end;

procedure DetalleCargosType.SetDetCargoBase(Index: Integer; const AWideString: WideString);
begin
  FDetCargoBase := AWideString;
  FDetCargoBase_Specified := True;
end;

function DetalleCargosType.DetCargoBase_Specified(Index: Integer): boolean;
begin
  Result := FDetCargoBase_Specified;
end;

procedure DetalleCargosType.SetDetCargoPorc(Index: Integer; const AWideString: WideString);
begin
  FDetCargoPorc := AWideString;
  FDetCargoPorc_Specified := True;
end;

function DetalleCargosType.DetCargoPorc_Specified(Index: Integer): boolean;
begin
  Result := FDetCargoPorc_Specified;
end;

procedure DetalleCargosType.SetDetCargoRazon(Index: Integer; const AWideString: WideString);
begin
  FDetCargoRazon := AWideString;
  FDetCargoRazon_Specified := True;
end;

function DetalleCargosType.DetCargoRazon_Specified(Index: Integer): boolean;
begin
  Result := FDetCargoRazon_Specified;
end;

procedure DetalleCargosType.SetDetCargoSecuencia(Index: Integer; const AWideString: WideString);
begin
  FDetCargoSecuencia := AWideString;
  FDetCargoSecuencia_Specified := True;
end;

function DetalleCargosType.DetCargoSecuencia_Specified(Index: Integer): boolean;
begin
  Result := FDetCargoSecuencia_Specified;
end;

procedure DetalleCargosType.SetDetCargoTipo(Index: Integer; const AWideString: WideString);
begin
  FDetCargoTipo := AWideString;
  FDetCargoTipo_Specified := True;
end;

function DetalleCargosType.DetCargoTipo_Specified(Index: Integer): boolean;
begin
  Result := FDetCargoTipo_Specified;
end;

procedure DetalleCargosType.SetDetCargoTotal(Index: Integer; const AWideString: WideString);
begin
  FDetCargoTotal := AWideString;
  FDetCargoTotal_Specified := True;
end;

function DetalleCargosType.DetCargoTotal_Specified(Index: Integer): boolean;
begin
  Result := FDetCargoTotal_Specified;
end;

procedure DetalleCargosType.SetDetSecuencia(Index: Integer; const AWideString: WideString);
begin
  FDetSecuencia := AWideString;
  FDetSecuencia_Specified := True;
end;

function DetalleCargosType.DetSecuencia_Specified(Index: Integer): boolean;
begin
  Result := FDetSecuencia_Specified;
end;

initialization
  InvRegistry.RegisterInterface(TypeInfo(IService), 'http://tempuri.org/', '');
  InvRegistry.RegisterDefaultSOAPAction(TypeInfo(IService), 'http://tempuri.org/IService/%operationName%');
  InvRegistry.RegisterInvokeOptions(TypeInfo(IService), ioDocument);
  RemClassRegistry.RegisterXSClass(AutorizacionType, 'http://schemas.datacontract.org/2004/07/WCFServiceData', 'AutorizacionType');
  RemClassRegistry.RegisterXSClass(CompradorType, 'http://schemas.datacontract.org/2004/07/WCFServiceData', 'CompradorType');
  RemClassRegistry.RegisterXSClass(EmisorType, 'http://schemas.datacontract.org/2004/07/WCFServiceData', 'EmisorType');
  RemClassRegistry.RegisterXSClass(EncabezadoType, 'http://schemas.datacontract.org/2004/07/WCFServiceData', 'EncabezadoType');
  RemClassRegistry.RegisterXSClass(InfoMonetarioType, 'http://schemas.datacontract.org/2004/07/WCFServiceData', 'InfoMonetarioType');
  RemClassRegistry.RegisterXSInfo(TypeInfo(ArrayOfAdicionalesType), 'http://schemas.datacontract.org/2004/07/WCFServiceData', 'ArrayOfAdicionalesType');
  RemClassRegistry.RegisterXSInfo(TypeInfo(ArrayOfDetalleType), 'http://schemas.datacontract.org/2004/07/WCFServiceData', 'ArrayOfDetalleType');
  RemClassRegistry.RegisterXSInfo(TypeInfo(ArrayOfDetalleCargosType), 'http://schemas.datacontract.org/2004/07/', 'ArrayOfDetalleCargosType');
  RemClassRegistry.RegisterXSInfo(TypeInfo(ArrayOfImpuestoDetalleType), 'http://schemas.datacontract.org/2004/07/WCFServiceData', 'ArrayOfImpuestoDetalleType');
  RemClassRegistry.RegisterXSInfo(TypeInfo(ArrayOfImpuestoType), 'http://schemas.datacontract.org/2004/07/WCFServiceData', 'ArrayOfImpuestoType');
  RemClassRegistry.RegisterXSClass(ReferenciaType, 'http://schemas.datacontract.org/2004/07/WCFServiceData', 'ReferenciaType');
  RemClassRegistry.RegisterXSClass(SoftwareSeguridadType, 'http://schemas.datacontract.org/2004/07/WCFServiceData', 'SoftwareSeguridadType');
  RemClassRegistry.RegisterXSInfo(TypeInfo(ArrayOfAnticipoType), 'http://schemas.datacontract.org/2004/07/WCFServiceData', 'ArrayOfAnticipoType');
  RemClassRegistry.RegisterXSInfo(TypeInfo(ArrayOfCargosType), 'http://schemas.datacontract.org/2004/07/WCFServiceData', 'ArrayOfCargosType');
  RemClassRegistry.RegisterXSInfo(TypeInfo(ArrayOfDetalleNotaType), 'http://schemas.datacontract.org/2004/07/WCFServiceData', 'ArrayOfDetalleNotaType');
  RemClassRegistry.RegisterXSInfo(TypeInfo(ArrayOfFormaPagoType), 'http://schemas.datacontract.org/2004/07/WCFServiceData', 'ArrayOfFormaPagoType');
  RemClassRegistry.RegisterXSInfo(TypeInfo(ArrayOfNotaType), 'http://schemas.datacontract.org/2004/07/WCFServiceData', 'ArrayOfNotaType');
  RemClassRegistry.RegisterXSClass(DocumentType, 'http://schemas.datacontract.org/2004/07/WCFServiceData', 'DocumentType');
  RemClassRegistry.RegisterXSClass(AdicionalesType, 'http://schemas.datacontract.org/2004/07/WCFServiceData', 'AdicionalesType');
  RemClassRegistry.RegisterXSClass(DetalleType, 'http://schemas.datacontract.org/2004/07/WCFServiceData', 'DetalleType');
  RemClassRegistry.RegisterExternalPropName(TypeInfo(DetalleType), 'Tama_oPaquete', 'TamañoPaquete');
  RemClassRegistry.RegisterXSClass(ImpuestoDetalleType, 'http://schemas.datacontract.org/2004/07/WCFServiceData', 'ImpuestoDetalleType');
  RemClassRegistry.RegisterXSClass(ImpuestoType, 'http://schemas.datacontract.org/2004/07/WCFServiceData', 'ImpuestoType');
  RemClassRegistry.RegisterXSClass(AnticipoType, 'http://schemas.datacontract.org/2004/07/WCFServiceData', 'AnticipoType');
  RemClassRegistry.RegisterXSClass(CargosType, 'http://schemas.datacontract.org/2004/07/WCFServiceData', 'CargosType');
  RemClassRegistry.RegisterXSClass(DetalleNotaType, 'http://schemas.datacontract.org/2004/07/WCFServiceData', 'DetalleNotaType');
  RemClassRegistry.RegisterXSClass(FormaPagoType, 'http://schemas.datacontract.org/2004/07/WCFServiceData', 'FormaPagoType');
  RemClassRegistry.RegisterXSClass(NotaType, 'http://schemas.datacontract.org/2004/07/WCFServiceData', 'NotaType');
  RemClassRegistry.RegisterXSInfo(TypeInfo(ArrayOfProcesoType), 'http://schemas.datacontract.org/2004/07/WCFServiceData', 'ArrayOfProcesoType');
  RemClassRegistry.RegisterXSClass(ResponseType, 'http://schemas.datacontract.org/2004/07/WCFServiceData', 'ResponseType');
  RemClassRegistry.RegisterXSClass(ProcesoType, 'http://schemas.datacontract.org/2004/07/WCFServiceData', 'ProcesoType');
  RemClassRegistry.RegisterXSClass(DocumentType2, 'http://schemas.datacontract.org/2004/07/WCFServiceData', 'DocumentType2', 'DocumentType');
  RemClassRegistry.RegisterXSClass(AutorizacionType2, 'http://schemas.datacontract.org/2004/07/WCFServiceData', 'AutorizacionType2', 'AutorizacionType');
  RemClassRegistry.RegisterXSClass(CompradorType2, 'http://schemas.datacontract.org/2004/07/WCFServiceData', 'CompradorType2', 'CompradorType');
  RemClassRegistry.RegisterXSClass(EmisorType2, 'http://schemas.datacontract.org/2004/07/WCFServiceData', 'EmisorType2', 'EmisorType');
  RemClassRegistry.RegisterXSClass(EncabezadoType2, 'http://schemas.datacontract.org/2004/07/WCFServiceData', 'EncabezadoType2', 'EncabezadoType');
  RemClassRegistry.RegisterXSClass(InfoMonetarioType2, 'http://schemas.datacontract.org/2004/07/WCFServiceData', 'InfoMonetarioType2', 'InfoMonetarioType');
  RemClassRegistry.RegisterXSClass(AdicionalesType2, 'http://schemas.datacontract.org/2004/07/WCFServiceData', 'AdicionalesType2', 'AdicionalesType');
  RemClassRegistry.RegisterXSClass(DetalleType2, 'http://schemas.datacontract.org/2004/07/WCFServiceData', 'DetalleType2', 'DetalleType');
  RemClassRegistry.RegisterXSClass(ImpuestoDetalleType2, 'http://schemas.datacontract.org/2004/07/WCFServiceData', 'ImpuestoDetalleType2', 'ImpuestoDetalleType');
  RemClassRegistry.RegisterXSClass(ImpuestoType2, 'http://schemas.datacontract.org/2004/07/WCFServiceData', 'ImpuestoType2', 'ImpuestoType');
  RemClassRegistry.RegisterXSClass(ReferenciaType2, 'http://schemas.datacontract.org/2004/07/WCFServiceData', 'ReferenciaType2', 'ReferenciaType');
  RemClassRegistry.RegisterXSClass(SoftwareSeguridadType2, 'http://schemas.datacontract.org/2004/07/WCFServiceData', 'SoftwareSeguridadType2', 'SoftwareSeguridadType');
  RemClassRegistry.RegisterXSClass(AnticipoType2, 'http://schemas.datacontract.org/2004/07/WCFServiceData', 'AnticipoType2', 'AnticipoType');
  RemClassRegistry.RegisterXSClass(CargosType2, 'http://schemas.datacontract.org/2004/07/WCFServiceData', 'CargosType2', 'CargosType');
  RemClassRegistry.RegisterXSClass(DetalleNotaType2, 'http://schemas.datacontract.org/2004/07/WCFServiceData', 'DetalleNotaType2', 'DetalleNotaType');
  RemClassRegistry.RegisterXSClass(FormaPagoType2, 'http://schemas.datacontract.org/2004/07/WCFServiceData', 'FormaPagoType2', 'FormaPagoType');
  RemClassRegistry.RegisterXSClass(NotaType2, 'http://schemas.datacontract.org/2004/07/WCFServiceData', 'NotaType2', 'NotaType');
  RemClassRegistry.RegisterXSClass(ResponseType2, 'http://schemas.datacontract.org/2004/07/WCFServiceData', 'ResponseType2', 'ResponseType');
  RemClassRegistry.RegisterXSClass(ProcesoType2, 'http://schemas.datacontract.org/2004/07/WCFServiceData', 'ProcesoType2', 'ProcesoType');
  RemClassRegistry.RegisterXSClass(DetalleCargosType, 'http://schemas.datacontract.org/2004/07/', 'DetalleCargosType');
  RemClassRegistry.RegisterXSClass(DetalleCargosType2, 'http://schemas.datacontract.org/2004/07/', 'DetalleCargosType2', 'DetalleCargosType');

end.