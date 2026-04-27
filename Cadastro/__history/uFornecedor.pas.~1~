unit uFornecedor;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, uTelaHeranca, Data.DB, FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client, Vcl.DBCtrls, Vcl.Grids, Vcl.DBGrids, Vcl.StdCtrls, Vcl.Buttons, Vcl.Mask,
  Vcl.ExtCtrls, Vcl.ComCtrls, uEnum, cFornecedor, uDTMconexao, cValidar;

type
  TfrmFornecedor = class(TfrmTelaHeranca)
    f1ListagemfornId: TFDAutoIncField;
    f2Listagemnome: TStringField;
    f2Listagemcnpj: TStringField;
    f2Listagemendereco: TStringField;
    f2Listagemtelefone: TStringField;
    f2Listagememail: TStringField;
    f2Listagemobservacao: TStringField;
    edtNome: TLabeledEdit;
    edtEndereco: TLabeledEdit;
    edtTelefone: TEdit;
    lblTelefone: TLabel;
    edtEmail: TLabeledEdit;
    edtFornId: TLabeledEdit;
    edtCnpj: TEdit;
    lblCnpj: TLabel;
    edtObservacao: TEdit;
    lblObservacao: TLabel;
    procedure grdListagemDblClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure btnAlterarClick(Sender: TObject);
    procedure btnGravarClick(Sender: TObject);
    procedure edtCnpjChange(Sender: TObject);
    procedure edtTelefoneChange(Sender: TObject);
  private
    { Private declarations }
    oFornecedor: TFornecedor;
    function Apagar:Boolean; override;
    function Gravar(EstadoDoCadastro: TEstadoDoCadastro):Boolean; override;
    procedure CarregarItensSelecionados;
    function GetDesc: string; override;
  public
    { Public declarations }
    procedure LimparComponenteItem;
    function SomenteNumeros(const Texto:string):string;
  end;

var
  frmFornecedor: TfrmFornecedor;

implementation

uses uCadCliente;

{$R *.dfm}

function TfrmFornecedor.SomenteNumeros(const Texto:string):string;
var
  I:Integer;
begin
  Result:='';

  for I:= 1 to Length(Texto) do
    if Texto[I] in ['0'..'9'] then
    Result:= Result+Texto[I];
end;

function TfrmFornecedor.GetDesc: string;
begin
  result := oFornecedor.nome;
end;

function TfrmFornecedor.Apagar: Boolean;
begin
  if oFornecedor.Selecionar(fdqryListagem.FieldByName('fornId').AsInteger) then begin
    result:=oFornecedor.Apagar;
  end;
end;


procedure TfrmFornecedor.CarregarItensSelecionados;
begin
  edtNome.Text := fdqryListagem.FieldByName('nome').AsString;
  edtTelefone.Text:= fdqryListagem.FieldByName('telefone').AsString;
  edtCnpj.Text:= fdqryListagem.FieldByName('cnpj').AsString;
  edtFornId.Text := fdqryListagem.FieldByName('fornId').AsString;
  edtEmail.Text:= fdqryListagem.FieldByName('email').AsString;
  edtEndereco.Text:= fdqryListagem.FieldByName('endereco').AsString;
  edtObservacao.Text:= fdqryListagem.FieldByName('observacao').AsString;
end;

procedure TfrmFornecedor.grdListagemDblClick(Sender: TObject);
begin
  inherited;
  CarregarItensSelecionados;
end;

procedure TfrmFornecedor.FormCreate(Sender: TObject);
begin
  inherited;
    oFornecedor:=TFornecedor.Create(dtmConexao.ConexaoDB);
    IndiceAtual:='nome';
end;

function TfrmFornecedor.Gravar(EstadoDoCadastro: TEstadoDoCadastro): Boolean;
begin
  if edtFornId.Text<>EmptyStr then
     oFornecedor.codigo:=StrToInt(edtFornId.Text)
  else
     oFornecedor.codigo:=0;

  oFornecedor.nome                   :=edtNome.Text;
  oFornecedor.endereco               :=edtEndereco.Text;
  oFornecedor.telefone               :=edtTelefone.Text;
  oFornecedor.email                  :=edtEmail.Text;
  oFornecedor.cnpj                   :=edtCnpj.Text;
  oFornecedor.observacao             :=edtObservacao.Text;

  if (EstadoDoCadastro=ecInserir) then
    result:=oFornecedor.Inserir
  else if (EstadoDoCadastro=ecAlterar) then
    result:=oFornecedor.Atualizar;
    limparComponenteitem;
