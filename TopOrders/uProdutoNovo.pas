unit uProdutoNovo;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls, Vcl.ComCtrls;

type
  TfrProdutoNovo = class(TForm)
    StatusBar1: TStatusBar;
    Panel2: TPanel;
    Button2: TButton;
    Button10: TButton;
    Label1: TLabel;
    Edit1: TEdit;
    Edit2: TEdit;
    Label2: TLabel;
    Edit3: TEdit;
    Label3: TLabel;
    Edit4: TEdit;
    Label4: TLabel;
    procedure Button2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frProdutoNovo: TfrProdutoNovo;

implementation

{$R *.dfm}

procedure TfrProdutoNovo.Button2Click(Sender: TObject);
begin
   Close;
end;

end.
