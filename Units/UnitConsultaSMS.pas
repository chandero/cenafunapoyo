unit UnitConsultaSMS;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, UnitSmsRequest, Grids, DBGrids, DB, DBClient, UnitGlobales,
  ComCtrls, ExtCtrls, DataSetToExcel;

type
  TfrmConsultaSMS = class(TForm)
    CDSData: TClientDataSet;
    DSData: TDataSource;
    Panel1: TPanel;
    Label1: TLabel;
    edFechaInicial: TDateTimePicker;
    CmdGrabar: TBitBtn;
    Panel2: TPanel;
    Panel3: TPanel;
    DBGrid1: TDBGrid;
    edFechaFinal: TDateTimePicker;
    Label2: TLabel;
    edTodos: TCheckBox;
    btnAExcel: TBitBtn;
    SD1: TSaveDialog;
    Button1: TButton;
    procedure CmdGrabarClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure btnAExcelClick(Sender: TObject);
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmConsultaSMS: TfrmConsultaSMS;

implementation

{$R *.dfm}

procedure TfrmConsultaSMS.CmdGrabarClick(Sender: TObject);
var
    Sms: TSmsRequest;
begin
     Sms := TSmsRequest.Create;
     Sms.Credenciales := GetSMSCredentials;
     DSData.DataSet := Sms.getOutgoingSMS(edFechaInicial.Date, EdFechaFinal.Date, edTodos.checked);
end;

procedure TfrmConsultaSMS.FormShow(Sender: TObject);
begin
        edFechaInicial.Date := Now;
        edFechaFinal.Date := Now;
end;

procedure TfrmConsultaSMS.btnAExcelClick(Sender: TObject);
  var
   ExcelFile : TDataSetToExcel;
begin
          SD1.Title := 'Nombre Para El Archivo de SMS';
          if (SD1.Execute) then
          begin
           DSData.DataSet.First;
           ExcelFile := TDataSetToExcel.Create(DSData.DataSet,SD1.FileName);
           ExcelFile.WriteFile;
           ExcelFile.Free;
           ShowMessage('Archivo de SMS Guardado...!');
          end
          else
          begin
           ShowMessage('Archivo no generado...!');
          end;

end;

procedure TfrmConsultaSMS.Button1Click(Sender: TObject);
begin
        Close;
end;

end.
