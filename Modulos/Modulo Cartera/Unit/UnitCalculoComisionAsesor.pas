unit UnitCalculoComisionAsesor;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms, Math, 
  Dialogs, StdCtrls, ComCtrls, ExtCtrls, Grids, DBGrids, DB, DBClient,
  DateUtils, StrUtils, IBCustomDataSet, IBQuery, UnitdmGeneral, JvEdit,
  JvFloatEdit, Buttons, DataSetToExcel, frxClass, frxDBSet, frxChBox;

type
  TfrmCalculoComisionAsesor = class(TForm)
    GroupBox1: TGroupBox;
    Label1: TLabel;
    Label2: TLabel;
    btnProcesar: TButton;
    gridData: TDBGrid;
    CDSdata: TClientDataSet;
    CDScolocacion: TClientDataSet;
    CDScolocacionID_ASESOR: TIntegerField;
    CDScolocacionID_COLOCACION: TStringField;
    CDScolocacionPAGA: TBooleanField;
    CDScolocacionINTERES: TCurrencyField;
    CDScolocacionCOMISION: TCurrencyField;
    CDScolocacionPERIODO: TIntegerField;
    CDScolocacionANHO: TIntegerField;
    CDSdataASESOR: TStringField;
    CDSdataCOMISION: TCurrencyField;
    cbDesde: TComboBox;
    cbHasta: TComboBox;
    _ibqColocacion: TIBQuery;
    _ibqCalculo: TIBQuery;
    _ibqPagado: TIBQuery;
    _ibqInteres: TIBQuery;
    Label3: TLabel;
    edTasa: TJvFloatEdit;
    DSdata: TDataSource;
    Panel1: TPanel;
    btnAExcel: TBitBtn;
    CmdCerrar: TBitBtn;
    SD1: TSaveDialog;
    CDScolocacionASESOR: TStringField;
    CDScolocacionCLIENTE: TStringField;
    _ibqFecha: TIBQuery;
    frxReport1: TfrxReport;
    frxDBDataset1: TfrxDBDataset;
    btnReporte: TBitBtn;
    frxCheckBoxObject1: TfrxCheckBoxObject;
    CDScolocacionDOCUMENTO: TStringField;
    _ibqExtractoDet: TIBQuery;
    _ibqExtracto: TIBQuery;
    btnCalcular: TButton;
    _ibqReestructurado: TIBQuery;
    procedure btnProcesarClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure CmdCerrarClick(Sender: TObject);
    procedure btnAExcelClick(Sender: TObject);
    procedure btnReporteClick(Sender: TObject);
    procedure btnCalcularClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmCalculoComisionAsesor: TfrmCalculoComisionAsesor;
  dmGeneral : TdmGeneral;

implementation

{$R *.dfm}

uses UnitGlobales;

procedure TfrmCalculoComisionAsesor.btnProcesarClick(Sender: TObject);
var
  _periodoInicial, _periodoFinal : Integer;
  _periodo : Integer;
  _paga : boolean;
  _fechaPeriodo, _fecha_a_pagar : TDate;
  _valorCapitalCalculado, _valorInteresCalculado : Currency;
  _valorCapitalPagado, _valorInteresPagado: Currency;
  _valorInteres : Currency;
  _valorComision : Currency;
  _valorTasa : Currency;
  _fechaInicial, _fechaFinal: TDate;
