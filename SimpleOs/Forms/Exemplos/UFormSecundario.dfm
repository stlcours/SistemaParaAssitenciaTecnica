object Form2: TForm2
  Left = 0
  Top = 0
  Caption = 'Form2'
  ClientHeight = 482
  ClientWidth = 700
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 48
    Top = 258
    Width = 33
    Height = 13
    Caption = 'C'#243'digo'
  end
  object Label2: TLabel
    Left = 184
    Top = 258
    Width = 29
    Height = 13
    Caption = 'Grupo'
  end
  object DBGrid1: TDBGrid
    Left = 8
    Top = 8
    Width = 497
    Height = 244
    DataSource = DataSource1
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    OnTitleClick = DBGrid1TitleClick
  end
  object Abrir: TButton
    Left = 511
    Top = 8
    Width = 75
    Height = 25
    Caption = 'Abrir'
    TabOrder = 1
    OnClick = AbrirClick
  end
  object Button1: TButton
    Left = 511
    Top = 39
    Width = 75
    Height = 25
    Caption = 'Inserir'
    TabOrder = 2
    OnClick = Button1Click
  end
  object Button2: TButton
    Left = 511
    Top = 70
    Width = 75
    Height = 25
    Caption = 'Gravar'
    TabOrder = 3
    OnClick = Button2Click
  end
  object Button3: TButton
    Left = 511
    Top = 134
    Width = 75
    Height = 25
    Caption = 'Excluir'
    TabOrder = 4
    OnClick = Button3Click
  end
  object Button4: TButton
    Left = 511
    Top = 165
    Width = 75
    Height = 25
    Caption = 'Cancelar'
    TabOrder = 5
    OnClick = Button4Click
  end
  object Button5: TButton
    Left = 511
    Top = 101
    Width = 75
    Height = 25
    Caption = 'Editar'
    TabOrder = 6
    OnClick = Button5Click
  end
  object edtCodigo: TEdit
    Left = 48
    Top = 277
    Width = 121
    Height = 21
    TabOrder = 7
  end
  object edtGrupo: TEdit
    Left = 184
    Top = 277
    Width = 217
    Height = 21
    TabOrder = 8
  end
  object Button6: TButton
    Left = 511
    Top = 196
    Width = 75
    Height = 25
    Caption = 'Fechar tabela'
    TabOrder = 9
    OnClick = Button6Click
  end
  object Button7: TButton
    Left = 326
    Top = 304
    Width = 75
    Height = 25
    Caption = 'Button7'
    TabOrder = 10
    OnClick = Button7Click
  end
  object DBGrid2: TDBGrid
    Left = 8
    Top = 335
    Width = 473
    Height = 120
    DataSource = DataSource2
    TabOrder = 11
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
  end
  object Button8: TButton
    Left = 487
    Top = 335
    Width = 75
    Height = 25
    Caption = 'Abir table'
    TabOrder = 12
    OnClick = Button8Click
  end
  object DataSource1: TDataSource
    OnDataChange = DataSource1DataChange
    Left = 248
    Top = 72
  end
  object DataSource2: TDataSource
    Left = 528
    Top = 240
  end
end
