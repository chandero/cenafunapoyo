unit UnitSmsRequest;

interface

uses
 SysUtils,
 Dialogs,
 Variants,
 DateUtils,
 Controls,
 IdHttp,
 IdURI,
 UnitSmsCredentials,
 Jsons,
 DB,
 DBClient,
 IBQuery,
 UnitDmGeneral,
 UnitGlobales;

 type TSmsRequest = class(TObject)
      private
        credentials: TSmsCredentials;
      public
        property Credenciales: TSmsCredentials read credentials write credentials;
        function sendMessage(number:String; msg: String; colocacion: String): Boolean;
        function getOutgoingSMS(fechaInicial:TDateTime; fechaFinal:TDateTime; todos: Boolean): TClientDataSet;
 end;

implementation

{ TSmsRequest }


function TSmsRequest.getOutgoingSMS(fechaInicial:TDateTime; fechaFinal:TDateTime; todos: Boolean): TClientDataSet;
var
  httpClient: TIdHttp;
  respStr: string;
  ResponseCode: Integer;
  ResponseStr: String;
  Json: TJson;
  status: String;
  error: String;
  error_string: String;
  token: String;
  timestamp:String;
  url: String;
  dmGeneral :TDmGeneral;
  IBQauditoria : TIBQuery;  
  _uri : TIdURI;
  a : TJsonArray;
  o : TJsonObject;
  i,j,x,y : Integer;
  dst : String;
  tipo: Integer;
  fechatmp, fecha : TDate;
  dates : array of TDate;
