unit UnitInformeIngresosGastosporCentro;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, DBCtrls, DB, DBClient, IBCustomDataSet, IBQuery, UnitDmGeneral,
  ComCtrls, CommCtrl, ExtCtrls, Buttons, Provider, DateUtils, DataSetToExcel,
  FR_Class, FR_DSet, FR_DBSet;

type
  TfrmInformeIngresosGastosporCentro = class(TForm)
    Label1: TLabel;
    edCentro: TDBLookupComboBox;
    Label2: TLabel;
    DScentro: TDataSource;
    CDSPuc: TClientDataSet;
    IBQcentro: TIBQuery;
    edPeriodo: TDBLookupComboBox;
    bar: TProgressBar;
    Panel1: TPanel;
    CmdAceptar: TBitBtn;
    btnReporte: TBitBtn;
    btnAExcel: TBitBtn;
    CmdCerrar: TBitBtn;
    IBQpuc: TIBQuery;
    DSPpuc: TDataSetProvider;
    CDSPucCODIGO: TStringField;
    CDSPucID_AGENCIA: TSmallintField;
    CDSPucCLAVE: TStringField;
    CDSPucNOMBRE: TStringField;
    CDSPucTIPO: TStringField;
    CDSPucCODIGOMAYOR: TStringField;
    CDSPucMOVIMIENTO: TSmallintField;
    CDSPucESBANCO: TSmallintField;
    CDSPucINFORME: TStringField;
    CDSPucNIVEL: TSmallintField;
    CDSPucNATURALEZA: TStringField;
    CDSPucCENTROCOSTO: TStringField;
    CDSPucSALDOINICIAL: TBCDField;
    CDSPucESCAPTACION: TSmallintField;
    CDSPucESCOLOCACION: TSmallintField;
    IBQmovs: TIBQuery;
    IBQdata: TIBQuery;
    CDSdata: TClientDataSet;
    CDSdataCODIGO: TStringField;
    CDSdataNOMBRE: TStringField;
    CDSdataSALDO_ANTERIOR: TCurrencyField;
    CDSdataDEBITO: TCurrencyField;
    CDSdataCREDITO: TCurrencyField;
    CDSdataSALDO_ACTUAL: TCurrencyField;
    CDSdataMOVIMIENTO: TIntegerField;
    CDSdataCODIGO_MAYOR: TStringField;
    CDSdataNIVEL: TIntegerField;
    CDSinforme: TClientDataSet;
    CDSinformeCODIGO: TStringField;
    CDSinformeNOMBRE: TStringField;
    CDSinformeSALDO_ANTERIOR: TCurrencyField;
    CDSinformeDEBITO: TCurrencyField;
    CDSinformeCREDITO: TCurrencyField;
    CDSinformeSALDO_ACTUAL: TCurrencyField;
    SD1: TSaveDialog;
    bar2: TProgressBar;
    bar3: TProgressBar;
    frReport1: TfrReport;
    frDBDataSet1: TfrDBDataSet;
    IBQsaldoinicial: TIBQuery;
    IBQmovant: TIBQuery;
    bar0: TProgressBar;

    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure CmdCerrarClick(Sender: TObject);
    procedure CmdAceptarClick(Sender: TObject);
    procedure btnAExcelClick(Sender: TObject);
    procedure btnReporteClick(Sender: TObject);
  private
    { Private declarations }
    procedure Inicializar;
    procedure ActualizarCuenta(Codigo: String; SaldoAnterior, Debito, Credito, SaldoActual: Currency);
    procedure SeguirMayor(Codigo: String; SaldoAnterior, Debito, Credito, SaldoActual: Currency);
    procedure ActualizarMayor(Codigo: String; SaldoAnterior, Debito, Credito, SaldoActual: Currency);
    function BuscarSaldoAnterior(Codigo: String): Currency;    
  public
    { Public declarations }
  end;

var
  frmInformeIngresosGastosporCentro: TfrmInformeIngresosGastosporCentro;
  dmGeneral: TdmGeneral;
  _vCodigoInicial: String;
  _vCodigoFinal: String;
  _vFechaInicial: TDate;
  _vFechaFinal: TDate;

