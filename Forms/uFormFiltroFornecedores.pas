unit uFormFiltroFornecedores;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, uFormFiltroPai, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  FireDAC.Comp.Client, Data.DB, FireDAC.Comp.DataSet, Vcl.StdCtrls, Vcl.ExtCtrls,
  Vcl.Grids, Vcl.DBGrids, uFormCadastroFornecedor;

type
  TFormFiltroFornecedores = class(TFormFiltroPai)
    fdQryFiltroID_FORNECEDOR: TIntegerField;
    fdQryFiltroRAZAO_SOCIAL: TWideStringField;
    fdQryFiltroFANTASIA: TWideStringField;
    fdQryFiltroCNPJ: TWideStringField;
    fdQryFiltroENDERECO: TWideStringField;
    fdQryFiltroBAIRRO: TWideStringField;
    fdQryFiltroID_CIDADE: TIntegerField;
    fdQryFiltroID_ESTADO: TIntegerField;
    fdQryFiltroEMAIL: TWideStringField;
    DBGrid1: TDBGrid;
    Label2: TLabel;
    edtCnpj: TEdit;
    Button1: TButton;
    Button3: TButton;
    procedure btnFiltroClick(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
  private
  procedure Filtrar;
  procedure ValidaQueryVazia;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormFiltroFornecedores: TFormFiltroFornecedores;

implementation

{$R *.dfm}

uses uBiblioteca;

{ TFormFiltroFornecedor }

procedure TFormFiltroFornecedores.btnFiltroClick(Sender: TObject);
begin
  inherited;
  Filtrar;
end;

procedure TFormFiltroFornecedores.Button1Click(Sender: TObject);
begin
  inherited;
   FormcadastroFornecedores := TFormCadastroFornecedores.Create(Self);
  try
  FormCadastroFornecedores.SetRecord(0, tNil);
  FormCadastroFornecedores.fdQryCadastro.Insert;
  FormCadastroFornecedores.ShowModal;
  finally
    FreeAndNil(FormCadastroFornecedores);
  end;
end;

procedure TFormFiltroFornecedores.Button3Click(Sender: TObject);
begin
  inherited;
  ValidaQueryVazia;
  FormcadastroFornecedores := TFormCadastroFornecedores.Create(Self);
  try
    FormCadastroFornecedores.SetRecord(fdQryFiltroID_FORNECEDOR.AsInteger, tNil);
    FormCadastroFornecedores.ShowModal;
  finally
    FreeAndNil(FormCadastroFornecedores);
  end;
end;

procedure TFormFiltroFornecedores.Filtrar;
begin
  fdQryFiltro.Close;
  fdQryFiltro.SQL.Clear;
  fdQryFiltro.SQL.Add('SELECT * FROM FORNECEDOR');
  fdQryFiltro.SQL.Add('WHERE 1=1');

  if Trim(edtFiltro.Text) <> '' then begin    //Campo Raz?o Social
    fdQryFiltro.SQL.Add(' AND UPPER(TRIM(RAZAO_SOCIAL)) LIKE' + QuotedStr('%' + UpperCase(Trim(edtFiltro.Text)) + '%'));
  end;

   if Trim(edtCnpj.Text) <> '' then begin
    fdQryFiltro.SQL.Add('   AND UPPER(TRIM(REPLACE(REPLACE(REPLACE(CNPJ, ''.'', ''''), ''-'', ''''),''/'', ''''))) LIKE' + QuotedStr( '%' + UpperCase(Trim(edtCnpj.Text)) + '%'));
  end;

  fdQryFiltro.Open();
  fdQryFiltro.FetchAll;
end;

procedure TFormFiltroFornecedores.ValidaQueryVazia;
begin
  if fdQryFiltro.IsEmpty then begin
    MsgAtencao('? necess?rio selecionar um Fornecedor');
    Abort;
  end;
end;

end.
