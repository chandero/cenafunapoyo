unit UnitInformeAcuerdoPago;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, DBClient, IBCustomDataSet, IBQuery, UnitDmGeneral, StdCtrls,
  Buttons, FR_Class, FR_DSet, FR_DBSet, Provider, frOLEExl, FR_ChBox;

type
  TfrmInformeAcuerdoPago = class(TForm)
    CDSacuerdo: TClientDataSet;
    CDStabla: TClientDataSet;
    IBQacuerdo: TIBQuery;
    IBQtabla: TIBQuery;
    btnInforme: TBitBtn;
    frReport1: TfrReport;
    frDBDSacuerdo: TfrDBDataSet;
    frDBDStabla: TfrDBDataSet;
    DSacuerdo: TDataSource;
    DSPacuerdo: TDataSetProvider;
    DSPtabla: TDataSetProvider;
    CDSacuerdoID: TIntegerField;
    CDSacuerdoID_COLOCACION: TStringField;
    CDSacuerdoID_IDENTIFICACION: TIntegerField;
    CDSacuerdoID_PERSONA: TStringField;
    CDSacuerdoSALDO: TBCDField;
    CDSacuerdoOBSERVACIONES: TStringField;
    CDSacuerdoFECHA: TDateField;
    CDSacuerdoDEUDA: TBCDField;
    CDSacuerdoNOMBRE: TStringField;
    CDStablaFECHA: TDateField;
    CDStablaVALOR: TBCDField;
    CDStablaCUMPLIDO: TIntegerField;
    CDStablaFECHA_CUMPLIDO: TDateField;
    CDStablaID: TIntegerField;
    frCheckBoxObject1: TfrCheckBoxObject;
    frOLEExcelExport1: TfrOLEExcelExport;
    CDStablaVALOR_PAGADO: TCurrencyField;
    btnCerrar: TBitBtn;
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure btnInformeClick(Sender: TObject);
    procedure btnCerrarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmInformeAcuerdoPago: TfrmInformeAcuerdoPago;
  dmGeneral: TdmGeneral;

implementation

{$R *.dfm}

uses UnitMain, UnitGlobales;

procedure TfrmInformeAcuerdoPago.FormCreate(Sender: TObject);
begin
        dmGeneral := TdmGeneral.Create(self);
        dmGeneral.getConnected;

        IBQacuerdo.Database := dmGeneral.IBDatabase1;
        IBQtabla.Database := dmGeneral.IBDatabase1;

        IBQacuerdo.Transaction := dmGeneral.IBTransaction1;
        IBQtabla.Transaction := dmGeneral.IBTransaction1;

end;

procedure TfrmInformeAcuerdoPago.FormShow(Sender: TObject);
begin
        IBQacuerdo.Close;
        IBQacuerdo.SQL.Clear;
        IBQacuerdo.SQL.Add('SELECT j.*, (c.VALOR_DESEMBOLSO - c.ABONOS_CAPITAL) AS DEUDA, (p.NOMBRE || p.PRIMER_APELLIDO || p.SEGUNDO_APELLIDO ) AS NOMBRE FROM JURIDICOACUERDO j INNER JOIN "col$colocacion" c ON c.ID_COLOCACION = j.ID_COLOCACION');
        IBQacuerdo.SQL.Add('INNER JOIN "gen$persona" p ON p.ID_IDENTIFICACION = c.ID_IDENTIFICACION and p.ID_PERSONA = c.ID_PERSONA');
        IBQacuerdo.SQL.Add('WHERE c.ID_ESTADO_COLOCACION IN (0,1,2,3)');
        IBQacuerdo.Open;

        CDSacuerdo.Open;
        CDSacuerdo.EmptyDataSet;

        while not IBQacuerdo.Eof do
        begin
          CDSacuerdo.Insert;
          CDSacuerdoID.Value := IBQacuerdo.FieldByName('ID').AsInteger;
          CDSacuerdoID_COLOCACION.Value := IBQacuerdo.FieldByName('ID_COLOCACION').AsString;
          CDSacuerdoID_IDENTIFICACION.Value := IBQacuerdo.FieldByName('ID_IDENTIFICACION').AsInteger;
          CDSacuerdoID_PERSONA.Value := IBQacuerdo.FieldByName('ID_PERSONA').AsString;
          CDSacuerdoSALDO.Value := IBQacuerdo.FieldByName('SALDO').AsCurrency;
          CDSacuerdoOBSERVACIONES.Value := IBQacuerdo.FieldByName('OBSERVACIONES').AsString;
          CDSacuerdoFECHA.Value := IBQacuerdo.FieldByName('FECHA').AsDateTime;
          CDSacuerdoDEUDA.Value := IBQacuerdo.FieldByName('DEUDA').AsCurrency;
          CDSacuerdoNOMBRE.Value := IBQacuerdo.FieldByName('NOMBRE').AsString;
          CDSacuerdo.Post;
          IBQacuerdo.Next;
        end;


        IBQtabla.Close;
        IBQtabla.SQL.Clear;
        IBQtabla.SQL.Add('SELECT t.* FROM JURIDICOACUERDO_TABLA t INNER JOIN JURIDICOACUERDO j ON j.ID = t.ID INNER JOIN "col$colocacion" c ON c.ID_COLOCACION = j.ID_COLOCACION');
        IBQtabla.SQL.Add('WHERE c.ID_ESTADO_COLOCACION IN (0,1,2,3)');
        IBQtabla.Open;

        CDStabla.Open;
        CDStabla.EmptyDataSet;

        while not IBQtabla.Eof do
        begin
          CDStabla.Insert;
          CDStablaID.Value := IBQtabla.FieldByName('ID').AsInteger;
          CDStablaFECHA.Value := IBQtabla.FieldByName('FECHA').AsDateTime;
          CDStablaVALOR.Value := IBQtabla.FieldByName('VALOR').AsCurrency;
          CDStablaCUMPLIDO.Value := IBQtabla.FieldByName('CUMPLIDO').AsInteger;
          CDStablaFECHA_CUMPLIDO.Value := IBQtabla.FieldByName('FECHA_CUMPLIDO').AsDateTime;
          CDStablaVALOR_PAGADO.Value := IBQtabla.FieldByName('VALOR_PAGADO').AsCurrency;
          CDStabla.Post;
          IBQTabla.Next;
        end;



end;

procedure TfrmInformeAcuerdoPago.btnInformeClick(Sender: TObject);
begin
        frReport1.LoadFromFile(frmMain.ruta1 + '\reporte\frInformeAcuerdoPago.frf');
        frReport1.Dictionary.Variables.Variable['EMPRESA'] := QuotedStr(Empresa);
//        frReport1.Dictionary.Variables.Variable['HOY'] := FormatDateTime('YYYY/MM/DD', fFechaActual);
        if frReport1.PrepareReport then
          frReport1.ShowPreparedReport;
end;

procedure TfrmInformeAcuerdoPago.btnCerrarClick(Sender: TObject);
begin
        Close;
end;

end.
