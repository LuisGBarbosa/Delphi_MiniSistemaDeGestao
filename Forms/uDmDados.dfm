object dmDados: TdmDados
  OldCreateOrder = False
  OnCreate = DataModuleCreate
  Height = 205
  Width = 522
  object fdCon: TFDConnection
    Params.Strings = (
      'Database=C:\ProjetoDelphi\Banco de Dados\DADOSSISTEMA.FDB'
      'User_Name=sysdba'
      'Password=masterkey'
      'Protocol=TCPIP'
      'Server=localhost'
      'Port=3050'
      'CharacterSet=UTF8'
      'DriverID=FB')
    LoginPrompt = False
    Left = 144
    Top = 64
  end
end
