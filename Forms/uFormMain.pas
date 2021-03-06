unit uFormMain;

interface
uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms,
  Dialogs, AdvToolBar, AdvToolBarStylers, AdvPreviewMenu,
  AdvPreviewMenuStylers, AdvShapeButton, AdvOfficeStatusBar,
  AdvOfficeStatusBarStylers, AdvGlowButton, uFormCadastroCidade,
  uFormCadastroCliente, uFormCadastroEstado, uFormFiltroClientes,
  uFormCadastroFornecedor, uFormFiltroFornecedores, uFormFiltroProdutos,
  uFormCadastroProduto, uFormLogin;

type
  TFormMain = class(TAdvToolBarForm)
    AdvToolBarPager1: TAdvToolBarPager;
    AdvPage1: TAdvPage;
    AdvToolBarOfficeStyler1: TAdvToolBarOfficeStyler;
    AdvToolBar1: TAdvToolBar;
    AdvOfficeStatusBar1: TAdvOfficeStatusBar;
    AdvOfficeStatusBarOfficeStyler1: TAdvOfficeStatusBarOfficeStyler;
    AdvQuickAccessToolBar1: TAdvQuickAccessToolBar;
    AdvShapeButton1: TAdvShapeButton;
    AdvPage2: TAdvPage;
    AdvPage3: TAdvPage;
    AdvToolBar2: TAdvToolBar;
    AdvToolBar3: TAdvToolBar;
    AdvToolBar4: TAdvToolBar;
    AdvGlowButton1: TAdvGlowButton;
    AdvGlowButton2: TAdvGlowButton;
    AdvGlowButton3: TAdvGlowButton;
    AdvToolBarSeparator1: TAdvToolBarSeparator;
    AdvToolBarSeparator2: TAdvToolBarSeparator;
    btnFiltroClientes: TAdvGlowButton;
    AdvToolBarSeparator3: TAdvToolBarSeparator;
    AdvToolBarSeparator4: TAdvToolBarSeparator;
    AdvGlowButton4: TAdvGlowButton;
    btnFornecedor: TAdvGlowButton;
    AdvToolBarSeparator5: TAdvToolBarSeparator;
    btnProdutos: TAdvGlowButton;
    btnProduto: TAdvGlowButton;
    AdvPage4: TAdvPage;
    AdvToolBar5: TAdvToolBar;
    AdvGlowButton5: TAdvGlowButton;
    AdvToolBarSeparator6: TAdvToolBarSeparator;
    AdvToolBarSeparator7: TAdvToolBarSeparator;
    btnFiltroVendas: TAdvGlowButton;
    AdvToolBarSeparator8: TAdvToolBarSeparator;
    btnFiltroUsuarios: TAdvGlowButton;
    AdvToolBarSeparator9: TAdvToolBarSeparator;
    btnCadastroUsuario: TAdvGlowButton;
    procedure AdvGlowButton2Click(Sender: TObject);
    procedure AdvGlowButton3Click(Sender: TObject);
    procedure AdvGlowButton1Click(Sender: TObject);
    procedure btnFiltroClientesClick(Sender: TObject);
    procedure AdvGlowButton4Click(Sender: TObject);
    procedure btnFornecedorClick(Sender: TObject);
    procedure btnProdutosClick(Sender: TObject);
    procedure btnProdutoClick(Sender: TObject);
    procedure AdvGlowButton5Click(Sender: TObject);
    procedure btnFiltroVendasClick(Sender: TObject);
    procedure btnFiltroUsuariosClick(Sender: TObject);
    procedure btnCadastroUsuarioClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure AdvShapeButton1Click(Sender: TObject);
  private
    { Private declarations }
  protected
    { Protected declarations }
  public
    { Public declarations }
  end;

var
  FormMain: TFormMain;

implementation

{$R *.dfm}

uses uFormCadastroVenda, uBiblioteca, uFormFiltroVendas, uFormFiltroUsuario,
  uFormCadastroUsuario;


