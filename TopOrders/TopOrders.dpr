program TopOrders;

uses
  Vcl.Forms,
  uTopOrders in 'uTopOrders.pas' {frTopOrders},
  uPedidos in 'uPedidos.pas' {frPedidos},
  uProdutos in 'uProdutos.pas' {frProdutos},
  uUsuarios in 'uUsuarios.pas' {frUsuarios},
  uProdutoNovo in 'uProdutoNovo.pas' {frProdutoNovo};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TfrTopOrders, frTopOrders);
  Application.CreateForm(TfrPedidos, frPedidos);
  Application.CreateForm(TfrProdutos, frProdutos);
  Application.CreateForm(TfrUsuarios, frUsuarios);
  Application.CreateForm(TfrProdutoNovo, frProdutoNovo);
  Application.Run;
end.
