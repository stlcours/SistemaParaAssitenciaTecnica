object formConfigurarConexaoBanco: TformConfigurarConexaoBanco
  Left = 0
  Top = 0
  BorderStyle = bsNone
  Caption = 'Configurar informa'#231#245'es de acesso ao banco de dados'
  ClientHeight = 378
  ClientWidth = 741
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -13
  Font.Name = 'Segoe UI'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnClose = FormClose
  OnCreate = FormCreate
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 17
  object Label1: TLabel
    Left = 48
    Top = 56
    Width = 264
    Height = 17
    Caption = 'Infome o IP da maquinas que ser'#225' o servidor'
  end
  object Label2: TLabel
    Left = 48
    Top = 229
    Width = 262
    Height = 17
    Caption = 'Informe o local onde esta o banco de dados'
  end
  object Label3: TLabel
    Left = 48
    Top = 118
    Width = 63
    Height = 17
    Caption = 'User name'
  end
  object Label4: TLabel
    Left = 199
    Top = 173
    Width = 24
    Height = 17
    Caption = 'Port'
  end
  object Label5: TLabel
    Left = 48
    Top = 173
    Width = 56
    Height = 17
    Caption = 'Password'
  end
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 741
    Height = 41
    Align = alTop
    BevelOuter = bvNone
    Color = 8406532
    ParentBackground = False
    TabOrder = 0
    OnMouseDown = Panel1MouseDown
    DesignSize = (
      741
      41)
    object sbFechar: TSpeedButton
      Left = 689
      Top = 0
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
      ExplicitLeft = 967
    end
    object lblCaption: TLabel
      Left = 163
      Top = 10
      Width = 134
      Height = 19
      Anchors = [akTop, akRight, akBottom]
      Caption = 'Formul'#225'rio padr'#227'o'
      Color = clWhite
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -16
      Font.Name = 'Roboto'
      Font.Style = []
      ParentColor = False
      ParentFont = False
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 312
    Width = 741
    Height = 66
    Align = alBottom
    BevelOuter = bvNone
    Color = 8406532
    ParentBackground = False
    TabOrder = 1
    object sbConfirmar: TSpeedButton
      Left = 120
      Top = 8
      Width = 137
      Height = 49
      Caption = 'Confirmar'
      Flat = True
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -16
      Font.Name = 'Roboto'
      Font.Style = [fsBold]
      Glyph.Data = {
        F6060000424DF606000000000000360000002800000018000000180000000100
        180000000000C0060000C30E0000C30E00000000000000000000804604804604
        804604804604804604804604804604905D23B4916AD6C4B0EBE3D9F7F3EFF8F5
        F1EEE6DED9C8B4B7977293622980460480460480460480460480460480460480
        46048046048046048046048046048046048E5A20CBB499F6F2EDFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF6F2EED1BCA4915F258046048046
        04804604804604804604804604804604804604804604A67D4FEFE8E1FEFEFEFF
        FFFFFEFEFEFEFEFEFFFFFFFEFEFEFEFEFEFFFFFFFEFEFEFEFEFEFFFFFFFEFEFE
        F4EFE9AC875C804604804604804604804604804604804604804604B29068FCFB
        F9FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFEFEFFFFFFFFFFFFFE
        FEFEFFFFFFFFFFFFFEFEFEFDFCFBBC9D7A804604804604804604804604804604
        A57C4DFCFBF9FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDFCFBAD875D80460480
        46048046048D591EEFE8E1FEFEFEFFFFFFFEFEFEFEFEFEFFFFFFFEFEFEFEFEFE
        F7F3EFF1EBE5FEFEFEFFFFFFFEFEFEFEFEFEFFFFFFFEFEFEFEFEFEFFFFFFFEFE
        FEF3EEE8926027804604804604C9B195FFFFFFFEFEFEFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFE7DCD0905D23875012ECE4DBFFFFFFFFFFFFFEFEFEFFFFFFFFFFFF
        FEFEFEFFFFFFFFFFFFFEFEFED3BFA88046048F5C22F5F0EBFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFE8DED28E5A20804604804604A27747FAF8F5FFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF7F4F095642DB28F66FEFEFE
        FEFEFEFEFEFEFFFFFFFEFEFEFEFEFEE7DDD18F5C228046048046048046048046
        04C7AD90FEFEFEFEFEFEFFFFFFFEFEFEFEFEFEFFFFFFFEFEFEFEFEFEFFFFFFBA
        9B78D4C1AAFFFFFFFFFFFFFEFEFEFFFFFFFFFFFFE7DDD18E5A20804604804604
        A880528B561A804604875012E6DBCEFEFEFEFFFFFFFFFFFFFEFEFEFFFFFFFFFF
        FFFEFEFEFFFFFFDDCEBCEAE1D6FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFB8987480
        4604804604B4916AFAF8F5CEB89F8046048046049C6F3BFCFBF9FFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF2ECE5F1EBE3FFFFFFFEFEFEFEFEFEFFFF
        FFFEFEFEF2EDE6A27747B4916AFCFBFAFFFFFFFEFEFDA57C4D804604804604C4
        A98AFFFFFFFEFEFEFEFEFEFFFFFFFEFEFEFEFEFEFFFFFFF8F5F2F2ECE5FFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFEFEFEFFFFFFFFFFFFFEFEFEFFFFFFFFFFFFF0E9
        E18D591D804604864F10E4D8CAFFFFFFFEFEFEFFFFFFFFFFFFFEFEFEFFFFFFF9
        F6F3EAE1D6FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFD1BCA48249088046049C6F3BF9F6F3FFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFF2ECE5D5C2ACFFFFFFFEFEFEFEFEFEFFFFFFFEFEFEFEFEFEFF
        FFFFFEFEFEFEFEFEFFFFFFFEFEFEFEFEFEFBFAF8AB8459804604814706C0A483
        FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEDCCDBBB18E66FFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFEFEFEFFFFFFFFFFFFFEFEFEFFFFFFFFFFFFFEFEFEFFFFFFF4F0EA8E
        5A20804604834A0AE6DBCFFFFFFFFFFFFFFEFEFEFFFFFFBB9C788F5C22F5F0EB
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFD7C5B0844C0C8A5518E2D6C7FFFFFFFFFFFFFFFFFFF8F5F195
        642D804604CAB297FEFEFEFEFEFEFFFFFFFEFEFEFEFEFEFFFFFFFEFEFEFEFEFE
        FFFFFFFEFEFEFEFEFEFEFEFEFEFEFEFDFDFCD6C4AEECE3DAFEFEFEFEFEFEFEFE
        FEFEFEFED3BFA88046048046048D591EF0E9E1FEFEFEFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFEFEFFFFFFFEFEFEFEFEFEFFFFFFFEFEFE
        FEFEFEFFFFFFFEFEFEF3EEE8926027804604804604804604A67D4FFCFBF9FFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFDFCFBAE895F804604804604804604804604
        804604B4916AFBFAF8FEFEFEFEFEFEFFFFFFFEFEFEFEFEFEFFFFFFFEFEFEFEFE
        FEFFFFFFFEFEFEFEFEFEFFFFFFFEFEFEFEFEFEFCFBFABB9D7A80460480460480
        4604804604804604804604804604A77F51F1EBE3FEFEFEFFFFFFFFFFFFFEFEFE
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF3EEE8AD875D8046
        048046048046048046048046048046048046048046048046048E5A20CCB59BF6
        F2EDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF8F5F1D1BCA4
        915F258046048046048046048046048046048046048046048046048046048046
        04804604804604915F25B6946ED9C8B4EFE8E0F8F5F1F6F2EDEFE8E0DBCBB8B8
        9772936229804604804604804604804604804604804604804604}
      Layout = blGlyphRight
      ParentFont = False
      OnClick = sbConfirmarClick
    end
    object sbRestaurar: TSpeedButton
      Left = 263
      Top = 8
      Width = 137
      Height = 49
      Caption = 'Restaurar'
      Flat = True
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -16
      Font.Name = 'Roboto'
      Font.Style = [fsBold]
      Glyph.Data = {
        F6060000424DF606000000000000360000002800000018000000180000000100
        180000000000C0060000C30E0000C30E00000000000000000000804604804604
        804604804604804604804604905D23B29068D5C2ACEBE2D8F7F3EFF6F2EEEDE5
        DCD9C8B4B6957092602780460480460480460480460480460480460480460480
        46048046048046048046048046048D591DCBB499F6F2EDFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF6F2EED0BAA2915F258046048046048046
        04804604804604804604804604804604804604A47A4BEFE8E1FEFEFEFFFFFFFE
        FEFEFEFEFEFFFFFFFEFEFEFEFEFEFFFFFFFEFEFEFEFEFEFFFFFFFEFEFEF4EFE9
        AD875D804604804604804604804604804604804604804604AF8A61FBF9F7FFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFEFEFFFFFFFFFFFFFEFEFEFD
        FCFBFEFEFEFEFEFEFDFCFBB99974804604804604804604804604804604A37949
        FAF8F6FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFF9F6F3DECFBEFFFFFFFFFFFFFDFCFBAD885E80460480460480
        46048B561AEEE6DEFEFEFEFFFFFFFEFEFEFEFEFEFFFFFFFEFEFEFEFEFEFFFFFF
        FEFEFEFEFEFEFFFFFFFEFEFEFEFEFEFFFFFFD7C6B2D2BEA6FEFEFEFEFEFEF4F0
        EA926027804604804604C7AD90FFFFFFFEFEFEFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFEFEFEFFFFFFFFFFFFFEFEFEFFFFFFFFFFFF9F7341
        E8DED2FFFFFFFEFEFED4C1AA814706804604F4EFE9FFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFC3A889A98155FEFEFDFFFFFFF9F6F395642D804604FEFEFEFEFEFE
        FEFEFEFFFFFFFEFEFEFEFEFEFFFFFFFEFEFEFEFEFEFFFFFFFEFEFEFEFEFEFFFF
        FFFEFEFEFEFEFEFFFFFFFEFEFEDDCEBC875012ECE4DBFEFEFEFFFFFFBA9B7880
        4604FFFFFFFFFFFFFEFEFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFEFEFEFFFFFFFFFFFFFEFEFEFFFFFFFFFFFFE3D6C8824908D1BCA4FEFE
        FEFFFFFFDDCEBC804604FFFFFFFFFFFFFFFFFFFAF8F5F4EFE9F4EFE9F4EFE9F4
        EFE9F4EFE9FAF8F5FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFD3BFA8
        804604C5AA8CFFFFFFFFFFFFF1EBE5804604FFFFFFFEFEFEFEFEFED0BBA28953
        1689531689531689531696662FECE3DAFEFEFEFEFEFEFFFFFFFEFEFEFEFEFEFF
        FFFFFEFEFEA98154804604C8AF93FEFEFEFFFFFFF8F5F2804604FFFFFFFFFFFF
        FFFFFFCCB59B804604804604804604804604DFD1C0FFFFFFFFFFFFFEFEFEFFFF
        FFFFFFFFFEFEFEFFFFFFD4C1AC804604814706DDCEBCFEFEFEFFFFFFF9F6F380
        4604FFFFFFFFFFFFFFFFFFCCB59B8046048046048046048046049C6E3BE8DED2
        FEFEFDFFFFFFFFFFFFFFFFFFF8F5F1C7AE91875012804604926027F8F5F1FFFF
        FFFFFFFFF2ECE5804604FFFFFFFEFEFEFEFEFECCB49A80460480460480460480
        4604804604875012A98155C3A889C5AB8DB99974936229804604804604804604
        CBB499FEFEFEFEFEFEFEFEFEDCCDBB804604FFFFFFFFFFFFFFFFFFCCB59B8D59
        1E9A6C3780460480460480460480460480460480460480460480460480460480
        4604804604AF8A61FCFBF9FFFFFFFEFEFEFFFFFFBB9C78804604F4EFE9FFFFFF
        FFFFFFDAC9B6E4D8CBF6F2EDB18D64834A0A8046048046048046048046048046
        04804604804604834A0AB18D64FAF8F5FFFFFFFFFFFFFFFFFFF8F5F194632B80
        4604C8AF93FEFEFEFEFEFEFFFFFFFEFEFEFEFEFEFEFEFDDDCEBDA47A4B834A0A
        8046048046048046048147069F7341D9C8B4FCFBFAFEFEFEFEFEFEFEFEFEFEFE
        FED3BFA88046048046048C571CEDE5DDFEFEFEFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFF7F3EFE0D2C2D6C4B0DFD1C0F4EFE9FEFEFEFFFFFFFEFEFEFEFEFE
        FFFFFFFEFEFEF3EEE8926027804604804604804604A17645FAF8F5FFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFDFCFBAD875D804604804604804604804604804604
        AE895FFAF8F6FEFEFEFEFEFEFFFFFFFEFEFEFEFEFEFFFFFFFEFEFEFEFEFEFFFF
        FFFEFEFEFEFEFEFFFFFFFEFEFEFEFEFEFCFBF9B9997480460480460480460480
        4604804604804604804604A37949EEE7DFFEFEFEFFFFFFFFFFFFFEFEFEFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF2EDE6AB855A8046048046
        048046048046048046048046048046048046048046048C571CCAB296F5F0EBFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF7F3EFD0BBA2905D23
        8046048046048046048046048046048046048046048046048046048046048046
        048046048F5C21B28F66D5C2ACEBE2D8F5F1ECF7F3EFEDE5DCD8C6B2B6946E92
        6027804604804604804604804604804604804604804604804604}
      Layout = blGlyphRight
      ParentFont = False
      OnClick = sbRestaurarClick
    end
    object sbCancelar: TSpeedButton
      Left = 406
      Top = 8
      Width = 137
      Height = 49
      Caption = 'Cancelar'
      Flat = True
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -16
      Font.Name = 'Roboto'
      Font.Style = [fsBold]
      Glyph.Data = {
        A2070000424DA207000000000000360000002800000019000000190000000100
        1800000000006C070000120B0000120B0000000000000000000099361A99361A
        99361A99361A99361A99361A99361A99361A99361A99361A99361A99361A9936
        1A99361A99361A99361A99361A99361A99361A99361A99361A99361A99361A99
        361A99361A2099361A99361A99361A99361A99361A99361A99361A99361AA64F
        37C38877DEBFB6EFE0DCF9F2F1F9F4F2F1E4E0E1C3BBC58E7EA8543C99361A99
        361A99361A99361A99361A99361A99361A2099361A99361A99361A99361A9936
        1A99361AA44C33D5ADA2F8F1EFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFF8F1F0DAB6ACA7513999361A99361A99361A99361A99361A209936
        1A99361A99361A99361A99361AB7725EF2E6E3FEFEFEFFFFFFFEFEFEFEFEFEFF
        FFFFFEFEFEFEFEFEFFFFFFFEFEFEFEFEFEFFFFFFFEFEFEF6EEEBBD7D6A99361A
        99361A99361A99361A2099361A99361A99361A99361AC18675FDFAFAFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFEFEFFFFFFFFFFFFFEFEFEFFFFFF
        FFFFFFFEFEFEFDFCFBC9958699361A99361A99361A2099361A99361A99361AB7
        705CFDFAFAFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDFCFBBD7D6B99361A9936
        1A2099361A99361AA34A31F2E6E3FEFEFEFFFFFFFEFEFEFEFEFEFFFFFFFEFEFE
        FEFEFEFFFFFFFEFEFEFEFEFEFFFFFFFEFEFEFEFEFEFFFFFFFEFEFEFEFEFEFFFF
        FFFEFEFEF5EDEAA7523A99361A2099361A99361AD4AA9EFFFFFFFEFEFEFFFFFF
        FFFFFFFFFFFFF1E4E0D2A79AFBF8F7FFFFFFFFFFFFFEFEFEFFFFFFFCFBFAD4AA
        9EEEDED9FFFFFFFEFEFEFFFFFFFFFFFFFEFEFEDCBAB099361A2099361AA54E35
        F7EFEDFFFFFFFFFFFFFFFFFFFFFFFFF2E6E2AB594299361ABD7D6AFAF6F4FFFF
        FFFFFFFFFCF9F8C389799A381CA75139EEDED9FFFFFFFFFFFFFFFFFFFFFFFFF8
        F3F1AA57402099361AC18574FEFEFEFEFEFEFEFEFEFFFFFFFEFEFED6AEA39A38
        1C99361A99361ABD7D6BFBF8F7FCF9F9C3887799361A99361A99361ACFA093FE
        FEFEFFFFFFFEFEFEFEFEFEFFFFFFC893842099361ADDBBB2FFFFFFFFFFFFFEFE
        FEFFFFFFFFFFFFFDFCFBC3887799361A99361A99361ABA7764BF827099361A99
        361A99361ABD7D6BFBF8F7FEFEFEFFFFFFFFFFFFFEFEFEFFFFFFE4C9C2209936
        1AEEDED9FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBF7F6C3887799361A99
        361A99361A99361A99361A99361ABD7D6BFAF6F4FFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFF5EBE82099361AF4E9E6FFFFFFFEFEFEFEFEFEFFFFFFFEFEFEFE
        FEFEFFFFFFFCF9F9BF827099361A99361A99361A99361ABA7764FBF8F7FFFFFF
        FEFEFEFEFEFEFFFFFFFEFEFEFEFEFEFFFFFFF9F5F32099361AF5EBE8FFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFEFEFEFFFFFFFCF9F9BF817099361A99361A99361A
        99361AB97663FBF8F7FFFFFFFFFFFFFEFEFEFFFFFFFFFFFFFEFEFEFFFFFFFAF6
        F42099361AEEDED9FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFCF9F8C38877
        99361A99361A99361A99361A99361A99361ABD7D6BFAF6F4FFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFF5EBE82099361ADDBDB4FFFFFFFEFEFEFEFEFEFFFFFF
        FEFEFEFCFBFAC38A799A381C99361A99361ABA7764BF827099361A99361A9936
        1ABD7D6BFBF8F7FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEE3C9C12099361AC18473
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFD6AFA39A381C99361A99361ABD7D6AFCF9
        F8FCF9F9C3887799361A99361A99361ACFA093FEFEFEFFFFFFFFFFFFFEFEFEFF
        FFFFC893842099361AA54E35F7EFEDFFFFFFFFFFFFFFFFFFFFFFFFF1E3E0AA57
        4099361ABD7D6AFAF6F4FFFFFFFFFFFFFBF7F6C388779A381CA75139EEDED9FF
        FFFFFFFFFFFFFFFFFFFFFFF9F4F2AA57402099361A99361AD5ABA0FEFEFEFEFE
        FEFFFFFFFEFEFEFEFEFEF1E3E0D1A598FBF8F7FFFFFFFEFEFEFEFEFEFEFEFEFC
        FBFAD2A89CEEDED9FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEDCBAB099361A209936
        1A99361AA34A31F3E7E4FEFEFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFEFEFEFFFFFFFEFEFEFEFEFEFFFFFFFEFEFEFEFEFEFFFFFFFEFEFE
        F5EDEAA7523A99361A0099361A99361A99361AB7725EFDFAFAFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFDFCFBBE7F6D99361A99361A0099361A99361A99361A99
        361AC38877FCF9F9FEFEFEFEFEFEFFFFFFFEFEFEFEFEFEFFFFFFFEFEFEFEFEFE
        FFFFFFFEFEFEFEFEFEFFFFFFFEFEFEFEFEFEFCFBFAC9948599361A99361A9936
        1A0099361A99361A99361A99361A99361AB87360F4E9E6FEFEFEFFFFFFFFFFFF
        FEFEFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF5EDEABD7D
        6B99361A99361A99361A99361A0099361A99361A99361A99361A99361A99361A
        A44C33D6AFA3F8F1EFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFF9F4F2DAB6ACA7513999361A99361A99361A99361A99361A0099361A99361A
        99361A99361A99361A99361A99361A99361AA75139C48B7BE1C3BBF2E6E2F9F4
        F2F8F1EFF2E6E2E2C6BEC68E7FA8543C99361A99361A99361A99361A99361A99
        361A99361A00}
      Layout = blGlyphRight
      ParentFont = False
      OnClick = sbCancelarClick
    end
  end
  object edtHost: TEdit
    Left = 48
    Top = 79
    Width = 264
    Height = 25
    TabOrder = 2
    Text = 'localhost'
  end
  object edtLocalDoBanco: TEdit
    Left = 48
    Top = 252
    Width = 521
    Height = 25
    TabOrder = 3
  end
  object Button1: TButton
    Left = 575
    Top = 252
    Width = 75
    Height = 25
    Caption = 'Localizar ...'
    TabOrder = 4
    OnClick = Button1Click
  end
  object edtUserName: TEdit
    Left = 48
    Top = 137
    Width = 264
    Height = 25
    TabOrder = 5
  end
  object edtPassword: TEdit
    Left = 48
    Top = 193
    Width = 145
    Height = 25
    TabOrder = 6
  end
  object edtPort: TEdit
    Left = 199
    Top = 194
    Width = 113
    Height = 25
    NumbersOnly = True
    TabOrder = 7
  end
  object DataSource1: TDataSource
    OnDataChange = DataSource1DataChange
    Left = 576
    Top = 136
  end
  object OpenDialog1: TOpenDialog
    Filter = 'FireBird|*.FDB'
    Left = 504
    Top = 120
  end
end
