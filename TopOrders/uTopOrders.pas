unit uTopOrders;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Menus;

type
  TfrTopOrders = class(TForm)
    MainMenu: TMainMenu;
    Arquivo1: TMenuItem;
    subMenuPedidos: TMenuItem;
    Configuraes1: TMenuItem;
    Ajuda1: TMenuItem;
    Sobre1: TMenuItem;
    subMenuProdutos: TMenuItem;
    subMenuSeguranca: TMenuItem;
    subMenuConexoes: TMenuItem;
    subMenuUsuarios: TMenuItem;
    subMenuTrocarSenha: TMenuItem;
    procedure subMenuPedidosClick(Sender: TObject);
    procedure subMenuProdutosClick(Sender: TObject);
    procedure subMenuUsuariosClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frTopOrders: TfrTopOrders;

implementation

{$R *.dfm}

uses uPedidos, uProdutos, uUsuarios;

procedure TfrTopOrders.subMenuPedidosClick(Sender: TObject);
begin
   try
     frPedidos := TfrPedidos.Create(Self);
     frPedidos.ShowModal;
   finally
      FreeAndNil(frPedidos)
   end;
end;

procedure TfrTopOrders.subMenuProdutosClick(Sender: TObject);
begin
   try
     frProdutos := TfrProdutos.Create(Self);
     frProdutos.ShowModal;
   finally
      FreeAndNil(frProdutos)
   end;
end;

procedure TfrTopOrders.subMenuUsuariosClick(Sender: TObject);
begin
   try
     frUsuarios := TfrUsuarios.Create(Self);
     frUsuarios.ShowModal;
   finally
      FreeAndNil(frUsuarios)
   end;
end;

end.
