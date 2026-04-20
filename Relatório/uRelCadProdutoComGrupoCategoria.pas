unit uRelCadProdutoComGrupoCategoria;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, RLReport, FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, RLFilters,
  RLPDFFilter, Data.DB, FireDAC.Comp.DataSet, FireDAC.Comp.Client, uDTMconexao;

type
  TfrmRelCadProdutoComGrupoCategoria = class(TForm)
     relatorio: TRLReport;
    QryProdutos: TFDQuery;
    dtsProdutos: TDataSource;
    RLPDFFilter1: TRLPDFFilter;
    Cabecalho: TRLBand;
    RLLabel1: TRLLabel;
    RLDraw1: TRLDraw;
    Rodape: TRLBand;
    RLDraw2: TRLDraw;
    RLSystemInfo1: TRLSystemInfo;
    RLSystemInfo2: TRLSystemInfo;
    RLSystemInfo3: TRLSystemInfo;
    RLLabel2: TRLLabel;
    RLLabel3: TRLLabel;
    f1QryProdutosprodutoId: TFDAutoIncField;
    f2QryProdutosNome: TStringField;
    f2QryProdutosDescricao: TStringField;
    bcdfldQryProdutosValor: TBCDField;
    bcdfldQryProdutosQuantidade: TBCDField;
    QryProdutoscategoriaId: TIntegerField;
    f2QryProdutosDescricaoCategoria: TStringField;
    BandaDoGrupo: TRLGroup;
    RLBand3: TRLBand;
    RLDBText5: TRLDBText;
    RLLabel8: TRLLabel;
    RLDBText6: TRLDBText;
    RLLabel9: TRLLabel;
    RLBand2: TRLBand;
    RLPanel1: TRLPanel;
    RLLabel4: TRLLabel;
    RLLabel5: TRLLabel;
    RLLabel6: TRLLabel;
    RLLabel7: TRLLabel;
    RLBand1: TRLBand;
    RLDBText1: TRLDBText;
    RLDBText2: TRLDBText;
    RLDBText3: TRLDBText;
    RLDBText4: TRLDBText;
    RLBand4: TRLBand;
    RLDBResult1: TRLDBResult;
    RLDraw3: TRLDraw;
    RLLabel10: TRLLabel;
    RLLabel11: TRLLabel;
    RLDBResult2: TRLDBResult;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmRelCadProdutoComGrupoCategoria: TfrmRelCadProdutoComGrupoCategoria;

implementation

{$R *.dfm}

end.
