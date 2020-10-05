unit UnitDialogoSMS;

interface

uses Windows, SysUtils, Classes, Graphics, Forms, Controls, StdCtrls, 
  Buttons, ExtCtrls, JvEdit, JvTypedEdit, Mask, Dialogs;

type
  TDialogSMS = class(TForm)
    OKBtn: TButton;
    CancelBtn: TButton;
    Bevel1: TBevel;
    Label1: TLabel;
    edMensaje: TMemo;
    Label2: TLabel;
    edNumero: TMaskEdit;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DialogSMS: TDialogSMS;

implementation

{$R *.dfm}

end.
