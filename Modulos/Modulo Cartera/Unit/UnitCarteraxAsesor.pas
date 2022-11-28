unit UnitCarteraxAsesor;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, IBCustomDataSet, IBQuery, StdCtrls, Buttons, ExtCtrls,
  DBClient, DBCtrls, UnitDmGeneral, Provider, frxClass, DataSetToExcel,
  frxDBSet, ComCtrls, DateUtils, IBDatabase, IBSQL;

type
  TfrmCarteraxAsesor = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    IBQAsesor: TIBQuery;
    DSAsesor: TDataSource;
    ListAsesor: TDBLookupComboBox;
    CDSAsesor: TClientDataSet;
    CDSAsesorASES_ID: TIntegerField;
    CDSAsesorASESOR: TStringField;
    btnCerrar: TBitBtn;
    btnProceso: TBitBtn;
    btnReporte: TBitBtn;
    btnAExcel: TBitBtn;
    IBQProceso: TIBQuery;
    CDSProceso: TClientDataSet;
    DSPProceso: TDataSetProvider;
    frxReport1: TfrxReport;
    SD1: TSaveDialog;
    frxDBDataset1: TfrxDBDataset;
    pbar: TProgressBar;
    CDSProcesoASES_ID: TIntegerField;
    CDSProcesoASESOR: TStringField;
    CDSProcesoID_COLOCACION: TStringField;
    CDSProcesoDOCUMENTO: TStringField;
    CDSProcesoNOMBRE: TStringField;
    CDSProcesoFECHA_DESEMBOLSO: TDateField;
    CDSProcesoVALOR_DESEMBOLSO: TBCDField;
    CDSProcesoSALDO: TBCDField;
    CDSProcesoVALOR_CUOTA: TBCDField;
    CDSProcesoFECHA_VENCIMIENTO: TDateField;
    CDSProcesoDIAS_MORA: TIntegerField;
    IBQProcesoASES_ID: TIntegerField;
    IBQProcesoASESOR: TIBStringField;
    IBQProcesoID_COLOCACION: TIBStringField;
    IBQProcesoDOCUMENTO: TIBStringField;
    IBQProcesoNOMBRE: TIBStringField;
    IBQProcesoFECHA_DESEMBOLSO: TDateField;
    IBQProcesoVALOR_DESEMBOLSO: TIBBCDField;
    IBQProcesoSALDO: TIBBCDField;
    IBQProcesoVALOR_CUOTA: TIBBCDField;
    IBQProcesoDESCRIPCION_ESTADO_COLOCACION: TIBStringField;
    IBQProcesoFECHA_VENCIMIENTO: TDateField;
    IBQProcesoFECHA_INTERES: TDateField;
    IBQProcesoAMORTIZA_INTERES: TIntegerField;
    IBQProcesoDIAS_PAGO: TIntegerField;
    CDSProcesoDESCRIPCION_ESTADO_COLOCACION: TStringField;
    IBQcompromiso: TIBQuery;
    CDSProcesoCOMPROMISO: TStringField;
    IBSQL1: TIBSQL;
    procedure btnCerrarClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure btnProcesoClick(Sender: TObject);
    procedure btnAExcelClick(Sender: TObject);
    procedure btnReporteClick(Sender: TObject);
  private
    { Private declarations }
    procedure Inicializar;
  public
    { Public declarations }
  end;

var
  frmCarteraxAsesor: TfrmCarteraxAsesor;
  dmGeneral: TdmGeneral;

implementation

{$R *.dfm}

uses UnitGlobales, UnitGlobalesCol;

procedure TfrmCarteraxAsesor.btnCerrarClick(Sender: TObject);
begin
        Close;
end;

procedure TfrmCarteraxAsesor.FormCreate(Sender: TObject);
begin
        dmGeneral := TdmGeneral.Create(self);
        dmGeneral.getConnected;

        IBQAsesor.Database := dmGeneral.IBDatabase1;
        IBQAsesor.Transaction := dmGeneral.IBTransaction1;

        IBQProceso.Database := dmGeneral.IBDatabase1;
        IBQProceso.Transaction := dmGeneral.IBTransaction1;

        IBQcompromiso.Database := dmGeneral.IBDatabase1;
        IBQcompromiso.Transaction := dmGeneral.IBTransaction1;

        IBSQL1.Database := dmGeneral.IBDatabase1;
        IBSQL1.Transaction := dmGeneral.IBTransaction1;

        Inicializar;
end;

procedure TfrmCarteraxAsesor.Inicializar;
begin
        if (dmGeneral.IBTransaction1.InTransaction) then dmGeneral.IBTransaction1.Commit;
        dmGeneral.IBTransaction1.StartTransaction;



        IBQAsesor.Open;
        CDSAsesor.Open;
        CDSAsesor.Append;
        CDSAsesorASES_ID.Value := 0;
        CDSAsesorASESOR.Value := 'TODOS LOS ASESORES';
        CDSAsesor.Post;

        while not IBQAsesor.Eof do
        begin
                CDSAsesor.Append;
                CDSAsesorASES_ID.Value := IBQAsesor.FieldByName('ASES_ID').AsInteger;
                CDSAsesorASESOR.Value := IBQAsesor.FieldByName('ASESOR').AsString;
                CDSAsesor.Post;
                IBQAsesor.Next;
        end;

