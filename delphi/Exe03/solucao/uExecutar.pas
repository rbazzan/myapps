unit uExecutar;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls;

type
  TfrExecutar = class(TForm)
    pnlSair: TPanel;
    btSair: TButton;
    pnlFundo: TPanel;
    Memo: TMemo;
    pnlTop: TPanel;
    cbOpcoes: TComboBox;
    Label1: TLabel;
    btExecutar: TButton;
    rbMensagem: TRadioButton;
    rbMemo: TRadioButton;
    procedure btSairClick(Sender: TObject);
    procedure btExecutarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frExecutar: TfrExecutar;

implementation

{$R *.dfm}

procedure TfrExecutar.btExecutarClick(Sender: TObject);
begin
   if cbOpcoes.Text <> '' then begin

      if (rbMensagem.Checked or rbMemo.Checked) then begin
         if rbMensagem.Checked then begin
            ShowMessage(cbOpcoes.Text);
         end else
         if rbMemo.Checked then begin
            Memo.Lines.Add(cbOpcoes.Text);
         end;

        { *** outraa maneira de escrever ***********

           if rbMensagem.Checked then begin

           end else begin

           end;

        ********************************************}

      end else begin
        ShowMessage('Você precisa dizer se é pra eu escrever no memo ou mostrar uma mensagem');
      end;

   end else begin
      ShowMessage('Você precisa escolher um texto a exibir');
   end;
end;

procedure TfrExecutar.btSairClick(Sender: TObject);
begin
   Close;
end;

end.
