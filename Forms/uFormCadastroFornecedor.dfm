inherited FormCadastroFornecedores: TFormCadastroFornecedores
  Caption = 'Cadastro de Fornecedores'
  ClientHeight = 228
  ClientWidth = 629
  OnShow = FormShow
  ExplicitWidth = 635
  ExplicitHeight = 256
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel [0]
    Left = 16
    Top = 53
    Width = 33
    Height = 13
    Caption = 'C'#243'digo'
  end
  object Label2: TLabel [1]
    Left = 108
    Top = 53
    Width = 60
    Height = 13
    Caption = 'Raz'#227'o Social'
  end
  object Label3: TLabel [2]
    Left = 303
    Top = 53
    Width = 41
    Height = 13
    Caption = 'Fantasia'
  end
  object Label4: TLabel [3]
    Left = 503
    Top = 53
    Width = 25
    Height = 13
    Caption = 'CNPJ'
  end
  object Label5: TLabel [4]
    Left = 16
    Top = 101
    Width = 45
    Height = 13
    Caption = 'Endere'#231'o'
  end
  object Label6: TLabel [5]
    Left = 207
    Top = 101
    Width = 28
    Height = 13
    Caption = 'Bairro'
  end
  object Label7: TLabel [6]
    Left = 431
    Top = 99
    Width = 33
    Height = 13
    Caption = 'Cidade'
  end
  object Label8: TLabel [7]
    Left = 567
    Top = 101
    Width = 33
    Height = 13
    Caption = 'Estado'
  end
  object Label9: TLabel [8]
    Left = 16
    Top = 152
    Width = 28
    Height = 13
    Caption = 'E-mail'
  end
  inherited pnCabecalho: TPanel
    Width = 629
    ExplicitWidth = 629
    inherited btnSair: TBitBtn
      Left = 547
      ExplicitLeft = 547
    end
  end
  object DBEdit1: TDBEdit [10]
    Left = 16
    Top = 72
    Width = 69
    Height = 21
    DataField = 'ID_FORNECEDOR'
    DataSource = dsCadastro
    Enabled = False
    TabOrder = 1
  end
  object edtRazaoSocial: TDBEdit [11]
    Left = 107
    Top = 72
    Width = 190
    Height = 21
    DataField = 'RAZAO_SOCIAL'
    DataSource = dsCadastro
    TabOrder = 2
  end
  object DBEdit3: TDBEdit [12]
    Left = 303
    Top = 72
    Width = 194
    Height = 21
    DataField = 'FANTASIA'
    DataSource = dsCadastro
    TabOrder = 3
  end
  object DBEdit4: TDBEdit [13]
    Left = 503
    Top = 72
    Width = 121
    Height = 21
    DataField = 'CNPJ'
    DataSource = dsCadastro
    TabOrder = 4
  end
  object DBEdit5: TDBEdit [14]
    Left = 16
    Top = 120
    Width = 185
    Height = 21
    DataField = 'ENDERECO'
    DataSource = dsCadastro
    TabOrder = 5
  end
  object DBEdit6: TDBEdit [15]
    Left = 207
    Top = 120
    Width = 218
    Height = 21
    DataField = 'BAIRRO'
    DataSource = dsCadastro
    TabOrder = 6
  end
  object DBLookupComboBox1: TDBLookupComboBox [16]
    Left = 431
    Top = 120
    Width = 130
    Height = 21
    DataField = 'ID_CIDADE'
    DataSource = dsCadastro
    KeyField = 'ID_CIDADE'
    ListField = 'NOME'
    ListSource = Lookup.dsCidades
    TabOrder = 7
  end
  object DBLookupComboBox2: TDBLookupComboBox [17]
    Left = 567
    Top = 120
    Width = 41
    Height = 21
    DataField = 'ID_ESTADO'
    DataSource = dsCadastro
    KeyField = 'ID_ESTADO'
    ListField = 'SIGLA'
    ListSource = Lookup.dsEstados
    TabOrder = 8
  end
  object DBEdit7: TDBEdit [18]
    Left = 16
    Top = 171
    Width = 592
    Height = 21
    DataField = 'EMAIL'
    DataSource = dsCadastro
    TabOrder = 9
  end
  inherited fdQryCadastro: TFDQuery
    UpdateOptions.AssignedValues = [uvFetchGeneratorsPoint, uvGeneratorName]
    UpdateOptions.FetchGeneratorsPoint = gpImmediate
    UpdateOptions.GeneratorName = 'GEN_FORNECEDOR_ID'
    UpdateOptions.AutoIncFields = 'ID_FORNECEDOR'
    UpdateObject = nil
    SQL.Strings = (
      'SELECT * FROM FORNECEDOR')
    Left = 656
    object fdQryCadastroID_FORNECEDOR: TFDAutoIncField
      FieldName = 'ID_FORNECEDOR'
      Origin = 'ID_FORNECEDOR'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      IdentityInsert = True
    end
    object fdQryCadastroRAZAO_SOCIAL: TWideStringField
      FieldName = 'RAZAO_SOCIAL'
      Origin = 'RAZAO_SOCIAL'
      Size = 80
    end
    object fdQryCadastroFANTASIA: TWideStringField
      FieldName = 'FANTASIA'
      Origin = 'FANTASIA'
      Size = 80
    end
    object fdQryCadastroCNPJ: TWideStringField
      FieldName = 'CNPJ'
      Origin = 'CNPJ'
    end
    object fdQryCadastroENDERECO: TWideStringField
      FieldName = 'ENDERECO'
      Origin = 'ENDERECO'
      Size = 255
    end
    object fdQryCadastroBAIRRO: TWideStringField
      FieldName = 'BAIRRO'
      Origin = 'BAIRRO'
      Size = 50
    end
    object fdQryCadastroID_CIDADE: TIntegerField
      FieldName = 'ID_CIDADE'
      Origin = 'ID_CIDADE'
    end
    object fdQryCadastroID_ESTADO: TIntegerField
      FieldName = 'ID_ESTADO'
      Origin = 'ID_ESTADO'
    end
    object fdQryCadastroEMAIL: TWideStringField
      FieldName = 'EMAIL'
      Origin = 'EMAIL'
      Size = 255
    end
    object fdQryCadastroDT_EXCLUIDO: TDateField
      FieldName = 'DT_EXCLUIDO'
      Origin = 'DT_EXCLUIDO'
    end
  end
  inherited fdUpdCadastro: TFDUpdateSQL
    Left = 656
  end
  inherited fdTransaction: TFDTransaction
    Left = 656
  end
  inherited dsCadastro: TDataSource
    Left = 656
  end
end
