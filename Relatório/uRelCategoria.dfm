object frmRelCategoria: TfrmRelCategoria
  Left = 0
  Top = 0
  Caption = 'Relat'#243'rio de Categorias'
  ClientHeight = 621
  ClientWidth = 778
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  PixelsPerInch = 96
  TextHeight = 13
  object Relatorio: TRLReport
    Left = 0
    Top = 0
    Width = 794
    Height = 1123
    DataSource = dtsCategorias
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
        Width = 245
        Height = 24
        Caption = 'Listagem de Categorias'
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
    object RLBand1: TRLBand
      Left = 38
      Top = 137
      Width = 718
      Height = 28
      object RLDBText1: TRLDBText
        Left = 24
        Top = 0
        Width = 67
        Height = 16
        DataField = 'categoriaId'
        DataSource = dtsCategorias
        Text = ''
      end
      object RLDBText2: TRLDBText
        Left = 98
        Top = 0
        Width = 60
        Height = 16
        DataField = 'descricao'
        DataSource = dtsCategorias
        Text = ''
      end
    end
    object Rodape: TRLBand
      Left = 38
      Top = 165
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
    object RLBand2: TRLBand
      Left = 38
      Top = 105
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
          Width = 66
          Height = 16
          Caption = 'Descri'#231#227'o'
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
      end
    end
  end
  object QryCategorias: TFDQuery
    Connection = dtmConexao.ConexaoDB
    SQL.Strings = (
      'select categoriaId,'
      '       descricao'
      'from categorias'
      'order by descricao')
    Left = 560
    Top = 304
  end
  object dtsCategorias: TDataSource
    DataSet = QryCategorias
    Left = 664
    Top = 312
  end
  object RLPDFFilter1: TRLPDFFilter
    DocumentInfo.Creator = 
      'FortesReport Community Edition v4.0 \251 Copyright '#169' 1999-2016 F' +
      'ortes Inform'#225'tica'
    DisplayName = 'Documento PDF'
    Left = 616
    Top = 352
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
