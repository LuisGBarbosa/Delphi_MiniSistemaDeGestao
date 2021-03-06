inherited FormFiltroFornecedores: TFormFiltroFornecedores
  Caption = 'Filtro de Fornecedores'
  ClientWidth = 741
  FormStyle = fsMDIChild
  Visible = True
  WindowState = wsMaximized
  ExplicitWidth = 757
  PixelsPerInch = 96
  TextHeight = 13
  inherited Panel1: TPanel
    Width = 741
    ExplicitWidth = 741
    inherited Label1: TLabel
      Width = 60
      Caption = 'Raz'#227'o Social'
      ExplicitWidth = 60
    end
    object Label2: TLabel [1]
      Left = 192
      Top = 12
      Width = 25
      Height = 13
      Caption = 'CNPJ'
    end
    inherited edtFiltro: TEdit
      Width = 170
      ExplicitWidth = 170
    end
    inherited btnFiltro: TButton
      Left = 360
      OnClick = btnFiltroClick
      ExplicitLeft = 360
    end
    inherited Panel2: TPanel
      Left = 639
      ExplicitLeft = 639
    end
    object edtCnpj: TEdit
      Left = 192
      Top = 31
      Width = 153
      Height = 21
      TabOrder = 3
    end
    object Button1: TButton
      Left = 441
      Top = 29
      Width = 75
      Height = 25
      Caption = 'Novo'
      TabOrder = 4
      OnClick = Button1Click
    end
    object Button3: TButton
      Left = 522
      Top = 29
      Width = 75
      Height = 25
      Caption = 'Visualizar'
      TabOrder = 5
      OnClick = Button3Click
    end
  end
  object DBGrid1: TDBGrid [1]
    Left = 0
    Top = 81
    Width = 741
    Height = 255
    Align = alClient
    DataSource = dsFiltro
    TabOrder = 1
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
  end
  inherited fdQryFiltro: TFDQuery
    SQL.Strings = (
      'SELECT * FROM FORNECEDOR')
    object fdQryFiltroID_FORNECEDOR: TIntegerField
      FieldName = 'ID_FORNECEDOR'
      Origin = 'ID_FORNECEDOR'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object fdQryFiltroRAZAO_SOCIAL: TWideStringField
      FieldName = 'RAZAO_SOCIAL'
      Origin = 'RAZAO_SOCIAL'
      Size = 80
    end
    object fdQryFiltroFANTASIA: TWideStringField
      FieldName = 'FANTASIA'
      Origin = 'FANTASIA'
      Size = 80
    end
    object fdQryFiltroCNPJ: TWideStringField
      FieldName = 'CNPJ'
      Origin = 'CNPJ'
    end
    object fdQryFiltroENDERECO: TWideStringField
      FieldName = 'ENDERECO'
      Origin = 'ENDERECO'
      Size = 255
    end
    object fdQryFiltroBAIRRO: TWideStringField
      FieldName = 'BAIRRO'
      Origin = 'BAIRRO'
      Size = 50
    end
    object fdQryFiltroID_CIDADE: TIntegerField
      FieldName = 'ID_CIDADE'
      Origin = 'ID_CIDADE'
    end
    object fdQryFiltroID_ESTADO: TIntegerField
      FieldName = 'ID_ESTADO'
      Origin = 'ID_ESTADO'
    end
    object fdQryFiltroEMAIL: TWideStringField
      FieldName = 'EMAIL'
      Origin = 'EMAIL'
      Size = 255
    end
  end
end
