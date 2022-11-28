unit UnitDocumentoSoporte;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, StdCtrls, Buttons, DB, IBCustomDataSet, UnitdmGeneral, UnitdmPersona, UnitFacturar, IBQuery,
  IBDatabase, JvEdit, JvTypedEdit, DBCtrls, DBClient, UnitGlobales, Grids,
  DBGrids;

type
  TfrmDocumentoSoporte = class(TForm)
    Panel1: TPanel;
    btnGenerar: TBitBtn;
    IBQuery1: TIBQuery;
    IBTransaction1: TIBTransaction;
    edDescripcion: TMemo;
    Label1: TLabel;
    Label4: TLabel;
    edDSA: TJvIntegerEdit;
    GroupBox1: TGroupBox;
    Label3: TLabel;
    edIdIdentificacion: TDBLookupComboBox;
    Label5: TLabel;
    edIdPersona: TEdit;
    Label6: TLabel;
    edNombre: TEdit;
    btnCerrar: TBitBtn;
    edRespuesta: TMemo;
    Label7: TLabel;
    dsTiposIdentificacion: TDataSource;
    DBGridData: TDBGrid;
    DSdata: TDataSource;
    _cdsDSA: TClientDataSet;
    _cdsDSACODIGO: TStringField;
    _cdsDSACUENTA: TStringField;
    _cdsDSADEBITO: TCurrencyField;
    _cdsDSACREDITO: TCurrencyField;
    _cdsDSAID_PERSONA: TStringField;
    _cdsDSAID_IDENTIFICACION: TIntegerField;
    _cdsDSAID_COLOCACION: TStringField;
    _cdsDSANUMERO_CUENTA: TStringField;
    _cdsDSAMONTO: TCurrencyField;
    _cdsDSATASA: TFloatField;
    _cdsDSAESTADO: TStringField;
    _cdsDSAPRIMER_APELLIDO: TStringField;
    _cdsDSASEGUNDO_APELLIDO: TStringField;
    _cdsDSANOMBRE: TStringField;
    _cdsDSACHEQUE: TStringField;
    _cdsDSADETALLE: TStringField;
    _cdsDSAESBANCO: TBooleanField;
    _cdsDSAID_AGENCIA: TIntegerField;
    _cdsDSADESCRIPCION_AGENCIA: TStringField;
    _cdsDSAID_CLASE_OPERACION: TStringField;
    _cdsDSADESCRIPCION_CLASE_OPERACION: TStringField;
    _cdsDSAPARA_DSA: TBooleanField;
    DBCheckBox1: TDBCheckBox;
    procedure btnGenerarClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btnCerrarClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure DBGridDataDrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure DBGridDataColExit(Sender: TObject);
    procedure DBGridDataKeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
    _tasaReteFuente: Currency;
    _tasaReteICA: Currency;
    _valorReteICA: Currency;
    _valorReteFuente: Currency;
    _valorDSA: Currency;
    _fechaDSA: TDate;
    _valores: TRDsaValorArray;
    _descripcionDSA: String;
    _tipoComprobante: String;
    _idComprobante: Integer;
    _idIdentificacion: Integer;
    _idPersona: String;
    _nombre: String;
    _cdsData: TClientDataSet;
    procedure setIdIdentificacion(id: Integer);
    procedure setIdPersona(id: String);
    procedure setNombre(id: String);
    procedure setDescripcion(id: String);
    procedure Facturar(dsa_id: Integer);
  public
    { Public declarations }
    property data: TClientDataSet read _cdsData write _cdsData;
    property fechaDSA: TDate read _fechaDSA write _fechaDSA;
    property descripcionDSA: String read _descripcionDSA write setDescripcion;
    property tipoComprobante: String read _tipoComprobante write _tipoComprobante;
    property idComprobante: Integer read _idComprobante write _idComprobante;
    property idIdentificacion: Integer read _idIdentificacion write setIdIdentificacion;
    property idPersona: String read _idPersona write setIdPersona;
    property nombre: String read _nombre write setNombre;
  end;

var
  frmDocumentoSoporte: TfrmDocumentoSoporte;
  dmGeneral : TdmGeneral;
  dmPersona : TdmPersona;

implementation

{$R *.dfm}


