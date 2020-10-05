unit UnitRecuperaciondeAportesPorCuotasPagas;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms, DataSetToExcel,
  Dialogs, Grids, DBGrids, Buttons, ExtCtrls, StdCtrls, JvEdit, JvFloatEdit, Math,
  ComCtrls, IBCustomDataSet, IBQuery, DB, DBClient, UnitDmGeneral;

type
  TfrmRecuperaciondeAportePorCuotasPagas = class(TForm)
    GroupBox1: TGroupBox;
    Label1: TLabel;
    Label2: TLabel;
    btnProcesar: TButton;
    Panel1: TPanel;
    btnAExcel: TBitBtn;
    CmdCerrar: TBitBtn;
    gridData: TDBGrid;
    edFechaInicial: TDateTimePicker;
    edFechaFinal: TDateTimePicker;
    DSdata: TDataSource;
    CDSdata: TClientDataSet;
    IBQproceso: TIBQuery;
    IBQTasa: TIBQuery;
    CDSdataID_COLOCACION: TStringField;
    CDSdataID_PERSONA: TStringField;
    CDSdataNOMBRE: TStringField;
    CDSdataVALOR_DESEMBOLSO: TCurrencyField;
    CDSdataVALOR_CAPITALIZACION: TCurrencyField;
    CDSdataVALOR_RECUPERADO: TCurrencyField;
    SD1: TSaveDialog;
    CDSdataABONO_CAPITAL: TCurrencyField;
    procedure FormCreate(Sender: TObject);
    procedure btnProcesarClick(Sender: TObject);
    procedure btnAExcelClick(Sender: TObject);
    procedure CmdCerrarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmRecuperaciondeAportePorCuotasPagas: TfrmRecuperaciondeAportePorCuotasPagas;
  dmGeneral: TdmGeneral;

implementation

{$R *.dfm}

procedure TfrmRecuperaciondeAportePorCuotasPagas.FormCreate(
  Sender: TObject);
begin

        dmGeneral := TdmGeneral.Create(self);
        dmGeneral.getConnected;

        IBQproceso.Database := dmGeneral.IBDatabase1;
        IBQproceso.Transaction := dmGeneral.IBTransaction1;

        IBQTasa.Database := dmGeneral.IBDatabase1;
        IBQTasa.Transaction := dmGeneral.IBTransaction1;

end;

procedure TfrmRecuperaciondeAportePorCuotasPagas.btnProcesarClick(
  Sender: TObject);
  var
    Tasa12meses, Tasa13meses: Double;
    ValorCapitalizacion: Currency;
    ValorRecuperado: Currency;
begin
        IBQProceso.Close;
        IBQProceso.SQL.Clear;
//        IBQProceso.SQL.Add('SELECT c.ID_COLOCACION, c.ID_PERSONA, (p.NOMBRE || '' '' || p.PRIMER_APELLIDO || '' '' || p.SEGUNDO_APELLIDO) as NOMBRE, c.PLAZO_COLOCACION, c.VALOR_DESEMBOLSO, EXTRACT(YEAR FROM e.FECHA_EXTRACTO), EXTRACT(MONTH FROM e.FECHA_EXTRACTO), SUM(e.ABONO_CAPITAL) AS ABONOS from "col$extracto" e');
        IBQProceso.SQL.Add('SELECT c.ID_COLOCACION, c.ID_PERSONA, (p.NOMBRE || '' '' || p.PRIMER_APELLIDO || '' '' || p.SEGUNDO_APELLIDO) as NOMBRE, c.PLAZO_COLOCACION, c.VALOR_DESEMBOLSO, SUM(e.ABONO_CAPITAL) AS ABONOS from "col$extracto" e');
        IBQProceso.SQL.Add('INNER JOIN "col$colocacion" c ON e.ID_COLOCACION = c.ID_COLOCACION');
        IBQProceso.SQL.Add('INNER JOIN "gen$persona" p ON c.ID_IDENTIFICACION = p.ID_IDENTIFICACION and c.ID_PERSONA = p.ID_PERSONA');
        IBQProceso.SQL.Add('WHERE e.FECHA_EXTRACTO BETWEEN :FECHA_INICIAL and :FECHA_FINAL');
