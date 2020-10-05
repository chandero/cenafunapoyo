unit UnitAportesPeriodo;

interface

uses
  DateUtils, StrUtils, Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, IBSQL, DB, DBClient, IBCustomDataSet, IBQuery, Grids,
  Buttons, ExtCtrls, JvTypedEdit, JvEdit, JvSpecialProgress, XLSfile, DataSetToExcel, Math,JclDateTime,
  ComCtrls;

type
  TfrmAportesPeriodo = class(TForm)
    GroupBox1: TGroupBox;
    Label1: TLabel;
    Label2: TLabel;
    EdMonto: TJvCurrencyEdit;
    EdPeriodo: TJvYearEdit;
    Panel1: TPanel;
    btnProcesar: TBitBtn;
    btnCerrar: TBitBtn;
    btnAExcel: TBitBtn;
    IBQuery1: TIBQuery;
    Cds1: TClientDataSet;
    Cds1Tipo: TIntegerField;
    Cds1Codigo: TIntegerField;
    Cds1SubCodigo: TIntegerField;
    Cds1NumeroIde: TStringField;
    Cds1DigitoIde: TStringField;
    Cds1TipoIde: TStringField;
    Cds1Nombre: TStringField;
    Cds1Primer: TCurrencyField;
    Cds1Segundo: TCurrencyField;
    Cds1TercerValor: TCurrencyField;
    Cds1Direccion: TStringField;
    Cds1DptoMun: TStringField;
    sd1: TSaveDialog;
    Bar2: TJvSpecialProgress;
    Bar1: TJvSpecialProgress;
    IBSQL2: TIBSQL;
    IBSQL1: TIBQuery;
    IBSQL3: TIBSQL;
    CdSaldo: TClientDataSet;
    CdSaldoTIPO_DOC: TIntegerField;
    CdSaldoNUMERO: TStringField;
    CdSaldoDV: TStringField;
    CdSaldoP_APELLIDO: TStringField;
    CdSaldoS_APELLIDO: TStringField;
    CdSaldoP_NOMBRE: TStringField;
    CdSaldoS_NOMBRE: TStringField;
    CdSaldoRAZON: TStringField;
    CdSaldoDIRECCION: TStringField;
    CdSaldoSALDO: TStringField;
    save: TSaveDialog;
    CdSaldoDPTO: TStringField;
    CdSaldoMCP: TStringField;
    IBSQLPor: TIBSQL;
    GroupBox2: TGroupBox;
    Label3: TLabel;
    Label5: TLabel;
    JvTotal: TJvCurrencyEdit;
    dtFecha: TDateTimePicker;
    EdFechaCorte: TDateTimePicker;
    Label4: TLabel;
    CdSaldoPAIS: TStringField;
    CdSaldoPARTICIPACIONE: TStringField;
    CdSaldoPARTICIPACIONF: TStringField;
    procedure btnProcesarClick(Sender: TObject);
    procedure btnCerrarClick(Sender: TObject);
    procedure btnAExcelClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
      function StrAfter(value: Extended): String;
      function RightPad(S: string; Ch: Char; Len: Integer): string;
    { Private declarations }
  public

  published
    function Participacion(Nm, Dg: integer): Currency;

    { Public declarations }
  end;

var
  frmAportesPeriodo: TfrmAportesPeriodo;

implementation

{$R *.dfm}

uses UnitDmGeneral,UnitGlobales, UnitPantallaProgreso;

procedure TfrmAportesPeriodo.btnProcesarClick(Sender: TObject);
var
  Id:string;
  Dg:string;
  Tp:string;
  Nm:string;
  Dr:string;
  Mn:string;
  Numero :Integer;
  Digito :Integer;
  Total:Integer;
  Fila:Integer;
  Saldo:Currency;
  Dpto :string;
  factor : String;
  parTicipacion: Extended;
  parTicipacionS: String;
  partEntera: Integer;
  partDecimal: Integer;
  ExcelFile:TDataSetToExcel;
  vCodMunicipio :string;
  _dFechaI :TDate;
  _dFechaCorte : TDate;
  _iContador :Integer;
