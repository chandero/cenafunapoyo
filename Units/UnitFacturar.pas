unit UnitFacturar;

interface

uses SysUtils, DateUtils, StrUtils, Dialogs, IdTCPConnection, IdTCPClient, IdHTTP, IdSSLIntercept, IdSSLOpenSSL, wsdl_conexus;

type
  TFacturar = class
  public
    // property factura: Integer read fact_id write fact_id;
    function Facturar(fact_id: Integer): String;
    function Status: String;
    function GetURLAsString(const aURL: string): string;
end;


implementation

uses IBQuery, IBDatabase, UnitDmGeneral, UnitGlobales;

function TFacturar.GetURLAsString(const aURL: string): string;
var
  lHTTP: TIdHTTP;
begin
    lHTTP := TIdHTTP.Create(nil);
  try
    Result := lHTTP.Get(aURL);
  finally
    lHTTP.Free;
  end;
end;


function TFacturar.Status: String;
var
  _iservice : IService;
begin
   _iservice := GetIService(true);
   result := _iservice.Status;
end;


function TFacturar.Facturar(fact_id: Integer): String;
var _result : String;
_query: TIBQuery;
dmGeneral : TdmGeneral;
_url : String;
begin
  dmGeneral := TdmGeneral.Create(nil);
  dmGeneral.getConnected;

  _query := TIBQuery.Create(nil);
  _query.Database := dmGeneral.IBDatabase1;
  _query.Transaction := dmGeneral.IBTransaction1;

  _query.Close;
  _query.SQL.Clear;
  _query.SQL.Add('SELECT PROVIDER_SERVER_URL FROM FAC_SOFTWARE_SEGURIDAD');
  _query.Open;

  _url := _query.FieldByName('PROVIDER_SERVER_URL').AsString;

  _result := GetURLAsString(_url + IntToStr(fact_id));
  result := _result;
end;

end.