procedure TfrmDocumentoSoporte.setDescripcion(id: String);
begin
   _descripcionDSA := id;
   edDescripcion.Text := id;
end;

procedure TfrmDocumentoSoporte.setNombre(id: String);
begin
   _nombre := id;
   edNombre.Text := id;
end;

procedure TfrmDocumentoSoporte.setIdPersona(id: String);
begin
   _idPersona := id;
   edIdPersona.Text := id;
end;

procedure TfrmDocumentoSoporte.setIdIdentificacion(id: Integer);
begin
   _idIdentificacion := id;
   edIdIdentificacion.KeyValue := id;
end;

procedure TfrmDocumentoSoporte.btnGenerarClick(Sender: TObject);
var
  _vDSAConsecutivo: Integer;
  _consecutivoDSAValido: Boolean;
  _valor: Currency;
  _secuencia: Integer;
begin
        if MessageDlg('Seguro de Generar el Documento Soporte de Adquisición', mtConfirmation, [mbYes, mbNo], 0) = mrYes then
        begin
                _valor := 0;
                _cdsDSA.First;
                while not _cdsDSA.Eof do
                begin
                   if (_cdsDSAPARA_DSA.Value = True) then
                   begin
                        _idIdentificacion :=  _cdsDSAID_IDENTIFICACION.Value;
                        _idPersona := _cdsDSAID_PERSONA.Value;
                         _valor := _valor + _cdsDSADEBITO.Value;
                   end;
                   _cdsDSA.Next;
                 end;
                 // Crear Factura si es necesario
             if ( _valor > 0 ) then
             begin
                   _vDSAConsecutivo := ObtenerConsecutivo(53);
                   _consecutivoDSAValido := validarConsecutivoDSA(_vDSAConsecutivo);
                   if not _consecutivoDSAValido then
                   begin
                     if MessageDlg('Ya no hay Documento Soporte de Adquisición disponible, continuar con la generación', mtConfirmation, [mbYes, mbNo], 0) = mrNo then
                     begin
                      ShowMessage('Cancelando Generación');
                      Exit;
                     end;
                   end;
              if _consecutivoDSAValido then
              begin
                     with IBQuery1 do
                     begin
                       SQL.Clear;
                       SQL.Add('INSERT INTO DSA (DSA_NUMERO, DSA_FECHA, DSA_DESCRIPCION, TIPO_COMPROBANTE, ID_COMPROBANTE, FECHA_COMPROBANTE, ID_IDENTIFICACION, ID_PERSONA, ID_EMPLEADO, DSA_ESTADO)');
                       SQL.Add(' VALUES (:DSA_NUMERO, :DSA_FECHA, :DSA_DESCRIPCION, :TIPO_COMPROBANTE, :ID_COMPROBANTE, :FECHA_COMPROBANTE, :ID_IDENTIFICACION, :ID_PERSONA, :ID_EMPLEADO, :DSA_ESTADO)');
                       ParamByName('DSA_NUMERO').AsInteger := _vDSAConsecutivo;
                       ParamByName('DSA_FECHA').AsDateTime := _fechaDSA;
                       ParamByName('DSA_DESCRIPCION').AsString := _descripcionDSA;
                       ParamByName('TIPO_COMPROBANTE').AsString := _tipoComprobante;
                       ParamByName('ID_COMPROBANTE').AsInteger := _idComprobante;
                       ParamByName('FECHA_COMPROBANTE').AsDate := _fechaDSA;
                       ParamByName('ID_IDENTIFICACION').AsInteger :=  _idIdentificacion;
                       ParamByName('ID_PERSONA').AsString := _idPersona;
                       ParamByName('ID_EMPLEADO').AsString := DBAlias;
                       ParamByName('DSA_ESTADO').AsInteger := 1;
                       ExecSQL;

                       edDSA.Text := IntToStr(_vDSAConsecutivo);
                     end;

                     _cdsDSA.First;
                     with IBQuery1 do
                     begin
                     _secuencia := 0;
                     while not _cdsDSA.Eof do
                     begin
                       if (_cdsDSAPARA_DSA.Value = True) then
                       begin
                        Close;
                        SQL.Clear;
                        SQL.Add('INSERT INTO DSA_ITEM (DSA_NUMERO, DSIT_DETALLE, DSIT_CANTIDAD, DSIT_VALORUNITARIO, DSIT_TASAIVA, DSIT_VALORIVA, DSIT_TOTAL, DSIT_CODIGO)');
                        SQL.Add(' VALUES (:DSA_NUMERO, :DSIT_DETALLE, :DSIT_CANTIDAD, :DSIT_VALORUNITARIO, :DSIT_TASAIVA, :DSIT_VALORIVA, :DSIT_TOTAL, :DSIT_CODIGO)');
                        ParamByName('DSA_NUMERO').AsInteger := _vDSAConsecutivo;
                        ParamByName('DSIT_CANTIDAD').AsInteger := 1;
                        ParamByName('DSIT_TASAIVA').AsFloat := 0;
                        ParamByName('DSIT_VALORIVA').AsCurrency := 0;
                        ParamByName('DSIT_DETALLE').AsString := _descripcionDSA;
                        ParamByName('DSIT_CODIGO').AsString := _cdsDSACODIGO.Value;
                        if (_cdsDSA.FieldByName('DEBITO').AsCurrency > 0) then
                        begin
                           ParamByName('DSIT_VALORUNITARIO').AsCurrency := _cdsDSA.FieldByName('DEBITO').AsCurrency;
                           ParamByName('DSIT_TOTAL').AsCurrency := _cdsDSA.FieldByName('DEBITO').AsCurrency;
                           ExecSQL;
                        end;
                      end;
                       _cdsDSA.Next;
                     end;
                     end;

                     IBTransaction1.Commit;
                     btnGenerar.Enabled := False;
                     Facturar(_vDSAConsecutivo);
             end
             else
             begin
                ShowMessage('No hay una numeración válida');
             end;
           end
           else
           begin
               ShowMessage('No ha seleccionado valores para el DSA');
           end;
     // Fin Factura
        end;

