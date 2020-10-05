unit Unit_buscarcomprobante;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, Mask, ExtCtrls, DBCtrls, DB, DBClient,
  IBCustomDataSet, IBQuery, UnitdmGeneral;

type
  Tfrmbuscarcomprobante = class(TForm)
    Bevel1: TBevel;
    Label1: TLabel;
    EditCODIGO: TMaskEdit;
    Panel3: TPanel;
    BtnAceptar: TBitBtn;
    BtnCancelar: TBitBtn;
    Label4: TLabel;
    dblcbtipo: TDBLookupComboBox;
    DSTipoComprobante: TDataSource;
    IBQTipoComprobante: TIBQuery;
    procedure EditCODIGOKeyPress(Sender: TObject; var Key: Char);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }

  public
    { Public declarations }
  end;

var
  frmbuscarcomprobante: Tfrmbuscarcomprobante;
  _connection : TdmGeneral;

implementation

{$R *.dfm}


procedure Tfrmbuscarcomprobante.EditCODIGOKeyPress(Sender: TObject;
  var Key: Char);
begin
        if key = #13 then
        BtnAceptar.SetFocus;
end;

procedure Tfrmbuscarcomprobante.FormCreate(Sender: TObject);
begin
        _connection := TdmGeneral.Create(self);
        IBQTipoComprobante.Database := _connection.IBDataBase1;
        IBQTipoComprobante.Transaction := _connection.IBTransaction1;
        IBQTipoComprobante.Open;
end;

end.
