unit UnitAcuerdoPago;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ComCtrls, Grids, DBGrids, DB, DBClient, ExtCtrls,
  Buttons, IBDatabase, IBCustomDataSet, IBQuery, UnitDmGeneral, JvEdit,
  JvTypedEdit, DateUtils;

type
  TfrmAcuerdoPago = class(TForm)
    Label1: TLabel;
    edColocacion: TEdit;
    Asociado: TLabel;
    edAsociado: TEdit;
    Label2: TLabel;
    edFecha: TDateTimePicker;
    edObservacion: TMemo;
    Label3: TLabel;
    DBGAcuerdo: TDBGrid;
    Label4: TLabel;
    CDSacuerdo: TClientDataSet;
    DSacuerdo: TDataSource;
    CDSacuerdoID: TIntegerField;
    CDSacuerdoFECHA: TDateField;
    CDSacuerdoVALOR: TCurrencyField;
    CDSacuerdoCUMPLIDO: TBooleanField;
    CDSacuerdoFECHA_CUMPLIDO: TDateField;
    Panel1: TPanel;
    btnCerrar: TBitBtn;
    btnActualizar: TBitBtn;
    IBQacuerdo: TIBQuery;
    IBTransaction1: TIBTransaction;
    IBQtabla: TIBQuery;
    Panel2: TPanel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    edFechaAcuerdo: TDateTimePicker;
    edValorAcuerdo: TJvCurrencyEdit;
    edCumplido: TCheckBox;
    edFechaCumplido: TDateTimePicker;
    Panel3: TPanel;
    btnAgregar: TBitBtn;
    btnModificar: TBitBtn;
    btnEliminar: TBitBtn;
    edSaldoActual: TJvCurrencyEdit;
    Label9: TLabel;
    Label10: TLabel;
    edFechaMultiple: TDateTimePicker;
    Label11: TLabel;
    edValorMultiple: TJvCurrencyEdit;
    Label12: TLabel;
    edCuotas: TJvIntegerEdit;
    btnAgregarMultiples: TBitBtn;
    CDSacuerdoVALOR_PAGADO: TCurrencyField;
    edValorPagado: TJvCurrencyEdit;
    Label13: TLabel;
    procedure btnCerrarClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btnAgregarClick(Sender: TObject);
    procedure btnModificarClick(Sender: TObject);
    procedure btnEliminarClick(Sender: TObject);
    procedure DBGAcuerdoCellClick(Column: TColumn);
    procedure btnActualizarClick(Sender: TObject);
    procedure btnAgregarMultiplesClick(Sender: TObject);
  private
    { Private declarations }
    FColocacion:string;
  public
    { Public declarations }
    property Colocacion:string read FColocacion Write FColocacion;
  end;

var
  frmAcuerdoPago: TfrmAcuerdoPago;
  dmGeneral: TdmGeneral;
  _esNuevo: Boolean;
  _idIdentificacion: Integer;
  _idPersona: String;
  _id: Integer;

implementation

{$R *.dfm}

uses UnitGlobalesCol, UnitBuscarColocacion, UnitGlobales;

procedure TfrmAcuerdoPago.btnCerrarClick(Sender: TObject);
begin
        Close;
end;

