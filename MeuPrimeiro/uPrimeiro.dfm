object frmPrimeiro: TfrmPrimeiro
  Left = 400
  Top = 200
  ActiveControl = edNome
  BorderIcons = [biSystemMenu]
  BorderStyle = bsDialog
  Caption = 'Meu Primeiro Programa'
  ClientHeight = 263
  ClientWidth = 483
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesigned
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 16
    Top = 8
    Width = 99
    Height = 13
    Caption = 'Digite aqui seu nome'
  end
  object Label2: TLabel
    Left = 21
    Top = 88
    Width = 46
    Height = 13
    Caption = 'N'#250'mero 1'
  end
  object Label3: TLabel
    Left = 148
    Top = 88
    Width = 46
    Height = 13
    Caption = 'N'#250'mero 2'
  end
  object Label4: TLabel
    Left = 320
    Top = 88
    Width = 30
    Height = 13
    Caption = 'Senha'
  end
  object edNome: TEdit
    Left = 16
    Top = 27
    Width = 281
    Height = 21
    Cursor = crHourGlass
    CharCase = ecUpperCase
    TabOrder = 0
  end
  object btExecutar: TButton
    Left = 16
    Top = 54
    Width = 75
    Height = 25
    Cursor = crHandPoint
    Caption = 'Clique &aqui!'
    Default = True
    TabOrder = 1
    OnClick = btExecutarClick
  end
  object btLimpar: TButton
    Left = 97
    Top = 54
    Width = 75
    Height = 25
    Cursor = crSQLWait
    Caption = '&Limpar'
    TabOrder = 2
    OnClick = btLimparClick
  end
  object btSair: TButton
    Left = 400
    Top = 230
    Width = 75
    Height = 25
    Hint = 'Clique aqui para fechar o programa!'
    Caption = '&Sair'
    ParentShowHint = False
    ShowHint = True
    TabOrder = 3
    OnClick = btSairClick
  end
  object edN1: TEdit
    Left = 21
    Top = 107
    Width = 121
    Height = 21
    TabOrder = 4
  end
  object edN2: TEdit
    Left = 148
    Top = 107
    Width = 121
    Height = 21
    TabOrder = 5
  end
  object btSomar: TButton
    Left = 21
    Top = 136
    Width = 248
    Height = 25
    Caption = 'Somar'
    TabOrder = 6
    OnClick = btSomarClick
  end
  object btSub: TButton
    Left = 21
    Top = 167
    Width = 248
    Height = 25
    Caption = 'Subtrair'
    TabOrder = 7
    OnClick = btSubClick
  end
  object btMul: TButton
    Left = 21
    Top = 198
    Width = 248
    Height = 25
    Caption = 'Multiplicar'
    TabOrder = 8
    OnClick = btMulClick
  end
  object btDiv: TButton
    Left = 21
    Top = 229
    Width = 248
    Height = 25
    Caption = 'Dividir'
    TabOrder = 9
    OnClick = btDivClick
  end
  object edSenha: TEdit
    Left = 320
    Top = 107
    Width = 121
    Height = 21
    TabOrder = 10
  end
  object btDesabilitar: TButton
    Left = 320
    Top = 134
    Width = 75
    Height = 25
    Caption = 'Desabilitar'
    TabOrder = 11
    OnClick = btDesabilitarClick
  end
end
