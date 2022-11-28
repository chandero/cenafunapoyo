unit UnitGenerarCodigo;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons;

type
  TfrmGenerarCodigoReversionCartera = class(TForm)
    btnGenerar: TBitBtn;
    edCodigo: TEdit;
    btnCerrar: TBitBtn;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmGenerarCodigoReversionCartera: TfrmGenerarCodigoReversionCartera;

implementation

{$R *.dfm}

end.
