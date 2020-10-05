unit UnitReporteAseguradora;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, ComCtrls, Grids, DBGrids, DB, DBClient,
  IBCustomDataSet, IBQuery, UnitDmGeneral, DataSetToExcel, JvEdit,
  JvTypedEdit;

type
  TfrmReporteAseguradora = class(TForm)
    Label1: TLabel;
    EdFechaCorte: TDateTimePicker;
    btnProcesar: TBitBtn;
    DSaseguradora: TDataSource;
    CDSaseguradora: TClientDataSet;
    DBGaseguradora: TDBGrid;
    btnCerrar: TBitBtn;
    btnExportar: TBitBtn;
    CDSaseguradoraID_PERSONA: TIntegerField;
    CDSaseguradoraFECHA_NACIMIENTO: TDateField;
    CDSaseguradoraSEXO: TStringField;
    CDSaseguradoraNOMBRE: TStringField;
    CDSaseguradoraSALDO: TCurrencyField;
    IBQcartera: TIBQuery;
    Save: TSaveDialog;
    Label2: TLabel;
    Label3: TLabel;
    EdEdad: TJvIntegerEdit;
    EdMonto: TJvCurrencyEdit;
    CDSdatos: TClientDataSet;
    CDSdatosFECHA_NACIMIENTO: TDateField;
    CDSdatosSEXO: TStringField;
    CDSdatosNOMBRE: TStringField;
    CDSdatosSALDO: TCurrencyField;
    CDSaseguradoraPAGARE: TStringField;
    CDSdatosID_PERSONA: TIntegerField;
    procedure FormCreate(Sender: TObject);
    procedure btnProcesarClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure btnExportarClick(Sender: TObject);
    procedure btnCerrarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmReporteAseguradora: TfrmReporteAseguradora;
  dmGeneral: TdmGeneral;

implementation

{$R *.dfm}

uses UnitGlobales, UnitGlobalesCol;

procedure TfrmReporteAseguradora.FormCreate(Sender: TObject);
begin
        dmGeneral := TdmGeneral.Create(self);
        dmGeneral.getConnected;

        IBQcartera.Database := dmGeneral.IBDatabase1;
        IBQcartera.Transaction := dmGeneral.IBTransaction1;
end;

procedure TfrmReporteAseguradora.btnProcesarClick(Sender: TObject);
var
  Saldo : Currency;
  Deuda : Currency;
  Dias : Integer;
begin
        EdFechaCorte.Enabled := False;
        EdEdad.Enabled := False;
        EdMonto.Enabled := False;

        IBQcartera.Close;
        IBQcartera.ParamByName('FECHA_CORTE').AsDate := EdFechaCorte.Date;
        IBQcartera.Open;

        CDSaseguradora.Open;
        CDSaseguradora.EmptyDataSet;

        CDSdatos.Open;
        CDSdatos.EmptyDataSet;

        while not IBQcartera.Eof do
        begin
                Application.ProcessMessages;
                Dias := DiasEntre(IBQcartera.FieldByName('FECHA_NACIMIENTO').AsDateTime, IBQcartera.FieldbyName('FECHA_DESEMBOLSO').AsDateTime);
                if (Dias < (EdEdad.Value * 365)) then
                begin

                CDSdatos.Filter := 'ID_PERSONA = ' + QuotedStr(IBQcartera.FieldByName('ID_PERSONA').AsString);
                CDSdatos.Filtered := True;

                if (CDSdatos.RecordCount > 0) then
                begin
                  Deuda := IBQcartera.FieldByName('DEUDA').AsCurrency;
                  CDSdatos.Edit;
                  Deuda := Deuda + CDSdatosSALDO.Value;
                  if (Deuda > EdMonto.Value) then Deuda := EdMonto.Value;
                  CDSdatosSALDO.Value := Deuda;
                  CDSdatos.Post;
                  CDSaseguradora.Insert;
                  CDSaseguradoraID_PERSONA.Value := IBQcartera.FieldByName('ID_PERSONA').AsInteger;
                  CDSaseguradoraFECHA_NACIMIENTO.Value := IBQcartera.FieldbyName('FECHA_NACIMIENTO').AsDateTime;
                  CDSaseguradoraSEXO.Value := IBQcartera.FieldByName('SEXO').AsString;
                  CDSaseguradoraNOMBRE.Value := IBQcartera.FieldByName('NOMBRE').AsString;
                  CDSaseguradoraSALDO.Value := Deuda;
                  CDSaseguradoraPAGARE.Value := IBQcartera.FieldByName('ID_COLOCACION').AsString;
                  if (Deuda > 0 ) then
                        CDSaseguradora.Post
                  else
                        CDSaseguradora.Cancel;

                end
                else
                begin
                  CDSdatos.Insert;
                  CDSdatosID_PERSONA.Value := IBQcartera.FieldByName('ID_PERSONA').AsInteger;
                  CDSdatosFECHA_NACIMIENTO.Value := IBQcartera.FieldbyName('FECHA_NACIMIENTO').AsDateTime;
                  CDSdatosSEXO.Value := IBQcartera.FieldByName('SEXO').AsString;
                  CDSdatosNOMBRE.Value := IBQcartera.FieldByName('NOMBRE').AsString;
                  if (IBQcartera.FieldByName('DEUDA').AsCurrency > EdMonto.Value) then
                    Deuda := EdMonto.Value
                  else
                    Deuda := IBQcartera.FieldByName('DEUDA').AsCurrency;

                  CDSdatosSALDO.Value := IBQcartera.FieldByName('DEUDA').AsCurrency;
                  CDSdatos.Post;

                  CDSaseguradora.Insert;
                  CDSaseguradoraID_PERSONA.Value := IBQcartera.FieldByName('ID_PERSONA').AsInteger;
                  CDSaseguradoraFECHA_NACIMIENTO.Value := IBQcartera.FieldbyName('FECHA_NACIMIENTO').AsDateTime;
                  CDSaseguradoraSEXO.Value := IBQcartera.FieldByName('SEXO').AsString;
                  CDSaseguradoraNOMBRE.Value := IBQcartera.FieldByName('NOMBRE').AsString;
                  CDSaseguradoraSALDO.Value := Deuda;
                  CDSaseguradoraPAGARE.Value := IBQcartera.FieldByName('ID_COLOCACION').AsString;
                  CDSaseguradora.Post;
                end;
                end;
               IBQcartera.Next;
        end;
        CDSdatos.Filtered := false;
        CDSdatos.First;
end;

procedure TfrmReporteAseguradora.FormShow(Sender: TObject);
begin
    EdFechaCorte.Date := Date;    
end;

procedure TfrmReporteAseguradora.btnExportarClick(Sender: TObject);
var   ExcelFile:TDataSetToExcel;
begin
        if Save.Execute then
        begin
          CDSaseguradora.First;
          ExcelFile := TDataSetToExcel.Create(CDSaseguradora,Save.FileName);
          ExcelFile.WriteFile;
          ExcelFile.Free;
        end;
end;

procedure TfrmReporteAseguradora.btnCerrarClick(Sender: TObject);
begin
        dmGeneral.Free;
        Close;
end;

end.
