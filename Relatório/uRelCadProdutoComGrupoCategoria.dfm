object frmRelCadProdutoComGrupoCategoria: TfrmRelCadProdutoComGrupoCategoria
  Left = 0
  Top = 0
  Caption = 'Relat'#243'rio de Produtos por Categoria'
  ClientHeight = 632
  ClientWidth = 786
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object relatorio: TRLReport
    Left = 0
    Top = 0
    Width = 794
    Height = 1123
    DataSource = dtsProdutos
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -13
    Font.Name = 'Arial'
    Font.Style = []
    object Cabecalho: TRLBand
      Left = 38
      Top = 38
      Width = 718
      Height = 67
      BandType = btHeader
      object RLLabel1: TRLLabel
        Left = 24
        Top = 16
        Width = 372
        Height = 24
        Caption = 'Listagem de Produtos por Categoria'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -21
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLDraw1: TRLDraw
        Left = 0
        Top = 56
        Width = 718
        Height = 11
        Align = faBottom
        DrawKind = dkLine
        Pen.Width = 2
      end
    end
    object Rodape: TRLBand
      Left = 38
      Top = 249
      Width = 718
      Height = 48
      BandType = btFooter
      object RLDraw2: TRLDraw
        Left = 0
        Top = 0
        Width = 718
        Height = 17
        Align = faTop
        DrawKind = dkLine
        Pen.Width = 2
      end
      object RLSystemInfo1: TRLSystemInfo
        Left = 3
        Top = 18
        Width = 60
        Height = 16
        Info = itFullDate
        Text = ''
      end
      object RLSystemInfo2: TRLSystemInfo
        Left = 654
        Top = 23
        Width = 25
        Height = 16
        Alignment = taRightJustify
        Info = itPageNumber
        Text = ''
      end
      object RLSystemInfo3: TRLSystemInfo
        Left = 691
        Top = 23
        Width = 16
        Height = 16
        Info = itLastPageNumber
        Text = ''
      end
      object RLLabel2: TRLLabel
        Left = 680
        Top = 23
        Width = 17
        Height = 16
        Caption = '/'
      end
      object RLLabel3: TRLLabel
        Left = 615
        Top = 23
        Width = 53
        Height = 16
        Caption = 'P'#225'gina:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
    end
    object BandaDoGrupo: TRLGroup
      Left = 38
      Top = 105
      Width = 718
      Height = 144
      DataFields = 'categoriaId'
      object RLBand3: TRLBand
        Left = 0
        Top = 0
        Width = 718
        Height = 26
        BandType = btHeader
        Color = clSilver
        ParentColor = False
        Transparent = False
        object RLDBText5: TRLDBText
          Left = 98
          Top = 6
          Width = 23
          Height = 16
          Alignment = taRightJustify
          AutoSize = False
          DataField = 'categoriaId'
          DataSource = dtsProdutos
          Text = ''
        end
        object RLLabel8: TRLLabel
          Left = 8
          Top = 6
          Width = 84
          Height = 16
          Caption = 'CATEGORIA:'
          Color = clWhite
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentColor = False
          ParentFont = False
        end
        object RLDBText6: TRLDBText
          Left = 138
          Top = 6
          Width = 117
          Height = 16
          DataField = 'DescricaoCategoria'
          DataSource = dtsProdutos
          Text = ''
        end
        object RLLabel9: TRLLabel
          Left = 122
          Top = 6
          Width = 17
          Height = 16
          Caption = '-'
          Color = clWhite
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentColor = False
          ParentFont = False
        end
      end
      object RLBand2: TRLBand
        Left = 0
        Top = 26
        Width = 718
        Height = 32
        BandType = btColumnHeader
        object RLPanel1: TRLPanel
          Left = 0
          Top = 0
          Width = 718
          Height = 32
          Align = faClient
          Color = clInfoBk
          ParentColor = False
          Transparent = False
          object RLLabel4: TRLLabel
            Left = 24
            Top = 7
            Width = 49
            Height = 16
            Caption = 'C'#243'digo'
            Color = clWhite
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -13
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentColor = False
            ParentFont = False
          end
          object RLLabel5: TRLLabel
            Left = 98
            Top = 7
            Width = 115
            Height = 16
            Caption = 'Nome do Produto'
            Color = clWhite
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -13
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentColor = False
            ParentFont = False
          end
          object RLLabel6: TRLLabel
            Left = 416
            Top = 7
            Width = 152
            Height = 16
            Caption = 'Quantidade de Estoque'
            Color = clWhite
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -13
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentColor = False
            ParentFont = False
          end
          object RLLabel7: TRLLabel
            Left = 675
            Top = 7
            Width = 38
            Height = 16
            Alignment = taRightJustify
            Caption = 'Valor'
            Color = clWhite
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -13
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentColor = False
            ParentFont = False
          end
        end
      end
      object RLBand1: TRLBand
        Left = 0
        Top = 58
        Width = 718
        Height = 23
        object RLDBText1: TRLDBText
          Left = 24
          Top = 0
          Width = 57
          Height = 16
          DataField = 'produtoId'
          DataSource = dtsProdutos
          Text = ''
        end
        object RLDBText2: TRLDBText
          Left = 98
          Top = 0
          Width = 38
          Height = 16
          DataField = 'Nome'
          DataSource = dtsProdutos
          Text = ''
        end
        object RLDBText3: TRLDBText
          Left = 498
          Top = 0
          Width = 70
          Height = 16
          Alignment = taRightJustify
          DataField = 'Quantidade'
          DataSource = dtsProdutos
          Text = ''
        end
        object RLDBText4: TRLDBText
          Left = 681
          Top = 0
          Width = 34
          Height = 16
          Alignment = taRightJustify
          DataField = 'Valor'
          DataSource = dtsProdutos
          Text = ''
        end
      end
      object RLBand4: TRLBand
        Left = 0
        Top = 81
        Width = 718
        Height = 64
        BandType = btSummary
        object RLDBResult1: TRLDBResult
          Left = 609
          Top = 14
          Width = 109
          Height = 16
          Alignment = taRightJustify
          DataField = 'Quantidade'
          DataSource = dtsProdutos
          Info = riSum
          Text = ''
        end
        object RLDraw3: TRLDraw
          Left = 304
          Top = -3
          Width = 414
          Height = 17
          DrawKind = dkLine
        end
        object RLLabel10: TRLLabel
          Left = 325
          Top = 14
          Width = 243
          Height = 16
          Caption = 'Quantidade de Estoque por Categoria'
          Color = clWhite
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentColor = False
          ParentFont = False
        end
        object RLLabel11: TRLLabel
          Left = 325
          Top = 36
          Width = 192
          Height = 16
          Caption = 'M'#233'dia de Valor por Categoria'
          Color = clWhite
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentColor = False
          ParentFont = False
        end
        object RLDBResult2: TRLDBResult
          Left = 626
          Top = 36
          Width = 92
          Height = 16
          Alignment = taRightJustify
          DataField = 'Valor'
          DataSource = dtsProdutos
          Info = riAverage
          Text = ''
        end
      end
    end
  end
  object QryProdutos: TFDQuery
    Active = True
    Connection = dtmConexao.ConexaoDB
    SQL.Strings = (
      'SELECT produtos.produtoId,'
      '             produtos.Nome,'
      '             produtos.Descricao,'
      '            cast(produtos.Valor as numeric(18,3)) as Valor,'
      
        '             cast(produtos.Quantidade as numeric(18,3)) as Quant' +
        'idade,'
      '             produtos.categoriaId,'
      '             categorias.descricao AS DescricaoCategoria'
      'FROM produtos'
      
        'LEFT JOIN categorias on categorias.CategoriaId = produtos.Catego' +
        'riaId'
      'ORDER BY produtos.categoriaId, produtos.produtoId')
    Left = 584
    Top = 504
    object f1QryProdutosprodutoId: TFDAutoIncField
      FieldName = 'produtoId'
      Origin = 'produtoId'
      ProviderFlags = [pfInWhere, pfInKey]
      ReadOnly = True
    end
    object f2QryProdutosNome: TStringField
      FieldName = 'Nome'
      Origin = 'Nome'
      Size = 60
    end
    object f2QryProdutosDescricao: TStringField
      FieldName = 'Descricao'
      Origin = 'Descricao'
      Size = 255
    end
    object bcdfldQryProdutosValor: TBCDField
      FieldName = 'Valor'
      Origin = 'Valor'
      ReadOnly = True
      DisplayFormat = '##,##0.000'
      Precision = 18
      Size = 3
    end
    object bcdfldQryProdutosQuantidade: TBCDField
      FieldName = 'Quantidade'
      Origin = 'Quantidade'
      ReadOnly = True
      DisplayFormat = '##,##0.000'
      Precision = 18
      Size = 3
    end
    object QryProdutoscategoriaId: TIntegerField
      FieldName = 'categoriaId'
      Origin = 'categoriaId'
    end
    object f2QryProdutosDescricaoCategoria: TStringField
      FieldName = 'DescricaoCategoria'
      Origin = 'DescricaoCategoria'
      Size = 30
    end
  end
  object dtsProdutos: TDataSource
    DataSet = QryProdutos
    Left = 688
    Top = 496
  end
  object RLPDFFilter1: TRLPDFFilter
    DocumentInfo.Creator = 
      'FortesReport Community Edition v4.0 \251 Copyright '#169' 1999-2016 F' +
      'ortes Inform'#225'tica'
    DisplayName = 'Documento PDF'
    Left = 432
    Top = 520
  end
end
