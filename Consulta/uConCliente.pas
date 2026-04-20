unit uConCliente;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, uTelaHerancaConsulta, Data.DB, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async,
  FireDAC.DApt, FireDAC.Comp.DataSet, FireDAC.Comp.Client, Vcl.Grids, Vcl.DBGrids, Vcl.StdCtrls, Vcl.Buttons, Vcl.Mask,
  Vcl.ExtCtrls, System.ImageList, Vcl.ImgList;

type
  TfrmConCliente = class(TfrmTelaHerancaConsulta)
    f1QryListagemclienteId: TFDAutoIncField;
    f2QryListagemnome: TStringField;
    imagemStatus: TImageList;
    intgrfldQryListagemIDSituacao: TIntegerField;
    f2QryListagemobservacao: TStringField;
    f2QryListagemdocumento: TStringField;
    procedure FormCreate(Sender: TObject);
    procedure grdPesquisaDrawColumnCell(Sender: TObject; const Rect: TRect; DataCol: Integer; Column: TColumn;
      State: TGridDrawState);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmConCliente: TfrmConCliente;

implementation

{$R *.dfm}

procedure TfrmConCliente.FormCreate(Sender: TObject);
begin

  aCampoId :='clienteId';
  IndiceAtual :='nome';

  inherited;
end;

procedure TfrmConCliente.grdPesquisaDrawColumnCell(Sender: TObject; const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
var
  imgIndex: Integer;
begin
  if Column.FieldName = 'IDSituacao' then
  begin
    if gdSelected in State then
      grdPesquisa.Canvas.Brush.Color := $00DFF0DF
    else if not Odd(QryListagem.RecNo) then
      grdPesquisa.Canvas.Brush.Color := clWebLightgrey
    else
      grdPesquisa.Canvas.Brush.Color := clWindow;

    grdPesquisa.Canvas.FillRect(Rect);

    case QryListagem.FieldByName('IDSituacao').AsInteger of
      1: imgIndex := 0;
      2: imgIndex := 2;
      3: imgIndex := 1;
      4: imgIndex := 3;
      5: imgIndex := 4;
    else
      Exit;
    end;

    // desenha imagem centralizada
    imagemStatus.Draw(grdPesquisa.Canvas,
      Rect.Left + (Rect.Width div 2) - 8,
      Rect.Top + (Rect.Height div 2) - 8,
      imgIndex);

    Exit;
  end;

  inherited;
end;

end.