end;

procedure TfrmFornecedor.LimparComponenteItem;
begin
  edtNome.Text := '';
  edtEndereco.Text := '';
  edtTelefone.Text := '';
  edtEmail.Text := '';
  edtCnpj.Text := '';
  edtObservacao.Text := '';
end;

procedure TfrmFornecedor.btnAlterarClick(Sender: TObject);
begin
  if oFornecedor.Selecionar(fdqryListagem.FieldByName('fornId').AsInteger) then begin
     edtFornId.Text:=IntToStr(oFornecedor.codigo);
     edtNome.Text:=oFornecedor.nome;
     edtEndereco.Text:=oFornecedor.endereco;
     edtTelefone.Text:=oFornecedor.telefone;
     edtEmail.Text:=oFornecedor.email;
     edtCnpj.Text:=oFornecedor.cnpj;
     edtObservacao.Text:=oFornecedor.observacao;
  end
  else begin
    btnCancelar.Click;
    Abort;
  end;

  inherited;

end;

procedure TfrmFornecedor.btnGravarClick(Sender: TObject);
begin
  if not cValidar.ValidarCNPJ(edtCnpj.Text) then
  begin
    ShowMessage('CNPJ Inválido');
    Exit;
  end;
inherited;
end;

procedure TfrmFornecedor.edtCnpjChange(Sender: TObject);
var
  Texto, N: string;
  PosCursor: Integer;
begin
  PosCursor := edtCnpj.SelStart;

  edtCnpj.OnChange := nil;
  try
    N := SomenteNumeros(edtCnpj.Text);
    Texto := N;

    if Length(N) <= 14 then
    begin
      if Length(N) > 2 then Texto := Copy(N,1,2) + '.' + Copy(N,3,Length(N)-2);
      if Length(N) > 5 then Texto := Copy(N,1,2) + '.' + Copy(N,3,3) + '.' + Copy(N,6,Length(N)-5);
      if Length(N) > 8 then Texto := Copy(N,1,2) + '.' + Copy(N,3,3) + '.' + Copy(N,6,3) + '/' + Copy(N,9,Length(N)-8);
      if Length(N) > 12 then Texto := Copy(N,1,2) + '.' + Copy(N,3,3) + '.' + Copy(N,6,3) + '/' + Copy(N,9,4) + '-' + Copy(N,13,Length(N)-12);
    end;
    edtCnpj.Text := Texto;
    edtCnpj.SelStart := Length(Texto);
  finally
    edtCnpj.OnChange := edtCnpjChange;
  end;
end;

procedure TfrmFornecedor.edtTelefoneChange(Sender: TObject);
var Texto: string;
begin
  inherited;
begin
  Texto := edtTelefone.Text;


  Texto := SomenteNumeros(edtTelefone.Text);

  if Texto = '' then Exit;


  if Texto[1] = '0' then
  begin
    if Length(Texto) <= 4 then
      edtTelefone.Text := Copy(Texto, 1, Length(Texto))
    else if Length(Texto) <= 7 then
      edtTelefone.Text := Copy(Texto,1,4) + ' ' + Copy(Texto,5,3)
    else
      edtTelefone.Text := Copy(Texto,1,4) + ' ' + Copy(Texto,5,3) + ' ' + Copy(Texto,8,4);

    edtTelefone.SelStart := Length(edtTelefone.Text);
  end
  else if Length(Texto) <= 10 then
  begin
    if Length(Texto) <= 2 then
       edtTelefone.Text := '(' + Copy(Texto,1,Length(Texto))
    else if Length(Texto) <= 6 then
      edtTelefone.Text := '(' + Copy(Texto, 1,2) + ')' + Copy(Texto,3,Length(Texto)-2)
    else
      edtTelefone.Text := '(' + Copy(Texto,1,2) + ')' + Copy(Texto,3,4) + '-' + Copy(Texto,7,4);
  end
  else
  begin
     edtTelefone.MaxLength:= 14;
     edtTelefone.Text := '(' + Copy(Texto,1,2) + ')' + Copy(Texto,3,5) + '-' + Copy(Texto,8,Length(Texto)-7);
  end;

    edtTelefone.SelStart := Length(edtTelefone.Text);
end;
end;
end.

