inherited formCadastroDeFuncionarios: TformCadastroDeFuncionarios
  Caption = 'Cadastro de funcion'#225'rios'
  ClientHeight = 610
  ClientWidth = 1049
  OnClose = FormClose
  ExplicitWidth = 1049
  ExplicitHeight = 610
  PixelsPerInch = 96
  TextHeight = 13
  inherited Panel1: TPanel
    Width = 1049
    ExplicitWidth = 1049
    inherited sbFechar: TSpeedButton
      Left = 997
      ExplicitLeft = 1029
    end
    inherited lblCaption: TLabel
      Left = 333
      Top = 11
      Width = 179
      Caption = 'Cadastro de funcion'#225'rios'
      ExplicitLeft = 365
      ExplicitTop = 11
      ExplicitWidth = 179
    end
  end
  inherited Panel2: TPanel
    Width = 1049
    ExplicitWidth = 1049
  end
  inherited Panel3: TPanel
    Top = 535
    Width = 1049
    ExplicitTop = 535
    ExplicitWidth = 1049
    inherited Label4: TLabel
      Left = 715
      ExplicitLeft = 747
    end
    inherited Label5: TLabel
      Left = 850
      ExplicitLeft = 882
    end
    inherited cbPesquisar: TComboBox
      Left = 715
      Items.Strings = (
        'C'#243'digo'
        'Nome'
        'Usu'#225'rio')
      ExplicitLeft = 715
    end
    inherited edtPesquisar: TEdit
      Left = 850
      OnKeyUp = edtPesquisarKeyUp
      ExplicitLeft = 850
    end
  end
  inherited CardPanel1: TCardPanel
    Width = 1049
    Height = 454
    ActiveCard = cardPanelCadatro
    ExplicitWidth = 1049
    ExplicitHeight = 454
    inherited cardPanelCadatro: TCard
      Width = 1049
      Height = 454
      ExplicitWidth = 1049
      ExplicitHeight = 454
      object Label1: TLabel
        Left = 14
        Top = 5
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
        Left = 15
        Top = 57
        Width = 36
        Height = 17
        Caption = 'Nome'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentFont = False
      end
      object Label3: TLabel
        Left = 13
        Top = 112
        Width = 116
        Height = 17
        Caption = 'Data de nascimento'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentFont = False
      end
      object Label6: TLabel
        Left = 136
        Top = 112
        Width = 67
        Height = 17
        Caption = 'Documento'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentFont = False
      end
      object lblCPF: TLabel
        Left = 14
        Top = 166
        Width = 21
        Height = 17
        Caption = 'CPF'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentFont = False
      end
      object Label8: TLabel
        Left = 14
        Top = 221
        Width = 22
        Height = 17
        Caption = 'CEP'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentFont = False
      end
      object Label9: TLabel
        Left = 14
        Top = 278
        Width = 55
        Height = 17
        Caption = 'Endere'#231'o'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentFont = False
      end
      object Label10: TLabel
        Left = 14
        Top = 336
        Width = 35
        Height = 17
        Caption = 'Bairro'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentFont = False
      end
      object Label11: TLabel
        Left = 13
        Top = 393
        Width = 48
        Height = 17
        Caption = 'N'#250'mero'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentFont = False
      end
      object Label12: TLabel
        Left = 464
        Top = 6
        Width = 41
        Height = 17
        Caption = 'Cidade'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentFont = False
      end
      object Label13: TLabel
        Left = 662
        Top = 112
        Width = 40
        Height = 17
        Caption = 'Celular'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentFont = False
      end
      object Label14: TLabel
        Left = 463
        Top = 163
        Width = 37
        Height = 17
        Caption = 'E-Mail'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentFont = False
      end
      object Label15: TLabel
        Left = 465
        Top = 221
        Width = 45
        Height = 17
        Caption = 'Usu'#225'rio'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentFont = False
      end
      object Label16: TLabel
        Left = 119
        Top = 393
        Width = 82
        Height = 17
        Caption = 'Complemento'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentFont = False
      end
      object Label18: TLabel
        Left = 464
        Top = 112
        Width = 49
        Height = 17
        Caption = 'Telefone'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentFont = False
      end
      object Label19: TLabel
        Left = 748
        Top = 220
        Width = 102
        Height = 17
        Caption = 'Confirme a senha'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentFont = False
      end
      object Label20: TLabel
        Left = 775
        Top = 5
        Width = 40
        Height = 17
        Caption = 'Estado'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentFont = False
      end
      object Label21: TLabel
        Left = 463
        Top = 57
        Width = 101
        Height = 17
        Caption = 'Data de cadastro'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentFont = False
      end
      object Label22: TLabel
        Left = 668
        Top = 57
        Width = 106
        Height = 17
        Caption = 'Data de demiss'#227'o'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentFont = False
      end
      object Label23: TLabel
        Left = 464
        Top = 278
        Width = 35
        Height = 17
        Caption = 'Status'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentFont = False
      end
      object Label24: TLabel
        Left = 641
        Top = 221
        Width = 35
        Height = 17
        Caption = 'Senha'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentFont = False
      end
      object Label25: TLabel
        Left = 590
        Top = 278
        Width = 67
        Height = 17
        Caption = 'Funcion'#225'rio'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentFont = False
      end
      object Label26: TLabel
        Left = 464
        Top = 393
        Width = 70
        Height = 17
        Caption = 'Observa'#231#227'o'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentFont = False
      end
      object Label27: TLabel
        Left = 873
        Top = 3
        Width = 26
        Height = 17
        Caption = 'Foto'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentFont = False
      end
      object sbPesquisarCep: TSpeedButton
        Left = 383
        Top = 242
        Width = 25
        Height = 25
        Flat = True
        Glyph.Data = {
          F6060000424DF606000000000000360000002800000018000000180000000100
          180000000000C0060000C30E0000C30E00000000000000000000FFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF2E5E5AA5454881010A14242EB
          D7D7FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF2E5E59C38388000
          00800000800000A14242FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF6EDED
          9A3434800000800000800000800000881010FFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFF6EDEDD7AFAFBA7474A95252A44848AC5858C18383E1C3C3FBF7F7FF
          FFFFF2E5E59A3434800000800000800000800000800000AA5454FFFFFFFFFFFF
          FFFFFFFFFFFFF6EDEDC183838D1A1A8102028000008000008000008000008000
          00830606983030CF9F9F9C38388000008000008000008000008000009C3838F2
          E5E5FFFFFFFFFFFFFFFFFFE9D3D3983030800000800000800000800000800000
          8000008000008000008000008000008000008000008000008000008000008000
          009A3434F2E5E5FFFFFFFFFFFFFFFFFFE6CDCD89121280000080000080000087
          0E0EA34646BC7878C28585B76E6E9C3838830606800000800000800000800000
          8000008000009A3434F6EDEDFFFFFFFFFFFFFFFFFFF2E5E59326268000008000
          00820404B16262EDDBDBFEFDFDFFFFFFFFFFFFFFFFFFFCF9F9E3C7C7A0404080
          00008000008000008000009C3838F2E5E5FFFFFFFFFFFFFFFFFFFFFFFFB46868
          800000800000820404C68D8DFEFDFDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFBF7F7AE5C5C800000800000800000CF9F9FFFFFFFFFFFFFFFFFFFFF
          FFFFEBD7D7860C0C800000800000BA7474FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBF7F7A04040800000800000983030FBF7
          F7FFFFFFFFFFFFFFFFFFC38787800000800000902020F4E9E9FFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE3C7C7830606
          800000830606E1C3C3FFFFFFFFFFFFFFFFFFA24444800000800000B76E6EFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFCF9F99C3838800000800000C18383FFFFFFFFFFFFFFFFFF8D1A1A800000
          800000D6ADADFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFB76E6E800000800000AC5858FFFFFFFFFFFFFF
          FFFF860C0C800000800000E0C1C1FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC28585800000800000A448
          48FFFFFFFFFFFFFFFFFF8A1414800000800000DAB5B5FFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBC7878
          800000800000A95252FFFFFFFFFFFFFFFFFF9C3838800000800000C08181FFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFEFDFDA34646800000800000BA7474FFFFFFFFFFFFFFFFFFBA7474800000
          800000983030FAF5F5FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFEDDBDB870E0E800000810202D7AFAFFFFFFFFFFFFFFF
          FFFFE1C3C3830606800000810202CE9D9DFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFDFDB162628000008000008D1A1AF6ED
          EDFFFFFFFFFFFFFFFFFFFEFDFDA44848800000800000881010DFBFBFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC68D8D820404800000
          800000C18383FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE7CFCF8912128000008000
          00881010CE9D9DFAF5F5FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF4E9E9BA747482
          0404800000800000983030F6EDEDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          D3A7A7810202800000800000810202983030C08181DAB5B5E0C1C1D6ADADB76E
          6E902020800000800000800000891212E9D3D3FFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFD3A7A7891212800000800000800000800000800000
          800000800000800000800000800000800000932626E6CDCDFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE7CFCFA4484883060680
          0000800000800000800000800000800000800000860C0CB46868F2E5E5FFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFEFDFDE1C3C3B972729C38388A1414860C0C8D1A1AA24444C38787EBD7D7FF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF}
        OnClick = sbPesquisarCepClick
      end
      object Image1: TImage
        Left = 873
        Top = 26
        Width = 152
        Height = 156
        Stretch = True
      end
      object SpeedButton1: TSpeedButton
        Left = 873
        Top = 188
        Width = 152
        Height = 29
        Caption = 'Localizar imagem'
        Flat = True
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Segoe UI'
        Font.Style = []
        Glyph.Data = {
          F6060000424DF606000000000000360000002800000018000000180000000100
          180000000000C0060000C30E0000C30E00000000000000000000FFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF2E5E5AA5454881010A14242EB
          D7D7FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF2E5E59C38388000
          00800000800000A14242FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF6EDED
          9A3434800000800000800000800000881010FFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFF6EDEDD7AFAFBA7474A95252A44848AC5858C18383E1C3C3FBF7F7FF
          FFFFF2E5E59A3434800000800000800000800000800000AA5454FFFFFFFFFFFF
          FFFFFFFFFFFFF6EDEDC183838D1A1A8102028000008000008000008000008000
          00830606983030CF9F9F9C38388000008000008000008000008000009C3838F2
          E5E5FFFFFFFFFFFFFFFFFFE9D3D3983030800000800000800000800000800000
          8000008000008000008000008000008000008000008000008000008000008000
          009A3434F2E5E5FFFFFFFFFFFFFFFFFFE6CDCD89121280000080000080000087
          0E0EA34646BC7878C28585B76E6E9C3838830606800000800000800000800000
          8000008000009A3434F6EDEDFFFFFFFFFFFFFFFFFFF2E5E59326268000008000
          00820404B16262EDDBDBFEFDFDFFFFFFFFFFFFFFFFFFFCF9F9E3C7C7A0404080
          00008000008000008000009C3838F2E5E5FFFFFFFFFFFFFFFFFFFFFFFFB46868
          800000800000820404C68D8DFEFDFDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFBF7F7AE5C5C800000800000800000CF9F9FFFFFFFFFFFFFFFFFFFFF
          FFFFEBD7D7860C0C800000800000BA7474FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBF7F7A04040800000800000983030FBF7
          F7FFFFFFFFFFFFFFFFFFC38787800000800000902020F4E9E9FFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE3C7C7830606
          800000830606E1C3C3FFFFFFFFFFFFFFFFFFA24444800000800000B76E6EFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFCF9F99C3838800000800000C18383FFFFFFFFFFFFFFFFFF8D1A1A800000
          800000D6ADADFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFB76E6E800000800000AC5858FFFFFFFFFFFFFF
          FFFF860C0C800000800000E0C1C1FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC28585800000800000A448
          48FFFFFFFFFFFFFFFFFF8A1414800000800000DAB5B5FFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBC7878
          800000800000A95252FFFFFFFFFFFFFFFFFF9C3838800000800000C08181FFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFEFDFDA34646800000800000BA7474FFFFFFFFFFFFFFFFFFBA7474800000
          800000983030FAF5F5FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFEDDBDB870E0E800000810202D7AFAFFFFFFFFFFFFFFF
          FFFFE1C3C3830606800000810202CE9D9DFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFDFDB162628000008000008D1A1AF6ED
          EDFFFFFFFFFFFFFFFFFFFEFDFDA44848800000800000881010DFBFBFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC68D8D820404800000
          800000C18383FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE7CFCF8912128000008000
          00881010CE9D9DFAF5F5FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF4E9E9BA747482
          0404800000800000983030F6EDEDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          D3A7A7810202800000800000810202983030C08181DAB5B5E0C1C1D6ADADB76E
          6E902020800000800000800000891212E9D3D3FFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFD3A7A7891212800000800000800000800000800000
          800000800000800000800000800000800000932626E6CDCDFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE7CFCFA4484883060680
          0000800000800000800000800000800000800000860C0CB46868F2E5E5FFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFEFDFDE1C3C3B972729C38388A1414860C0C8D1A1AA24444C38787EBD7D7FF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF}
        ParentFont = False
        OnClick = SpeedButton1Click
      end
      object Label17: TLabel
        Left = 463
        Top = 336
        Width = 85
        Height = 17
        Caption = 'C'#243'd. Atividade'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentFont = False
      end
      object Label28: TLabel
        Left = 598
        Top = 336
        Width = 54
        Height = 17
        Caption = 'Atividade'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentFont = False
      end
      object SpeedButton2: TSpeedButton
        Left = 821
        Top = 357
        Width = 25
        Height = 25
        Flat = True
        Glyph.Data = {
          F6060000424DF606000000000000360000002800000018000000180000000100
          180000000000C0060000C30E0000C30E00000000000000000000FFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF2E5E5AA5454881010A14242EB
          D7D7FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF2E5E59C38388000
          00800000800000A14242FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF6EDED
          9A3434800000800000800000800000881010FFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFF6EDEDD7AFAFBA7474A95252A44848AC5858C18383E1C3C3FBF7F7FF
          FFFFF2E5E59A3434800000800000800000800000800000AA5454FFFFFFFFFFFF
          FFFFFFFFFFFFF6EDEDC183838D1A1A8102028000008000008000008000008000
          00830606983030CF9F9F9C38388000008000008000008000008000009C3838F2
          E5E5FFFFFFFFFFFFFFFFFFE9D3D3983030800000800000800000800000800000
          8000008000008000008000008000008000008000008000008000008000008000
          009A3434F2E5E5FFFFFFFFFFFFFFFFFFE6CDCD89121280000080000080000087
          0E0EA34646BC7878C28585B76E6E9C3838830606800000800000800000800000
          8000008000009A3434F6EDEDFFFFFFFFFFFFFFFFFFF2E5E59326268000008000
          00820404B16262EDDBDBFEFDFDFFFFFFFFFFFFFFFFFFFCF9F9E3C7C7A0404080
          00008000008000008000009C3838F2E5E5FFFFFFFFFFFFFFFFFFFFFFFFB46868
          800000800000820404C68D8DFEFDFDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFBF7F7AE5C5C800000800000800000CF9F9FFFFFFFFFFFFFFFFFFFFF
          FFFFEBD7D7860C0C800000800000BA7474FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBF7F7A04040800000800000983030FBF7
          F7FFFFFFFFFFFFFFFFFFC38787800000800000902020F4E9E9FFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE3C7C7830606
          800000830606E1C3C3FFFFFFFFFFFFFFFFFFA24444800000800000B76E6EFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFCF9F99C3838800000800000C18383FFFFFFFFFFFFFFFFFF8D1A1A800000
          800000D6ADADFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFB76E6E800000800000AC5858FFFFFFFFFFFFFF
          FFFF860C0C800000800000E0C1C1FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC28585800000800000A448
          48FFFFFFFFFFFFFFFFFF8A1414800000800000DAB5B5FFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBC7878
          800000800000A95252FFFFFFFFFFFFFFFFFF9C3838800000800000C08181FFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFEFDFDA34646800000800000BA7474FFFFFFFFFFFFFFFFFFBA7474800000
          800000983030FAF5F5FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFEDDBDB870E0E800000810202D7AFAFFFFFFFFFFFFFFF
          FFFFE1C3C3830606800000810202CE9D9DFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFDFDB162628000008000008D1A1AF6ED
          EDFFFFFFFFFFFFFFFFFFFEFDFDA44848800000800000881010DFBFBFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC68D8D820404800000
          800000C18383FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE7CFCF8912128000008000
          00881010CE9D9DFAF5F5FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF4E9E9BA747482
          0404800000800000983030F6EDEDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          D3A7A7810202800000800000810202983030C08181DAB5B5E0C1C1D6ADADB76E
          6E902020800000800000800000891212E9D3D3FFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFD3A7A7891212800000800000800000800000800000
          800000800000800000800000800000800000932626E6CDCDFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE7CFCFA4484883060680
          0000800000800000800000800000800000800000860C0CB46868F2E5E5FFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFEFDFDE1C3C3B972729C38388A1414860C0C8D1A1AA24444C38787EBD7D7FF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF}
        OnClick = SpeedButton2Click
      end
      object edtCodigo: TEdit
        Left = 14
        Top = 26
        Width = 275
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
      object edtNome: TEdit
        Left = 14
        Top = 77
        Width = 400
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
      object edtDocumento: TEdit
        Left = 136
        Top = 132
        Width = 278
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
      object edtCPF: TEdit
        Left = 13
        Top = 190
        Width = 400
        Height = 25
        CharCase = ecUpperCase
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentFont = False
        TabOrder = 4
        OnExit = edtCPFExit
      end
      object edtCEP: TEdit
        Left = 14
        Top = 242
        Width = 363
        Height = 25
        CharCase = ecUpperCase
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentFont = False
        TabOrder = 5
      end
      object edtEndereco: TEdit
        Left = 14
        Top = 300
        Width = 400
        Height = 25
        CharCase = ecUpperCase
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentFont = False
        TabOrder = 6
      end
      object edtBairro: TEdit
        Left = 13
        Top = 359
        Width = 400
        Height = 25
        CharCase = ecUpperCase
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentFont = False
        TabOrder = 7
      end
      object edtNumero: TEdit
        Left = 13
        Top = 416
        Width = 100
        Height = 25
        CharCase = ecUpperCase
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentFont = False
        TabOrder = 8
      end
      object edtComplemento: TEdit
        Left = 119
        Top = 416
        Width = 295
        Height = 25
        CharCase = ecUpperCase
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentFont = False
        TabOrder = 9
      end
      object edtCidade: TEdit
        Left = 464
        Top = 26
        Width = 305
        Height = 25
        CharCase = ecUpperCase
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentFont = False
        TabOrder = 10
      end
      object edtEMail: TEdit
        Left = 463
        Top = 186
        Width = 387
        Height = 25
        CharCase = ecUpperCase
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentFont = False
        TabOrder = 16
      end
      object edtUsuario: TEdit
        Left = 466
        Top = 244
        Width = 169
        Height = 25
        CharCase = ecUpperCase
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Segoe UI'
        Font.Style = []
        MaxLength = 20
        ParentFont = False
        TabOrder = 17
      end
      object edtSenha: TEdit
        Left = 639
        Top = 243
        Width = 103
        Height = 25
        CharCase = ecUpperCase
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Segoe UI'
        Font.Style = []
        MaxLength = 8
        NumbersOnly = True
        ParentFont = False
        PasswordChar = '*'
        TabOrder = 18
      end
      object edtConfirmaSenha: TEdit
        Left = 748
        Top = 243
        Width = 103
        Height = 25
        CharCase = ecUpperCase
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Segoe UI'
        Font.Style = []
        MaxLength = 8
        NumbersOnly = True
        ParentFont = False
        PasswordChar = '*'
        TabOrder = 19
      end
      object edtFuncionario: TEdit
        Left = 590
        Top = 300
        Width = 121
        Height = 25
        CharCase = ecUpperCase
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentFont = False
        ReadOnly = True
        TabOrder = 21
      end
      object edtObservacao: TEdit
        Left = 463
        Top = 414
        Width = 387
        Height = 25
        CharCase = ecUpperCase
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentFont = False
        TabOrder = 24
      end
      object edtDataNascimento: TMaskEdit
        Left = 14
        Top = 132
        Width = 115
        Height = 25
        EditMask = '00/00/0000'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Segoe UI'
        Font.Style = []
        MaxLength = 10
        ParentFont = False
        TabOrder = 2
        Text = '  /  /    '
      end
      object edtDataCadastro: TMaskEdit
        Left = 463
        Top = 77
        Width = 199
        Height = 25
        EditMask = '00/00/0000'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Segoe UI'
        Font.Style = []
        MaxLength = 10
        ParentFont = False
        TabOrder = 12
        Text = '  /  /    '
      end
      object edtDataDemissao: TMaskEdit
        Left = 668
        Top = 77
        Width = 182
        Height = 25
        EditMask = '00/00/0000'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Segoe UI'
        Font.Style = []
        MaxLength = 10
        ParentFont = False
        TabOrder = 13
        Text = '  /  /    '
      end
      object edtTelefone: TMaskEdit
        Left = 465
        Top = 132
        Width = 191
        Height = 25
        EditMask = '(00)0000-0000'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Segoe UI'
        Font.Style = []
        MaxLength = 13
        ParentFont = False
        TabOrder = 14
        Text = '(  )    -    '
      end
      object edtCelular: TMaskEdit
        Left = 662
        Top = 135
        Width = 185
        Height = 25
        EditMask = '(00)00000-0000'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Segoe UI'
        Font.Style = []
        MaxLength = 14
        ParentFont = False
        TabOrder = 15
        Text = '(  )     -    '
      end
      object edtEstado: TComboBox
        Left = 775
        Top = 26
        Width = 75
        Height = 25
        CharCase = ecUpperCase
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentFont = False
        TabOrder = 11
      end
      object edtStatus: TComboBox
        Left = 463
        Top = 301
        Width = 121
        Height = 25
        CharCase = ecUpperCase
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Segoe UI'
        Font.Style = []
        ItemIndex = 0
        ParentFont = False
        TabOrder = 20
        Text = 'ATIVO'
        Items.Strings = (
          'ATIVO'
          'INATIVO')
      end
      object edtCodigoAtividade: TEdit
        Left = 463
        Top = 359
        Width = 129
        Height = 25
        CharCase = ecUpperCase
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentFont = False
        TabOrder = 22
      end
      object edtAtividade: TEdit
        Left = 598
        Top = 359
        Width = 217
        Height = 25
        CharCase = ecUpperCase
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentFont = False
        TabOrder = 23
      end
      object GroupBox1: TGroupBox
        Left = 873
        Top = 278
        Width = 152
        Height = 161
        Caption = 'Op'#231#245'es do funcion'#225'rio'
        Color = clBtnFace
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentBackground = False
        ParentColor = False
        ParentFont = False
        TabOrder = 25
        object SpeedButton3: TSpeedButton
          Left = 11
          Top = 43
          Width = 125
          Height = 30
          Flat = True
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 15547709
          Font.Height = -16
          Font.Name = 'Segoe UI'
          Font.Style = [fsBold]
          Glyph.Data = {
            462C0000424D462C00000000000036000000280000007D0000001E0000000100
            180000000000102C0000120B0000120B00000000000000000000F0F0F0F0F0F0
            F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0
            F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0
            F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0
            F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0
            F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0
            F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0
            F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0
            F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0
            F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0
            F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0
            F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0
            F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F020F0F0F0F0F0F0F0F0F0F0F0F0F0F0
            F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0
            F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0
            F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0
            F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0
            F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0
            F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0
            F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0
            F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0
            F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0
            F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0
            F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0
            F0F0F0F0F0F0F0F0F020F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0
            F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0
            F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0
            F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0
            F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0
            F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0
            F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0
            F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0
            F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0
            F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0
            F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0
            F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0
            F020F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0
            F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0
            F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0
            F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0
            F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0
            F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0
            F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0
            F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0
            F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0
            F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0
            F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0
            F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F020F0F0F0F0F0F0
            F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0
            F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0
            F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0
            F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0
            F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0
            F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0
            F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0
            F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0
            F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0
            F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0
            F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0
            F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F020F0F0F0F0F0F0F0F0F0F0F0F0F0F0
            F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0
            F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0
            F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0
            F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0
            F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0
            F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0
            F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0
            F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0
            F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0
            F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0
            F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0
            F0F0F0F0F0F0F0F0F020F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0
            F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0
            F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0
            F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0
            F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0
            F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0
            F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0
            F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0
            F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0
            F0F0F0F0F0F0F0F0F0F0F2D8D8F2D4D4F2D4D4F2D4D4F2D4D4F2D4D4F2D4D4F2
            D4D4F2D4D4F2D4D4F2D4D4F2D4D4F2D4D4F2D4D4F2D4D4F2D4D4F2D4D4F2D4D4
            F2D4D4F1E5E5F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0
            F020F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0
            F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0
            F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0
            F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0
            F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0
            F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0
            F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0
            F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0
            F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0
            F0F0FD2626FA5757FB3A3AFC3333F95858F95858F95858F95858F95858F95858
            F95858F95858F95858F95858F95858FA5555FD1A1AF95858FB4040F68585F0F0
            F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F020F0F0F0F0F0F0
            F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0
            F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0
            F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0
            F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0
            F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0
            F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0
            F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0
            F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0
            F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0FB4040F1E7E7
            FA5555F3BDBDF0F0F0F0F0F0F0F0F0F3C7C7F95A5AFB4444FB4848F68787F0EA
            EAF0F0F0F0F0F0F0F0F0FA5555F3B9B9F4ACACF77D7DF69090F0F0F0F0F0F0F0
            F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F020F0F0F0F0F0F0F0F0F0F0F0F0F0F0
            F0EDC6C7EA9597E40E1AE40E1AE40E1AE40E1AE8797CEDC6C7F0F0F0F0F0F0EE
            DCDCEA9597E40E1AE40E1AE40E1AE7696DECBABCF0F0F0F0F0F0F0F0F0E9878A
            E40E1AE40E1AEDC6C7F0F0F0F0F0F0E6454AE40E1AE40E1AF0F0F0F0F0F0EEDC
            DCE40E1AE40E1AE7696DF0F0F0EEDCDCE40E1AE40E1AE9878AF0F0F0ECBABCE5
            2E35E40E1AE40E1AE40E1AEAA2A4EFE6E6F0F0F0ECBABCE52E35E40E1AE40E1A
            E40E1AEAA2A4EFE6E6F0F0F0F0F0F0F0F0F0EAA2A4E6454AE40E1AE40E1AE52E
            35EAA2A4F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0EAA2A4E52E35E40E1AE40E1AE4
            0E1AEAA2A4EEDCDCF0F0F0EAA2A4E40E1AE40E1AE40E1AE6454AEAA2A4F0F0F0
            F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0FD2626FA5151F77979F0F0F0F0F0
            F0F0F0F0F2CECEFA3E3EF3B9B9F2D0D0F2CECEF77D7DF86B6BF0F0F0F0F0F0F0
            F0F0F2CCCCFB4444FA4F4FF77B7BFB3E3EF0E8E8F1E5E5F0F0F0F0F0F0F0F0F0
            F0F0F0F0F0F0F0F0F020F0F0F0F0F0F0F0F0F0F0F0F0EAA2A4E40E1AE40E1AE4
            0E1AE40E1AE40E1AE40E1AE40E1AEAA2A4F0F0F0EEDCDCE52E35E40E1AE40E1A
            E40E1AE40E1AE40E1AE40E1AEAA2A4F0F0F0F0F0F0E9878AE40E1AE40E1AEDC6
            C7F0F0F0F0F0F0E6454AE40E1AE40E1AF0F0F0F0F0F0EEDCDCE40E1AE40E1AE7
            696DF0F0F0EEDCDCE40E1AE40E1AE9878AF0F0F0E9878AE40E1AE40E1AE40E1A
            E40E1AE40E1AE6454AF0F0F0E9878AE40E1AE40E1AE40E1AE40E1AE40E1AE645
            4AF0F0F0F0F0F0E7696DE40E1AE40E1AE40E1AE40E1AE40E1AE40E1AE6585DEF
            E6E6F0F0F0F0F0F0E7696DE40E1AE40E1AE40E1AE40E1AE40E1AE40E1AEDC6C7
            F0F0F0E6454AE40E1AE40E1AE40E1AE40E1AE40E1AE9878AF0F0F0F0F0F0F0F0
            F0F0F0F0F0F0F0F0F0F0FC3131F3C5C5F1DDDDF5A3A3F1E7E7F0F0F0F2D8D8FB
            3838FA4949FA4B4BFB4242FA4F4FF87171F0F0F0F0F0F0F3C7C7F4B4B4F1E3E3
            F78181F77B7BFA3E3EF4AEAEF78787F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0
            F020F0F0F0F0F0F0F0F0F0ECBABCE40E1AE40E1AE40E1AEA9597F0F0F0F0F0F0
            F0F0F0EAA2A4EAA2A4F0F0F0E7696DE40E1AE40E1AEBAFB0F0F0F0EFE6E6E658
            5DE40E1AE40E1AEED1D2F0F0F0E9878AE40E1AE40E1AEDC6C7F0F0F0F0F0F0E6
            454AE40E1AE40E1AF0F0F0F0F0F0EEDCDCE40E1AE40E1AE7696DF0F0F0EEDCDC
            E40E1AE40E1AE9878AF0F0F0EAA2A4ECBABCF0F0F0F0F0F0E9878AE40E1AE40E
            1AEED1D2EAA2A4ECBABCF0F0F0F0F0F0E9878AE40E1AE40E1AEED1D2EBAFB0E4
            0E1AE40E1AE7696DF0F0F0F0F0F0EAA2A4E40E1AE40E1AEAA2A4F0F0F0ECBABC
            E40E1AE40E1AE6585DEEDCDCF0F0F0F0F0F0EA9597EDC6C7F0F0F0E9878AEED1
            D2F0F0F0F0F0F0E6454AE40E1AE52E35F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0
            F0F0FB4040F0ECECFA5555FA5353F68181F0F0F0F0F0F0F3C1C1F5A5A5F96464
            F68787F5A1A1F0EAEAF0F0F0F0EEEEFC2B2BFA3E3EF3C3C3F4ACACF77B7BFA3E
            3EF4A8A8F77F7FF69090F0F0F0F0F0F0F0F0F0F0F0F0F0F0F020F0F0F0F0F0F0
            F0F0F0E6454AE40E1AE40E1AEAA2A4F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0
            F0EFE6E6E40E1AE40E1AE6585DF0F0F0F0F0F0F0F0F0ECBABCE40E1AE40E1AEA
            A2A4F0F0F0E9878AE40E1AE40E1AEDC6C7F0F0F0F0F0F0E6454AE40E1AE40E1A
            F0F0F0F0F0F0EEDCDCE40E1AE40E1AE7696DF0F0F0EEDCDCE40E1AE40E1AE987
            8AF0F0F0F0F0F0F0F0F0EDC6C7EA9597E40E1AE40E1AE40E1AEED1D2F0F0F0F0
            F0F0EDC6C7EA9597E40E1AE40E1AE40E1AEED1D2E8797CE40E1AE40E1AEED1D2
            F0F0F0F0F0F0F0F0F0E52E35E40E1AE6585DF0F0F0EA9597E40E1AE40E1AECBA
            BCF0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0EBAFB0E8797CE4
            0E1AE40E1AE52E35F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0FB3E3EF0ECEC
            F69696FB3838F4B6B6F0F0F0F0F0F0F1E5E5FB4242F3BBBBF86F6FF59696F0F0
            F0F0F0F0F0F0F0F95E5EFA4949F1DDDDF4AAAAF77B7BFB3E3EF4A8A8F77D7DFB
            4040F0F0F0F0F0F0F0F0F0F0F0F0F0F0F020F0F0F0F0F0F0EED1D2E40E1AE40E
            1AE52E35F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0EEDCDCE40E1AE4
            0E1AE7696DF0F0F0F0F0F0F0F0F0EDC6C7E40E1AE40E1AE9878AF0F0F0E9878A
            E40E1AE40E1AEDC6C7F0F0F0F0F0F0E6454AE40E1AE40E1AF0F0F0F0F0F0EEDC
            DCE40E1AE40E1AE7696DF0F0F0EEDCDCE40E1AE40E1AE9878AF0F0F0EFE6E6E6
            585DE40E1AE40E1AE40E1AE40E1AEAA2A4F0F0F0EFE6E6E6585DE40E1AE40E1A
            E40E1AE40E1AEAA2A4F0F0F0E7696DE40E1AE40E1AF0F0F0F0F0F0F0F0F0F0F0
            F0E6454AE40E1AE40E1AF0F0F0E9878AE40E1AE40E1AE40E1AE40E1AE40E1AE4
            0E1AE40E1AE40E1AF0F0F0EED1D2E52E35E40E1AE40E1AE40E1AE40E1AEDC6C7
            F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0FD1818F95C5CF2D4D4F0F0F0F0F0
            F0F0F0F0F0F0F0F1DFDFFA4040F0ECECF59F9FF77D7DF0F0F0F0F0F0F0F0F0F0
            F0F0F0EEEEF59B9BFC2F2FF77B7BFA3E3EF4A8A8F77D7DFA4040F0F0F0F0F0F0
            F0F0F0F0F0F0F0F0F020F0F0F0F0F0F0ECBABCE40E1AE40E1AE8797CF0F0F0F0
            F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0E40E1AE40E1AE6585DF0F0F0
            F0F0F0F0F0F0ECBABCE40E1AE40E1AEA9597F0F0F0E9878AE40E1AE40E1AECBA
            BCF0F0F0F0F0F0E52E35E40E1AE40E1AEFE6E6F0F0F0EED1D2E40E1AE40E1AE7
            696DF0F0F0EEDCDCE40E1AE40E1AE9878AF0F0F0EA9597E40E1AE40E1AE6454A
            EAA2A4EFE6E6F0F0F0F0F0F0EA9597E40E1AE40E1AE6454AEAA2A4EFE6E6F0F0
            F0F0F0F0E8797CE40E1AE40E1AEED1D2F0F0F0F0F0F0F0F0F0E52E35E40E1AE6
            454AF0F0F0EA9597E40E1AE40E1AE40E1AE40E1AE40E1AE40E1AE40E1AE52E35
            F0F0F0E6585DE40E1AE40E1AE7696DEAA2A4F0F0F0F0F0F0F0F0F0F0F0F0F0F0
            F0F0F0F0F0F0F0F0F0F0FA4040F4B4B4FB3A3AF1E3E3F0F0F0F0F0F0F0F0F0F0
            F0F0F69696FB3E3EFA4D4DF1D9D9F0F0F0F0F0F0F0F0F0F0F0F0F68C8CF96060
            F5A1A1F77B7BFB3E3EF4A8A8F77D7DFA4040F0F0F0F0F0F0F0F0F0F0F0F0F0F0
            F020F0F0F0F0F0F0EBAFB0E40E1AE40E1AE9878AF0F0F0F0F0F0F0F0F0F0F0F0
            F0F0F0F0F0F0F0F0F0F0F0F0E7696DE40E1AE40E1AEAA2A4F0F0F0EFE6E6E658
            5DE40E1AE40E1AEDC6C7F0F0F0E9878AE40E1AE40E1AE7696DF0F0F0ECBABCE4
            0E1AE40E1AE40E1AEAA2A4F0F0F0EA9597E40E1AE40E1AE8797CF0F0F0EEDCDC
            E40E1AE40E1AE9878AF0F0F0E9878AE40E1AE40E1AEED1D2F0F0F0EED1D2EA95
            97F0F0F0E9878AE40E1AE40E1AEED1D2F0F0F0EED1D2EA9597F0F0F0EBAFB0E4
            0E1AE40E1AE7696DEFE6E6F0F0F0EAA2A4E40E1AE40E1AE9878AF0F0F0EDC6C7
            E40E1AE40E1AEAA2A4F0F0F0F0F0F0E6585DE40E1AE7696DF0F0F0E6454AE40E
            1AE52E35F0F0F0F0F0F0ECBABCEAA2A4F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0
            F0F0FB3838F2CCCCF77373F78585F2D0D0F2D0D0F2D0D0F2D0D0F2D0D0F3C5C5
            F2CACAF2D0D0F2D0D0F2D0D0F2D0D0F2CCCCFB3838F3C3C3F69494F77B7BFB3E
            3EF4A8A8F77D7DFB4040F0F0F0F0F0F0F0F0F0F0F0F0F0F0F020F0F0F0F0F0F0
            EDC6C7E40E1AE40E1AE8797CF0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0
            F0F0F0F0EEDCDCE52E35E40E1AE40E1AE40E1AE40E1AE40E1AE40E1AE9878AF0
            F0F0F0F0F0E9878AE40E1AE40E1AE52E35E40E1AE40E1AE40E1AE40E1AE6585D
            E40E1AE40E1AE40E1AE40E1AE40E1AEBAFB0F0F0F0EEDCDCE40E1AE40E1AE987
            8AF0F0F0ECBABCE40E1AE40E1AE40E1AE40E1AE40E1AE7696DF0F0F0ECBABCE4
            0E1AE40E1AE40E1AE40E1AE40E1AE7696DF0F0F0F0F0F0E7696DE40E1AE40E1A
            E40E1AE40E1AE40E1AE40E1AE6454AEFE6E6F0F0F0F0F0F0EA9597E40E1AE40E
            1AE40E1AE40E1AE40E1AE40E1AEDC6C7F0F0F0EA9597E40E1AE40E1AE40E1AE4
            0E1AE40E1AEAA2A4F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F96868F95A5A
            F95A5AF95A5AF95A5AF95A5AF95A5AF95A5AF95A5AF95A5AF95A5AF95A5AF95A
            5AF95A5AF95A5AF95A5AF95A5AF95A5AF95A5AF4AEAEFA3E3EF4A8A8F77D7DFA
            4040F0F0F0F0F0F0F0F0F0F0F0F0F0F0F020F0F0F0F0F0F0EFE6E6E40E1AE40E
            1AE52E35EFE6E6F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0EF
            E6E6EAA2A4E40E1AE40E1AE40E1AE6585DEBAFB0F0F0F0F0F0F0F0F0F0E9878A
            E40E1AE40E1AEDC6C7EA9597E40E1AE40E1AE7696DEEDCDCEDC6C7E6585DE40E
            1AE40E1AEAA2A4F0F0F0F0F0F0EEDCDCE40E1AE40E1AE9878AF0F0F0F0F0F0EC
            BABCE7696DE40E1AE40E1AE40E1AEAA2A4F0F0F0F0F0F0ECBABCE7696DE40E1A
            E40E1AE40E1AEAA2A4F0F0F0F0F0F0F0F0F0EAA2A4E6454AE40E1AE40E1AE40E
            1AEAA2A4EFE6E6F0F0F0F0F0F0F0F0F0F0F0F0EBAFB0E6454AE40E1AE40E1AE7
            696DEDC6C7F0F0F0F0F0F0F0F0F0EAA2A4E6454AE40E1AE40E1AE52E35EDC6C7
            F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F4B6B6FA5757F95757FA57
            57F95757F95757FA5757FA5757F95757FA5757FA5757FA5757F95757FA5757FA
            5757F95757FA5757FA5757FA5555FD2222F4A8A8F77D7DFA4040F0F0F0F0F0F0
            F0F0F0F0F0F0F0F0F020F0F0F0F0F0F0F0F0F0E9878AE40E1AE40E1AEA9597F0
            F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0
            F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0
            F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0
            F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0
            F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0
            F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0
            F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0
            F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0
            F0F0F0F0F0F0F0F0F0F0F0F0F0F1E5E5F2D4D4F4B4B4F4B0B0F4B0B0F4B0B0F4
            B0B0F4B0B0F4B0B0F4B0B0F4B0B0F4B0B0F4B0B0F4B0B0F4B0B0F4B0B0F4B0B0
            F4B0B0F4B0B0F4B2B2F69090F77D7DFB4040F0F0F0F0F0F0F0F0F0F0F0F0F0F0
            F020F0F0F0F0F0F0F0F0F0EEDCDCE52E35E40E1AE40E1AE9878AEFE6E6F0F0F0
            F0F0F0EAA2A4EAA2A4F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0
            F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0
            F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0
            F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0
            F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0
            F0F0E7696DEA9597EFE6E6E8797CE40E1AE7696DF0F0F0F0F0F0F0F0F0F0F0F0
            F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0
            F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0
            F0F0F0F0F0F0F0F0F0F0F0F86B6BF95C5CF95C5CF95C5CF95C5CF95C5CF95C5C
            F95C5CF95C5CF95C5CF95C5CF95C5CF95C5CF95C5CF95C5CF95C5CF95C5CF95C
            5CF95C5CF4B0B0FA4040F0F0F0F0F0F0F0F0F0F0F0F0F0F0F020F0F0F0F0F0F0
            F0F0F0F0F0F0EED1D2E6454AE40E1AE40E1AE40E1AE40E1AE40E1AE40E1AEAA2
            A4F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0
            F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0
            F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0EFE6E6E6585DE40E1AEAA2
            A4F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0
            F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0EA9597E40E1A
            E40E1AE40E1AE40E1AE40E1AECBABCF0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0
            F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0
            F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0
            F0F0F0F0F0F0F4B4B4F95858F95858F95858F95858F95858F95858F95858F958
            58F95858F95858F95858F95858F95858F95858F95858F95858F95858FA5757FD
            2626F0F0F0F0F0F0F0F0F0F0F0F0F0F0F020F0F0F0F0F0F0F0F0F0F0F0F0F0F0
            F0F0F0F0EAA2A4E6585DE40E1AE40E1AE40E1AE52E35EDC6C7F0F0F0F0F0F0F0
            F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0
            F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0
            F0F0F0F0F0F0F0F0F0F0F0F0F0EDC6C7E40E1AE40E1AE6454AF0F0F0F0F0F0F0
            F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0
            F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0EEDCDCE6454AE40E1AEAA2A4F0F0
            F0E6585DEAA2A4F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0
            F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0
            F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F1E5
            E5F2D4D4F2D4D4F2D4D4F2D4D4F2D4D4F2D4D4F2D4D4F2D4D4F2D4D4F2D4D4F2
            D4D4F2D4D4F2D4D4F2D4D4F2D4D4F2D4D4F2D4D4F2D4D4F2D8D8F0F0F0F0F0F0
            F0F0F0F0F0F0F0F0F020F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0
            F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0
            F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0
            F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0
            F0F0F0F0F0EFE6E6E6585DE40E1AEAA2A4F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0
            F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0
            F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0
            F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0
            F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0
            F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0
            F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0
            F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0
            F020F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0
            F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0
            F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0
            F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0
            F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0
            F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0
            F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0
            F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0
            F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0
            F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0
            F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0
            F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F020F0F0F0F0F0F0
            F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0
            F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0
            F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0
            F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0
            F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0
            F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0
            F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0
            F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0
            F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0
            F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0
            F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0
            F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F062F0F0F0F0F0F0F0F0F0F0F0F0F0F0
            F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0
            F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0
            F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0
            F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0
            F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0
            F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0
            F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0
            F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0
            F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0
            F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0
            F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0
            F0F0F0F0F0F0F0F0F020F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0
            F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0
            F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0
            F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0
            F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0
            F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0
            F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0
            F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0
            F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0
            F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0
            F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0
            F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0
            F066F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0
            F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0
            F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0
            F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0
            F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0
            F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0
            F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0
            F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0
            F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0
            F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0
            F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0
            F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F020F0F0F0F0F0F0
            F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0
            F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0
            F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0
            F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0
            F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0
            F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0
            F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0
            F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0
            F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0
            F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0
            F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0
            F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F074F0F0F0F0F0F0F0F0F0F0F0F0F0F0
            F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0
            F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0
            F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0
            F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0
            F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0
            F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0
            F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0
            F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0
            F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0
            F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0
            F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0
            F0F0F0F0F0F0F0F0F077}
          ParentFont = False
          OnClick = SpeedButton3Click
        end
        object SpeedButton4: TSpeedButton
          Left = 11
          Top = 74
          Width = 125
          Height = 30
          Flat = True
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 15547709
          Font.Height = -16
          Font.Name = 'Segoe UI'
          Font.Style = [fsBold]
          Glyph.Data = {
            462C0000424D462C00000000000036000000280000007D0000001E0000000100
            180000000000102C0000120B0000120B00000000000000000000F0F0F0F0F0F0
            F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0
            F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0
            F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0
            F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0
            F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0
            F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0
            F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0
            F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0
            F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0
            F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0
            F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0
            F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F020F0F0F0F0F0F0F0F0F0F0F0F0F0F0
            F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0
            F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0
            F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0
            F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0
            F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0
            F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0
            F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0
            F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0
            F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0
            F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0
            F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0
            F0F0F0F0F0F0F0F0F020F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0
            F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0
            F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0
            F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0
            F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0
            F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0
            F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0
            F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0
            F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0
            F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0
            F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0
            F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0
            F020F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0
            F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0
            F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0
            F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0
            F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0
            F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0
            F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0
            F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0
            F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0
            F0F0F0F0F0F0F0F0F0F0F0F0F0F0F78585FD0B0BFE0B0BFE0B0BFE0B0BFE0B0B
            FE0B0BFE0B0BFE0B0BFE0B0BFD0B0BFE0B0BFE0B0BFD0B0BFE0B0BFE0B0BFD0B
            0BFE0B0BFE0B0BF77979F0F0F0F0F0F0F0F0F0F0F0F0F0F0F020F0F0F0F0F0F0
            F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0
            F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0
            F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0
            F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0
            F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0
            F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0
            F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0
            F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0
            F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0
            F0F0F0F0F0F0F95E5EFF0000FC3737FB4040FB4040FB4040FB4040FB4040FB40
            40FB4040FB4040FB4040FB4040FB4040FB4040FB4040FB4040FB3838FF0202FA
            5353F0F0F0F0F0F0F0F0F0F0F0F0F0F0F020F0F0F0F0F0F0F0F0F0F0F0F0F0F0
            F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0
            F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0
            F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0
            F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0
            F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0
            F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0
            F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0
            F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0
            F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F95E
            5EFE0202F2D4D4F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0
            F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F2D8D8FD0909F95353F0F0F0F0F0F0
            F0F0F0F0F0F0F0F0F020F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0
            F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0
            F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0
            F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0
            F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0
            F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0
            F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0
            F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0
            F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0
            F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F95E5EFE0202F2D2D2F0
            F0F0F0F0F0F0E8E8F1E7E7F0EEEEF0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0
            F0F0F0F0F0F0F0F0F0F2D8D8FE0909FA5353F0F0F0F0F0F0F0F0F0F0F0F0F0F0
            F020F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0
            F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0
            F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0
            F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0
            F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0
            F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0
            F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0
            F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0
            F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0
            F0F0F0F0F0F0F0F0F0F0F0F0F0F0F95E5EFF0202F2D2D2F0F0F0F2D2D2FC2626
            FC2020F59494F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0
            F0F1D8D8FE0909FA5353F0F0F0F0F0F0F0F0F0F0F0F0F0F0F020F0F0F0F0F0F0
            F0F0F0EAA2A4E40E1AE40E1AEDC6C7F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0
            F0F0F0F0EFE6E6EA9597E40E1AE40E1AE40E1AE6454AEAA2A4F0F0F0F0F0F0E9
            878AE40E1AE40E1AEDC6C7F0F0F0F0F0F0F0F0F0EBAFB0E40E1AE40E1AEAA2A4
            F0F0F0F0F0F0E9878AE40E1AE40E1AEDC6C7F0F0F0F0F0F0E6454AE40E1AE40E
            1AF0F0F0F0F0F0E6454AE40E1AE6454AF0F0F0EED1D2E6585DE40E1AE40E1AE4
            0E1AE9878AEED1D2F0F0F0EED1D2E6585DE40E1AE40E1AE40E1AE9878AEED1D2
            F0F0F0F0F0F0F0F0F0ECBABCE7696DE40E1AE40E1AE40E1AEA9597EEDCDCF0F0
            F0F0F0F0F0F0F0F0F0F0ECBABCE6585DE40E1AE40E1AE40E1AE9878AEDC6C7F0
            F0F0ECBABCE52E35E40E1AE40E1AE40E1AEAA2A4EFE6E6F0F0F0F0F0F0F0F0F0
            F0F0F0F0F0F0F95E5EFE0202F2D4D4F0F0F0F3C5C5FE0D0DF77D7DFB2B2BF4B4
            B4F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F2D8D8FD0909F9
            5353F0F0F0F0F0F0F0F0F0F0F0F0F0F0F020F0F0F0F0F0F0F0F0F0EAA2A4E40E
            1AE40E1AEDC6C7F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0EEDCDCE6454AE4
            0E1AE40E1AE40E1AE40E1AE40E1AE40E1AF0F0F0F0F0F0E9878AE40E1AE40E1A
            EDC6C7F0F0F0F0F0F0F0F0F0EBAFB0E40E1AE40E1AEAA2A4F0F0F0F0F0F0E987
            8AE40E1AE40E1AEDC6C7F0F0F0F0F0F0E6454AE40E1AE40E1AF0F0F0F0F0F0E6
            454AE40E1AE6454AF0F0F0EBAFB0E40E1AE40E1AE40E1AE40E1AE40E1AE40E1A
            EEDCDCEBAFB0E40E1AE40E1AE40E1AE40E1AE40E1AE40E1AEEDCDCF0F0F0EAA2
            A4E40E1AE40E1AE40E1AE40E1AE40E1AE40E1AE52E35EED1D2F0F0F0F0F0F0EA
            A2A4E40E1AE40E1AE40E1AE40E1AE40E1AE40E1AEAA2A4F0F0F0E9878AE40E1A
            E40E1AE40E1AE40E1AE40E1AE6454AF0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F95E
            5EFE0202F2D2D2F0F0F0F3C5C5FF0808FD1111F68E8EFC2222F59F9FF0F0F0F0
            F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F2D8D8FE0909FA5353F0F0F0F0F0F0
            F0F0F0F0F0F0F0F0F020F0F0F0F0F0F0F0F0F0EAA2A4E40E1AE40E1AEDC6C7F0
            F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0EA9597E40E1AE40E1AE8797CF0F0F0
            F0F0F0EEDCDCE8797CF0F0F0F0F0F0E9878AE40E1AE40E1AEDC6C7F0F0F0F0F0
            F0F0F0F0EBAFB0E40E1AE40E1AEAA2A4F0F0F0F0F0F0E9878AE40E1AE40E1AED
            C6C7F0F0F0F0F0F0E6454AE40E1AE40E1AF0F0F0F0F0F0E6454AE40E1AE6454A
            F0F0F0EBAFB0EAA2A4F0F0F0F0F0F0EBAFB0E40E1AE40E1AEAA2A4EBAFB0EAA2
            A4F0F0F0F0F0F0EBAFB0E40E1AE40E1AEAA2A4EEDCDCE40E1AE40E1AE6454AEE
            DCDCF0F0F0EDC6C7E40E1AE40E1AE7696DF0F0F0EFE6E6E40E1AE40E1AE52E35
            EDC6C7F0F0F0F0F0F0EBAFB0EAA2A4F0F0F0EAA2A4ECBABCF0F0F0F0F0F0E987
            8AE40E1AE40E1AEED1D2F0F0F0F0F0F0F0F0F0F0F0F0F95E5EFF0202F2D2D2F0
            F0F0F1DFDFFC3737FF0000FC1E1EF68585FD1E1EF69898F3BBBBF1DBDBF1DFDF
            F0EEEEF0F0F0F0F0F0F1D8D8FE0909FA5353F0F0F0F0F0F0F0F0F0F0F0F0F0F0
            F020F0F0F0F0F0F0F0F0F0EAA2A4E40E1AE40E1AEDC6C7F0F0F0F0F0F0F0F0F0
            F0F0F0F0F0F0F0F0F0E6585DE40E1AE40E1AEFE6E6F0F0F0F0F0F0F0F0F0F0F0
            F0F0F0F0F0F0F0E9878AE40E1AE40E1AEDC6C7F0F0F0F0F0F0F0F0F0EBAFB0E4
            0E1AE40E1AEAA2A4F0F0F0F0F0F0E9878AE40E1AE40E1AEDC6C7F0F0F0F0F0F0
            E6454AE40E1AE40E1AF0F0F0F0F0F0E6454AE40E1AE6454AF0F0F0F0F0F0F0F0
            F0EEDCDCEAA2A4E52E35E40E1AE40E1AEAA2A4F0F0F0F0F0F0EEDCDCEAA2A4E5
            2E35E40E1AE40E1AEAA2A4EAA2A4E40E1AE40E1AEAA2A4F0F0F0F0F0F0F0F0F0
            E8797CE40E1AE40E1AEFE6E6ECBABCE40E1AE40E1AEA9597F0F0F0F0F0F0F0F0
            F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0EDC6C7EA9597E40E1AE40E1AE40E1AEE
            D1D2F0F0F0F0F0F0F0F0F0F0F0F0F95E5EFE0202F2D4D4F0F0F0F0F0F0F2D8D8
            FB3131FE0000FD2424F69494F77979F94F4FFA5555FC3333F59D9DF0F0F0F0F0
            F0F2D8D8FD0909FA5353F0F0F0F0F0F0F0F0F0F0F0F0F0F0F020F0F0F0F0F0F0
            F0F0F0EAA2A4E40E1AE40E1AEDC6C7F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0
            F0E6454AE40E1AE40E1AE40E1AE40E1AE40E1AE40E1AE40E1AE7696DF0F0F0E9
            878AE40E1AE40E1AEDC6C7F0F0F0F0F0F0F0F0F0EBAFB0E40E1AE40E1AEAA2A4
            F0F0F0F0F0F0E9878AE40E1AE40E1AEDC6C7F0F0F0F0F0F0E6454AE40E1AE40E
            1AF0F0F0F0F0F0E6454AE40E1AE6454AF0F0F0F0F0F0E9878AE40E1AE40E1AE4
            0E1AE40E1AE7696DF0F0F0F0F0F0E9878AE40E1AE40E1AE40E1AE40E1AE7696D
            F0F0F0EAA2A4E40E1AE40E1AEDC6C7F0F0F0F0F0F0F0F0F0E9878AE40E1AE40E
            1AEDC6C7EBAFB0E40E1AE40E1AE40E1AE40E1AE40E1AE40E1AE40E1AE40E1AED
            C6C7EFE6E6E6585DE40E1AE40E1AE40E1AE40E1AEAA2A4F0F0F0F0F0F0F0F0F0
            F0F0F0F0F0F0F95E5EFE0202F2D2D2F0F0F0F0F0F0F0F0F0F1DFDFFC3131FF00
            00FD0F0FFC2424F95353F95C5CF69292FC3333F2CCCCF0F0F0F2D8D8FE0909FA
            5353F0F0F0F0F0F0F0F0F0F0F0F0F0F0F020F0F0F0F0F0F0F0F0F0EAA2A4E40E
            1AE40E1AE40E1AE40E1AE40E1AE7696DEBAFB0F0F0F0F0F0F0E6585DE40E1AE4
            0E1AE40E1AE40E1AE40E1AE40E1AE40E1AE8797CF0F0F0E9878AE40E1AE40E1A
            ECBABCF0F0F0F0F0F0F0F0F0EBAFB0E40E1AE40E1AEA9597F0F0F0F0F0F0E879
            7CE40E1AE40E1AECBABCF0F0F0F0F0F0E52E35E40E1AE40E1AF0F0F0F0F0F0E6
            454AE40E1AE6454AF0F0F0ECBABCE40E1AE40E1AE40E1AEAA2A4EED1D2F0F0F0
            F0F0F0ECBABCE40E1AE40E1AE40E1AEAA2A4EED1D2F0F0F0F0F0F0EAA2A4E40E
            1AE40E1AEAA2A4F0F0F0F0F0F0F0F0F0E8797CE40E1AE40E1AEEDCDCECBABCE4
            0E1AE40E1AE40E1AE40E1AE40E1AE40E1AE40E1AE40E1AEED1D2EA9597E40E1A
            E40E1AE6454AEAA2A4EFE6E6F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F95E
            5EFF0202F2D2D2F0F0F0F0F0F0F0F0F0F0F0F0F2D6D6FD2424FF0000FF0000FF
            0000FF0000FE1313F95555F3BDBDF0F0F0F1D8D8FE0909FA5555F0F0F0F0F0F0
            F0F0F0F0F0F0F0F0F020F0F0F0F0F0F0F0F0F0EAA2A4E40E1AE40E1AE40E1AE4
            0E1AE40E1AE40E1AE40E1AE9878AF0F0F0EAA2A4E40E1AE40E1AEDC6C7F0F0F0
            EEDCDCE52E35E40E1AEAA2A4F0F0F0E9878AE40E1AE40E1AE6585DEFE6E6F0F0
            F0F0F0F0EBAFB0E40E1AE40E1AE6454AEEDCDCEEDCDCE52E35E40E1AE40E1AE7
            696DF0F0F0ECBABCE40E1AE40E1AE52E35F0F0F0F0F0F0E6454AE40E1AE6454A
            F0F0F0EBAFB0E40E1AE40E1AEAA2A4F0F0F0EFE6E6E8797CF0F0F0EBAFB0E40E
            1AE40E1AEAA2A4F0F0F0EFE6E6E8797CF0F0F0EEDCDCE40E1AE40E1AE6454AEE
            D1D2F0F0F0EDC6C7E40E1AE40E1AE6454AF0F0F0EFE6E6E52E35E40E1AE7696D
            F0F0F0F0F0F0EA9597E40E1AE52E35EFE6E6E9878AE40E1AE40E1AEED1D2F0F0
            F0EED1D2EA9597F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F95E5EFE0202F2D4D4F0
            F0F0F0F0F0F0F0F0F0F0F0F0EEEEFB4040FE0000FE0000FF0000FE0000FE0000
            FE0404F3BDBDF0F0F0F2D8D8FD0909F95555F0F0F0F0F0F0F0F0F0F0F0F0F0F0
            F020F0F0F0F0F0F0F0F0F0EAA2A4E40E1AE40E1AEDC6C7F0F0F0EEDCDCE6585D
            E40E1AE40E1AECBABCF0F0F0E6585DE40E1AE40E1AE40E1AE40E1AE40E1AE52E
            35EFE6E6F0F0F0E9878AE40E1AE40E1AE52E35E40E1AE40E1AEDC6C7EBAFB0E4
            0E1AE40E1AE52E35E40E1AE40E1AE40E1AE40E1AE52E35E6454AE40E1AE40E1A
            E40E1AE40E1AE9878AF0F0F0F0F0F0E6454AE40E1AE6454AF0F0F0EEDCDCE52E
            35E40E1AE40E1AE40E1AE40E1AE40E1AF0F0F0EEDCDCE52E35E40E1AE40E1AE4
            0E1AE40E1AE40E1AF0F0F0F0F0F0EAA2A4E40E1AE40E1AE40E1AE40E1AE40E1A
            E40E1AE40E1AEED1D2F0F0F0F0F0F0ECBABCE40E1AE40E1AE40E1AE40E1AE40E
            1AE40E1AEAA2A4F0F0F0ECBABCE40E1AE40E1AE40E1AE40E1AE40E1AE7696DF0
            F0F0F0F0F0F0F0F0F0F0F0F0F0F0F95E5EFE0202F2D2D2F0F0F0F0F0F0F0F0F0
            F0F0F0F0F0F0F95555FF0000FE0000FF0000FB4242F59D9DFD0909F3BDBDF0F0
            F0F2D8D8FE0909FA5757F0F0F0F0F0F0F0F0F0F0F0F0F0F0F020F0F0F0F0F0F0
            F0F0F0EAA2A4E40E1AE40E1AEDC6C7F0F0F0F0F0F0EBAFB0E40E1AE40E1AE987
            8AF0F0F0F0F0F0EAA2A4E40E1AE40E1AE40E1AE9878AEEDCDCF0F0F0F0F0F0E9
            878AE40E1AE40E1AEBAFB0E6585DE40E1AEDC6C7EBAFB0E40E1AE40E1AEAA2A4
            EBAFB0E52E35E40E1AE6454AEDC6C7EEDCDCE8797CE40E1AE40E1AE8797CEFE6
            E6F0F0F0F0F0F0E6454AE40E1AE6454AF0F0F0F0F0F0EED1D2E9878AE40E1AE4
            0E1AE40E1AE8797CF0F0F0F0F0F0EED1D2E9878AE40E1AE40E1AE40E1AE8797C
            F0F0F0F0F0F0F0F0F0ECBABCE7696DE40E1AE40E1AE40E1AE9878AEED1D2F0F0
            F0F0F0F0F0F0F0F0F0F0EDC6C7E7696DE40E1AE40E1AE6454AEBAFB0F0F0F0F0
            F0F0F0F0F0ECBABCE7696DE40E1AE40E1AE40E1AEAA2A4F0F0F0F0F0F0F0F0F0
            F0F0F0F0F0F0F95E5EFF0202F2D2D2F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F777
            77FF0202FF0000FF0000FC2929F86060FE0909F3BFBFF0F0F0F2D8D8FE0909FA
            5757F0F0F0F0F0F0F0F0F0F0F0F0F0F0F020F0F0F0F0F0F0F0F0F0EAA2A4E40E
            1AE40E1AEDC6C7F0F0F0F0F0F0EBAFB0E40E1AE40E1AE9878AF0F0F0F0F0F0F0
            F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0
            F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0
            F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0
            F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0
            F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0
            F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0
            F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0
            F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F95E
            5EFE0202F2D2D2F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0E8E8F95E5EFE0000FE
            0000FE0000FE0000F95C5CF0E8E8F0F0F0F2D8D8FE0909F95757F0F0F0F0F0F0
            F0F0F0F0F0F0F0F0F020F0F0F0F0F0F0F0F0F0EAA2A4E40E1AE40E1AEDC6C7F0
            F0F0EEDCDCE6585DE40E1AE40E1AEAA2A4F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0
            F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0
            F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0
            F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0
            F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0
            F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0EAA2A4E6585DF0
            F0F0EAA2A4E40E1AE6454AEEDCDCF0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0
            F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0
            F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F95E5EFE0202F2D2D2F0
            F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0EEEEF1DFDFF1DFDFF1DFDFF1DFDF
            F0EEEEF0F0F0F0F0F0F2D8D8FE0909FA5757F0F0F0F0F0F0F0F0F0F0F0F0F0F0
            F020F0F0F0F0F0F0F0F0F0EAA2A4E40E1AE40E1AE40E1AE40E1AE40E1AE40E1A
            E40E1AE6454AEFE6E6F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0
            F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0
            F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0
            F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0E9878AE40E1AE7696DF0F0F0F0F0F0F0F0
            F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0
            F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0ECBABCE40E1AE40E1AE40E1AE40E1A
            E40E1AEA9597F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0
            F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0
            F0F0F0F0F0F0F0F0F0F0F0F0F0F0F95E5EFF0202F2D2D2F0F0F0F0F0F0F0F0F0
            F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0ECECF0ECECF0ECECF0EC
            ECF2D4D4FE0909F95858F0F0F0F0F0F0F0F0F0F0F0F0F0F0F020F0F0F0F0F0F0
            F0F0F0EAA2A4E40E1AE40E1AE40E1AE40E1AE40E1AE40E1AEAA2A4EFE6E6F0F0
            F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0
            F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0
            F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0
            F0F0F0F0F0F0F0E40E1AE40E1AE40E1AEEDCDCF0F0F0F0F0F0F0F0F0F0F0F0F0
            F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0
            F0F0F0F0F0F0F0F0F0F0F0F0E7696DE40E1AE9878AEFE6E6EA9597E7696DF0F0
            F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0
            F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0
            F0F0F0F0F0F0F95E5EFE0202F2D2D2F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0
            F0F0F0F0F0F0F0F0F0F0F0F0F0FB4242FC3535FC3535FC3535FC2F2FFE0202F9
            5A5AF0F0F0F0F0F0F0F0F0F0F0F0F0F0F020F0F0F0F0F0F0F0F0F0F0F0F0F0F0
            F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0
            F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0
            F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0
            F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0E9
            878AE40E1AE7696DF0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0
            F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0
            F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0
            F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0
            F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F95E
            5EFE0202F2D2D2F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0
            F0F0F0F0F0FD1111F77F7FF5A1A1F68888FE0D0DFF0000F68888F0F0F0F0F0F0
            F0F0F0F0F0F0F0F0F020F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0
            F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0
            F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0
            F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0
            F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0
            F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0
            F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0
            F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0
            F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0
            F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F95E5EFF0202F2D2D2F0
            F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0FE1111
            F3C5C5F1DFDFFC3737FF0202F86060F0ECECF0F0F0F0F0F0F0F0F0F0F0F0F0F0
            F020F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0
            F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0
            F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0
            F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0
            F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0
            F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0
            F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0
            F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0
            F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0
            F0F0F0F0F0F0F0F0F0F0F0F0F0F0F95E5EFE0202F2D4D4F0F0F0F0F0F0F0F0F0
            F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0FD1111F4B6B6FB4242FE00
            00F95858F0E8E8F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F020F0F0F0F0F0F0
            F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0
            F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0
            F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0
            F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0
            F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0
            F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0
            F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0
            F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0
            F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0
            F0F0F0F0F0F0F95E5EFE0202F2D2D2F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0
            F0F0F0F0F0F0F0F0F0F0F0F0F0FD1111FD1E1EFF0000F95858F0E8E8F0F0F0F0
            F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F070F0F0F0F0F0F0F0F0F0F0F0F0F0F0
            F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0
            F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0
            F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0
            F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0
            F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0
            F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0
            F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0
            F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0
            F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F95E
            5EFF0000FB2F2FFC3737FC3737FB3737FC3737FC3737FB3737FC3737FB3737FB
            3737FB3737FF0404FF0202FA4F4FF0E8E8F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0
            F0F0F0F0F0F0F0F0F061F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0
            F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0
            F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0
            F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0
            F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0
            F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0
            F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0
            F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0
            F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0
            F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F68A8AFE0B0BFE0B0BFE
            0B0BFD0B0BFD0B0BFD0B0BFD0B0BFD0B0BFD0B0BFE0B0BFE0B0BFE0B0BFE0B0B
            FA5151F1E5E5F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0
            F020F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0
            F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0
            F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0
            F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0
            F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0
            F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0
            F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0
            F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0
            F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0
            F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0
            F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0
            F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F020F0F0F0F0F0F0
            F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0
            F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0
            F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0
            F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0
            F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0
            F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0
            F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0
            F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0
            F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0
            F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0
            F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0
            F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F064F0F0F0F0F0F0F0F0F0F0F0F0F0F0
            F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0
            F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0
            F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0
            F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0
            F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0
            F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0
            F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0
            F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0
            F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0
            F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0
            F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0
            F0F0F0F0F0F0F0F0F077}
          ParentFont = False
          OnClick = SpeedButton4Click
        end
      end
    end
    inherited cardPanelConsulta: TCard
      Width = 1049
      Height = 454
      ExplicitWidth = 1049
      ExplicitHeight = 454
      inherited Panel4: TPanel
        Top = 409
        Width = 1049
        ExplicitTop = 409
        ExplicitWidth = 1049
        inherited sbImprimir: TSpeedButton
          Left = 774
          OnClick = sbImprimirClick
          ExplicitLeft = 806
        end
        inherited sbExportar: TSpeedButton
          Left = 885
          OnClick = sbExportarClick
          ExplicitLeft = 917
        end
      end
      inherited DBGrid1: TDBGrid
        Width = 1049
        Height = 409
        DataSource = DataSource1
        OnCellClick = DBGrid1CellClick
        OnTitleClick = DBGrid1TitleClick
      end
    end
  end
  inherited PopupMenu1: TPopupMenu
    Left = 712
    Top = 1
  end
  object DataSource1: TDataSource
    OnDataChange = DataSource1DataChange
    Left = 608
    Top = 1
  end
  object ACBrCEP1: TACBrCEP
    ProxyPort = '8080'
    WebService = wsRepublicaVirtual
    PesquisarIBGE = True
    OnBuscaEfetuada = ACBrCEP1BuscaEfetuada
    Left = 264
    Top = 9
  end
  object OpenPictureDialog1: TOpenPictureDialog
    Left = 792
    Top = 377
  end
  object frxDB_Funcionarios: TfrxDBDataset
    UserName = 'frxDB_Funcionarios'
    CloseDataSource = False
    DataSource = DataSource1
    BCDToCurrency = False
    Left = 888
    Top = 33
  end
  object frx_Funcionarios: TfrxReport
    Version = '6.3.3'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick, pbCopy, pbSelection]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 43770.669294745400000000
    ReportOptions.LastChange = 43770.697827384260000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      ''
      'begin'
      ''
      'end.')
    Left = 792
    Top = 33
    Datasets = <
      item
        DataSet = frxDB_Funcionarios
        DataSetName = 'frxDB_Funcionarios'
      end>
    Variables = <>
    Style = <>
    object Data: TfrxDataPage
      Height = 1000.000000000000000000
      Width = 1000.000000000000000000
    end
    object Page1: TfrxReportPage
      PaperWidth = 210.000000000000000000
      PaperHeight = 297.000000000000000000
      PaperSize = 9
      LeftMargin = 10.000000000000000000
      RightMargin = 10.000000000000000000
      TopMargin = 10.000000000000000000
      BottomMargin = 10.000000000000000000
      Frame.Typ = []
      MirrorMode = []
      object ReportTitle1: TfrxReportTitle
        FillType = ftBrush
        Frame.Typ = []
        Height = 120.944960000000000000
        Top = 18.897650000000000000
        Width = 718.110700000000000000
        object Memo3: TfrxMemoView
          AllowVectorExport = True
          Top = 18.897650000000000000
          Width = 718.110700000000000000
          Height = 30.236240000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNavy
          Font.Height = -24
          Font.Name = 'roboto'
          Font.Style = []
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            'Relat'#243'rio Cadastro de Funcion'#225'rios')
          ParentFont = False
        end
        object Line1: TfrxLineView
          AllowVectorExport = True
          Left = 22.779530000000000000
          Top = 53.133890000000000000
          Width = 665.197280000000000000
          Color = clBlack
          Frame.Typ = [ftTop]
        end
        object SysMemo1: TfrxSysMemoView
          AllowVectorExport = True
          Left = 593.386210000000000000
          Top = 56.913420000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[DATE]')
          ParentFont = False
        end
      end
      object MasterData1: TfrxMasterData
        FillType = ftBrush
        Frame.Typ = []
        Height = 377.953000000000000000
        Top = 200.315090000000000000
        Width = 718.110700000000000000
        DataSet = frxDB_Funcionarios
        DataSetName = 'frxDB_Funcionarios'
        RowCount = 0
        object Shape2: TfrxShapeView
          AllowVectorExport = True
          Top = 26.456710000000000000
          Width = 721.890230000000000000
          Height = 26.456710000000000000
          Frame.Typ = []
        end
        object Shape1: TfrxShapeView
          AllowVectorExport = True
          Width = 721.890230000000000000
          Height = 26.456710000000000000
          Frame.Typ = []
        end
        object Memo2: TfrxMemoView
          AllowVectorExport = True
          Left = 3.779530000000000000
          Top = 7.559060000000000000
          Width = 49.133890000000000000
          Height = 18.897650000000000000
          Frame.Typ = []
          Memo.UTF8W = (
            'C'#243'digo:')
        end
        object Memo4: TfrxMemoView
          AllowVectorExport = True
          Left = 56.692950000000000000
          Top = 7.559060000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDB_Funcionarios."ID"]')
        end
        object Line2: TfrxLineView
          AllowVectorExport = True
          Left = 154.960730000000000000
          Height = 26.456710000000000000
          Color = clBlack
          Frame.Typ = []
          Diagonal = True
        end
        object Memo5: TfrxMemoView
          AllowVectorExport = True
          Left = 166.299320000000000000
          Top = 7.559060000000000000
          Width = 41.574830000000000000
          Height = 18.897650000000000000
          Frame.Typ = []
          Memo.UTF8W = (
            'Nome:')
        end
        object Memo6: TfrxMemoView
          AllowVectorExport = True
          Left = 211.433210000000000000
          Top = 7.559060000000000000
          Width = 491.338900000000000000
          Height = 18.897650000000000000
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDB_Funcionarios."NOME"]')
        end
        object Memo7: TfrxMemoView
          AllowVectorExport = True
          Left = 3.779530000000000000
          Top = 34.015770000000000000
          Width = 109.606370000000000000
          Height = 18.897650000000000000
          Frame.Typ = []
          Memo.UTF8W = (
            'Data nascimento:')
        end
        object Memo8: TfrxMemoView
          AllowVectorExport = True
          Left = 117.165430000000000000
          Top = 34.015770000000000000
          Width = 109.606370000000000000
          Height = 18.897650000000000000
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDB_Funcionarios."DATA_NASCIMENTO"]')
        end
        object Line3: TfrxLineView
          AllowVectorExport = True
          Left = 234.330860000000000000
          Top = 26.456710000000000000
          Height = 26.456710000000000000
          Color = clBlack
          Frame.Typ = []
          Diagonal = True
        end
        object Memo9: TfrxMemoView
          AllowVectorExport = True
          Left = 241.889920000000000000
          Top = 34.015770000000000000
          Width = 75.590600000000000000
          Height = 18.897650000000000000
          Frame.Typ = []
          Memo.UTF8W = (
            'Documento:')
        end
        object Memo10: TfrxMemoView
          AllowVectorExport = True
          Left = 321.260050000000000000
          Top = 34.015770000000000000
          Width = 170.078850000000000000
          Height = 18.897650000000000000
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDB_Funcionarios."DOCUMENTO"]')
        end
        object Line4: TfrxLineView
          AllowVectorExport = True
          Left = 495.118430000000000000
          Top = 26.456710000000000000
          Height = 26.456710000000000000
          Color = clBlack
          Frame.Typ = []
          Diagonal = True
        end
        object Memo11: TfrxMemoView
          AllowVectorExport = True
          Left = 502.677490000000000000
          Top = 34.015770000000000000
          Width = 34.015770000000000000
          Height = 18.897650000000000000
          Frame.Typ = []
          Memo.UTF8W = (
            'CPF:')
        end
        object Memo12: TfrxMemoView
          AllowVectorExport = True
          Left = 540.472790000000000000
          Top = 34.015770000000000000
          Width = 170.078850000000000000
          Height = 18.897650000000000000
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDB_Funcionarios."CPF"]')
        end
        object Shape3: TfrxShapeView
          AllowVectorExport = True
          Top = 52.913420000000000000
          Width = 721.890230000000000000
          Height = 26.456710000000000000
          Frame.Typ = []
        end
        object Memo13: TfrxMemoView
          AllowVectorExport = True
          Left = 3.779530000000000000
          Top = 60.472480000000000000
          Width = 64.252010000000000000
          Height = 18.897650000000000000
          Frame.Typ = []
          Memo.UTF8W = (
            'Endere'#231'o:')
        end
        object Memo14: TfrxMemoView
          AllowVectorExport = True
          Left = 71.811070000000000000
          Top = 60.472480000000000000
          Width = 623.622450000000000000
          Height = 18.897650000000000000
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDB_Funcionarios."ENDERECO"]')
        end
        object Shape4: TfrxShapeView
          AllowVectorExport = True
          Top = 79.370130000000000000
          Width = 721.890230000000000000
          Height = 26.456710000000000000
          Frame.Typ = []
        end
        object Shape5: TfrxShapeView
          AllowVectorExport = True
          Top = 105.826840000000000000
          Width = 721.890230000000000000
          Height = 26.456710000000000000
          Frame.Typ = []
        end
        object Shape6: TfrxShapeView
          AllowVectorExport = True
          Top = 132.283550000000000000
          Width = 721.890230000000000000
          Height = 26.456710000000000000
          Frame.Typ = []
        end
        object Memo15: TfrxMemoView
          AllowVectorExport = True
          Left = 3.779530000000000000
          Top = 86.929190000000000000
          Width = 41.574830000000000000
          Height = 18.897650000000000000
          Frame.Typ = []
          Memo.UTF8W = (
            'Bairro:')
        end
        object Memo16: TfrxMemoView
          AllowVectorExport = True
          Left = 49.133890000000000000
          Top = 86.929190000000000000
          Width = 646.299630000000000000
          Height = 18.897650000000000000
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDB_Funcionarios."BAIRRO"]')
        end
        object Line5: TfrxLineView
          AllowVectorExport = True
          Left = 514.016080000000000000
          Top = 105.826840000000000000
          Height = 26.456710000000000000
          Color = clBlack
          Frame.Typ = []
          Diagonal = True
        end
        object Memo17: TfrxMemoView
          AllowVectorExport = True
          Left = 3.779530000000000000
          Top = 113.385900000000000000
          Width = 90.708720000000000000
          Height = 18.897650000000000000
          Frame.Typ = []
          Memo.UTF8W = (
            'Complemento:')
        end
        object Memo18: TfrxMemoView
          AllowVectorExport = True
          Left = 98.267780000000000000
          Top = 113.385900000000000000
          Width = 408.189240000000000000
          Height = 18.897650000000000000
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDB_Funcionarios."COMPLEMENTO"]')
        end
        object Memo19: TfrxMemoView
          AllowVectorExport = True
          Left = 521.575140000000000000
          Top = 113.385900000000000000
          Width = 56.692950000000000000
          Height = 18.897650000000000000
          Frame.Typ = []
          Memo.UTF8W = (
            'N'#250'mero:')
        end
        object Memo20: TfrxMemoView
          AllowVectorExport = True
          Left = 582.047620000000000000
          Top = 113.385900000000000000
          Width = 117.165430000000000000
          Height = 18.897650000000000000
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDB_Funcionarios."NUMERO"]')
        end
        object Shape7: TfrxShapeView
          AllowVectorExport = True
          Top = 158.740260000000000000
          Width = 721.890230000000000000
          Height = 26.456710000000000000
          Frame.Typ = []
        end
        object Shape8: TfrxShapeView
          AllowVectorExport = True
          Top = 185.196970000000000000
          Width = 721.890230000000000000
          Height = 26.456710000000000000
          Frame.Typ = []
        end
        object Memo21: TfrxMemoView
          AllowVectorExport = True
          Left = 3.779530000000000000
          Top = 139.842610000000000000
          Width = 34.015770000000000000
          Height = 18.897650000000000000
          Frame.Typ = []
          Memo.UTF8W = (
            'CEP:')
        end
        object Memo22: TfrxMemoView
          AllowVectorExport = True
          Left = 41.574830000000000000
          Top = 139.842610000000000000
          Width = 109.606370000000000000
          Height = 18.897650000000000000
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDB_Funcionarios."CEP"]')
        end
        object Line6: TfrxLineView
          AllowVectorExport = True
          Left = 159.535560000000000000
          Top = 132.283550000000000000
          Height = 26.456710000000000000
          Color = clBlack
          Frame.Typ = []
          Diagonal = True
        end
        object Memo23: TfrxMemoView
          AllowVectorExport = True
          Left = 167.094620000000000000
          Top = 139.842610000000000000
          Width = 52.913420000000000000
          Height = 18.897650000000000000
          Frame.Typ = []
          Memo.UTF8W = (
            'Cidade:')
        end
        object Memo24: TfrxMemoView
          AllowVectorExport = True
          Left = 223.346630000000000000
          Top = 139.842610000000000000
          Width = 302.362400000000000000
          Height = 18.897650000000000000
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDB_Funcionarios."CIDADE"]')
        end
        object Line7: TfrxLineView
          AllowVectorExport = True
          Left = 532.913730000000000000
          Top = 132.283550000000000000
          Height = 26.456710000000000000
          Color = clBlack
          Frame.Typ = []
          Diagonal = True
        end
        object Memo25: TfrxMemoView
          AllowVectorExport = True
          Left = 540.472790000000000000
          Top = 139.842610000000000000
          Width = 49.133890000000000000
          Height = 18.897650000000000000
          Frame.Typ = []
          Memo.UTF8W = (
            'Estado:')
        end
        object Memo26: TfrxMemoView
          AllowVectorExport = True
          Left = 597.165740000000000000
          Top = 139.842610000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDB_Funcionarios."UF"]')
        end
        object Shape9: TfrxShapeView
          AllowVectorExport = True
          Top = 211.653680000000000000
          Width = 721.890230000000000000
          Height = 26.456710000000000000
          Frame.Typ = []
        end
        object Memo27: TfrxMemoView
          AllowVectorExport = True
          Left = 3.779530000000000000
          Top = 166.299320000000000000
          Width = 109.606370000000000000
          Height = 18.897650000000000000
          Frame.Typ = []
          Memo.UTF8W = (
            'Data de cadastro:')
        end
        object Memo28: TfrxMemoView
          AllowVectorExport = True
          Left = 117.165430000000000000
          Top = 166.299320000000000000
          Width = 124.724490000000000000
          Height = 18.897650000000000000
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDB_Funcionarios."DATA_CADASTRO"]')
        end
        object Line8: TfrxLineView
          AllowVectorExport = True
          Left = 249.448980000000000000
          Top = 158.740260000000000000
          Height = 26.456710000000000000
          Color = clBlack
          Frame.Typ = []
          Diagonal = True
        end
        object Memo29: TfrxMemoView
          AllowVectorExport = True
          Left = 257.008040000000000000
          Top = 166.299320000000000000
          Width = 98.267780000000000000
          Height = 18.897650000000000000
          Frame.Typ = []
          Memo.UTF8W = (
            'Data demiss'#227'o:')
        end
        object Memo30: TfrxMemoView
          AllowVectorExport = True
          Left = 359.055350000000000000
          Top = 166.299320000000000000
          Width = 105.826840000000000000
          Height = 18.897650000000000000
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDB_Funcionarios."DATA_DEMISSAO"]')
        end
        object Shape10: TfrxShapeView
          AllowVectorExport = True
          Top = 238.110390000000000000
          Width = 721.890230000000000000
          Height = 26.456710000000000000
          Frame.Typ = []
        end
        object Shape11: TfrxShapeView
          AllowVectorExport = True
          Top = 264.567100000000000000
          Width = 721.890230000000000000
          Height = 26.456710000000000000
          Frame.Typ = []
        end
        object Memo31: TfrxMemoView
          AllowVectorExport = True
          Left = 3.779530000000000000
          Top = 192.756030000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          Frame.Typ = []
          Memo.UTF8W = (
            'C'#243'd. Atividade:')
        end
        object Memo32: TfrxMemoView
          AllowVectorExport = True
          Left = 102.047310000000000000
          Top = 192.756030000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDB_Funcionarios."ATIVIDADE"]')
        end
        object Line9: TfrxLineView
          AllowVectorExport = True
          Left = 204.094620000000000000
          Top = 185.196970000000000000
          Height = 26.456710000000000000
          Color = clBlack
          Frame.Typ = []
          Diagonal = True
        end
        object Memo33: TfrxMemoView
          AllowVectorExport = True
          Left = 211.653680000000000000
          Top = 192.756030000000000000
          Width = 60.472480000000000000
          Height = 18.897650000000000000
          Frame.Typ = []
          Memo.UTF8W = (
            'Atividade:')
        end
        object Memo34: TfrxMemoView
          AllowVectorExport = True
          Left = 275.905690000000000000
          Top = 192.756030000000000000
          Width = 385.512060000000000000
          Height = 18.897650000000000000
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDB_Funcionarios."ATIVIDADE_NOME"]')
        end
        object Memo35: TfrxMemoView
          AllowVectorExport = True
          Left = 3.779530000000000000
          Top = 219.212740000000000000
          Width = 60.472480000000000000
          Height = 18.897650000000000000
          Frame.Typ = []
          Memo.UTF8W = (
            'Telefone:')
        end
        object Memo36: TfrxMemoView
          AllowVectorExport = True
          Left = 68.031540000000000000
          Top = 219.212740000000000000
          Width = 143.622140000000000000
          Height = 18.897650000000000000
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDB_Funcionarios."TELEFONE"]')
        end
        object Line10: TfrxLineView
          AllowVectorExport = True
          Left = 219.212740000000000000
          Top = 211.653680000000000000
          Height = 26.456710000000000000
          Color = clBlack
          Frame.Typ = []
          Diagonal = True
        end
        object Memo37: TfrxMemoView
          AllowVectorExport = True
          Left = 222.992270000000000000
          Top = 219.212740000000000000
          Width = 49.133890000000000000
          Height = 18.897650000000000000
          Frame.Typ = []
          Memo.UTF8W = (
            'Celular:')
        end
        object Memo38: TfrxMemoView
          AllowVectorExport = True
          Left = 275.905690000000000000
          Top = 219.212740000000000000
          Width = 166.299320000000000000
          Height = 18.897650000000000000
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDB_Funcionarios."CELULAR"]')
        end
        object Shape12: TfrxShapeView
          AllowVectorExport = True
          Top = 291.023810000000000000
          Width = 721.890230000000000000
          Height = 26.456710000000000000
          Frame.Typ = []
        end
        object Memo39: TfrxMemoView
          AllowVectorExport = True
          Left = 3.779530000000000000
          Top = 245.669450000000000000
          Width = 45.354360000000000000
          Height = 18.897650000000000000
          Frame.Typ = []
          Memo.UTF8W = (
            'E-Mail:')
        end
        object Memo40: TfrxMemoView
          AllowVectorExport = True
          Left = 52.913420000000000000
          Top = 245.669450000000000000
          Width = 650.079160000000000000
          Height = 18.897650000000000000
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDB_Funcionarios."EMAIL"]')
        end
        object Memo41: TfrxMemoView
          AllowVectorExport = True
          Left = 3.779530000000000000
          Top = 272.126160000000000000
          Width = 56.692950000000000000
          Height = 18.897650000000000000
          Frame.Typ = []
          Memo.UTF8W = (
            'Usu'#225'rio:')
        end
        object Memo42: TfrxMemoView
          AllowVectorExport = True
          Left = 63.472480000000000000
          Top = 272.126160000000000000
          Width = 204.094620000000000000
          Height = 18.897650000000000000
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDB_Funcionarios."USUARIO"]')
        end
        object Line11: TfrxLineView
          AllowVectorExport = True
          Left = 272.126160000000000000
          Top = 268.346630000000000000
          Height = 26.456710000000000000
          Color = clBlack
          Frame.Typ = []
          Diagonal = True
        end
        object Memo43: TfrxMemoView
          AllowVectorExport = True
          Left = 277.464750000000000000
          Top = 272.126160000000000000
          Width = 45.354360000000000000
          Height = 18.897650000000000000
          Frame.Typ = []
          Memo.UTF8W = (
            'Status:')
        end
        object Memo44: TfrxMemoView
          AllowVectorExport = True
          Left = 326.598640000000000000
          Top = 272.126160000000000000
          Width = 154.960730000000000000
          Height = 18.897650000000000000
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDB_Funcionarios."STATUS"]')
        end
        object Line12: TfrxLineView
          AllowVectorExport = True
          Left = 489.779840000000000000
          Top = 264.567100000000000000
          Height = 26.456710000000000000
          Color = clBlack
          Frame.Typ = []
          Diagonal = True
        end
        object Memo45: TfrxMemoView
          AllowVectorExport = True
          Left = 497.338900000000000000
          Top = 272.126160000000000000
          Width = 79.370130000000000000
          Height = 18.897650000000000000
          Frame.Typ = []
          Memo.UTF8W = (
            'Funcion'#225'rio:')
        end
        object Memo46: TfrxMemoView
          AllowVectorExport = True
          Left = 580.268090000000000000
          Top = 272.126160000000000000
          Width = 120.944960000000000000
          Height = 18.897650000000000000
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDB_Funcionarios."FUNCIONARIO_CADASTRO"]')
        end
        object Memo47: TfrxMemoView
          AllowVectorExport = True
          Left = 3.779530000000000000
          Top = 298.582870000000000000
          Width = 79.370130000000000000
          Height = 18.897650000000000000
          Frame.Typ = []
          Memo.UTF8W = (
            'Observa'#231#227'o:')
        end
        object Memo48: TfrxMemoView
          AllowVectorExport = True
          Left = 86.929190000000000000
          Top = 298.582870000000000000
          Width = 612.283860000000000000
          Height = 18.897650000000000000
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDB_Funcionarios."OBSERVACAO"]')
        end
        object Line13: TfrxLineView
          AllowVectorExport = True
          Left = 18.897650000000000000
          Top = 347.716760000000000000
          Width = 672.756340000000000000
          Color = clBlack
          Frame.Typ = []
          Frame.Width = 2.000000000000000000
          Diagonal = True
        end
      end
      object PageFooter1: TfrxPageFooter
        FillType = ftBrush
        Frame.Typ = []
        Height = 22.677180000000000000
        Top = 638.740570000000000000
        Width = 718.110700000000000000
        object Memo1: TfrxMemoView
          AllowVectorExport = True
          Left = 642.520100000000000000
          Width = 75.590600000000000000
          Height = 18.897650000000000000
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[Page#]')
        end
      end
    end
  end
end
