unit UnitBalanceGeneral;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, Mask, ExtCtrls, DB, IBCustomDataSet, IBQuery,
  IBSQL, pr_Common, pr_TxClasses, StrUtils, DBClient, UnitDmGeneral,
  FR_Class, frOLEExl, FR_DSet, FR_DBSet, Grids, DBGrids, DateUtils, DataSetToExcel,
  ComCtrls, FR_E_TXT, FR_E_CSV, frexpimg;

type
  TfrmBalanceGeneral = class(TForm)
    Panel1: TPanel;
    Label5: TLabel;
    Label4: TLabel;
    CBMeses: TComboBox;
    EdAno: TMaskEdit;
    Panel2: TPanel;
    CmdAceptar: TBitBtn;
    CmdCerrar: TBitBtn;
    IBQPuc: TIBQuery;
    IBQuery1: TIBQuery;
    ReportBalance: TprTxReport;
    frDBDataSet1: TfrDBDataSet;
    frDBDataSet2: TfrDBDataSet;
    frOLEExcelExport1: TfrOLEExcelExport;
    frReport1: TfrReport;
    DSdata: TDataSource;
    DBGrid1: TDBGrid;
    btnReporte: TBitBtn;
    btnAExcel: TBitBtn;
    IBQsaldo: TIBQuery;
    ProgressBar1: TProgressBar;
    SD1: TSaveDialog;
    frTIFFExport1: TfrTIFFExport;
    frCSVExport1: TfrCSVExport;
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
    procedure CBMesesExit(Sender: TObject);
    procedure CBMesesKeyPress(Sender: TObject; var Key: Char);
    procedure EdAnoExit(Sender: TObject);
    procedure EdAnoKeyPress(Sender: TObject; var Key: Char);
    procedure CmdCerrarClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure CmdAceptarClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure IBQTablaCalcFields(DataSet: TDataSet);
    procedure IBQTabla1CalcFields(DataSet: TDataSet);
    procedure btnReporteClick(Sender: TObject);
    procedure btnAExcelClick(Sender: TObject);
  private
    function Empleado:String;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmBalanceGeneral: TfrmBalanceGeneral;
  dmGeneral : TdmGeneral;
  Mes : String;
  MesCorte : String;
  NomMes : String;
  AnoCorte : Integer;
  CodigoInicial : String;
  CodigoFinal   : String;
implementation

{$R *.dfm}

uses  UnitGlobales, UnitVistaPreliminar;

procedure TfrmBalanceGeneral.CBMesesExit(Sender: TObject);
begin
        With CBMeses do
         case ItemIndex of
           0: begin
                Mes := '01';
                MesCorte := '00';
                AnoCorte := AnoCorte - 1;
                NomMes := 'Enero';
              end;
           1: begin
                Mes := '02';
                MesCorte := '01';
                NomMes := 'Febrero';
              end;
           2: begin
                Mes := '03';
                MesCorte := '02';
                NomMes := 'Marzo';
              end;
           3: begin
                Mes := '04';
                MesCorte := '03';
                NomMes := 'Abril';
              end;
           4: begin
                Mes := '05';
                MesCorte := '04';
                NomMes := 'Mayo';
              end;
           5: begin
                Mes := '06';
                MesCorte := '05';
                NomMes := 'Junio';
              end;
           6: begin
                Mes := '07';
                MesCorte := '06';
                NomMes := 'Julio';
              end;
           7: begin
                Mes := '08';
                MesCorte := '07';
                NomMes := 'Agosto';
              end;
           8: begin
                Mes := '09';
                MesCorte := '08';
                NomMes := 'Septiembre';
              end;
           9: begin
                Mes := '10';
                MesCorte := '09';
                NomMes := 'Octubre';
              end;
          10: begin
                Mes := '11';
                MesCorte := '10';
                NomMes := 'Noviembre';
              end;
          11: begin
                Mes := '12';
                MesCorte := '11';
                NomMes := 'Diciembre';
              end;
         end;
end;

procedure TfrmBalanceGeneral.CBMesesKeyPress(Sender: TObject;
  var Key: Char);
begin
        EnterTabs(Key,Self);
end;

