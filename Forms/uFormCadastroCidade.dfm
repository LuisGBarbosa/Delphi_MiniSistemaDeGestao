inherited FormCadastroCidade: TFormCadastroCidade
  Caption = 'Cadastro de Cidades'
  ClientHeight = 136
  ClientWidth = 568
  ExplicitWidth = 574
  ExplicitHeight = 164
  PixelsPerInch = 96
  TextHeight = 13
  object Label2: TLabel [0]
    Left = 8
    Top = 89
    Width = 29
    Height = 13
    Caption = 'NOME'
    FocusControl = DBEdit2
  end
  object Label1: TLabel [1]
    Left = 8
    Top = 46
    Width = 55
    Height = 13
    Caption = 'ID_CIDADE'
    FocusControl = DBEdit1
  end
  inherited pnCabecalho: TPanel
    Width = 568
    ExplicitWidth = 568
    inherited btnSair: TBitBtn
      Left = 489
      ExplicitLeft = 489
    end
  end
  object DBEdit2: TDBEdit [3]
    Left = 8
    Top = 105
    Width = 200
    Height = 21
    DataField = 'NOME'
    DataSource = dsCadastro
    TabOrder = 1
  end
  object DBEdit1: TDBEdit [4]
    Left = 8
    Top = 62
    Width = 134
    Height = 21
    DataField = 'ID_CIDADE'
    DataSource = dsCadastro
    Enabled = False
    TabOrder = 2
  end
  inherited fdQryCadastro: TFDQuery
    UpdateOptions.AssignedValues = [uvFetchGeneratorsPoint, uvGeneratorName]
    UpdateOptions.FetchGeneratorsPoint = gpImmediate
    UpdateOptions.GeneratorName = 'GEN_CIDADE_ID'
    UpdateOptions.AutoIncFields = 'ID_CIDADE'
    SQL.Strings = (
      'SELECT * FROM CIDADE')
    object fdQryCadastroID_CIDADE: TFDAutoIncField
      FieldName = 'ID_CIDADE'
      Origin = 'ID_CIDADE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      IdentityInsert = True
    end
    object fdQryCadastroNOME: TWideStringField
      FieldName = 'NOME'
      Origin = 'NOME'
      Size = 60
    end
    object fdQryCadastroDT_EXCLUIDO: TDateField
      FieldName = 'DT_EXCLUIDO'
      Origin = 'DT_EXCLUIDO'
    end
  end
end
