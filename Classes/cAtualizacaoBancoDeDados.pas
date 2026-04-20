unit cAtualizacaoBancoDeDados;

interface

uses Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client, Vcl.DBCtrls, Vcl.Grids, Vcl.DBGrids, Vcl.StdCtrls, Vcl.Buttons, Vcl.Mask,
  Vcl.ExtCtrls, Vcl.ComCtrls;

type TAtualizaBancoDados = class
     private

     public
       ConexaoDB:TFDConnection;
       constructor Create (aConexao:TFDConnection);
       procedure ExecutaDiretoBancoDeDados(aScript: String);
end;

type
  TAtualizaBancoDadosMSSQL = class
    private
      ConexaoDB:TFDConnection;
    public
      function AtualizarBancoDeDadosMSSQL: Boolean;
      constructor Create(aConexao: TFDConnection);
  end;

implementation

uses cAtualizacaoTabelaMSSQL, cAtualizacaoCampoMSSQL;

{ TAtualizaBancoDados }

constructor TAtualizaBancoDados.Create(aConexao: TFDConnection);
begin
  ConexaoDB:=aConexao;
end;

procedure TAtualizaBancoDados.ExecutaDiretoBancoDeDados(aScript: String);
Var Qry:TFDQuery;
Begin
  Try
    Qry:=TFDQuery.Create(nil);
    Qry.Connection:=ConexaoDB;
    Qry.SQL.Clear;
    Qry.SQL.Add(aScript);
    Try
      ConexaoDB.StartTransaction;
      Qry.ExecSQL;
      ConexaoDB.Commit;
    Except
      ConexaoDB.Rollback;
    End;
  Finally
    Qry.Close;
    if Assigned(Qry) then
       FreeAndNil(Qry);
  End;
end;

{ TAtualizaBancoDadosMSSQL }

function TAtualizaBancoDadosMSSQL.AtualizarBancoDeDadosMSSQL: Boolean;
var oAtualizarDB:TAtualizaBancoDados;
    oTabela: TAtualizacaoTableMSSQL;
    oCampo: TAtualizacaoCampoMSSQL;
begin
  try
    oAtualizarDB := TAtualizaBancoDados.Create(ConexaoDB);

    oTabela      := TAtualizacaoTableMSSQL.Create(ConexaoDB);

    oCampo       := TAtualizacaoCampoMSSQL.Create(ConexaoDB);
  finally
   if Assigned(oAtualizarDB) then
      FreeAndNil(oAtualizarDB);

   if Assigned(oTabela) then
      FreeAndNil(oTabela);
  end;
end;

constructor TAtualizaBancoDadosMSSQL.Create(aConexao: TFDConnection);
begin
  ConexaoDB:=aConexao;
end;

end.