implementation

{$R *.dfm}

uses UnitGlobales;

procedure TfrmInformeIngresosGastosporCentro.FormCreate(Sender: TObject);
begin
        dmGeneral := TdmGeneral.Create(self);
        dmGeneral.getConnected;
end;

procedure TfrmInformeIngresosGastosporCentro.FormShow(Sender: TObject);
begin
        IBQcentro.Database := dmGeneral.IBDatabase1;
        IBQcentro.Transaction := dmGeneral.IBTransaction1;

        IBQpuc.Database := dmGeneral.IBDatabase1;
        IBQpuc.Transaction := dmGeneral.IBTransaction1;

        IBQdata.Database := dmGeneral.IBDatabase1;
        IBQdata.Transaction := dmGeneral.IBTransaction1;

        IBQsaldoinicial.Database := dmGeneral.IBDatabase1;
        IBQsaldoinicial.Transaction := dmGeneral.IBTransaction1;

        IBQmovant.Database := dmGeneral.IBDatabase1;
        IBQmovant.Transaction := dmGeneral.IBTransaction1;

        IBQmovs.Database := dmGeneral.IBDatabase1;
        IBQmovs.Transaction := dmGeneral.IBTransaction1;

        Inicializar;
end;

procedure TfrmInformeIngresosGastosporCentro.Inicializar;
begin
        IBQcentro.Open;
        IBQcentro.Last;
        IBQpuc.Open;
        edPeriodo.ListSource := getPeriodos;

        CDSPuc.Open;
        CDSPuc.First;
        CDSdata.Open;
        CDSinforme.Open;


end;

procedure TfrmInformeIngresosGastosporCentro.CmdCerrarClick(
  Sender: TObject);
begin
        Close;
end;

procedure TfrmInformeIngresosGastosporCentro.CmdAceptarClick(
  Sender: TObject);
