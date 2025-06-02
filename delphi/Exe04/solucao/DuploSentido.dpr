program DuploSentido;

uses
  Vcl.Forms,
  uTermos in 'uTermos.pas' {frTermos};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TfrTermos, frTermos);
  Application.Run;
end.
