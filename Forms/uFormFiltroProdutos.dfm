inherited FormFiltroProdutos: TFormFiltroProdutos
  Caption = 'Filtro de Produtos'
  ClientHeight = 386
  ClientWidth = 951
  FormStyle = fsMDIChild
  Visible = True
  WindowState = wsMaximized
  ExplicitWidth = 967
  ExplicitHeight = 424
  PixelsPerInch = 96
  TextHeight = 13
  inherited Panel1: TPanel
    Width = 951
    ExplicitWidth = 951
    inherited Label1: TLabel
      Width = 33
      Caption = 'C'#243'digo'
      ExplicitWidth = 33
    end
    object Label2: TLabel [1]
      Left = 136
      Top = 12
      Width = 46
      Height = 13
      Caption = 'Descri'#231#227'o'
    end
    inherited edtFiltro: TEdit
      Width = 105
      ExplicitWidth = 105
    end
    inherited btnFiltro: TButton
      Left = 496
      OnClick = btnFiltroClick
      ExplicitLeft = 496
    end
    inherited Panel2: TPanel
      Left = 849
      ExplicitLeft = 849
    end
    object edtDescricao: TEdit
      Left = 136
      Top = 31
      Width = 346
      Height = 21
      TabOrder = 3
    end
    object Button1: TButton
      Left = 577
      Top = 29
      Width = 75
      Height = 25
      Caption = 'Novo'
      TabOrder = 4
      OnClick = Button1Click
    end
    object Button3: TButton
      Left = 658
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
    Width = 951
    Height = 305
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
    UpdateOptions.AssignedValues = [uvFetchGeneratorsPoint, uvGeneratorName]
    UpdateOptions.FetchGeneratorsPoint = gpImmediate
    UpdateOptions.GeneratorName = 'GEN_PRODUTO_ID'
    UpdateOptions.AutoIncFields = 'ID_PRODUTO'
    SQL.Strings = (
      'SELECT P.ID_PRODUTO,'
      '    P.DESCRICAO,'
      '    P.QTD,'
      '    P.CUSTO,'
      '    P.V_UNITARIO,'
      '    P.UNIDADE,'
      '    P.PESO_LIQUIDO,'
      '    P.PESO_BRUTO,'
      '    P.FABRICANTE,'
      '    P.MARCA_MODELO,'
      '    F.RAZAO_SOCIAL FORNECEDOR'
      
        'FROM PRODUTO P LEFT JOIN FORNECEDOR F ON F.ID_FORNECEDOR = P.ID_' +
        'FORNECEDOR'
      'WHERE 1=1')
    object fdQryFiltroID_PRODUTO: TFDAutoIncField
      DisplayWidth = 11
      FieldName = 'ID_PRODUTO'
      Origin = 'ID_PRODUTO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      IdentityInsert = True
    end
    object fdQryFiltroDESCRICAO: TWideStringField
      DisplayWidth = 45
      FieldName = 'DESCRICAO'
      Origin = 'DESCRICAO'
      Size = 80
    end
    object fdQryFiltroQTD: TSingleField
      DisplayWidth = 10
      FieldName = 'QTD'
      Origin = 'QTD'
    end
    object fdQryFiltroCUSTO: TSingleField
      DisplayWidth = 10
      FieldName = 'CUSTO'
      Origin = 'CUSTO'
    end
    object fdQryFiltroV_UNITARIO: TSingleField
      DisplayWidth = 10
      FieldName = 'V_UNITARIO'
      Origin = 'V_UNITARIO'
    end
    object fdQryFiltroUNIDADE: TWideStringField
      DisplayWidth = 7
      FieldName = 'UNIDADE'
      Origin = 'UNIDADE'
      Size = 4
    end
    object fdQryFiltroPESO_LIQUIDO: TSingleField
      DisplayWidth = 12
      FieldName = 'PESO_LIQUIDO'
      Origin = 'PESO_LIQUIDO'
    end
    object fdQryFiltroPESO_BRUTO: TSingleField
      DisplayWidth = 11
      FieldName = 'PESO_BRUTO'
      Origin = 'PESO_BRUTO'
    end
    object fdQryFiltroFABRICANTE: TWideStringField
      DisplayWidth = 40
      FieldName = 'FABRICANTE'
      Origin = 'FABRICANTE'
      Size = 60
    end
    object fdQryFiltroMARCA_MODELO: TWideStringField
      DisplayWidth = 255
      FieldName = 'MARCA_MODELO'
      Origin = 'MARCA_MODELO'
      Size = 255
    end
    object fdQryFiltroFORNECEDOR: TWideStringField
      AutoGenerateValue = arDefault
      DisplayWidth = 45
      FieldName = 'FORNECEDOR'
      Origin = 'RAZAO_SOCIAL'
      ProviderFlags = []
      ReadOnly = True
      Size = 80
    end
  end
end
