unit uPedidoNovo;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls, Vcl.ComCtrls,
  Data.DB, Vcl.Grids, Vcl.DBGrids, Vcl.DBCtrls;

type
  TfrPedidoNovo = class(TForm)
    Panel2: TPanel;
    btFechar: TButton;
    btGravar: TButton;
    Panel3: TPanel;
    Panel4: TPanel;
    Label2: TLabel;
    edIDPEdido: TEdit;
    Panel5: TPanel;
    Label5: TLabel;
    dtpDataPedido: TDateTimePicker;
    Panel6: TPanel;
    Label6: TLabel;
    DBGrid: TDBGrid;
    dblClientes: TDBLookupComboBox;
    btExcluir: TButton;
    btEditar: TButton;
    btAdicionar: TButton;
    procedure btAdicionarClick(Sender: TObject);
    procedure btFecharClick(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure btExcluirClick(Sender: TObject);
    procedure btEditarClick(Sender: TObject);
    procedure btGravarClick(Sender: TObject);
  private
    { Private declarations }
    FCodigoPedido: Integer;
    function Gravar(): Boolean;
    function Validar(): Boolean;

    procedure SetCodigoPedido(const Value: Integer);

  public
    { Public declarations }
    property CodigoPedido: Integer read FCodigoPedido write SetCodigoPedido;
  end;

var
  frPedidoNovo: TfrPedidoNovo;

implementation

{$R *.dfm}

uses uPedidosAddProduto, uAppMessage, uController;

procedure TfrPedidoNovo.btEditarClick(Sender: TObject);
begin
   try
      frPedidosAddProduto := TfrPedidosAddProduto.Create(Self);
      frPedidosAddProduto.CodigoProduto := 0;
      frPedidosAddProduto.ShowModal;
   finally
      FreeAndNil(frPedidosAddProduto);
   end;
end;

procedure TfrPedidoNovo.btFecharClick(Sender: TObject);
begin
   Close;
end;

procedure TfrPedidoNovo.btGravarClick(Sender: TObject);
begin
   if Gravar () then begin
      AppMsgOK('Dados gravados com sucesso!');
      ModalResult := mrOK;
   end;
end;

procedure TfrPedidoNovo.btAdicionarClick(Sender: TObject);
begin
   try
      frPedidosAddProduto := TfrPedidosAddProduto.Create(Self);
      frPedidosAddProduto.CodigoProduto := 0;
      frPedidosAddProduto.ShowModal;
   finally
      FreeAndNil(frPedidosAddProduto);
   end;
end;

procedure TfrPedidoNovo.btExcluirClick(Sender: TObject);
begin
   if AppMsgYesNo('Deseja Excluir?') then begin

   end;
end;

procedure TfrPedidoNovo.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = VK_ESCAPE then close;
end;

function TfrPedidoNovo.Gravar(): Boolean;
begin
   if Validar() then begin
     Result := True;
   end else begin
     Result := False;
   end;
end;

procedure TfrPedidoNovo.SetCodigoPedido(const Value: Integer);
begin
  FCodigoPedido := Value;
end;

function TfrPedidoNovo.Validar(): Boolean;
begin
   Result := True;
end;

end.
