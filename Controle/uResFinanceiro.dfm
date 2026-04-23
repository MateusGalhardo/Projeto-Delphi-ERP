object frmResFinanceiro: TfrmResFinanceiro
  Left = 0
  Top = 0
  Caption = 'Resumo Financeiro'
  ClientHeight = 493
  ClientWidth = 877
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnCreate = FormCreate
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object pnl1: TPanel
    Left = 0
    Top = 41
    Width = 877
    Height = 452
    Align = alClient
    TabOrder = 0
    object spl1: TSplitter
      Left = 400
      Top = 1
      Width = 7
      Height = 450
      Align = alRight
    end
    object pnl3: TPanel
      Left = 16
      Top = 31
      Width = 241
      Height = 114
      Color = clWhite
      ParentBackground = False
      TabOrder = 0
      object lbl2: TLabel
        Left = 16
        Top = 37
        Width = 145
        Height = 18
        Caption = 'Produtos em Estoque:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object lblprodutos: TLabel
        Left = 168
        Top = 37
        Width = 8
        Height = 18
        Caption = 'x'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object lbl4: TLabel
        Left = 13
        Top = 61
        Width = 75
        Height = 18
        Caption = 'Valor Total:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object lbltotalProduto: TLabel
        Left = 101
        Top = 61
        Width = 8
        Height = 18
        Caption = 'x'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object lbl6: TLabel
        Left = 13
        Top = 50
        Width = 210
        Height = 18
        Caption = '------------------------------------------'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object lbl13: TLabel
        Left = 60
        Top = 3
        Width = 108
        Height = 23
        Caption = 'PRODUTOS'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -19
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
    end
    object pnl4: TPanel
      Left = 16
      Top = 174
      Width = 241
      Height = 99
      Color = clWhite
      ParentBackground = False
      TabOrder = 1
      object lbl7: TLabel
        Left = 16
        Top = 34
        Width = 53
        Height = 18
        Caption = 'Vendas:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object lblVenda: TLabel
        Left = 76
        Top = 34
        Width = 8
        Height = 18
        Caption = 'x'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object lbl9: TLabel
        Left = 16
        Top = 58
        Width = 75
        Height = 18
        Caption = 'Valor Total:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object lblTotalVenda: TLabel
        Left = 97
        Top = 58
        Width = 8
        Height = 18
        Caption = 'x'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object lbl11: TLabel
        Left = 16
        Top = 47
        Width = 210
        Height = 18
        Caption = '------------------------------------------'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object lbl12: TLabel
        Left = 82
        Top = 5
        Width = 79
        Height = 23
        Caption = 'VENDAS'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -19
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
    end
    object pnl5: TPanel
      Left = 16
      Top = 305
      Width = 241
      Height = 96
      Color = clWhite
      ParentBackground = False
      TabOrder = 2
      object lbl10: TLabel
        Left = 32
        Top = 45
        Width = 55
        Height = 18
        Caption = 'Balan'#231'o:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object lbllucro: TLabel
        Left = 92
        Top = 45
        Width = 8
        Height = 18
        Caption = 'x'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object lbl16: TLabel
        Left = 68
        Top = 5
        Width = 93
        Height = 23
        Caption = 'BALAN'#199'O'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -19
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
    end
    object TPanel
      Left = 407
      Top = 1
      Width = 469
      Height = 450
      Align = alRight
      TabOrder = 3
      object dbcBalanco: TDBChart
        Left = 1
        Top = 1
        Width = 467
        Height = 448
        Title.Text.Strings = (
          'Balan'#231'o Mensal: Vendas vs Produtos')
        OnClickLegend = dbcBalancoClickLegend
        Legend.FontSeriesColor = True
        Legend.TextStyle = ltsXValue
        Legend.TextSymbolGap = 0
        Legend.Title.Margins.Left = 5
        View3D = False
        Zoom.Allow = False
        Align = alClient
        TabOrder = 0
        ExplicitLeft = 6
        ExplicitTop = 5
        DefaultCanvas = 'TGDIPlusCanvas'
        ColorPaletteIndex = 13
        object fstlnsrsSeries1: TFastLineSeries
          Selected.Hover.Visible = True
          Marks.Font.Charset = ANSI_CHARSET
          Marks.Font.Color = clWhite
          Marks.Font.Height = -9
          Marks.Font.Name = 'Calibri'
          Marks.Font.Style = [fsBold]
          Marks.Frame.Color = clWhite
          Marks.RoundSize = 30
          Marks.Visible = True
          Marks.BackColor = clNavy
          Marks.Callout.Length = 20
          Marks.Color = clNavy
          DataSource = QryGrafico
          Title = 'Vendas'
          XLabelsSource = 'AnoMes'
          LinePen.Color = 10708548
          TreatNulls = tnDontPaint
          XValues.Name = 'X'
          XValues.Order = loAscending
          XValues.ValueSource = 'TotalVendas'
          YValues.Name = 'Y'
          YValues.Order = loNone
          YValues.ValueSource = 'TotalVendas'
        end
        object fstlnsrsSeries2: TFastLineSeries
          Selected.Hover.Visible = True
          Marks.Font.Charset = ANSI_CHARSET
          Marks.Font.Color = clWhite
          Marks.Font.Height = -9
          Marks.Font.Name = 'Calibri'
          Marks.Font.Style = [fsBold]
          Marks.Frame.Color = clWhite
          Marks.RoundSize = 30
          Marks.Visible = True
          Marks.BackColor = clNavy
          Marks.Callout.Length = 20
          Marks.Color = clNavy
          DataSource = QryProduto
          Title = 'Produtos'
          XLabelsSource = 'DataMes'
          LinePen.Color = 3513587
          TreatNulls = tnDontPaint
          XValues.Name = 'X'
          XValues.Order = loAscending
          YValues.Name = 'Y'
          YValues.Order = loNone
          YValues.ValueSource = 'TotalMes'
        end
      end
    end
  end
  object pnl2: TPanel
    Left = 0
    Top = 0
    Width = 877
    Height = 41
    Align = alTop
    TabOrder = 1
    object lbl1: TLabel
      Left = 242
      Top = 2
      Width = 305
      Height = 33
      Caption = 'RESUMO FINANCEIRO'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -27
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
  end
  object QryTotais: TFDQuery
    Connection = dtmConexao.ConexaoDB
    SQL.Strings = (
      'select '
      
        '    (select sum(valor * quantidade) from produtos) as totalprodu' +
        'to,'
      '    (select sum(totalVenda) from vendas) as totalvendas;')
    Left = 32
    Top = 1
    object fmtbcdfldQryProdutostotalproduto: TFMTBCDField
      FieldName = 'totalproduto'
      Origin = 'totalproduto'
      ReadOnly = True
      Precision = 38
      Size = 10
    end
    object fmtbcdfldQryProdutostotalvendas: TFMTBCDField
      FieldName = 'totalvendas'
      Origin = 'totalvendas'
      ReadOnly = True
      Precision = 38
      Size = 5
    end
  end
  object QryVendas: TFDQuery
    Connection = dtmConexao.ConexaoDB
    SQL.Strings = (
      
        'select'#10#9'(select sum(quantidade) from produtos) as qntprodutos,'#10#9 +
        '(select count(vendaId) from vendas) as qntvendas')
    Left = 96
    Top = 1
    object fmtbcdfldQryVendasqntprodutos: TFMTBCDField
      FieldName = 'qntprodutos'
      Origin = 'qntprodutos'
      ReadOnly = True
      Precision = 38
      Size = 5
    end
    object intgrfldQryVendasqntvendas: TIntegerField
      FieldName = 'qntvendas'
      Origin = 'qntvendas'
      ReadOnly = True
    end
  end
  object dsGrafico: TDataSource
    DataSet = QryGrafico
    Left = 624
    Top = 1
  end
  object QryBalanco: TFDQuery
    Connection = dtmConexao.ConexaoDB
    SQL.Strings = (
      'select '
      '    (select sum(totalVenda) from vendas) - '
      '    (select sum(valor * quantidade) from produtos) as balanco;')
    Left = 160
    Top = 1
    object fmtbcdfldQryBalancobalanco: TFMTBCDField
      FieldName = 'balanco'
      Origin = 'balanco'
      ReadOnly = True
      Precision = 38
      Size = 5
    end
  end
  object QryGrafico: TFDQuery
    Active = True
    Connection = dtmConexao.ConexaoDB
    SQL.Strings = (
      
        'SELECT '#10'    FORMAT(dataVenda, '#39'MM-yyyy'#39') AS AnoMes,'#10'    SUM(tota' +
        'lVenda) AS TotalVendas'#10'FROM vendas'#10'GROUP BY FORMAT(dataVenda, '#39'M' +
        'M-yyyy'#39')'#10'ORDER BY MIN(dataVenda)')
    Left = 568
    Top = 1
    object QryGraficoAnoMes: TWideStringField
      FieldName = 'AnoMes'
      Origin = 'AnoMes'
      ReadOnly = True
      Size = 4000
    end
    object fmtbcdfldQryGraficoTotalVendas: TFMTBCDField
      FieldName = 'TotalVendas'
      Origin = 'TotalVendas'
      ReadOnly = True
      currency = True
      Precision = 38
      Size = 5
    end
  end
  object QryProduto: TFDQuery
    Active = True
    Connection = dtmConexao.ConexaoDB
    SQL.Strings = (
      
        'SELECT '#10'  DATEFROMPARTS(YEAR(DataProduto), MONTH(DataProduto), D' +
        'AY(DataProduto)) AS DataMes,'#10'  SUM(valor * quantidade) AS TotalM' +
        'es'#10'FROM produtos'#10'GROUP BY DATEFROMPARTS(YEAR(DataProduto), MONTH' +
        '(DataProduto), DAY(DataProduto))'#10'ORDER BY DataMes;')
    Left = 720
    Top = 1
    object QryProdutoDataMes: TDateField
      FieldName = 'DataMes'
      Origin = 'DataMes'
      ReadOnly = True
    end
    object fmtbcdfldQryProdutoTotalMes: TFMTBCDField
      FieldName = 'TotalMes'
      Origin = 'TotalMes'
      ReadOnly = True
      currency = True
      Precision = 38
      Size = 10
    end
  end
  object dsProduto: TDataSource
    DataSet = QryProduto
    Left = 776
    Top = 1
  end
end
