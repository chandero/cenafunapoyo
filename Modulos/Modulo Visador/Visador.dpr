program Visador;

uses
  Forms,
  unitMain in 'Units\unitMain.pas' {frmMain},
  UnitSumatorias in '..\..\units\UnitSumatorias.pas' {frmSumatorias},
  UnitdmGeneral in '..\..\units\UnitdmGeneral.pas' {dmGeneral: TDataModule},
  Unit_DmComprobante in '..\..\units\Unit_DmComprobante.pas' {DmComprobante: TDataModule},
  UnitDireccionesAsociados in '..\..\units\UnitDireccionesAsociados.pas' {frmDireccionesAsociado},
  UnitdmCaptacion in '..\..\units\UnitdmCaptacion.pas' {dmCaptacion: TDataModule},
  UnitdmColocacion in '..\..\units\UnitdmColocacion.pas' {dmColocacion: TDataModule},
  UnitdmPersona in '..\..\units\UnitdmPersona.pas' {dmPersona: TDataModule},
  UnitVistaPreliminar in '..\..\units\UnitVistaPreliminar.pas' {frmVistaPreliminar},
  unitLogin in '..\..\units\unitLogin.pas' {frmLogin},
  UnitPantallaProgreso in '..\..\units\UnitPantallaProgreso.pas' {frmProgreso},
  UnitConsultaProductos in '..\..\units\UnitConsultaProductos.pas' {frmConsultaProductos},
  UnitBuscarPersona in '..\..\units\UnitBuscarPersona.pas' {frmBuscarPersona},
  UnitConsultaExtractoCaptacion in '..\..\units\UnitConsultaExtractoCaptacion.pas' {frmConsultaExtractoCaptacion},
  UnitBuscarTexto in '..\..\units\UnitBuscarTexto.pas' {frmBuscarTexto},
  Consts in '..\..\units\Consts.pas',
  UnitBuscarColocacion in '..\..\units\UnitBuscarColocacion.pas' {frmBusquedadeColocacion},
  UnitTablaPagoColocacion in '..\..\units\UnitTablaPagoColocacion.pas' {frmTablaPagoColocacion},
  UnitConsultaGarantias in '..\..\units\UnitConsultaGarantias.pas' {frmConsultaGarantias},
  UnitGlobales in '..\..\Globales\UnitGlobales.pas',
  UnitCalculoTasas in '..\..\units\UnitCalculoTasas.pas' {frmCalculoTasas},
  UnitExtractoColocacion in '..\..\units\UnitExtractoColocacion.pas' {FrmExtractoColocacion},
  UnitRecuperarLiquidacionColocacion in '..\..\units\UnitRecuperarLiquidacionColocacion.pas' {frmRecuperarLiquidacionColocacion},
  UnitConsultaColocacion in '..\..\units\UnitConsultaColocacion.pas' {frmConsultaColocacion},
  UnitTablaLiquidacion in '..\..\units\UnitTablaLiquidacion.pas' {frmTablaLiquidacion},
  UnitCambiarContrasena in '..\..\units\UnitCambiarContrasena.pas' {frmCambiarContrasena},
  UnitControlCobroCartera in '..\..\units\UnitControlCobroCartera.pas' {frmControlCobroCartera},
  UnitObservacionesCambioEstado in '..\..\units\UnitObservacionesCambioEstado.pas' {frmObservacionesCambioEstado},
  UnitAgregarObservacion in '..\..\units\UnitAgregarObservacion.pas' {frmAgregarObservacionCobro},
  UnitConsultaLiquidacion in '..\..\units\UnitConsultaLiquidacion.pas' {frmConsultaLiquidacion},
  UnitCreaciondePersona in '..\..\units\UnitCreaciondePersona.pas' {frmCreacionPersona},
  UnitBuscarControlCobro in '..\..\units\UnitBuscarControlCobro.pas' {frmBusquedaControlCobro},
  Unit_Comprobante in '..\..\units\Unit_Comprobante.pas' {frmComprobante},
  UnitReLogin in '..\..\units\UnitReLogin.pas' {frmReLogin},
  digitacuenta in '..\..\units\digitacuenta.pas' {digita},
  Unit_Mantenimientopuc in '..\..\units\Unit_Mantenimientopuc.pas' {frmMantenimientopuc},
  Unit_Dmpuc in '..\..\units\Unit_Dmpuc.pas' {Dmpuc: TDataModule},
  Unit_BuscarCodigo in '..\..\units\Unit_BuscarCodigo.pas' {frmBuscarCodigo},
  Unit_BuscarClave in '..\..\units\Unit_BuscarClave.pas' {frmBuscarClave},
  Unit_buscarcomprobante in '..\..\units\Unit_buscarcomprobante.pas' {frmbuscarcomprobante},
  UnitRegistrarObservacion in '..\..\units\UnitRegistrarObservacion.pas' {frmRegistrarObservacion},
  UnitControldeObservaciones in '..\..\units\UnitControldeObservaciones.pas' {frmControldeObservaciones},
  UnitInformeAuxiliar in '..\..\units\UnitInformeAuxiliar.pas' {frmInformeAuxiliares},
  UnitInformeAseguradoraCartera in '..\..\units\UnitInformeAseguradoraCartera.pas' {frmInformeAseguradoraCartera},
  UnitInformeColocacionFiltrado in '..\..\units\UnitInformeColocacionFiltrado.pas' {frmInformeColocacionesFiltrado},
  Unittesoreria in '..\..\units\Unittesoreria.pas' {Frmtesoreria},
  UnitOperacionesAcumulada in '..\..\units\UnitOperacionesAcumulada.pas' {frmOperacionesAcumuladas},
  UnitOperacionesEfectivo in '..\..\units\UnitOperacionesEfectivo.pas' {frmOperacionesEfectivo},
  UnitVisarDesembolso in '..\..\units\UnitVisarDesembolso.pas' {frmVisarDesembolso},
  UnitDmSolicitud in '..\..\units\UnitDmSolicitud.pas' {DmSolicitud: TDataModule},
  UnitImpresion in '..\..\units\UnitImpresion.pas' {FrmImpresion},
  FR_Shape in 'C:\Archivos de programa\FastReports\FastReport\source\FR_Shape.pas',
  UnitVerificarHuella in '..\..\units\UnitVerificarHuella.pas' {frmVerify},
  VFW in '..\..\units\VfW.pas',
  Videocap in '..\..\units\Videocap.pas',
  UnitTomaHuella in '..\..\units\UnitTomaHuella.pas' {frmRegister},
  UnitTomarFoto in '..\..\units\UnitTomarFoto.pas' {frmTomarFoto},
  UnitLiquidacionGral in '..\..\units\UnitLiquidacionGral.pas' {frmLiquidacionGral},
  UnitConsultaSol in '..\..\units\UnitConsultaSol.pas' {FrmConsultaSol},
  UnitDescObservacion in '..\..\units\UnitDescObservacion.pas' {FrmDescObsrevacion},
  UnitTipoImpresion in '..\..\units\UnitTipoImpresion.pas' {frmTipoImpresion},
  UnitRelacionChequesEnCanje in '..\..\units\UnitRelacionChequesEnCanje.pas' {frmRelacionChequesEnCanje},
  UnitExtractoCredito in '\\WinServer\Repositorio\Sistemas\units\UnitExtractoCredito.pas' {frmExtractoCredito},
  UnitCambios in '\\Winserver\repositorio\sistemas\units\UnitCambios.pas' {FrmCambios},
  UnitBuscarCiiu in '\\Winserver\Repositorio\Sistemas\units\UnitBuscarCiiu.pas' {frmBuscarCIIU},
  UnitAgregarObservacionSol in '\\Winserver\Repositorio\Sistemas\units\UnitAgregarObservacionSol.pas' {frmAgregarObservacionSol},
  UnitGlobalesCol in '\\winserver\repositorio\sistemas\Globales\UnitGlobalesCol.pas',
  UnitCreacionPersonaIndependiente in '\\winserver\repositorio\sistemas\units\UnitCreacionPersonaIndependiente.pas' {frmCreacionPersonaIndependiente};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TdmGeneral, dmGeneral);
  Application.CreateForm(TfrmMain, frmMain);
  Application.Run;
end.
