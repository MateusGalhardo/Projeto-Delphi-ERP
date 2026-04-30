unit uPrincipal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Menus, uDTMconexao, Enter, uFrmAtualizaDB, Data.SqlTimSt, uCadUsuario, uLogin,
   cUsuarioLogado, Vcl.ComCtrls, cAtualizacaoBancoDeDados, cArquivoIni, uCadAcaoAcesso, cAcaoAcesso, RLReport,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, Data.DB, FireDAC.Comp.DataSet, FireDAC.Comp.Client, Vcl.StdCtrls,
  Vcl.ExtCtrls, VclTee.TeeGDIPlus, VCLTee.TeEngine, VCLTee.Series, VCLTee.TeeProcs, VCLTee.Chart, VCLTee.DBChart, cFuncao,
  Vcl.Buttons;

type
  TfrmPrincipal = class(TForm)
    mainPrincipal: TMainMenu;
    cadastro1: TMenuItem;
    movimentao1: TMenuItem;
    cliente1: TMenuItem;
    N1: TMenuItem;
    categoria1: TMenuItem;
    Produto1: TMenuItem;
    N2: TMenuItem;
    mnuFechar: TMenuItem;
    Vendas1: TMenuItem;
    Cliente2: TMenuItem;
    N3: TMenuItem;
    Produto2: TMenuItem;
    N4: TMenuItem;
    Vendapordata1: TMenuItem;
    mniControle1: TMenuItem;
    StbPrincipal: TStatusBar;
    GridPanel1: TGridPanel;
    dbcht1: TDBChart;
    dbcht2: TDBChart;
    dbcht3: TDBChart;
    dbcht4: TDBChart;
    Series1: TBarSeries;
    Series2: TPieSeries;
    Series3: TPieSeries;
    Series4: TFastLineSeries;
    btn1: TSpeedButton;
    mniFinanceiro1: TMenuItem;
    mniteste1: TMenuItem;
    procedure mnuFecharClick(Sender: TObject);
    procedure categoria1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure cliente1Click(Sender: TObject);
    procedure Produto1Click(Sender: TObject);
    procedure Vendas1Click(Sender: TObject);
    procedure mniCategoria2Click(Sender: TObject);
    procedure Cliente2Click(Sender: TObject);
    procedure mniFichadeCliente1Click(Sender: TObject);
    procedure Produto2Click(Sender: TObject);
    procedure Vendapordata1Click(Sender: TObject);
    procedure mniProdutoporCategoria1Click(Sender: TObject);
    procedure mniUsurio1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure mniAlterarSenha1Click(Sender: TObject);
    procedure mniAoAcesso1Click(Sender: TObject);
    procedure mniUsuriosVsAes1Click(Sender: TObject);
    procedure pnl1Click(Sender: TObject);
    procedure tmrAtualizacaoDashBoardTimer(Sender: TObject);
    procedure mnirocarsuario1Click(Sender: TObject);
    procedure mniFornecedor1Click(Sender: TObject);
    procedure mniLog1Click(Sender: TObject);
    procedure mniFinanceiro1Click(Sender: TObject);
  private
    { Private declarations }
    TeclaEnter: TMREnter;
    FTrocaUsuario: Boolean;
    procedure AtualizacaoBancoDados(aForm: TfrmAtualizaDB);
    procedure AtualizarDashBoard;
    procedure TrocarUsuario;

  public
    { Public declarations }

  end;

var
  frmPrincipal: TfrmPrincipal;
  oUsuarioLogado:TUsuarioLogado;

implementation

{$R *.dfm}

uses uCadCategoria, uCadCliente, uCadProduto, uProVenda, uRelCategoria, uRelCadCliente, uRelCadClienteFicha, uRelCadProduto, uSelecionarData,
uRelCadProdutoComGrupoCategoria, uRelVendaPorData, uAlterarSenha, uUsuarioVsAcoes, uTelaHeranca, uFornecedor, uDTMGrafico, uControleLog, uDTMVenda, uResFinanceiro;

procedure TfrmPrincipal.categoria1Click(Sender: TObject);
begin
  TFuncao.CriarForm(TfrmCadCategoria, oUsuarioLogado, dtmConexao.ConexaoDB);
