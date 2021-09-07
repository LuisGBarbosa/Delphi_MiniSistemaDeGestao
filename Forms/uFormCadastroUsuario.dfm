inherited FormCadastroUsuario: TFormCadastroUsuario
  Caption = 'Cadastro de Usu'#225'rios'
  ClientHeight = 187
  ClientWidth = 537
  ExplicitWidth = 543
  ExplicitHeight = 215
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel [0]
    Left = 32
    Top = 111
    Width = 33
    Height = 13
    Caption = 'NOME:'
  end
  object Label2: TLabel [1]
    Left = 118
    Top = 54
    Width = 35
    Height = 13
    Caption = 'LOGIN:'
  end
  object Label3: TLabel [2]
    Left = 270
    Top = 111
    Width = 37
    Height = 13
    Caption = 'SENHA:'
  end
  object Label4: TLabel [3]
    Left = 32
    Top = 54
    Width = 41
    Height = 13
    Caption = 'C'#211'DIGO'
  end
  inherited pnCabecalho: TPanel
    Width = 537
    ExplicitWidth = 537
    inherited SpeedButton1: TSpeedButton
      Left = 352
      Top = 9
      ExplicitLeft = 352
      ExplicitTop = 9
    end
    inherited SpeedButton2: TSpeedButton
      Left = 376
      Top = 9
      ExplicitLeft = 376
      ExplicitTop = 9
    end
    inherited SpeedButton3: TSpeedButton
      Left = 400
      Top = 9
      ExplicitLeft = 400
      ExplicitTop = 9
    end
    inherited SpeedButton4: TSpeedButton
      Left = 424
      Top = 9
      ExplicitLeft = 424
      ExplicitTop = 9
    end
    inherited btnSair: TBitBtn
      Left = 456
      ExplicitLeft = 456
    end
  end
  object edtNome: TDBEdit [5]
    Left = 32
    Top = 130
    Width = 223
    Height = 21
    DataField = 'NOME'
    DataSource = dsCadastro
    TabOrder = 2
  end
  object edtLogin: TDBEdit [6]
    Left = 118
    Top = 73
    Width = 369
    Height = 21
    CharCase = ecUpperCase
    DataField = 'LOGIN'
    DataSource = dsCadastro
    TabOrder = 1
  end
  object edtSenha: TDBEdit [7]
    Left = 270
    Top = 130
    Width = 217
    Height = 21
    DataField = 'SENHA'
    DataSource = dsCadastro
    PasswordChar = '*'
    TabOrder = 3
  end
  object DBEdit4: TDBEdit [8]
    Left = 32
    Top = 73
    Width = 66
    Height = 21
    DataField = 'ID_USUARIO'
    DataSource = dsCadastro
    Enabled = False
    TabOrder = 4
  end
  inherited fdQryCadastro: TFDQuery
    BeforePost = fdQryCadastroBeforePost
    UpdateOptions.AssignedValues = [uvFetchGeneratorsPoint, uvGeneratorName]
    UpdateOptions.FetchGeneratorsPoint = gpImmediate
    UpdateOptions.GeneratorName = 'GEN_USUARIO_ID'
    UpdateOptions.AutoIncFields = 'ID_USUARIO'
    SQL.Strings = (
      'SELECT * FROM USUARIO')
    object fdQryCadastroNOME: TWideStringField
      FieldName = 'NOME'
      Origin = 'NOME'
      Size = 40
    end
    object fdQryCadastroLOGIN: TWideStringField
      FieldName = 'LOGIN'
      Origin = 'LOGIN'
    end
    object fdQryCadastroSENHA: TWideStringField
      FieldName = 'SENHA'
      Origin = 'SENHA'
      Size = 255
    end
    object fdQryCadastroID_USUARIO: TIntegerField
      FieldName = 'ID_USUARIO'
      Origin = 'ID_USUARIO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object fdQryCadastroDT_EXCLUIDO: TDateField
      FieldName = 'DT_EXCLUIDO'
      Origin = 'DT_EXCLUIDO'
    end
  end
end
