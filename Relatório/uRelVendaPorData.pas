unit uRelVendaPorData;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, uDTMconexao, FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, RLReport,
  RLFilters, RLPDFFilter, Data.DB, FireDAC.Comp.DataSet, FireDAC.Comp.Client, RLXLSFilter, RLXLSXFilter, Data.SqlTimSt;

type
   TfrmRelVendaPorData = class(TForm)
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
    BandaDoGrupo: TRLGroup;
    RLBand3: TRLBand;
    RLBand2: TRLBand;
    RLBand1: TRLBand;
    RLDBText1: TRLDBText;
    RLDBText2: TRLDBText;
    RLDBText4: TRLDBText;
    RLDBText5: TRLDBText;
    RLLabel8: TRLLabel;
    RLLabel4: TRLLabel;
    RLLabel5: TRLLabel;
    RLPanel1:TRLPanel;
    RLLabel7: TRLLabel;
    RLBand4: TRLBand;
    RLDBResult1: TRLDBResult;
    RLDraw3: TRLDraw;
    RLLabel10: TRLLabel;
    f1QryVendavendaId: TFDAutoIncField;
    QryVendasclienteId: TIntegerField;
    f2QryVendanome: TStringField;
    QryVendasdataVenda: TSQLTimeStampField;
    bcdfldQryVendatotalVenda: TBCDField;
    RLBand5: TRLBand;
    RLDBResult2: TRLDBResult;
    RLDraw4: TRLDraw;
    RLLabel6: TRLLabel;
    procedure FormDestroy(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
   end;


var
  frmRelVendaPorData: TfrmRelVendaPorData;

implementation


{$R *.dfm}

procedure TfrmRelVendaPorData.FormDestroy(Sender: TObject);
begin
  QryVendas.Close;
end;

end.
