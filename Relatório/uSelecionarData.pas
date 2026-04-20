unit uSelecionarData;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Buttons, Vcl.Mask, System.DateUtils, RxToolEdit;

type
  TfrmSelecionarData = class(TForm)
    lbl3: TLabel;
    edtDataInicio: TDateEdit;
    edtDataFinal: TDateEdit;
    lbl4: TLabel;
    btn1: TBitBtn;
    procedure btn1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmSelecionarData: TfrmSelecionarData;

implementation

uses
  uCadCliente;

{$R *.dfm}

procedure TfrmSelecionarData.btn1Click(Sender: TObject);
begin
  if (EdtDataFinal.Date) < (EdtDataInicio.Date) then begin
    MessageDlg('Data Final não pode ser maior que a data de início',mtInformation, [mbok],0);
    EdtDataFinal.SetFocus;
    abort;
  end;

  if (EdtDataFinal.Date=0) OR (EdtDataInicio.Date=0) then begin
    MessageDlg('Data Inicial ou Final são campos obrigatórios',mtInformation, [mbok],0);
    edtDataInicio.SetFocus;
    Abort;
  end;

  Close;
end;

procedure TfrmSelecionarData.FormShow(Sender: TObject);
begin
  EdtDataInicio.Date := StartOfTheMonth(Date);
  EdtDataFinal.Date  := EndOfTheMonth(Date);
end;

end.
