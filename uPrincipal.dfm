object frmPrincipal: TfrmPrincipal
  Left = 0
  Top = 0
  Caption = 'Menu Principal'
  ClientHeight = 538
  ClientWidth = 1128
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  Menu = mainPrincipal
  OldCreateOrder = False
  Position = poDesigned
  WindowState = wsMaximized
  OnClose = FormClose
  OnCreate = FormCreate
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object btn1: TSpeedButton
    Left = 0
    Top = 0
    Width = 1128
    Height = 519
    Align = alClient
    ExplicitLeft = 33
    ExplicitTop = -8
    ExplicitWidth = 279
    ExplicitHeight = 22
  end
  object StbPrincipal: TStatusBar
    Left = 0
    Top = 519
    Width = 1128
    Height = 19
    Panels = <
      item
        Width = 150
      end>
  end
  object GridPanel1: TGridPanel
    Left = 0
    Top = 0
    Width = 1128
    Height = 519
    Align = alClient
    Caption = 'GridPanel1'
    ColumnCollection = <
      item
        Value = 50.000000000000000000
      end
      item
        Value = 50.000000000000000000
      end>
    ControlCollection = <
      item
        Column = 0
        Control = dbcht1
        Row = 0
      end
      item
        Column = 1
        Control = dbcht2
        Row = 0
      end
      item
        Column = 0
        Control = dbcht3
        Row = 1
      end
      item
        Column = 1
        Control = dbcht4
        Row = 1
      end>
    RowCollection = <
      item
        Value = 50.000000000000000000
      end
      item
        Value = 50.000000000000000000
      end>
    TabOrder = 1
    object dbcht1: TDBChart
      Left = 1
      Top = 1
      Width = 563
      Height = 258
      Title.Text.Strings = (
        'Produto em Estoque')
      Align = alClient
      TabOrder = 0
      DefaultCanvas = 'TGDIPlusCanvas'
      ColorPaletteIndex = 13
      object Series1: TBarSeries
        Marks.Brush.Gradient.Colors = <
          item
            Color = clRed
          end
          item
            Color = 819443
            Offset = 0.067915690866510540
          end
          item
            Color = clYellow
            Offset = 1.000000000000000000
          end>
        Marks.Brush.Gradient.Direction = gdTopBottom
        Marks.Brush.Gradient.EndColor = clYellow
        Marks.Brush.Gradient.MidColor = 819443
        Marks.Brush.Gradient.StartColor = clRed
        Marks.Brush.Gradient.Visible = True
        Marks.Font.Color = 159
        Marks.Font.Name = 'Tahoma'
        Marks.Font.Style = [fsBold, fsItalic]
        Marks.Frame.Color = 33023
        Marks.RoundSize = 14
        Marks.Visible = False
        DataSource = DTMGrafico.QryProdutoEstoque
        Title = 'ProdutoEstoque'
        XLabelsSource = 'label'
        XValues.Name = 'X'
        XValues.Order = loAscending
        YValues.Name = 'Bar'
        YValues.Order = loNone
        YValues.ValueSource = 'value'
      end
    end
    object dbcht2: TDBChart
      Left = 564
      Top = 1
      Width = 563
      Height = 258
      Title.Text.Strings = (
        'Valor de venda por cliente na '#250'ltima semana')
      Legend.TextStyle = ltsLeftPercent
      View3DOptions.Elevation = 315
      View3DOptions.Orthogonal = False
      View3DOptions.Perspective = 0
      View3DOptions.Rotation = 360
      Align = alClient
      TabOrder = 1
      DefaultCanvas = 'TGDIPlusCanvas'
      ColorPaletteIndex = 13
      object Series2: TPieSeries
        Marks.Brush.Gradient.Colors = <
          item
            Color = clRed
          end
          item
            Color = 819443
            Offset = 0.067915690866510540
          end
          item
            Color = clYellow
            Offset = 1.000000000000000000
          end>
        Marks.Brush.Gradient.Direction = gdTopBottom
        Marks.Brush.Gradient.EndColor = clYellow
        Marks.Brush.Gradient.MidColor = 819443
        Marks.Brush.Gradient.StartColor = clRed
        Marks.Brush.Gradient.Visible = True
        Marks.Font.Color = 159
        Marks.Font.Name = 'Tahoma'
        Marks.Font.Style = [fsBold, fsItalic]
        Marks.Frame.Color = 33023
        Marks.RoundSize = 14
        Marks.Visible = False
        Marks.Style = smsLabelPercentTotal
        Marks.Callout.Length = 20
        DataSource = DTMGrafico.QryValorVendaPorCliente
        Title = 'ValorDeVendaPorClienteNaUltimaSemana'
        XLabelsSource = 'Label'
        XValues.Order = loAscending
        YValues.Name = 'Pie'
        YValues.Order = loNone
        YValues.ValueSource = 'Value'
        CustomXRadius = 150
        CustomYRadius = 120
        Frame.InnerBrush.BackColor = clRed
        Frame.InnerBrush.Gradient.EndColor = clGray
        Frame.InnerBrush.Gradient.MidColor = clWhite
        Frame.InnerBrush.Gradient.StartColor = 4210752
        Frame.InnerBrush.Gradient.Visible = True
        Frame.MiddleBrush.BackColor = clYellow
        Frame.MiddleBrush.Gradient.EndColor = 8553090
        Frame.MiddleBrush.Gradient.MidColor = clWhite
        Frame.MiddleBrush.Gradient.StartColor = clGray
        Frame.MiddleBrush.Gradient.Visible = True
        Frame.OuterBrush.BackColor = clGreen
        Frame.OuterBrush.Gradient.EndColor = 4210752
        Frame.OuterBrush.Gradient.MidColor = clWhite
        Frame.OuterBrush.Gradient.StartColor = clSilver
        Frame.OuterBrush.Gradient.Visible = True
        Frame.Width = 4
        OtherSlice.Legend.Visible = False
      end
    end
    object dbcht3: TDBChart
      Left = 1
      Top = 259
      Width = 563
      Height = 259
      Title.Text.Strings = (
        'Vendas da '#250'ltima semana')
      Align = alClient
      TabOrder = 2
      DefaultCanvas = 'TGDIPlusCanvas'
      ColorPaletteIndex = 13
      object Series4: TFastLineSeries
        DataSource = DTMGrafico.QryVendasUltimasSemana
        Title = 'VendasDaUltimaSemana'
        XLabelsSource = 'Label'
        LinePen.Color = 10708548
        XValues.Name = 'X'
        XValues.Order = loAscending
        YValues.Name = 'Y'
        YValues.Order = loNone
        YValues.ValueSource = 'Value'
      end
    end
    object dbcht4: TDBChart
      Left = 564
      Top = 259
      Width = 563
      Height = 259
      Title.Text.Strings = (
        '10 produtos mais vendidos')
      View3DOptions.Elevation = 315
      View3DOptions.Orthogonal = False
      View3DOptions.Perspective = 0
      View3DOptions.Rotation = 360
      Align = alClient
      TabOrder = 3
      DefaultCanvas = 'TGDIPlusCanvas'
      ColorPaletteIndex = 13
      object Series3: TPieSeries
        DataSource = DTMGrafico.Qry10ProdutosMaisVendidos
        Title = '10ProdutosMaisVendidos'
        XLabelsSource = 'Label'
        XValues.Order = loAscending
        YValues.Name = 'Pie'
        YValues.Order = loNone
        YValues.ValueSource = 'Value'
        CustomXRadius = 150
        CustomYRadius = 120
        Frame.InnerBrush.BackColor = clRed
        Frame.InnerBrush.Gradient.EndColor = clGray
        Frame.InnerBrush.Gradient.MidColor = clWhite
        Frame.InnerBrush.Gradient.StartColor = 4210752
        Frame.InnerBrush.Gradient.Visible = True
        Frame.MiddleBrush.BackColor = clYellow
        Frame.MiddleBrush.Gradient.EndColor = 8553090
        Frame.MiddleBrush.Gradient.MidColor = clWhite
        Frame.MiddleBrush.Gradient.StartColor = clGray
        Frame.MiddleBrush.Gradient.Visible = True
        Frame.OuterBrush.BackColor = clGreen
        Frame.OuterBrush.Gradient.EndColor = 4210752
        Frame.OuterBrush.Gradient.MidColor = clWhite
        Frame.OuterBrush.Gradient.StartColor = clSilver
        Frame.OuterBrush.Gradient.Visible = True
        Frame.Width = 4
        OtherSlice.Legend.Visible = False
      end
    end
  end
  object mainPrincipal: TMainMenu
    Left = 576
    Top = 24
    object cadastro1: TMenuItem
      Caption = 'Cadastro'
      object cliente1: TMenuItem
        Caption = 'Cliente'
        ShortCut = 16451
        OnClick = cliente1Click
      end
      object N1: TMenuItem
        Caption = '-'
      end
      object categoria1: TMenuItem
        Caption = 'Categoria'
        OnClick = categoria1Click
      end
      object Produto1: TMenuItem
        Caption = 'Produto'
        ShortCut = 16464
        OnClick = Produto1Click
      end
      object mniFornecedor1: TMenuItem
        Caption = 'Fornecedor'
        OnClick = mniFornecedor1Click
      end
      object N2: TMenuItem
        Caption = '-'
      end
      object mniUsurio1: TMenuItem
        Caption = 'Usu'#225'rio'
        OnClick = mniUsurio1Click
      end
      object mniAoAcesso1: TMenuItem
        Caption = 'A'#231#227'o Acesso'
        OnClick = mniAoAcesso1Click
      end
      object mniN7: TMenuItem
        Caption = '-'
      end
      object mniUsuriosVsAes1: TMenuItem
        Caption = 'Usu'#225'rios Vs A'#231#245'es'
        OnClick = mniUsuriosVsAes1Click
      end
      object mniN6: TMenuItem
        Caption = '-'
      end
      object mniAlterarSenha1: TMenuItem
        Caption = 'Alterar Senha'
        OnClick = mniAlterarSenha1Click
      end
      object mnirocarsuario1: TMenuItem
        Caption = 'Trocar Usu'#225'rio'
        OnClick = mnirocarsuario1Click
      end
      object mniN5: TMenuItem
        Caption = '-'
      end
      object mnuFechar: TMenuItem
        Caption = 'Fechar'
        OnClick = mnuFecharClick
      end
    end
    object movimentao1: TMenuItem
      Caption = 'Movimenta'#231#227'o'
      object Vendas1: TMenuItem
        Caption = 'Venda'
        ShortCut = 120
        OnClick = Vendas1Click
      end
    end
    object relatrio1: TMenuItem
      Caption = 'Relat'#243'rios'
      object mniCategoria2: TMenuItem
        Caption = 'Categoria'
        OnClick = mniCategoria2Click
      end
      object Cliente2: TMenuItem
        Caption = 'Cliente'
        OnClick = Cliente2Click
      end
      object mniFichadeCliente1: TMenuItem
        Caption = 'Ficha de Cliente'
        OnClick = mniFichadeCliente1Click
      end
      object N3: TMenuItem
        Caption = '-'
      end
      object Produto2: TMenuItem
        Caption = 'Produto'
        OnClick = Produto2Click
      end
      object mniProdutoporCategoria1: TMenuItem
        Caption = 'Produto por Categoria'
        OnClick = mniProdutoporCategoria1Click
      end
      object N4: TMenuItem
        Caption = '-'
      end
      object Vendapordata1: TMenuItem
        Caption = 'Venda por data'
        OnClick = Vendapordata1Click
      end
    end
    object mniControle1: TMenuItem
      Caption = 'Controle'
      object mniLog1: TMenuItem
        Caption = 'Auditoria'
        OnClick = mniLog1Click
      end
      object mniFinanceiro1: TMenuItem
        Caption = 'Resumo Financeiro'
        OnClick = mniFinanceiro1Click
      end
      object mniteste1: TMenuItem
        Caption = 'teste'
      end
    end
  end
end
