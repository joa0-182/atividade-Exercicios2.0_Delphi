object frmPrincipal: TfrmPrincipal
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu, biMinimize]
  BorderStyle = bsSingle
  Caption = 'Lista de Exerc'#237'cios Delphi 2.0'
  ClientHeight = 525
  ClientWidth = 635
  Color = 15132390
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  Menu = MainMenu1
  OldCreateOrder = False
  Position = poDesktopCenter
  OnClose = FormClose
  PixelsPerInch = 96
  TextHeight = 13
  object pnlBotao1: TPanel
    Left = 104
    Top = 190
    Width = 185
    Height = 50
    Cursor = crHandPoint
    ParentCustomHint = False
    BevelOuter = bvNone
    Color = 3947775
    ParentBackground = False
    TabOrder = 0
    object btnIMC: TSpeedButton
      Left = 0
      Top = 0
      Width = 185
      Height = 50
      Align = alClient
      Caption = 'IMC'
      Flat = True
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -19
      Font.Name = 'Segoe UI'
      Font.Style = [fsBold]
      ParentFont = False
      OnClick = btnIMCClick
      ExplicitLeft = 80
      ExplicitTop = 8
      ExplicitWidth = 23
      ExplicitHeight = 22
    end
  end
  object pnlBotao3: TPanel
    Left = 104
    Top = 286
    Width = 185
    Height = 50
    Cursor = crHandPoint
    ParentCustomHint = False
    BevelOuter = bvNone
    Color = 16733011
    ParentBackground = False
    TabOrder = 1
    object btnPn: TSpeedButton
      Left = 0
      Top = 0
      Width = 185
      Height = 50
      Align = alClient
      Caption = 'Positivos e Negativos'
      Flat = True
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -17
      Font.Name = 'Segoe UI'
      Font.Style = [fsBold]
      ParentFont = False
      OnClick = btnPnClick
      ExplicitLeft = 80
      ExplicitTop = 8
      ExplicitWidth = 23
      ExplicitHeight = 22
    end
  end
  object pnlBotao2: TPanel
    Left = 344
    Top = 190
    Width = 185
    Height = 50
    Cursor = crHandPoint
    ParentCustomHint = False
    BevelOuter = bvNone
    Color = 46848
    ParentBackground = False
    TabOrder = 2
    object btnImpar: TSpeedButton
      Left = 0
      Top = 0
      Width = 185
      Height = 50
      Align = alClient
      Caption = 'N'#250'meros '#205'mpares'
      Flat = True
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -19
      Font.Name = 'Segoe UI'
      Font.Style = [fsBold]
      ParentFont = False
      OnClick = btnImparClick
      ExplicitTop = 16
      ExplicitHeight = 41
    end
  end
  object pnlBotao4: TPanel
    Left = 344
    Top = 286
    Width = 185
    Height = 50
    Cursor = crHandPoint
    ParentCustomHint = False
    BevelOuter = bvNone
    Color = 16754492
    ParentBackground = False
    TabOrder = 3
    object btnDados: TSpeedButton
      Left = 0
      Top = 0
      Width = 185
      Height = 50
      Align = alClient
      Caption = 'Dados'
      Flat = True
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -19
      Font.Name = 'Segoe UI'
      Font.Style = [fsBold]
      ParentFont = False
      OnClick = btnDadosClick
      ExplicitLeft = 80
      ExplicitTop = 8
      ExplicitWidth = 23
      ExplicitHeight = 22
    end
  end
  object pnlBottom: TPanel
    Left = 0
    Top = 484
    Width = 635
    Height = 41
    Align = alBottom
    BevelOuter = bvNone
    Caption = 
      'Lista de Exerc'#237'cios 2.0 feita por Jo'#227'o Pedro Maria e Willian Fer' +
      'reira'
    Color = 12189690
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'Segoe UI'
    Font.Style = []
    ParentBackground = False
    ParentFont = False
    TabOrder = 4
  end
  object Panel1: TPanel
    Left = 172
    Top = 48
    Width = 297
    Height = 105
    BevelKind = bkTile
    BevelOuter = bvNone
    Color = clWhite
    ParentBackground = False
    TabOrder = 5
    object Label1: TLabel
      Left = 8
      Top = 11
      Width = 279
      Height = 80
      Alignment = taCenter
      Caption = 'Lista de Exerc'#237'cio  Delphi'
      Color = clWhite
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -35
      Font.Name = 'Arial'
      Font.Style = []
      ParentColor = False
      ParentFont = False
      WordWrap = True
    end
  end
  object pnlBotao5: TPanel
    Left = 224
    Top = 376
    Width = 185
    Height = 50
    BevelOuter = bvNone
    Color = 31993
    ParentBackground = False
    TabOrder = 6
    object btnOrdem: TSpeedButton
      Left = 0
      Top = 0
      Width = 185
      Height = 50
      Cursor = crHandPoint
      Align = alClient
      Caption = 'Ordem Decrecente'
      Flat = True
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -19
      Font.Name = 'Segoe UI'
      Font.Style = [fsBold]
      ParentFont = False
      OnClick = btnOrdemClick
      ExplicitTop = -34
    end
  end
  object MainMenu1: TMainMenu
    Left = 568
    Top = 392
    object GitHubAlunos1: TMenuItem
      Caption = 'Alunos'
      object GitHubAlunos2: TMenuItem
        Caption = 'GitHub (Alunos)'
        OnClick = GitHubAlunos2Click
      end
    end
    object Exerccios1: TMenuItem
      Caption = 'Exerc'#237'cios'
      object CalculoIMC1: TMenuItem
        Caption = 'C'#225'lculo IMC'
        OnClick = CalculoIMC1Click
      end
      object Nmerosmpares1: TMenuItem
        Caption = 'N'#250'meros '#205'mpares'
        OnClick = Nmerosmpares1Click
      end
      object NmerosPositivoseNegativos1: TMenuItem
        Caption = 'N'#250'meros Positivos e Negativos'
        OnClick = NmerosPositivoseNegativos1Click
      end
      object ConversodeDadosdeArmazenamento1: TMenuItem
        Caption = 'Convers'#227'o de Dados de Armazenamento'
        OnClick = ConversodeDadosdeArmazenamento1Click
      end
      object NmerosemOrdemDecrescente1: TMenuItem
        Caption = 'N'#250'meros em Ordem Decrescente'
        OnClick = NmerosemOrdemDecrescente1Click
      end
    end
    object Sair1: TMenuItem
      Caption = 'Sair'
      OnClick = Sair1Click
    end
  end
end
