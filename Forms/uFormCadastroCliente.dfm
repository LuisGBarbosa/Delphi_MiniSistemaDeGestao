inherited FormCadastroCliente: TFormCadastroCliente
  Caption = 'Cadastro de Cliente'
  ClientHeight = 275
  ClientWidth = 685
  OnShow = FormShow
  ExplicitWidth = 691
  ExplicitHeight = 303
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel [0]
    Left = 15
    Top = 48
    Width = 58
    Height = 13
    Caption = 'ID_CLIENTE'
    FocusControl = DBEdit
  end
  object Label2: TLabel [1]
    Left = 79
    Top = 48
    Width = 78
    Height = 13
    Caption = 'RAZAO_SOCIAL'
    FocusControl = edtRazaoSocial
  end
  object Label3: TLabel [2]
    Left = 319
    Top = 51
    Width = 50
    Height = 13
    Caption = 'FANTASIA'
    FocusControl = DBEdit2
  end
  object Label4: TLabel [3]
    Left = 525
    Top = 48
    Width = 50
    Height = 13
    Caption = 'CPF_CNPJ'
    FocusControl = DBEdit3
  end
  object Label5: TLabel [4]
    Left = 15
    Top = 94
    Width = 41
    Height = 13
    Caption = 'TIPO_FJ'
  end
  object Label6: TLabel [5]
    Left = 94
    Top = 97
    Width = 29
    Height = 13
    Caption = 'NOME'
    FocusControl = DBEdit4
  end
  object Label7: TLabel [6]
    Left = 319
    Top = 97
    Width = 30
    Height = 13
    Caption = 'EMAIL'
    FocusControl = DBEdit5
  end
  object Label8: TLabel [7]
    Left = 15
    Top = 141
    Width = 22
    Height = 13
    Caption = 'SITE'
    FocusControl = DBEdit6
  end
  object Label9: TLabel [8]
    Left = 221
    Top = 141
    Width = 54
    Height = 13
    Caption = 'ENDERECO'
    FocusControl = DBEdit7
  end
  object Label10: TLabel [9]
    Left = 15
    Top = 189
    Width = 39
    Height = 13
    Caption = 'BAIRRO'
    FocusControl = DBEdit8
  end
  object Label11: TLabel [10]
    Left = 221
    Top = 189
    Width = 10
    Height = 13
    Caption = 'IE'
    FocusControl = DBEdit9
  end
  object Label12: TLabel [11]
    Left = 319
    Top = 189
    Width = 12
    Height = 13
    Caption = 'IM'
    FocusControl = DBEdit10
  end
  object Label13: TLabel [12]
    Left = 503
    Top = 140
    Width = 33
    Height = 13
    Caption = 'Cidade'
  end
  object Label14: TLabel [13]
    Left = 503
    Top = 189
    Width = 33
    Height = 13
    Caption = 'Estado'
  end
  inherited pnCabecalho: TPanel
    Width = 685
    TabOrder = 14
    ExplicitWidth = 802
    inherited btnSair: TBitBtn
      Left = 605
      ExplicitLeft = 605
    end
  end
  object DBEdit: TDBEdit [15]
    Left = 15
    Top = 67
    Width = 58
    Height = 21
    DataField = 'ID_CLIENTE'
    DataSource = dsCadastro
    Enabled = False
    TabOrder = 0
  end
  object edtRazaoSocial: TDBEdit [16]
    Left = 79
    Top = 67
    Width = 234
    Height = 21
    DataField = 'RAZAO_SOCIAL'
    DataSource = dsCadastro
    TabOrder = 1
  end
  object DBEdit2: TDBEdit [17]
    Left = 319
    Top = 67
    Width = 200
    Height = 21
    DataField = 'FANTASIA'
    DataSource = dsCadastro
    TabOrder = 2
  end
  object DBEdit3: TDBEdit [18]
    Left = 525
    Top = 67
    Width = 108
    Height = 21
    DataField = 'CPF_CNPJ'
    DataSource = dsCadastro
    TabOrder = 3
  end
  object edtTipoFJ: TDBComboBox [19]
    Left = 15
    Top = 113
    Width = 73
    Height = 21
    DataField = 'TIPO_FJ'
    DataSource = dsCadastro
    Items.Strings = (
      'F'
      'J')
    TabOrder = 4
  end
  object DBEdit4: TDBEdit [20]
    Left = 94
    Top = 113
    Width = 219
    Height = 21
    DataField = 'NOME'
    DataSource = dsCadastro
    TabOrder = 5
  end
  object DBEdit5: TDBEdit [21]
    Left = 319
    Top = 113
    Width = 314
    Height = 21
    DataField = 'EMAIL'
    DataSource = dsCadastro
    TabOrder = 13
  end
  object DBEdit6: TDBEdit [22]
    Left = 15
    Top = 157
    Width = 200
    Height = 21
    DataField = 'SITE'
    DataSource = dsCadastro
    TabOrder = 6
  end
  object DBEdit7: TDBEdit [23]
    Left = 221
    Top = 157
    Width = 268
    Height = 21
    DataField = 'ENDERECO'
    DataSource = dsCadastro
    TabOrder = 7
  end
  object DBEdit8: TDBEdit [24]
    Left = 15
    Top = 205
    Width = 200
    Height = 21
    DataField = 'BAIRRO'
    DataSource = dsCadastro
    TabOrder = 9
  end
  object DBEdit9: TDBEdit [25]
    Left = 221
    Top = 205
    Width = 92
    Height = 21
    DataField = 'IE'
    DataSource = dsCadastro
    TabOrder = 10
  end
  object DBEdit10: TDBEdit [26]
    Left = 319
    Top = 205
    Width = 170
    Height = 21
    DataField = 'IM'
    DataSource = dsCadastro
    TabOrder = 11
  end
  object DBLookupComboBox1: TDBLookupComboBox [27]
    Left = 503
    Top = 157
    Width = 130
    Height = 21
    DataField = 'ID_CIDADE'
    DataSource = dsCadastro
    KeyField = 'ID_CIDADE'
    ListField = 'NOME'
    ListSource = Lookup.dsCidades
    TabOrder = 8
  end
  object DBLookupComboBox2: TDBLookupComboBox [28]
    Left = 503
    Top = 205
    Width = 42
    Height = 21
    DataField = 'ID_ESTADO'
    DataSource = dsCadastro
    KeyField = 'ID_ESTADO'
    ListField = 'SIGLA'
    ListSource = Lookup.dsEstados
    TabOrder = 12
  end
  inherited fdQryCadastro: TFDQuery
    BeforeInsert = fdQryCadastroBeforeInsert
    BeforeEdit = fdQryCadastroBeforeEdit
    UpdateOptions.AssignedValues = [uvFetchGeneratorsPoint, uvGeneratorName]
    UpdateOptions.FetchGeneratorsPoint = gpImmediate
    UpdateOptions.GeneratorName = 'GEN_CLIENTE_ID'
    UpdateOptions.AutoIncFields = 'ID_CLIENTE'
    SQL.Strings = (
      'SELECT * FROM CLIENTE')
    Left = 672
    Top = 104
    object fdQryCadastroID_CLIENTE: TIntegerField
      AutoGenerateValue = arAutoInc
      FieldName = 'ID_CLIENTE'
      Origin = 'ID_CLIENTE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
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
    object fdQryCadastroCPF_CNPJ: TWideStringField
      FieldName = 'CPF_CNPJ'
      Origin = 'CPF_CNPJ'
    end
    object fdQryCadastroTIPO_FJ: TWideStringField
      FieldName = 'TIPO_FJ'
      Origin = 'TIPO_FJ'
      Size = 1
    end
    object fdQryCadastroNOME: TWideStringField
      FieldName = 'NOME'
      Origin = 'NOME'
      Size = 80
    end
    object fdQryCadastroEMAIL: TWideStringField
      FieldName = 'EMAIL'
      Origin = 'EMAIL'
      Size = 255
    end
    object fdQryCadastroSITE: TWideStringField
      FieldName = 'SITE'
      Origin = 'SITE'
      Size = 255
    end
    object fdQryCadastroENDERECO: TWideStringField
      FieldName = 'ENDERECO'
      Origin = 'ENDERECO'
      Size = 255
    end
    object fdQryCadastroCOMPLEMENTO: TWideStringField
      FieldName = 'COMPLEMENTO'
      Origin = 'COMPLEMENTO'
      Size = 40
    end
    object fdQryCadastroNUMERO: TWideStringField
      FieldName = 'NUMERO'
      Origin = 'NUMERO'
    end
    object fdQryCadastroBAIRRO: TWideStringField
      FieldName = 'BAIRRO'
      Origin = 'BAIRRO'
      Size = 50
    end
    object fdQryCadastroIE: TWideStringField
      FieldName = 'IE'
      Origin = 'IE'
      Size = 30
    end
    object fdQryCadastroIM: TWideStringField
      FieldName = 'IM'
      Origin = 'IM'
      Size = 30
    end
    object fdQryCadastroDT_EXCLUIDO: TDateField
      FieldName = 'DT_EXCLUIDO'
      Origin = 'DT_EXCLUIDO'
    end
    object fdQryCadastroID_CIDADE: TIntegerField
      FieldName = 'ID_CIDADE'
      Origin = 'ID_CIDADE'
    end
    object fdQryCadastroID_ESTADO: TIntegerField
      FieldName = 'ID_ESTADO'
      Origin = 'ID_ESTADO'
    end
  end
  inherited fdUpdCadastro: TFDUpdateSQL
    Left = 672
    Top = 160
  end
  inherited fdTransaction: TFDTransaction
    Left = 672
    Top = 216
  end
  inherited dsCadastro: TDataSource
    Left = 672
    Top = 48
  end
  inherited fdQryCodigo: TFDQuery
    Left = 576
    Top = 216
  end
end