begin
        CmdAceptar.Enabled := False;
        SendMessage (bar0.Handle, PBM_SETBARCOLOR, 0, clOlive);
        bar0.Max := CDSPuc.RecordCount;
        bar0.Min := 0;
        bar0.Position := 0;

        while not CDSPuc.Eof do
        begin
              bar0.Position := CDSPuc.RecNo;
              Application.ProcessMessages;
              CDSdata.Append;
              CDSdataCODIGO.Value := CDSPucCODIGO.Value;
              CDSdataNOMBRE.Value := CDSPucNOMBRE.Value;
              CDSdataSALDO_ANTERIOR.Value := BuscarSaldoAnterior(CDSPucCODIGO.Value);
              CDSdataDEBITO.Value := 0;
              CDSdataCREDITO.Value := 0;
              CDSdataSALDO_ACTUAL.Value := 0;
              CDSdataMOVIMIENTO.Value := CDSPucMOVIMIENTO.Value;
              CDSdataNIVEL.Value := CDSdataNIVEL.Value;
              CDSdata.Post;

              CDSinforme.Append;
              CDSinformeCODIGO.Value := CDSPucCODIGO.Value;
              CDSinformeNOMBRE.Value := CDSPucNOMBRE.Value;
              CDSinformeSALDO_ANTERIOR.Value := 0;
              CDSinformeDEBITO.Value := 0;
              CDSinformeCREDITO.Value := 0;
              CDSinformeSALDO_ACTUAL.Value := 0;
              CDSinforme.Post;

              CDSPuc.Next;
        end;


        _vCodigoInicial := '400000000000000000';
        _vCodigoFinal := '799999999999999999';

        _vFechaInicial := EncodeDate(DBAnho,edPeriodo.KeyValue,01);
        _vFechaFinal := EncodeDate(DBAnho, edPeriodo.KeyValue, DaysInAMonth(DBAnho, edPeriodo.KeyValue));


        IBQmovs.ParamByName('CODIGO_INICIAL').AsString := _vCodigoInicial;
        IBQmovs.ParamByName('CODIGO_FINAL').AsString := _vCodigoFinal;

        IBQmovs.ParamByName('FECHA_INICIAL').AsDate := _vFechaInicial;
        IBQmovs.ParamByName('FECHA_FINAL').AsDate := _vFechaFinal;

        IBQmovs.ParamByName('ID_AGENCIA').AsInteger := edCentro.KeyValue;

        IBQmovs.Open;
        IBQmovs.Last;
        IBQmovs.First;

        bar.Max := IBQmovs.RecordCount;
        bar.Min := 0;
        bar.Position := 0;

        CDSdata.Filter := '';
        CDSdata.Filtered := false;

        while not IBQmovs.Eof do
        begin
          bar.Position := IBQmovs.RecNo;
          Application.ProcessMessages;
          CDSdata.Filter := 'CODIGO = ' + QuotedStr(IBQmovs.FieldByName('CODIGO').AsString);
          CDSdata.Filtered := True;
          while not CDSdata.Eof do
          begin
              CDSdata.Edit;
              CDSdataDEBITO.Value := CDSdataDEBITO.Value + IBQmovs.FieldByName('DEBITO').AsCurrency;
              CDSdataCREDITO.Value := CDSdataCREDITO.Value + IBQmovs.FieldByName('CREDITO').AsCurrency;
              CDSdata.Post;
              CDSdata.Next;
          end;

          IBQmovs.Next;
        end;

        // Actualizar CDSinforme

        CDSdata.Filtered := False;
        CDSdata.First;
        bar2.Max := CDSdata.RecordCount;
        bar2.Min := 0;
        bar2.Position := 0;
        SendMessage (bar2.Handle, PBM_SETBARCOLOR, 0, clYellow);

        while not CDSdata.Eof do
        begin
           bar2.Position := CDSdata.RecNo;
           Application.ProcessMessages;
           ActualizarCuenta(CDSdataCODIGO.Value, CDSdataSALDO_ANTERIOR.Value, CDSdataDEBITO.Value, CDSdataCREDITO.Value, CDSdataSALDO_ACTUAL.Value);
           CDSdata.Next;
        end;

        CDSinforme.Filtered := False;
        // Depurar Informe
        CDSInforme.First;
        bar3.Min := 0;
        bar3.Max := CDSInforme.RecordCount;
        bar3.Position := 0;
        SendMessage (bar3.Handle, PBM_SETBARCOLOR, 0, clGreen);
        while not CDSInforme.Eof do
        begin
          bar3.Position := CDSinforme.RecNo;
          Application.ProcessMessages;
          CDSinforme.Edit;
          CDSinformeSALDO_ACTUAL.Value := CDSinformeSALDO_ANTERIOR.Value + CDSinformeDEBITO.Value - CDSinformeCREDITO.Value;
          CDSinforme.Post;
          if (CDSinformeSALDO_ANTERIOR.Value = 0) and (CDSinformeDEBITO.Value = 0) and (CDSinformeCREDITO.Value = 0) and (CDSinformeSALDO_ACTUAL.Value = 0) then
          begin
              CDSinforme.Delete;
              bar3.Max := bar3.Max - 1;
          end;
          CDSinforme.Next;
        end;

        btnReporte.Enabled := True;
        btnAExcel.Enabled := True;


end;

procedure TfrmInformeIngresosGastosporCentro.ActualizarCuenta(Codigo: String; SaldoAnterior, Debito, Credito, SaldoActual: Currency);
begin
        CDSinforme.Filtered := False;
        CDSinforme.Filter := 'CODIGO = '+ QuotedStr(Codigo);
        CDSinforme.Filtered := True;

        While not CDSInforme.Eof do
        begin
         CDSinforme.Edit;
         CDSinformeSALDO_ANTERIOR.Value := CDSinformeSALDO_ANTERIOR.Value + SaldoAnterior;
         CDSinformeDEBITO.Value := CDSinformeDEBITO.Value + Debito;
         CDSinformeCREDITO.Value := CDSinformeCREDITO.Value + Credito;
         CDSinforme.Post;
         CDSinforme.Next;
        end;

        SeguirMayor(Codigo, SaldoAnterior, Debito, Credito, SaldoActual);

