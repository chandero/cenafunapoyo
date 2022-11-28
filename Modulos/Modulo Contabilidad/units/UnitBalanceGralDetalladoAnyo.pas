unit UnitBalanceGralDetalladoAnyo;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, Mask, ComCtrls, ExtCtrls, DB, StrUtils,
  IBCustomDataSet, IBQuery, pr_Common, pr_TxClasses, IBSQL, UnitDmGeneral,
  Grids, DBGrids, DBClient, frexpimg, FR_E_TXT, FR_E_CSV, FR_Class,
  frOLEExl, FR_DSet, FR_DBSet, JvEdit, JvTypedEdit, DataSetToExcel;

type
  TfrmBalanceGralDetalladoAnyo = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    EdCodigoInicial: TMaskEdit;
    EdCodigoFinal: TMaskEdit;
    Panel2: TPanel;
    CmdAceptar: TBitBtn;
    CmdCerrar: TBitBtn;
    CBNivel: TComboBox;
    IBQuery1: TIBQuery;
    IBQPuc: TIBQuery;
    ChkPapelCarta: TCheckBox;
    ReportBalanceDet: TprTxReport;
    Reporte: TprTxReport;
    btnReporte: TBitBtn;
    btnAExcel: TBitBtn;
    ProgressBar1: TProgressBar;
    IBQTabla: TClientDataSet;
    IBQTablaCODIGO: TStringField;
    IBQTablaNOMBRE: TStringField;
    IBQTablaDEBITOANT: TCurrencyField;
    IBQTablaCREDITOANT: TCurrencyField;
    IBQTablaDEBITOMOV: TCurrencyField;
    IBQTablaCREDITOMOV: TCurrencyField;
    IBQTablaDEBITOACT: TCurrencyField;
    IBQTablaCREDITOACT: TCurrencyField;
    IBQTablaDESCRIPCION_AGENCIA: TStringField;
    IBQTabla1: TClientDataSet;
    StringField1: TStringField;
    StringField2: TStringField;
    CurrencyField1: TCurrencyField;
    CurrencyField2: TCurrencyField;
    CurrencyField3: TCurrencyField;
    CurrencyField4: TCurrencyField;
    IBQTabla1DEBITOACT: TCurrencyField;
    IBQTabla1CREDITOACT: TCurrencyField;
    IBQsaldo: TIBQuery;
    DBGridData: TDBGrid;
    frDBDataSet1: TfrDBDataSet;
    frOLEExcelExport1: TfrOLEExcelExport;
    frReport1: TfrReport;
    SD1: TSaveDialog;
    frCSVExport1: TfrCSVExport;
    frTIFFExport1: TfrTIFFExport;
    DSdata: TDataSource;
    Label4: TLabel;
    edAno: TJvYearEdit;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure CmdCerrarClick(Sender: TObject);
    procedure CmdAceptarClick(Sender: TObject);

    procedure CBNivelExit(Sender: TObject);
    procedure EdCodigoInicialExit(Sender: TObject);
    procedure CBMesesKeyPress(Sender: TObject; var Key: Char);
    procedure CBNivelKeyPress(Sender: TObject; var Key: Char);
    procedure EdCodigoInicialKeyPress(Sender: TObject; var Key: Char);
    procedure EdCodigoFinalKeyPress(Sender: TObject; var Key: Char);
    procedure EdCodigoFinalExit(Sender: TObject);
    procedure EdAnoKeyPress(Sender: TObject; var Key: Char);

    procedure FormCreate(Sender: TObject);
    procedure btnReporteClick(Sender: TObject);
    procedure btnAExcelClick(Sender: TObject);
  private
    function Empleado : String;
    procedure Inicializar;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmBalanceGralDetalladoAnyo: TfrmBalanceGralDetalladoAnyo;
  dmGeneral : TdmGeneral;
  Mes           : String;
  MesCorte      : String;
  NomMes        : String;
  Cadena        : String;
  CodigoInicial : String;
  Codigofinal   : String;
  Nivel         : Integer;
  AnoCorte      : Integer;
  NivelCodigo   : Integer;

implementation

