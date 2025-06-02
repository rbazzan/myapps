unit uMenu;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls,

  //para o MessageDlg tem que adicionar essa uses aqui abaixo;
  System.UITypes;

type
  TfrMenu = class(TForm)
    MemoCardapio: TMemo;
    Panel1: TPanel;
    edNumero: TEdit;
    btAdicionar: TButton;
    MemoPedido: TMemo;
    Panel3: TPanel;
    btFinalizar: TButton;
    Label1: TLabel;
    edQtde: TEdit;
    Label2: TLabel;
    btNovoPedido: TButton;
    btSair: TButton;
    procedure btAdicionarClick(Sender: TObject);
    procedure btFinalizarClick(Sender: TObject);
    procedure btNovoPedidoClick(Sender: TObject);
    procedure btSairClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frMenu: TfrMenu;

implementation

{$R *.dfm}

uses uPedido;

procedure TfrMenu.btAdicionarClick(Sender: TObject);
begin
   if (edNumero.Text <> '') and (edQtde.Text <> '') then begin // verifica se os dois campos estão preenchidos

     //pega a linha que está do lado esquerdo e coloca no memo do lado direito e
     //adiciona o texto com a qtde do lanche ao inicio do texto antes de adicionar.
     MemoPedido.Lines.Add('Qtde: ' + edQtde.Text + ' - ' +  MemoCardapio.Lines[StrToInt(edNumero.Text)-1]);

     edNumero.Clear;
     edQtde.Clear;

   end else begin
     ShowMessage('Informe o número do lanche e a qtde para adicionar!');
     edNumero.SetFocus; //manda o cursor do mouse novamente para o campo nº do lanche.
   end;
end;

procedure TfrMenu.btNovoPedidoClick(Sender: TObject);
begin
  (* quando a gente faz um Messagedlg e coloca os botões, o teste para ver o que a pessao
   digitou é sem com "mr.." não "mb..", os botões são por exemplo MbYes, mas o teste é mrYes ou mrNo.
   *)
  if MessageDlg('Deseja criar um novo pedido',mtInformation,[mbYes, mbNo],0) = mrYes then begin
     MemoPedido.Clear;
     MemoPedido.Lines.Add('Pedido:');
  end;
end;

procedure TfrMenu.btSairClick(Sender: TObject);
begin
   Close;
end;

procedure TfrMenu.btFinalizarClick(Sender: TObject);
begin
   //abre a tela para simular impressão.
   frPedido.MemoPedido.Text := Self.MemoPedido.Text;
   frPedido.ShowModal;

   //Limpa o memo de pedidos
   MemoPedido.Clear;
   MemoPedido.Lines.Add('Pedido:');
end;

end.
