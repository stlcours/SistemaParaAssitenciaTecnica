inherited formTipoRetiradas: TformTipoRetiradas
  Caption = 'Cadastro tipo retiradas'
  ClientHeight = 389
  ClientWidth = 889
  ExplicitWidth = 889
  ExplicitHeight = 389
  PixelsPerInch = 96
  TextHeight = 13
  inherited Panel1: TPanel
    Width = 889
    ExplicitWidth = 889
    inherited sbFechar: TSpeedButton
      Left = 837
      ExplicitLeft = 837
    end
    inherited lblCaption: TLabel
      Left = 167
      Width = 121
      Caption = 'Tipo de retiradas'
      ExplicitLeft = 195
      ExplicitWidth = 121
    end
  end
  inherited Panel2: TPanel
    Width = 889
    ExplicitWidth = 889
  end
  inherited Panel3: TPanel
    Top = 314
    Width = 889
    ExplicitTop = 314
    ExplicitWidth = 889
    inherited Label4: TLabel
      Left = 555
      ExplicitLeft = 555
    end
    inherited Label5: TLabel
      Left = 690
      ExplicitLeft = 690
    end
    inherited cbPesquisar: TComboBox
      Left = 555
      Items.Strings = (
        'C'#243'digo'
        'Tipo retirada')
      ExplicitLeft = 555
    end
    inherited edtPesquisar: TEdit
      Left = 690
      OnKeyUp = edtPesquisarKeyUp
      ExplicitLeft = 690
    end
  end
  inherited CardPanel1: TCardPanel
    Width = 889
    Height = 233
    ExplicitWidth = 889
    ExplicitHeight = 233
    inherited cardPanelCadatro: TCard
      Width = 889
      Height = 233
      ExplicitWidth = 889
      ExplicitHeight = 233
      object Label1: TLabel
        Left = 55
        Top = 32
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
        Left = 55
        Top = 96
        Width = 124
        Height = 17
        Caption = 'Tipo sa'#237'das/retiradas'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentFont = False
      end
      object edtCodigo: TEdit
        Left = 55
        Top = 53
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
      object edtTipoRetirada: TEdit
        Left = 55
        Top = 115
        Width = 259
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
      Width = 889
      Height = 233
      ExplicitWidth = 889
      ExplicitHeight = 233
      inherited Panel4: TPanel
        Top = 188
        Width = 889
        ExplicitTop = 188
        ExplicitWidth = 889
        inherited sbImprimir: TSpeedButton
          Left = 614
          Visible = False
          ExplicitLeft = 614
        end
        inherited sbExportar: TSpeedButton
          Left = 725
          Visible = False
          ExplicitLeft = 725
        end
      end
      inherited DBGrid1: TDBGrid
        Width = 889
        Height = 188
        DataSource = DataSource1
        OnCellClick = DBGrid1CellClick
        OnTitleClick = DBGrid1TitleClick
      end
    end
  end
  object DataSource1: TDataSource
    OnDataChange = DataSource1DataChange
    Left = 400
    Top = 169
  end
end
