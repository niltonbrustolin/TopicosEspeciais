object frmModulo: TfrmModulo
  Left = 0
  Top = 0
  ActiveControl = PageControl1
  Caption = 'Verifica o m'#243'dulo de um n'#250'mero'
  ClientHeight = 354
  ClientWidth = 664
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object PageControl1: TPageControl
    Left = 0
    Top = 0
    Width = 664
    Height = 354
    ActivePage = TabSheet6
    Align = alClient
    TabOrder = 0
    object TabSheet1: TTabSheet
      Caption = 'Ex. M'#243'dulo'
      object Label1: TLabel
        Left = 24
        Top = 16
        Width = 87
        Height = 13
        Caption = 'Digite um n'#250'mero:'
      end
      object lbRes: TLabel
        Left = 128
        Top = 88
        Width = 3
        Height = 13
      end
      object edNum: TEdit
        Left = 24
        Top = 35
        Width = 121
        Height = 21
        NumbersOnly = True
        TabOrder = 0
      end
      object btVerificar: TButton
        Left = 151
        Top = 33
        Width = 75
        Height = 25
        Caption = 'Verificar'
        Default = True
        TabOrder = 1
        OnClick = btVerificarClick
      end
    end
    object TabSheet2: TTabSheet
      Caption = 'Ex. Quartel'
      ImageIndex = 1
      object Idade: TLabel
        Left = 24
        Top = 32
        Width = 28
        Height = 13
        Caption = 'Idade'
      end
      object lbResQuartel: TLabel
        Left = 269
        Top = 29
        Width = 3
        Height = 13
      end
      object edIdade: TEdit
        Left = 61
        Top = 29
        Width = 121
        Height = 21
        NumbersOnly = True
        TabOrder = 0
      end
      object btQuartel: TButton
        Left = 188
        Top = 29
        Width = 75
        Height = 68
        Caption = 'Quartel?'
        TabOrder = 1
        OnClick = btQuartelClick
      end
      object rgSexo: TRadioGroup
        Left = 24
        Top = 56
        Width = 158
        Height = 41
        Caption = 'Sexo'
        Columns = 2
        Items.Strings = (
          'Feminino'
          'Masculino')
        TabOrder = 2
      end
    end
    object TabSheet3: TTabSheet
      Caption = 'Teste do While'
      ImageIndex = 2
      object Label2: TLabel
        Left = 3
        Top = 21
        Width = 83
        Height = 13
        Caption = 'Digite um n'#250'mero'
      end
      object edQtd: TEdit
        Left = 88
        Top = 13
        Width = 121
        Height = 21
        NumbersOnly = True
        TabOrder = 0
      end
      object btWhile: TButton
        Left = 215
        Top = 11
        Width = 75
        Height = 25
        Caption = 'While'
        TabOrder = 1
        OnClick = btWhileClick
      end
      object lstLista: TListBox
        Left = 88
        Top = 40
        Width = 121
        Height = 97
        ItemHeight = 13
        TabOrder = 2
      end
    end
    object TabSheet4: TTabSheet
      Caption = 'TabSheet4'
      ImageIndex = 3
      object ListBox1: TListBox
        Left = 68
        Top = 31
        Width = 121
        Height = 97
        ItemHeight = 13
        TabOrder = 0
      end
      object Button1: TButton
        Left = 68
        Top = 3
        Width = 75
        Height = 25
        Caption = 'Button1'
        TabOrder = 1
        OnClick = Button1Click
      end
    end
    object TabSheet5: TTabSheet
      Caption = 'Campo minado'
      ImageIndex = 4
      object btCriaSB: TButton
        Left = 3
        Top = 3
        Width = 134
        Height = 25
        Caption = 'Criar Speedbuttons'
        TabOrder = 0
        OnClick = btCriaSBClick
      end
    end
    object TabSheet6: TTabSheet
      Caption = 'TabSheet6'
      ImageIndex = 5
      object Label3: TLabel
        Left = 59
        Top = 24
        Width = 21
        Height = 13
        Caption = 'FOR'
      end
      object Label4: TLabel
        Left = 186
        Top = 24
        Width = 38
        Height = 13
        Caption = 'REPEAT'
      end
      object Label5: TLabel
        Left = 313
        Top = 24
        Width = 32
        Height = 13
        Caption = 'WHILE'
      end
      object Label6: TLabel
        Left = 440
        Top = 24
        Width = 20
        Height = 13
        Caption = '????'
      end
      object btParImpar: TButton
        Left = 59
        Top = 48
        Width = 121
        Height = 25
        Caption = 'Pares e '#205'mpares'
        TabOrder = 0
      end
      object lstParImpar: TListBox
        Left = 59
        Top = 79
        Width = 121
        Height = 146
        ItemHeight = 13
        Items.Strings = (
          '1 - '#237'mpar'
          '2 - par'
          '3 - '#237'mpar'
          '...'
          '10- par')
        TabOrder = 1
      end
      object btPrimo: TButton
        Left = 186
        Top = 48
        Width = 121
        Height = 25
        Caption = 'Primo'
        TabOrder = 2
      end
      object lstPrimo: TListBox
        Left = 186
        Top = 79
        Width = 121
        Height = 146
        ItemHeight = 13
        Items.Strings = (
          '1 - '#233' primo'
          '2 - '#233' primo'
          '3 - '#233' primo'
          '4 - n'#227'o '#233' primo'
          '...'
          '10 - n'#227'o '#233' primo')
        TabOrder = 3
      end
      object btFatorial: TButton
        Left = 313
        Top = 48
        Width = 121
        Height = 25
        Caption = 'Fatorial'
        TabOrder = 4
      end
      object lstFat: TListBox
        Left = 313
        Top = 79
        Width = 121
        Height = 146
        ItemHeight = 13
        Items.Strings = (
          '1! - 1'
          '2! - 2'
          '3! - 6'
          '...'
          '10! = 3628800')
        TabOrder = 5
      end
      object btFibo: TButton
        Left = 440
        Top = 48
        Width = 121
        Height = 25
        Caption = 'Fibonacci'
        TabOrder = 6
      end
      object lstFibo: TListBox
        Left = 440
        Top = 79
        Width = 121
        Height = 146
        ItemHeight = 13
        Items.Strings = (
          '0'
          '1'
          '1'
          '2'
          '3'
          '5'
          '8'
          '13'
          '21'
          '34')
        TabOrder = 7
      end
    end
  end
end
