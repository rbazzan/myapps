program AbriArquivoTextoRtf;

uses
  Vcl.Forms,
  uAbriArquivoTextoRtf in 'uAbriArquivoTextoRtf.pas' {frEditorRTF};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TfrEditorRTF, frEditorRTF);
  Application.Run;
end.