end;

procedure TfrmPrincipal.cliente1Click(Sender: TObject);
begin
  TFuncao.CriarForm(TfrmCadCliente, oUsuarioLogado, dtmConexao.ConexaoDB);
end;

procedure TfrmPrincipal.Cliente2Click(Sender: TObject);
begin
  TFuncao.CriarRelatorio(TfrmRelCadCliente, oUsuarioLogado, dtmConexao.ConexaoDB);
end;

procedure TfrmPrincipal.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  FreeAndNil(TeclaEnter);
  FreeAndNil(dtmConexao);
  FreeAndNil(DTMGrafico);

  if Assigned (oUsuarioLogado) then
     FreeAndNil(oUsuarioLogado);
end;

procedure TfrmPrincipal.FormCreate(Sender: TObject);
begin
  VCLTee.Series.TBarSeries.ClassName;
  frmAtualizaDB:=TfrmAtualizaDB.Create(Self);
  frmAtualizaDB.Show;
  frmAtualizaDB.Refresh;

  dtmConexao:= TdtmConexao.Create(Self);
  with dtmConexao.ConexaoDB do
  begin
  // aqui vai as coisas de login com senha, no meu caso não tem pq logo com windows
  end;
  AtualizacaoBancoDados(frmAtualizaDB);
  TAcaoAcesso.CriarAcoes(TfrmCadCategoria, dtmConexao.ConexaoDB);
  TAcaoAcesso.CriarAcoes(TfrmCadCliente, dtmConexao.ConexaoDB);
  TAcaoAcesso.CriarAcoes(TfrmCadProduto, dtmConexao.ConexaoDB);
  TAcaoAcesso.CriarAcoes(TfrmCadUsuario, dtmConexao.ConexaoDB);
  TAcaoAcesso.CriarAcoes(TfrmCadAcaoAcesso, dtmConexao.ConexaoDB);
  TAcaoAcesso.CriarAcoes(TfrmAlterarSenha, dtmConexao.ConexaoDB);
  TAcaoAcesso.CriarAcoes(TfrmProVenda, dtmConexao.ConexaoDB);
  TAcaoAcesso.CriarAcoes(TfrmRelVendaPorData, dtmConexao.ConexaoDB);
  TAcaoAcesso.CriarAcoes(TfrmRelCadClienteFicha, dtmConexao.ConexaoDB);
  TAcaoAcesso.CriarAcoes(TfrmRelCadCliente, dtmConexao.ConexaoDB);
  TAcaoAcesso.CriarAcoes(TfrmRelCadProdutoComGrupoCategoria, dtmConexao.ConexaoDB);
  TAcaoAcesso.CriarAcoes(TfrmRelCadProduto, dtmConexao.ConexaoDB);
  TAcaoAcesso.CriarAcoes(TfrmRelCategoria, dtmConexao.ConexaoDB);
  TAcaoAcesso.CriarAcoes(TfrmUsuarioVsAcoes, dtmConexao.ConexaoDB);
  TAcaoAcesso.CriarAcoes(TfrmFornecedor, dtmConexao.ConexaoDB);
  TAcaoAcesso.CriarAcoes(TfrmControleLog, dtmConexao.ConexaoDB);
  TAcaoAcesso.CriarAcoes(TfrmResFinanceiro, dtmConexao.ConexaoDB);
  TAcaoAcesso.PreencherUsuariosVsAcoes(dtmConexao.ConexaoDB);


  DTMGrafico:=TDTMGrafico.Create(self);
  AtualizarDashBoard;
  frmAtualizaDB.Free;

  TeclaEnter:=TMREnter.Create(Self);
  TeclaEnter.FocusEnabled:=True;
  TeclaEnter.FocusColor:=clInfoBk;
end;

procedure TfrmPrincipal.FormShow(Sender: TObject);
begin
 try
   oUsuarioLogado:=TUsuarioLogado.Create;
   frmLogin:=TfrmLogin.Create(self);
   frmLogin.ShowModal;
 finally
   frmLogin.Release;
   stbPrincipal.Panels[0].Text:='USUÁRIO: '+oUsuarioLogado.nome;
 end;
