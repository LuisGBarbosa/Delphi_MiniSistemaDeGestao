inherited FormCadastroEstado: TFormCadastroEstado
  Caption = 'Cadastro de Estados'
  ClientHeight = 136
  ClientWidth = 565
  ExplicitWidth = 571
  ExplicitHeight = 164
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel [0]
    Left = 8
    Top = 51
    Width = 57
    Height = 13
    Caption = 'ID_ESTADO'
    FocusControl = DBEdit1
  end
  object Label2: TLabel [1]
    Left = 8
    Top = 91
    Width = 29
    Height = 13
    Caption = 'NOME'
    FocusControl = DBEdit2
  end
  object Label3: TLabel [2]
    Left = 214
    Top = 91
    Width = 29
    Height = 13
    Caption = 'SIGLA'
    FocusControl = DBEdit3
  end
  inherited pnCabecalho: TPanel
    Width = 565
    ExplicitWidth = 565
    inherited btnSair: TBitBtn
      Left = 483
      ExplicitLeft = 483
    end
  end
  object DBEdit1: TDBEdit [4]
    Left = 8
    Top = 67
    Width = 73
    Height = 21
    Color = clBtnFace
    DataField = 'ID_ESTADO'
    DataSource = dsCadastro
    TabOrder = 1
  end
  object DBEdit2: TDBEdit [5]
    Left = 8
    Top = 107
    Width = 200
    Height = 21
    DataField = 'NOME'
    DataSource = dsCadastro
    TabOrder = 2
  end
  object DBEdit3: TDBEdit [6]
    Left = 214
    Top = 107
    Width = 30
    Height = 21
    DataField = 'SIGLA'
    DataSource = dsCadastro
    TabOrder = 3
  end
  inherited fdQryCadastro: TFDQuery
    UpdateOptions.AssignedValues = [uvFetchGeneratorsPoint, uvGeneratorName]
    UpdateOptions.FetchGeneratorsPoint = gpImmediate
    UpdateOptions.GeneratorName = 'GEN_ESTADO_ID'
    UpdateOptions.AutoIncFields = 'ID_ESTADO'
    SQL.Strings = (
      'SELECT * FROM ESTADO')
    object fdQryCadastroID_ESTADO: TFDAutoIncField
      FieldName = 'ID_ESTADO'
      Origin = 'ID_ESTADO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      IdentityInsert = True
    end
    object fdQryCadastroNOME: TWideStringField
      FieldName = 'NOME'
      Origin = 'NOME'
      Size = 60
    end
    object fdQryCadastroSIGLA: TWideStringField
      FieldName = 'SIGLA'
      Origin = 'SIGLA'
      Size = 2
    end
    object fdQryCadastroDT_EXCLUIDO: TDateField
      FieldName = 'DT_EXCLUIDO'
      Origin = 'DT_EXCLUIDO'
    end
  end
end
