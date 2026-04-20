unit uRelProVenda;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, uDTMconexao, FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, RLReport,
  RLFilters, RLPDFFilter, Data.DB, FireDAC.Comp.DataSet, FireDAC.Comp.Client, RLXLSFilter, RLXLSXFilter, Data.SqlTimSt;

type
   TfrmRelProVenda = class(TForm)
     dtsVenda: TDataSource;
    RLPDFFilter1: TRLPDFFilter;
    Relatorio: TRLReport;
    QryVendas: TFDQuery;
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
    RLXLSXFilter1: TRLXLSXFilter;
    RLXLSFilter1: TRLXLSFilter;
    QryVendasItens: TFDQuery;
    dtsVendasItens: TDataSource;
    BandaDoGrupo: TRLGroup;
    RLBand3: TRLBand;
    RLDBText5: TRLDBText;
    RLLabel8: TRLLabel;
    RLBand1: TRLBand;
    RLDBText1: TRLDBText;
    RLDBText2: TRLDBText;
    RLDBText4: TRLDBText;
    RLLabel9: TRLLabel;
    RLLabel5: TRLLabel;
    RLLabel7: TRLLabel;
    RLBand5: TRLBand;
    RLDBResult2: TRLDBResult;
    RLDraw4: TRLDraw;
    RLLabel6: TRLLabel;
    RLSubDetail1: TRLSubDetail;
    RLBand2: TRLBand;
    RLBand4: TRLBand;
    RLDBText3: TRLDBText;
    RLDBText6: TRLDBText;
    RLLabel4: TRLLabel;
    RLDBText7: TRLDBText;
    RLDBText8: TRLDBText;
    RLDBText9: TRLDBText;
    RLLabel10: TRLLabel;
    RLLabel11: TRLLabel;
    RLLabel12: TRLLabel;
    f1QryVendasvendaId: TFDAutoIncField;
    intgrfldQryVendasclienteId: TIntegerField;
    f2QryVendasnome: TStringField;
    QryVendasdataVenda: TSQLTimeStampField;
    bcdfldQryVendastotalVenda: TBCDField;
    intgrfldQryVendasItensvendaId: TIntegerField;
    intgrfldQryVendasItensprodutoId: TIntegerField;
    f2QryVendasItensNome: TStringField;
    fmtbcdfldQryVendasItensquantidade: TFMTBCDField;
    fmtbcdfldQryVendasItensvalorUnitario: TFMTBCDField;
    fmtbcdfldQryVendasItenstotalProduto: TFMTBCDField;
    procedure FormDestroy(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
   end;


var
  frmRelProVenda: TfrmRelProVenda;

implementation


{$R *.dfm}

procedure TfrmRelProVenda.FormDestroy(Sender: TObject);
begin
  QryVendas.Close;
  QryVendasItens.Close;
end;

end.
