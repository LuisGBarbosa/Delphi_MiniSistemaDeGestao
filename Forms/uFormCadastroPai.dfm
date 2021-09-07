object FormCadastroPai: TFormCadastroPai
  Left = 0
  Top = 0
  BorderStyle = bsSingle
  Caption = 'FormCadastroPai'
  ClientHeight = 305
  ClientWidth = 663
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object pnCabecalho: TPanel
    Left = 0
    Top = 0
    Width = 663
    Height = 41
    Align = alTop
    TabOrder = 0
    object SpeedButton1: TSpeedButton
      Left = 368
      Top = 8
      Width = 23
      Height = 22
      Hint = 'Primeiro Registro'
      Caption = '<<'
      ParentShowHint = False
      ShowHint = True
      OnClick = SpeedButton1Click
    end
    object SpeedButton2: TSpeedButton
      Left = 392
      Top = 8
      Width = 23
      Height = 22
      Hint = 'Anterior'
      Caption = '<'
      ParentShowHint = False
      ShowHint = True
      OnClick = SpeedButton2Click
    end
    object SpeedButton3: TSpeedButton
      Left = 416
      Top = 8
      Width = 23
      Height = 22
      Hint = 'Pr'#243'ximo'
      Caption = '>'
      ParentShowHint = False
      ShowHint = True
      OnClick = SpeedButton3Click
    end
    object SpeedButton4: TSpeedButton
      Left = 440
      Top = 8
      Width = 23
      Height = 22
      Hint = #218'ltimo Registro'
      Caption = '>>'
      ParentShowHint = False
      ShowHint = True
      OnClick = SpeedButton4Click
    end
    object btnNovo: TBitBtn
      Left = 0
      Top = 1
      Width = 81
      Height = 41
      Caption = 'Novo'
      TabOrder = 0
      OnClick = btnNovoClick
    end
    object btnGravar: TBitBtn
      Left = 87
      Top = 1
      Width = 81
      Height = 41
      Caption = 'Gravar'
      TabOrder = 1
      OnClick = btnGravarClick
    end
    object btnCancelar: TBitBtn
      Left = 174
      Top = 1
      Width = 81
      Height = 41
      Caption = 'Cancelar'
      TabOrder = 2
      OnClick = btnCancelarClick
    end
    object btnExcluir: TBitBtn
      Left = 261
      Top = 1
      Width = 81
      Height = 41
      Caption = 'Excluir'
      TabOrder = 3
      OnClick = btnExcluirClick
    end
    object btnSair: TBitBtn
      Left = 582
      Top = 1
      Width = 81
      Height = 41
      Caption = 'Sair'
      TabOrder = 4
      OnClick = btnSairClick
    end
  end
  object fdQryCadastro: TFDQuery
    Connection = dmDados.fdCon
    Transaction = fdTransaction
    UpdateObject = fdUpdCadastro
    Left = 608
    Top = 144
  end
  object fdUpdCadastro: TFDUpdateSQL
    Connection = dmDados.fdCon
    Left = 608
    Top = 200
  end
  object fdTransaction: TFDTransaction
    Connection = dmDados.fdCon
    Left = 608
    Top = 256
  end
  object dsCadastro: TDataSource
    DataSet = fdQryCadastro
    Left = 608
    Top = 88
  end
  object fdQryCodigo: TFDQuery
    Connection = dmDados.fdCon
    Left = 504
    Top = 160
  end
end
