inherited formCadastroDeClientes: TformCadastroDeClientes
  Caption = 'Cadastro de clientes'
  ClientHeight = 607
  ClientWidth = 1118
  ExplicitWidth = 1118
  ExplicitHeight = 607
  PixelsPerInch = 96
  TextHeight = 13
  inherited Panel1: TPanel
    Width = 1118
    ExplicitWidth = 1118
    inherited sbFechar: TSpeedButton
      Left = 1066
      ExplicitLeft = 1066
    end
    inherited lblCaption: TLabel
      Left = 396
      Width = 144
      Caption = 'Cadastro de clientes'
      ExplicitLeft = 195
      ExplicitWidth = 144
    end
  end
  inherited Panel2: TPanel
    Width = 1118
    ExplicitWidth = 1118
  end
  inherited Panel3: TPanel
    Top = 532
    Width = 1118
    ExplicitTop = 532
    ExplicitWidth = 1118
    inherited Label4: TLabel
      Left = 784
      ExplicitLeft = 784
    end
    inherited Label5: TLabel
      Left = 919
      ExplicitLeft = 919
    end
    inherited cbPesquisar: TComboBox
      Left = 784
      ExplicitLeft = 784
    end
    inherited edtPesquisar: TEdit
      Left = 919
      ExplicitLeft = 919
    end
  end
  inherited CardPanel1: TCardPanel
    Width = 1118
    Height = 451
    ActiveCard = cardPanelCadatro
    ExplicitWidth = 1118
    ExplicitHeight = 451
    inherited cardPanelCadatro: TCard
      Width = 1118
      Height = 451
      ExplicitTop = 1
      ExplicitWidth = 1118
      ExplicitHeight = 451
      object Label1: TLabel
        Left = 48
        Top = 9
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
        Top = 70
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
        Left = 376
        Top = 104
        Width = 38
        Height = 17
        Caption = 'Label3'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentFont = False
      end
      object Label6: TLabel
        Left = 263
        Top = 9
        Width = 100
        Height = 17
        Caption = 'Tipo de cadastro'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentFont = False
      end
      object Label7: TLabel
        Left = 48
        Top = 135
        Width = 97
        Height = 17
        Caption = 'Data nascimento'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentFont = False
      end
      object Label8: TLabel
        Left = 263
        Top = 135
        Width = 73
        Height = 17
        Caption = 'CPF ou CNPJ'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentFont = False
      end
      object Label9: TLabel
        Left = 151
        Top = 135
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
      object Label10: TLabel
        Left = 48
        Top = 198
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
      object Label11: TLabel
        Left = 48
        Top = 319
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
      object Label12: TLabel
        Left = 327
        Top = 381
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
      object Label13: TLabel
        Left = 48
        Top = 260
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
      object Label14: TLabel
        Left = 503
        Top = 9
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
      object Label15: TLabel
        Left = 809
        Top = 9
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
      object Label16: TLabel
        Left = 503
        Top = 70
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
      object Label17: TLabel
        Left = 694
        Top = 70
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
      object Label18: TLabel
        Left = 503
        Top = 135
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
      object Label19: TLabel
        Left = 503
        Top = 198
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
      object Label20: TLabel
        Left = 630
        Top = 198
        Width = 110
        Height = 17
        Caption = 'Situa'#231#227'o do cliente'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentFont = False
      end
      object Label21: TLabel
        Left = 48
        Top = 381
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
      object Label22: TLabel
        Left = 503
        Top = 260
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
      object sbPesquisarCep: TSpeedButton
        Left = 420
        Top = 283
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
      end
      object Image1: TImage
        Left = 912
        Top = 32
        Width = 153
        Height = 151
      end
      object Label23: TLabel
        Left = 912
        Top = 13
        Width = 22
        Height = 13
        Caption = 'Foto'
      end
      object SpeedButton1: TSpeedButton
        Left = 897
        Top = 189
        Width = 168
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
      end
      object Edit1: TEdit
        Left = 48
        Top = 32
        Width = 209
        Height = 25
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentFont = False
        TabOrder = 0
        Text = 'Edit1'
      end
      object Edit2: TEdit
        Left = 263
        Top = 32
        Width = 185
        Height = 25
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentFont = False
        TabOrder = 1
        Text = 'Edit2'
      end
      object Edit3: TEdit
        Left = 48
        Top = 93
        Width = 400
        Height = 25
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentFont = False
        TabOrder = 2
        Text = 'Edit3'
      end
      object Edit4: TEdit
        Left = 48
        Top = 158
        Width = 97
        Height = 25
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentFont = False
        TabOrder = 3
        Text = 'Edit4'
      end
      object Edit5: TEdit
        Left = 151
        Top = 158
        Width = 101
        Height = 25
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentFont = False
        TabOrder = 4
        Text = 'Edit5'
      end
      object Edit6: TEdit
        Left = 258
        Top = 158
        Width = 190
        Height = 25
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentFont = False
        TabOrder = 5
        Text = 'Edit6'
      end
      object Edit7: TEdit
        Left = 48
        Top = 221
        Width = 400
        Height = 25
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentFont = False
        TabOrder = 6
        Text = 'Edit7'
      end
      object Edit8: TEdit
        Left = 48
        Top = 342
        Width = 400
        Height = 25
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentFont = False
        TabOrder = 7
        Text = 'Edit8'
      end
      object Edit9: TEdit
        Left = 48
        Top = 404
        Width = 273
        Height = 25
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentFont = False
        TabOrder = 8
        Text = 'Edit9'
      end
      object Edit10: TEdit
        Left = 327
        Top = 404
        Width = 121
        Height = 25
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentFont = False
        TabOrder = 9
        Text = 'Edit10'
      end
      object Edit11: TEdit
        Left = 48
        Top = 283
        Width = 366
        Height = 25
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentFont = False
        TabOrder = 10
        Text = 'Edit11'
      end
      object Edit12: TEdit
        Left = 503
        Top = 32
        Width = 300
        Height = 25
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentFont = False
        TabOrder = 11
        Text = 'Edit12'
      end
      object Edit13: TEdit
        Left = 809
        Top = 32
        Width = 77
        Height = 25
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentFont = False
        TabOrder = 12
        Text = 'Edit13'
      end
      object Edit14: TEdit
        Left = 503
        Top = 93
        Width = 185
        Height = 25
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentFont = False
        TabOrder = 13
        Text = 'Edit14'
      end
      object Edit15: TEdit
        Left = 694
        Top = 93
        Width = 192
        Height = 25
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentFont = False
        TabOrder = 14
        Text = 'Edit15'
      end
      object Edit16: TEdit
        Left = 503
        Top = 158
        Width = 383
        Height = 25
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentFont = False
        TabOrder = 15
        Text = 'Edit16'
      end
      object Edit17: TEdit
        Left = 503
        Top = 221
        Width = 121
        Height = 25
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentFont = False
        TabOrder = 16
        Text = 'Edit17'
      end
      object Edit18: TEdit
        Left = 630
        Top = 221
        Width = 279
        Height = 25
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentFont = False
        TabOrder = 17
        Text = 'Edit18'
      end
      object Edit19: TEdit
        Left = 503
        Top = 283
        Width = 406
        Height = 25
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentFont = False
        TabOrder = 18
        Text = 'Edit19'
      end
      object Edit20: TEdit
        Left = 758
        Top = 365
        Width = 121
        Height = 25
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentFont = False
        TabOrder = 19
        Text = 'Edit20'
      end
    end
    inherited cardPanelConsulta: TCard
      Width = 1118
      Height = 451
      ExplicitWidth = 1118
      ExplicitHeight = 451
      inherited Panel4: TPanel
        Top = 406
        Width = 1118
        ExplicitTop = 406
        ExplicitWidth = 1118
        inherited sbImprimir: TSpeedButton
          Left = 843
          ExplicitLeft = 843
        end
        inherited sbExportar: TSpeedButton
          Left = 954
          ExplicitLeft = 954
        end
      end
      inherited DBGrid1: TDBGrid
        Width = 1118
        Height = 406
        DataSource = DataSource1
      end
    end
  end
  inherited PopupMenu1: TPopupMenu
    Left = 720
    Top = 17
  end
  object DataSource1: TDataSource
    Left = 648
    Top = 9
  end
end