begin
        _dFechaI := EncodeDate(EdPeriodo.Value,1,1);
        _dFechaCorte := EdFechaCorte.DateTime;
        Fila := -1;
        CdSaldo.CancelUpdates;
        Application.ProcessMessages;
        with IBQuery1 do
        begin
          if Transaction.InTransaction then
             Transaction.Rollback;
          Transaction.StartTransaction;
          Close;
          SQL.Clear;
          SQL.Add('SELECT * from "dian$saldosaportes"');
          Open;
          _iContador := RecordCount;
         if _iContador > 0 then
         begin
           if MessageDlg('La tabla "dian$saldosaportes" se Encuentra Llena desea Eliminar los datos',mtWarning,[MbYes,Mbno],0) = mryes then
           begin
             Close;
             SQL.Clear;
             SQL.Add('delete from "dian$saldosaportes"');
             ExecSQL;
             Transaction.Commit;
             Transaction.StartTransaction;
             _iContador := 0;
            end;
         end;
         if _iContador = 0 then
         begin
           SQL.Clear;
           SQL.Add('select');
           SQL.Add('count(*) as TOTAL');
           SQL.Add('from');
           SQL.Add('"gen$persona"');
           Open;
           Total := FieldByName('TOTAL').AsInteger;
           Close;
           Bar2.Maximum := Total;
           SQL.Clear;
           SQL.Add('select');
           SQL.Add('"gen$persona".ID_IDENTIFICACION,');
           SQL.Add('"gen$persona".ID_PERSONA');
           SQL.Add('from');
           SQL.Add('"gen$persona"');
           //SQL.Add('where id_persona = ' + quotedstr('5035698'));
           Open;
           while not Eof do
           begin
             Bar2.Position := RecNo;
             Application.ProcessMessages;
             IBSQL1.Close;
             IBSQL1.SQL.Clear;
             IBSQL1.SQL.Add('select');
             IBSQL1.SQL.Add('"cap$maestro".ID_AGENCIA,');
             IBSQL1.SQL.Add('"cap$maestro".ID_TIPO_CAPTACION,');
             IBSQL1.SQL.Add('"cap$maestro".NUMERO_CUENTA,');
             IBSQL1.SQL.Add('"cap$maestro".DIGITO_CUENTA');
             IBSQL1.SQL.Add('from');
             IBSQL1.SQL.Add('"cap$maestrotitular"');
             IBSQL1.SQL.Add('inner join');
             IBSQL1.SQL.Add('"cap$maestro" on ("cap$maestrotitular".ID_AGENCIA = "cap$maestro".ID_AGENCIA and');
             IBSQL1.SQL.Add('"cap$maestrotitular".ID_TIPO_CAPTACION = "cap$maestro".ID_TIPO_CAPTACION and');
             IBSQL1.SQL.Add('"cap$maestrotitular".NUMERO_CUENTA = "cap$maestro".NUMERO_CUENTA and');
             IBSQL1.SQL.Add('"cap$maestrotitular".DIGITO_CUENTA = "cap$maestro".DIGITO_CUENTA)');
             IBSQL1.SQL.Add('where');
             IBSQL1.SQL.Add('"cap$maestrotitular".ID_IDENTIFICACION = :ID_IDENTIFICACION and');
             IBSQL1.SQL.Add('"cap$maestrotitular".ID_PERSONA = :ID_PERSONA and');
             IBSQL1.SQL.Add('"cap$maestrotitular".ID_TIPO_CAPTACION = 1 and "cap$maestro".ID_ESTADO <> 5 ');
             IBSQL1.SQL.Add('and');
             IBSQL1.SQL.Add('"cap$maestrotitular".NUMERO_TITULAR = 1');
             IBSQL1.SQL.Add('order by');
             IBSQL1.SQL.Add('"cap$maestro".ID_AGENCIA,');
             IBSQL1.SQL.Add('"cap$maestro".ID_TIPO_CAPTACION,');
             IBSQL1.SQL.Add('"cap$maestro".NUMERO_CUENTA,');
             IBSQL1.SQL.Add('"cap$maestro".DIGITO_CUENTA');
             IBSQL1.ParamByName('ID_IDENTIFICACION').AsInteger := FieldByName('ID_IDENTIFICACION').AsInteger;
             IBSQL1.ParamByName('ID_PERSONA').AsString := FieldByName('ID_PERSONA').AsString;
             IBSQL1.Open;
             IBSQL1.Last;
             IBSQL1.First;
             Bar1.Maximum := IBSQL1.RecordCount;
             Bar1.Position := 0;
             Saldo := 0;
             while not IBSQL1.Eof do
             begin
               Bar1.Position := IBSQL1.RecNo;
               Application.ProcessMessages;
               IBSQL2.Close;
               IBSQL2.SQL.Clear;
               IBSQL2.SQL.Add('select SALDO_ACTUAL from SALDO_ACTUAL_MES_NOTD(:AGENCIA,:TIPO,:NUMERO,:DIGITO,:ANO,:FECHA1,:FECHA2)');
               IBSQL2.ParamByName('AGENCIA').AsInteger := IBSQL1.fieldbyname('ID_AGENCIA').AsInteger;
               IBSQL2.ParamByName('TIPO').AsInteger := IBSQL1.fieldbyname('ID_TIPO_CAPTACION').AsInteger;
               IBSQL2.ParamByName('NUMERO').AsInteger := IBSQL1.fieldbyname('NUMERO_CUENTA').AsInteger;
               IBSQL2.ParamByName('DIGITO').AsInteger := IBSQL1.fieldbyname('DIGITO_CUENTA').AsInteger;
               IBSQL2.ParamByName('ANO').AsString := IntToStr(EdPeriodo.Value);
               IBSQL2.ParamByName('FECHA1').AsDate := _dFechaI;
               IBSQL2.ParamByName('FECHA2').AsDate := _dFechaCorte;
               IBSQL2.ExecQuery;
               Saldo := Saldo + IBSQL2.FieldByName('SALDO_ACTUAL').AsCurrency;
               IBSQL1.Next; // next del query captaciones
             end; // fin del while del IBSQL1
