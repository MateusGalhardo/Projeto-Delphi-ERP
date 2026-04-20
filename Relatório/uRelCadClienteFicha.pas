unit uRelCadClienteFicha;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, uDTMconexao, FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, RLReport,
  RLFilters, RLPDFFilter, Data.DB, FireDAC.Comp.DataSet, FireDAC.Comp.Client, RLXLSFilter, RLXLSXFilter, Data.SqlTimSt,
  Vcl.Imaging.pngimage;

type
  TfrmRelCadClienteFicha = class(TForm)
    dtsCliente: TDataSource;
    RLPDFFilter1: TRLPDFFilter;
    Relatorio: TRLReport;
    QryCliente: TFDQuery;
    Cabecalho: TRLBand;
    RLLabel1: TRLLabel;
    RLDraw1: TRLDraw;
    RLBand1: TRLBand;
    RLDBText1: TRLDBText;
    RLDBText2: TRLDBText;
    Rodape: TRLBand;
    RLDraw2: TRLDraw;
    RLSystemInfo1: TRLSystemInfo;
    RLSystemInfo2: TRLSystemInfo;
    RLSystemInfo3: TRLSystemInfo;
    RLLabel2: TRLLabel;
    RLLabel3: TRLLabel;
    RLXLSXFilter1: TRLXLSXFilter;
    RLXLSFilter1: TRLXLSFilter;
    f1QryClienteclienteId: TFDAutoIncField;
    f2QryClienteNome: TStringField;
    f2QryClienteemail: TStringField;
    f2QryClientetelefone: TStringField;
    RLDBText3: TRLDBText;
    RLDBText4: TRLDBText;
    f2QryClientecep: TStringField;
    f2QryClienteendereco: TStringField;
    f2QryClientebairro: TStringField;
    f2QryClientecidade: TStringField;
    f2QryClienteestado: TStringField;
    QryClientedataNascimento: TSQLTimeStampField;
    RLLabel4: TRLLabel;
    RLLabel5: TRLLabel;
    RLLabel6: TRLLabel;
    RLLabel7: TRLLabel;
    RLDBText5: TRLDBText;
    RLLabel8: TRLLabel;
    RLDBText6: TRLDBText;
    RLLabel10: TRLLabel;
    RLDBText7: TRLDBText;
    RLLabel11: TRLLabel;
    RLDBText8: TRLDBText;
    RLDBText9: TRLDBText;
    RLLabel12: TRLLabel;
    RLLabel13: TRLLabel;
    RLDBText10: TRLDBText;
    RLDraw3: TRLDraw;
    RLImage1: TRLImage;
    RLAngleLabel1: TRLAngleLabel;
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmRelCadClienteFicha: TfrmRelCadClienteFicha;

implementation


{$R *.dfm}

procedure TfrmRelCadClienteFicha.FormCreate(Sender: TObject);
begin
  QryCliente.Open;
end;

procedure TfrmRelCadClienteFicha.FormDestroy(Sender: TObject);
begin
  QryCliente.Close;
end;

end.