procedure TFormMain.AdvGlowButton1Click(Sender: TObject);
begin
//  FormcadastroEstado := TFormcadastroEstado.Create(Self);     //Criando formul?rio em tempo de execu??o
//  try
//  FormCadastroEstado.ShowModal;   //Executando formul?rio com "ShowModal" para encerrar o processo e n?o continuar o Try
//  finally
//    FreeAndNil(FormCadastroEstado);  // Liebrando a vari?vel da mem?ria
//  end;
ShowModalForm(TFormCadastroEstado, FormCadastroEstado);
end;

procedure TFormMain.AdvGlowButton2Click(Sender: TObject);
begin
//  FormcadastroCliente := TFormCadastroCliente.Create(Self);
//  try
//  FormCadastroCliente.ShowModal;
//  finally
//    FreeAndNil(FormCadastroCliente);
//  end;
  ShowModalForm(TFormCadastroCliente, FormCadastroCliente);
end;

procedure TFormMain.AdvGlowButton3Click(Sender: TObject);
begin
//  FormCadastroCidade := TFormCadastroCidade.Create(Self);
//  try
//  FormCadastroCidade.ShowModal;
//  finally
//    FreeAndNil(FormCadastroCidade)
//  end;
ShowModalForm(TFormCadastroCidade, FormCadastroCidade);
end;

procedure TFormMain.AdvGlowButton4Click(Sender: TObject);
begin
//  FormCadastroFornecedores := TFormCadastroFornecedores.Create(Self);
//  try
//    FormCadastroFornecedores.ShowModal;
//  finally
//    FreeAndNil(FormCadastroFornecedores);
//  end;
ShowModalForm(TFormCadastroFornecedores, FormCadastroFornecedores);
end;

procedure TFormMain.AdvGlowButton5Click(Sender: TObject);
begin
//  FormcadastroVenda := TFormCadastroVenda.Create(Self);
//  try
//  FormCadastroVenda.ShowModal;
//  finally
//    FreeAndNil(FormCadastroVenda);
//  end;
ShowModalForm(TFormCadastroVenda, FormCadastroVenda);
end;

procedure TFormMain.AdvShapeButton1Click(Sender: TObject);
begin
  ShowModalForm(TFormLogin, FormLogin);
end;

procedure TFormMain.btnCadastroUsuarioClick(Sender: TObject);
begin
  ShowModalForm(TFormCadastroUsuario, FormCadastroUsuario);
end;

procedure TFormMain.btnFiltroClientesClick(Sender: TObject);
begin
//  try
//    FormFiltroClientes := TFormFiltroClientes.Create(Self);
//    FormFiltroclientes.Show;
//  finally
//
//  end;
ShowForm(TFormFiltroClientes, FormFiltroClientes);
end;

procedure TFormMain.btnFiltroUsuariosClick(Sender: TObject);
begin
  ShowForm(TFormFiltroUsuario, FormFiltroUsuario);
end;

procedure TFormMain.btnFiltroVendasClick(Sender: TObject);
begin
  ShowForm(TFormFiltroVendas, FormFiltroVendas);
end;

procedure TFormMain.btnFornecedorClick(Sender: TObject);
begin
//  FormFiltroFornecedores := TFormFiltroFornecedores.Create(Self);
//  FormFiltroFornecedores.Show;
ShowForm(TFormFiltroFornecedores, FormFiltroFornecedores);
end;

procedure TFormMain.btnProdutoClick(Sender: TObject);
begin
//  FormCadastroProduto := TFormCadastroProduto.Create(Self);
//  try
//    FormCadastroProduto.ShowModal;
//  finally
//    FreeAndNil(FormCadastroProduto);
//  end;
ShowModalForm(TFormCadastroProduto, FormCadastroProduto);
end;

procedure TFormMain.btnProdutosClick(Sender: TObject);
begin
//  FormFiltroProdutos := TFormFiltroProdutos.Create(Self);
//  FormFiltroProdutos.Show;
ShowForm(TFormFiltroProdutos, FormFiltroProdutos);
end;

procedure TFormMain.FormCreate(Sender: TObject);
begin
  ShowModalForm(TFormLogin, FormLogin);
end;

end.
