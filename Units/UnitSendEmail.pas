unit UnitSendEmail;

interface

uses EASendMailObjLib_TLB;

const
  ConnectNormal = 0;
  ConnectSSLAuto = 1;
  ConnectSTARTTLS = 2;
  ConnectDirectSSL = 3;
  ConnectTryTLS = 4;

  function sendEmail(para: String; msg: String): Boolean;

implementation

function sendEmail(para: String; msg: String): Boolean;
var
  oSmtp : TMail;
begin
  oSmtp := TMail.Create(nil);
  oSmtp.LicenseCode := 'TryIt';

  // Your Gmail email address
  oSmtp.FromAddr := 'no-reply@fundacionapoyo.com';
  // Add recipient email address
  oSmtp.AddRecipientEx(para, 0);

  // Set email subject
  oSmtp.Subject := 'Confirmación de Correo Electrónico para la Fundación Apoyo';
  // Set email body
  oSmtp.BodyText := msg;

  // Gmail SMTP server address
  oSmtp.ServerAddr := 'smtp.gmail.com';

  // set direct SSL 465 port,
  oSmtp.ServerPort := 465;

  // detect SSL/TLS automatically
  oSmtp.ConnectType := ConnectSSLAuto;

  // Gmail user authentication should use your
  // Gmail email address as the user name.
  // For example: your email is "gmailid@gmail.com", then the user should be "gmailid@gmail.com"
  oSmtp.UserName := 'no-reply@fundacionapoyo.com';
  oSmtp.Password := '8H6PZCT3XNmytFZq';

  // ShowMessage('start to send email ...');
  if oSmtp.SendMail() = 0 then
    result := true //ShowMessage('email was sent successfully!')
  else
    result := false;
    // ShowMessage('failed to send email with the following error: '
    // + oSmtp.GetLastErrDescription());
end;

end.
