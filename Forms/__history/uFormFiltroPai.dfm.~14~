object FormFiltroPai: TFormFiltroPai
  Left = 0
  Top = 0
  Caption = 'FormFiltroPai'
  ClientHeight = 336
  ClientWidth = 902
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnClose = FormClose
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 902
    Height = 81
    Align = alTop
    TabOrder = 0
    object Label1: TLabel
      Left = 16
      Top = 12
      Width = 78
      Height = 13
      Caption = 'Nome do Cliente'
    end
    object edtFiltro: TEdit
      Left = 16
      Top = 31
      Width = 153
      Height = 21
      TabOrder = 0
    end
    object btnFiltro: TButton
      Left = 704
      Top = 29
      Width = 75
      Height = 25
      Caption = 'Filtrar'
      TabOrder = 1
    end
    object Panel2: TPanel
      Left = 800
      Top = 1
      Width = 101
      Height = 79
      Align = alRight
      BevelOuter = bvNone
      TabOrder = 2
      object Button2: TButton
        Left = 13
        Top = 28
        Width = 75
        Height = 25
        Caption = 'Sair'
        TabOrder = 0
        OnClick = Button2Click
      end
    end
  end
  object fdQryFiltro: TFDQuery
    Connection = dmDados.fdCon
    Transaction = fdTransaction
    Left = 592
    Top = 152
  end
  object dsFiltro: TDataSource
    DataSet = fdQryFiltro
    Left = 520
    Top = 224
  end
  object fdTransaction: TFDTransaction
    Connection = dmDados.fdCon
    Left = 448
    Top = 176
  end
end
