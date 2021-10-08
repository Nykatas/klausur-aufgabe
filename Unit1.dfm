object Form1: TForm1
  Left = 820
  Top = 436
  Caption = 'Klaurur-Aufgabe'
  ClientHeight = 265
  ClientWidth = 408
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
    Left = 32
    Top = 27
    Width = 37
    Height = 13
    Caption = 'Seite a:'
  end
  object Label2: TLabel
    Left = 32
    Top = 67
    Width = 37
    Height = 13
    Caption = 'Seite b:'
  end
  object Label3: TLabel
    Left = 32
    Top = 107
    Width = 36
    Height = 13
    Caption = 'Seite c:'
  end
  object Label4: TLabel
    Left = 32
    Top = 184
    Width = 152
    Height = 13
    Caption = 'Alpha, Beta, Gamma: 0'#176', 0'#176', 0'#176
  end
  object Label5: TLabel
    Left = 32
    Top = 203
    Width = 71
    Height = 13
    Caption = 'Umfang: 0 cm'#178
  end
  object Label6: TLabel
    Left = 32
    Top = 222
    Width = 97
    Height = 13
    Caption = 'Fl'#228'cheninhalt: 0 cm'#179
  end
  object Edit1: TEdit
    Left = 88
    Top = 24
    Width = 289
    Height = 21
    TabOrder = 0
    Text = '0,0'
  end
  object Edit2: TEdit
    Left = 88
    Top = 64
    Width = 289
    Height = 21
    TabOrder = 1
    Text = '0,0'
  end
  object Edit3: TEdit
    Left = 88
    Top = 104
    Width = 289
    Height = 21
    TabOrder = 2
    Text = '0,0'
  end
  object Button1: TButton
    Left = 32
    Top = 144
    Width = 345
    Height = 25
    Caption = 'BERECHNEN'
    TabOrder = 3
    OnClick = Button1Click
  end
end
