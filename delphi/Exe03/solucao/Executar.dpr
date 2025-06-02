program Executar;

uses
  Vcl.Forms,
  uExecutar in 'uExecutar.pas' {frExecutar};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TfrExecutar, frExecutar);
  Application.Run;
end.
