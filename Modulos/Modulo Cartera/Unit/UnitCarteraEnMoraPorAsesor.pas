unit UnitCarteraEnMoraPorAsesor;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, ExtCtrls, ComCtrls, DB, IBCustomDataSet,
  IBQuery, UnitDmGeneral, DBClient, DataSetToExcel, FR_DSet, FR_DBSet,
  FR_Class, UnitGlobales, UnitGlobalesCol;

type
  TfrmCarteraEnMoraPorAsesor = class(TForm)
    Panel1: TPanel;
    btnCerrar: TBitBtn;
    btnProceso: TBitBtn;
    btnReporte: TBitBtn;
    btnAExcel: TBitBtn;
    bar: TProgressBar;
    IBQcausacion: TIBQuery;
    IBQasesor: TIBQuery;
    IBQcarteraasesor: TIBQuery;
    Label1: TLabel;
    edFechaCorte: TDateTimePicker;
    CDSdata: TClientDataSet;
    CDSdataDOCUMENTO: TStringField;
    CDSdataASESOR: TStringField;
    CDSdataFECHACORTE: TDateField;
    CDSdataENMORA: TCurrencyField;
    CDSdataPORCMORA: TCurrencyField;
    frReport1: TfrReport;
    frCDSdata: TfrDBDataSet;
    SD1: TSaveDialog;
    procedure FormShow(Sender: TObject);
    procedure btnProcesoClick(Sender: TObject);
    procedure btnReporteClick(Sender: TObject);
    procedure btnCerrarClick(Sender: TObject);
    procedure btnAExcelClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmCarteraEnMoraPorAsesor: TfrmCarteraEnMoraPorAsesor;
  dmGeneral: TdmGeneral;

implementation

{$R *.dfm}

procedure TfrmCarteraEnMoraPorAsesor.FormShow(Sender: TObject);
begin
         dmGeneral := TdmGeneral.Create(self);
         dmGeneral.getConnected;

         IBQcausacion.Database := dmGeneral.IBDatabase1;
         IBQcausacion.Transaction := dmGeneral.IBTransaction1;
         IBQasesor.Database := dmGeneral.IBDatabase1;
         IBQasesor.Transaction := dmGeneral.IBTransaction1;
         IBQcarteraasesor.Database := dmGeneral.IBDatabase1;
         IBQcarteraasesor.Transaction := dmGeneral.IBTransaction1;
end;

procedure TfrmCarteraEnMoraPorAsesor.btnProcesoClick(Sender: TObject);
var
    _vTotalCartera : Currency;
    _vCarteraMora  : Currency;
    _vPorcentajeCarteraMora : Currency;
    _vPorcentajeCarteraMoraAsesor : Currency;
begin
      IBQcausacion.SQL.Clear;
      IBQcausacion.SQL.Add('SELECT SUM(c.DEUDA) AS CARTERA FROM "col$causaciondiaria" c WHERE c.FECHA_CORTE = :FECHA_CORTE');
      IBQcausacion.ParamByName('FECHA_CORTE').AsDate := edFechaCorte.Date;
      IBQcausacion.Open;
      _vTotalCartera := IBQcausacion.FieldByName('CARTERA').AsCurrency;

      IBQcausacion.Close;
      IBQcausacion.SQL.Clear;
      IBQcausacion.SQL.Add('SELECT SUM(c.DEUDA) AS ENMORA FROM "col$causaciondiaria" c WHERE c.FECHA_CORTE = :FECHA_CORTE and c.MOROSIDAD > 0');
      IBQcausacion.ParamByName('FECHA_CORTE').AsDate := edFechaCorte.Date;
      IBQcausacion.Open;
      _vCarteraMora := IBQcausacion.FieldByName('ENMORA').AsCurrency;
      IBQcausacion.Close;


      _vPorcentajeCarteraMora := _vCarteraMora / _vTotalCartera;

      IBQcarteraasesor.Close;
      IBQcarteraasesor.ParamByName('FECHA_CORTE').AsDate := edFechaCorte.Date;
      IBQcarteraasesor.Open;
      IBQcarteraasesor.Last;
      IBQcarteraasesor.First;

      CDSdata.Open;
      bar.Min := 0;
      bar.Max := IBQcarteraasesor.RecordCount;
      bar.Position := 0;

      while not IBQcarteraasesor.Eof do
      begin
            bar.Position := IBQcarteraasesor.RecNo;
            Application.ProcessMessages;
            _vPorcentajeCarteraMoraAsesor := IBQcarteraasesor.FieldByName('ENMORA').AsCurrency / _vCarteraMora;
            CDSdata.Append;
            CDSdataASESOR.Value := IBQcarteraasesor.FieldByName('ASESOR').AsString;
            CDSdataFECHACORTE.Value := edFechaCorte.Date;
            CDSdataENMORA.Value := IBQcarteraasesor.FieldByName('ENMORA').AsCurrency;
            CDSdataPORCMORA.Value := _vPorcentajeCarteraMoraAsesor;
            CDSdata.Post;
            IBQcarteraasesor.Next;
      end;
      
      btnReporte.Enabled := True;
      btnAExcel.Enabled := True;

end;

procedure TfrmCarteraEnMoraPorAsesor.btnReporteClick(Sender: TObject);
begin
        CDSdata.First;
        frReport1.LoadFromFile('Reporte\frCarteraMoraPorAsesor');
        frReport1.Dictionary.Variables['EMPRESA'] := QuotedStr(Empresa);
        frReport1.Dictionary.Variables['FECHA_CORTE'] := edFechaCorte.Date;
        if frReport1.PrepareReport then
          frReport1.ShowPreparedReport;
end;

procedure TfrmCarteraEnMoraPorAsesor.btnCerrarClick(Sender: TObject);
begin
        Close;
end;

procedure TfrmCarteraEnMoraPorAsesor.btnAExcelClick(Sender: TObject);
var
  ExcelFile : TDataSetToExcel;
begin
          CDSdata.First;
          SD1.Title := 'Nombre Para El Archivo de Cartera en Mora por Asesor';
          if (SD1.Execute) then
          begin
           ExcelFile := TDataSetToExcel.Create(CDSdata,SD1.FileName);
           ExcelFile.WriteFile;
           ExcelFile.Free;
           ShowMessage('Archivo de Provisión Guardado...!');
          end
          else
          begin
           ShowMessage('Archivo no generado...!');
          end;

end;

end.
