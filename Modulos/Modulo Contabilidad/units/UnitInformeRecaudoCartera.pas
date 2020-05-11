unit UnitInformeRecaudoCartera;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DBCtrls, StdCtrls, Buttons, ExtCtrls;

type
  TfrmInformeRecaudoCartera = class(TForm)
    Label1: TLabel;
    edCentro: TDBLookupComboBox;
    Label2: TLabel;
    edPeriodo: TDBLookupComboBox;
    Panel1: TPanel;
    CmdAceptar: TBitBtn;
    btnReporte: TBitBtn;
    btnAExcel: TBitBtn;
    CmdCerrar: TBitBtn;
    procedure CmdCerrarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmInformeRecaudoCartera: TfrmInformeRecaudoCartera;

implementation

{$R *.dfm}

procedure TfrmInformeRecaudoCartera.CmdCerrarClick(Sender: TObject);
begin
        Close;
end;

end.
