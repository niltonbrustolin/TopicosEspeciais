object frmExerStrings: TfrmExerStrings
  Left = 0
  Top = 0
  Caption = 'Exerc'#237'cios com Strings'
  ClientHeight = 201
  ClientWidth = 418
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object lbEx2: TLabel
    Left = 264
    Top = 56
    Width = 26
    Height = 13
    Caption = 'lbEx2'
  end
  object edEx1: TEdit
    Left = 16
    Top = 24
    Width = 121
    Height = 21
    TabOrder = 0
  end
  object btTroca2apor3a: TButton
    Left = 143
    Top = 22
    Width = 98
    Height = 25
    Caption = 'Troca 2'#170' pela 3'#170
    TabOrder = 1
    OnClick = btTroca2apor3aClick
  end
  object btTrocaEspaco: TButton
    Left = 143
    Top = 53
    Width = 98
    Height = 25
    Caption = 'Troca Espa'#231'o por !'
    TabOrder = 2
    OnClick = btTrocaEspacoClick
  end
end