uses  unitglobales, unitglobalescol, UnitPantallaProgreso, UnitVistaPreliminar;
{$R *.dfm}

procedure TfrmBalanceGralDetalladoAnyo.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
        if IBQPuc.Transaction.InTransaction then
          IBQPuc.Transaction.Commit;
        Action := caFree;
end;

procedure TfrmBalanceGralDetalladoAnyo.CmdCerrarClick(Sender: TObject);
begin
        Close;
end;

procedure TfrmBalanceGralDetalladoAnyo.CmdAceptarClick(Sender: TObject);
var
   FechaInicialParaSaldoInicial,
   FechaFinalParaSaldoInicial,
   FechaInicialMovimiento,
   FechaFinalMovimiento: TDateTime;
   Periodo,PeriodoAnt: Word;
   SaldoAnterior,DebitoAnt, CreditoAnt, DebitoMov, CreditoMov, DebitoAct, CreditoAct, SaldoActual: Currency;
   Codigo: String;
   Longitud: Integer;
begin
       CmdAceptar.Enabled := False;
       if dmGeneral.IBTransaction1.InTransaction then
          dmGeneral.IBTransaction1.Rollback;
       dmGeneral.IBTransaction1.StartTransaction;
       Empleado;
       IBQTabla.EmptyDataSet;
       CmdAceptar.Enabled := false;
       with IBQPuc do
        Begin
          Close;
          SQL.Clear;
          SQL.Add('select ');
          SQL.Add('"con$puc".CODIGO,');
          SQL.Add('"con$puc".ID_AGENCIA,');
          SQL.Add('"con$puc".NOMBRE,');
          SQL.Add('"con$puc".NIVEL,');
          SQL.Add('"con$puc".SALDOINICIAL,');
          SQL.Add('"gen$agencia".DESCRIPCION_AGENCIA');
          SQL.Add(' from "con$puc" ');
          SQL.Add('LEFT JOIN "gen$agencia" ON ("con$puc".ID_AGENCIA = "gen$agencia".ID_AGENCIA)');
          SQL.Add('where ');
          SQL.Add('("con$puc".NIVEL <= :"NIVEL")');
          SQL.Add(' and ("con$puc".CODIGO >= :CODIGO_INICIAL and "con$puc".CODIGO <= :CODIGO_FINAL)');
          SQL.Add('order by "con$puc".CODIGO');

          ParamByName('NIVEL').AsInteger := CBNivel.ItemIndex + 1;
          ParamByName('CODIGO_INICIAL').AsString := CodigoInicial;
          ParamByName('CODIGO_FINAL').AsString := CodigoFinal;
          Open;
          Last;
          First;
       end;

       with IBQsaldo do begin
          Close;
          SQL.Clear;
          SQL.Add('SELECT SUM(a.DEBITO) AS DEBITO, SUM(a.CREDITO) AS CREDITO FROM "con$comprobante" c');
          SQL.Add('INNER JOIN "con$auxiliar" a ON a.TIPO_COMPROBANTE = c.TIPO_COMPROBANTE and a.ID_COMPROBANTE = c.ID_COMPROBANTE');
          SQL.Add('WHERE a.FECHA BETWEEN :FECHA_INI and :FECHA_FIN and a.CODIGO LIKE :CODIGO');
          SQL.Add(' and a.ESTADOAUX = :ESTADO');
          ParamByName('ESTADO').AsString := 'C';
       end;

       Periodo := 12;
       PeriodoAnt := 0;

       FechaInicialParaSaldoInicial := 0;
       FechaFinalParaSaldoInicial := 0;

       FechaInicialMovimiento := EncodeDate(DBAnho, 1, 01);
       FechaFinalMovimiento := EncodeDate(DBAnho, 12, 31);

       IBQTabla.Open;
       IBQTabla.EmptyDataSet;

       ProgressBar1.Min := 0;
       ProgressBar1.Max := IBQPuc.RecordCount;
       ProgressBar1.Position := 0; 

       while not IBQPuc.Eof do
       begin

            ProgressBar1.Position := IBQPuc.RecNo;
            Application.ProcessMessages;

            case (IBQPuc.FieldByName('NIVEL').AsInteger) of
                  1: Longitud := 1;
                  2: Longitud := 2;
                  3: Longitud := 4;
                  4: Longitud := 6;
                  5: Longitud := 8;
                  6: Longitud := 10;
                  7: Longitud := 12;
                  8: Longitud := 14;
                  9: Longitud := 16;
                  10: Longitud := 18;
            end;

            Codigo := LeftStr(IBQpuc.FieldByName('CODIGO').AsString, Longitud) + '%';

            IBQTabla.Append;

            DebitoAnt:= 0;
            CreditoAnt:= 0;


            IBQTablaCODIGO.Value := LeftStr(IBQPuc.FieldByName('CODIGO').AsString,Longitud);
            IBQTablaNOMBRE.Value := IBQPuc.FieldByName('NOMBRE').AsString;
            SaldoAnterior := IBQPuc.FieldByName('SALDOINICIAL').AsCurrency + DebitoAnt - CreditoAnt;
            if (SaldoAnterior > 0) then
            begin
                IBQTablaDEBITOANT.Value := SaldoAnterior;
                IBQTablaCREDITOANT.Value := 0;
            end
            else
            begin
                IBQTablaDEBITOANT.Value := 0;
                IBQTablaCREDITOANT.Value := -SaldoAnterior;
            end;



            IBQsaldo.Close;
            IBQsaldo.ParamByName('FECHA_INI').AsDate := FechaInicialMovimiento;
            IBQsaldo.ParamByName('FECHA_FIN').AsDate := FechaFinalMovimiento;
            IBQsaldo.ParamByName('CODIGO').AsString := Codigo;
            IBQsaldo.Open;

            if (not VarIsNull(IBQsaldo.FieldByName('DEBITO').Value)) then
            begin
                DebitoMov := IBQsaldo.FieldByName('DEBITO').AsCurrency;
            end
            else
            begin
                DebitoMov := 0;
            end;

            if (not VarIsNull(IBQsaldo.FieldByName('CREDITO').Value)) then
            begin
                    CreditoMov := IBQsaldo.FieldByName('CREDITO').AsCurrency;
            end
            else
            begin
                    CreditoMov := 0;
            end;

            IBQTablaDEBITOMOV.Value := DebitoMov;
            IBQTablaCREDITOMOV.Value := CreditoMov;


            if (IBQTablaDEBITOANT.Value <> 0) OR (IBQTablaCREDITOANT.Value <> 0) OR (IBQTablaDEBITOMOV.Value <> 0) OR (IBQTablaCREDITOMOV.Value <> 0) then
            begin
                SaldoActual := IBQTablaDEBITOANT.Value - IBQTablaCREDITOANT.Value +
                       IBQTablaDEBITOMOV.Value - IBQTablaCREDITOMOV.Value;
                if (SaldoActual > 0) then
                begin
                        IBQTablaDEBITOACT.Value :=  SaldoActual;
                        IBQTablaCREDITOACT.Value := 0;
                end
                else
                begin
                        IBQTablaDEBITOACT.Value :=  0;
                        IBQTablaCREDITOACT.Value := -SaldoActual;
                end;
                IBQTabla.Post;
            end
            else
            begin
                IBQTabla.Cancel;
            end;
            IBQPuc.Next;
       end;

       btnReporte.Enabled := True;
       btnAExcel.Enabled := True;

