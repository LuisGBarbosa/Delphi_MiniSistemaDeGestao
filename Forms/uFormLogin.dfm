object FormLogin: TFormLogin
  Left = 0
  Top = 0
  BorderStyle = bsNone
  Caption = 'Login'
  ClientHeight = 256
  ClientWidth = 319
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poDefault
  OnClose = FormClose
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 72
    Top = 61
    Width = 35
    Height = 13
    Caption = 'LOGIN:'
  end
  object Label2: TLabel
    Left = 72
    Top = 117
    Width = 37
    Height = 13
    Caption = 'SENHA:'
  end
  object edtLogin: TEdit
    Left = 72
    Top = 80
    Width = 177
    Height = 21
    CharCase = ecUpperCase
    TabOrder = 0
  end
  object edtSenha: TEdit
    Left = 72
    Top = 136
    Width = 177
    Height = 21
    PasswordChar = '*'
    TabOrder = 1
  end
  object Button1: TButton
    Left = 64
    Top = 176
    Width = 75
    Height = 25
    Caption = 'Cancelar'
    TabOrder = 2
    OnClick = Button1Click
  end
  object Button2: TButton
    Left = 184
    Top = 176
    Width = 75
    Height = 25
    Caption = 'Confirmar'
    TabOrder = 3
    OnClick = Button2Click
  end
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 319
    Height = 41
    Align = alTop
    Caption = 'LOGIN'
    TabOrder = 4
  end
  object fdQryLogin: TFDQuery
    Connection = dmDados.fdCon
    SQL.Strings = (
      'SELECT LOGIN, '
      '       SENHA '
      'FROM USUARIO '
      'WHERE LOGIN = :LOGIN')
    Left = 272
    Top = 192
    ParamData = <
      item
        Name = 'LOGIN'
        ParamType = ptInput
      end>
  end
end
