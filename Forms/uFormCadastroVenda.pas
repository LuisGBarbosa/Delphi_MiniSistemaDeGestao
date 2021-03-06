unit uFormCadastroVenda;

interface

uses
  Winapi.Windows, Winapi.Messages, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, uFormCadastroPai, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  Data.DB, FireDAC.Comp.Client, FireDAC.Comp.DataSet, Vcl.StdCtrls, Vcl.Buttons,
  Vcl.ExtCtrls, Vcl.Mask, Vcl.DBCtrls, Vcl.Grids, Vcl.DBGrids, AdvEdit,
  AdvMoneyEdit, frxClass, frxDBSet, Winapi.CommCtrl;

type
  TFormCadastroVenda = class(TFormCadastroPai)
    Panel1: TPanel;
    fdQryCadastroID_VENDA_CAB: TFDAutoIncField;
    fdQryCadastroID_CLIENTE: TIntegerField;
    fdQryCadastroDATA: TDateField;
    fdQryCadastroFATURADO: TWideStringField;
    fdQryCadastroDATA_FATURADO: TDateField;
    Label1: TLabel;
    edtCodigo: TDBEdit;
    edtData: TDBEdit;
    Label2: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    edtCliente: TDBLookupComboBox;
    cbFaturado: TDBCheckBox;
    fdQryItens: TFDQuery;
    dsItens: TDataSource;
    Panel2: TPanel;
    Panel3: TPanel;
    fdQryItensID_VENDA_ITEM: TFDAutoIncField;
    fdQryItensID_PRODUTO: TIntegerField;
    fdQryItensQTD: TSingleField;
    fdQryItensVALOR_UNITARIO: TSingleField;
    fdQryItensDESCONTO: TSingleField;
    fdQryItensID_VENDA_CAB: TIntegerField;
    edtDescricaoItem: TDBLookupComboBox;
    edtQuantidade: TAdvMoneyEdit;
    edtValorUnitario: TAdvMoneyEdit;
    edtDesconto: TAdvMoneyEdit;
    edtTotal: TAdvMoneyEdit;
    Label3: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    edtSubTotal: TAdvMoneyEdit;
    Label10: TLabel;
    DBGrid1: TDBGrid;
    btnGravarProduto: TButton;
    fdQryItensDescricaoProduto: TStringField;
    fdQryItensSubTotal: TFloatField;
    fdQryItensTotal: TFloatField;
    fdtItens: TFDTransaction;
    edtTotSubTotal: TAdvMoneyEdit;
    edtTotDesconto: TAdvMoneyEdit;
    edtTotTotal: TAdvMoneyEdit;
    Label11: TLabel;
    Label12: TLabel;
    Label13: TLabel;
    btnExcluirProduto: TButton;
    frVenda: TfrxReport;
    frxDadosVenda: TfrxDBDataset;
    frxItensVenda: TfrxDBDataset;
    btnImprimir: TBitBtn;
    DBEdit2: TDBEdit;
    fdQryCadastroDT_EXCLUIDO: TDateField;
    procedure FormCreate(Sender: TObject);
    procedure fdQryCadastroBeforePost(DataSet: TDataSet);
    procedure fdQryCadastroAfterInsert(DataSet: TDataSet);
    procedure fdQryCadastroAfterOpen(DataSet: TDataSet);
    procedure fdQryCadastroAfterScroll(DataSet: TDataSet);
    procedure fdQryItensCalcFields(DataSet: TDataSet);
    procedure fdQryItensAfterPost(DataSet: TDataSet);
    procedure fdQryItensAfterDelete(DataSet: TDataSet);
    procedure fdQryItensAfterCancel(DataSet: TDataSet);
    procedure edtDescricaoItemClick(Sender: TObject);
    procedure btnGravarProdutoClick(Sender: TObject);
    procedure edtQuantidadeChange(Sender: TObject);
    procedure edtValorUnitarioChange(Sender: TObject);
    procedure edtDescontoChange(Sender: TObject);
    procedure edtTotSubTotalChange(Sender: TObject);
    procedure btnExcluirProdutoClick(Sender: TObject);
    procedure edtTotDescontoChange(Sender: TObject);
    procedure edtTotTotalChange(Sender: TObject);
    procedure btnImprimirClick(Sender: TObject);
    procedure fdQryItensAfterInsert(DataSet: TDataSet);
  private
    procedure SetItens(pIdVenda: Integer);
    procedure GravarItem;
    procedure SetDadosProduto(pIdProduto: integer);
    procedure Totaliza;
    procedure CalculaTotais;
    procedure LimparCampos;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormCadastroVenda: TFormCadastroVenda;