// Ingresar a la tabla
             if Saldo <> 0 then
             begin
              IBSQL3.Close;
              IBSQL3.SQL.Clear;
              IBSQL3.SQL.Add('insert into "dian$saldosaportes" Values (');
              IBSQL3.SQL.Add(':ID_IDENTIFICACION,:ID_PERSONA,:VALOR');
              IBSQL3.SQL.Add(')');
              IBSQL3.ParamByName('ID_IDENTIFICACION').AsInteger := IBQuery1.FieldByName('ID_IDENTIFICACION').AsInteger;
              IBSQL3.ParamByName('ID_PERSONA').AsString := IBQuery1.FieldByName('ID_PERSONA').AsString;
              IBSQL3.ParamByName('VALOR').AsCurrency := Saldo;
              IBSQL3.ExecQuery;
             end; // fin del if del saldo
           Next; //next del query personas
         end; // fin del While de ibsql
         Transaction.Commit;
        end; // Fin del With IBQuery1
      end;
// consolidaci�n de la informaci�n




        if IBSQLPor.Transaction.InTransaction then
           IBSQLPor.Transaction.Rollback;
        IBSQLPor.Transaction.StartTransaction;
        with IBQuery1 do
        begin
           if Transaction.InTransaction then
              Transaction.Rollback;
           Transaction.StartTransaction;
           Close;
           SQL.Clear;
           SQL.Add('select');
           SQL.Add('*');
           SQL.Add('from');
           SQL.Add('"dian$saldosaportes"');
           SQL.Add('where VALOR >= :VALOR');
           SQL.Add('order by ID_PERSONA, ID_IDENTIFICACION');
           ParamByName('VALOR').AsCurrency := EdMonto.Value;

           Open;
           Last;
           First;
           Total := RecordCount;
           frmProgreso := TfrmProgreso.Create(Self);
           frmProgreso.Max := Total;
           frmProgreso.Min := 0;
           frmProgreso.InfoLabel := 'Creando Reporte de Salida';
           frmProgreso.Ejecutar;
           while not Eof do
           begin
             frmProgreso.Position := RecNo;
             Application.ProcessMessages;
             //if FieldByName('VALOR').ASCURRENCY >= EdMonto.Value then
             //begin
               IBSQL3.Close;
               IBSQL3.SQL.Clear;
               IBSQL3.SQL.Add('SELECT ');
               IBSQL3.SQL.Add('  "cap$maestro".NUMERO_CUENTA,');
               IBSQL3.SQL.Add('  "cap$maestro".DIGITO_CUENTA');
               IBSQL3.SQL.Add('FROM');
               IBSQL3.SQL.Add('  "cap$maestro"');
               IBSQL3.SQL.Add('  INNER JOIN "cap$maestrotitular" ON ("cap$maestro".ID_AGENCIA = "cap$maestrotitular".ID_AGENCIA)');
               IBSQL3.SQL.Add('  AND ("cap$maestro".ID_TIPO_CAPTACION = "cap$maestrotitular".ID_TIPO_CAPTACION)');
               IBSQL3.SQL.Add('  AND ("cap$maestro".NUMERO_CUENTA = "cap$maestrotitular".NUMERO_CUENTA)');
               IBSQL3.SQL.Add('  AND ("cap$maestro".DIGITO_CUENTA = "cap$maestrotitular".DIGITO_CUENTA)');
               IBSQL3.SQL.Add('WHERE');
               IBSQL3.SQL.Add('  "cap$maestro".ID_ESTADO = 1 AND ');
               IBSQL3.SQL.Add('  "cap$maestro".ID_TIPO_CAPTACION = 1 AND ');
               IBSQL3.SQL.Add('  "cap$maestrotitular".ID_IDENTIFICACION = :ID_IDENTIFICACION AND ');
               IBSQL3.SQL.Add('  "cap$maestrotitular".ID_PERSONA = :ID_PERSONA');
               IBSQL3.ParamByName('ID_PERSONA').AsString := FieldByName('ID_PERSONA').AsString;
               IBSQL3.ParamByName('ID_IDENTIFICACION').AsInteger := FieldByName('ID_IDENTIFICACION').AsInteger;
               IBSQL3.ExecQuery;
               Numero := IBSQL3.FieldByName('NUMERO_CUENTA').AsInteger;
               Digito := IBSQL3.FieldByName('DIGITO_CUENTA').AsInteger;
               CdSaldo.Append;
               //CdSaldo.FieldValues['CONCEPTO'] := '2206';
               IBSQL3.SQL.Clear;
               IBSQL3.Close;
               IBSQL3.SQL.Add('select');
               IBSQL3.SQL.Add('"gen$persona".ID_IDENTIFICACION,');
               IBSQL3.SQL.Add('"gen$persona".ID_PERSONA,');
               IBSQL3.SQL.Add('"gen$persona".PRIMER_APELLIDO, "gen$persona".SEGUNDO_APELLIDO,"gen$persona".NOMBRE,');
               IBSQL3.SQL.Add('"gen$direccion".DIRECCION || '' '' || "gen$direccion".BARRIO AS DIRECCION,');
               IBSQL3.SQL.Add('"gen$direccion".MUNICIPIO,"gen$direccion".COD_MUNICIPIO');
               IBSQL3.SQL.Add('from');
               IBSQL3.SQL.Add('"gen$persona"');
               IBSQL3.SQL.Add('left join "gen$direccion" on ("gen$persona".ID_IDENTIFICACION = "gen$direccion".ID_IDENTIFICACION and');
               IBSQL3.SQL.Add('"gen$persona".ID_PERSONA = "gen$direccion".ID_PERSONA');
               IBSQL3.SQL.Add('and "gen$direccion".ID_DIRECCION = 1)');
               IBSQL3.SQL.Add('where "gen$persona".ID_PERSONA = :ID_PERSONA and "gen$persona".ID_IDENTIFICACION = :ID_IDENTIFICACION');
               IBSQL3.ParamByName('ID_PERSONA').AsString := FieldByName('ID_PERSONA').AsString;
               IBSQL3.ParamByName('ID_IDENTIFICACION').AsInteger := FieldByName('ID_IDENTIFICACION').AsInteger;
               IBSQL3.ExecQuery;
               vCodMunicipio := IBSQL3.FieldByName('COD_MUNICIPIO').AsString;
               if (vCodMunicipio = '' ) then vCodMunicipio := '00000';
               if FieldByName('ID_IDENTIFICACION').AsInteger = 4 then
               begin
                 Id := LeftStr(FieldByName('ID_PERSONA').AsString,Length(FieldByName('ID_PERSONA').AsString)-1);
                 Dg := RightStr(FieldByName('ID_PERSONA').AsString,1);
               end
               else
               begin
                 Id := FieldByName('ID_PERSONA').AsString;
                 Dg := '';
               end;
               case FieldByName('ID_IDENTIFICACION').AsInteger of
                 1: tp := '11';
                 2: Tp := '12';
                 3: Tp := '13';
                 4: Tp := '31';
                 6: Tp := '22';
                 9: Tp := '11';
               end;
               CdSaldo.FieldValues['TIPO_DOC'] := Tp;
               CdSaldo.FieldValues['NUMERO'] := Id;
               CdSaldo.FieldValues['DV'] := Dg;
               if Tp <> '31' then
               begin
                 CdSaldo.FieldValues['P_APELLIDO'] := IBSQL3.FieldByName('PRIMER_APELLIDO').AsString;
                 CdSaldo.FieldValues['S_APELLIDO'] := IBSQL3.FieldByName('SEGUNDO_APELLIDO').AsString;
                //** DIVIDIR NOMBRES EN DOS CAMPOS
                 CdSaldo.FieldValues['P_NOMBRE'] := IBSQL3.FieldByName('NOMBRE').AsString;
                 if Pos(' ', IBSQL3.FieldByName('NOMBRE').AsString) > 0 then
                 begin
                   CdSaldo.FieldValues['P_NOMBRE'] := Leftstr(IBSQL3.FieldByName('NOMBRE').AsString,Pos(' ', IBSQL3.FieldByName('NOMBRE').AsString)-1);
                   CdSaldo.FieldValues['S_NOMBRE'] := RightStr(IBSQL3.FieldByName('NOMBRE').AsString,Length(IBSQL3.FieldByName('NOMBRE').AsString) - Pos(' ', IBSQL3.FieldByName('NOMBRE').AsString));
                 end;

