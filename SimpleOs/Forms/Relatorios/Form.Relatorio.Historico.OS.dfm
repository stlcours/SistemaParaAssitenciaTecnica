inherited formRelatorioHistoricoOS: TformRelatorioHistoricoOS
  Caption = 'Hist'#243'rico de OS do cliente'
  ClientHeight = 586
  ClientWidth = 1076
  OnCreate = FormCreate
  ExplicitTop = -32
  ExplicitWidth = 1076
  ExplicitHeight = 586
  PixelsPerInch = 96
  TextHeight = 13
  inherited Panel1: TPanel
    Width = 1076
    inherited sbFechar: TSpeedButton
      Left = 1024
    end
    inherited lblCaption: TLabel
      Left = 354
    end
  end
  inherited Panel3: TPanel
    Top = 522
    Width = 1076
    ExplicitLeft = 8
    ExplicitTop = 526
    ExplicitWidth = 1076
    inherited sbImprimir: TSpeedButton
      Left = 15
      Width = 106
      ExplicitLeft = 15
      ExplicitWidth = 106
    end
    inherited sbExportar: TSpeedButton
      Left = 127
      ExplicitLeft = 127
    end
    inherited Label4: TLabel
      Left = 746
      Top = 5
      ExplicitLeft = 746
      ExplicitTop = 5
    end
    inherited Label5: TLabel
      Left = 881
      Top = 5
      ExplicitLeft = 881
      ExplicitTop = 5
    end
    object Label1: TLabel [4]
      Left = 246
      Top = 5
      Width = 97
      Height = 15
      Anchors = [akRight, akBottom]
      Caption = 'Tipo de pesquisa'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -13
      Font.Name = 'Roboto'
      Font.Style = []
      ParentFont = False
    end
    object Bevel1: TBevel [5]
      Left = 739
      Top = 1
      Width = 1
      Height = 65
      Anchors = [akRight, akBottom]
    end
    object Label2: TLabel [6]
      Left = 594
      Top = 5
      Width = 107
      Height = 15
      Anchors = [akRight, akBottom]
      Caption = 'Situa'#231#227'o da ordem'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -13
      Font.Name = 'Roboto'
      Font.Style = []
      ParentFont = False
    end
    object Label3: TLabel [7]
      Left = 381
      Top = 5
      Width = 97
      Height = 15
      Anchors = [akRight, akBottom]
      Caption = 'Informe as datas'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -13
      Font.Name = 'Roboto'
      Font.Style = []
      ParentFont = False
    end
    inherited cbPesquisar: TComboBox
      Left = 746
      Top = 26
      Items.Strings = (
        'C'#243'digo do cliente'
        'C'#243'digo da OS'
        'Nome do cliente')
      ExplicitLeft = 746
      ExplicitTop = 26
    end
    inherited edtPesquisar: TEdit
      Left = 881
      Top = 26
      OnKeyUp = edtPesquisarKeyUp
      ExplicitLeft = 881
      ExplicitTop = 26
    end
    object ComboBox1: TComboBox
      Left = 594
      Top = 26
      Width = 139
      Height = 23
      Anchors = [akRight, akBottom]
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Roboto'
      Font.Style = []
      ParentFont = False
      TabOrder = 2
    end
    object ComboBox2: TComboBox
      Left = 246
      Top = 26
      Width = 129
      Height = 23
      Anchors = [akRight, akBottom]
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Roboto'
      Font.Style = []
      ParentFont = False
      TabOrder = 3
    end
    object MaskEdit1: TMaskEdit
      Left = 381
      Top = 26
      Width = 72
      Height = 25
      EditMask = '00/00/0000'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Segoe UI'
      Font.Style = []
      MaxLength = 10
      ParentFont = False
      TabOrder = 4
      Text = '  /  /    '
    end
    object MaskEdit2: TMaskEdit
      Left = 456
      Top = 25
      Width = 72
      Height = 25
      EditMask = '00/00/0000'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Segoe UI'
      Font.Style = []
      MaxLength = 10
      ParentFont = False
      TabOrder = 5
      Text = '  /  /    '
    end
  end
  inherited DBGrid1: TDBGrid
    Width = 1076
    Height = 288
    Align = alTop
    Font.Height = -13
    Font.Name = 'Segoe UI'
    Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
    ParentFont = False
    ReadOnly = True
    TitleFont.Height = -13
    TitleFont.Name = 'Segoe UI'
    TitleFont.Style = [fsBold]
    OnCellClick = DBGrid1CellClick
  end
  object GroupBox1: TGroupBox [3]
    Left = 0
    Top = 335
    Width = 1076
    Height = 187
    Align = alBottom
    Caption = 'Servi'#231'os inclu'#237'dos na OS'
    TabOrder = 3
    ExplicitWidth = 1019
    object DBGrid2: TDBGrid
      Left = 2
      Top = 15
      Width = 1072
      Height = 170
      Align = alClient
      BorderStyle = bsNone
      DataSource = DataSource2
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -13
      TitleFont.Name = 'Segoe UI'
      TitleFont.Style = [fsBold]
    end
  end
  inherited frxReport1: TfrxReport
    Datasets = <>
    Variables = <>
    Style = <>
  end
  object DataSource2: TDataSource
    Left = 264
    Top = 232
  end
end
