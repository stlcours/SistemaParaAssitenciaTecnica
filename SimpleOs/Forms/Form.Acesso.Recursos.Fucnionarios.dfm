inherited formConfigurarAcessoFuncionario: TformConfigurarAcessoFuncionario
  Caption = 'Configurar acesso do funcion'#225'rio'
  ClientWidth = 979
  ExplicitWidth = 979
  PixelsPerInch = 96
  TextHeight = 13
  inherited Panel1: TPanel
    Width = 979
    inherited sbFechar: TSpeedButton
      Left = 927
    end
    inherited lblCaption: TLabel
      Left = 257
    end
  end
  inherited Panel2: TPanel
    Width = 979
  end
  inherited Panel3: TPanel
    Width = 979
    inherited Label4: TLabel
      Left = 645
      Visible = False
    end
    inherited Label5: TLabel
      Left = 780
      Visible = False
    end
    inherited cbPesquisar: TComboBox
      Left = 645
      Visible = False
    end
    inherited edtPesquisar: TEdit
      Left = 780
      Visible = False
    end
  end
  inherited CardPanel1: TCardPanel
    Width = 979
    ActiveCard = cardPanelCadatro
    inherited cardPanelCadatro: TCard
      Width = 979
      object PageControl1: TPageControl
        Left = 0
        Top = 0
        Width = 975
        Height = 401
        ActivePage = tsCadastros
        Align = alClient
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentFont = False
        TabOrder = 0
        object tsCadastros: TTabSheet
          Caption = 'Cadastros'
          ExplicitLeft = 92
          ExplicitTop = -1
        end
        object tsMovimentacao: TTabSheet
          Caption = 'Movimenta'#231#227'o'
          ImageIndex = 1
          ExplicitTop = 24
          ExplicitHeight = 373
        end
        object tsRelatorios: TTabSheet
          Caption = 'Relat'#243'rios'
          ImageIndex = 2
          ExplicitTop = 24
          ExplicitHeight = 373
        end
        object tsCaixa: TTabSheet
          Caption = 'Caixa'
          ImageIndex = 3
          ExplicitTop = 24
          ExplicitHeight = 373
        end
        object tsExtras: TTabSheet
          Caption = 'Extras'
          ImageIndex = 4
          ExplicitTop = 24
          ExplicitHeight = 373
        end
      end
    end
    inherited cardPanelConsulta: TCard
      Width = 979
      inherited Panel4: TPanel
        Width = 979
        inherited sbImprimir: TSpeedButton
          Left = 704
          Visible = False
        end
        inherited sbExportar: TSpeedButton
          Left = 815
          Visible = False
        end
      end
      inherited DBGrid1: TDBGrid
        Width = 979
        DataSource = DataSource1
      end
    end
  end
  inherited PopupMenu1: TPopupMenu
    Left = 744
    Top = 209
  end
  object DataSource1: TDataSource
    Left = 648
    Top = 217
  end
end