end;

procedure TfrmCarteraxAsesor.btnProcesoClick(Sender: TObject);
var
  _hoy: TDateTime;
  _diasMora: Integer;
begin

        _hoy := fFechaActual;
        
        if ListAsesor.KeyValue = 0 then
        begin
            IBQProceso.SQL.Add(' ORDER BY a.ASES_ID, NOMBRE ASC');
        end
        else
        begin
            IBQProceso.SQL.Add(' AND a.ASES_ID = :ASES_ID');
            IBQProceso.SQL.Add(' ORDER BY a.ASES_ID, NOMBRE ASC');
            IBQProceso.ParamByName('ASES_ID').AsInteger := CDSAsesorASES_ID.Value;
        end;

        IBQProceso.Open;
        IBQProceso.Last;
        IBQProceso.First;

        pbar.Min := 0;
        pbar.Max := IBQProceso.RecordCount;
        pbar.Position := 0;

        CDSProceso.Open;

        while not IBQProceso.Eof do
        begin
           pbar.Position := IBQProceso.RecNo;
           Application.ProcessMessages;

           CDSProceso.Append;
           CDSProcesoASES_ID.Value := IBQProceso.FieldByName('ASES_ID').AsInteger;
           CDSProcesoID_COLOCACION.Value := IBQProceso.FieldByName('ID_COLOCACION').AsString;
           CDSProcesoDOCUMENTO.Value := IBQProceso.FieldByName('DOCUMENTO').AsString;
           CDSProcesoNOMBRE.Value := IBQProceso.FieldByName('NOMBRE').AsString;
           CDSProcesoFECHA_DESEMBOLSO.Value := IBQProcesoFECHA_DESEMBOLSO.Value;
           CDSProcesoVALOR_DESEMBOLSO.Value := IBQProcesoVALOR_DESEMBOLSO.Value;
           CDSProcesoSALDO.Value := IBQProcesoSALDO.Value;
           CDSProcesoVALOR_CUOTA.Value := IBQProcesoVALOR_CUOTA.Value;
           //CDSProcesoDESCRIPCION_ESTADO_COLOCACION.Value := IBQProcesoDESCRIPCION_ESTADO_COLOCACION.Value;
           CDSProcesoFECHA_VENCIMIENTO.Value := IBQProcesoFECHA_VENCIMIENTO.Value;
           CDSProcesoASESOR.Value := IBQProcesoASESOR.Value;
           CDSProcesoDESCRIPCION_ESTADO_COLOCACION.Value := IBQProcesoDESCRIPCION_ESTADO_COLOCACION.Value;
           _diasMora := ObtenerDiasMora(Agencia,IBQProceso.FieldByName('ID_COLOCACION').AsString,IBSQL1);
           // _diasMora := _diasMora - IBQProcesoAMORTIZA_INTERES.Value;
           if _diasMora < 0 then _diasMora := 0;
           CDSProcesoDIAS_MORA.Value := _diasMora;
           IBQcompromiso.Close;
           IBQcompromiso.ParamByName('ID_COLOCACION').AsString := IBQProceso.FieldByName('ID_COLOCACION').AsString;
           IBQcompromiso.Open;
           if (IBQcompromiso.RecordCount > 0 ) then
           begin
               CDSProcesoCOMPROMISO.Value := IBQcompromiso.FieldByName('OBSERVACION').AsString;
           end;
           CDSProceso.Post;
           IBQProceso.Next;
        end;

        CDSProceso.First;

        btnProceso.Enabled := False;
        btnReporte.Enabled := True;
        btnAExcel.Enabled := True;

end;

procedure TfrmCarteraxAsesor.btnAExcelClick(Sender: TObject);
var
   ExcelFile : TDataSetToExcel;
begin
          SD1.Title := 'Nombre Para El Archivo de Asesor';
          if (SD1.Execute) then
          begin
           //CDSProceso.Filtered := False;
           CDSProceso.First;
           ExcelFile := TDataSetToExcel.Create(CDSProceso,SD1.FileName);
           ExcelFile.WriteFile;
           ExcelFile.Free;
           ShowMessage('Archivo Guardado...!');
          end
          else
          begin
           ShowMessage('Archivo no generado...!');
          end;
end;

procedure TfrmCarteraxAsesor.btnReporteClick(Sender: TObject);
begin
        CDSProceso.First;
        frxReport1.LoadFromFile('Reporte/ReporteCarteraxAsesor.fr3');
        if frxReport1.PrepareReport(true) then
        begin
           frxReport1.ShowPreparedReport;
        end;
end;

end.
