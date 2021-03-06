unit uFormFiltroUsuario;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, uFormFiltroPai, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  FireDAC.Comp.Client, Data.DB, FireDAC.Comp.DataSet, Vcl.StdCtrls, Vcl.ExtCtrls,
  Vcl.Grids, Vcl.DBGrids, uFormCadastroUsuario, uBiblioteca;

type
  TFormFiltroUsuario = class(TFormFiltroPai)
    DBGrid1: TDBGrid;
    Button1: TButton;
    Button3: TButton;
    procedure btnFiltroClick(Sender: TObject);
    procedure Button3Click(Sender: TObject);
  private
    procedure Filtrar;
    Procedure ValidaQueryVazia;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormFiltroUsuario: TFormFiltroUsuario;

implementation

{$R *.dfm}

procedure TFormFiltroUsuario.btnFiltroClick(Sender: TObject);
begin
  inherited;
  Filtrar;
end;

procedure TFormFiltroUsuario.Button3Click(Sender: TObject);
begin
  inherited;
  ValidaQueryVazia;
  FormcadastroUsuario := TFormCadastroUsuario.Create(Self);
  try
  FormCadastroUsuario.ShowModal;
  finally
    FreeAndNil(FormCadastroUsuario);
  end;
end;

procedure TFormFiltroUsuario.Filtrar;
begin
  fdQryFiltro.Close;
  fdQryFiltro.SQL.Clear;
  fdQryFIltro.SQL.Add('SELECT U.ID_USUARIO,');
  fdQryFIltro.SQL.Add(' U.NOME,');
  fdQryFIltro.SQL.Add(' U.LOGIN');
  fdQryFIltro.SQL.Add('FROM USUARIO U');
  fdQryFIltro.SQL.Add('WHERE 1=1');

  if Trim(edtFiltro.Text) <> '' then begin
    fdQryFiltro.SQL.Add(' AND UPPER(NOME) LIKE ' + QuotedStr('%' + UpperCase(Trim(edtFiltro.Text) + '%')));
  end;

  fdQryFiltro.Open();
  fdQryFiltro.FetchAll;
end;

procedure TFormFiltroUsuario.ValidaQueryVazia;
begin
  if fdQryFiltro.IsEmpty then begin
    MsgAtencao('? necess?rio selecionar um Produto.') ;
    Abort;
  end;
end;

end.
