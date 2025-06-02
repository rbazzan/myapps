program Lanchonete;

uses
  Vcl.Forms,
  uTelaPrincipal in 'uTelaPrincipal.pas' {frTelaPrincipal},
  uMenu in 'uMenu.pas' {frMenu},
  uPedido in 'uPedido.pas' {frPedido},
  Vcl.Themes,
  Vcl.Styles;

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  TStyleManager.TrySetStyle('Glow');
  Application.CreateForm(TfrTelaPrincipal, frTelaPrincipal);
  Application.CreateForm(TfrMenu, frMenu);
  Application.CreateForm(TfrPedido, frPedido);
  Application.Run;
end.
