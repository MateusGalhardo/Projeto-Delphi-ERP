unit cAtualizacaoTabelaMSSQL;

interface

uses Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client, Vcl.DBCtrls, Vcl.Grids, Vcl.DBGrids, Vcl.StdCtrls, Vcl.Buttons, Vcl.Mask,
  Vcl.ExtCtrls, Vcl.ComCtrls, cAtualizacaoBancoDeDados, cCadUsuario;

type
  TAtualizacaoTableMSSQL = class(TAtualizaBancoDados)

  private
    function TabelaExiste(aNomeTabela:String):Boolean;
    procedure Categoria;
    procedure Cliente;
    procedure Produto;
    procedure Vendas;
    procedure vendasItens;
    procedure Usuario;
    procedure AcaoAcesso;
    procedure UsuariosAcaoAcesso;
    procedure Perfil;
    procedure Auditoria;
    procedure Fornecedor;

  protected

  public
    constructor Create (aConexao:TFDConnection);
    destructor Destroy; override;


   end;

implementation

{ TAtualizacaoTableMSSQL }

constructor TAtualizacaoTableMSSQL.Create(aConexao: TFDConnection);
begin
  ConexaoDB := aConexao;
  Categoria;
  Cliente;
  Produto;
  Vendas;
  vendasItens;
  Usuario;
  AcaoAcesso;
  UsuariosAcaoAcesso;
  Perfil;
  Auditoria;
  Fornecedor;
end;

destructor TAtualizacaoTableMSSQL.Destroy;
begin

  inherited;
end;

function TAtualizacaoTableMSSQL.TabelaExiste(aNomeTabela: String): Boolean;
var Qry:TFDQuery;
begin
  try
    Result:= False;
    Qry:=TFDQuery.Create(nil);
    Qry.Connection:=ConexaoDB;
    Qry.SQL.Clear;
    Qry.SQL.Add(' SELECT OBJECT_ID (:NomeTabela) AS ID ');
    Qry.ParamByName('NomeTabela').AsString:=aNomeTabela;
    Qry.Open;

    if Qry.FieldByName('ID').AsInteger>0 then
       Result:=True;
  finally
    Qry.Close;
    if assigned (Qry) then
       FreeAndNil(Qry);
  end;
end;

procedure TAtualizacaoTableMSSQL.AcaoAcesso;
begin
  if not TabelaExiste('AcaoAcesso') then
  begin
    ExecutaDiretoBancoDeDados(
    'CREATE TABLE acaoAcesso ( '+
    ' acaoAcessoId int identity(1,1) not null, '+
    ' descricao varchar(100) not null, '+
    ' chave varchar(60) not null, '+
    ' PRIMARY KEY (acaoAcessoId) '+
    ' ) '
   );
  end;
end;

procedure TAtualizacaoTableMSSQL.Categoria;
begin
  if not TabelaExiste('categorias') then
  begin
    ExecutaDiretoBancoDeDados(
    'create table categorias(   '+
    '       categoriaId int identity(1,1) not null, '+
    '       descricao varchar(30) null, '+
    '       primary key (categoriaId) '+
    ')  '
    );
  end;
end;

procedure TAtualizacaoTableMSSQL.Cliente;
begin
  if not TabelaExiste('clientes') then
  begin
    ExecutaDiretoBancoDeDados(
      '	CREATE TABLE clientes (  '+
      '		clienteId int IDENTITY(1,1) NOT NULL, '+
      '		nome varchar(60) NULL, '+
      '		documento varchar(18) NOT NULL unique, '+
      '		endereco varchar(60) null, '+
      '		cidade varchar(50) null, '+
      '		bairro varchar(40) null, '+
      '		estado varchar(2) null, '+
      '		cep varchar(10) null, '+
      '		telefone varchar(14) null, '+
      '		email varchar(100) null,      '+
      '		dataNascimento datetime null '+
      '		PRIMARY KEY (clienteId) '+
      '	) '
    );
  end;
end;

procedure TAtualizacaoTableMSSQL.Produto;
begin
  if not TabelaExiste('produtos') then
  begin
    ExecutaDiretoBancoDeDados(
      '	CREATE TABLE produtos(  '+
      '		produtoId int IDENTITY(1,1) NOT NULL, '+
      '		nome varchar(60) NULL, '+
      '		descricao varchar(255) null, '+
      '		valor decimal(18,5) default 0.00000 null, '+
      '		quantidade decimal(18,5) default 0.00000 null, '+
      '		categoriaId int null, '+
      '		PRIMARY KEY (produtoId), '+
      '		CONSTRAINT FK_ProdutosCategorias '+
      '		FOREIGN KEY (categoriaId) references categorias(categoriaId) '+
      '	) '
    );
  end;
end;

procedure TAtualizacaoTableMSSQL.Vendas;
begin
  if not TabelaExiste('vendas') then
  begin
    ExecutaDiretoBancoDeDados(
      '	CREATE TABLE vendas (  '+
      '	  vendaId int identity(1,1) not null, '+
      '	  clienteId int not null, '+
      '	  dataVenda datetime default getdate(), '+
      '	  totalVenda decimal(18,5) default 0.00000, '+

      '	  PRIMARY KEY (vendaId), '+
      '	  CONSTRAINT FK_VendasClientes FOREIGN KEY (clienteId) '+
      '		REFERENCES clientes(clienteId) '+
      '	) '
    );
  end;
