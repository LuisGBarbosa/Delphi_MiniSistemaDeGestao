inherited FormFiltroVendas: TFormFiltroVendas
  Caption = 'Filtro de Vendas'
  ClientHeight = 379
  ClientWidth = 948
  FormStyle = fsMDIChild
  Visible = True
  WindowState = wsMaximized
  OnShow = FormShow
  ExplicitWidth = 964
  ExplicitHeight = 417
  PixelsPerInch = 96
  TextHeight = 13
  inherited Panel1: TPanel
    Width = 948
    ExplicitWidth = 948
    inherited Label1: TLabel
      Width = 37
      Caption = 'Cliente:'
      ExplicitWidth = 37
    end
    object Label2: TLabel [1]
      Left = 239
      Top = 12
      Width = 88
      Height = 13
      Caption = 'Per'#237'odo de Venda:'
    end
    object Label3: TLabel [2]
      Left = 447
      Top = 12
      Width = 70
      Height = 13
      Caption = 'C'#243'digo Venda:'
    end
    inherited edtFiltro: TEdit
      Width = 217
      ExplicitWidth = 217
    end
    inherited btnFiltro: TButton
      Left = 631
      Top = 12
      OnClick = btnFiltroClick
      ExplicitLeft = 631
      ExplicitTop = 12
    end
    inherited Panel2: TPanel
      Left = 846
      ExplicitLeft = 846
    end
    object edtData1: TDateTimePicker
      Left = 239
      Top = 31
      Width = 98
      Height = 21
      Date = -109205.000000000000000000
      Time = -0.903059629636118200
      DoubleBuffered = False
      ParentDoubleBuffered = False
      TabOrder = 3
    end
    object edtData2: TDateTimePicker
      Left = 343
      Top = 31
      Width = 98
      Height = 21
      Date = 44439.000000000000000000
      Time = 0.903059629628842200
      TabOrder = 4
    end
    object edtCodigoVenda: TEdit
      Left = 447
      Top = 31
      Width = 83
      Height = 21
      TabOrder = 5
    end
    object cbFaturado: TCheckBox
      Left = 536
      Top = 33
      Width = 97
      Height = 17
      Caption = 'Faturado'
      TabOrder = 6
    end
    object btnImprimir: TButton
      Left = 712
      Top = 12
      Width = 75
      Height = 25
      Caption = 'Imprimir'
      TabOrder = 7
      OnClick = btnImprimirClick
    end
    object btnNovo: TButton
      Left = 631
      Top = 43
      Width = 75
      Height = 25
      Caption = 'Novo'
      TabOrder = 8
      OnClick = btnNovoClick
    end
    object btnVisualizar: TButton
      Left = 712
      Top = 43
      Width = 75
      Height = 25
      Caption = 'Visualizar'
      TabOrder = 9
      OnClick = btnVisualizarClick
    end
  end
  object DBGrid1: TDBGrid [1]
    Left = 0
    Top = 81
    Width = 948
    Height = 298
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
        FieldName = 'ID_VENDA_CAB'
        Title.Caption = 'C'#211'DIGO VENDA'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'ID_CLIENTE'
        Title.Caption = 'C'#211'DIGO CLIENTE'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CLIENTE'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'DATA'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'FATURADO'
        Visible = True
      end>
  end
  inherited fdQryFiltro: TFDQuery
    SQL.Strings = (
      'SELECT V.ID_VENDA_CAB,'
      '       V.ID_CLIENTE,'
      '       DECODE(C.TIPO_FJ, '#39'F'#39', C.NOME, C.RAZAO_SOCIAL) CLIENTE,'
      '       V.DATA,'
      '       COALESCE(V.FATURADO, '#39'N'#39') FATURADO'
      
        'FROM VENDA_CAB V INNER JOIN CLIENTE C ON C.ID_CLIENTE = V.ID_CLI' +
        'ENTE'
      '')
    Top = 160
    object fdQryFiltroID_VENDA_CAB: TIntegerField
      FieldName = 'ID_VENDA_CAB'
      Origin = 'ID_VENDA_CAB'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object fdQryFiltroID_CLIENTE: TIntegerField
      FieldName = 'ID_CLIENTE'
      Origin = 'ID_CLIENTE'
    end
    object fdQryFiltroCLIENTE: TWideStringField
      AutoGenerateValue = arDefault
      FieldName = 'CLIENTE'
      Origin = 'CLIENTE'
      ProviderFlags = []
      ReadOnly = True
      Size = 80
    end
    object fdQryFiltroDATA: TDateField
      FieldName = 'DATA'
      Origin = '"DATA"'
    end
    object fdQryFiltroFATURADO: TWideStringField
      AutoGenerateValue = arDefault
      FieldName = 'FATURADO'
      Origin = 'FATURADO'
      ProviderFlags = []
      ReadOnly = True
      Size = 1
    end
  end
  inherited dsFiltro: TDataSource
    Left = 592
    Top = 216
  end
  inherited fdTransaction: TFDTransaction
    Left = 592
    Top = 272
  end
  object frVendas: TfrxReport
    Version = '2021.2.8'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick, pbCopy, pbSelection]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Padr'#227'o'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 44439.938847303200000000
    ReportOptions.LastChange = 44440.816715590280000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'begin'
      ''
      'end.')
    Left = 440
    Top = 160
    Datasets = <
      item
        DataSet = frDBVendas
        DataSetName = 'frDBVendas'
      end>
    Variables = <>
    Style = <>
    object Data: TfrxDataPage
      Height = 1000.000000000000000000
      Width = 1000.000000000000000000
    end
    object Page1: TfrxReportPage
      PaperWidth = 210.000000000000000000
      PaperHeight = 297.000000000000000000
      PaperSize = 9
      LeftMargin = 10.000000000000000000
      RightMargin = 10.000000000000000000
      TopMargin = 10.000000000000000000
      BottomMargin = 10.000000000000000000
      Frame.Typ = []
      MirrorMode = []
      object PageHeader1: TfrxPageHeader
        FillType = ftBrush
        FillGap.Top = 0
        FillGap.Left = 0
        FillGap.Bottom = 0
        FillGap.Right = 0
        Frame.Typ = []
        Height = 56.692950000000000000
        Top = 18.897650000000000000
        Width = 718.110700000000000000
        object Memo1: TfrxMemoView
          AllowVectorExport = True
          Top = 15.118120000000000000
          Width = 718.110236220000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            'RELAT'#211'RIO DE VENDAS')
          ParentFont = False
        end
        object Line4: TfrxLineView
          AllowVectorExport = True
          Left = -7.559060000000000000
          Top = 41.574830000000000000
          Width = 725.669760000000000000
          Color = clBlack
          Frame.Typ = [ftTop]
        end
      end
      object GroupHeader1: TfrxGroupHeader
        FillType = ftBrush
        FillGap.Top = 0
        FillGap.Left = 0
        FillGap.Bottom = 0
        FillGap.Right = 0
        Frame.Typ = []
        Height = 64.252010000000000000
        Top = 136.063080000000000000
        Width = 718.110700000000000000
        Condition = 'frDBVendas."CLIENTE"'
        object Memo2: TfrxMemoView
          AllowVectorExport = True
          Left = 3.779530000000000000
          Width = 52.913420000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Cliente:')
          ParentFont = False
        end
        object frDBVendasCLIENTE: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 60.472480000000000000
          Width = 400.630180000000000000
          Height = 18.897650000000000000
          DataField = 'CLIENTE'
          DataSet = frDBVendas
          DataSetName = 'frDBVendas'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frDBVendas."CLIENTE"]')
          ParentFont = False
        end
        object Memo3: TfrxMemoView
          AllowVectorExport = True
          Left = 34.015770000000000000
          Top = 45.354360000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Produto:')
          ParentFont = False
        end
        object Memo4: TfrxMemoView
          AllowVectorExport = True
          Left = 272.126160000000000000
          Top = 45.354360000000000000
          Width = 79.370130000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            'Quantidade:')
          ParentFont = False
        end
        object Memo5: TfrxMemoView
          AllowVectorExport = True
          Left = 362.834880000000000000
          Top = 45.354360000000000000
          Width = 79.370130000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            'Valor Unit.:')
          ParentFont = False
        end
        object Memo6: TfrxMemoView
          AllowVectorExport = True
          Left = 453.543600000000000000
          Top = 45.354360000000000000
          Width = 79.370130000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            'SubTotal:')
          ParentFont = False
        end
        object Memo7: TfrxMemoView
          AllowVectorExport = True
          Left = 544.252320000000000000
          Top = 45.354360000000000000
          Width = 79.370130000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            'Desconto:')
          ParentFont = False
        end
        object Memo8: TfrxMemoView
          AllowVectorExport = True
          Left = 634.961040000000000000
          Top = 45.354360000000000000
          Width = 79.370130000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            'Total:')
          ParentFont = False
        end
        object Line1: TfrxLineView
          AllowVectorExport = True
          Top = 64.252010000000000000
          Width = 763.465060000000000000
          Color = clBlack
          Frame.Typ = [ftTop]
        end
      end
      object MasterData1: TfrxMasterData
        FillType = ftBrush
        FillGap.Top = 0
        FillGap.Left = 0
        FillGap.Bottom = 0
        FillGap.Right = 0
        Frame.Typ = []
        Height = 22.677180000000000000
        Top = 222.992270000000000000
        Width = 718.110700000000000000
        DataSet = frDBVendas
        DataSetName = 'frDBVendas'
        RowCount = 0
        Stretched = True
        object frDBVendasPRODUTO: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 22.677180000000000000
          Width = 230.551330000000000000
          Height = 18.897650000000000000
          StretchMode = smActualHeight
          DataField = 'PRODUTO'
          DataSet = frDBVendas
          DataSetName = 'frDBVendas'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frDBVendas."PRODUTO"]')
          ParentFont = False
        end
        object frDBVendasQTD: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 272.126160000000000000
          Width = 79.370130000000000000
          Height = 18.897650000000000000
          DataField = 'QTD'
          DataSet = frDBVendas
          DataSetName = 'frDBVendas'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[frDBVendas."QTD"]')
          ParentFont = False
        end
        object frDBVendasVALOR_UNITARIO: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 362.834880000000000000
          Width = 79.370130000000000000
          Height = 18.897650000000000000
          DataField = 'VALOR_UNITARIO'
          DataSet = frDBVendas
          DataSetName = 'frDBVendas'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[frDBVendas."VALOR_UNITARIO"]')
          ParentFont = False
        end
        object frDBVendasSUBTOTAL: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 453.543600000000000000
          Width = 79.370130000000000000
          Height = 18.897650000000000000
          DataField = 'SUBTOTAL'
          DataSet = frDBVendas
          DataSetName = 'frDBVendas'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[frDBVendas."SUBTOTAL"]')
          ParentFont = False
        end
        object frDBVendasDESCONTO: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 544.252320000000000000
          Width = 79.370130000000000000
          Height = 18.897650000000000000
          DataField = 'DESCONTO'
          DataSet = frDBVendas
          DataSetName = 'frDBVendas'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[frDBVendas."DESCONTO"]')
          ParentFont = False
        end
        object frDBVendasTOTAL: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 634.961040000000000000
          Width = 79.370130000000000000
          Height = 18.897650000000000000
          DataField = 'TOTAL'
          DataSet = frDBVendas
          DataSetName = 'frDBVendas'
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[frDBVendas."TOTAL"]')
          ParentFont = False
        end
      end
      object GroupFooter1: TfrxGroupFooter
        FillType = ftBrush
        FillGap.Top = 0
        FillGap.Left = 0
        FillGap.Bottom = 0
        FillGap.Right = 0
        Frame.Typ = []
        Height = 37.795300000000000000
        Top = 268.346630000000000000
        Width = 718.110700000000000000
        object Line2: TfrxLineView
          AllowVectorExport = True
          Width = 759.685530000000000000
          Color = clBlack
          Frame.Typ = [ftTop]
        end
        object SysMemo1: TfrxSysMemoView
          AllowVectorExport = True
          Left = 453.543600000000000000
          Top = 3.779530000000000000
          Width = 79.370130000000000000
          Height = 18.897650000000000000
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[SUM(<frDBVendas."SUBTOTAL">,MasterData1)]')
          ParentFont = False
        end
        object SysMemo2: TfrxSysMemoView
          AllowVectorExport = True
          Left = 544.252320000000000000
          Top = 3.779530000000000000
          Width = 79.370130000000000000
          Height = 18.897650000000000000
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[SUM(<frDBVendas."VALOR_UNITARIO">,MasterData1)]')
          ParentFont = False
        end
        object SysMemo3: TfrxSysMemoView
          AllowVectorExport = True
          Left = 634.961040000000000000
          Top = 3.779530000000000000
          Width = 79.370130000000000000
          Height = 18.897650000000000000
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[SUM(<frDBVendas."VALOR_UNITARIO">,MasterData1)]')
          ParentFont = False
        end
        object Line3: TfrxLineView
          AllowVectorExport = True
          Left = -18.897650000000000000
          Top = 34.015770000000000000
          Width = 718.110236220000000000
          Color = clBlack
          Frame.Style = fsDot
          Frame.Typ = [ftTop]
        end
      end
    end
  end
  object frDBVendas: TfrxDBDataset
    UserName = 'frDBVendas'
    CloseDataSource = False
    DataSet = fdQryRelatorio
    BCDToCurrency = False
    Left = 440
    Top = 216
  end
  object fdQryRelatorio: TFDQuery
    Connection = dmDados.fdCon
    SQL.Strings = (
      'SELECT  V.ID_VENDA_CAB,'
      '        V.ID_CLIENTE,'
      '        DECODE(C.TIPO_FJ, '#39'F'#39', C.NOME, C.RAZAO_SOCIAL) CLIENTE,'
      '        V.DATA,'
      '        COALESCE(V.FATURADO,'#39'N'#39') FATURADO,'
      '        P.DESCRICAO PRODUTO,'
      '        I.qtd,'
      '        I.valor_unitario,'
      '        I.valor_unitario * I.QTD SUBTOTAL,'
      '        COALESCE(I.desconto,0) DESCONTO,'
      
        '        (I.qtd * I.valor_unitario) - COALESCE(I.desconto, 0) TOT' +
        'AL'
      ''
      
        'FROM VENDA_CAB V INNER JOIN CLIENTE C ON C.id_cliente = V.id_cli' +
        'ente'
      
        '                 inner join venda_item I ON I.id_venda_cab = V.i' +
        'd_venda_cab'
      
        '                 INNER JOIN PRODUTO P ON P.id_produto = I.id_pro' +
        'duto'
      'WHERE 1=1'
      'ORDER BY DECODE(C.tipo_fj, '#39'F'#39', C.nome, C.razao_social),'
      '         P.DESCRICAO')
    Left = 440
    Top = 272
    object fdQryRelatorioID_VENDA_CAB: TIntegerField
      FieldName = 'ID_VENDA_CAB'
      Origin = 'ID_VENDA_CAB'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object fdQryRelatorioID_CLIENTE: TIntegerField
      FieldName = 'ID_CLIENTE'
      Origin = 'ID_CLIENTE'
    end
    object fdQryRelatorioCLIENTE: TWideStringField
      AutoGenerateValue = arDefault
      FieldName = 'CLIENTE'
      Origin = 'CLIENTE'
      ProviderFlags = []
      ReadOnly = True
      Size = 80
    end
    object fdQryRelatorioDATA: TDateField
      FieldName = 'DATA'
      Origin = '"DATA"'
    end
    object fdQryRelatorioFATURADO: TWideStringField
      AutoGenerateValue = arDefault
      FieldName = 'FATURADO'
      Origin = 'FATURADO'
      ProviderFlags = []
      ReadOnly = True
      Size = 1
    end
    object fdQryRelatorioPRODUTO: TWideStringField
      AutoGenerateValue = arDefault
      FieldName = 'PRODUTO'
      Origin = 'DESCRICAO'
      ProviderFlags = []
      ReadOnly = True
      Size = 80
    end
    object fdQryRelatorioQTD: TSingleField
      AutoGenerateValue = arDefault
      FieldName = 'QTD'
      Origin = 'QTD'
      ProviderFlags = []
      ReadOnly = True
    end
    object fdQryRelatorioVALOR_UNITARIO: TSingleField
      AutoGenerateValue = arDefault
      FieldName = 'VALOR_UNITARIO'
      Origin = 'VALOR_UNITARIO'
      ProviderFlags = []
      ReadOnly = True
    end
    object fdQryRelatorioSUBTOTAL: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'SUBTOTAL'
      Origin = 'SUBTOTAL'
      ProviderFlags = []
      ReadOnly = True
    end
    object fdQryRelatorioDESCONTO: TSingleField
      AutoGenerateValue = arDefault
      FieldName = 'DESCONTO'
      Origin = 'DESCONTO'
      ProviderFlags = []
      ReadOnly = True
    end
    object fdQryRelatorioTOTAL: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'TOTAL'
      Origin = 'TOTAL'
      ProviderFlags = []
      ReadOnly = True
    end
  end
end
