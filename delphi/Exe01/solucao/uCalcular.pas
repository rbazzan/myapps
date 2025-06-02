unit uCalcular;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls;

type
  TfrCalcular = class(TForm)
    pnlFundo: TPanel;
    Label1: TLabel;
    edNumero01: TEdit;
    Label2: TLabel;
    edNumero02: TEdit;
    pnlFootter: TPanel;
    btSair: TButton;
    btCalcule: TButton;
    procedure btSairClick(Sender: TObject);
    procedure btCalculeClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frCalcular: TfrCalcular;

implementation

{$R *.dfm}

procedure TfrCalcular.btCalculeClick(Sender: TObject);
begin
   {deixei a identa��o assim para voc� perceber as convers�es mais
    facilmente }
   ShowMessage(
        IntToStr(
                  StrToInt(edNumero01.Text) +  StrToInt(edNumero02.Text)
                )
              );
end;

procedure TfrCalcular.btSairClick(Sender: TObject);
begin
  Close;
end;

end.
