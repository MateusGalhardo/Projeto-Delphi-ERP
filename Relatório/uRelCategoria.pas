unit uRelCategoria;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, uDTMconexao, FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, RLReport,
  RLFilters, RLPDFFilter, Data.DB, FireDAC.Comp.DataSet, FireDAC.Comp.Client, RLXLSFilter, RLXLSXFilter;

type
  TfrmRelCategoria = class(TForm)
    dtsCategorias: TDataSource;
    RLPDFFilter1: TRLPDFFilter;
    Relatorio: TRLReport;
    QryCategorias: TFDQuery;
    Cabecalho: TRLBand;
    RLLabel1: TRLLabel;
    RLDraw1: TRLDraw;
    RLBand1: TRLBand;
    RLDBText1: TRLDBText;
    RLDBText2: TRLDBText;
    Rodape: TRLBand;
    RLDraw2: TRLDraw;
    RLPanel1: TRLPanel;
    RLSystemInfo1: TRLSystemInfo;
    RLSystemInfo2: TRLSystemInfo;
    RLSystemInfo3: TRLSystemInfo;
    RLLabel2: TRLLabel;
    RLLabel3: TRLLabel;
    RLBand2: TRLBand;
    RLLabel5: TRLLabel;
    RLLabel4: TRLLabel;
    RLXLSXFilter1: TRLXLSXFilter;
    RLXLSFilter1: TRLXLSFilter;
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmRelCategoria: TfrmRelCategoria;

implementation


{$R *.dfm}

procedure TfrmRelCategoria.FormCreate(Sender: TObject);
begin
  QryCategorias.Open;
end;

procedure TfrmRelCategoria.FormDestroy(Sender: TObject);
begin
  QryCategorias.Close;
end;

end.