end;

procedure TfrmInformeIngresosGastosporCentro.SeguirMayor(Codigo: String; SaldoAnterior, Debito, Credito, SaldoActual: Currency);
var
  _vCodigoMayor: String;
begin
          CDSPuc.Filtered := False;
          CDSPuc.Filter := 'CODIGO = ' + QuotedStr(Codigo);
          CDSPuc.Filtered := True;

          if (CDSPucCODIGOMAYOR.Value <> '') and (CDSPucNIVEL.Value > 1) then
          begin
              _vCodigoMayor := CDSPucCODIGOMAYOR.Value;
              ActualizarCuenta(_vCodigoMayor, SaldoAnterior, Debito, Credito, SaldoActual);
          end;
end;

procedure TfrmInformeIngresosGastosporCentro.ActualizarMayor(Codigo: String; SaldoAnterior, Debito, Credito, SaldoActual: Currency);
begin

end;

procedure TfrmInformeIngresosGastosporCentro.btnAExcelClick(
  Sender: TObject);
var
   ExcelFile : TDataSetToExcel;
begin
          SD1.Title := 'Nombre Para El Archivo de Ingresos y Gastos';
          if (SD1.Execute) then
          begin
           CDSinforme.First;
           ExcelFile := TDataSetToExcel.Create(CDSinforme,SD1.FileName);
           ExcelFile.WriteFile;
           ExcelFile.Free;
          end;
end;

procedure TfrmInformeIngresosGastosporCentro.btnReporteClick(
  Sender: TObject);
begin
                CDSinforme.First;
                frReport1.LoadFromFile('ReportesCon\frEstadoIngresosGastosCentro.frf');
                frReport1.Dictionary.Variables['EMPRESA'] := QuotedStr(Empresa);
                frReport1.Dictionary.Variables['NIT'] := QuotedStr(nit);
                frReport1.Dictionary.Variables['CORTE'] := QuotedStr(edPeriodo.Text);
                frReport1.Dictionary.Variables['ANHO'] := DBAnho;
                frReport1.Dictionary.Variables['DESCRIPCION_AGENCIA'] := QuotedStr(edCentro.Text);
                if frReport1.PrepareReport then
                   frReport1.ShowPreparedReport;
end;

function TfrmInformeIngresosGastosporCentro.BuscarSaldoAnterior(Codigo:String):Currency;
var
  _vPeriodo : Integer;
  _vSaldo, _vMov : Currency;
begin
        IBQsaldoinicial.Close;
        IBQsaldoinicial.ParamByName('CODIGO').AsString := Codigo;
        IBQsaldoinicial.ParamByName('ID_AGENCIA').AsInteger := edCentro.KeyValue;
        IBQsaldoinicial.Open;
        _vSaldo := IBQsaldoinicial.FieldByName('SALDOINICIAL').AsCurrency;

        _vPeriodo := edPeriodo.KeyValue;
        if (_vPeriodo > 1) then
        begin
          _vFechaInicial := EncodeDate(DBAnho,01,01);
          _vFechaFinal := EncodeDate(DBAnho, _vPeriodo - 1, DaysInAMonth(DBAnho, edPeriodo.KeyValue - 1));

          IBQmovant.Close;
          IBQmovant.ParamByName('CODIGO').AsString := Codigo;
          IBQmovant.ParamByName('ID_AGENCIA').AsInteger := edCentro.KeyValue;
          IBQmovant.ParamByName('FECHA_INICIAL').AsDate := _vFechaInicial;
          IBQmovant.ParamByName('FECHA_FINAL').AsDate := _vFechaFinal;
          IBQmovant.Open;

          _vMov := IBQmovant.FieldByName('MOVIMIENTOS').AsCurrency;

          _vSaldo := _vSaldo + _vMov;
        end;

        result := _vSaldo;

end;

end.
