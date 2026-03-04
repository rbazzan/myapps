unit uProdutos;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.ExtCtrls, Vcl.StdCtrls,
  Vcl.Grids, Vcl.DBGrids, Vcl.ComCtrls;

type
  //View ◄-► Controller
  TfrProdutos = class(TForm)
    Panel1: TPanel;
    Label3: TLabel;
    edPesquisa: TEdit;
    Button1: TButton;
    DBGrid1: TDBGrid;
    Panel2: TPanel;
    btFechar: TButton;
    GroupBox1: TGroupBox;
    Shape1: TShape;
    Label4: TLabel;
    Shape2: TShape;
    Label5: TLabel;
    btImprimir: TButton;
    btNovo: TButton;
    btEditar: TButton;
    bExcluir: TButton;
    procedure btFecharClick(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure btNovoClick(Sender: TObject);
    procedure bExcluirClick(Sender: TObject);
    procedure btEditarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frProdutos: TfrProdutos;

implementation

{$R *.dfm}

uses uProdutoNovo, uAppMessage, uController;

procedure TfrProdutos.bExcluirClick(Sender: TObject);
begin
   if AppMsgYesNo('Deseja excluir?') then begin

   end;
end;

procedure TfrProdutos.btEditarClick(Sender: TObject);
begin
  try
    frProdutoNovo := TfrProdutoNovo.Create(Self);
    frProdutoNovo.CodigoProduto := 0;
    frProdutoNovo.ShowModal;
  finally
     FreeAndNil(frProdutoNovo);
  end;
end;

procedure TfrProdutos.btFecharClick(Sender: TObject);
begin
   Close;
end;

procedure TfrProdutos.btNovoClick(Sender: TObject);
begin
  try
    frProdutoNovo := TfrProdutoNovo.Create(Self);
    frProdutoNovo.CodigoProduto := 0;
    frProdutoNovo.ShowModal;
  finally
     FreeAndNil(frProdutoNovo);
  end;
end;

procedure TfrProdutos.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
   if Key = VK_ESCAPE then close;
end;

end.