end;

procedure TAtualizacaoTableMSSQL.VendasItens;
begin
  if not TabelaExiste('vendasItens') then
  begin
    ExecutaDiretoBancoDeDados(
      ' CREATE TABLE vendasItens (   '+
      ' 	vendaId int not null,  '+
      '	  produtoId int not null,  '+
      '	  valorUnitario decimal (18,5) default 0.00000,  '+
      '	  quantidade decimal (18,5) default 0.00000,  '+
      '	  totalProduto decimal (18,5) default 0.00000,  '+

      '	  PRIMARY KEY (vendaId,produtoId),  '+
      '	  CONSTRAINT FK_VendasItensProdutos FOREIGN KEY (produtoId)  '+
      '		REFERENCES produtos(produtoId)  '+
      '	)  '
    );
  end;


end;

procedure TAtualizacaoTableMSSQL.Usuario;
var oUsuario:TUsuario;
begin
  if not TabelaExiste('usuarios') then
  begin
    ExecutaDiretoBancoDeDados(
    'CREATE TABLE usuarios ( '+
    '  usuarioId int identity(1,1) not null, '+
    '  nome varchar(50) not null, '+
    '  senha varchar(40) not null, '+
    '  PRIMARY KEY (usuarioId) '+
    ' ) '
   );
  end;

  try
    oUsuario:=TUsuario.Create(ConexaoDB);
    oUsuario.nome:='Administrador';
    oUsuario.senha:='123';
    if not oUsuario.UsuarioExiste(oUsuario.nome) then
       oUsuario.Inserir;
  finally
    if Assigned(oUsuario) then
       FreeAndNil(oUsuario);
  end;

  try
    oUsuario:=TUsuario.Create(ConexaoDB);
    oUsuario.nome:='Estoquista';
    oUsuario.senha:='123';
    if not oUsuario.UsuarioExiste(oUsuario.nome) then
       oUsuario.Inserir;
  finally
    if Assigned(oUsuario) then
       FreeAndNil(oUsuario);
  end;

  try
    oUsuario:=TUsuario.Create(ConexaoDB);
    oUsuario.nome:='Vendedor';
    oUsuario.senha:='123';
    if not oUsuario.UsuarioExiste(oUsuario.nome) then
       oUsuario.Inserir;
  finally
    if Assigned(oUsuario) then
       FreeAndNil(oUsuario);
  end;

end;

procedure TAtualizacaoTableMSSQL.UsuariosAcaoAcesso;
begin
  if not TabelaExiste('usuariosAcaoAcesso') then
  begin
    ExecutaDiretoBancoDeDados(
      'CREATE TABLE usuariosAcaoAcesso( '+
      '	 usuarioId  int NOT NULL, '+
      '	 acaoAcessoId int NOT NULL, '+
      '	 ativo bit not null default 1, '+
      '	 PRIMARY KEY (usuarioId, acaoAcessoId), '+
      '	 CONSTRAINT FK_UsuarioAcaoAcessoUsuario '+
      '	 FOREIGN KEY (usuarioId) references usuarios(usuarioId), '+
      '	 CONSTRAINT FK_UsuarioAcaoAcessoAcaoAcesso '+
      '	 FOREIGN KEY (acaoAcessoId) references acaoAcesso(acaoAcessoId), '+
      '	) '
    );
  end;
end;

procedure TAtualizacaoTableMSSQL.Perfil;
begin
   if not TabelaExiste('perfil') then
  begin
    ExecutaDiretoBancoDeDados(
      'CREATE TABLE perfil ( ' +
      ' perfilId INT IDENTITY PRIMARY KEY, ' +
     ' descricao VARCHAR(50) )'
    );
  end;
end;

procedure TAtualizacaoTableMSSQL.Auditoria;
begin
   if not TabelaExiste('AUDITORIA') then
  begin
    ExecutaDiretoBancoDeDados(
    '  CREATE TABLE AUDITORIA ( '+
    ' ID INT IDENTITY PRIMARY KEY, '+
    ' DATA_HORA DATETIME, '+
    ' USUARIO VARCHAR(50), '+
    ' ACAO VARCHAR(50), '+
    ' TELA VARCHAR(50), '+
    ' DESCRICAO VARCHAR(255) )'
                               );
  end;
end;

procedure TAtualizacaoTableMSSQL.Fornecedor;
begin
   if not TabelaExiste('fornecedor') then
  begin
    ExecutaDiretoBancoDeDados(
      'CREATE TABLE fornecedor( '+
      'fornId int identity primary key, ' +
      ' nome varchar(50), ' +
      ' cnpj varchar(18), ' +
      ' endereco varchar(50), ' +
      ' telefone varchar(15), ' +
      ' email varchar(50), '+
      ' observacao varchar(100)' +
      '    ) '
    );
  end;
end;

end.