begin
        _periodoInicial := cbDesde.ItemIndex + 1;
        _periodoFinal := cbHasta.ItemIndex + 1;

        _valorTasa := edTasa.Value;

        CDSdata.Open;
        CDSdata.EmptyDataSet;

        CDScolocacion.Open;
        CDScolocacion.EmptyDataSet;

        _ibqReestructurado.SQL.Clear;
        _ibqReestructurado.SQL.Add('SELECT * FROM COL$REESTRUCTURADO WHERE ID_COLOCACION_A = :ID_COLOCACION_A');

        _fechaInicial := EncodeDate(DBAnho, _periodo, 1);
        _fechaFinal := EncodeDate(DBAnho, _periodo, DaysInAMonth(DBAnho, _periodo));

        _ibqColocacion.Close;
        _ibqColocacion.ParamByName('FECHA_INICIAL').AsDate := EncodeDate(DBAnho, _periodoFinal, 1);
        _ibqColocacion.Open;

        while not _ibqColocacion.eof do
        begin
            for _periodo := _periodoInicial to _periodoFinal do
            begin
                _valorCapitalCalculado := 0;
                _valorCapitalPagado := 0;
                _valorInteresCalculado := 0;
                _valorInteresPagado := 0;
                _valorInteres := 0;
                _valorComision := 0;
                _paga := false;
                // Validar capital+interes que debe estar pagado
                _fechaPeriodo := EncodeDate(DBAnho, _periodo, DaysInAMonth(DBAnho, _periodo));
                _ibqCalculo.Close;
                _ibqCalculo.ParamByName('ID_COLOCACION').AsString := _ibqColocacion.FieldByName('ID_COLOCACION').AsString;
                _ibqCalculo.ParamByName('FECHA_A_PAGAR').AsDate := _fechaPeriodo;
                _ibqCalculo.ParamByName('PERIODO').AsInteger := MonthOf(_fechaPeriodo);
                _ibqCalculo.Open;
                if (_ibqCalculo.RecordCount > 0) then
                begin
                  _valorCapitalCalculado := _ibqCalculo.FieldByName('CAPITAL').AsCurrency;
                  _valorInteresCalculado := _ibqCalculo.FieldByName('INTERES').AsCurrency;
                end
                else
                begin
                   _valorCapitalCalculado := 0;
                   _valorInteresCalculado := 0;
                end;
                // Buscar Fecha de pago
                _ibqFecha.Close;
                _ibqFecha.ParamByName('FECHA_INICIAL').AsDate := _fechaInicial;
                _ibqFecha.ParamByName('FECHA_FINAL').AsDate := _fechaFinal;
                _ibqFecha.ParamByName('ID_COLOCACION').AsString := _ibqColocacion.FieldByName('ID_COLOCACION').AsString;
                _ibqFecha.Open;
                if (_ibqFecha.RecordCount > 0) then
                begin
                  // Calcular Valor de Pagos recibidos
                   _fecha_a_pagar := _ibqFecha.FieldByName('FECHA_A_PAGAR').AsDateTime;
                   _ibqPagado.Close;
                   _ibqPagado.ParamByName('ID_COLOCACION').AsString := _ibqColocacion.FieldByName('ID_COLOCACION').AsString;
                   _ibqPagado.ParamByName('FECHA_EXTRACTO').AsDate := _fecha_a_pagar;
                   _ibqPagado.ParamByName('PERIODO').AsInteger := MonthOf(_fecha_a_pagar);
                   _ibqPagado.Open;
                   if (_ibqPagado.RecordCount > 0 ) then
                   begin
                     _valorCapitalPagado := _ibqPagado.FieldByName('CAPITAL').AsCurrency;
                     _valorInteresPagado := _ibqPagado.FieldByName('INTERES').AsCurrency;
                   end
                   else
                   begin
                     _valorCapitalPagado := 0;
                     _valorInteresPagado := 0;
                   end;
                   // Comparar Valores
                   if (_valorCapitalPagado + _valorInteresPagado ) >= (_valorCapitalCalculado +  _valorInteresCalculado) then
                   begin
                    _paga := true;
                    // buscar valor a pagar
                    _ibqInteres.Close;
                    _ibqInteres.ParamByName('FECHA_A_PAGAR').AsDate := _fecha_a_pagar;
                    _ibqInteres.ParamByName('ID_COLOCACION').AsString := _ibqColocacion.FieldByName('ID_COLOCACION').AsString;
                    _ibqInteres.Open;
                    _valorInteres := _ibqInteres.FieldByName('INTERES').AsCurrency;
                   end
                   else
                   begin
                    _paga := false;
                   end;
                end
                else
                begin
                    _paga := false;
                    _valorInteres := 0;
                end;
                CDScolocacion.Append;
                CDScolocacionID_ASESOR.Value := _ibqColocacion.FieldByName('ASES_ID').AsInteger;
                CDScolocacionDOCUMENTO.Value := _ibqColocacion.FieldByName('DOCUMENTO').AsString;
                CDScolocacionASESOR.Value := _ibqColocacion.FieldByName('NOMBRE_ASESOR').AsString;
                CDScolocacionID_COLOCACION.Value := _ibqColocacion.FieldByName('ID_COLOCACION').AsString;
                CDScolocacionCLIENTE.Value := _ibqColocacion.FieldByName('NOMBRE_CLIENTE').AsString;
                if (_valorInteres <= 0) then _paga := false;
                CDScolocacionPAGA.Value := _paga;
                CDScolocacionINTERES.Value := _valorInteres;
                _valorComision := SimpleRoundTo(_valorInteres * _valorTasa / 100,0);
                CDScolocacionCOMISION.Value := _valorComision;
                CDScolocacionPERIODO.Value := _periodo;
                CDScolocacionANHO.Value := DBAnho;
                if (_fechaPeriodo < _ibqColocacion.FieldByName('FECHA_DESEMBOLSO').AsDateTime) then
                begin
                  CDScolocacion.Cancel;
                end
                else
                begin
                  // Verificar que la colocación no haya sido reestructurada
                    _ibqReestructurado.Close;
                    _ibqReestructurado.ParamByName('ID_COLOCACION_A').AsString := _ibqColocacion.FieldByName('ID_COLOCACION').AsString;
                    _ibqReestructurado.Open;
                    if (_fechaInicial <= _ibqReestructurado.FieldByName('FECHA_PROCESO').AsDateTime) and (_ibqReestructurado.FieldByName('FECHA_PROCESO').AsDateTime <= _fechaFinal) then
                    begin
                      CDScolocacion.Cancel;
                    end
                    else
                    begin
                      CDScolocacion.Post;
                    end;
                  //
                end;
            end;
            _ibqColocacion.Next;
        end;
        btnAExcel.Enabled := True;
        btnReporte.Enabled := True
