unit uControleLog;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, uTelaHerancaConsulta, Data.DB, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async,
  FireDAC.DApt, FireDAC.Comp.DataSet, FireDAC.Comp.Client, Vcl.Grids, Vcl.DBGrids, Vcl.StdCtrls, Vcl.Buttons, Vcl.Mask,
  Vcl.ExtCtrls;

type
  TfrmControleLog = class(TfrmTelaHerancaConsulta)
    f1QryListagemID: TFDAutoIncField;
    QryListagemDATA_HORA: TSQLTimeStampField;
    f2QryListagemUSUARIO: TStringField;
    f2QryListagemACAO: TStringField;
    f2QryListagemTELA: TStringField;
    f2QryListagemDESCRICAO: TStringField;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmControleLog: TfrmControleLog;

implementation

{$R *.dfm}

end.
