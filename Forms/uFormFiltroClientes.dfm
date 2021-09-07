inherited FormFiltroClientes: TFormFiltroClientes
  Caption = 'Filtro de Clientes'
  ClientHeight = 363
  ClientWidth = 1009
  FormStyle = fsMDIChild
  Visible = True
  WindowState = wsMaximized
  ExplicitWidth = 1025
  ExplicitHeight = 401
  PixelsPerInch = 96
  TextHeight = 13
  inherited Panel1: TPanel
    Width = 1009
    ExplicitWidth = 1009
    object Label2: TLabel [1]
      Left = 208
      Top = 12
      Width = 41
      Height = 13
      Caption = 'Fantasia'
    end
    object Label3: TLabel [2]
      Left = 359
      Top = 12
      Width = 25
      Height = 13
      Caption = 'CNPJ'
    end
    object Label4: TLabel [3]
      Left = 486
      Top = 12
      Width = 33
      Height = 13
      Caption = 'C'#243'digo'
    end
    inherited edtFiltro: TEdit
      Width = 178
      ExplicitWidth = 178
    end
    inherited btnFiltro: TButton
      Left = 613
      OnClick = btnFiltroClick
      ExplicitLeft = 613
    end
    inherited Panel2: TPanel
      Left = 907
      ExplicitLeft = 907
    end
    object edtFantasia: TEdit
      Left = 208
      Top = 31
      Width = 145
      Height = 21
      TabOrder = 3
    end
    object edtCnpj: TEdit
      Left = 359
      Top = 31
      Width = 121
      Height = 21
      TabOrder = 4
    end
    object edtCodigo: TEdit
      Left = 486
      Top = 31
      Width = 121
      Height = 21
      TabOrder = 5
    end
    object btnNovo: TButton
      Left = 694
      Top = 29
      Width = 75
      Height = 25
      Caption = 'Novo'
      TabOrder = 6
      OnClick = btnNovoClick
    end
    object Button3: TButton
      Left = 775
      Top = 29
      Width = 75
      Height = 25
      Caption = 'Visualizar'
      TabOrder = 7
      OnClick = Button3Click
    end
  end
  object DBGrid1: TDBGrid [1]
    Left = 0
    Top = 81
    Width = 1009
    Height = 282
    Align = alClient
    DataSource = dsFiltro
    TabOrder = 1
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'ID_CLIENTE'
        Title.Caption = 'C'#243'digo'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'RAZAO_SOCIAL'
        Title.Caption = 'Raz'#227'o Social'
        Width = 200
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'FANTASIA'
        Title.Caption = 'Fantasia'
        Width = 200
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CPF_CNPJ'
        Title.Caption = 'CPF/CNPJ'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'TIPO_FJ'
        Title.Caption = 'Tipo Pessoa'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'NOME'
        Title.Caption = 'Nome'
        Width = 200
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'EMAIL'
        Title.Caption = 'E-mail'
        Width = 200
        Visible = True
      end>
  end
  inherited fdQryFiltro: TFDQuery
    SQL.Strings = (
      'SELECT * FROM CLIENTE')
    Left = 520
    Top = 144
    object fdQryFiltroID_CLIENTE: TIntegerField
      FieldName = 'ID_CLIENTE'
      Origin = 'ID_CLIENTE'
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
    object fdQryFiltroCPF_CNPJ: TWideStringField
      FieldName = 'CPF_CNPJ'
      Origin = 'CPF_CNPJ'
    end
    object fdQryFiltroTIPO_FJ: TWideStringField
      FieldName = 'TIPO_FJ'
      Origin = 'TIPO_FJ'
      Size = 1
    end
    object fdQryFiltroNOME: TWideStringField
      FieldName = 'NOME'
      Origin = 'NOME'
      Size = 80
    end
    object fdQryFiltroEMAIL: TWideStringField
      FieldName = 'EMAIL'
      Origin = 'EMAIL'
      Size = 255
    end
    object fdQryFiltroSITE: TWideStringField
      FieldName = 'SITE'
      Origin = 'SITE'
      Size = 255
    end
    object fdQryFiltroENDERECO: TWideStringField
      FieldName = 'ENDERECO'
      Origin = 'ENDERECO'
      Size = 255
    end
    object fdQryFiltroCOMPLEMENTO: TWideStringField
      FieldName = 'COMPLEMENTO'
      Origin = 'COMPLEMENTO'
      Size = 40
    end
    object fdQryFiltroNUMERO: TWideStringField
      FieldName = 'NUMERO'
      Origin = 'NUMERO'
    end
    object fdQryFiltroBAIRRO: TWideStringField
      FieldName = 'BAIRRO'
      Origin = 'BAIRRO'
      Size = 50
    end
    object fdQryFiltroIE: TWideStringField
      FieldName = 'IE'
      Origin = 'IE'
      Size = 30
    end
    object fdQryFiltroIM: TWideStringField
      FieldName = 'IM'
      Origin = 'IM'
      Size = 30
    end
    object fdQryFiltroDT_EXCLUIDO: TDateField
      FieldName = 'DT_EXCLUIDO'
      Origin = 'DT_EXCLUIDO'
    end
    object fdQryFiltroID_CIDADE: TIntegerField
      FieldName = 'ID_CIDADE'
      Origin = 'ID_CIDADE'
    end
    object fdQryFiltroID_ESTADO: TIntegerField
      FieldName = 'ID_ESTADO'
      Origin = 'ID_ESTADO'
    end
  end
  inherited dsFiltro: TDataSource
    Top = 248
  end
  inherited fdTransaction: TFDTransaction
    Left = 520
    Top = 200
  end
end
