inherited frmConFornecedor: TfrmConFornecedor
  Caption = 'Consulta de Fornecedores'
  ClientHeight = 547
  ClientWidth = 1012
  ExplicitWidth = 1018
  ExplicitHeight = 576
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnl1: TPanel
    Width = 1012
    ExplicitWidth = 1012
    inherited mskPesquisar: TMaskEdit
      Width = 1010
      ExplicitWidth = 1010
    end
  end
  inherited pnl2: TPanel
    Top = 506
    Width = 1012
    ExplicitTop = 506
    ExplicitWidth = 1012
    inherited btnFechar: TBitBtn
      Left = 933
      ExplicitLeft = 933
    end
  end
  inherited pnl3: TPanel
    Width = 1012
    Height = 457
    ExplicitWidth = 1012
    ExplicitHeight = 457
    inherited grdPesquisa: TDBGrid
      Width = 1010
      Height = 455
      Columns = <
        item
          Expanded = False
          FieldName = 'fornId'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'nome'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'cnpj'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'endereco'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'telefone'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'email'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'observacao'
          Visible = True
        end>
    end
  end
  inherited QryListagem: TFDQuery
    Active = True
    SQL.Strings = (
      'select * from fornecedor')
    object f1QryListagemfornId: TFDAutoIncField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'fornId'
      Origin = 'fornId'
      ProviderFlags = [pfInWhere, pfInKey]
      ReadOnly = True
    end
    object f2QryListagemnome: TStringField
      DisplayLabel = 'Nome'
      FieldName = 'nome'
      Origin = 'nome'
      Size = 50
    end
    object f2QryListagemcnpj: TStringField
      DisplayLabel = 'CNPJ'
      FieldName = 'cnpj'
      Origin = 'cnpj'
      Size = 18
    end
    object f2QryListagemendereco: TStringField
      DisplayLabel = 'Endere'#231'o'
      FieldName = 'endereco'
      Origin = 'endereco'
      Size = 50
    end
    object f2QryListagemtelefone: TStringField
      DisplayLabel = 'Telefone'
      FieldName = 'telefone'
      Origin = 'telefone'
      Size = 15
    end
    object f2QryListagememail: TStringField
      DisplayLabel = 'Email'
      FieldName = 'email'
      Origin = 'email'
      Size = 50
    end
    object f2QryListagemobservacao: TStringField
      DisplayLabel = 'Observa'#231#227'o'
      FieldName = 'observacao'
      Origin = 'observacao'
      Size = 100
    end
  end
end
