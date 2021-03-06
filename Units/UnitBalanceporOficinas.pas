unit UnitBalanceporOficinas;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, DBClient, pr_Common, pr_TxClasses, IBCustomDataSet, IBQuery,
  StdCtrls, Buttons, Mask, ExtCtrls, StrUtils;

type
  TfrmBalanceporOficinas = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label5: TLabel;
    Label4: TLabel;
    EdCodigoInicial: TMaskEdit;
    EdCodigoFinal: TMaskEdit;
    CBMeses: TComboBox;
    CBNivel: TComboBox;
    EdAno: TMaskEdit;
    Panel2: TPanel;
    CmdAceptar: TBitBtn;
    CmdCerrar: TBitBtn;
    IBQTotal: TIBQuery;
    IBQuery1: TIBQuery;
    IBQPuc: TIBQuery;
    IBQTabla: TClientDataSet;
    IBQTablaCODIGO: TStringField;
    IBQTablaNOMBRE: TStringField;
    IBQTablaNIVEL: TIntegerField;
    IBQTablaDEBITO_01: TCurrencyField;
    IBQTablaCREDITO_01: TCurrencyField;
    IBQTablaDEBITO_02: TCurrencyField;
    IBQTablaCREDITO_02: TCurrencyField;
    IBQTablaDEBITO_03: TCurrencyField;
    IBQTablaCREDITO_03: TCurrencyField;
    ReportBalanceDet: TprTxReport;
    IBQTablaDEBITO_04: TCurrencyField;
    IBQTablaCREDITO_04: TCurrencyField;
    procedure CmdAceptarClick(Sender: TObject);
    procedure CBMesesExit(Sender: TObject);
    procedure CBNivelExit(Sender: TObject);
    procedure EdCodigoInicialExit(Sender: TObject);
    procedure EdCodigoFinalExit(Sender: TObject);
    procedure EdAnoExit(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure CmdCerrarClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmBalanceporOficinas: TfrmBalanceporOficinas;
  Mes           : String;
  MesCorte      : String;
  NomMes        : String;
  Cadena        : String;
  CodigoInicial : String;
  Codigofinal   : String;
  Nivel         : Integer;
  AnoCorte      : Integer;
  NivelCodigo   : Integer;

implementation

{$R *.dfm}

uses Unitglobales, UnitVistaPreliminar, Unitpantallaprogreso;

procedure TfrmBalanceporOficinas.CmdAceptarClick(Sender: TObject);
var frmProgreso:TfrmProgreso;
Tabla:String;
SaldoAnterior:Currency;
Total,I:Integer;
Debito04,Credito04,Debito01,Credito01,Debito02,Credito02,Debito03,Credito03:Currency;
begin

        Debito01 := 0;
        Debito02 := 0;
        Debito03 := 0;
        Debito04 := 0;

        Credito01 := 0;
        Credito02 := 0;
        Credito03 := 0;
        Credito04 := 0;

       Empleado;
         if IBQPuc.Transaction.InTransaction then
            IBQPuc.Transaction.Rollback;
         IBQPuc.Transaction.StartTransaction;
          with IBQTotal do begin
            Close;
            ParamByName('CODIGO_INICIAL').AsString := CodigoInicial;
            ParamByName('CODIGO_FINAL').AsString := Codigofinal;
            ParamByName('NIVEL').AsInteger := Nivel;
            try
              Open;
              Total := FieldByName('TOTAL').AsInteger;
            except
              MessageDlg('Error al Buscar Cuentas',mtError,[mbcancel],0);
              Transaction.Rollback;
              raise;
              Exit;
            end;
          end;

          with IBQPuc do begin
            Close;
            ParamByName('CODIGO_INICIAL').AsString := CodigoInicial;
            ParamByName('CODIGO_FINAL').AsString := Codigofinal;
            ParamByName('NIVEL').AsInteger := Nivel;
            try
              Open;
            except
              MessageDlg('Error al Buscar Cuentas',mtError,[mbcancel],0);
              Transaction.Rollback;
              raise;
              Exit;
            end;
          end;
          
          frmProgreso := TfrmProgreso.Create(Self);
          frmProgreso.Min := 0;
          frmProgreso.Max := Total;
          frmProgreso.InfoLabel := 'Consolidando Codigos para el informe';
          frmProgreso.Ejecutar;

          with IBQTabla do  begin
              While (not IBQPuc.Eof)  do
               begin
                 frmProgreso.Position := IBQPuc.RecNo;
                 Application.ProcessMessages;
                 IBQuery1.SQL.Clear;
                 IBQuery1.SQL.Add('SELECT SALDO AS SALDOACTUAL from VALOR_AGENCIA(:ID_AGENCIA,:MES,:CODIGO)');
                 IBQuery1.ParamByName('CODIGO').AsString := IBQPuc.FieldByName('CODIGO').AsString;
                 IBQuery1.ParamByName('MES').AsInteger := StrToInt(Mes);
                 for i := 1 to 4 do begin
                   IBQuery1.ParamByName('ID_AGENCIA').AsInteger := I;
                   try
                    IBQuery1.Close;
                    IBQuery1.Open;
                   except
                    frmProgreso.Cerrar;
                    MessageDlg('Error al Buscar Valores',mtError,[mbcancel],0);
                    IBQPuc.Transaction.Rollback;
                    raise;
                    Exit;
                   end;
                   if I = 1 then
                      if IBQuery1.FieldByName('SALDOACTUAL').AsCurrency > 0 then
                      begin
                         Debito01 := IBQuery1.FieldByName('SALDOACTUAL').AsCurrency;
                         Credito01 := 0;
                      end
                      else
                      begin
                         Credito01 := -IBQuery1.FieldByName('SALDOACTUAL').AsCurrency;
                         Debito01 := 0;
                      end;
                   if I = 2 then
                      if IBQuery1.FieldByName('SALDOACTUAL').AsCurrency > 0 then
                      begin
                         Debito02 := IBQuery1.FieldByName('SALDOACTUAL').AsCurrency;
                         Credito02 := 0;
                      end
                      else
                      begin
                         Credito02 := -IBQuery1.FieldByName('SALDOACTUAL').AsCurrency;
                         Debito02 := 0;
                      end;
                   if I = 3 then
                      if IBQuery1.FieldByName('SALDOACTUAL').AsCurrency > 0 then
                      begin
                         Debito03 := IBQuery1.FieldByName('SALDOACTUAL').AsCurrency;
                         Credito03 := 0;
                      end
                      else
                      begin
                         Credito03 := -IBQuery1.FieldByName('SALDOACTUAL').AsCurrency;
                         Debito03 := 0;
                      end;
                   if I = 4 then
                      if IBQuery1.FieldByName('SALDOACTUAL').AsCurrency > 0 then
                      begin
                         Debito04 := IBQuery1.FieldByName('SALDOACTUAL').AsCurrency;
                         Credito04 := 0;
                      end
                      else
                      begin
                         Credito04 := -IBQuery1.FieldByName('SALDOACTUAL').AsCurrency;
                         Debito04 := 0;
                      end;

                 end;
                 if (Debito01 <> 0) or (Credito01 <> 0) or
                    (Debito02 <> 0) or (Credito02 <> 0) or
                    (Debito03 <> 0) or (Credito03 <> 0) or
                    (Debito04 <> 0) or (Credito04 <> 0) then begin
                  Open;
                  Insert;
                  FieldByName('CODIGO').AsString := IBQPuc.FieldByName('CODIGO').AsString;
                  FieldByName('NOMBRE').AsString := IBQPuc.FieldByName('NOMBRE').AsString;
                  FieldByName('NIVEL').AsInteger := IBQPuc.FieldByName('NIVEL').AsInteger;
                  FieldByName('DEBITO_01').AsCurrency := Debito01;
                  FieldByName('CREDITO_01').AsCurrency := Credito01;
                  FieldByName('DEBITO_02').AsCurrency := Debito02;
                  FieldByName('CREDITO_02').AsCurrency := Credito02;
                  FieldByName('DEBITO_03').AsCurrency := Debito03;
                  FieldByName('CREDITO_03').AsCurrency := Credito03;
                  FieldByName('DEBITO_04').AsCurrency := Debito04;
                  FieldByName('CREDITO_04').AsCurrency := Credito04;

                  try
                    Post;
                    Close;
                  except
                    frmProgreso.Cerrar;
                    MessageDlg('Error al Crear Temporal',mtError,[mbcancel],0);
                    IBQPuc.Transaction.Rollback;
                    raise;
                    Exit;
                  end;
                 end;
                 IBQPuc.Next;
                end;
              end;    //  with ibqtabla

              IBQPuc.Close;

              ReportBalanceDet.Variables.ByName['Empresa'].AsString := Empresa;
              ReportBalanceDet.Variables.ByName['Nit'].AsString := Nit;
              ReportBalanceDet.Variables.ByName['CodigoI'].AsString := LeftStr(CodigoInicial,NivelCodigo);
              ReportBalanceDet.Variables.ByName['CodigoF'].AsString := LeftStr(CodigoFinal,NivelCodigo);
              ReportBalanceDet.Variables.ByName['Hoy'].AsDateTime := Now;
              ReportBalanceDet.Variables.ByName['Empleado'].AsString := Nombres+' '+Apellidos;
              ReportBalanceDet.Variables.ByName['Mes'].AsString := NomMes;
              ReportBalanceDet.Variables.ByName['AnoCorte'].AsInteger := AnoCorte;
              frmProgreso.Cerrar;
              if ReportBalanceDet.PrepareReport then
               begin
                 frmVistaPreliminar := TfrmVistaPreliminar.Create(Self);
                 frmVistaPreliminar.Reporte := ReportBalanceDet;
                 frmVistaPreliminar.ShowModal;
               end;
end;

procedure TfrmBalanceporOficinas.CBMesesExit(Sender: TObject);
begin
        With CBMeses do
         case ItemIndex of
           0: begin
                Mes := '01';
                MesCorte := '00';
                AnoCorte := AnoCorte - 1;
                NomMes := 'Enero';
              end;
           1: begin
                Mes := '02';
                MesCorte := '01';
                NomMes := 'Febrero';
              end;
           2: begin
                Mes := '03';
                MesCorte := '02';
                NomMes := 'Marzo';
              end;
           3: begin
                Mes := '04';
                MesCorte := '03';
                NomMes := 'Abril';
              end;
           4: begin
                Mes := '05';
                MesCorte := '04';
                NomMes := 'Mayo';
              end;
           5: begin
                Mes := '06';
                MesCorte := '05';
                NomMes := 'Junio';
              end;
           6: begin
                Mes := '07';
                MesCorte := '06';
                NomMes := 'Julio';
              end;
           7: begin
                Mes := '08';
                MesCorte := '07';
                NomMes := 'Agosto';
              end;
           8: begin
                Mes := '09';
                MesCorte := '08';
                NomMes := 'Septiembre';
              end;
           9: begin
                Mes := '10';
                MesCorte := '09';
                NomMes := 'Octubre';
              end;
          10: begin
                Mes := '11';
                MesCorte := '10';
                NomMes := 'Noviembre';
              end;
          11: begin
                Mes := '12';
                MesCorte := '11';
                NomMes := 'Diciembre';
              end;
         end;
end;

procedure TfrmBalanceporOficinas.CBNivelExit(Sender: TObject);
begin
        with CBNivel do
         case ItemIndex of
           0: begin
                Nivel := 1;
                NivelCodigo := 1;
              end;
           1: begin
                Nivel := 2;
                NivelCodigo := 2;
              end;
           2: begin
                Nivel := 3;
                NivelCodigo := 4;
              end;
           3..10: begin
                Nivel := ItemIndex + 1;
                NivelCodigo := ItemIndex * 2;
              end;
         end;
end;

procedure TfrmBalanceporOficinas.EdCodigoInicialExit(Sender: TObject);
begin
        Cadena := EdCodigoInicial.Text;
        while Pos(' ',Cadena) > 0 do
        Cadena[Pos(' ',Cadena)] := '0';
        CodigoInicial := Cadena;

end;

procedure TfrmBalanceporOficinas.EdCodigoFinalExit(Sender: TObject);
begin
        Cadena := EdCodigoFinal.Text;
        while Pos(' ',Cadena) > 0 do
        Cadena[Pos(' ',Cadena)] := '0';
        CodigoFinal := Cadena;

end;

procedure TfrmBalanceporOficinas.EdAnoExit(Sender: TObject);
begin
        if EdAno.Text <> '' then
           AnoCorte := StrToInt(EdAno.Text)
        else
           MessageDlg('Debe Digitar el A�o',mtError,[mbOK],0);
end;

procedure TfrmBalanceporOficinas.FormKeyPress(Sender: TObject;
  var Key: Char);
begin
        EnterTabs(Key,Self);
end;

procedure TfrmBalanceporOficinas.CmdCerrarClick(Sender: TObject);
begin
        Close;
end;

procedure TfrmBalanceporOficinas.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
        Action := caFree;
end;

end.
