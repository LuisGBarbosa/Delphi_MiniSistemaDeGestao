unit uFormCadastroCidade;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, uFormCadastroPai, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  Vcl.StdCtrls, Vcl.Mask, Vcl.DBCtrls, Data.DB, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client, Vcl.Buttons, Vcl.ExtCtrls;

type
  TFormCadastroCidade = class(TFormCadastroPai)
    fdQryCadastroID_CIDADE: TFDAutoIncField;
    fdQryCadastroNOME: TWideStringField;
    Label2: TLabel;
    DBEdit2: TDBEdit;
    Label1: TLabel;
    DBEdit1: TDBEdit;
    fdQryCadastroDT_EXCLUIDO: TDateField;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormCadastroCidade: TFormCadastroCidade;

implementation

{$R *.dfm}

end.