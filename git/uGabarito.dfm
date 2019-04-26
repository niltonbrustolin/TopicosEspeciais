object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Gabarito EAD 01'
  ClientHeight = 459
  ClientWidth = 677
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
    Width = 677
    Height = 459
    ActivePage = tsExer01
    Align = alClient
    TabOrder = 0
    object tsExer01: TTabSheet
      Caption = 'Exer01'
      object Label1: TLabel
        Left = 319
        Top = 101
        Width = 79
        Height = 13
        Caption = 'Elementos Pares'
      end
      object Label2: TLabel
        Left = 319
        Top = 199
        Width = 91
        Height = 13
        Caption = 'Elementos '#205'mpares'
      end
      object Label3: TLabel
        Left = 319
        Top = 293
        Width = 119
        Height = 13
        Caption = 'Elementos N'#227'o repetidos'
      end
      object Memo1: TMemo
        Left = 0
        Top = 0
        Width = 669
        Height = 49
        Align = alTop
        Lines.Strings = (
          
            'Desenvolva um programa em Delphi que gere randomicamente uma mat' +
            'riz 10x9 de n'#250'meros inteiros. A seguir crie dois vetores: um '
          
            'contendo os elementos pares da matriz e o outro contendo os '#237'mpa' +
            'res de forma ordenada decrescente. Crie, tamb'#233'm, um terceiro vet' +
            'or '
          'contendo apenas os valores n'#227'o repetidos da matriz.')
        ReadOnly = True
        TabOrder = 0
      end
      object sgMat: TStringGrid
        Left = 32
        Top = 96
        Width = 281
        Height = 289
        ColCount = 10
        DefaultColWidth = 24
        RowCount = 11
        TabOrder = 1
      end
      object btGeraMat: TButton
        Left = 32
        Top = 65
        Width = 281
        Height = 25
        Caption = 'Gera Matriz'
        TabOrder = 2
        OnClick = btGeraMatClick
      end
      object sgPares: TStringGrid
        Left = 319
        Top = 120
        Width = 320
        Height = 73
        ColCount = 90
        DefaultColWidth = 24
        RowCount = 2
        TabOrder = 3
      end
      object sgImpares: TStringGrid
        Left = 319
        Top = 215
        Width = 320
        Height = 73
        ColCount = 90
        DefaultColWidth = 24
        RowCount = 2
        TabOrder = 4
      end
      object sgNaoRep: TStringGrid
        Left = 319
        Top = 312
        Width = 320
        Height = 73
        ColCount = 90
        DefaultColWidth = 24
        RowCount = 2
        TabOrder = 5
      end
      object btFazTudo: TButton
        Left = 319
        Top = 65
        Width = 320
        Height = 25
        Caption = 'Pares / '#205'mpares / N'#227'o Repetidos'
        TabOrder = 6
        OnClick = btFazTudoClick
      end
    end
    object tsExer02: TTabSheet
      Caption = 'Exer02'
      ImageIndex = 1
      object Label4: TLabel
        Left = 24
        Top = 144
        Width = 102
        Height = 13
        Caption = 'Qtd. Termos da S'#233'rie'
      end
      object Memo2: TMemo
        Left = 0
        Top = 0
        Width = 669
        Height = 113
        Align = alTop
        Lines.Strings = (
          
            'Crie um programa em Delphi que mostre o resultado da soma dos N ' +
            'primeiros termos da s'#233'rie abaixo:'
          
            '                          S = 1/np1 + np2/2 + 3/np3 + np4/4 + ..' +
            '.'
          ''
          'Sendo np um n'#250'mero semi-perfeito.'
          ''
          
            'Diz-se que um n'#250'mero '#233' semi-perfeito quando possui a mesma quant' +
            'idade de divisores pares e '#237'mpares.'
          
            'Para resolver esse programa voc'#234' deve obrigatoriamente utilizar ' +
            'procedimento(s) e/ou fun'#231#227'o('#245'es).'
          ''
          
            'Um procedimento ou fun'#231#227'o que receba um n'#250'mero e verifica se o m' +
            'esmo '#233' semi-perfeito.'
          ''
          
            'Outro, procedimento ou fun'#231#227'o, que recebe um n'#250'mero e verifica s' +
            'e o mesmo '#233' par ou '#237'mpar (True-Par False-Impar).'
          ''
          
            'E um terceiro, procedimento ou fun'#231#227'o, que mostra os termos da s' +
            #233'rie com os N primeiros termos semi-perfeitos e o resultado da s' +
            'oma dos termos.')
        ReadOnly = True
        ScrollBars = ssBoth
        TabOrder = 0
      end
      object edQtdTermos: TEdit
        Left = 24
        Top = 160
        Width = 121
        Height = 21
        TabOrder = 1
      end
      object lstSemi: TListBox
        Left = 192
        Top = 144
        Width = 121
        Height = 193
        ItemHeight = 13
        TabOrder = 2
      end
      object btSerie: TButton
        Left = 24
        Top = 187
        Width = 121
        Height = 25
        Caption = 'Soma da s'#233'rie'
        TabOrder = 3
        OnClick = btSerieClick
      end
      object lstDiv: TListBox
        Left = 328
        Top = 144
        Width = 313
        Height = 284
        ItemHeight = 13
        TabOrder = 4
      end
    end
  end
end