begin
  httpClient := TIdHttp.Create(nil);
  Result := TClientDataSet.Create(nil);
  Json := TJson.Create();
  dmGeneral := TdmGeneral.Create(nil);
  dmGeneral.getConnected;
  IBQauditoria := TIBQuery.Create(nil);
  IBQauditoria.Database := dmGeneral.IBDatabase1;
  IBQauditoria.Transaction := dmGeneral.IBTransaction1;

  if (fechaInicial = fechaFinal) then
  begin
      tipo := 1;
  end
  else
  if (fechaInicial > fechaFinal) then
  begin
     fechatmp := fechaInicial;
     fechaInicial := fechaFinal;
     fechaFinal := fechatmp;
     tipo := 2;
  end
  else tipo := 2;
  if (todos) then tipo := 3;


  IBQauditoria.SQL.Clear;
  IBQauditoria.SQL.Add('SELECT * FROM AUDITORIA_SMS a LEFT JOIN "gen$empleado" e ON a.ID_EMPLEADO = e.ID_EMPLEADO WHERE SMSLOG_ID = :SMSLOG_ID');
  with Result do begin
          with FieldDefs.AddFieldDef do begin
                Name := 'ID_COLOCACION';
                DataType := ftString;
                Size := 11;
                Required := False;
          end;
          with FieldDefs.AddFieldDef do begin
                Name := 'DESTINO';
                DataType := ftString;
                Size := 50;
                Required := False;
          end;
          with FieldDefs.AddFieldDef do begin
                Name := 'MENSAJE';
                DataType := ftString;
                Size := 160;
                Required := False;
          end;
          with FieldDefs.AddFieldDef do begin
                Name := 'FECHA';
                DataType := ftString;
                Size := 20;
                Required := False;
          end;
          with FieldDefs.AddFieldDef do begin
                Name := 'ESTADO';
                DataType := ftInteger;
                Required := False;
          end;
          with FieldDefs.AddFieldDef do begin
                Name := 'EMPLEADO';
                DataType := ftString;
                Size := 200;
                Required := False;
          end;
  end;

  Result.CreateDataSet;

  ResponseCode := 0;
  ResponseStr := '';
  try
    try
      // get token
      url := credentials.url+'&op=get_token&u='+credentials.usuario+'&p='+credentials.clave;
      respStr := httpClient.Get(url);
      Json.Parse(respStr);
      status := Json['status'].AsString;
      error := Json['error'].AsString;
      error_string := Json['error_string'].AsString;
      if ((error = '0') and (status = 'OK')) then    // if 1
      begin
              token := Json['token'].AsString;
              if (tipo = 1) then // if 1.1
              begin
                 y := 1;
                 SetLength(dates, y);
                 dates[1] := fechaInicial;
              end // end 1.1
              else
              if (tipo = 2) then  // if 1.2
              begin
                 y := DaysBetween(fechaInicial, fechaFinal) + 1;
                 SetLength(dates, y+1);
                 for x := 1 to y do
                 begin
                     dates[x] := fechaInicial;
                     fechaInicial := IncDay(fechaInicial);
                 end;
              end; // end 1.2

              if (tipo = 3) then    // 1.3
              begin
                _uri := TIdURI.Create(credentials.url+'&op=ds&u='+credentials.usuario+'&h='+token);
                respStr := httpClient.Get(_uri.URI);
                Json.Parse(respStr);
                a := Json['data'].AsArray;
                i := a.Count;
                for j := 0 to (i-1) do
                begin
                  o := a.Items[j].AsObject;
                  Result.Append;
                  Result.FieldByName('DESTINO').AsString := o.Values['dst'].AsString;
                  Result.FieldByName('MENSAJE').AsString := o.Values['msg'].AsString;
                  Result.FieldByName('FECHA').AsString := o.Values['dt'].AsString;
                  Result.FieldByName('ESTADO').AsInteger := o.Values['status'].AsInteger;
                  IBQauditoria.Close;
                  if ( o.Values['smslog_id'].AsString <> '' ) then  // if 1.3.1
                  begin
                   IBQauditoria.ParamByName('SMSLOG_ID').AsString := o.Values['smslog_id'].AsString;
                   IBQauditoria.Open;
                   if (IBQauditoria.RecordCount > 0) then   // if 1.3.1.1
                   begin
                       Result.FieldByName('ID_COLOCACION').AsString := IBQauditoria.FieldByName('ID_COLOCACION').AsString;
                       Result.FieldByName('EMPLEADO').AsString := IBQauditoria.FieldByName('NOMBRE').AsString + ' ' + IBQauditoria.FieldByName('PRIMER_APELLIDO').AsString + ' ' + IBQauditoria.FieldByName('SEGUNDO_APELLIDO').AsString;
                   end;  // end 1.3.1.1
                  end; // end 1.3.1
                end;   // end for
                Result.Post;
              end
              else
              begin
                 for x := 1 to y do  // for 2
                 begin
                     _uri := TIdURI.Create(credentials.url+'&op=ds&u='+credentials.usuario+'&h='+token+'&dt='+FormatDateTime('yyyy-mm-dd',dates[x]));
                     respStr := httpClient.Get(_uri.URI);
                     Json.Parse(respStr);
                     a := Json['data'].AsArray;
                     i := a.Count;
                     for j := 0 to (i-1) do  // for 2.1
                     begin
                          o := a.Items[j].AsObject;
                          Result.Append;
                          Result.FieldByName('DESTINO').AsString := o.Values['dst'].AsString;
                          Result.FieldByName('MENSAJE').AsString := o.Values['msg'].AsString;
                          Result.FieldByName('FECHA').AsString := o.Values['dt'].AsString;
                          Result.FieldByName('ESTADO').AsInteger := o.Values['status'].AsInteger;
                          IBQauditoria.Close;
                          if ( o.Values['smslog_id'].AsString <> '' ) then  // if  1.4
                          begin
                           IBQauditoria.ParamByName('SMSLOG_ID').AsString := o.Values['smslog_id'].AsString;
                           IBQauditoria.Open;
                           if (IBQauditoria.RecordCount > 0) then  // if 1.4.1
                           begin
                               Result.FieldByName('ID_COLOCACION').AsString := IBQauditoria.FieldByName('ID_COLOCACION').AsString;
                               Result.FieldByName('EMPLEADO').AsString := IBQauditoria.FieldByName('NOMBRE').AsString + ' ' + IBQauditoria.FieldByName('PRIMER_APELLIDO').AsString + ' ' + IBQauditoria.FieldByName('SEGUNDO_APELLIDO').AsString;
                           end; // end 1.4.1
                        end; // end 1.4
                        Result.Post;
                     end; // end 2.1
                 end;
              end;
      end
      else
      begin
              ShowMessage('SMS Error:' + error_string);
              Result.EmptyDataSet;
      end;
    except
       on E: Exception do
         begin
          if (ResponseCode = 200) then
                  Result.EmptyDataSet
                else
                begin
                    ShowMessage('SMS Error:' + E.Message);
                    Result.EmptyDataSet;
                end;
          end;
      end;
      // send message
  finally
    httpClient.Free;
  end;

