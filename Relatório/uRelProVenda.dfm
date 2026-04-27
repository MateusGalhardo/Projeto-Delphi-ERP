object frmRelProVenda: TfrmRelProVenda
  Left = 0
  Top = 0
  Caption = 'Relat'#243'rio de Vendas'
  ClientHeight = 621
  ClientWidth = 778
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnDestroy = FormDestroy
  PixelsPerInch = 96
  TextHeight = 13
  object Relatorio: TRLReport
    Left = 0
    Top = 0
    Width = 794
    Height = 1123
    DataSource = dtsVenda
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
        Width = 69
        Height = 24
        Caption = 'Venda'
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
      Top = 359
      Width = 718
      Height = 49
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
      Height = 254
      DataFields = 'vendaId'
      object RLBand3: TRLBand
        Left = 0
        Top = 0
        Width = 718
        Height = 32
        BandType = btHeader
        Color = clSilver
        ParentColor = False
        Transparent = False
        object RLDBText5: TRLDBText
          Left = 66
          Top = 2
          Width = 47
          Height = 16
          Alignment = taRightJustify
          DataField = 'vendaId'
          DataSource = dtsVenda
          Text = ''
        end
        object RLLabel8: TRLLabel
          Left = 26
          Top = 2
          Width = 52
          Height = 16
          Caption = 'VENDA:'
          Color = clSilver
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentColor = False
          ParentFont = False
          Transparent = False
        end
      end
      object RLBand1: TRLBand
        Left = 0
        Top = 32
        Width = 718
        Height = 41
        object RLDBText1: TRLDBText
          Left = 66
          Top = 6
          Width = 47
          Height = 16
          Alignment = taRightJustify
          DataField = 'vendaId'
          DataSource = dtsVenda
          Text = ''
        end
        object RLDBText2: TRLDBText
          Left = 130
          Top = 6
          Width = 36
          Height = 16
          DataField = 'nome'
          DataSource = dtsVenda
          Text = ''
        end
        object RLDBText4: TRLDBText
          Left = 644
          Top = 6
          Width = 66
          Height = 16
          Alignment = taRightJustify
          DataField = 'dataVenda'
          DataSource = dtsVenda
          Text = ''
        end
        object RLLabel9: TRLLabel
          Left = 25
          Top = 6
          Width = 53
          Height = 16
          Caption = 'Cliente:'
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
          Left = 116
          Top = 6
          Width = 8
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
        object RLLabel7: TRLLabel
          Left = 597
          Top = 6
          Width = 37
          Height = 16
          Alignment = taRightJustify
          Caption = 'Data:'
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
      object RLBand5: TRLBand
        Left = 0
        Top = 139
        Width = 718
        Height = 62
        BandType = btSummary
        object RLDBResult2: TRLDBResult
          Left = 601
          Top = 25
          Width = 105
          Height = 16
          Alignment = taRightJustify
          DataField = 'totalVenda'
          DataSource = dtsVenda
          Info = riSum
          Text = ''
        end
        object RLDraw4: TRLDraw
          Left = 400
          Top = 8
          Width = 318
          Height = 17
          DrawKind = dkLine
        end
        object RLLabel6: TRLLabel
          Left = 498
          Top = 25
          Width = 105
          Height = 16
          Caption = 'Total da Venda:'
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
      object RLSubDetail1: TRLSubDetail
        Left = 0
        Top = 73
        Width = 718
        Height = 66
        DataSource = dtsVendasItens
        object RLBand2: TRLBand
          Left = 0
          Top = 0
          Width = 718
          Height = 17
          BandType = btHeader
          Color = clInfoBk
          ParentColor = False
          Transparent = False
          object RLLabel4: TRLLabel
            Left = 24
            Top = 1
            Width = 60
            Height = 16
            Caption = 'Produtos'
            Color = clWhite
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -13
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentColor = False
            ParentFont = False
          end
          object RLLabel10: TRLLabel
            Left = 408
            Top = -2
            Width = 78
            Height = 16
            Alignment = taRightJustify
            Caption = 'Quantidade'
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
            Left = 506
            Top = -2
            Width = 92
            Height = 16
            Alignment = taRightJustify
            Caption = 'Valor Unit'#225'rio'
            Color = clWhite
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -13
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentColor = False
            ParentFont = False
          end
          object RLLabel12: TRLLabel
            Left = 641
            Top = -2
            Width = 74
            Height = 16
            Alignment = taRightJustify
            Caption = 'Valor Total'
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
        object RLBand4: TRLBand
          Left = 0
          Top = 17
          Width = 718
          Height = 87
          object RLDBText3: TRLDBText
            Left = 22
            Top = 3
            Width = 52
            Height = 16
            Alignment = taRightJustify
            DataField = 'clienteId'
            DataSource = dtsVenda
            Text = ''
          end
          object RLDBText6: TRLDBText
            Left = 96
            Top = 3
            Width = 38
            Height = 16
            DataField = 'nome'
            DataSource = dtsVendasItens
            Text = ''
          end
          object RLDBText7: TRLDBText
            Left = 419
            Top = 3
            Width = 67
            Height = 16
            DataField = 'quantidade'
            DataSource = dtsVendasItens
            Text = ''
          end
          object RLDBText8: TRLDBText
            Left = 524
            Top = 3
            Width = 74
            Height = 16
            DataField = 'valorUnitario'
            DataSource = dtsVendasItens
            Text = ''
          end
          object RLDBText9: TRLDBText
            Left = 641
            Top = 3
            Width = 74
            Height = 16
            DataField = 'totalProduto'
            DataSource = dtsVendasItens
            Text = ''
          end
        end
      end
    end
  end
  object QryVendas: TFDQuery
    Active = True
    Connection = dtmConexao.ConexaoDB
    SQL.Strings = (
      'SELECT vendas.vendaId,'
      '       vendas.clienteId,'
      '       clientes.nome,'
      '       vendas.dataVenda,'
      '       cast(vendas.totalVenda as numeric(18,3)) as totalVenda'
      'FROM vendas'
      '   INNER JOIN clientes on clientes.clienteId = vendas.clienteId'
      'WHERE vendas.vendaId =:vendaId')
    Left = 544
    Top = 424
    ParamData = <
      item
        Name = 'vendaId'
        DataType = ftInteger
        ParamType = ptInput
        Value = 1
      end>
    object f1QryVendasvendaId: TFDAutoIncField
      FieldName = 'vendaId'
      ReadOnly = True
    end
    object intgrfldQryVendasclienteId: TIntegerField
      FieldName = 'clienteId'
      Required = True
    end
    object f2QryVendasnome: TStringField
      FieldName = 'nome'
      Size = 60
    end
    object QryVendasdataVenda: TSQLTimeStampField
      FieldName = 'dataVenda'
    end
    object bcdfldQryVendastotalVenda: TBCDField
      FieldName = 'totalVenda'
      ReadOnly = True
      DisplayFormat = 'R$ #,##0.00'
      Precision = 18
      Size = 3
    end
  end
  object dtsVenda: TDataSource
    DataSet = QryVendas
    Left = 640
    Top = 424
  end
  object RLPDFFilter1: TRLPDFFilter
    DocumentInfo.Creator = 
      'FortesReport Community Edition v4.0 \251 Copyright '#169' 1999-2016 F' +
      'ortes Inform'#225'tica'
    DisplayName = 'Documento PDF'
    Left = 592
    Top = 448
  end
  object RLXLSXFilter1: TRLXLSXFilter
    DisplayName = 'Planilha Excel'
    Left = 432
    Top = 408
  end
  object RLXLSFilter1: TRLXLSFilter
    DisplayName = 'Planilha Excel 97-2013'
    Left = 376
    Top = 408
  end
  object QryVendasItens: TFDQuery
    Active = True
    Connection = dtmConexao.ConexaoDB
    SQL.Strings = (
      'SELECT vendasItens.vendaId,'
      '       vendasItens.produtoId,'
      '       produtos.Nome,'
      '       vendasItens.quantidade,'
      '       vendasItens.valorUnitario,'
      '       vendasItens.totalProduto'
      'FROM vendasItens'
      
        '   INNER JOIN produtos on produtos.produtoId = vendasItens.produ' +
        'toId'
      'WHERE vendasItens.vendaId =:vendaId'
      'ORDER BY vendasItens.produtoId')
    Left = 544
    Top = 504
    ParamData = <
      item
        Name = 'vendaId'
        DataType = ftInteger
        ParamType = ptInput
        Value = 1
      end>
    object intgrfldQryVendasItensvendaId: TIntegerField
      FieldName = 'vendaId'
      Required = True
    end
    object intgrfldQryVendasItensprodutoId: TIntegerField
      FieldName = 'produtoId'
      Required = True
    end
    object f2QryVendasItensNome: TStringField
      FieldName = 'Nome'
      Size = 60
    end
    object fmtbcdfldQryVendasItensquantidade: TFMTBCDField
      FieldName = 'quantidade'
      DisplayFormat = '#0.00'
      Precision = 18
      Size = 5
    end
    object fmtbcdfldQryVendasItensvalorUnitario: TFMTBCDField
      FieldName = 'valorUnitario'
      DisplayFormat = 'R$ #,##0.00'
      Precision = 18
      Size = 5
    end
    object fmtbcdfldQryVendasItenstotalProduto: TFMTBCDField
      FieldName = 'totalProduto'
      DisplayFormat = 'R$ #,##0.00'
      Precision = 18
      Size = 5
    end
  end
  object dtsVendasItens: TDataSource
    DataSet = QryVendasItens
    Left = 640
    Top = 504
  end
end
