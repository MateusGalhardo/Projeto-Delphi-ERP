unit uDTMVenda;

interface

uses
  System.SysUtils, System.Classes, FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error,
  FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, Data.DB, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client, Datasnap.DBClient, Data.SqlTimSt;

type
  TdtmVenda = class(TDataModule)
    QryCliente: TFDQuery;
    QryProdutos: TFDQuery;
    dtsItensVenda: TDataSource;
    dtsCliente: TDataSource;
    dtsProdutos: TDataSource;
    cdsItensVenda: TClientDataSet;
    f2ItensVendaNomeProduto: TStringField;
    cdsItensVendaprodutoId: TIntegerField;
    cdsItensVendaquantidade: TFloatField;
    cdsItensVendavalorUnitario: TFloatField;
    cdsItensVendavalorTotalProduto: TFloatField;
    f1QryProdutosprodutoId: TFDAutoIncField;
    f2QryProdutosnome: TStringField;
    QryProdutosquantidade: TFMTBCDField;
    f1QryClienteclienteId: TFDAutoIncField;
    f2QryClientenome: TStringField;
    intgrfldQryClienteIDSituacao: TIntegerField;
    f2QryClienteobservacao: TStringField;
    QryUpdate: TFDQuery;
    fmtbcdfldQryProdutosvalor: TFMTBCDField;
    procedure DataModuleCreate(Sender: TObject);
    procedure DataModuleDestroy(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  dtmVenda: TdtmVenda;

implementation

uses
  uDTMconexao;

{%CLASSGROUP 'Vcl.Controls.TControl'}

{$R *.dfm}

procedure TdtmVenda.DataModuleCreate(Sender: TObject);
begin
  cdsItensVenda.CreateDataSet;

  QryCliente.Open;
  QryProdutos.Open;
end;

procedure TdtmVenda.DataModuleDestroy(Sender: TObject);
begin
  cdsItensVenda.Close;

  QryCliente.Close;
  QryProdutos.Close;
end;

end.
