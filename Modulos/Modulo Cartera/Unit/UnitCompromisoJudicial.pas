unit UnitCompromisoJudicial;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, ExtCtrls, ComCtrls;

type
  TfrmCompromisoJudicial = class(TForm)
    Panel2: TPanel;
    CmdAceptar: TBitBtn;
    CmdCancelar: TBitBtn;
    Memo1: TMemo;
    chkActivo: TCheckBox;
    cmbRepetirCada: TComboBox;
    Label1: TLabel;
    Panel1: TPanel;
    Label2: TLabel;
    txtFechaCompromiso: TDateTimePicker;
    procedure FormCreate(Sender: TObject);
    procedure CmdAceptarClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
    FMemo:string;
    FFechaCompromiso:TDate;
    FRepetirCada: String;
    FActivo: Boolean;
    FActualizar: Boolean;
  public
    { Public declarations }
    property Memo:string read FMemo Write FMemo;
    property FechaCompromiso:TDate read FFechaCompromiso Write FFechaCompromiso;
    property RepetirCada:String read FRepetirCada Write FRepetirCada;
    property Activo: Boolean read FActivo write FActivo;
    property Actualizar: Boolean read FActualizar write FActualizar;

    procedure setEstadoActivo;
    procedure setEstadoInactivo;
    procedure setEstadoEnabled(Enabled: Boolean);
  end;

var
  frmCompromisoJudicial: TfrmCompromisoJudicial;

implementation

{$R *.dfm}

uses UnitGlobales;

procedure TfrmCompromisoJudicial.FormCreate(Sender: TObject);
begin
        txtFechaCompromiso.Date := fFechaActual;
end;

procedure TfrmCompromisoJudicial.setEstadoActivo;
begin
        chkActivo.Checked := True;
end;

procedure TfrmCompromisoJudicial.setEstadoInactivo;
begin
        chkActivo.Checked := False;
end;

procedure TfrmCompromisoJudicial.setEstadoEnabled(Enabled: Boolean);
begin
        chkActivo.Enabled := Enabled;
end;


procedure TfrmCompromisoJudicial.CmdAceptarClick(Sender: TObject);
begin
        FMemo := Memo1.Text;
        FFechaCompromiso := txtFechaCompromiso.Date;
        case cmbRepetirCada.ItemIndex of
        0: FRepetirCada := 'Dia';
        1: FRepetirCada := 'Semana';
        2: FRepetirCada := 'Mes';
        3: FRepetirCada := 'Anho';
        else
          FRepetirCada := '';
        end;
        FActivo := chkActivo.Checked;
end;

procedure TfrmCompromisoJudicial.FormShow(Sender: TObject);
begin
      if (FActualizar) then
      begin
        Memo1.Text := FMemo;
        if (FRepetirCada = 'Dia') then cmbRepetirCada.ItemIndex := 0;
        if (FRepetirCada = 'Semana') then cmbRepetirCada.ItemIndex := 1;
        if (FRepetirCada = 'Mes') then cmbRepetirCada.ItemIndex := 2;
        if (FRepetirCada = 'Anho') then cmbRepetirCada.ItemIndex := 3;
        txtFechaCompromiso.Date := FFechaCompromiso;
        chkActivo.Checked := FActivo;
      end
      else
      begin
        Memo1.Text := '';
        cmbRepetirCada.Text := 'Seleccione';
        cmbRepetirCada.ItemIndex := -1;
        txtFechaCompromiso.Date := fFechaActual;
        chkActivo.Checked := True;
      end;
end;

end.
