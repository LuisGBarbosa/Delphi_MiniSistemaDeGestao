unit uFormConfigBanco;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Imaging.pngimage,
  Vcl.ExtCtrls, uBiblioteca;

type
  TFormConfigBanco = class(TForm)
    Image1: TImage;
    edtLocal: TEdit;
    Label1: TLabel;
    Button1: TButton;
    edtServer: TEdit;
    Label2: TLabel;
    btnBuscar: TButton;
    opnPastas: TOpenDialog;
    procedure Button1Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btnBuscarClick(Sender: TObject);
  private
    procedure Configura;  //criando uma procedure para configurar o ini
    procedure Buscar;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormConfigBanco: TFormConfigBanco;

implementation

{$R *.dfm}

{ TFormConfigBanco }

procedure TFormConfigBanco.btnBuscarClick(Sender: TObject);
begin
  Buscar;
end;

procedure TFormConfigBanco.Button1Click(Sender: TObject);
begin
   Configura;
end;

procedure TFormConfigBanco.Buscar;
begin
  if opnPastas.Execute then begin
    edtLocal.Text := opnPastas.FileName;
  end;
end;

procedure TFormConfigBanco.Configura;  //executando procedure para configurar o ini
var
  vFileName: string;
begin
    vFileName     := ExtractFilePath(Application.ExeName) + 'config.ini';
    SetValorIni(vFileName, 'CONFIGURACAO', 'LOCAL_DB', edtLocal.Text);
    SetValorIni(vFileName, 'CONFIGURACAO', 'SERVER', edtServer.Text);
    MsgInformacao('Pronto!');

//  if opnPastas.Execute then begin
//    edtLocal.Text := opnPastas.FileName;
//    vFileName     := ExtractFilePath(Application.ExeName) + 'config.ini';
//    SetValorIni(vFileName, 'CONFIGURACAO', 'LOCAL_DB', edtLocal.Text);
//    MsgInformacao('Pronto.');
//    Self.Close;
//  end;
end;

procedure TFormConfigBanco.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Application.Terminate;
end;

end.

