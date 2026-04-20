object frmRelVendaPorData: TfrmRelVendaPorData
  Left = 0
  Top = 0
  Caption = 'Relat'#243'rio de Vendas por Data'
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
        Width = 291
        Height = 24
        Caption = 'Listagem de Venda por Data'
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
      Top = 320
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
      Height = 215
      DataFields = 'dataVenda'
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
          Left = 65
          Top = 2
          Width = 66
          Height = 16
          Alignment = taRightJustify
          DataField = 'dataVenda'
          DataSource = dtsVenda
          Text = ''
        end
        object RLLabel8: TRLLabel
          Left = 4
          Top = 2
          Width = 43
          Height = 16
          Caption = 'DATA:'
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
      object RLBand2: TRLBand
        Left = 0
        Top = 32
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
          object RLLabel5: TRLLabel
            Left = 98
            Top = 7
            Width = 110
            Height = 16
            Caption = 'Nome do Cliente'
            Color = clWhite
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -13
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentColor = False
            ParentFont = False
          end
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
          object RLLabel7: TRLLabel
            Left = 610
            Top = 7
            Width = 103
            Height = 16
            Alignment = taRightJustify
            Caption = 'Valor da Venda'
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
        Top = 64
        Width = 718
        Height = 28
        object RLDBText1: TRLDBText
          Left = 24
          Top = 0
          Width = 52
          Height = 16
          DataField = 'clienteId'
          DataSource = dtsVenda
          Text = ''
        end
        object RLDBText2: TRLDBText
          Left = 98
          Top = 0
          Width = 38
          Height = 16
          DataField = 'Nome'
          DataSource = dtsVenda
          Text = ''
        end
        object RLDBText4: TRLDBText
          Left = 649
          Top = 0
          Width = 66
          Height = 16
          Alignment = taRightJustify
          DataField = 'totalVenda'
          DataSource = dtsVenda
          Text = ''
        end
      end
      object RLBand4: TRLBand
        Left = 0
        Top = 92
        Width = 718
        Height = 37
        BandType = btSummary
        object RLDBResult1: TRLDBResult
          Left = 613
          Top = 17
          Width = 105
          Height = 16
          Alignment = taRightJustify
          DataField = 'totalVenda'
          DataSource = dtsVenda
          Info = riSum
          Text = ''
        end
        object RLDraw3: TRLDraw
          Left = 448
          Top = 0
          Width = 270
          Height = 17
          DrawKind = dkLine
        end
        object RLLabel10: TRLLabel
          Left = 513
          Top = 17
          Width = 98
          Height = 16
          Caption = 'Total por Data:'
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
        Top = 129
        Width = 718
        Height = 72
        BandType = btSummary
        object RLDBResult2: TRLDBResult
          Left = 613
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
          Left = 448
          Top = 8
          Width = 270
          Height = 17
          DrawKind = dkLine
        end
        object RLLabel6: TRLLabel
          Left = 532
          Top = 25
          Width = 79
          Height = 16
          Caption = 'Total Geral:'
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
  end
  object QryVendas: TFDQuery
    Active = True
    Connection = dtmConexao.ConexaoDB
    SQL.Strings = (
      'SELECT vendas.vendaId,'
      '       vendas.clienteId,'
      '       clientes.nome,'
      '       vendas.dataVenda,'
      '      cast(vendas.totalVenda as numeric(18,3)) as totalVenda'
      'FROM vendas'
      'inner join clientes on clientes.clienteId = vendas.clienteId '
      'where vendas.dataVenda between :DataInicio and :DataFim'
      'order by vendas.dataVenda, vendas.clienteId'
      '')
    Left = 544
    Top = 408
    ParamData = <
      item
        Name = 'DataInicio'
        DataType = ftDate
        ParamType = ptInput
        Value = 46082d
      end
      item
        Name = 'DataFim'
        DataType = ftDate
        ParamType = ptInput
        Value = 46112d
      end>
    object f1QryVendavendaId: TFDAutoIncField
      FieldName = 'vendaId'
      Origin = 'vendaId'
      ProviderFlags = [pfInWhere, pfInKey]
      ReadOnly = True
    end
    object QryVendasclienteId: TIntegerField
      FieldName = 'clienteId'
      Origin = 'clienteId'
      Required = True
    end
    object f2QryVendanome: TStringField
      FieldName = 'nome'
      Origin = 'nome'
      Size = 60
    end
    object QryVendasdataVenda: TSQLTimeStampField
      FieldName = 'dataVenda'
      Origin = 'dataVenda'
    end
    object bcdfldQryVendatotalVenda: TBCDField
      FieldName = 'totalVenda'
      Origin = 'totalVenda'
      ReadOnly = True
      DisplayFormat = '##,##0.00'
      Precision = 18
      Size = 3
    end
  end
  object dtsVenda: TDataSource
    DataSet = QryVendas
    Left = 640
    Top = 408
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
    Top = 392
  end
  object RLXLSFilter1: TRLXLSFilter
    DisplayName = 'Planilha Excel 97-2013'
    Left = 376
    Top = 392
  end
end
