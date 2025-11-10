object Form2: TForm2
  Left = 0
  Top = 0
  Caption = 'Form2'
  ClientHeight = 441
  ClientWidth = 624
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  TextHeight = 15
  object lbResultado: TLabel
    Left = 480
    Top = 43
    Width = 121
    Height = 38
    Caption = 'Result'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = 25
    Font.Name = 'Segoe UI'
    Font.Style = []
    ParentFont = False
  end
  object edtValor1: TEdit
    Left = 112
    Top = 40
    Width = 161
    Height = 49
    TabOrder = 0
    Text = 'N'#186'1'
  end
  object edtValor2: TEdit
    Left = 288
    Top = 40
    Width = 161
    Height = 49
    TabOrder = 1
    Text = 'N'#186'2'
  end
  object btnSomar: TButton
    Left = 112
    Top = 128
    Width = 89
    Height = 129
    Caption = '+'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = 50
    Font.Name = 'Segoe UI'
    Font.Style = []
    ParentFont = False
    TabOrder = 2
    OnClick = btnSomarClick
  end
  object btnSubtrair: TButton
    Left = 224
    Top = 128
    Width = 89
    Height = 129
    Caption = '-'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = 50
    Font.Name = 'Segoe UI'
    Font.Style = []
    ParentFont = False
    TabOrder = 3
    OnClick = btnSubtrairClick
  end
  object btnMultiplicar: TButton
    Left = 336
    Top = 128
    Width = 89
    Height = 129
    Caption = 'X'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = 30
    Font.Name = 'Segoe UI'
    Font.Style = []
    ParentFont = False
    TabOrder = 4
    OnClick = btnMultiplicarClick
  end
  object btnDividir: TButton
    Left = 112
    Top = 272
    Width = 145
    Height = 89
    Caption = '/'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = 30
    Font.Name = 'Segoe UI'
    Font.Style = []
    ParentFont = False
    TabOrder = 5
    OnClick = btnDividirClick
  end
  object btnLimpar: TButton
    Left = 280
    Top = 272
    Width = 145
    Height = 89
    Caption = 'Clear'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = 25
    Font.Name = 'Segoe UI'
    Font.Style = []
    ParentFont = False
    TabOrder = 6
    OnClick = btnLimparClick
  end
end