end;

procedure TfrmPrincipal.mniAlterarSenha1Click(Sender: TObject);
begin
  TFuncao.CriarForm(TfrmAlterarSenha, oUsuarioLogado, dtmConexao.ConexaoDB);
end;

procedure TfrmPrincipal.mniAoAcesso1Click(Sender: TObject);
begin
  TFuncao.CriarForm(TfrmCadAcaoAcesso, oUsuarioLogado, dtmConexao.ConexaoDB);
end;

procedure TfrmPrincipal.mniCategoria2Click(Sender: TObject);
begin
  TFuncao.CriarRelatorio(TfrmRelCategoria, oUsuarioLogado, dtmConexao.ConexaoDB);
end;

procedure TfrmPrincipal.mniFichadeCliente1Click(Sender: TObject);
begin
  TFuncao.CriarRelatorio(TfrmRelCadClienteFicha, oUsuarioLogado, dtmConexao.ConexaoDB);
end;


procedure TfrmPrincipal.mniFinanceiro1Click(Sender: TObject);
begin
 TFuncao.CriarForm(TfrmResFinanceiro, oUsuarioLogado, dtmConexao.ConexaoDB);
end;

procedure TfrmPrincipal.mniFornecedor1Click(Sender: TObject);
begin
  TFuncao.CriarForm(TfrmFornecedor, oUsuarioLogado, dtmConexao.ConexaoDB);
end;

procedure TfrmPrincipal.mniLog1Click(Sender: TObject);
begin
   TFuncao.CriarForm(TfrmControleLog, oUsuarioLogado, dtmConexao.ConexaoDB);
end;

procedure TfrmPrincipal.mniProdutoporCategoria1Click(Sender: TObject);
begin
  TFuncao.CriarRelatorio(TfrmRelCadProdutoComGrupoCategoria, oUsuarioLogado, dtmConexao.ConexaoDB);
end;

procedure TfrmPrincipal.mnirocarsuario1Click(Sender: TObject);
begin
  TrocarUsuario;
end;

procedure TfrmPrincipal.TrocarUsuario;
var
  UsuarioBackup: TUsuarioLogado;
  // variável pra guardar o usuário atual antes de tentar trocar

begin
  UsuarioBackup := TUsuarioLogado.Create;
  // cria um objeto auxiliar (backup)

  try
    // salva usuário atual
    UsuarioBackup.codigo := oUsuarioLogado.codigo;
    // copia o código do usuário atual

    UsuarioBackup.nome   := oUsuarioLogado.nome;
    // copia o nome

    UsuarioBackup.senha  := oUsuarioLogado.senha;
    // copia a senha

    frmLogin := TfrmLogin.Create(Application);
    // cria a tela de login

    frmLogin.TrocaUsuario := True;
    // informa pra tela que é troca de usuário (não é login inicial)

    try
      if frmLogin.ShowModal = mrCancel then
      // abre o login de forma modal (trava o resto do sistema)
      // se retornar mrCancel significa que o usuário desistiu

      begin
        // restaura usuário anterior
        oUsuarioLogado.codigo := UsuarioBackup.codigo;
        // volta o código antigo

        oUsuarioLogado.nome   := UsuarioBackup.nome;
        // volta o nome antigo

        oUsuarioLogado.senha  := UsuarioBackup.senha;
        // volta a senha antiga

        Exit;
        // sai da procedure e não troca nada
      end;

      // login OK  status atualizado
      stbPrincipal.Panels[0].Text := 'USUÁRIO: ' + oUsuarioLogado.nome;
      ShowMessage('Usuário Alterado!');
      // aqui chegou porque foi mrOk → login deu certo
      // então atualiza o status bar com o novo usuário

    finally
      FreeAndNil(frmLogin);
      // libera a tela de login da memória
    end;

  finally
    UsuarioBackup.Free;
    // libera o backup da memória
  end;
end;

procedure TfrmPrincipal.mniUsurio1Click(Sender: TObject);
begin
  TFuncao.CriarForm(TfrmCadUsuario, oUsuarioLogado, dtmConexao.ConexaoDB);
end;

