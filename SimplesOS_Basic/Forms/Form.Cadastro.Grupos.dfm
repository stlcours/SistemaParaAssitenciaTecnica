inherited formCadastroGrupos: TformCadastroGrupos
  Caption = 'Cadastro de grupos'
  ClientHeight = 401
  ClientWidth = 868
  ExplicitWidth = 868
  ExplicitHeight = 401
  PixelsPerInch = 96
  TextHeight = 13
  inherited Panel1: TPanel
    Width = 868
    ExplicitWidth = 868
    inherited sbFechar: TSpeedButton
      Left = 816
      ExplicitLeft = 816
    end
    inherited lblCaption: TLabel
      Left = 146
      Width = 140
      Caption = 'Cadastro de grupos'
      ExplicitLeft = 195
      ExplicitWidth = 140
    end
  end
  inherited Panel2: TPanel
    Width = 868
    ExplicitWidth = 868
  end
  inherited Panel3: TPanel
    Top = 326
    Width = 868
    ExplicitTop = 326
    ExplicitWidth = 868
    inherited Label4: TLabel
      Left = 534
      ExplicitLeft = 534
    end
    inherited Label5: TLabel
      Left = 669
      ExplicitLeft = 669
    end
    inherited cbPesquisar: TComboBox
      Left = 534
      Items.Strings = (
        'C'#243'digo'
        'Grupo')
      ExplicitLeft = 534
    end
    inherited edtPesquisar: TEdit
      Left = 669
      OnKeyUp = edtPesquisarKeyUp
      ExplicitLeft = 669
    end
  end
  inherited CardPanel1: TCardPanel
    Width = 868
    Height = 245
    ExplicitWidth = 868
    ExplicitHeight = 245
    inherited cardPanelCadatro: TCard
      Width = 868
      Height = 245
      ExplicitWidth = 868
      ExplicitHeight = 245
      object Label1: TLabel
        Left = 48
        Top = 16
        Width = 43
        Height = 17
        Caption = 'C'#243'digo'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentFont = False
      end
      object Label2: TLabel
        Left = 48
        Top = 76
        Width = 37
        Height = 17
        Caption = 'Grupo'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentFont = False
      end
      object edtCodigo: TEdit
        Left = 48
        Top = 39
        Width = 121
        Height = 25
        CharCase = ecUpperCase
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentFont = False
        TabOrder = 0
      end
      object edtGrupo: TEdit
        Left = 48
        Top = 95
        Width = 265
        Height = 25
        CharCase = ecUpperCase
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentFont = False
        TabOrder = 1
      end
    end
    inherited cardPanelConsulta: TCard
      Width = 868
      Height = 245
      ExplicitWidth = 868
      ExplicitHeight = 245
      inherited Panel4: TPanel
        Top = 200
        Width = 868
        ExplicitTop = 200
        ExplicitWidth = 868
        inherited sbImprimir: TSpeedButton
          Left = 593
          Top = 6
          Visible = False
          ExplicitLeft = 593
          ExplicitTop = 6
        end
        inherited sbExportar: TSpeedButton
          Left = 704
          Visible = False
          ExplicitLeft = 704
        end
      end
      inherited DBGrid1: TDBGrid
        Width = 868
        Height = 200
        DataSource = DataSource1
        OnCellClick = DBGrid1CellClick
        OnTitleClick = DBGrid1TitleClick
      end
    end
  end
  object DataSource1: TDataSource
    OnDataChange = DataSource1DataChange
    Left = 528
    Top = 161
  end
end
