unit uFormFiltroClientes;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, uFormFiltroPai, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  Data.DB, FireDAC.Comp.DataSet, FireDAC.Comp.Client, Vcl.StdCtrls, Vcl.ExtCtrls,
  Vcl.Grids, Vcl.DBGrids, uFormCadastroCliente;

type
  TFormFiltroClientes = class(TFormFiltroPai)
    DBGrid1: TDBGrid;
    edtFantasia: TEdit;
    edtCnpj: TEdit;
    edtCodigo: TEdit;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    btnNovo: TButton;
    Button3: TButton;
    fdQryFiltroID_CLIENTE: TIntegerField;
    fdQryFiltroRAZAO_SOCIAL: TWideStringField;
    fdQryFiltroFANTASIA: TWideStringField;
    fdQryFiltroCPF_CNPJ: TWideStringField;
    fdQryFiltroTIPO_FJ: TWideStringField;
    fdQryFiltroNOME: TWideStringField;
    fdQryFiltroEMAIL: TWideStringField;
    fdQryFiltroSITE: TWideStringField;
    fdQryFiltroENDERECO: TWideStringField;
    fdQryFiltroCOMPLEMENTO: TWideStringField;
    fdQryFiltroNUMERO: TWideStringField;
    fdQryFiltroBAIRRO: TWideStringField;
    fdQryFiltroIE: TWideStringField;
    fdQryFiltroIM: TWideStringField;
    fdQryFiltroDT_EXCLUIDO: TDateField;
    fdQryFiltroID_CIDADE: TIntegerField;
    fdQryFiltroID_ESTADO: TIntegerField;
    procedure btnFiltroClick(Sender: TObject);
    procedure btnNovoClick(Sender: TObject);
    procedure Button3Click(Sender: TObject);
  private
    procedure Filtrar;
    procedure ValidaQueryVazia;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormFiltroClientes: TFormFiltroClientes;

implementation

{$R *.dfm}

uses uBiblioteca;

{ TFormFiltroClientes }

procedure TFormFiltroClientes.btnFiltroClick(Sender: TObject);
begin
  inherited;
  Filtrar;
end;

procedure TFormFiltroClientes.btnNovoClick(Sender: TObject);
begin
  inherited;
  FormCadastroCliente := TFormCadastroCliente.Create(Self);
  try
  FormCadastroCliente.SetRecord(0, tNil);
  Formcadastrocliente.fdQryCadastro.Insert;

  FormCadastroCliente.ShowModal;
  finally
    FreeAndNil(FormCadastroCliente);
  end;
end;

procedure TFormFiltroClientes.Button3Click(Sender: TObject);
begin
  inherited;
   ValidaQueryVazia;
   FormCadastroCliente := TFormCadastroCliente.Create(Self);
  try
  FormCadastroCliente.SetRecord(fdQryFiltroID_CLIENTE.AsInteger, tNil);
  FormCadastroCliente.ShowModal;
  finally
    FreeAndNil(FormCadastroCliente);
  end;
end;

procedure TFormFiltroClientes.Filtrar;
begin
  fdQryFiltro.Close;
  fdQryFiltro.SQL.Clear;
  fdQryFiltro.SQL.Add('SELECT * FROM CLIENTE');
  fdQryFiltro.SQL.Add(' WHERE 1 = 1');

  if Trim(edtFiltro.Text) <> '' then begin
    fdQryFiltro.SQL.Add('   AND UPPER(TRIM(RAZAO_SOCIAL)) LIKE ' + QuotedStr( '%' + UpperCase(Trim(edtFiltro.Text)) + '%') );
  end;

  if Trim(edtFantasia.Text) <> '' then begin
    fdQryFiltro.SQL.Add('   AND UPPER(TRIM(FANTASIA)) LIKE ' + QuotedStr( '%' + UpperCase(Trim(edtFantasia.Text)) + '%') );
  end;

    if Trim(edtCnpj.Text) <> '' then begin
    fdQryFiltro.SQL.Add('   AND UPPER(TRIM(REPLACE(REPLACE(REPLACE(CPF_CNPJ, ''.'', ''''), ''-'', ''''),''/'', ''''))) LIKE' + QuotedStr( '%' + UpperCase(Trim(edtCnpj.Text)) + '%'));
  end;

  if StrToIntDef(edtCodigo.Text, 0) > 0 then begin  //dentro do StrTOIntDef, estamos passando que o valor default do campo edtCodigo, é 0, logo depois dizemos que se o valor default for maior que 0, ele vai iniciar a condição
    fdQryFiltro.SQL.Add(' AND ID_CLIENTE =' + edtCodigo.Text);
  end;


  fdQryFiltro.Open();
  fdQryFiltro.FetchAll;
end;

procedure TFormFiltroClientes.ValidaQueryVazia;
begin
  if fdQryFiltro.IsEmpty then begin
    MsgAtencao('É necessário selecionar um Cliente.');
    Abort;
  end;

end;

end.