procedure TfrmPrincipal.mniUsuriosVsAes1Click(Sender: TObject);
begin
  TFuncao.CriarForm(TfrmUsuarioVsAcoes, oUsuarioLogado, dtmConexao.ConexaoDB);
end;

procedure TfrmPrincipal.mnuFecharClick(Sender: TObject);
begin
   //Close;
   Application.Terminate;
end;

procedure TfrmPrincipal.pnl1Click(Sender: TObject);
begin
  AtualizarDashBoard;
end;

procedure TfrmPrincipal.Produto1Click(Sender: TObject);
begin
  TFuncao.CriarForm(TfrmCadProduto, oUsuarioLogado, dtmConexao.ConexaoDB);
end;

procedure TfrmPrincipal.Produto2Click(Sender: TObject);
begin
  TFuncao.CriarRelatorio(TfrmRelCadProduto, oUsuarioLogado, dtmConexao.ConexaoDB);
end;

procedure TfrmPrincipal.tmrAtualizacaoDashBoardTimer(Sender: TObject);
begin
  AtualizarDashBoard;
end;

procedure TfrmPrincipal.Vendapordata1Click(Sender: TObject);
begin
  try
    frmSelecionarData:=TfrmSelecionarData.Create(Self);
    if TUsuarioLogado.TenhoAcesso(oUsuarioLogado.codigo, 'frmRelVendaPorData', dtmConexao.ConexaoDB) then
    begin
    frmSelecionarData.ShowModal;

    frmRelVendaPorData:= TfrmRelVendaPorData.Create(Self);
    frmRelVendaPorData.QryVendas.Close;
    frmRelVendaPorData.QryVendas.ParamByName('DataInicio').AsDate:=frmSelecionarData.edtDataInicio.Date;
    frmRelVendaPorData.QryVendas.ParamByName('DataFim').AsDate:=frmSelecionarData.edtDataFinal.Date;
    frmRelVendaPorData.QryVendas.Open;
    frmRelVendaPorData.Relatorio.PreviewModal;
    end
    else begin
      MessageDlg('Usuário: '+oUsuarioLogado.nome +', não tem permissão de acesso',mtWarning,[mbOK],0);
    end;
  finally
     if Assigned(frmSelecionarData) then
        frmSelecionarData.Release;
     if Assigned(frmRelVendaPorData) then
        frmRelVendaPorData.Release;

  end;
end;

procedure TfrmPrincipal.Vendas1Click(Sender: TObject);
begin
  TFuncao.CriarForm(TfrmProVenda, oUsuarioLogado, dtmConexao.ConexaoDB);
end;

procedure TfrmPrincipal.AtualizacaoBancoDados(aForm:TfrmAtualizaDB);
var oAtualizarMSSQL:TAtualizaBancoDadosMSSQL;
begin
  aForm.Refresh;
  try
    oAtualizarMSSQL:=TAtualizaBancoDadosMSSQL.Create(dtmConexao.ConexaoDB);
    oAtualizarMSSQL.AtualizarBancoDeDadosMSSQL;
  finally
    if Assigned(oAtualizarMSSQL) then
       FreeAndNil(oAtualizarMSSQL);
  end;

end;

procedure TfrmPrincipal.AtualizarDashBoard;
begin
  try
    Screen.Cursor:=crSQLWait;
    if DTMGrafico.QryProdutoEstoque.Active then
     DTMGrafico.QryProdutoEstoque.Close;

  if DTMGrafico.QryValorVendaPorCliente.Active then
     DTMGrafico.QryValorVendaPorCliente.Close;

  if DTMGrafico.QryVendasUltimasSemana.Active then
     DTMGrafico.QryVendasUltimasSemana.Close;

  if DTMGrafico.Qry10ProdutosMaisVendidos.Active then
     DTMGrafico.Qry10ProdutosMaisVendidos.Close;

  DTMGrafico.QryProdutoEstoque.Open;
  DTMGrafico.QryValorVendaPorCliente.Open;
  DTMGrafico.QryVendasUltimasSemana.Open;
  DTMGrafico.Qry10ProdutosMaisVendidos.Open;
  finally
    Screen.Cursor:=crDefault;
  end;

end;
end.
