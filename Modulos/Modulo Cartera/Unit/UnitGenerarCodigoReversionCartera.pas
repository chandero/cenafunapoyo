unit UnitGenerarCodigoReversionCartera;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, DB, IBCustomDataSet, IBQuery, UnitDmGeneral,
  ExtCtrls;

type
  TfrmGenerarCodigoReversionCartera = class(TForm)
    btnGenerar: TBitBtn;
    edCodigo: TEdit;
    btnCerrar: TBitBtn;
    btnGuardar: TButton;
    IBQguardar: TIBQuery;
    rgOpcion: TRadioGroup;
    procedure btnGenerarClick(Sender: TObject);
    procedure btnGuardarClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure btnCerrarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmGenerarCodigoReversionCartera: TfrmGenerarCodigoReversionCartera;
  dmGeneral: TdmGeneral;

implementation

{$R *.dfm}

uses UnitGlobales;

procedure TfrmGenerarCodigoReversionCartera.btnGenerarClick(
  Sender: TObject);
var
 i: Integer;
 cadena : String;
begin
  randomize;
  cadena := '';
  for i := 0 to 7 do
    begin
    case Random (7) of
      0:       cadena := cadena + Chr (ord ('0')+ random (1 + ord('9')-ord('0')) );
      1,2:     cadena := cadena + Chr (ord ('A')+ random (1 + ord('Z')-ord('A')) );
      3,4,5,6: cadena := cadena + Chr (ord ('a')+ random (1 + ord('z')-ord('a')) );
    end;
  end;
  edCodigo.Text := cadena;
end;

procedure TfrmGenerarCodigoReversionCartera.btnGuardarClick(
  Sender: TObject);
  var
   cadena : String;
begin
        btnGenerar.Enabled := False;
        btnGuardar.Enabled := False;
        IBQguardar.Close;
        IBQguardar.ParamByName('COAP_TIPO').AsInteger := rgOpcion.ItemIndex + 1;
        case rgOpcion.ItemIndex of
          0: cadena := 'Código Anulación Abono Cartera';
          1: cadena := 'Código Certificado de Cartera';
        end;
        IBQguardar.ParamByName('COAP_DESCRIPCION').AsString := cadena;
        IBQguardar.ParamByName('COAP_ESTADO').AsInteger := 0;
        IBQguardar.ParamByName('COAP_CODIGO').AsString := edCodigo.Text;
        IBQguardar.ParamByName('COAP_GENERADO').AsDateTime := fFechaHoraActual;
        IBQguardar.ExecSQL;
        IBQguardar.Transaction.Commit;
end;

procedure TfrmGenerarCodigoReversionCartera.FormCreate(Sender: TObject);
begin
        dmGeneral := TdmGeneral.Create(self);
        dmGeneral.getConnected;

        IBQguardar.Database := dmGeneral.IBDatabase1;
        IBQguardar.Transaction := dmGeneral.IBTransaction1;
end;

procedure TfrmGenerarCodigoReversionCartera.btnCerrarClick(
  Sender: TObject);
begin
  Close;
end;

end.