procedure TfrmAcuerdoPago.FormShow(Sender: TObject);
begin
        IBTransaction1.StartTransaction;
        IBQacuerdo.Close;
        IBQacuerdo.SQL.Clear;
        IBQacuerdo.SQL.Add('SELECT FIRST 1 a.*, (p.NOMBRE || '' '' || p.PRIMER_APELLIDO || '' '' || p.SEGUNDO_APELLIDO) AS ASOCIADO FROM JURIDICOACUERDO a ');
        IBQacuerdo.SQL.Add('INNER JOIN "gen$persona" p ON p.ID_IDENTIFICACION = a.ID_IDENTIFICACION and p.ID_PERSONA = a.ID_PERSONA ');
        IBQacuerdo.SQL.Add('WHERE ID_COLOCACION = :ID_COLOCACION ');
        IBQacuerdo.SQL.Add('ORDER BY ID DESC');
        IBQacuerdo.ParamByName('ID_COLOCACION').AsString := FColocacion;
        IBQacuerdo.Open;

        CDSacuerdo.Open;
        CDSacuerdo.EmptyDataSet;

        edColocacion.Text := FColocacion;

        if (IBQacuerdo.RecordCount > 0) then
        begin

          _id := IBQacuerdo.FieldByName('ID').AsInteger;

          IBQtabla.Close;
          IBQtabla.SQL.Clear;
          IBQtabla.SQL.Add('SELECT * FROM JURIDICOACUERDO_TABLA WHERE ID = :ID');
          IBQtabla.ParamByName('ID').AsInteger := _id;
          IBQtabla.Open;

          while not IBQtabla.Eof do
          begin
             CDSacuerdo.Insert;
             CDSacuerdoFECHA.Value := IBQTabla.FieldByName('FECHA').AsDateTime;
             CDSacuerdoVALOR.Value := IBQTabla.FieldByName('VALOR').AsCurrency;
             CDSacuerdoCUMPLIDO.Value := InttoBoolean(IBQTabla.FieldByName('CUMPLIDO').AsInteger);
             if (IBQTabla.FieldByName('FECHA_CUMPLIDO').AsDateTime = 0) then
             begin
               CDSacuerdoFECHA_CUMPLIDO.Clear;
             end
             else
             begin
                CDSacuerdoFECHA_CUMPLIDO.Value := IBQTabla.FieldByName('FECHA_CUMPLIDO').AsDateTime;
             end;
             CDSacuerdoVALOR_PAGADO.Value := IBQTabla.FieldByName('VALOR_PAGADO').AsCurrency;
             CDSacuerdo.Post;
             IBQTabla.Next;
          end;


          edAsociado.Text := IBQacuerdo.FieldByName('ASOCIADO').AsString;
          edFecha.Date := IBQacuerdo.FieldByName('FECHA').AsDateTime;
          edObservacion.Text := IBQacuerdo.FieldByName('OBSERVACIONES').AsString;
          edSaldoActual.Value := IBQacuerdo.FieldByName('SALDO').AsCurrency;

          _esNuevo := False;

          _idIdentificacion := IBQacuerdo.FieldByName('ID_IDENTIFICACION').AsInteger;
          _idPersona := IBQacuerdo.FieldByName('ID_PERSONA').AsString;
        end
        else
        begin
          IBQacuerdo.Close;
          IBQacuerdo.SQL.Clear;
          IBQacuerdo.SQL.Add('SELECT a.*, (p.NOMBRE || '' '' || p.PRIMER_APELLIDO || '' '' || p.SEGUNDO_APELLIDO) AS ASOCIADO FROM "col$colocacion" a ');
          IBQacuerdo.SQL.Add('INNER JOIN "gen$persona" p ON p.ID_IDENTIFICACION = a.ID_IDENTIFICACION and p.ID_PERSONA = a.ID_PERSONA ');
          IBQacuerdo.SQL.Add('WHERE ID_COLOCACION = :ID_COLOCACION ');
          IBQacuerdo.ParamByName('ID_COLOCACION').AsString := FColocacion;
          IBQacuerdo.Open;

          _idIdentificacion := IBQacuerdo.FieldByName('ID_IDENTIFICACION').AsInteger;
          _idPersona := IBQacuerdo.FieldByName('ID_PERSONA').AsString;

          edAsociado.Text := IBQacuerdo.FieldByName('ASOCIADO').AsString;
          edSaldoActual.Value := IBQacuerdo.FieldByName('VALOR_DESEMBOLSO').AsCurrency - IBQacuerdo.FieldByName('ABONOS_CAPITAL').AsCurrency;
          edFecha.Date := fFechaActual;
          edObservacion.Text := '';
          _esNuevo := True;

        end;
end;

procedure TfrmAcuerdoPago.FormCreate(Sender: TObject);
var
 _hoy: TDate;
begin
        dmGeneral := TdmGeneral.Create(self);
        dmGeneral.getConnected;

        IBTransaction1.DefaultDatabase := dmGeneral.IBDatabase1;

        IBQacuerdo.Database := dmGeneral.IBDatabase1;
        IBQtabla.Database := dmGeneral.IBDatabase1;

        IBQacuerdo.Transaction := IBTransaction1;
        IBQtabla.Transaction := IBTransaction1;

        _hoy := fFechaActual;

        edColocacion.Text := '';
        edAsociado.Text := '';
        edFecha.Date := _hoy;
        edSaldoActual.Clear;
        CDSacuerdo.Open;
        CDSacuerdo.EmptyDataSet;
        CDSacuerdo.Close;

        edFechaAcuerdo.Date := _hoy;
        edValorAcuerdo.Clear;
        edCumplido.Checked := false;
        edFechaCumplido.Date := _hoy;
        edFechaMultiple.Date := _hoy;
        edValorMultiple.Clear;
        edCuotas.Clear;
        
