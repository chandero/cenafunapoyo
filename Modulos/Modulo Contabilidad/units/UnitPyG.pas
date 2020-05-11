unit UnitPyG;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, FR_Class, frOLEExl, FR_DSet, FR_DBSet, DB, DBClient,
  IBCustomDataSet, IBQuery, StdCtrls, Buttons, ComCtrls, Mask, ExtCtrls, UnitDmGeneral;

type
  TfrmPyG = class(TForm)
    Panel1: TPanel;
    Label5: TLabel;
    Label4: TLabel;
    Label1: TLabel;
    CBMeses: TComboBox;
    EdAno: TMaskEdit;
    CBNivel: TComboBox;
    ProgressBar1: TProgressBar;
    Panel2: TPanel;
    CmdAceptar: TBitBtn;
    CmdCerrar: TBitBtn;
    btnAExcel: TBitBtn;
    btnReporte: TBitBtn;
    IBQPuc: TIBQuery;
    IBQsaldo: TIBQuery;
    IBQTabla: TClientDataSet;
    IBQTablaCODIGO: TStringField;
    IBQTablaNOMBRE: TStringField;
    IBQTablaDEBITOANT: TCurrencyField;
    IBQTablaCREDITOANT: TCurrencyField;
    IBQTablaDEBITOMOV: TCurrencyField;
    IBQTablaCREDITOMOV: TCurrencyField;
    IBQTablaDEBITOACT: TCurrencyField;
    IBQTablaCREDITOACT: TCurrencyField;
    IBQTablaDESCRIPCION_AGENCIA: TStringField;
    IBQTabla1: TClientDataSet;
    StringField1: TStringField;
    StringField2: TStringField;
    CurrencyField1: TCurrencyField;
    CurrencyField2: TCurrencyField;
    CurrencyField3: TCurrencyField;
    CurrencyField4: TCurrencyField;
    IBQTabla1DEBITOACT: TCurrencyField;
    IBQTabla1CREDITOACT: TCurrencyField;
    frDBDataSet1: TfrDBDataSet;
    frDBDataSet2: TfrDBDataSet;
    frOLEExcelExport1: TfrOLEExcelExport;
    frReport1: TfrReport;
    SD1: TSaveDialog;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmPyG: TfrmPyG;
  dmGeneral: TdmGeneral;
  ValorEoP:Currency;
  CodigoPerdida:string;
  CodigoExcedente:string;
  CodigoEoP:string;

implementation

{$R *.dfm}

end.
