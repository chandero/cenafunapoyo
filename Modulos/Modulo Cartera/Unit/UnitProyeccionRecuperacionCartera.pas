unit UnitProyeccionRecuperacionCartera;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ComCtrls, Buttons, DB, IBCustomDataSet, IBQuery, UnitDmGeneral,
  DBClient;

type
  TfrmProyeccionRecuperacionCartera = class(TForm)
    EdFechaInicio: TDateTimePicker;
    Label1: TLabel;
    btnExcel: TBitBtn;
    IBQuery1: TIBQuery;
    CDSdata: TClientDataSet;
    CDSdataANHO: TIntegerField;
    CDSdataMES: TIntegerField;
    CDSdataCAPITAL: TCurrencyField;
    CDSdataINTERES: TCurrencyField;
    Label2: TLabel;
    EdFechaFinal: TDateTimePicker;
    procedure FormCreate(Sender: TObject);
    procedure btnInicialClick(Sender: TObject);
    procedure btnExcelClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmProyeccionRecuperacionCartera: TfrmProyeccionRecuperacionCartera;
  dmGeneral : TdmGeneral;


implementation

{$R *.dfm}

procedure TfrmProyeccionRecuperacionCartera.FormCreate(Sender: TObject);
begin
        dmGeneral := TdmGeneral.Create(nil);
        dmGeneral.getConnected;

        IBQuery1.Database := dmGeneral.IBDatabase1;
        IBQuery1.Transaction := dmGeneral.IBTransaction1;
end;

procedure TfrmProyeccionRecuperacionCartera.btnInicialClick(
  Sender: TObject);
  var
    FechaInicial, FechaFinal : TDate;
begin
        IBQuery1.Close;
        IBQuery1.SQL.Clear;
        IBQuery1.ParamByName('FECHA_INICIAL').AsDate := FechaInicial;
        IBQuery1.ParamByName('FECHA_FINAL').AsDate := FechaFinal;
        IBQuery1.Open;
end;

procedure TfrmProyeccionRecuperacionCartera.btnExcelClick(Sender: TObject);
  var
    FechaInicial, FechaFinal : TDate;
begin
        IBQuery1.Close;
        IBQuery1.SQL.Clear;
        IBQuery1.ParamByName('FECHA_INICIAL').AsDate := EdFechaInicio.Date;
        IBQuery1.ParamByName('FECHA_FINAL').AsDate := EdFechaFinal.Date;
        IBQuery1.Open;end;

end.