//
               end
               else
               begin
                 CdSaldo.FieldValues['P_APELLIDO'] := '';
                 CdSaldo.FieldValues['S_APELLIDO'] := '';
                 CdSaldo.FieldValues['P_NOMBRE'] := '';
                 CdSaldo.FieldValues['S_NOMBRE'] := '';
               end;
               if Tp = '31' then
                 CdSaldo.FieldValues['RAZON'] := Trim(IBSQL3.FieldByName('PRIMER_APELLIDO').AsString + ' ' + IBSQL3.FieldByName('SEGUNDO_APELLIDO').AsString + ' ' + IBSQL3.FieldByName('NOMBRE').AsString)
               else
                 CdSaldo.FieldValues['RAZON'] := '';
               CdSaldo.FieldValues['DIRECCION'] := IBSQL3.FieldByName('DIRECCION').AsString;
               try
               if StrLen(PChar(vCodMunicipio)) = 4 then
                  vCodMunicipio := '0' +  vCodMunicipio;
               Dpto := FormatCurr('00',StrToInt(LeftStr(vCodMunicipio,2)));
               Mn := FormatCurr('000',StrToInt(RightStr(vCodMunicipio,3)));
               except
               begin
                 Mn := '0';
                 Dpto := '0';
               end;
               end;
               CdSaldo.FieldValues['DPTO'] := Dpto;
               CdSaldo.FieldValues['MCP'] := Mn;
               CdSaldo.FieldValues['PAIS'] := '169';
               CdSaldo.FieldValues['SALDO'] := SimpleRoundTo(FieldByName('VALOR').AsCurrency,0);
               //CdSaldo.FieldValues['REVALORIZACION'] := SimpleRoundTo(Participacion(Numero,Digito),0);
               parTicipacion := SimpleRoundTo((FieldByName('VALOR').AsCurrency/JvTotal.Value * 100),-6);
               partDecimal := length(StrAfter(parTicipacion));
               factor := RightPad('1','0',partDecimal);
               partEntera := Trunc(parTicipacion * StrToInt(factor));
               CdSaldo.FieldValues['PARTICIPACIONE'] := partEntera;
               CdSaldo.FieldValues['PARTICIPACIONF'] := partDecimal;
               //CdSaldo.FieldValues['MUNICIPIO'] := IBSQL3.FieldByName('MUNICIPIO').AsString;
               CdSaldo.Post;
               //end;
               Next;
             end;// fin del primner while
             frmProgreso.Cerrar;
        end; // fin del ibquery1
        if Save.Execute then
        begin
          CdSaldo.First;
          ExcelFile := TDataSetToExcel.Create(CdSaldo,Save.FileName);
          ExcelFile.WriteFile;
          ExcelFile.Free;
        end;        
