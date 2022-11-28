program Captaciones;

uses
  Forms,
  unitMain in 'Units\unitMain.pas' {frmMain},
  UnitVistaPreliminar in '..\..\units\UnitVistaPreliminar.pas' {frmVistaPreliminar},
  UnitBuscarTexto in '..\..\units\UnitBuscarTexto.pas' {frmBuscarTexto},
  UnitCaptaciones in '..\..\units\UnitCaptaciones.pas',
  UnitConsultaExtractoCaptacion in '..\..\units\UnitConsultaExtractoCaptacion.pas' {frmConsultaExtractoCaptacion},
  UnitCreacionCaptacion in '..\..\units\UnitCreacionCaptacion.pas' {frmCreacionCaptacion},
  UnitCreaciondePersona in '..\..\units\UnitCreaciondePersona.pas' {frmCreacionPersona},
  UnitdmCaptacion in '..\..\units\UnitdmCaptacion.pas' {dmCaptacion: TDataModule},
  UnitdmColocacion in '..\..\units\UnitdmColocacion.pas' {dmColocacion: TDataModule},
  UnitdmLiquidacionCaptacion in '..\..\units\UnitdmLiquidacionCaptacion.pas' {dmLiquidacionCaptacion: TDataModule},
  UnitdmPersona in '..\..\units\UnitdmPersona.pas' {dmPersona: TDataModule},
  UnitEfectivoNota in '..\..\units\UnitEfectivoNota.pas' {frmEfectivoNota},
  UnitImpresionCaptacion in '..\..\units\UnitImpresionCaptacion.pas' {frmImpresionCaptacion},
  UnitInformeGeneraldeCaptaciones in '..\..\units\UnitInformeGeneraldeCaptaciones.pas' {frmInformeGeneraldeCaptaciones},
  UnitLiquidacionInteresesCaptacion1 in 'LIquidacion\UnitLiquidacionInteresesCaptacion1.pas' {frmLiquidacionInteresesCaptacion1},
  unitLogin in '..\..\units\unitLogin.pas' {frmLogin},
  UnitMantenimientoCaptacion in '..\..\units\UnitMantenimientoCaptacion.pas' {frmMantenimientoCaptacion},
  UnitPantallaProgreso in '..\..\units\UnitPantallaProgreso.pas' {frmProgreso},
  UnitProrrogaCaptaciones in '..\..\units\UnitProrrogaCaptaciones.pas' {frmProrrogaCaptacion},
  UnitRangosdeLibreta in '..\..\units\UnitRangosdeLibreta.pas' {frmRangosdeLibreta},
  UnitRecuperarTablaLiquidacionCaptacion in '..\..\units\UnitRecuperarTablaLiquidacionCaptacion.pas' {frmRecuperarTablaLiquidacionCaptacion},
  UnitSaldarCaptacion in '..\..\units\UnitSaldarCaptacion.pas' {frmSaldarCaptacion},
  UnitTomarFoto in '..\..\units\UnitTomarFoto.pas' {frmTomarFoto},
  UnitBuscarPersona in '..\..\units\UnitBuscarPersona.pas' {frmBuscarPersona},
  Consts in '..\..\units\Consts.pas',
  UnitConsultaCaptacion in '..\..\units\UnitConsultaCaptacion.pas' {frmConsultaCaptacion},
  UnitImagenAmpliada in '..\..\units\UnitImagenAmpliada.pas' {frmImagenAmpliada},
  Unit_DmComprobante in '..\..\units\Unit_DmComprobante.pas' {DmComprobante: TDataModule},
  Unit_buscarcomprobante in '..\..\units\Unit_buscarcomprobante.pas' {frmbuscarcomprobante},
  Unit_Comprobante in '..\..\units\Unit_Comprobante.pas' {frmComprobante},
  Unit_Dmpuc in '..\..\units\Unit_Dmpuc.pas' {Dmpuc: TDataModule},
  Unit_Mantenimientopuc in '..\..\units\Unit_Mantenimientopuc.pas' {frmMantenimientopuc},
  Unit_BuscarClave in '..\..\units\Unit_BuscarClave.pas' {frmBuscarClave},
  Unit_BuscarCodigo in '..\..\units\Unit_BuscarCodigo.pas' {frmBuscarCodigo},
  digitacuenta in '..\..\units\digitacuenta.pas' {digita},
  UnitGlobales in '..\..\Globales\UnitGlobales.pas',
  UnitEstadoCaptacion in '..\..\units\UnitEstadoCaptacion.pas' {frmEstadoCaptacion},
  UnitTasaPromedioCertificados in '..\..\units\UnitTasaPromedioCertificados.pas' {frmTasaPromedioCertificados},
  UnitListadoGeneralCaptaciones in '..\..\units\UnitListadoGeneralCaptaciones.pas' {frmListadoGeneralCaptaciones},
  UnitSumatorias in '..\..\units\UnitSumatorias.pas' {frmSumatorias},
  UnitCambiarContrasena in '..\..\units\UnitCambiarContrasena.pas' {frmCambiarContrasena},
  UnitControlCobroCartera in '..\..\units\UnitControlCobroCartera.pas' {frmControlCobroCartera},
  UnitCalculoTasas in '..\..\units\UnitCalculoTasas.pas' {frmCalculoTasas},
  UnitAgregarObservacion in '..\..\units\UnitAgregarObservacion.pas' {frmAgregarObservacionCobro},
  UnitConsultaLiquidacion in '..\..\units\UnitConsultaLiquidacion.pas' {frmConsultaLiquidacion},
  UnitBuscarColocacion in '..\..\units\UnitBuscarColocacion.pas' {frmBusquedadeColocacion},
  UnitConsultaGarantias in '..\..\units\UnitConsultaGarantias.pas' {frmConsultaGarantias},
  UnitDireccionesAsociados in '..\..\units\UnitDireccionesAsociados.pas' {frmDireccionesAsociado},
  UnitObservacionesCambioEstado in '..\..\units\UnitObservacionesCambioEstado.pas' {frmObservacionesCambioEstado},
  UnitVerificarHuella in '..\..\units\UnitVerificarHuella.pas' {frmVerify},
  UnitTomaHuella in '..\..\units\UnitTomaHuella.pas' {frmRegister},
  UnitActayEducacion in '..\..\units\UnitActayEducacion.pas' {frmActayEducacion},
  UnitInformeTasaPromedio in '..\..\units\UnitInformeTasaPromedio.pas' {frmInformeTasaPromedio},
  UnitExtractoColocacion in '..\..\units\UnitExtractoColocacion.pas' {FrmExtractoColocacion},
  UnitBuscarControlCobro in '..\..\units\UnitBuscarControlCobro.pas' {frmBusquedaControlCobro},
  UnitReLogin in '..\..\units\UnitReLogin.pas' {frmReLogin},
  UnitProyeccionPagoCDAT in '..\..\units\UnitProyeccionPagoCDAT.pas' {frmProyeccionPagoCDAT},
  UnitInformePorRangosCaptacion in '..\..\units\UnitInformePorRangosCaptacion.pas' {frmInformeCaptacionesporRango},
  UnitAsignarTarjetaDebitoN in '..\..\units\UnitAsignarTarjetaDebitoN.pas' {frmAsignarTarjetaDebitoN},
  unitCausacionCdat in '..\..\units\otraunit\unitCausacionCdat.pas' {frmcausacioncdat},
  UnitInactivacionCaptaciones in '..\..\units\UnitInactivacionCaptaciones.pas' {frmInactivacionCaptaciones},
  UnitInformeCuentasporEstado in '..\..\units\UnitInformeCuentasporEstado.pas' {frmInformeCuentasporEstado},
  UnitConsignacionNacional in '..\..\units\UnitConsignacionNacional.pas' {frmConsignacionNacional},
  UnitConsultaProductos in '..\..\units\UnitConsultaProductos.pas' {frmConsultaProductos},
  UnitControldeObservaciones in '..\..\units\UnitControldeObservaciones.pas' {frmControldeObservaciones},
  UnitRegistrarObservacion in '..\..\units\UnitRegistrarObservacion.pas' {frmRegistrarObservacion},
  UnitListadoCaptacionesConsolidado in '..\..\units\UnitListadoCaptacionesConsolidado.pas' {frmListadoCaptacionesConsolidado},
  UnitImpresion in '..\..\units\UnitImpresion.pas' {FrmImpresion},
  UnitActivarImagenes in '..\..\units\UnitActivarImagenes.pas' {frmActivarImagenes},
  Videocap in '..\..\units\Videocap.pas',
  VFW in '..\..\units\VfW.pas',
  UnitDescObservacion in '..\..\units\UnitDescObservacion.pas' {FrmDescObsrevacion},
  UnitDmSolicitud in '..\..\units\UnitDmSolicitud.pas' {DmSolicitud: TDataModule},
  UnitLiquidacionGral in '..\..\units\UnitLiquidacionGral.pas' {frmLiquidacionGral},
  UnitTipoImpresion in '..\..\units\UnitTipoImpresion.pas' {frmTipoImpresion},
  UnitCredivida in '..\..\units\UnitCredivida.pas' {FrmCredivida},
  UnitInformeCuentasTarjeta in '..\..\units\UnitInformeCuentasTarjeta.pas' {frmTarjetasEstado},
  UnitInformeTarjetasEntregadas in '..\..\units\UnitInformeTarjetasEntregadas.pas' {frmTarjetasEntregadas},
  UnitInformeTarjetasCanceladas in '..\..\units\UnitInformeTarjetasCanceladas.pas' {frmTarjetasCanceladas},
  UnitInformeTarjetasBloqueadas in '..\..\units\UnitInformeTarjetasBloqueadas.pas' {frmTarjetasBloqueadas},
  UnitPromedioCaptacion in '..\..\units\UnitPromedioCaptacion.pas' {frmPromedio},
  UnitInformePersonasErrorFechaNacimiento in '..\..\units\UnitInformePersonasErrorFechaNacimiento.pas' {frmInfPerErrFecNac},
  UnitRelacionChequesEnCanje in '..\..\units\UnitRelacionChequesEnCanje.pas' {frmRelacionChequesEnCanje},
  UnitValidarHuellaAsociado in '..\..\units\UnitValidarHuellaAsociado.pas' {frmValidarHuellaAsociado},
  DataSetToExcel in '..\..\units\DataSetToExcel.pas',
  UnitCaptacionesRe in '..\..\units\UnitCaptacionesRe.pas' {FrmCaptacionesRe},
  UnitInformeAsociadosSinDetalle in 'Units\UnitInformeAsociadosSinDetalle.pas' {frmInformeAsociadossinDetalle},
  UnitInformeTarjetasSaldoRojo in '..\..\units\UnitInformeTarjetasSaldoRojo.pas' {frmTarjetaSaldosRojo},
  UnitSaldosCuentasconTarjetaDebito in '..\..\units\UnitSaldosCuentasconTarjetaDebito.pas' {frmSaldosCuentasconTarjetaDebito},
  UnitExtractoCredito in '..\..\units\UnitExtractoCredito.pas' {frmExtractoCredito},
  UnitBarridoTD in '..\..\units\UnitBarridoTD.pas' {FrmBarridoTD},
  UnitCausacionContractual in '..\..\units\UnitCausacionContractual.pas' {FrmCausacionContractual},
  UnitCertificaReteFuenteCap in '..\..\units\UnitCertificaReteFuenteCap.pas' {frmCertificaReteFuenteCap},
  UnitConsultarListado in '..\..\units\UnitConsultarListado.pas' {frmVerListados},
  UnitBarridoCredivida in '..\..\units\UnitBarridoCredivida.pas' {FrmBarridoCredivida},
  UnitRecuperaCredivida in '..\..\units\UnitRecuperaCredivida.pas' {FrmRecuperaCredivida},
  UnitPeticionTraslado in '..\..\units\UnitPeticionTraslado.pas' {FrmPeticionTraslado},
  UnitEstudioTraslado in '..\..\units\UnitEstudioTraslado.pas' {FrmEstudioTraslado},
  UnitRealizarTraslado in '..\..\units\UnitRealizarTraslado.pas' {FrmRealizarTraslado},
  UnitRepTraslado in '..\..\units\UnitRepTraslado.pas' {FrmRepTraslado},
  UnitExencionGMF in '..\..\units\UnitExencionGMF.pas' {frmExencionGMF},
  UnitInformeCuentasSaldadas in '..\..\units\UnitInformeCuentasSaldadas.pas' {frmInformeCuentasSaldadas},
  UnitConsultaExtractoCaptacionOtros in 'Units\UnitConsultaExtractoCaptacionOtros.pas' {frmConsultaExtractoCaptacionOtros},
  UnitCuentasSaldosNegativos in '..\..\units\UnitCuentasSaldosNegativos.pas' {frmCuentasSaldosNegativos},
  UnitCambios in '..\..\units\UnitCambios.pas' {FrmCambios},
  UnitAgregarObservacionSol in '..\..\units\UnitAgregarObservacionSol.pas' {frmAgregarObservacionSol},
  UnitRetiroAsociado in '..\..\units\UnitRetiroAsociado.pas' {frmRetiroAsociado},
  UnitLiquidacionInteresesCaptacion in '..\..\units\UnitLiquidacionInteresesCaptacion.pas' {frmLiquidacionInteresesCaptacion},
  UnitSeguroJuvenil in '..\..\units\UnitSeguroJuvenil.pas' {frmSeguroJuvenil},
  UnitControlCarneJuvenil in '..\..\units\UnitControlCarneJuvenil.pas' {FrmControlCarneJuvenil},
  UnitSelComprobante in '..\..\units\UnitSelComprobante.pas' {FrmSelComprobante},
  UnitConsultaProductosAg in '..\..\units\UnitConsultaProductosAg.pas' {frmConsultaProductosAg},
  UnitPedidoPlasticosGlobal in '..\..\units\UnitPedidoPlasticosGlobal.pas' {frmPedidoPlasticosGlobal},
  UnitInformePlasticos in '..\..\units\UnitInformePlasticos.pas' {frmInformePlasticos},
  UnitClaseXml in '..\..\units\UnitClaseXml.pas',
  UnitdmGeneral in '..\..\units\UnitdmGeneral.pas' {dmGeneral: TDataModule},
  UnitBuscarCiiu in '..\..\units\UnitBuscarCiiu.pas' {frmBuscarCIIU},
  UnitControlContractual in '..\..\units\UnitControlContractual.pas' {FrmControlContractual},
  UnitExencionGMF_MOD in '..\..\units\UnitExencionGMF_MOD.pas' {frmExencionGMFmod},
  UnitCreacionPersonaIndependiente in '..\..\units\UnitCreacionPersonaIndependiente.pas' {frmCreacionPersonaIndependiente},
  SZCodeBaseX in 'Units\SZCodeBaseX.pas',
  UnitGeneraCartas in '..\..\Units\UnitGeneraCartas.pas' {FrmGeneraCarta},
  UnitAgregaPoliza in '..\..\Units\UnitAgregaPoliza.pas' {FrmAgregaPoliza},
  UnitConsultaJuvenil in '..\..\Units\UnitConsultaJuvenil.pas' {FrmConsultaJuvenil},
  UnitImprimirSeguro in '..\..\Units\UnitImprimirSeguro.pas' {FrmImprimirSeguro},
  UnitGlobalesCol in '..\..\Globales\UnitGlobalesCol.pas',
  UnitPlanillaConsolidada in '..\..\Units\UnitPlanillaConsolidada.pas' {FrmPlanillaConsolidada},
  UnitGestionTercero in '..\..\Units\UnitGestionTercero.pas' {frmGestionTercero},
  UnitSmsRequest in '\\Vboxsvr\sgft\FunApoyo\Units\UnitSmsRequest.pas',
  UnitSmsCredentials in '\\Vboxsvr\sgft\FunApoyo\Units\UnitSmsCredentials.pas',
  UnitAnularAbono in '\\Vboxsvr\sgft\FunApoyo\Units\UnitAnularAbono.pas' {frmAnularAbono},
  Jsons in '\\Vboxsvr\sgft\FunApoyo\Units\Jsons.pas',
  UnitDialogoSMS in '\\Vboxsvr\sgft\FunApoyo\Units\UnitDialogoSMS.pas' {DialogSMS},
  UnitCompromisoJudicial in '\\Vboxsvr\sgft\FunApoyo\Modulos\Modulo Cartera\Unit\UnitCompromisoJudicial.pas' {frmCompromisoJudicial};

{$R *.res}

begin
  Application.Initialize;
  Application.Title := 'Captaciones';
  Application.CreateForm(TfrmMain, frmMain);
  Application.Run;
end.