implementation

{$R *.dfm}

uses uLookup, uBiblioteca, uDmDados, System.SysUtils;

procedure TFormCadastroVenda.btnImprimirClick(Sender: TObject);
begin
  inherited;
  frVenda.Variables.Variables['Cliente'] := QuotedStr(edtCliente.Text);
  CarregaRelatorio(frVenda);
end;

procedure TFormCadastroVenda.btnGravarProdutoClick(Sender: TObject);
begin
  inherited;
  GravarItem;
  LimparCampos;
end;

procedure TFormCadastroVenda.btnExcluirProdutoClick(Sender: TObject);
begin
  inherited;
  fdQryItens.Delete;
end;

procedure TFormCadastroVenda.CalculaTotais;
begin
  edtSubTotal.Value := edtQuantidade.Value * edtValorUnitario.Value;
  edtTotal.Value := (edtQuantidade.Value * edtValorUnitario.Value) - edtDesconto.Value;
end;

procedure TFormCadastroVenda.edtDescontoChange(Sender: TObject);
begin
  inherited;
  CalculaTotais;
end;

procedure TFormCadastroVenda.edtDescricaoItemClick(Sender: TObject);
begin
  inherited;
  setDadosProduto(edtDescricaoItem.KeyValue);
end;

procedure TFormCadastroVenda.edtQuantidadeChange(Sender: TObject);
begin
  inherited;
  CalculaTotais;
end;

procedure TFormCadastroVenda.edtTotDescontoChange(Sender: TObject);
begin
  inherited;
  CalculaTotais;
end;

procedure TFormCadastroVenda.edtTotSubTotalChange(Sender: TObject);
begin
  inherited;
  CalculaTotais;
end;

procedure TFormCadastroVenda.edtTotTotalChange(Sender: TObject);
begin
  inherited;
  CalculaTotais;
end;

procedure TFormCadastroVenda.edtValorUnitarioChange(Sender: TObject);
begin
  inherited;
  CalculaTotais;
end;

procedure TFormCadastroVenda.fdQryCadastroAfterInsert(DataSet: TDataSet);
begin
  inherited;
  fdQryCadastroDATA.AsDateTime := Date;
end;

procedure TFormCadastroVenda.fdQryCadastroAfterOpen(DataSet: TDataSet);
begin
  inherited;
  SetItens(fdQryCadastroID_VENDA_CAB.AsInteger);
end;

procedure TFormCadastroVenda.fdQryCadastroAfterScroll(DataSet: TDataSet);
begin
  inherited;
  SetItens(fdQryCadastroID_VENDA_CAB.AsInteger);
end;

procedure TFormCadastroVenda.fdQryCadastroBeforePost(DataSet: TDataSet);
begin
  inherited;
  if fdQryCadastroDATA_FATURADO.IsNull and (fdQryCadastroFATURADO.AsAnsiString = 'S') then begin
    fdQryCadastroDATA_FATURADO.AsDateTime := Date;
  end;

end;

procedure TFormCadastroVenda.fdQryItensAfterCancel(DataSet: TDataSet);
begin
  inherited;
  fdtItens.RollbackRetaining;
end;

procedure TFormCadastroVenda.fdQryItensAfterDelete(DataSet: TDataSet);
begin
  fdtItens.StartTransaction;
  inherited;
  fdtItens.CommitRetaining;
  Totaliza;
