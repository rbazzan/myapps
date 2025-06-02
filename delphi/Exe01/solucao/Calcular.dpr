program Calcular;

uses
  Vcl.Forms,
  uCalcular in 'uCalcular.pas' {frCalcular},
  Vcl.Themes,
  Vcl.Styles;

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  TStyleManager.TrySetStyle('Glow');
  Application.CreateForm(TfrCalcular, frCalcular);
  Application.Run;
end.
