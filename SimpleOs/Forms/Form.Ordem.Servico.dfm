object formOrdemServico: TformOrdemServico
  Left = 0
  Top = 0
  BorderStyle = bsNone
  Caption = 'Ordem de servi'#231'os'
  ClientHeight = 523
  ClientWidth = 1071
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnCreate = FormCreate
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 1071
    Height = 41
    Align = alTop
    BevelOuter = bvNone
    Color = 8406532
    ParentBackground = False
    TabOrder = 0
    OnMouseDown = Panel1MouseDown
    ExplicitWidth = 1049
    DesignSize = (
      1071
      41)
    object sbFechar: TSpeedButton
      Left = 1019
      Top = 2
      Width = 52
      Height = 33
      Hint = 'Fechar esta janela'
      Anchors = [akTop, akRight]
      Flat = True
      Glyph.Data = {
        F6060000424DF606000000000000360000002800000018000000180000000100
        180000000000C0060000120B0000120B00000000000000000000804604875012
        BD9F7CEDE5DCF9F6F3F9F6F3F9F6F3F9F6F3F9F6F3F9F6F3F9F6F3F9F6F3F8F5
        F2F9F6F3F9F6F3F8F5F2F9F6F3F9F6F3F8F5F2F8F5F2EDE5DCBD9F7C87501280
        4604875012DBCBB8FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFDBCBB8875012BA9A76FFFFFFFEFEFEFEFEFEFFFFFFFEFEFEFEFEFEFF
        FFFFFEFEFEFEFEFEFFFFFFFEFEFEFEFEFEFFFFFFFEFEFEFEFEFEFFFFFFFEFEFE
        FEFEFEFFFFFFFEFEFEFEFEFEFEFEFEBB9C78E8DED2FFFFFFFFFFFFFEFEFEFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFEFEFFFFFFFFFFFFFE
        FEFEFFFFFFFFFFFFFEFEFEFFFFFFFFFFFFFEFEFEFFFFFFE9DFD4F4EFE9FFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF5
        F0EBF6F2EDFFFFFFFEFEFEFEFEFEFFFFFFFEFEFEFEFEFEFFFFFFFEFEFEFEFEFE
        FFFFFFFEFEFEFEFEFEFFFFFFFEFEFEFEFEFEFFFFFFFEFEFEFEFEFEFFFFFFFEFE
        FEFEFEFEFFFFFFF7F3EFF7F3EFFFFFFFFFFFFFFEFEFEFFFFFFFFFFFFFFFFFFF2
        ECE5CBB499FBFAF8FFFFFFFFFFFFFEFEFEFFFFFFFBFAF8CBB499F2ECE5FFFFFF
        FEFEFEFFFFFFFFFFFFFEFEFEFFFFFFF8F5F1F8F5F1FFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFF3EEE79B6D39804604AF8B62F9F6F3FFFFFFFFFFFFF9F6F3AF8B6280
        46049A6C37F2ECE5FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF9F6F3F9F6F3FFFFFF
        FEFEFEFEFEFEFFFFFFFEFEFED2BDA6814706804604804604AF8A61FAF8F6FAF8
        F6AF8B62804604804604814706D2BDA6FEFEFEFFFFFFFEFEFEFEFEFEFFFFFFF8
        F5F2F9F6F3FFFFFFFFFFFFFEFEFEFFFFFFFFFFFFFDFCFBB99974814706804604
        804604AB8459AC865B804604804604814706B99974FDFCFBFEFEFEFFFFFFFFFF
        FFFEFEFEFFFFFFF9F6F3F9F6F3FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFB
        FAF8B89874814706804604804604804604804604814706B79772FBF9F7FFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF9F6F3F9F6F3FFFFFFFEFEFEFEFEFEFFFF
        FFFEFEFEFEFEFEFFFFFFFDFCFBB4926C814706804604804604814706B4916AFC
        FBFAFFFFFFFEFEFEFEFEFEFFFFFFFEFEFEFEFEFEFFFFFFF8F5F2F9F6F3FFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFEFEFEFFFFFFFBF9F7AC865B8046048046048046
        04804604AB8459FAF8F6FFFFFFFFFFFFFEFEFEFFFFFFFFFFFFFEFEFEFFFFFFF9
        F6F3F9F6F3FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF9F6F3B08C62804604
        804604814706814706804604804604AE8A60F9F6F3FFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFF9F6F3F8F5F2FFFFFFFEFEFEFEFEFEFFFFFFFEFEFEFBFAF8B0
        8C62804604804604814706B3916AB4926C814706804604804604AF8A61FCFBF9
        FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEF9F6F3F9F6F3FFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFD1BCA4804604804604814706B79772FDFCFBFDFCFBB9997481470680
        4604804604D0BBA2FEFEFEFFFFFFFFFFFFFEFEFEFFFFFFF9F6F3F8F5F1FFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFF5F1ECA27747814706B99974FBF9F7FFFFFFFFFF
        FFFCFBF9B99974814706A27747F6F2EDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF9
        F6F3F6F2EEFFFFFFFEFEFEFEFEFEFFFFFFFEFEFEFEFEFEF6F2EDD5C3AEFCFBFA
        FFFFFFFEFEFEFEFEFEFEFEFEFCFBFAD6C4AEF6F2EDFEFEFEFEFEFEFEFEFEFEFE
        FEFEFEFEFEFEFEF7F4F0F6F2EDFFFFFFFEFEFEFEFEFEFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFEFEFFFFFFFEFEFEFEFEFEFFFFFFFEFEFE
        FEFEFEFFFFFFFEFEFEFEFEFEFFFFFFF6F2EEF4EFE9FFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF4EFE9E6DBCEFFFFFF
        FEFEFEFEFEFEFFFFFFFEFEFEFEFEFEFFFFFFFEFEFEFEFEFEFFFFFFFEFEFEFEFE
        FEFFFFFFFEFEFEFEFEFEFFFFFFFEFEFEFEFEFEFFFFFFFEFEFEFEFEFEFFFFFFE5
        DACDB4916AFEFEFDFFFFFFFEFEFEFFFFFFFFFFFFFEFEFEFFFFFFFFFFFFFEFEFE
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFEFEFDB5936C844C0CD2BEA6FEFEFDFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFEFEFDD3BFA8854D0E804604844C0CB18D64E1D3C4EEE6
        DEF0E9E1F0EAE3F1EBE5F2ECE5F1EBE5F2ECE5F3EEE7F3EEE7F3EEE7F3EEE7F3
        EEE7F3EEE7F2ECE5F1EBE3EFE8E0E2D5C6B28F66844C0C804604}
      ParentShowHint = False
      ShowHint = True
      OnClick = sbFecharClick
      ExplicitLeft = 871
    end
    object lblCaption: TLabel
      Left = 349
      Top = 10
      Width = 132
      Height = 19
      Anchors = [akTop, akRight, akBottom]
      Caption = 'Ordem de servi'#231'os'
      Color = clWhite
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -16
      Font.Name = 'Roboto'
      Font.Style = []
      ParentColor = False
      ParentFont = False
      ExplicitLeft = 327
    end
  end
  object Panel3: TPanel
    Left = 0
    Top = 456
    Width = 1071
    Height = 67
    Align = alBottom
    BevelOuter = bvNone
    Color = 8406532
    ParentBackground = False
    TabOrder = 1
    ExplicitWidth = 1049
    DesignSize = (
      1071
      67)
    object Label4: TLabel
      Left = 737
      Top = 9
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
      ExplicitLeft = 715
    end
    object Label5: TLabel
      Left = 872
      Top = 9
      Width = 168
      Height = 15
      Anchors = [akRight, akBottom]
      Caption = 'Digite o que deseja pesquisar'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -13
      Font.Name = 'Roboto'
      Font.Style = []
      ParentFont = False
      ExplicitLeft = 850
    end
    object cbPesquisar: TComboBox
      Left = 737
      Top = 30
      Width = 129
      Height = 23
      Anchors = [akRight, akBottom]
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Roboto'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      Items.Strings = (
        'Ordem'
        'C'#243'digo do cliente'
        'Nome do cliente'
        'CPF ou CNPJ')
      ExplicitLeft = 715
    end
    object edtPesquisar: TEdit
      Left = 872
      Top = 30
      Width = 168
      Height = 23
      Anchors = [akRight, akBottom]
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Roboto'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
      OnKeyUp = edtPesquisarKeyUp
      ExplicitLeft = 850
    end
  end
  object DBGrid1: TDBGrid
    Left = 0
    Top = 41
    Width = 1071
    Height = 415
    Align = alClient
    DataSource = DataSource1
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Segoe UI'
    Font.Style = []
    ParentFont = False
    TabOrder = 2
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -13
    TitleFont.Name = 'Segoe UI'
    TitleFont.Style = [fsBold]
    OnTitleClick = DBGrid1TitleClick
  end
  object DataSource1: TDataSource
    Left = 720
    Top = 224
  end
  object PopupMenu1: TPopupMenu
    Left = 496
    Top = 216
    object VerCadastro1: TMenuItem
      Caption = 'Ver Cadastro'
      OnClick = VerCadastro1Click
    end
    object VerOrdemdeServio1: TMenuItem
      Caption = 'Ver Ordem de Servi'#231'o'
      OnClick = VerOrdemdeServio1Click
    end
  end
end