end;

procedure TfrmCalculoComisionAsesor.FormCreate(Sender: TObject);
begin
        dmGeneral := TdmGeneral.Create(self);
        dmGeneral.getConnected;

        _ibqColocacion.Database := dmGeneral.IBDatabase1;
        _ibqCalculo.Database := dmGeneral.IBDatabase1;
        _ibqPagado.Database := dmGeneral.IBDatabase1;
        _ibqInteres.Database := dmGeneral.IBDatabase1;
        _ibqFecha.Database := dmGeneral.IBDatabase1;
        _ibqExtractoDet.Database := dmGeneral.IBDatabase1;
        _ibqExtracto.Database := dmGeneral.IBDatabase1;
        _ibqReestructurado.Database := dmGeneral.IBDatabase1;

        _ibqColocacion.Transaction := dmGeneral.IBTransaction1;
        _ibqCalculo.Transaction := dmGeneral.IBTransaction1;
        _ibqPagado.Transaction := dmGeneral.IBTransaction1;
        _ibqInteres.Transaction := dmGeneral.IBTransaction1;
        _ibqFecha.Transaction := dmGeneral.IBTransaction1;
        _ibqExtractoDet.Transaction := dmGeneral.IBTransaction1;
        _ibqExtracto.Transaction := dmGeneral.IBTransaction1;
        _ibqReestructurado.Transaction := dmGeneral.IBTransaction1;

end;

procedure TfrmCalculoComisionAsesor.CmdCerrarClick(Sender: TObject);
begin
        Close;
end;

procedure TfrmCalculoComisionAsesor.btnAExcelClick(Sender: TObject);
var
   ExcelFile : TDataSetToExcel;
begin
          SD1.Title := 'Nombre Para El Archivo de Comisiones';
          if (SD1.Execute) then
          begin
           CDScolocacion.Filtered := False;
           CDScolocacion.First;
           ExcelFile := TDataSetToExcel.Create(CDScolocacion,SD1.FileName);
           ExcelFile.WriteFile;
           ExcelFile.Free;
           ShowMessage('Archivo Guardado...!');
          end
          else
          begin
           ShowMessage('Archivo no generado...!');
          end;
end;

procedure TfrmCalculoComisionAsesor.btnReporteClick(Sender: TObject);
begin
        frxReport1.LoadFromFile('Reporte/ReporteAsesorExterno.fr3');
        if frxReport1.PrepareReport(true) then
                frxReport1.ShowPreparedReport;
end;

procedure TfrmCalculoComisionAsesor.btnCalcularClick(Sender: TObject);
var
  _periodoInicial, _periodoFinal : Integer;
  _periodo : Integer;
  _paga : boolean;
  _fechaPeriodo, _fecha_a_pagar : TDate;
  _valorCapitalCalculado, _valorInteresCalculado : Currency;
  _valorCapitalPagado, _valorInteresPagado: Currency;
  _valorInteres : Currency;
  _valorComision : Currency;
  _valorTasa : Currency;
  _vFechaInicial, _vFechaFinal: TDate;

