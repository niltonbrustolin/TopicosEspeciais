object frmSegundo: TfrmSegundo
  Left = 0
  Top = 0
  Caption = 'frmSegundo'
  ClientHeight = 219
  ClientWidth = 541
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 104
    Top = 8
    Width = 23
    Height = 13
    Caption = 'IFRS'
  end
  object Label2: TLabel
    Left = 224
    Top = 155
    Width = 31
    Height = 13
    Caption = 'Label2'
  end
  object Panel1: TPanel
    Left = 424
    Top = 0
    Width = 117
    Height = 219
    Align = alRight
    Caption = 'Panel1'
    TabOrder = 3
    object Button1: TButton
      Left = 16
      Top = 8
      Width = 75
      Height = 25
      Caption = 'Button1'
      TabOrder = 0
    end
    object btnEsconder: TButton
      Left = 14
      Top = 39
      Width = 75
      Height = 25
      Caption = 'Esconder'
      Enabled = False
      TabOrder = 1
      OnClick = btnEsconderClick
    end
  end
  object btnHabilitar: TButton
    Left = 8
    Top = 8
    Width = 75
    Height = 25
    Caption = 'Habilitar'
    TabOrder = 0
    OnClick = btnHabilitarClick
  end
  object btnNova: TButton
    Left = 8
    Top = 143
    Width = 179
    Height = 25
    Caption = 'Nova Janela'
    TabOrder = 1
    OnClick = btnNovaClick
  end
  object btnNewForm: TBitBtn
    Left = 8
    Top = 174
    Width = 179
    Height = 25
    Caption = 'btnNewForm'
    TabOrder = 2
    OnClick = btnNewFormClick
  end
  object chkNegrito: TCheckBox
    Left = 90
    Top = 69
    Width = 97
    Height = 17
    Caption = 'Negrito'
    TabOrder = 4
    OnClick = chkNegritoClick
  end
  object chkItalico: TCheckBox
    Left = 90
    Top = 92
    Width = 97
    Height = 17
    Caption = 'It'#225'lico'
    TabOrder = 5
    OnClick = chkItalicoClick
  end
  object chkSublinhado: TCheckBox
    Left = 90
    Top = 114
    Width = 97
    Height = 17
    Caption = 'Sublinhado'
    TabOrder = 6
    OnClick = chkSublinhadoClick
  end
  object rbtTimes: TRadioButton
    Left = 202
    Top = 68
    Width = 113
    Height = 17
    Caption = 'Times New Roman'
    TabOrder = 7
    OnClick = rbtTimesClick
  end
  object rbtArial: TRadioButton
    Left = 202
    Top = 91
    Width = 113
    Height = 17
    Caption = 'Arial'
    TabOrder = 8
    OnClick = rbtArialClick
  end
  object rbtComic: TRadioButton
    Left = 202
    Top = 114
    Width = 113
    Height = 17
    Caption = 'Comic Sans MS'
    TabOrder = 9
    OnClick = rbtComicClick
  end
  object rgTam: TRadioGroup
    Left = 336
    Top = 50
    Width = 82
    Height = 59
    Caption = 'rgTam'
    Columns = 2
    Items.Strings = (
      '8'
      '15'
      '20'
      '32')
    TabOrder = 10
    OnClick = rgTamClick
  end
  object Timer1: TTimer
    OnTimer = Timer1Timer
    Left = 368
    Top = 136
  end
  object Timer2: TTimer
    Interval = 5000
    OnTimer = Timer2Timer
    Left = 368
    Top = 184
  end
end
