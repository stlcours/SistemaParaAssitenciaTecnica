inherited formNumeroParcelas: TformNumeroParcelas
  Caption = 'Configurar N'#250'mero de parcelas'
  ClientHeight = 403
  ClientWidth = 860
  ExplicitWidth = 860
  ExplicitHeight = 403
  PixelsPerInch = 96
  TextHeight = 13
  inherited Panel1: TPanel
    Width = 860
    ExplicitWidth = 860
    inherited sbFechar: TSpeedButton
      Left = 808
      ExplicitLeft = 808
    end
    inherited lblCaption: TLabel
      Left = 138
      Width = 223
      Caption = 'Configurar N'#250'mero de parcelas'
      ExplicitLeft = 195
      ExplicitWidth = 223
    end
  end
  inherited Panel2: TPanel
    Width = 860
    ExplicitWidth = 860
  end
  inherited Panel3: TPanel
    Top = 328
    Width = 860
    ExplicitTop = 328
    ExplicitWidth = 860
    inherited Label4: TLabel
      Left = 526
      Visible = False
      ExplicitLeft = 526
    end
    inherited Label5: TLabel
      Left = 661
      Visible = False
      ExplicitLeft = 661
    end
    inherited cbPesquisar: TComboBox
      Left = 526
      Visible = False
      ExplicitLeft = 526
    end
    inherited edtPesquisar: TEdit
      Left = 661
      Visible = False
      ExplicitLeft = 661
    end
  end
  inherited CardPanel1: TCardPanel
    Width = 860
    Height = 247
    ActiveCard = cardPanelCadatro
    ExplicitWidth = 860
    ExplicitHeight = 247
    inherited cardPanelCadatro: TCard
      Width = 860
      Height = 247
      ExplicitWidth = 860
      ExplicitHeight = 247
      object Label1: TLabel
        Left = 24
        Top = 33
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
        Left = 328
        Top = 34
        Width = 54
        Height = 17
        Caption = 'Juros (%)'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentFont = False
      end
      object Label3: TLabel
        Left = 24
        Top = 113
        Width = 114
        Height = 17
        Caption = 'N'#250'mero da parcela'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentFont = False
      end
      object edtCodigo: TEdit
        Left = 24
        Top = 56
        Width = 238
        Height = 25
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentFont = False
        ReadOnly = True
        TabOrder = 0
      end
      object edtNumeroDaParcela: TEdit
        Left = 24
        Top = 136
        Width = 238
        Height = 25
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Segoe UI'
        Font.Style = []
        NumbersOnly = True
        ParentFont = False
        TabOrder = 1
      end
      object edtJuros: TEdit
        Left = 328
        Top = 56
        Width = 238
        Height = 25
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentFont = False
        TabOrder = 2
        Text = '0'
      end
      object CheckBox1: TCheckBox
        Left = 328
        Top = 140
        Width = 238
        Height = 17
        Caption = 'Aplicar nas Ordem de Servi'#231'o'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentFont = False
        TabOrder = 3
        Visible = False
      end
    end
    inherited cardPanelConsulta: TCard
      Width = 860
      Height = 247
      ExplicitWidth = 860
      ExplicitHeight = 247
      inherited Panel4: TPanel
        Top = 202
        Width = 860
        ExplicitTop = 202
        ExplicitWidth = 860
        inherited sbImprimir: TSpeedButton
          Left = 585
          Visible = False
          ExplicitLeft = 585
        end
        inherited sbExportar: TSpeedButton
          Left = 696
          Visible = False
          ExplicitLeft = 696
        end
      end
      inherited DBGrid1: TDBGrid
        Width = 860
        Height = 202
        DataSource = DataSource1
        OnCellClick = DBGrid1CellClick
        OnTitleClick = DBGrid1TitleClick
      end
    end
  end
  inherited PopupMenu1: TPopupMenu
    Left = 624
    Top = 49
  end
  object DataSource1: TDataSource
    OnDataChange = DataSource1DataChange
    Left = 504
    Top = 57
  end
end