procedure TfrmBalanceGeneral.EdAnoExit(Sender: TObject);
begin
        AnoCorte := StrToInt(EdAno.Text);
end;

procedure TfrmBalanceGeneral.EdAnoKeyPress(Sender: TObject; var Key: Char);
begin
        EnterTabs(Key,Self);
end;

procedure TfrmBalanceGeneral.CmdCerrarClick(Sender: TObject);
begin
        Close;
end;

procedure TfrmBalanceGeneral.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
        dmGeneral.Free;
        Action := CaFree;
end;

procedure TfrmBalanceGeneral.CmdAceptarClick(Sender: TObject);
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
       if dmGeneral.IBTransaction1.InTransaction then
          dmGeneral.IBTransaction1.Rollback;
       dmGeneral.IBTransaction1.StartTransaction;
       Empleado;
       IBQTabla.EmptyDataSet;
       IBQTabla1.EmptyDataSet;
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
          SQL.Add('("con$puc".ID_AGENCIA = :ID_AGENCIA) and');
          SQL.Add('("con$puc".NIVEL = :"NIVEL")');
          SQL.Add('order by "con$puc".CODIGO');

          ParamByName('ID_AGENCIA').AsInteger := Agencia;
          ParamByName('NIVEL').AsInteger := 3;
          Open;
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

       Periodo := CBMeses.ItemIndex + 1;
       PeriodoAnt := Periodo - 1;

       if (Periodo = 1) then
       begin
           FechaInicialParaSaldoInicial := 0;
           FechaFinalParaSaldoInicial := 0;
       end
       else
       begin
           FechaInicialParaSaldoInicial := EncodeDate(DBAnho, 01, 01);
           FechaFinalParaSaldoInicial := EncodeDate(DBAnho,PeriodoAnt,DaysInAMonth(DBAnho,PeriodoAnt));
       end;

       FechaInicialMovimiento := EncodeDate(DBAnho, Periodo, 01);
       FechaFinalMovimiento := EncodeDate(DBAnho, Periodo, DaysInAMonth(DBAnho, Periodo));

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
            if (Periodo > 1) then
            begin
                    IBQsaldo.Close;
                    IBQsaldo.ParamByName('FECHA_INI').AsDate := FechaInicialParaSaldoInicial;
                    IBQsaldo.ParamByName('FECHA_FIN').AsDate := FechaFinalParaSaldoInicial;
                    IBQsaldo.ParamByName('CODIGO').AsString := Codigo;
                    IBQsaldo.Open;
                    if (not VarIsNull(IBQsaldo.FieldByName('DEBITO').Value)) then
                    begin
                        DebitoAnt := IBQsaldo.FieldByName('DEBITO').AsCurrency;
                    end
                    else
                    begin
                        DebitoAnt := 0;
                    end;

                    if (not VarIsNull(IBQsaldo.FieldByName('CREDITO').Value)) then
                    begin
                        CreditoAnt := IBQsaldo.FieldByName('CREDITO').AsCurrency;
                    end
                    else
                    begin
                        CreditoAnt := 0;
                    end;
            end
            else
            begin
                DebitoAnt:= 0;
                CreditoAnt:= 0;
            end;


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

             IBQPuc.Close;

             IBQTabla.Filter := 'CODIGO >=' + QuotedStr('8000');
             IBQTabla.Filtered := True;

             IBQTabla.Open;
             IBQTabla.First;

             while not IBQTabla.Eof do
             begin
                IBQTabla1.Open;
                IBQTabla1.Insert;
                IBQTabla1.FieldByName('CODIGO').AsString := IBQTabla.FieldByName('CODIGO').AsString;
                IBQTabla1.FieldByName('NOMBRE').AsString := IBQTabla.FieldByName('NOMBRE').AsString;
                IBQTabla1.FieldByName('DEBITOANT').AsCurrency := IBQTabla.FieldByName('DEBITOANT').AsCurrency;
                IBQTabla1.FieldByName('CREDITOANT').AsCurrency := IBQTabla.FieldByName('CREDITOANT').AsCurrency;
                IBQTabla1.FieldByName('DEBITOMOV').AsCurrency := IBQTabla.FieldByName('DEBITOMOV').AsCurrency;
                IBQTabla1.FieldByName('CREDITOMOV').AsCurrency := IBQTabla.FieldByName('CREDITOMOV').AsCurrency;
                IBQTabla1.Post;
                IBQTabla1.Close;

                IBQTabla.Next;
             end;

             IBQTabla.Filter := 'CODIGO <' + QuotedStr('8000');
             IBQTabla.Filtered := True;


             CmdAceptar.Enabled := False;
             btnReporte.Enabled := True;
             btnAExcel.Enabled := True;

