inherited formCadastroDeServicos: TformCadastroDeServicos
  Caption = 'Cadastro de servi'#231'os'
  ClientHeight = 395
  ClientWidth = 844
  Position = poScreenCenter
  ExplicitWidth = 844
  ExplicitHeight = 395
  PixelsPerInch = 96
  TextHeight = 13
  inherited Panel1: TPanel
    Width = 844
    inherited sbFechar: TSpeedButton
      Left = 792
    end
    inherited lblCaption: TLabel
      Left = 122
      Width = 149
      Caption = 'Cadastro de servi'#231'os'
      ExplicitLeft = 122
      ExplicitWidth = 149
    end
  end
  inherited Panel2: TPanel
    Width = 844
  end
  inherited Panel3: TPanel
    Top = 320
    Width = 844
    inherited Label4: TLabel
      Left = 510
    end
    inherited Label5: TLabel
      Left = 645
    end
    inherited cbPesquisar: TComboBox
      Left = 510
    end
    inherited edtPesquisar: TEdit
      Left = 645
    end
  end
  inherited CardPanel1: TCardPanel
    Width = 844
    Height = 239
    ActiveCard = cardPanelCadatro
    inherited cardPanelCadatro: TCard
      Width = 844
      Height = 239
      ExplicitTop = 1
      ExplicitWidth = 844
      ExplicitHeight = 239
      object Label1: TLabel
        Left = 24
        Top = 29
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
        Left = 24
        Top = 100
        Width = 42
        Height = 17
        Caption = 'Servi'#231'o'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentFont = False
      end
      object Label3: TLabel
        Left = 24
        Top = 164
        Width = 30
        Height = 17
        Caption = 'Valor'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentFont = False
      end
      object Label6: TLabel
        Left = 436
        Top = 29
        Width = 57
        Height = 17
        Caption = 'Descri'#231#227'o'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentFont = False
      end
      object edtCodigo: TEdit
        Left = 24
        Top = 48
        Width = 225
        Height = 25
        CharCase = ecUpperCase
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentFont = False
        ReadOnly = True
        TabOrder = 0
      end
      object edtServico: TEdit
        Left = 24
        Top = 124
        Width = 393
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
      object edtValor: TEdit
        Left = 24
        Top = 187
        Width = 393
        Height = 25
        CharCase = ecUpperCase
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentFont = False
        TabOrder = 2
      end
      object edtDescricao: TEdit
        Left = 436
        Top = 48
        Width = 381
        Height = 25
        CharCase = ecUpperCase
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentFont = False
        TabOrder = 3
      end
    end
    inherited cardPanelConsulta: TCard
      Width = 844
      Height = 239
      inherited Panel4: TPanel
        Top = 194
        Width = 844
        inherited sbImprimir: TSpeedButton
          Left = 569
        end
        inherited sbExportar: TSpeedButton
          Left = 680
        end
      end
      inherited DBGrid1: TDBGrid
        Width = 844
        Height = 194
        DataSource = DataSource1
      end
    end
  end
  inherited PopupMenu1: TPopupMenu
    Left = 552
    Top = 57
  end
  object DataSource1: TDataSource
    Left = 424
    Top = 49
  end
end