//      IBQProceso.SQL.Add('GROUP BY c.ID_COLOCACION, c.ID_PERSONA, p.NOMBRE, p.PRIMER_APELLIDO, p.SEGUNDO_APELLIDO, c.PLAZO_COLOCACION, e.FECHA_EXTRACTO');
        IBQProceso.SQL.Add('GROUP BY c.ID_COLOCACION, c.ID_PERSONA, p.NOMBRE, p.PRIMER_APELLIDO, p.SEGUNDO_APELLIDO, c.PLAZO_COLOCACION, c.VALOR_DESEMBOLSO');
        IBQProceso.ParamByName('FECHA_INICIAL').AsDate :=  edFechaInicial.Date;
        IBQProceso.ParamByName('FECHA_FINAL').AsDate := edFechaFinal.Date;
        IBQProceso.Open;

        IBQTasa.Close;
        IBQTasa.SQL.Clear;
        IBQTasa.SQL.Add('SELECT * FROM "gen$minimos" WHERE ID_MINIMO IN (59,60)');
        IBQTasa.Open;

        while not IBQTasa.Eof do
        begin
             if IBQTasa.FieldByName('ID_MINIMO').AsInteger = 59 then Tasa12meses := IBQTasa.FieldByName('VALOR_MINIMO').AsFloat;
             if IBQTasa.FieldByName('ID_MINIMO').AsInteger = 60 then Tasa13meses := IBQTasa.FieldByName('VALOR_MINIMO').AsFloat;
             IBQTasa.Next;
        end;

        CDSdata.Open;
        CDSdata.EmptyDataSet;
        while not IBQproceso.Eof do
        begin
                CDSdata.Append;
                CDSdataID_COLOCACION.Value := IBQProceso.FieldByName('ID_COLOCACION').AsString;
                CDSdataID_PERSONA.Value := IBQProceso.FieldByName('ID_PERSONA').AsString;
                CDSdataNOMBRE.Value := IBQProceso.FieldByName('NOMBRE').AsString;
                CDSdataVALOR_DESEMBOLSO.Value := IBQProceso.FieldByName('VALOR_DESEMBOLSO').AsCurrency;
                if (IBQProceso.FieldByName('PLAZO_COLOCACION').AsInteger > 360) then
                begin
                 ValorCapitalizacion := IBQProceso.FieldByName('VALOR_DESEMBOLSO').AsCurrency * Tasa13meses / 100;
                 ValorRecuperado := IBQProceso.FieldByName('ABONOS').AsCurrency * Tasa13meses / 100;
                end
                else
                begin
                 ValorCapitalizacion := IBQProceso.FieldByName('VALOR_DESEMBOLSO').AsCurrency * Tasa12meses / 100;
                 ValorRecuperado := IBQProceso.FieldByName('ABONOS').AsCurrency * Tasa12meses / 100;
                end;
                CDSdataVALOR_CAPITALIZACION.Value := SimpleRoundTo(ValorCapitalizacion,0);
                CDSdataABONO_CAPITAL.Value := IBQProceso.FieldByName('ABONOS').AsCurrency;
                CDSdataVALOR_RECUPERADO.Value := SimpleRoundTo(ValorRecuperado,0);
                CDSdata.Post;
                IBQProceso.Next;
        end;
        btnAExcel.Enabled := True;
end;

procedure TfrmRecuperaciondeAportePorCuotasPagas.btnAExcelClick(
  Sender: TObject);
var
   ExcelFile : TDataSetToExcel;
begin
          SD1.Title := 'Nombre Para El Archivo de Control de Cobro';
          if (SD1.Execute) then
          begin
           CDSdata.Filtered := False;
           CDSdata.First;
           ExcelFile := TDataSetToExcel.Create(CDSdata,SD1.FileName);
           ExcelFile.WriteFile;
           ExcelFile.Free;
           ShowMessage('Archivo Guardado...!');
          end
          else
          begin
           ShowMessage('Archivo no generado...!');
          end;

end;

procedure TfrmRecuperaciondeAportePorCuotasPagas.CmdCerrarClick(
  Sender: TObject);
begin
        Close;
end;

end.