end;

procedure TfrmAcuerdoPago.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
        dmGeneral.Free;
        Action := caFree;
end;

procedure TfrmAcuerdoPago.btnAgregarClick(Sender: TObject);
begin
        CDSacuerdo.Insert;
        CDSacuerdoFECHA.Value := edFechaAcuerdo.Date;
        CDSacuerdoVALOR.Value := edValorAcuerdo.Value;
        CDSacuerdoCUMPLIDO.Clear;
        CDSacuerdoFECHA_CUMPLIDO.Clear;
        CDSacuerdoVALOR_PAGADO.Value := edValorPagado.Value;
        CDSacuerdo.Post;
end;

procedure TfrmAcuerdoPago.btnModificarClick(Sender: TObject);
begin
        CDSacuerdo.Edit;
        CDSacuerdoFECHA.Value := edFechaAcuerdo.Date;
        CDSacuerdoVALOR.Value := edValorAcuerdo.Value;
        CDSacuerdoCUMPLIDO.Value := edCumplido.Checked;
        if (edFechaCumplido.Date = 0) then
           CDSacuerdoFECHA_CUMPLIDO.Clear
        else
           CDSacuerdoFECHA_CUMPLIDO.Value := edFechaCumplido.Date;
        CDSacuerdoVALOR_PAGADO.Value := edValorPagado.Value;           
        CDSacuerdo.Post;
end;

procedure TfrmAcuerdoPago.btnEliminarClick(Sender: TObject);
begin
        if MessageDlg('Seguro de Eliminar el Registro?',mtConfirmation,[mbYes, mbNo],0) = mrYes then
                CDSacuerdo.Delete;
end;

procedure TfrmAcuerdoPago.DBGAcuerdoCellClick(Column: TColumn);
begin
        edFechaAcuerdo.Date := CDSacuerdoFECHA.Value;
        edValorAcuerdo.Value := CDSacuerdoVALOR.Value;
        edCumplido.Checked := CDSacuerdoCUMPLIDO.Value;
        edFechaCumplido.Date := CDSacuerdoFECHA_CUMPLIDO.Value;
        edValorPagado.Value := CDSacuerdoVALOR_PAGADO.Value;
end;

