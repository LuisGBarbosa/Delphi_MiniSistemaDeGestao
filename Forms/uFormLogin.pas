unit uFormLogin;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  Data.DB, FireDAC.Comp.DataSet, FireDAC.Comp.Client, Vcl.ExtCtrls, uDmDados,
  uCrpt, uBiblioteca;

type
  TFormLogin = class(TForm)
    edtLogin: TEdit;
    edtSenha: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    fdQryLogin: TFDQuery;
    Button1: TButton;
    Button2: TButton;
    Panel1: TPanel;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    function Login(pLogin, pSenha: string): boolean;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormLogin: TFormLogin;

implementation

{$R *.dfm}

procedure TFormLogin.Button1Click(Sender: TObject);
begin
  Application.Terminate;
end;

procedure TFormLogin.Button2Click(Sender: TObject);
begin
  if not Login(edtLogin.Text, edtSenha.Text) then begin
    MsgAtencao('Login Incorreto!');
    Abort;
  end
  else begin
    Self.Close;
  end;

end;

procedure TFormLogin.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  if not Login(edtLogin.Text, edtSenha.Text) then begin
    Application.Terminate;
  end;
  Action := caFree;
end;

function TFormLogin.Login(pLogin, pSenha: string): boolean;
begin
  Result := False;
  fdQryLogin.Close;
  fdQryLogin.ParamByName('LOGIN').AsAnsiString := pLogin;
  fdQryLogin.Open();

  fdQryLogin.First;
  while not fdQryLogin.Eof do
  begin
    if pSenha = Criptografa('D', fdQryLogin.FieldByName('SENHA').AsAnsiString) then begin
      Result := True;
      Break;
    end;
      fdQryLogin.Next;
  end;

end;

end.
