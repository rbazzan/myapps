object frUsuariosTrocarSenha: TfrUsuariosTrocarSenha
  Left = 0
  Top = 0
  BorderStyle = bsDialog
  Caption = 'Alterar Senha'
  ClientHeight = 221
  ClientWidth = 269
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  PixelsPerInch = 96
  TextHeight = 13
  object Label2: TLabel
    AlignWithMargins = True
    Left = 10
    Top = 120
    Width = 256
    Height = 13
    Margins.Left = 10
    Margins.Top = 10
    Margins.Bottom = 0
    Align = alTop
    Caption = 'Confirmar nova Senha:'
    ExplicitTop = 175
    ExplicitWidth = 111
  end
  object Label3: TLabel
    AlignWithMargins = True
    Left = 10
    Top = 65
    Width = 256
    Height = 13
    Margins.Left = 10
    Margins.Top = 10
    Margins.Bottom = 0
    Align = alTop
    Caption = 'Nova Senha:'
    ExplicitTop = 120
    ExplicitWidth = 62
  end
  object Label4: TLabel
    AlignWithMargins = True
    Left = 10
    Top = 10
    Width = 256
    Height = 13
    Margins.Left = 10
    Margins.Top = 10
    Margins.Bottom = 0
    Align = alTop
    Caption = 'Senha Atual:'
    ExplicitTop = 65
    ExplicitWidth = 62
  end
  object Panel2: TPanel
    Left = 0
    Top = 171
    Width = 269
    Height = 50
    Align = alBottom
    BevelOuter = bvNone
    TabOrder = 0
    ExplicitTop = 249
    ExplicitWidth = 580
    object btFechar: TButton
      AlignWithMargins = True
      Left = 181
      Top = 1
      Width = 85
      Height = 47
      Margins.Left = 1
      Margins.Top = 1
      Margins.Bottom = 2
      Align = alRight
      Caption = 'Fechar'
      TabOrder = 0
      OnClick = btFecharClick
      ExplicitLeft = 231
    end
    object btGravar: TButton
      AlignWithMargins = True
      Left = 94
      Top = 1
      Width = 85
      Height = 47
      Margins.Left = 1
      Margins.Top = 1
      Margins.Right = 1
      Margins.Bottom = 2
      Align = alRight
      Caption = 'Gravar'
      TabOrder = 1
      OnClick = btGravarClick
      ExplicitLeft = 144
    end
  end
  object Edit1: TEdit
    AlignWithMargins = True
    Left = 10
    Top = 81
    Width = 256
    Height = 26
    Margins.Left = 10
    Align = alTop
    TabOrder = 1
    ExplicitTop = 136
    ExplicitWidth = 622
  end
  object Edit2: TEdit
    AlignWithMargins = True
    Left = 10
    Top = 136
    Width = 256
    Height = 26
    Margins.Left = 10
    Align = alTop
    TabOrder = 2
    ExplicitTop = 191
    ExplicitWidth = 622
  end
  object Edit4: TEdit
    AlignWithMargins = True
    Left = 10
    Top = 26
    Width = 256
    Height = 26
    Margins.Left = 10
    Align = alTop
    TabOrder = 3
    ExplicitTop = 81
    ExplicitWidth = 622
  end
end
