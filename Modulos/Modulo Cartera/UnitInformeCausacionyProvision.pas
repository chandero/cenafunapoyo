unit UnitInformeCausacionyProvision;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, StdCtrls, ComCtrls, Provider, DBClient, DB,
  IBCustomDataSet, IBQuery, UnitDmGeneral, DataSetToExcel;

type
  TfrmInformeCausacionyProvision = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    edFechaCorte: TDateTimePicker;
    btnAExcel: TButton;
    btnCerrar: TButton;
    IBQdata: TIBQuery;
    CDSdata: TClientDataSet;
    DSPdata: TDataSetProvider;
    SD1: TSaveDialog;
    procedure btnCerrarClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure btnAExcelClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmInformeCausacionyProvision: TfrmInformeCausacionyProvision;
  dmGeneral : TdmGeneral;
  
implementation

{$R *.dfm}

procedure TfrmInformeCausacionyProvision.btnCerrarClick(Sender: TObject);
begin
        Close;
end;

procedure TfrmInformeCausacionyProvision.FormCreate(Sender: TObject);
begin
        dmGeneral := TdmGeneral.Create(Self);
        dmGeneral.getConnected;
end;

procedure TfrmInformeCausacionyProvision.FormShow(Sender: TObject);
begin
        IBQdata.Database := dmGeneral.IBDatabase1;
        IBQdata.Transaction := dmGeneral.IBTransaction1;
end;

procedure TfrmInformeCausacionyProvision.btnAExcelClick(Sender: TObject);
var
  ExcelFile : TDataSetToExcel;
begin
        IBQdata.ParamByName('FECHA_CORTE').AsDate := edFechaCorte.Date;
        IBQdata.Open;

          SD1.Title := 'Nombre Para El Archivo de Cartera';
          if (SD1.Execute) then
          begin
           IBQdata.Filtered := False;
           IBQdata.Open;
           IBQdata.First;
           ExcelFile := TDataSetToExcel.Create(IBQdata,SD1.FileName);
           ExcelFile.WriteFile;
           ExcelFile.Free;
           ShowMessage('Archivo de Cartera Guardado...!');
          end
          else
          begin
           ShowMessage('Archivo no generado...!');
          end;        
end;

end.
