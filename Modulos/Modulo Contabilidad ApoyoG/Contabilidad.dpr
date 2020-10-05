program Contabilidad;

uses
  Forms,
  Consts in '..\..\units\Consts.pas',
  Unit_BuscarClave in '..\..\units\Unit_BuscarClave.pas' {frmBuscarClave},
  Unit_BuscarCodigo in '..\..\units\Unit_BuscarCodigo.pas' {frmBuscarCodigo},
  Unit_DmComprobante in '..\..\units\Unit_DmComprobante.pas' {DmComprobante: TDataModule},
  Unit_Dmpuc in '..\..\units\Unit_Dmpuc.pas' {Dmpuc: TDataModule},
  Unit_Mantenimientopuc in '..\..\units\Unit_Mantenimientopuc.pas' {frmMantenimientopuc},
  UnitBalanceGeneral in '..\..\units\UnitBalanceGeneral.pas' {frmBalanceGeneral},
  UnitBalanceGralDetallado in '..\..\units\UnitBalanceGralDetallado.pas' {frmBalanceGralDetallado},
  UnitBuscarColocacion in '..\..\units\UnitBuscarColocacion.pas' {frmBusquedadeColocacion},
  UnitBuscarPersona in '..\..\units\UnitBuscarPersona.pas' {frmBuscarPersona},
  UnitBuscarTexto in '..\..\units\UnitBuscarTexto.pas' {frmBuscarTexto},
  UnitConsultaExtractoCaptacion in '..\..\units\UnitConsultaExtractoCaptacion.pas' {frmConsultaExtractoCaptacion},
  UnitConsultaProductos in '..\..\units\UnitConsultaProductos.pas' {frmConsultaProductos},
  UnitdmCaptacion in '..\..\units\UnitdmCaptacion.pas' {dmCaptacion: TDataModule},
  UnitdmColocacion in '..\..\units\UnitdmColocacion.pas' {dmColocacion: TDataModule},
  UnitdmGeneral in '..\..\units\UnitdmGeneral.pas' {dmGeneral: TDataModule},
  UnitdmPersona in '..\..\units\UnitdmPersona.pas' {dmPersona: TDataModule},
  UnitImagenAmpliada in '..\..\units\UnitImagenAmpliada.pas' {frmImagenAmpliada},
  UnitImagenesPersona in '..\..\units\UnitImagenesPersona.pas' {frmImagenesPersona},
  UnitInformeAuxiliar in 'units\UnitInformeAuxiliar.pas' {frmInformeAuxiliares},
  UnitPantallaProgreso in '..\..\units\UnitPantallaProgreso.pas' {frmProgreso},
  UnitRecuperacionsaldos in '..\..\units\UnitRecuperacionsaldos.pas' {frmrecuperacionsaldos},
  UnitRecuperarComprobante in '..\..\units\UnitRecuperarComprobante.pas' {frmRecuperarComprobante},
  UnitTomarFoto in '..\..\units\UnitTomarFoto.pas' {frmTomarFoto},
  unitLogin in '..\..\units\unitLogin.pas' {frmLogin},
  Unit_buscarcomprobante in '..\..\units\Unit_buscarcomprobante.pas' {frmbuscarcomprobante},
  unitCierreDia in '..\..\units\unitCierreDia.pas' {frmcierredia},
  UnitGlobales in '..\..\Globales\UnitGlobales.pas',
  UnitPlanillaResumen in '..\..\units\UnitPlanillaResumen.pas' {frmPlanillaResumen},
  UnitConsolidarBalance in '..\..\units\UnitConsolidarBalance.pas' {frmConsolidarBalance},
  UnitBalanceDetalladoConsolidado in '..\..\units\UnitBalanceDetalladoConsolidado.pas' {frmBalanceDetalladoConsolidado},
  UnitSumatorias in '..\..\units\UnitSumatorias.pas' {frmSumatorias},
  UnitRecuperarLiquidacionColocacion in '..\..\units\UnitRecuperarLiquidacionColocacion.pas' {frmRecuperarLiquidacionColocacion},
  UnitCambiarContrasena in '..\..\units\UnitCambiarContrasena.pas' {frmCambiarContrasena},
  UnitAgregarObservacion in '..\..\units\UnitAgregarObservacion.pas' {frmAgregarObservacionCobro},
  UnitDireccionesAsociados in '..\..\units\UnitDireccionesAsociados.pas' {frmDireccionesAsociado},
  UnitConsultaGarantias in '..\..\units\UnitConsultaGarantias.pas' {frmConsultaGarantias},
  UnitConsultaLiquidacion in '..\..\units\UnitConsultaLiquidacion.pas' {frmConsultaLiquidacion},
  UnitCdatporEdades in '..\..\units\UnitCdatporEdades.pas' {frmCdatporEdades},
  UnitCreaciondePersona in '..\..\units\UnitCreaciondePersona.pas' {frmCreacionPersona},
  unitCausacionCdat in '..\..\units\unitCausacionCdat.pas' {frmcausacioncdat},
  UnitObservacionesCambioEstado in '..\..\units\UnitObservacionesCambioEstado.pas' {frmObservacionesCambioEstado},
  UnitBarridoAhoApo in '..\..\units\UnitBarridoAhoApo.pas' {frmBarridoAhoApo},
  UnitListadoCaptacionesConsolidado in '..\..\units\UnitListadoCaptacionesConsolidado.pas' {frmListadoCaptacionesConsolidado},
  UnitRevalorizacionAportes in '..\..\units\UnitRevalorizacionAportes.pas' {frmRevalorizacionAportes},
  UnitInformeTasaPromedio in '..\..\units\UnitInformeTasaPromedio.pas' {frmInformeTasaPromedio},
  UnitBuscarControlCobro in '..\..\units\UnitBuscarControlCobro.pas' {frmBusquedaControlCobro},
  UnitReLogin in '..\..\units\UnitReLogin.pas' {frmReLogin},
  UnitVistaPreliminar in '..\..\units\UnitVistaPreliminar.pas' {frmVistaPreliminar},
  Unit_Comprobante in '..\..\units\Unit_Comprobante.pas' {frmComprobante},
  digitacuenta in '..\..\units\digitacuenta.pas' {digita},
  digitacuentaC in 'units\digitacuentaC.pas' {digitaC},
  Unit_ComprobanteC in 'units\Unit_ComprobanteC.pas' {frmComprobanteC},
  UnitPaginarPapel in 'units\UnitPaginarPapel.pas' {frmPaginarPapel},
  UnitConsolidarBalAgencia in 'units\UnitConsolidarBalAgencia.pas' {frmConsolidarBalAgencia},
  UnitConsolidarSaldoIAgencia in '..\..\units\UnitConsolidarSaldoIAgencia.pas' {frmConsolidarSaldoIAgencia},
  UnitLibroCajaDiario in '..\..\units\UnitLibroCajaDiario.pas' {frmLibroRCajaDiario},
  UnitConsolidarCajaDiario in '..\..\units\UnitConsolidarCajaDiario.pas' {frmConsolidarCajaDiario},
  UnitCajaDiario in '..\..\units\UnitCajaDiario.pas' {frmCajaDiario},
  UnitRegistrarObservacion in '..\..\units\UnitRegistrarObservacion.pas' {frmRegistrarObservacion},
  UnitControldeObservaciones in '..\..\units\UnitControldeObservaciones.pas' {frmControldeObservaciones},
  UnitBalanceConsolidado in '..\..\units\UnitBalanceConsolidado.pas' {frmBalanceConsolidado},
  UnitEstadoIyGConsolidado in '..\..\units\UnitEstadoIyGConsolidado.pas' {frmEstadoIyGConsolidado},
  UnitLibroRMayorYBalance in '..\..\units\UnitLibroRMayorYBalance.pas' {frmLibroMayorYBalance},
  UnitActualizoTasasColocacion in '..\..\units\UnitActualizoTasasColocacion.pas' {frmActualizoTasas},
  unitMain in 'units\unitMain.pas' {frmMain},
  UnitSaldosIniciales in '..\..\units\UnitSaldosIniciales.pas' {frmSaldosIniciales},
  UnitImpresion in '..\..\units\UnitImpresion.pas' {FrmImpresion},
  Videocap in '..\..\units\Videocap.pas',
  VFW in '..\..\units\VfW.pas',
  UnitTomaHuella in '..\..\units\UnitTomaHuella.pas' {frmRegister},
  UnitVerificarHuella in '..\..\units\UnitVerificarHuella.pas' {frmVerify},
  UnitLiquidacionGral in '..\..\units\UnitLiquidacionGral.pas' {frmLiquidacionGral},
  UnitConsultaSol in '..\..\units\UnitConsultaSol.pas' {FrmConsultaSol},
  UnitDmSolicitud in '..\..\units\UnitDmSolicitud.pas' {DmSolicitud: TDataModule},
  UnitDescObservacion in '..\..\units\UnitDescObservacion.pas' {FrmDescObsrevacion},
  UnitCalculoTasas in '..\..\units\UnitCalculoTasas.pas' {frmCalculoTasas},
  UnitTipoImpresion in '..\..\units\UnitTipoImpresion.pas' {frmTipoImpresion},
  UnitMantenimientoPrivilegiados in '..\..\units\UnitMantenimientoPrivilegiados.pas' {frmMantenimientoPrivilegiados},
  UnitRelacionChequesEnCanje in '..\..\units\UnitRelacionChequesEnCanje.pas' {frmRelacionChequesEnCanje},
  UnitNotas in '..\..\units\UnitNotas.pas' {FrmNotas},
  UnitCierreAnual in '..\..\units\UnitCierreAnual.pas' {frmCierreAnual},
  UnitAyudasSolidaridad in 'units\UnitAyudasSolidaridad.pas' {frmAyudas},
  UnitPlanillaConsolidada in '..\..\units\UnitPlanillaConsolidada.pas' {FrmPlanillaConsolidada},
  UnitBalanceporOficinas in '..\..\units\UnitBalanceporOficinas.pas' {frmBalanceporOficinas},
  UnitBalanceConsolidadoTxt in '..\..\units\UnitBalanceConsolidadoTxt.pas' {frmBalanceConsolidadoTxt},
  UnitExportarSaldos in 'units\UnitExportarSaldos.pas' {frmExportarSaldos},
  UnitCambios in '..\..\units\UnitCambios.pas' {FrmCambios},
  UnitAgregarObservacionSol in '..\..\units\UnitAgregarObservacionSol.pas' {frmAgregarObservacionSol},
  UnitBuscarCiiu in '..\..\units\UnitBuscarCiiu.pas' {frmBuscarCIIU},
  UnitCreacionPersonaIndependiente in '..\..\units\UnitCreacionPersonaIndependiente.pas' {frmCreacionPersonaIndependiente},
  UnitGlobalesCol in '..\..\Globales\UnitGlobalesCol.pas',
  UnitProcesoCierreAno in 'units\UnitProcesoCierreAno.pas' {frmCierreAno},
  UnitGeneraCartas in '..\..\Units\UnitGeneraCartas.pas' {FrmGeneraCarta},
  FR_View in '..\..\..\Archivos de programa\FastReports\FastReport\source\FR_View.pas' {frPreviewForm},
  FR_ChBox in '..\..\..\Archivos de programa\FastReports\FastReport\source\FR_ChBox.pas',
  FR_Cross in '..\..\..\Archivos de programa\FastReports\FastReport\source\fr_cross.pas' {frCrossForm},
  UnitPlantillas in 'units\UnitPlantillas.pas' {frmPlantilla},
  FR_Shape in '..\..\..\Archivos de programa\FastReports\FastReport\source\FR_Shape.pas',
  UnitInformeEstadoIngresosGastos in '..\..\Units\UnitInformeEstadoIngresosGastos.pas' {frmInformeEstadoIngresosGastos},
  UnitInformeBalance in '..\..\Units\UnitInformeBalance.pas' {frmInformeBalance},
  UnitLibroBalance in 'units\UnitLibroBalance.pas' {frmLibroBalanceGeneral},
  UnitBalanceGralDetalladoAnyo in 'units\UnitBalanceGralDetalladoAnyo.pas' {frmBalanceGralDetalladoAnyo},
  UnitExtractoCredito in '..\..\Units\UnitExtractoCredito.pas' {frmExtractoCredito},
  UnitAnularAbono in '..\..\Units\UnitAnularAbono.pas' {frmAnularAbono},
  UnitExtractoColocacion in '..\..\Units\UnitExtractoColocacion.pas' {FrmExtractoColocacion},
  UnitListadodePrueba in '\\Vboxsvr\sgft\FunApoyo\Modulos\Modulo Contabilidad ApoyoG\units\UnitListadodePrueba.pas' {frmListadodePrueba},
  UnitSmsRequest in '\\Vboxsvr\sgft\FunApoyo\Units\UnitSmsRequest.pas',
  UnitSmsCredentials in '\\Vboxsvr\sgft\FunApoyo\Units\UnitSmsCredentials.pas',
  UnitBalance in '\\Vboxsvr\sgft\FunApoyo\Modulos\Modulo Contabilidad ApoyoG\units\UnitBalance.pas' {frmBalance},
  DataSetToExcel in '\\Vboxsvr\sgft\FunApoyo\Units\DataSetToExcel.pas',
  Jsons in '\\VBOXSVR\sgft\FunApoyo\Units\Jsons.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.Title := 'Contabilidad';
  Application.CreateForm(TfrmMain, frmMain);
  Application.Run;
end.
