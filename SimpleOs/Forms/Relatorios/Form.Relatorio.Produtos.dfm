inherited formRelatorioDeProdutos: TformRelatorioDeProdutos
  Caption = 'Relat'#243'rio de produtos'
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  inherited Panel3: TPanel
    inherited sbExportar: TSpeedButton
      OnClick = sbExportarClick
    end
    inherited cbPesquisar: TComboBox
      Items.Strings = (
        'C'#243'digo'
        'Produto'
        'C'#243'digo de barras')
    end
    inherited edtPesquisar: TEdit
      OnKeyUp = edtPesquisarKeyUp
    end
  end
  inherited DBGrid1: TDBGrid
    Font.Height = -13
    Font.Name = 'Segoe UI'
    Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
    ParentFont = False
    ReadOnly = True
    TitleFont.Height = -13
    TitleFont.Name = 'Segoe UI'
    TitleFont.Style = [fsBold]
    OnTitleClick = DBGrid1TitleClick
  end
  inherited frxDBDataset1: TfrxDBDataset
    DataSource = DataSource1
  end
  inherited frxReport1: TfrxReport
    Datasets = <>
    Variables = <>
    Style = <>
  end
end
