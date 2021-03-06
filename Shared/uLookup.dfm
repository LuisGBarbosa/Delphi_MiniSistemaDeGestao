object Lookup: TLookup
  OldCreateOrder = False
  Height = 290
  Width = 546
  object fdQryEstados: TFDQuery
    Connection = dmDados.fdCon
    Transaction = fdTransaction
    SQL.Strings = (
      'SELECT * FROM ESTADO')
    Left = 272
    Top = 128
  end
  object dsEstados: TDataSource
    DataSet = fdQryEstados
    Left = 272
    Top = 184
  end
  object fdTransaction: TFDTransaction
    Connection = dmDados.fdCon
    Left = 24
    Top = 16
  end
  object fdQryCidades: TFDQuery
    Connection = dmDados.fdCon
    Transaction = fdTransaction
    SQL.Strings = (
      'SELECT * FROM CIDADE')
    Left = 200
    Top = 128
  end
  object dsCidades: TDataSource
    DataSet = fdQryCidades
    Left = 200
    Top = 184
  end
  object fdQryFornecedor: TFDQuery
    Connection = dmDados.fdCon
    Transaction = fdTransaction
    SQL.Strings = (
      'SELECT * FROM FORNECEDOR')
    Left = 32
    Top = 128
  end
  object dsFornecedor: TDataSource
    DataSet = fdQryFornecedor
    Left = 32
    Top = 184
  end
  object fdQryClientes: TFDQuery
    Connection = dmDados.fdCon
    Transaction = fdTransaction
    SQL.Strings = (
      'SELECT ID_CLIENTE,'
      ' DECODE (TIPO_FJ, '#39'F'#39', NOME, RAZAO_SOCIAL) NomeCliente'
      'FROM CLIENTE')
    Left = 120
    Top = 128
  end
  object dsClientes: TDataSource
    DataSet = fdQryClientes
    Left = 120
    Top = 184
  end
  object fdQryProdutos: TFDQuery
    Connection = dmDados.fdCon
    Transaction = fdTransaction
    SQL.Strings = (
      'SELECT ID_PRODUTO,'
      '       DESCRICAO,'
      '       V_UNITARIO'
      'FROM PRODUTO')
    Left = 344
    Top = 128
    object fdQryProdutosID_PRODUTO: TIntegerField
      FieldName = 'ID_PRODUTO'
      Origin = 'ID_PRODUTO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object fdQryProdutosDESCRICAO: TWideStringField
      FieldName = 'DESCRICAO'
      Origin = 'DESCRICAO'
      Size = 80
    end
    object fdQryProdutosV_UNITARIO: TSingleField
      FieldName = 'V_UNITARIO'
      Origin = 'V_UNITARIO'
    end
  end
  object dsProdutos: TDataSource
    DataSet = fdQryProdutos
    Left = 344
    Top = 184
  end
end
