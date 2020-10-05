unit UnitSumatorias;

interface

uses
  Windows, Messages, SysUtils, DateUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGrids, StdCtrls, DB, IBCustomDataSet, IBQuery, ExtCtrls,
  Buttons, IBSQL, ComCtrls, XStringGrid, IBStoredProc, UnitDmGeneral,
  DBClient;

type
  TfrmSumatorias = class(TForm)
    Panel1: TPanel;
    BtnAceptar: TBitBtn;
    DataSource2: TDataSource;
    IBQuery1: TIBQuery;
    Panel4: TPanel;
    Label3: TLabel;
    CmdActualizar: TBitBtn;
    EdFecha: TStaticText;
    DBGrid1: TDBGrid;
    CDSData: TClientDataSet;
    CDSDataPRODUCTO: TStringField;
    CDSDataSALDO: TCurrencyField;
    CDSDataCANTIDAD: TIntegerField;
    CDSDataCONTABLE: TCurrencyField;
    CDSDataDIFERENCIA: TCurrencyField;
    IBQconsulta: TIBQuery;
    procedure FormShow(Sender: TObject);
    procedure CmdActualizarClick(Sender: TObject);
    procedure BtnAceptarClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
    function SaldoContable(id: Integer): Currency;
  public
    { Public declarations }
  end;

var
  frmSumatorias: TfrmSumatorias;
  dmGeneral:TdmGeneral;
  _mes: Integer;

implementation

{$R *.dfm}

uses unitGlobales;

procedure TfrmSumatorias.FormShow(Sender: TObject);
begin
        Application.ProcessMessages;
end;

procedure TfrmSumatorias.CmdActualizarClick(Sender: TObject);
var Saldo:Currency;
    I :Integer;
    fecha_final: TDate;
    anho, mes, dia: Integer;
begin
        CmdActualizar.Enabled := False;
        Application.ProcessMessages;
        Screen.Cursor := crHourGlass;
        CDSData.EmptyDataSet;


        fecha_final := fFechaActual;

        dia := DayOf(fecha_final);
        mes := MonthOf(fecha_final);
        anho := YearOf(fecha_final);

        if anho <> DBAnho then
        begin
            anho := DBAnho;
            mes := 12;
            dia := 31;
        end;

        _mes := mes;

        fecha_final := EncodeDateTime(anho,mes,dia, 23,59,59,0);


        with IBQuery1 do
        begin
          if Transaction.InTransaction then
             Transaction.Commit;
          Transaction.StartTransaction;
          Close;
          SQL.Clear;
          SQL.Add('select * from SUMATORIAS_DIARIA(:ANOP,:FECHA_INICIAL,:FECHADIA)');
          ParamByName('FECHA_INICIAL').AsDateTime := StrToDateTime(IntToStr(DBAnho) + '/01/01 00:00:00');
          ParamByName('FECHADIA').AsDateTime := fecha_final;
          ParamByName('ANOP').AsString := IntToStr(DBAnho);
          try
            Open;
            CDSData.Open;
            while not Eof do
            begin
                CDSData.Append;
                CDSDataPRODUCTO.Value := IBQuery1.FieldByName('TIPO_CAPTACION').AsString;
                CDSDataCANTIDAD.Value := IBQuery1.FieldByName('NUMERO').AsInteger;
                CDSDataSALDO.Value := IBQuery1.FieldByName('SALDO_ACTUAL').AsCurrency;
                CDSDataCONTABLE.Value := SaldoContable(IBQuery1.FieldByName('ID_SUMATORIA').AsInteger);
                CDSDataDIFERENCIA.Value := CDSDataSALDO.Value - CDSDataCONTABLE.Value;
                CDSData.Post;
                Next;
            end;
          except
            MessageDlg('Error Al Buscar Sumatoria de Saldo Inicial',mtError,[mbcancel],0);
            IBQuery1.Transaction.Rollback;
            Exit;
          end;
        end;
        Screen.Cursor := crDefault;


end;

function TfrmSumatorias.SaldoContable(id: Integer): Currency;
var
   _codigo :String;
   _saldo: Currency;
begin
          Result := 0;
          
          IBQconsulta.Close;
          IBQconsulta.SQL.Clear;
          IBQconsulta.SQL.Add('SELECT c.COD_CAPITAL_CP FROM "col$codigospuc" c WHERE c.ID_CLASIFICACION = :ID_CLASIFICACION and c.ID_GARANTIA = :ID_GARANTIA and c.ID_CATEGORIA = :ID_CATEGORIA');
          IBQconsulta.ParamByName('ID_CLASIFICACION').AsInteger := id;
          IBQconsulta.ParamByName('ID_GARANTIA').AsInteger := 2;
          IBQconsulta.ParamByName('ID_CATEGORIA').AsString := 'A';
          IBQconsulta.Open;

          _codigo := IBQconsulta.FieldByName('COD_CAPITAL_CP').AsString;

          IBQconsulta.Close;
          IBQconsulta.SQL.Clear;
          IBQconsulta.SQL.Add('SELECT c.CODIGOMAYOR FROM "con$puc" c WHERE c.CODIGO = :CODIGO');
          IBQconsulta.ParamByName('CODIGO').AsString := _codigo;
          IBQconsulta.Open;

          _codigo := IBQconsulta.FieldByName('CODIGOMAYOR').AsString;

          if (_codigo <> '') then
          begin
            IBQConsulta.Close;
            IBQconsulta.SQL.Clear;
            IBQconsulta.SQL.Add('SELECT SALDO FROM VALOR_AGENCIA(:MES, :CODIGO)');
            IBQconsulta.ParamByName('MES').AsInteger := _mes;
            IBQconsulta.ParamByName('CODIGO').AsString := _codigo;
            IBQconsulta.Open;
          _saldo := IBQconsulta.FieldByName('SALDO').AsCurrency;
          end
          else
           _saldo := 0;

          Result := _saldo;

end;

procedure TfrmSumatorias.BtnAceptarClick(Sender: TObject);
begin
        Close;
end;

procedure TfrmSumatorias.FormCreate(Sender: TObject);
begin
        dmGeneral := TdmGeneral.Create(Self);
        dmGeneral.getConnected;

        IBQuery1.Database := dmGeneral.IBDatabase1;
        IBQuery1.Transaction := dmGeneral.IBTransaction1;

        IBQconsulta.Database := dmGeneral.IBDatabase1;
        IBQconsulta.Transaction := dmGeneral.IBTransaction1;


        EdFecha.Caption := DateTimeToStr(fFechaActual + Time);
end;

end.