end;

procedure TFormCadastroVenda.fdQryItensAfterInsert(DataSet: TDataSet);
begin
  inherited;
  fdQryItensID_VENDA_CAB.AsInteger := fdQryCadastroID_VENDA_CAB.AsInteger;
end;

procedure TFormCadastroVenda.fdQryItensAfterPost(DataSet: TDataSet);
begin
  fdtItens.StartTransaction;
  inherited;
  fdtItens.CommitRetaining;
  Totaliza;
end;

procedure TFormCadastroVenda.fdQryItensCalcFields(DataSet: TDataSet);
begin
  inherited;
  fdQryItensSubTotal.AsFloat := (fdQryItensQTD.AsFloat * fdQryItensVALOR_UNITARIO.AsFloat);
  fdQryItensTotal.AsFloat := (fdQryItensQTD.AsFloat * fdQryItensVALOR_UNITARIO.AsFloat) - fdQryItensDESCONTO.AsFloat;
end;

procedure TFormCadastroVenda.FormCreate(Sender: TObject);
begin
  inherited;
  AtualizaFDQuery(Lookup.fdQryProdutos,'');
  AtualizaFDQuery(Lookup.fdQryClientes, '');
end;

procedure TFormCadastroVenda.GravarItem;
begin
  fdQryItens.Append;
  fdQryItensID_PRODUTO.AsInteger    := Integer(edtDescricaoItem.KeyValue);
  fdQryItensQTD.AsFloat             := edtQuantidade.Value;
  fdQryItensVALOR_UNITARIO.AsFloat  := edtValorUnitario.Value;
  fdQryItensDESCONTO.AsFloat        := edtDesconto.Value;
  fdQryItens.Post;
end;

procedure TFormCadastroVenda.LimparCampos;
begin
  edtDescricaoItem.KeyValue := 0;
  edtQuantidade.Value       := 0;
  edtValorUnitario.Value    := 0;
  edtDesconto.Value         := 0;
  edtSubTotal.Value         := 0;
  edtTotal.Value            := 0;
  edtDescricaoItem.SetFocus;
end;

procedure TFormCadastroVenda.SetDadosProduto(pIdProduto: integer);
begin
  edtQuantidade.Value := 1;
  edtValorUnitario.Value := Lookup.fdQryProdutosV_UNITARIO.AsFloat;
end;

procedure TFormCadastroVenda.SetItens(pIdVenda: Integer);
begin
  fdQryItens.Close;
  fdQryItens.ParamByName('ID_VENDA_CAB').AsInteger := pIdVenda;
  AtualizaFDQuery(fdQryItens, '');
  Totaliza;
end;

procedure TFormCadastroVenda.Totaliza;
var
  vQryTotais: TFDQuery;
  vSql: string;
begin
  vQryTotais := TFDQuery.Create(nil);
  vQryTotais.Transaction := fdtItens;
  vQryTotais.Connection := dmDados.fdCon;
  try
    vSql := 'SELECT SUM(QTD * VALOR_UNITARIO) SUBTOTAL, SUM(COALESCE(desconto, 0)) DESCONTO, SUM((QTD * VALOR_UNITARIO) - COALESCE(DESCONTO, 0)) TOTAL' + #13 +
            ' FROM VENDA_ITEM' + #13 +
            ' WHERE ID_VENDA_CAB = ' + IntToStr(fdQryCadastroID_VENDA_CAB.AsInteger);
    AtualizaFDQuery(vQryTotais, vSql);

      edtTotSubTotal.Value  := vQryTotais.FieldByName('SUBTOTAL').AsFloat;
      edtTotDesconto.Value  := vQryTotais.FieldByName('DESCONTO').AsFloat;
      edtTotTotal.Value  := vQryTotais.FieldByName('TOTAL').AsFloat;
  finally
    vQryTotais.Close;
    FreeAndNil(vQryTotais);
  end;
end;

end.
