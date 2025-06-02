unit uTelaPrincipal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.Imaging.jpeg,
  Vcl.Menus;

type
  TfrTelaPrincipal = class(TForm)
    imgFundo: TImage;
    MainMenu: TMainMenu;
    Arquivo1: TMenuItem;
    NovoPedido1: TMenuItem;
    Sair1: TMenuItem;
    procedure NovoPedido1Click(Sender: TObject);
    procedure Sair1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frTelaPrincipal: TfrTelaPrincipal;

implementation

{$R *.dfm}

uses uMenu, uPedido;

procedure TfrTelaPrincipal.NovoPedido1Click(Sender: TObject);
begin
  frMenu.ShowModal;
end;

procedure TfrTelaPrincipal.Sair1Click(Sender: TObject);
begin
   close;
end;

end.
