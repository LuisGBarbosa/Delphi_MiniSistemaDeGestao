unit uFormFiltroProdutos;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, uFormFiltroPai, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  FireDAC.Comp.Client, Data.DB, FireDAC.Comp.DataSet, Vcl.StdCtrls, Vcl.ExtCtrls,
  Vcl.Grids, Vcl.DBGrids, uFormCadastroProduto;

type
  TFormFiltroProdutos = class(TFormFiltroPai)
    DBGrid1: TDBGrid;
    edtDescricao: TEdit;
    Label2: TLabel;
    fdQryFiltroID_PRODUTO: TFDAutoIncField;
    fdQryFiltroDESCRICAO: TWideStringField;
    fdQryFiltroQTD: TSingleField;
    fdQryFiltroCUSTO: TSingleField;
    fdQryFiltroV_UNITARIO: TSingleField;
    fdQryFiltroUNIDADE: TWideStringField;
    fdQryFiltroPESO_LIQUIDO: TSingleField;
    fdQryFiltroPESO_BRUTO: TSingleField;
    fdQryFiltroFABRICANTE: TWideStringField;
    fdQryFiltroMARCA_MODELO: TWideStringField;
    fdQryFiltroFORNECEDOR: TWideStringField;
    Button1: TButton;
    Button3: TButton;
    procedure btnFiltroClick(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
  private
  procedure Filtrar;
  procedure validaQueryVazia;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormFiltroProdutos: TFormFiltroProdutos;

implementation

{$R *.dfm}

uses uBiblioteca;

{ TFormFiltroProdutos }

procedure TFormFiltroProdutos.btnFiltroClick(Sender: TObject);
begin
  inherited;
  Filtrar;  //chamando m?todo filtrar que criado na procedure.
end;

procedure TFormFiltroProdutos.Button1Click(Sender: TObject);
begin
  inherited;
  FormcadastroProduto := TFormCadastroProduto.Create(Self);
  try
  FormCadastroProduto.SetRecord(0, tNil);
  FormCadastroProduto.fdQryCadastro.Insert;
  FormCadastroProduto.ShowModal;
  finally
    FreeAndNil(FormCadastroProduto);
  end;
end;

procedure TFormFiltroProdutos.Button3Click(Sender: TObject);
begin
  inherited;
  ValidaQueryVazia;
   FormcadastroProduto := TFormCadastroProduto.Create(Self);
  try
  FormCadastroProduto.SetRecord(fdQryFiltroID_PRODUTO.AsInteger, tNil);
  FormCadastroProduto.ShowModal;
  finally
    FreeAndNil(FormCadastroProduto);
  end;
end;

procedure TFormFiltroProdutos.Filtrar;
begin
  fdQryFiltro.Close;
  fdQryFiltro.SQL.Clear;
  fdQryFiltro.SQL.Add('SELECT P.ID_PRODUTO,');
  fdQryFiltro.SQL.Add('       P.DESCRICAO,');
  fdQryFiltro.SQL.Add('       P.QTD,');
  fdQryFiltro.SQL.Add('       P.CUSTO,');
  fdQryFiltro.SQL.Add('       P.V_UNITARIO,');
  fdQryFiltro.SQL.Add('       P.UNIDADE,');
  fdQryFiltro.SQL.Add('       P.PESO_LIQUIDO,');
  fdQryFiltro.SQL.Add('       P.PESO_BRUTO,');
  fdQryFiltro.SQL.Add('       P.FABRICANTE,');
  fdQryFiltro.SQL.Add('       P.MARCA_MODELO,');
  fdQryFiltro.SQL.Add('       F.RAZAO_SOCIAL FORNECEDOR')   ;
  fdQryFiltro.SQL.Add('    FROM PRODUTO P LEFT JOIN FORNECEDOR F ON F.ID_FORNECEDOR = P.ID_FORNECEDOR');
  fdQryFiltro.SQL.Add('    WHERE 1=1 ');

  if StrToIntDef(edtFiltro.Text, 0) > 0 then begin
    fdQryFiltro.SQL.Add('AND P.ID_PRODUTO =' + edtFiltro.Text);
  end;

  if Trim(edtDescricao.Text) <> '' then begin
    fdQryFiltro.SQL.Add('AND UPPER(P.DESCRICAO) LIKE' + QuotedStr('%' + UpperCase(Trim(edtDescricao.Text) + '%')));
  end;

  fdQryFiltro.Open();
  fdQryFiltro.FetchAll;
end;

procedure TFormFiltroProdutos.validaQueryVazia;
begin
  if fdQryFiltro.IsEmpty then begin
    MsgAtencao('? necess?rio selecionar um Produto.') ;
    Abort;
  end;
end;

end.
