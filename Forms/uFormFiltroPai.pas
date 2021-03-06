unit uFormFiltroPai;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, Data.DB, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client, uDmDados, uBiblioteca;

type
  TFormFiltroPai = class(TForm)
    Panel1: TPanel;
    edtFiltro: TEdit;
    Label1: TLabel;
    btnFiltro: TButton;
    fdQryFiltro: TFDQuery;
    dsFiltro: TDataSource;
    Panel2: TPanel;
    Button2: TButton;
    fdTransaction: TFDTransaction;
    procedure Button2Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    procedure ValidaQueryVazia;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormFiltroPai: TFormFiltroPai;

implementation

{$R *.dfm}

procedure TFormFiltroPai.Button2Click(Sender: TObject);
begin
  Self.Close;
end;

procedure TFormFiltroPai.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure TFormFiltroPai.ValidaQueryVazia;
begin
  if fdQryFiltro.IsEmpty then begin
    MsgAtencao('Selecione um registro.');
    Abort;
  end;

end;

end.