end;

procedure TfrmDocumentoSoporte.Facturar(dsa_id: Integer);
var
  _facturar: TFacturar;
begin
        _facturar := TFacturar.Create;
        edRespuesta.Text := _facturar.Dsa(dsa_id);
end;

procedure TfrmDocumentoSoporte.FormCreate(Sender: TObject);
begin
        dmGeneral := TdmGeneral.Create(self);
        dmGeneral.getConnected;
        IBTransaction1.DefaultDatabase := dmGeneral.IBDatabase1;
        IBTransaction1.StartTransaction;
        dmPersona := TdmPersona.Create(self);
        dmPersona.IBDStiposidentificacion.Database := dmGeneral.IBDatabase1;
        dmPersona.IBDStiposidentificacion.Transaction := IBTransaction1;
        dmPersona.IBDStiposidentificacion.Open;
        dmPersona.IBDStiposidentificacion.Last;
        dsTiposIdentificacion.DataSet := dmPersona.IBDStiposidentificacion;
        edIdIdentificacion.ListSource := dsTiposIdentificacion;
        IBQuery1.Database := dmGeneral.IBDatabase1;
        IBQuery1.Transaction := IBTransaction1;

end;

procedure TfrmDocumentoSoporte.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
        If IBTransaction1.InTransaction then
        IBTransaction1.Rollback;
end;

procedure TfrmDocumentoSoporte.btnCerrarClick(Sender: TObject);
begin
        ModalResult := mrCancel;
end;