end;

procedure TfrmAportesPeriodo.btnCerrarClick(Sender: TObject);
begin
  Close;
end;

procedure TfrmAportesPeriodo.btnAExcelClick(Sender: TObject);
var   ExcelFile:TDataSetToExcel;
begin
        if Save.Execute then
        begin
          CdSaldo.First;
          ExcelFile := TDataSetToExcel.Create(CdSaldo,Save.FileName);
          ExcelFile.WriteFile;
          ExcelFile.Free;
        end;        
end;

function TfrmAportesPeriodo.Participacion(Nm, Dg: integer): Currency;
begin
        with IBSQLPor do
        begin
          Close;
          ParamByName('NM').AsInteger := Nm;
          ParamByName('DG').AsInteger := Dg;
          ParamByName('ID_AGENCIA').AsInteger := Agencia;
          //ParamByName('DESC').AsString := 'Revalorizac%';
          ParamByName('FECHA').AsDateTime := dtFecha.DateTime;
          ExecQuery;
          Result := FieldByName('VALOR_DEBITO').AsCurrency;
        end;
end;



procedure TfrmAportesPeriodo.FormCreate(Sender: TObject);
begin
        EdPeriodo.Value := YearOf(fFechaActual) - 1;
        EdFechaCorte.Date := EncodeDate(EdPeriodo.Value,12,31);
        dtFecha.Date := EncodeDate(EdPeriodo.Value,04,01);
end;

function TfrmAportesPeriodo.StrAfter(value: Extended): String;
var
i:integer;
begin
        i := Pos( DecimalSeparator, FloatToStr(value) );
        if i > 0 then
        result := Copy( FloatToStr(value), i + 1, Length( FloatToStr(value) ) - i )
        else
         result := '';
end;

 function TfrmAportesPeriodo.RightPad(S: string; Ch: Char; Len: Integer): string;
var
  RestLen: Integer;
begin
  Result  := S;
  RestLen := Len;
  if RestLen < 1 then Exit;
  Result := S + StringOfChar(Ch, RestLen);
end;


end.
