unit UnitdmGeneral;

interface

uses
  SysUtils, Classes, IBDatabase, DB, IBSQL, Forms, IniFiles;

type
  TdmGeneral = class(TDataModule)
    IBDatabase1: TIBDatabase;
    IBTransaction1: TIBTransaction;
    IBSQL1: TIBSQL;
    procedure DataModuleCreate(Sender: TObject);
  private
    { Private declarations }
  public

    { Public declarations }
  end;

var
 dmGeneral: TdmGeneral;

implementation

{$R *.dfm}

uses
 unitGlobales;

procedure TdmGeneral.DataModuleCreate(Sender: TObject);
begin

        IBDatabase1.Connected := false;
        IBDatabase1.DataBaseName := DBserver + ':' + DBpath + DBname;
        IBDatabase1.Params.Values['lc_ctype'] := 'ISO8859_1';
        IBDatabase1.Params.Values['User_Name'] := 'sysdba';
        IBDatabase1.Params.Values['PassWord'] := 'masterkey';
        IBDatabase1.Connected := True;
        IBTransaction1.StartTransaction;


end;

end.
