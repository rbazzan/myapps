unit uAbriArquivoTextoRtf;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ComCtrls, Vcl.StdCtrls, Vcl.ExtCtrls;

type
  TfrEditorRTF = class(TForm)
    Panel2: TPanel;
    btSair: TButton;
    pnlFundo: TPanel;
    PageControl1: TPageControl;
    tbs01: TTabSheet;
    Arquivo02: TTabSheet;
    Arquivo03: TTabSheet;
    re01: TRichEdit;
    re02: TRichEdit;
    re03: TRichEdit;
    Button1: TButton;
    OpenDialog: TOpenDialog;
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frEditorRTF: TfrEditorRTF;

implementation

{$R *.dfm}

procedure TfrEditorRTF.Button1Click(Sender: TObject);
begin
   if OpenDialog.Execute() then begin
      if Trim(re01.Text) = 'Nenhum arquivo carregado nessa aba ainda!' then begin
         re01.Lines.LoadFromFile(OpenDialog.FileName);
      end else
      if Trim(re02.Text) = 'Nenhum arquivo carregado nessa aba ainda!' then begin
         re02.Lines.LoadFromFile(OpenDialog.FileName);
      end else
      if Trim(re03.Text) = 'Nenhum arquivo carregado nessa aba ainda!' then begin
         re03.Lines.LoadFromFile(OpenDialog.FileName);
      end else begin
        ShowMessage('N�o consigo mais abrir arquivos!');
      end;
   end;
end;

end.
