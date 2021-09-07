inherited FormCadastroProduto: TFormCadastroProduto
  Caption = 'Cadastro de Produtos'
  ClientHeight = 232
  ClientWidth = 565
  ExplicitWidth = 571
  ExplicitHeight = 260
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel [0]
    Left = 79
    Top = 48
    Width = 59
    Height = 13
    Caption = 'DESCRICAO'
  end
  object Label2: TLabel [1]
    Left = 32
    Top = 104
    Width = 45
    Height = 13
    Caption = 'UNIDADE'
  end
  object Label3: TLabel [2]
    Left = 440
    Top = 48
    Width = 66
    Height = 13
    Caption = 'QUANTIDADE'
  end
  object Label4: TLabel [3]
    Left = 407
    Top = 104
    Width = 34
    Height = 13
    Caption = 'CUSTO'
  end
  object Label5: TLabel [4]
    Left = 99
    Top = 104
    Width = 86
    Height = 13
    Caption = 'VALOR UNIT'#193'RIO'
  end
  object Label7: TLabel [5]
    Left = 206
    Top = 104
    Width = 72
    Height = 13
    Caption = 'PESO L'#205'QUIDO'
  end
  object Label8: TLabel [6]
    Left = 299
    Top = 104
    Width = 63
    Height = 13
    Caption = 'PESO BRUTO'
  end
  object Label9: TLabel [7]
    Left = 161
    Top = 157
    Width = 63
    Height = 13
    Caption = 'FABRICANTE'
  end
  object Label10: TLabel [8]
    Left = 18
    Top = 157
    Width = 81
    Height = 13
    Caption = 'MARCA MODELO'
  end
  object Label6: TLabel [9]
    Left = 16
    Top = 48
    Width = 41
    Height = 13
    Caption = 'C'#211'DIGO'
  end
  object Label11: TLabel [10]
    Left = 391
    Top = 157
    Width = 69
    Height = 13
    Caption = 'FORNECEDOR'
  end
  inherited pnCabecalho: TPanel
    Width = 565
    ExplicitWidth = 565
    inherited btnSair: TBitBtn
      Left = 484
      ExplicitLeft = 484
    end
  end
  object DBEdit1: TDBEdit [12]
    Left = 79
    Top = 67
    Width = 346
    Height = 21
    DataField = 'DESCRICAO'
    DataSource = dsCadastro
    TabOrder = 1
  end
  object DBEdit2: TDBEdit [13]
    Left = 32
    Top = 123
    Width = 45
    Height = 21
    CharCase = ecUpperCase
    DataField = 'UNIDADE'
    DataSource = dsCadastro
    TabOrder = 3
  end
  object DBEdit9: TDBEdit [14]
    Left = 161
    Top = 176
    Width = 224
    Height = 21
    DataField = 'FABRICANTE'
    DataSource = dsCadastro
    TabOrder = 9
  end
  object DBEdit10: TDBEdit [15]
    Left = 18
    Top = 176
    Width = 137
    Height = 21
    DataField = 'MARCA_MODELO'
    DataSource = dsCadastro
    TabOrder = 8
  end
  object DBMoneyEdit1: TDBMoneyEdit [16]
    Left = 440
    Top = 67
    Width = 81
    Height = 21
    CalculatorLook.ButtonWidth = 24
    CalculatorLook.ButtonHeight = 24
    CalculatorLook.ButtonColor = clSilver
    CalculatorLook.Color = clWhite
    CalculatorLook.Flat = False
    CalculatorLook.Font.Charset = DEFAULT_CHARSET
    CalculatorLook.Font.Color = clWindowText
    CalculatorLook.Font.Height = -11
    CalculatorLook.Font.Name = 'Tahoma'
    CalculatorLook.Font.Style = []
    TabOrder = 2
    Version = '1.1.2.0'
    DataField = 'QTD'
    DataSource = dsCadastro
  end
  object DBEdit3: TDBEdit [17]
    Left = 16
    Top = 67
    Width = 57
    Height = 21
    DataField = 'ID_PRODUTO'
    DataSource = dsCadastro
    Enabled = False
    TabOrder = 11
  end
  object DBLookupComboBox1: TDBLookupComboBox [18]
    Left = 391
    Top = 176
    Width = 154
    Height = 21
    DataField = 'ID_FORNECEDOR'
    DataSource = dsCadastro
    KeyField = 'ID_FORNECEDOR'
    ListField = 'RAZAO_SOCIAL'
    ListSource = Lookup.dsFornecedor
    TabOrder = 10
  end
  object DBAdvMoneyEdit1: TDBAdvMoneyEdit [19]
    Left = 206
    Top = 123
    Width = 72
    Height = 21
    EditType = etFloat
    EmptyTextStyle = []
    FlatLineColor = 11250603
    FocusColor = clWindow
    FocusFontColor = 3881787
    Precision = 2
    LabelFont.Charset = DEFAULT_CHARSET
    LabelFont.Color = clWindowText
    LabelFont.Height = -11
    LabelFont.Name = 'Tahoma'
    LabelFont.Style = []
    Lookup.Font.Charset = DEFAULT_CHARSET
    Lookup.Font.Color = clWindowText
    Lookup.Font.Height = -11
    Lookup.Font.Name = 'Arial'
    Lookup.Font.Style = []
    Lookup.Separator = ';'
    Color = clWindow
    TabOrder = 5
    Text = '0,00'
    Visible = True
    Version = '1.1.3.0'
    CalculatorLook.ButtonWidth = 24
    CalculatorLook.ButtonHeight = 24
    CalculatorLook.ButtonColor = clSilver
    CalculatorLook.Color = clWhite
    CalculatorLook.Flat = False
    CalculatorLook.Font.Charset = DEFAULT_CHARSET
    CalculatorLook.Font.Color = clWindowText
    CalculatorLook.Font.Height = -11
    CalculatorLook.Font.Name = 'Tahoma'
    CalculatorLook.Font.Style = []
    DataField = 'PESO_LIQUIDO'
    DataSource = dsCadastro
  end
  object DBAdvMoneyEdit2: TDBAdvMoneyEdit [20]
    Left = 299
    Top = 123
    Width = 72
    Height = 21
    EditType = etFloat
    EmptyTextStyle = []
    FlatLineColor = 11250603
    FocusColor = clWindow
    FocusFontColor = 3881787
    Precision = 2
    LabelFont.Charset = DEFAULT_CHARSET
    LabelFont.Color = clWindowText
    LabelFont.Height = -11
    LabelFont.Name = 'Tahoma'
    LabelFont.Style = []
    Lookup.Font.Charset = DEFAULT_CHARSET
    Lookup.Font.Color = clWindowText
    Lookup.Font.Height = -11
    Lookup.Font.Name = 'Arial'
    Lookup.Font.Style = []
    Lookup.Separator = ';'
    Color = clWindow
    TabOrder = 6
    Text = '0,00'
    Visible = True
    Version = '1.1.3.0'
    CalculatorLook.ButtonWidth = 24
    CalculatorLook.ButtonHeight = 24
    CalculatorLook.ButtonColor = clSilver
    CalculatorLook.Color = clWhite
    CalculatorLook.Flat = False
    CalculatorLook.Font.Charset = DEFAULT_CHARSET
    CalculatorLook.Font.Color = clWindowText
    CalculatorLook.Font.Height = -11
    CalculatorLook.Font.Name = 'Tahoma'
    CalculatorLook.Font.Style = []
    DataField = 'PESO_BRUTO'
    DataSource = dsCadastro
  end
  object DBAdvMoneyEdit3: TDBAdvMoneyEdit [21]
    Left = 407
    Top = 123
    Width = 72
    Height = 21
    EditType = etFloat
    EmptyTextStyle = []
    FlatLineColor = 11250603
    FocusColor = clWindow
    FocusFontColor = 3881787
    Precision = 2
    LabelFont.Charset = DEFAULT_CHARSET
    LabelFont.Color = clWindowText
    LabelFont.Height = -11
    LabelFont.Name = 'Tahoma'
    LabelFont.Style = []
    Lookup.Font.Charset = DEFAULT_CHARSET
    Lookup.Font.Color = clWindowText
    Lookup.Font.Height = -11
    Lookup.Font.Name = 'Arial'
    Lookup.Font.Style = []
    Lookup.Separator = ';'
    Color = clWindow
    TabOrder = 7
    Text = '0,00'
    Visible = True
    Version = '1.1.3.0'
    CalculatorLook.ButtonWidth = 24
    CalculatorLook.ButtonHeight = 24
    CalculatorLook.ButtonColor = clSilver
    CalculatorLook.Color = clWhite
    CalculatorLook.Flat = False
    CalculatorLook.Font.Charset = DEFAULT_CHARSET
    CalculatorLook.Font.Color = clWindowText
    CalculatorLook.Font.Height = -11
    CalculatorLook.Font.Name = 'Tahoma'
    CalculatorLook.Font.Style = []
    DataField = 'CUSTO'
    DataSource = dsCadastro
  end
  object DBAdvMoneyEdit4: TDBAdvMoneyEdit [22]
    Left = 96
    Top = 123
    Width = 89
    Height = 21
    EditType = etFloat
    EmptyTextStyle = []
    FlatLineColor = 11250603
    FocusColor = clWindow
    FocusFontColor = 3881787
    Precision = 2
    LabelFont.Charset = DEFAULT_CHARSET
    LabelFont.Color = clWindowText
    LabelFont.Height = -11
    LabelFont.Name = 'Tahoma'
    LabelFont.Style = []
    Lookup.Font.Charset = DEFAULT_CHARSET
    Lookup.Font.Color = clWindowText
    Lookup.Font.Height = -11
    Lookup.Font.Name = 'Arial'
    Lookup.Font.Style = []
    Lookup.Separator = ';'
    Color = clWindow
    TabOrder = 4
    Text = '0,00'
    Visible = True
    Version = '1.1.3.0'
    CalculatorLook.ButtonWidth = 24
    CalculatorLook.ButtonHeight = 24
    CalculatorLook.ButtonColor = clSilver
    CalculatorLook.Color = clWhite
    CalculatorLook.Flat = False
    CalculatorLook.Font.Charset = DEFAULT_CHARSET
    CalculatorLook.Font.Color = clWindowText
    CalculatorLook.Font.Height = -11
    CalculatorLook.Font.Name = 'Tahoma'
    CalculatorLook.Font.Style = []
    DataField = 'V_UNITARIO'
    DataSource = dsCadastro
  end
  inherited fdQryCadastro: TFDQuery
    UpdateOptions.AssignedValues = [uvFetchGeneratorsPoint, uvGeneratorName]
    UpdateOptions.FetchGeneratorsPoint = gpImmediate
    UpdateOptions.GeneratorName = 'GEN_PRODUTO_ID'
    UpdateOptions.AutoIncFields = 'ID_PRODUTO'
    SQL.Strings = (
      'SELECT * FROM PRODUTO')
    Left = 864
    Top = 120
    object fdQryCadastroID_PRODUTO: TIntegerField
      FieldName = 'ID_PRODUTO'
      Origin = 'ID_PRODUTO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object fdQryCadastroDESCRICAO: TWideStringField
      FieldName = 'DESCRICAO'
      Origin = 'DESCRICAO'
      Size = 80
    end
    object fdQryCadastroQTD: TSingleField
      FieldName = 'QTD'
      Origin = 'QTD'
    end
    object fdQryCadastroCUSTO: TSingleField
      FieldName = 'CUSTO'
      Origin = 'CUSTO'
    end
    object fdQryCadastroV_UNITARIO: TSingleField
      FieldName = 'V_UNITARIO'
      Origin = 'V_UNITARIO'
    end
    object fdQryCadastroUNIDADE: TWideStringField
      FieldName = 'UNIDADE'
      Origin = 'UNIDADE'
      Size = 4
    end
    object fdQryCadastroPESO_LIQUIDO: TSingleField
      FieldName = 'PESO_LIQUIDO'
      Origin = 'PESO_LIQUIDO'
    end
    object fdQryCadastroPESO_BRUTO: TSingleField
      FieldName = 'PESO_BRUTO'
      Origin = 'PESO_BRUTO'
    end
    object fdQryCadastroFABRICANTE: TWideStringField
      FieldName = 'FABRICANTE'
      Origin = 'FABRICANTE'
      Size = 60
    end
    object fdQryCadastroMARCA_MODELO: TWideStringField
      FieldName = 'MARCA_MODELO'
      Origin = 'MARCA_MODELO'
      Size = 255
    end
    object fdQryCadastroID_FORNECEDOR: TIntegerField
      FieldName = 'ID_FORNECEDOR'
      Origin = 'ID_FORNECEDOR'
    end
    object fdQryCadastroDT_EXCLUIDO: TDateField
      FieldName = 'DT_EXCLUIDO'
      Origin = 'DT_EXCLUIDO'
    end
  end
  inherited fdUpdCadastro: TFDUpdateSQL
    Left = 864
    Top = 176
  end
  inherited fdTransaction: TFDTransaction
    Left = 864
    Top = 232
  end
  inherited dsCadastro: TDataSource
    Left = 864
    Top = 64
  end
end
