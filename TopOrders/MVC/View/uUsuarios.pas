unit uUsuarios;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.ExtCtrls, Vcl.StdCtrls,
  Vcl.Grids, Vcl.DBGrids, Vcl.ComCtrls;

type
  TfrUsuarios = class(TForm)
    Panel1: TPanel;
    Label3: TLabel;
    edPesquisa: TEdit;
    btCarregar: TButton;
    StatusBar1: TStatusBar;
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
    btExcluir: TButton;
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure btFecharClick(Sender: TObject);
    procedure btNovoClick(Sender: TObject);
    procedure btEditarClick(Sender: TObject);
    procedure btExcluirClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frUsuarios: TfrUsuarios;

implementation

{$R *.dfm}

uses uUsuarioNovo, uAppMessage;

procedure TfrUsuarios.btEditarClick(Sender: TObject);
begin
  try
     frUsuarioNovo := TfrUsuarioNovo.Create(Self);
     frUsuarioNovo.CodigoUsuario := 0;
     frUsuarioNovo.ShowModal;
  finally
     FreeAndNil(frUsuarioNovo);
  end;
end;

procedure TfrUsuarios.btExcluirClick(Sender: TObject);
begin
   if AppMsgYesNo('Deseja excluir?') then begin

   end;
end;

procedure TfrUsuarios.btFecharClick(Sender: TObject);
begin
   Close;
end;

procedure TfrUsuarios.btNovoClick(Sender: TObject);
begin
  try
     frUsuarioNovo := TfrUsuarioNovo.Create(Self);
     frUsuarioNovo.CodigoUsuario := 0;
     frUsuarioNovo.ShowModal;
  finally
     FreeAndNil(frUsuarioNovo);
  end;
end;

procedure TfrUsuarios.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
   if Key = VK_ESCAPE then close;
end;

end.
