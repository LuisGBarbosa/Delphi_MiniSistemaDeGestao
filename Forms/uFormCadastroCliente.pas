unit uFormCadastroCliente;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, uFormCadastroPai, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  FireDAC.Comp.Client, Data.DB, FireDAC.Comp.DataSet, Vcl.StdCtrls, Vcl.Buttons,
  Vcl.ExtCtrls, Vcl.DBCtrls, Vcl.Mask, uLookup;

type
  TFormCadastroCliente = class(TFormCadastroPai)
    fdQryCadastroID_CLIENTE: TIntegerField;
    fdQryCadastroRAZAO_SOCIAL: TWideStringField;
    fdQryCadastroFANTASIA: TWideStringField;
    fdQryCadastroCPF_CNPJ: TWideStringField;
    fdQryCadastroTIPO_FJ: TWideStringField;
    fdQryCadastroNOME: TWideStringField;
    fdQryCadastroEMAIL: TWideStringField;
    fdQryCadastroSITE: TWideStringField;
    fdQryCadastroENDERECO: TWideStringField;
    fdQryCadastroCOMPLEMENTO: TWideStringField;
    fdQryCadastroNUMERO: TWideStringField;
    fdQryCadastroBAIRRO: TWideStringField;
    fdQryCadastroIE: TWideStringField;
    fdQryCadastroIM: TWideStringField;
    fdQryCadastroDT_EXCLUIDO: TDateField;
    Label1: TLabel;
    Label2: TLabel;
    edtRazaoSocial: TDBEdit;
    Label3: TLabel;
    DBEdit2: TDBEdit;
    Label4: TLabel;
    DBEdit3: TDBEdit;
    Label5: TLabel;
    edtTipoFJ: TDBComboBox;
    DBEdit: TDBEdit;
    Label6: TLabel;
    DBEdit4: TDBEdit;
    Label7: TLabel;
    DBEdit5: TDBEdit;
    Label8: TLabel;
    DBEdit6: TDBEdit;
    Label9: TLabel;
    DBEdit7: TDBEdit;
    Label10: TLabel;
    DBEdit8: TDBEdit;
    Label11: TLabel;
    DBEdit9: TDBEdit;
    Label12: TLabel;
    DBEdit10: TDBEdit;
    fdQryCadastroID_CIDADE: TIntegerField;
    fdQryCadastroID_ESTADO: TIntegerField;
    DBLookupComboBox1: TDBLookupComboBox;
    DBLookupComboBox2: TDBLookupComboBox;
    Label13: TLabel;
    Label14: TLabel;
    procedure FormShow(Sender: TObject);
    procedure fdQryCadastroBeforeInsert(DataSet: TDataSet);
    procedure fdQryCadastroBeforeEdit(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormCadastroCliente: TFormCadastroCliente;

implementation

{$R *.dfm}

procedure TFormCadastroCliente.fdQryCadastroBeforeEdit(DataSet: TDataSet);
begin
  inherited;
  if Self.Visible then
  edtRazaoSocial.SetFocus;
end;

procedure TFormCadastroCliente.fdQryCadastroBeforeInsert(DataSet: TDataSet);
begin
  inherited;
  if Self.Visible then
  edtRazaoSocial.SetFocus;
end;

procedure TFormCadastroCliente.FormShow(Sender: TObject);
begin
  inherited;
  Lookup.fdQryEstados.Open();
  Lookup.fdQryEstados.FetchAll;

  Lookup.fdQryCidades.Open();
  Lookup.fdQryCidades.FetchAll;

  edtRazaoSocial.SetFocus;
end;

end.
