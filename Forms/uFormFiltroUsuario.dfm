inherited FormFiltroUsuario: TFormFiltroUsuario
  Caption = 'FormFiltroUsuario'
  FormStyle = fsMDIChild
  Visible = True
  WindowState = wsMaximized
  PixelsPerInch = 96
  TextHeight = 13
  inherited Panel1: TPanel
    inherited Label1: TLabel
      Width = 27
      Caption = 'Nome'
      ExplicitWidth = 27
    end
    inherited edtFiltro: TEdit
      Width = 217
      ExplicitWidth = 217
    end
    inherited btnFiltro: TButton
      Left = 248
      OnClick = btnFiltroClick
      ExplicitLeft = 248
    end
    object Button1: TButton
      Left = 329
      Top = 29
      Width = 75
      Height = 25
      Caption = 'Novo'
      TabOrder = 3
    end
    object Button3: TButton
      Left = 410
      Top = 29
      Width = 75
      Height = 25
      Caption = 'Visualizar'
      TabOrder = 4
      OnClick = Button3Click
    end
  end
  object DBGrid1: TDBGrid [1]
    Left = 0
    Top = 81
    Width = 902
    Height = 255
    Align = alClient
    DataSource = dsFiltro
    TabOrder = 1
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
  end
end
