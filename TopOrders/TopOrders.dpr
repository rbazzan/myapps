program TopOrders;

uses
  Vcl.Forms,
  Vcl.Themes,
  Vcl.Styles,
  uConfiguracoes in 'MVC\View\uConfiguracoes.pas' {frConfiguracoes},
  uLogin in 'MVC\View\uLogin.pas' {frLogin},
  uPedidoNovo in 'MVC\View\uPedidoNovo.pas' {frPedidoNovo},
  uPedidos in 'MVC\View\uPedidos.pas' {frPedidos},
  uPedidosAddProduto in 'MVC\View\uPedidosAddProduto.pas' {frPedidosAddProduto},
  uProdutoNovo in 'MVC\View\uProdutoNovo.pas' {frProdutoNovo},
  uProdutos in 'MVC\View\uProdutos.pas' {frProdutos},
  uSobre in 'MVC\View\uSobre.pas' {frSobre},
  uTopOrders in 'MVC\View\uTopOrders.pas' {frTopOrders},
  uUsuarioNovo in 'MVC\View\uUsuarioNovo.pas' {frUsuarioNovo},
  uUsuarios in 'MVC\View\uUsuarios.pas' {frUsuarios},
  uUsuariosTrocarSenha in 'MVC\View\uUsuariosTrocarSenha.pas' {frUsuariosTrocarSenha},
  uModel in 'MVC\Model\uModel.pas' {Modelo: TDataModule},
  uAppMessage in 'MVC\Control\uAppMessage.pas',
  uController in 'MVC\Control\uController.pas',
  uConversor in 'MVC\Model\uConversor.pas',
  uProduto in 'MVC\Model\Produto\uProduto.pas',
  uEndpoints in 'MVC\Model\uEndpoints.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TfrLogin, frLogin);
  Application.CreateForm(TfrTopOrders, frTopOrders);
  TStyleManager.TrySetStyle('Carbon');
  Application.Run;
end.