end;


procedure TfrmBalanceGralDetalladoAnyo.CBNivelExit(Sender: TObject);
begin
        With CBNivel do
         case ItemIndex of
           0: begin
                Nivel := 1;
                NivelCodigo := 1;
              end;
           1: begin
                Nivel := 2;
                NivelCodigo := 2;
              end;
           2: begin
                Nivel := 3;
                NivelCodigo := 4;
              end;
           3..10: begin
                Nivel := ItemIndex + 1;
                NivelCodigo := ItemIndex * 2;
              end;
         end;
end;

procedure TfrmBalanceGralDetalladoAnyo.EdCodigoInicialExit(Sender: TObject);
begin
        Cadena := EdCodigoInicial.Text;
        while Pos(' ',Cadena) > 0 do
        Cadena[Pos(' ',Cadena)] := '0';
        CodigoInicial := Cadena;
end;

procedure TfrmBalanceGralDetalladoAnyo.CBMesesKeyPress(Sender: TObject;
  var Key: Char);
begin
        EnterTabs(Key,Self);
end;

procedure TfrmBalanceGralDetalladoAnyo.CBNivelKeyPress(Sender: TObject;
  var Key: Char);
begin
        EnterTabs(Key,Self);
end;

procedure TfrmBalanceGralDetalladoAnyo.EdCodigoInicialKeyPress(Sender: TObject;
  var Key: Char);