begin
        _periodoInicial := cbDesde.ItemIndex + 1;
        _periodoFinal := cbHasta.ItemIndex + 1;

        _vFechaInicial := EncodeDate(DBAnho, _periodoInicial, 1);
        _vFechaFinal := EncodeDate(DBAnho, _periodoFinal, DaysInAMonth(DBAnho, _periodoFinal));

        _valorTasa := edTasa.Value;

        CDSdata.Open;
        CDSdata.EmptyDataSet;

        CDScolocacion.Open;
        CDScolocacion.EmptyDataSet;

        _ibqReestructurado.SQL.Clear;
        _ibqReestructurado.SQL.Add('SELECT * FROM COL$REESTRUCTURADO WHERE ID_COLOCACION_A = :ID_COLOCACION_A');        

        _ibqColocacion.Close;
        _ibqColocacion.ParamByName('FECHA_INICIAL').AsDate := EncodeDate(DBAnho, _periodoFinal, 1);
        _ibqColocacion.Open;

        while not _ibqColocacion.eof do
        begin
          for _periodo := _periodoInicial to _periodoFinal do
          begin
            _fechaPeriodo := EncodeDate(DBAnho, _periodo, DaysInAMonth(DBAnho, _periodo));
            _ibqExtracto.Close;
            _ibqExtracto.ParamByName('ID_COLOCACION').AsString := _ibqColocacion.FieldByName('ID_COLOCACION').AsString;
            _ibqExtracto.ParamByName('FECHA_INICIAL').AsDate := _vFechaInicial;
            _ibqExtracto.ParamByName('FECHA_FINAL').AsDate := _vFechaFinal;
            _ibqExtracto.Open;
            _valorInteres := 0;
            while not _ibqExtracto.Eof do
            begin
                 _ibqExtractoDet.Close;
                 _ibqExtractoDet.ParamByName('ID_COLOCACION').AsString := _ibqExtracto.FieldByName('ID_COLOCACION').AsString;
                 _ibqExtractoDet.ParamByName('FECHA_EXTRACTO').AsDate := _ibqExtracto.FieldByName('FECHA_EXTRACTO').AsDateTime;
                 _ibqExtractoDet.ParamByName('ID_CBTE_COLOCACION').AsInteger := _ibqExtracto.FieldByName('ID_CBTE_COLOCACION').AsInteger;
                 _ibqExtractoDet.ParamByName('TASA_LIQUIDACION').AsFloat := 48;
                 _ibqExtractoDet.Open;
                 if (_ibqExtractoDet.RecordCount > 0 ) then
                 begin
                   if (_ibqExtractoDet.FieldByName('CONTEO').AsInteger = 0) then
                   begin
                        _valorInteres := _valorInteres + _ibqExtracto.FieldByName('ABONO_CXC').AsCurrency + _ibqExtracto.FieldByName('ABONO_SERVICIOS').AsCurrency + _ibqExtracto.FieldByName('ABONO_ANTICIPADO').AsCurrency;
                   end;
                 end;
                 _ibqExtracto.Next;
            end;

            CDScolocacion.Append;
            CDScolocacionID_ASESOR.Value := _ibqColocacion.FieldByName('ASES_ID').AsInteger;
            CDScolocacionDOCUMENTO.Value := _ibqColocacion.FieldByName('DOCUMENTO').AsString;
            CDScolocacionASESOR.Value := _ibqColocacion.FieldByName('NOMBRE_ASESOR').AsString;
            CDScolocacionID_COLOCACION.Value := _ibqColocacion.FieldByName('ID_COLOCACION').AsString;
            CDScolocacionCLIENTE.Value := _ibqColocacion.FieldByName('NOMBRE_CLIENTE').AsString;
            if (_valorInteres <= 0) then _paga := false
            else _paga := true;
            CDScolocacionPAGA.Value := _paga;
            CDScolocacionINTERES.Value := _valorInteres;
            _valorComision := SimpleRoundTo(_valorInteres * _valorTasa / 100,0);
            CDScolocacionCOMISION.Value := _valorComision;
            CDScolocacionPERIODO.Value := _periodo;
            CDScolocacionANHO.Value := DBAnho;
            if (_fechaPeriodo < _ibqColocacion.FieldByName('FECHA_DESEMBOLSO').AsDateTime) then
            begin
              CDScolocacion.Cancel;
            end
            else if (_valorInteres = 0) then
            begin
              CDScolocacion.Cancel;
            end
            else
            begin
                  // Verificar que la colocación no haya sido reestructurada
                    _ibqReestructurado.Close;
                    _ibqReestructurado.ParamByName('ID_COLOCACION_A').AsString := _ibqColocacion.FieldByName('ID_COLOCACION').AsString;
                    _ibqReestructurado.Open;
                    if (_vFechaInicial <= _ibqReestructurado.FieldByName('FECHA_PROCESO').AsDateTime) and (_ibqReestructurado.FieldByName('FECHA_PROCESO').AsDateTime <= _vFechaFinal) then
                    begin
                      CDScolocacion.Cancel;
                    end
                    else
                    begin
                      CDScolocacion.Post;
                    end;
                  //
            end;
            _ibqColocacion.Next;
          end;
        end;
        btnAExcel.Enabled := True;
        btnReporte.Enabled := True
end;

end.
