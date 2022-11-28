program ContabilidadFiltros;

uses
  Forms,
  unitMain in 'Units\unitMain.pas' {frmMain},
  UnitdmGeneral in 'Units\UnitdmGeneral.pas' {dmGeneral: TDataModule},
  UnitGlobales in 'Units\UnitGlobales.pas',
  Unit_DmComprobante in 'Units\Unit_DmComprobante.pas' {DmComprobante: TDataModule},
  Unit_ComprobanteC in 'Units\Unit_ComprobanteC.pas' {frmComprobanteC},
  unitLogin in 'Units\unitLogin.pas' {frmLogin},
  Unit_Dmpuc in 'Units\Unit_Dmpuc.pas' {Dmpuc: TDataModule},
  Unit_buscarcomprobante in 'Units\Unit_buscarcomprobante.pas' {frmbuscarcomprobante},
  UnitPantallaProgreso in 'Units\UnitPantallaProgreso.pas' {frmProgreso},
  UnitPlandeCuentas in 'Units\UnitPlandeCuentas.pas' {frmPlandeCuentas},
  UnitBalanceGeneral in 'Units\UnitBalanceGeneral.pas' {frmBalanceGeneral},
  unitCierreDia in 'Units\unitCierreDia.pas' {frmcierredia},
  UnitBalanceGralDetallado in 'Units\UnitBalanceGralDetallado.pas' {frmBalanceGralDetallado},
  UnitInformeAuxiliar in 'Units\UnitInformeAuxiliar.pas' {frmInformeAuxiliares},
  UnitCajaDiario in 'Units\UnitCajaDiario.pas' {frmCajaDiario},
  UnitCopia in 'Units\UnitCopia.pas' {FrmCopia},
  UnitPersona in 'Units\UnitPersona.pas' {FrmPersona},
  UnitPlanillaResumen in 'Units\UnitPlanillaResumen.pas' {frmPlanillaResumen},
  UnitRecuperacionsaldos in 'Units\UnitRecuperacionsaldos.pas' {frmrecuperacionsaldos},
  Consts in 'Units\Consts.pas',
  UnitCotrasena in 'Units\UnitCotrasena.pas' {FrmContrasena},
  UnitUsuario in 'Units\UnitUsuario.pas' {FrmUsuario},
  UnitCierreAnual in 'Units\UnitCierreAnual.pas' {frmcierreanual},
  UnitProcesoCierreAno in 'Units\UnitProcesoCierreAno.pas' {frmCierreAno},
  UnitPlantillas in 'Units\UnitPlantillas.pas' {frmPlantilla};

{$R *.res}

begin
  Application.Initialize;
  Application.Title := 'SoftCount';
  Application.CreateForm(TdmGeneral, dmGeneral);
  Application.CreateForm(TfrmMain, frmMain);
  Application.Run;
end.
