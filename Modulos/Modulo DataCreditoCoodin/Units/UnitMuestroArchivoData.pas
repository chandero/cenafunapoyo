unit UnitMuestroArchivoData;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, pr_CommonPreviewPanel, pr_TxPreviewPanel, StdCtrls;

type
  TfrmMuestroArchivoData = class(TForm)
    OpenDialog1: TOpenDialog;
    Memo1: TMemo;
    procedure FormShow(Sender: TObject);
  private
  _nombre:string;
    { Private declarations }
  public
  property Nombre: string read _nombre Write _nombre;
    { Public declarations }
  end;

var
  frmMuestroArchivoData: TfrmMuestroArchivoData;

implementation

{$R *.dfm}

procedure TfrmMuestroArchivoData.FormShow(Sender: TObject);
begin
//          Memo1.Lines.LoadFromFile('c:/Datacredito' + FechaCorte + '.TXT');
          Memo1.Lines.LoadFromFile(_nombre);
end;

end.