end;

function TSmsRequest.sendMessage(number:String; msg: String; colocacion: String):Boolean;
var
  httpClient: TIdHttp;
  respStr: string;
  ResponseCode: Integer;
  ResponseStr: String;
  Json: TJson;
  JsonArray: TJsonArray;
  status: String;
  error: String;
  error_string: String;
  token: String;
  timestamp:String;
  url: String;
  smslog_id: String;
  _uri : TIdURI;
  dmGeneral :TDmGeneral;
  IBQauditoria : TIBQuery;
  a : TJsonArray;
  o : TJsonObject;
  i,j : Integer;
begin
  httpClient := TIdHttp.Create(nil);
  Json := TJson.Create();
  dmGeneral := TdmGeneral.Create(nil);
  dmGeneral.getConnected;

  IBQauditoria := TIBQuery.Create(nil);
  IBQauditoria.Database := dmGeneral.IBDatabase1;
  IBQauditoria.Transaction := dmGeneral.IBTransaction1;

  IBQauditoria.SQL.Clear;
  IBQauditoria.SQL.Add('INSERT INTO AUDITORIA_SMS (FECHA, HORA, ID_COLOCACION, DESTINO, MENSAJE, ESTADO, SMSLOG_ID, ID_EMPLEADO) VALUES (:FECHA, :HORA, :ID_COLOCACION, :DESTINO, :MENSAJE, :ESTADO, :SMSLOG_ID, :ID_EMPLEADO)');

  Result := False;
  ResponseCode := 0;
  ResponseStr := '';
  try
    try
      // get token
      url := credentials.url+'&op=get_token&u='+credentials.usuario+'&p='+credentials.clave;
      respStr := httpClient.Get(url);
      Json.Parse(respStr);
      status := Json['status'].AsString;
      error := Json['error'].AsString;
      error_string := Json['error_string'].AsString;
      if ((error = '0') and (status = 'OK')) then
      begin
              token := Json['token'].AsString;
                _uri := TIdURI.Create(credentials.url+'&op=pv&u='+credentials.usuario+'&h='+token+'&to='+number+'&msg='+msg);
              respStr := httpClient.Get(_uri.URI);
              Json.Parse(respStr);
              a := Json['data'].AsArray;
              i := a.Count;
              for j := 0 to (i-1) do
              begin
                o := a.Items[j].AsObject;
                status := o.Values['status'].AsString;
                error := o.Values['error'].AsString;
                error_string := o.Values['error_string'].AsString;
                smslog_id := o.Values['smslog_id'].AsString;
                if ( (error = '0') and (status = 'OK') ) then
                begin
                  IBQauditoria.Close;
                  IBQauditoria.ParamByName('FECHA').AsDate := Now;
                  IBQauditoria.ParamByName('HORA').AsTime := Now;
                  IBQauditoria.ParamByName('ID_COLOCACION').AsString := colocacion;
                  IBQauditoria.ParamByName('DESTINO').AsString := number;
                  IBQauditoria.ParamByName('MENSAJE').AsString := msg;
                  IBQauditoria.ParamByName('ESTADO').AsBoolean := True;
                  IBQauditoria.ParamByName('SMSLOG_ID').AsString := smslog_id;
                  IBQauditoria.ParamByName('ID_EMPLEADO').AsString := DBAlias;
                  IBQauditoria.ExecSQL;
                  IBQauditoria.Transaction.Commit;
                  ShowMessage('Mensaje enviado con exito!!!');
                  Result := True
                end
                else
                begin
                    ShowMessage('No se pudo enviar el mensaje, error:'+error_string);
                    Result := False;
                end;
            end;
      end
      else
      begin
              ShowMessage('SMS Error:' + error_string);
              Result := False;
      end;
    except
       on E: Exception do
         begin
          if (ResponseCode = 200) then
                  Result := true
                else
                begin
                    ShowMessage('SMS Error:' + E.Message);
                    Result := false;
                end;
          end;
      end;
      // send message
  finally
    httpClient.Free;
  end;
end;

end.