begin
        EnterTabs(Key,Self);
end;

procedure TfrmBalanceGralDetalladoAnyo.EdCodigoFinalKeyPress(Sender: TObject;
  var Key: Char);
begin
        EnterTabs(Key,Self);
end;

procedure TfrmBalanceGralDetalladoAnyo.EdCodigoFinalExit(Sender: TObject);
begin
        Cadena := EdCodigoFinal.Text;
        while Pos(' ',Cadena) > 0 do
        Cadena[Pos(' ',Cadena)] := '0';
        CodigoFinal := Cadena;
end;

procedure TfrmBalanceGralDetalladoAnyo.EdAnoKeyPress(Sender: TObject;
  var Key: Char);
begin
        EnterTabs(Key,Self);
end;



function TfrmBalanceGralDetalladoAnyo.Empleado;
begin
        with IBQuery1 do
         begin
           sql.Clear;
           sql.Add('select PRIMER_APELLIDO, SEGUNDO_APELLIDO, NOMBRE from "gen$empleado"');
           sql.Add('where "gen$empleado"."ID_EMPLEADO" =:"ID_EMPLEADO"');
           ParamByName('ID_EMPLEADO').AsString := DBAlias;
           Open;
           Result := FieldByName('NOMBRE').AsString + ' ' + FieldByname('PRIMER_APELLIDO').AsString + ' ' + FieldByName('SEGUNDO_APELLIDO').AsString;
         end;
end;

procedure TfrmBalanceGralDetalladoAnyo.FormCreate(Sender: TObject);
begin
        dmGeneral := TdmGeneral.Create(self);
        dmGeneral.getConnected;
        IBQSaldo.Database := dmGeneral.IBDatabase1;
        IBQuery1.Database := dmGeneral.IBDatabase1;
        IBQPuc.Database := dmGeneral.IBDatabase1;

        IBQSaldo.Transaction := dmGeneral.IBTransaction1;
        IBQuery1.Transaction := dmGeneral.IBTransaction1;
        IBQPuc.Transaction := dmGeneral.IBTransaction1;

  Inicializar;
end;

procedure TfrmBalanceGralDetalladoAnyo.Inicializar;
begin
      with IBQPuc do begin
        if Transaction.InTransaction then
           Transaction.Rollback;
        Transaction.StartTransaction;
      end;
      edAno.Value := DBAnho;
end;

procedure TfrmBalanceGralDetalladoAnyo.btnReporteClick(Sender: TObject);
begin
                IBQTabla.First;
                frReport1.LoadFromFile('ReportesCon\frBalanceAnho.frf');
                frReport1.Dictionary.Variables['EMPRESA'] := QuotedStr(Empresa);
                frReport1.Dictionary.Variables['NIT'] := QuotedStr(nit);
                frReport1.Dictionary.Variables['CORTE'] := QuotedStr('12');
                frReport1.Dictionary.Variables['ANHO'] := QuotedStr(IntToStr(edAno.Value));
                if frReport1.PrepareReport then
                   frReport1.ShowPreparedReport;

end;

procedure TfrmBalanceGralDetalladoAnyo.btnAExcelClick(Sender: TObject);
var
   ExcelFile : TDataSetToExcel;
begin
          SD1.Title := 'Nombre Para El Archivo de Balance';
          if (SD1.Execute) then
          begin
           IBQTabla.First;
           ExcelFile := TDataSetToExcel.Create(IBQTabla,SD1.FileName);
           ExcelFile.WriteFile;
           ExcelFile.Free;
          end;end;

end.

