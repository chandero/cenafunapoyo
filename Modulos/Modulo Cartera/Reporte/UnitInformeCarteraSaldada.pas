unit UnitInformeCarteraSaldada;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ComCtrls, StdCtrls, ExtCtrls, Buttons, DB, IBCustomDataSet, unitDmGeneral,
  IBQuery, FR_DSet, FR_DBSet, FR_Class, DataSetToExcel;

type
  TfrmInformeCarteraSaldada = class(TForm)
    GroupBox1: TGroupBox;
    edFechaInicial: TDateTimePicker;
    edFechaFinal: TDateTimePicker;
    Panel1: TPanel;
    CmdCerrar: TBitBtn;
    CmdProcesar: TBitBtn;
    Label1: TLabel;
    Label2: TLabel;
    IBQuery1: TIBQuery;
    frReport1: TfrReport;
    frDBDataSet1: TfrDBDataSet;
    CmdImprimirProvision: TBitBtn;
    SD1: TSaveDialog;
    procedure CmdCerrarClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure CmdProcesarClick(Sender: TObject);
    procedure CmdImprimirProvisionClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmInformeCarteraSaldada: TfrmInformeCarteraSaldada;
  dmGeneral: TdmGeneral;

implementation

{$R *.dfm}

uses UnitGlobales;

procedure TfrmInformeCarteraSaldada.CmdCerrarClick(Sender: TObject);
begin
        Close;
end;

procedure TfrmInformeCarteraSaldada.FormCreate(Sender: TObject);
begin
         dmGeneral := TdmGeneral.Create(self);
         dmGeneral.getConnected;

         IBQuery1.Database := dmGeneral.IBDatabase1;
         IBQuery1.Transaction := dmGeneral.IBTransaction1;
end;

procedure TfrmInformeCarteraSaldada.CmdProcesarClick(Sender: TObject);
begin
        IBQuery1.Close;
        IBQuery1.ParamByName('FECHA_INICIAL').AsDate :=  edFechaInicial.Date;
        IBQuery1.ParamByName('FECHA_FINAL').AsDate := edFechaFinal.Date;
        IBQuery1.Open;

        frReport1.LoadFromFile('Reporte/InformeCarteraSaldada.frf');
        frReport1.Dictionary.Variables['EMPRESA'] := QuotedStr(Empresa);
        frReport1.Dictionary.Variables['FECHA_INICIAL'] := edFechaInicial.Date;
        frReport1.Dictionary.Variables['FECHA_FINAL'] := edFechaFinal.Date;

        if frReport1.PrepareReport then
        begin
            frReport1.ShowPreparedReport;
        end;

end;

procedure TfrmInformeCarteraSaldada.CmdImprimirProvisionClick(
  Sender: TObject);
  var
   ExcelFile : TDataSetToExcel;  
begin
          SD1.Title := 'Nombre Para El Archivo del Informe';
          if (SD1.Execute) then
          begin
           IBQuery1.Close;
           IBQuery1.ParamByName('FECHA_INICIAL').AsDate :=  edFechaInicial.Date;
           IBQuery1.ParamByName('FECHA_FINAL').AsDate := edFechaFinal.Date;
           IBQuery1.Open;
           ExcelFile := TDataSetToExcel.Create(IBQuery1,SD1.FileName);
           ExcelFile.WriteFile;
           ExcelFile.Free;
           ShowMessage('Archivo de Saldados Guardado...!');
          end

end;

end.