procedure TfrmDocumentoSoporte.FormShow(Sender: TObject);
begin

        _cdsData.First;
        _cdsDSA.Open;
        while not _cdsData.Eof do
        begin
          // if ( (_cdsData.FieldbyName('CODIGO').AsString > '5') AND  (_cdsData.FieldbyName('CODIGO').AsString < '599999999999999999')) then
          // begin
            _cdsDSA.Append;
            _cdsDSACODIGO.Value := _cdsData.FieldbyName('CODIGO').AsString;
            _cdsDSACUENTA.Value := _cdsData.FieldByName('CUENTA').AsString;
            _cdsDSADEBITO.Value := _cdsData.FieldByName('DEBITO').AsCurrency;
            _cdsDSACREDITO.Value := _cdsData.FieldByName('CREDITO').AsCurrency;
            _cdsDSAID_PERSONA.Value := _cdsData.FieldByName('ID_PERSONA').AsString;
            _cdsDSAID_IDENTIFICACION.Value := _cdsData.FieldByName('ID_IDENTIFICACION').AsInteger;
            _cdsDSAMONTO.Value := _cdsData.FieldByName('MONTO').AsCurrency;
            _cdsDSATASA.Value := _cdsData.FieldByName('TASA').AsCurrency;
            _cdsDSAESTADO.Value := _cdsData.FieldByName('ESTADO').AsString;
            _cdsDSAPRIMER_APELLIDO.Value := _cdsData.FieldByName('PRIMER_APELLIDO').AsString;
            _cdsDSASEGUNDO_APELLIDO.Value := _cdsData.FieldByName('SEGUNDO_APELLIDO').AsString;
            _cdsDSANOMBRE.Value := _cdsData.FieldByName('NOMBRE').AsString;
            _cdsDSACHEQUE.Value := _cdsData.FieldByName('CHEQUE').AsString;
            _cdsDSADETALLE.Value := _cdsData.FieldByName('DETALLE').AsString;
            _cdsDSAESBANCO.Value := _cdsData.FieldByName('ESBANCO').AsBoolean;
            _cdsDSAID_AGENCIA.Value := _cdsData.FieldByName('ID_AGENCIA').AsInteger;
            _cdsDSADESCRIPCION_AGENCIA.Value := _cdsData.FieldByName('DESCRIPCION_AGENCIA').AsString;
            _cdsDSAID_CLASE_OPERACION.Value := _cdsData.FieldByName('ID_CLASE_OPERACION').AsString;
            _cdsDSADESCRIPCION_CLASE_OPERACION.Value := _cdsData.FieldByName('DESCRIPCION_CLASE_OPERACION').AsString;
            _cdsDSAPARA_DSA.Value := false;
            _cdsDSA.Post;
          // end;
          _cdsData.Next;
        end;
        DSdata.DataSet := _cdsDSA;
        _cdsDSA.First;
        DBGridData.DataSource := DSdata;
        DBCheckBox1.DataSource := DSdata;
        DBCheckBox1.DataField := 'PARA_DSA';
        DBCheckBox1.Visible := False;
        DBCheckBox1.Color := DBGridData.Color;
        DBCheckBox1.Caption := '';

 //explained later in the article
        DBCheckBox1.ValueChecked := '';
        DBCheckBox1.ValueUnChecked := '';        
end;

procedure TfrmDocumentoSoporte.DBGridDataDrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
const IsChecked : array[Boolean] of Integer = 
 (DFCS_BUTTONCHECK, DFCS_BUTTONCHECK or DFCS_CHECKED);
var
 DrawState: Integer;
 DrawRect: TRect;
begin
        if (gdFocused in State) then
        begin
           if (Column.Field.FieldName = DBCheckBox1.DataField) then
           begin
             DBCheckBox1.Left := Rect.Left + DBGridData.Left + 6;
             DBCheckBox1.Top := Rect.Top + DBGridData.top + 2;
             DBCheckBox1.Width := Rect.Right - Rect.Left;
             DBCheckBox1.Height := Rect.Bottom - Rect.Top;
             DBCheckBox1.Visible := True;
           end
        end
        else
        begin
          if (Column.Field.FieldName = DBCheckBox1.DataField) then
          begin
            DrawRect := Rect;
            InflateRect(DrawRect,-1,-1);
            DrawState := ISChecked[Column.Field.AsBoolean];
            DBGridData.Canvas.FillRect(Rect);
            DrawFrameControl(DBGridData.Canvas.Handle, DrawRect,DFC_BUTTON, DrawState);
          end;
       end;
end;

procedure TfrmDocumentoSoporte.DBGridDataColExit(Sender: TObject);
begin
   if DBGridData.SelectedField.FieldName = DBCheckBox1.DataField then
         DBCheckBox1.Visible := False;
end;

procedure TfrmDocumentoSoporte.DBGridDataKeyPress(Sender: TObject;
  var Key: Char);
begin
        if (Key = Chr(9)) then Exit;
        if (DBGridData.SelectedField.FieldName = DBCheckBox1.DataField) then
        begin
         DBCheckBox1.SetFocus;
         SendMessage(DBCheckBox1.Handle, WM_Char, word(Key), 0);
        end;
end;

end.