procedure TfrmAcuerdoPago.btnActualizarClick(Sender: TObject);
begin

   if _esNuevo then
   begin
     // Buscar Id
     IBQTabla.Close;
     IBQTabla.SQL.Clear;
     IBQTabla.SQL.Add('SELECT COUNT(*) AS CONTEO FROM JURIDICOACUERDO');
     IBQTabla.Open;
     _id := IBQTabla.FieldByName('CONTEO').AsInteger;
     _id := _id + 1;
     //

     IBQTabla.Close;
     IBQTabla.SQL.Clear;
     IBQTabla.SQL.Add('INSERT INTO JURIDICOACUERDO (ID, ID_COLOCACION, ID_IDENTIFICACION, ID_PERSONA, SALDO, OBSERVACIONES, FECHA) VALUES (:ID, :ID_COLOCACION, :ID_IDENTIFICACION, :ID_PERSONA, :SALDO, :OBSERVACIONES, :FECHA)');
     IBQTabla.ParamByName('ID_COLOCACION').AsString := FColocacion;
     IBQTabla.ParamByName('ID_IDENTIFICACION').AsInteger := _idIdentificacion;
     IBQTabla.ParamByName('ID_PERSONA').AsString := _idPersona;
     IBQTabla.ParamByName('SALDO').AsCurrency := edSaldoActual.Value;
     IBQTabla.ParamByName('OBSERVACIONES').AsString := edObservacion.Text;
     IBQTabla.ParamByName('FECHA').AsDate := edFecha.Date;
     IBQTabla.ParamByName('ID').AsInteger := _id;
     IBQTabla.ExecSQL;

     IBQTabla.Close;
     IBQTabla.SQL.Clear;
     IBQTabla.SQL.Add('INSERT INTO JURIDICOACUERDO_TABLA (ID, FECHA, VALOR, CUMPLIDO, FECHA_CUMPLIDO, VALOR_PAGADO) VALUES (:ID, :FECHA, :VALOR, :CUMPLIDO, :FECHA_CUMPLIDO, :VALOR_PAGADO)');
     IBQTabla.ParamByName('ID').AsInteger := _id;
     IBQTabla.ParamByName('CUMPLIDO').Clear;
     IBQTabla.ParamByName('FECHA_CUMPLIDO').Clear;

     CDSacuerdo.First;

     while not CDSacuerdo.Eof do
     begin
        IBQTabla.ParamByName('FECHA').AsDateTime := CDSacuerdo.FieldByName('FECHA').AsDateTime;
        IBQTabla.ParamByName('VALOR').AsCurrency := CDSacuerdo.FieldByName('VALOR').AsCurrency;
        IBQTabla.ParamByName('VALOR_PAGADO').AsCurrency := CDSacuerdo.FieldByName('VALOR_PAGADO').AsCurrency;
        IBQTabla.ExecSQL;
        CDSacuerdo.Next;
     end;

   end
   else
   begin

     IBQTabla.Close;
     IBQTabla.SQL.Clear;
     IBQTabla.SQL.Add('UPDATE JURIDICOACUERDO SET SALDO = :SALDO, OBSERVACIONES = :OBSERVACIONES, FECHA = :FECHA WHERE ID = :ID');
     IBQTabla.ParamByName('SALDO').AsCurrency := edSaldoActual.Value;
     IBQTabla.ParamByName('OBSERVACIONES').AsString := edObservacion.Text;
     IBQTabla.ParamByName('FECHA').AsDate := edFecha.Date;
     IBQTabla.ParamByName('ID').AsInteger := _id;
     IBQTabla.ExecSQL;

     IBQTabla.Close;
     IBQTabla.SQL.Clear;
     IBQTabla.SQL.Add('DELETE FROM JURIDICOACUERDO_TABLA WHERE ID = :ID');
     IBQTabla.ParamByName('ID').AsInteger := _id;
     IBQTabla.ExecSQL;

     IBQTabla.Close;
     IBQTabla.SQL.Clear;
     IBQTabla.SQL.Add('INSERT INTO JURIDICOACUERDO_TABLA (ID, FECHA, VALOR, CUMPLIDO, FECHA_CUMPLIDO, VALOR_PAGADO) VALUES (:ID, :FECHA, :VALOR, :CUMPLIDO, :FECHA_CUMPLIDO, :VALOR_PAGADO)');
     IBQTabla.ParamByName('ID').AsInteger := _id;


     CDSacuerdo.First;

     while not CDSacuerdo.Eof do
     begin
        IBQTabla.ParamByName('FECHA').AsDateTime := CDSacuerdoFECHA.Value;
        IBQTabla.ParamByName('VALOR').AsCurrency := CDSacuerdoVALOR.Value;
        IBQTabla.ParamByName('CUMPLIDO').AsInteger := BooleanoToInt(CDSacuerdoCUMPLIDO.Value);
        IBQTabla.ParamByName('FECHA_CUMPLIDO').AsDate := CDSacuerdoFECHA_CUMPLIDO.Value;
        IBQTabla.ParamByName('VALOR_PAGADO').AsCurrency := CDSacuerdoVALOR_PAGADO.Value;        
        IBQTabla.ExecSQL;
        CDSacuerdo.Next;
     end;

   end;

   IBTransaction1.Commit;
   btnActualizar.Enabled := False;
   ShowMessage('Información Actualizada');

end;

procedure TfrmAcuerdoPago.btnAgregarMultiplesClick(Sender: TObject);
var
  _i: Integer;
  _dia, _mes, _anho, _ultimodia: Integer;
  _fecha: TDate;
begin
        CDSacuerdo.Open;
        CDSacuerdo.EmptyDataSet;
        _dia := DayOfTheMonth(edFechaMultiple.Date);
        _mes := MonthOfTheYear(edFechaMultiple.Date);
        _anho := YearOf(edFechaMultiple.Date);

        for _i := 1 to edCuotas.Value do
        begin
          _mes := _mes + 1;
          if (_mes > 12) then
          begin
              _mes := 1;
              _anho := _anho + 1;
          end;
          _ultimodia := DaysInAMonth(_anho, _mes);
          if (_dia > _ultimodia) then
          begin
             _dia := _ultimodia;
          end;
          _fecha := EncodeDate(_anho, _mes, _dia);
          CDSacuerdo.Insert;
          CDSacuerdoFECHA.Value := _fecha;
          CDSacuerdoVALOR.Value := edValorMultiple.Value;
          CDSacuerdoCUMPLIDO.Clear;
          CDSacuerdoFECHA_CUMPLIDO.Clear;
          CDSacuerdo.Post;
        end;
end;

end.