end;

function TfrmBalanceGeneral.Empleado;
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


procedure TfrmBalanceGeneral.FormCreate(Sender: TObject);
begin
        dmGeneral := TdmGeneral.Create(self);
        dmGeneral.getConnected;
        IBQPuc.Database := dmGeneral.IBDatabase1;
        IBQSaldo.Database := dmGeneral.IBDatabase1;
        IBQuery1.Database := dmGeneral.IBDatabase1;
        IBQPuc.Transaction := dmGeneral.IBTransaction1;
        IBQSaldo.Transaction := dmGeneral.IBTransaction1;
        IBQuery1.Transaction := dmGeneral.IBTransaction1;
end;

procedure TfrmBalanceGeneral.IBQTablaCalcFields(DataSet: TDataSet);
var
  ValorCuenta: Currency;
begin
{
        ValorCuenta := DataSet.FieldByName('DEBITOANT').AsCurrency - DataSet.FieldByName('CREDITOANT').AsCurrency +
                       DataSet.FieldByName('DEBITOMOV').AsCurrency - DataSet.FieldByName('CREDITOMOV').AsCurrency;
        if (ValorCuenta > 0) then
        begin
          DataSet.FieldByName('DEBITOACT').AsCurrency :=  ValorCuenta;
          DataSet.FieldByName('CREDITOACT').AsCurrency := 0;
        end
        else
        begin
          DataSet.FieldByName('DEBITOACT').AsCurrency :=  0;
          DataSet.FieldByName('CREDITOACT').AsCurrency := -ValorCuenta;
        end;
        }
end;

procedure TfrmBalanceGeneral.IBQTabla1CalcFields(DataSet: TDataSet);
var
  ValorCuenta: Currency;
begin
{
        ValorCuenta := DataSet.FieldByName('DEBITOANT').AsCurrency - DataSet.FieldByName('CREDITOANT').AsCurrency +
                       DataSet.FieldByName('DEBITOMOV').AsCurrency - DataSet.FieldByName('CREDITOMOV').AsCurrency;
        if (ValorCuenta > 0) then
        begin
          DataSet.FieldByName('DEBITOACT').AsCurrency :=  ValorCuenta;
          DataSet.FieldByName('CREDITOACT').AsCurrency := 0;
        end
        else
        begin
          DataSet.FieldByName('DEBITOACT').AsCurrency :=  0;
          DataSet.FieldByName('CREDITOACT').AsCurrency := -ValorCuenta;
        end;
        }
end;

procedure TfrmBalanceGeneral.btnReporteClick(Sender: TObject);
begin
             IBQTabla.Filter := 'CODIGO <' + QuotedStr('8000');
             IBQTabla.Filtered := True;
             IBQTabla.First;

             frReport1.LoadFromFile('ReportesCon\frMayorBalance.frf');
             frReport1.Dictionary.Variables['EMPRESA'] := QuotedStr(Empresa);
             frReport1.Dictionary.Variables['NIT'] := QuotedStr(nit);
             frReport1.Dictionary.Variables['MES'] := QuotedStr(CBMeses.Text);
             frReport1.Dictionary.Variables['ANHOCORTE'] := QuotedStr(EdAno.Text);
             if frReport1.PrepareReport then
                   frReport1.ShowPreparedReport;
end;

procedure TfrmBalanceGeneral.btnAExcelClick(Sender: TObject);
var
   ExcelFile : TDataSetToExcel;
begin
          IBQTabla.Filtered := False;
          IBQTabla.First;

          SD1.Title := 'Nombre Para El Archivo de Mayor-Balance';
          if (SD1.Execute) then
          begin
           ExcelFile := TDataSetToExcel.Create(IBQTabla,SD1.FileName);
           ExcelFile.WriteFile;
           ExcelFile.Free;
          end;
end;

end.





