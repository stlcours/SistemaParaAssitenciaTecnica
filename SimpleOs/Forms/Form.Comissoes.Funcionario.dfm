inherited formComissoesFuncionarios: TformComissoesFuncionarios
  Caption = 'Cadastro Comiss'#245'es dos Funcion'#225'rios'
  ClientHeight = 368
  ExplicitHeight = 368
  PixelsPerInch = 96
  TextHeight = 13
  inherited Panel1: TPanel
    inherited lblCaption: TLabel
      Width = 274
      Caption = 'Cadastro Comiss'#245'es dos Funcion'#225'rios'
      ExplicitLeft = 195
      ExplicitWidth = 274
    end
  end
  inherited Panel3: TPanel
    Top = 293
    inherited sbNovo: TSpeedButton
      Width = 177
      Caption = 'Incluir comiss'#227'o'
      ExplicitWidth = 177
    end
    inherited sbSalvar: TSpeedButton
      Left = 190
      ExplicitLeft = 190
    end
    inherited sbEditar: TSpeedButton
      Left = 297
      ExplicitLeft = 297
    end
    inherited sbExcluir: TSpeedButton
      Left = 383
      ExplicitLeft = 383
    end
    inherited sbCancelar: TSpeedButton
      Left = 489
      ExplicitLeft = 489
    end
    inherited Label4: TLabel
      Left = 687
      Top = 35
      Visible = False
      ExplicitLeft = 687
      ExplicitTop = 35
    end
    inherited Label5: TLabel
      Left = 822
      Top = 35
      Visible = False
      ExplicitLeft = 822
      ExplicitTop = 35
    end
    inherited cbPesquisar: TComboBox
      Left = 687
      Top = 56
      Visible = False
      ExplicitLeft = 687
      ExplicitTop = 56
    end
    inherited edtPesquisar: TEdit
      Left = 822
      Top = 56
      Visible = False
      ExplicitLeft = 822
      ExplicitTop = 56
    end
  end
  inherited CardPanel1: TCardPanel
    Height = 212
    inherited cardPanelCadatro: TCard
      Height = 212
    end
    inherited cardPanelConsulta: TCard
      Height = 212
      inherited Panel4: TPanel
        Top = 167
        ExplicitLeft = 7
        ExplicitTop = 238
        inherited sbImprimir: TSpeedButton
          Visible = False
        end
        inherited sbExportar: TSpeedButton
          Visible = False
        end
      end
      inherited DBGrid1: TDBGrid
        Height = 167
        DataSource = DataSource1
      end
    end
  end
  inherited PopupMenu1: TPopupMenu
    Left = 552
    Top = 41
  end
  object DataSource1: TDataSource
    Left = 440
    Top = 57
  end
end
