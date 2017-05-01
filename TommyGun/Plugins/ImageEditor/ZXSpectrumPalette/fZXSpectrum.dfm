object frmZXSpectrum: TfrmZXSpectrum
  Left = 1133
  Top = 129
  ClientHeight = 108
  ClientWidth = 502
  Color = clWhite
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object panZXSpectrumPalette: TPanel
    Left = 0
    Top = 10
    Width = 502
    Height = 98
    Align = alBottom
    BevelOuter = bvNone
    Color = clWhite
    Constraints.MaxHeight = 98
    Constraints.MinHeight = 98
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentBackground = False
    ParentFont = False
    TabOrder = 0
    ExplicitTop = 18
    DesignSize = (
      502
      98)
    object lblPaletteInk: TLabel
      Left = 8
      Top = 44
      Width = 15
      Height = 13
      Caption = 'Ink'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object lblPalettePaper: TLabel
      Left = 8
      Top = 72
      Width = 28
      Height = 13
      Caption = 'Paper'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object spdInkBlack: TSpeedButton
      Left = 40
      Top = 40
      Width = 24
      Height = 24
      Hint = 'Color - Attribute will be set the selected color'
      GroupIndex = 1
      Flat = True
      Glyph.Data = {
        FE000000424DFE00000000000000760000002800000010000000110000000100
        0400000000008800000000000000000000001000000010000000000000000000
        80000080000000808000800000008000800080800000C0C0C000808080000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00DDDDDDDDDDDD
        DDDD000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000}
      ParentShowHint = False
      ShowHint = True
      OnClick = spdInkBlackClick
    end
    object spdInkBlue: TSpeedButton
      Tag = 1
      Left = 64
      Top = 40
      Width = 24
      Height = 24
      Hint = 'Color - Attribute will be set the selected color'
      GroupIndex = 1
      Flat = True
      Glyph.Data = {
        FE000000424DFE00000000000000760000002800000010000000110000000100
        0400000000008800000000000000000000001000000010000000000000000000
        80000080000000808000800000008000800080800000C0C0C000808080000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00DDDDDDDDDDDD
        DDDDCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCC
        CCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCC
        CCCC444444444444444444444444444444444444444444444444444444444444
        4444444444444444444444444444444444444444444444444444444444444444
        4444}
      ParentShowHint = False
      ShowHint = True
      OnClick = spdInkBlackClick
    end
    object spdInkRed: TSpeedButton
      Tag = 2
      Left = 88
      Top = 40
      Width = 24
      Height = 24
      Hint = 'Color - Attribute will be set the selected color'
      GroupIndex = 1
      Flat = True
      Glyph.Data = {
        FE000000424DFE00000000000000760000002800000010000000110000000100
        0400000000008800000000000000000000001000000010000000000000000000
        80000080000000808000800000008000800080800000C0C0C000808080000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00DDDDDDDDDDDD
        DDDD999999999999999999999999999999999999999999999999999999999999
        9999999999999999999999999999999999999999999999999999999999999999
        9999111111111111111111111111111111111111111111111111111111111111
        1111111111111111111111111111111111111111111111111111111111111111
        1111}
      ParentShowHint = False
      ShowHint = True
      OnClick = spdInkBlackClick
    end
    object spdInkPurple: TSpeedButton
      Tag = 3
      Left = 112
      Top = 40
      Width = 24
      Height = 24
      Hint = 'Color - Attribute will be set the selected color'
      GroupIndex = 1
      Flat = True
      Glyph.Data = {
        FE000000424DFE00000000000000760000002800000010000000110000000100
        0400000000008800000000000000000000001000000010000000000000000000
        80000080000000808000800000008000800080800000C0C0C000808080000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00FFFFFFFFFFFF
        FFFFDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDD
        DDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDD
        DDDD555555555555555555555555555555555555555555555555555555555555
        5555555555555555555555555555555555555555555555555555555555555555
        5555}
      ParentShowHint = False
      ShowHint = True
      OnClick = spdInkBlackClick
    end
    object spdInkGreen: TSpeedButton
      Tag = 4
      Left = 136
      Top = 40
      Width = 24
      Height = 24
      Hint = 'Color - Attribute will be set the selected color'
      GroupIndex = 1
      Flat = True
      Glyph.Data = {
        FE000000424DFE00000000000000760000002800000010000000110000000100
        0400000000008800000000000000000000001000000010000000000000000000
        80000080000000808000800000008000800080800000C0C0C000808080000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00DDDDDDDDDDDD
        DDDDAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA
        AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA
        AAAA222222222222222222222222222222222222222222222222222222222222
        2222222222222222222222222222222222222222222222222222222222222222
        2222}
      ParentShowHint = False
      ShowHint = True
      OnClick = spdInkBlackClick
    end
    object spdInkCyan: TSpeedButton
      Tag = 5
      Left = 160
      Top = 40
      Width = 24
      Height = 24
      Hint = 'Color - Attribute will be set the selected color'
      GroupIndex = 1
      Flat = True
      Glyph.Data = {
        FE000000424DFE00000000000000760000002800000010000000110000000100
        0400000000008800000000000000000000001000000010000000000000000000
        80000080000000808000800000008000800080800000C0C0C000808080000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00DDDDDDDDDDDD
        DDDDEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEE
        EEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEE
        EEEE666666666666666666666666666666666666666666666666666666666666
        6666666666666666666666666666666666666666666666666666666666666666
        6666}
      ParentShowHint = False
      ShowHint = True
      OnClick = spdInkBlackClick
    end
    object spdInkYellow: TSpeedButton
      Tag = 6
      Left = 184
      Top = 40
      Width = 24
      Height = 24
      Hint = 'Color - Attribute will be set the selected color'
      GroupIndex = 1
      Flat = True
      Glyph.Data = {
        FE000000424DFE00000000000000760000002800000010000000110000000100
        0400000000008800000000000000000000001000000010000000000000000000
        80000080000000808000800000008000800080800000C0C0C000808080000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00DDDDDDDDDDDD
        DDDDBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBB
        BBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBB
        BBBB333333333333333333333333333333333333333333333333333333333333
        3333333333333333333333333333333333333333333333333333333333333333
        3333}
      ParentShowHint = False
      ShowHint = True
      OnClick = spdInkBlackClick
    end
    object spdInkWhite: TSpeedButton
      Tag = 7
      Left = 208
      Top = 40
      Width = 24
      Height = 24
      Hint = 'Color - Attribute will be set the selected color'
      GroupIndex = 1
      Down = True
      Flat = True
      Glyph.Data = {
        FE000000424DFE00000000000000760000002800000010000000110000000100
        0400000000008800000000000000000000001000000010000000000000000000
        80000080000000808000800000008000800080800000C0C0C000808080000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00DDDDDDDDDDDD
        DDDDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFF777777777777777777777777777777777777777777777777777777777777
        7777777777777777777777777777777777777777777777777777777777777777
        7777}
      ParentShowHint = False
      ShowHint = True
      OnClick = spdInkBlackClick
    end
    object spdInkTransparent: TSpeedButton
      Tag = 8
      Left = 232
      Top = 40
      Width = 24
      Height = 24
      Hint = 'Transparent - attribute will remain unchanged'
      GroupIndex = 1
      Flat = True
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      Glyph.Data = {
        FE000000424DFE00000000000000760000002800000010000000110000000100
        0400000000008800000000000000000000001000000010000000000000000000
        80000080000000808000800000008000800080800000C0C0C000808080000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00DDDDDDDDDDDD
        DDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDD
        DDDDDDDDDDD00DDDDDDDDDDDDDD00DDDDDDDDDDDDDD00DDDDDDDDDDDDDD00DDD
        DDDDDDDDDDD00DDDDDDDDDDDDDD00DDDDDDDDDDDDDD00DDDDDDDDDDDDD0000DD
        DDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDD
        DDDD}
      ParentFont = False
      ParentShowHint = False
      ShowHint = True
      OnClick = spdInkBlackClick
    end
    object spdPaperBlack: TSpeedButton
      Left = 40
      Top = 68
      Width = 24
      Height = 24
      Hint = 'Color - Attribute will be set the selected color'
      GroupIndex = 2
      Down = True
      Flat = True
      Glyph.Data = {
        FE000000424DFE00000000000000760000002800000010000000110000000100
        0400000000008800000000000000000000001000000010000000000000000000
        80000080000000808000800000008000800080800000C0C0C000808080000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00DDDDDDDDDDDD
        DDDD000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000}
      ParentShowHint = False
      ShowHint = True
      OnClick = spdPaperBlackClick
    end
    object spdPaperBlue: TSpeedButton
      Tag = 1
      Left = 64
      Top = 68
      Width = 24
      Height = 24
      Hint = 'Color - Attribute will be set the selected color'
      GroupIndex = 2
      Flat = True
      Glyph.Data = {
        FE000000424DFE00000000000000760000002800000010000000110000000100
        0400000000008800000000000000000000001000000010000000000000000000
        80000080000000808000800000008000800080800000C0C0C000808080000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00DDDDDDDDDDDD
        DDDDCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCC
        CCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCC
        CCCC444444444444444444444444444444444444444444444444444444444444
        4444444444444444444444444444444444444444444444444444444444444444
        4444}
      ParentShowHint = False
      ShowHint = True
      OnClick = spdPaperBlackClick
    end
    object spdPaperRed: TSpeedButton
      Tag = 2
      Left = 88
      Top = 68
      Width = 24
      Height = 24
      Hint = 'Color - Attribute will be set the selected color'
      GroupIndex = 2
      Flat = True
      Glyph.Data = {
        FE000000424DFE00000000000000760000002800000010000000110000000100
        0400000000008800000000000000000000001000000010000000000000000000
        80000080000000808000800000008000800080800000C0C0C000808080000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00DDDDDDDDDDDD
        DDDD999999999999999999999999999999999999999999999999999999999999
        9999999999999999999999999999999999999999999999999999999999999999
        9999111111111111111111111111111111111111111111111111111111111111
        1111111111111111111111111111111111111111111111111111111111111111
        1111}
      ParentShowHint = False
      ShowHint = True
      OnClick = spdPaperBlackClick
    end
    object spdPaperPurple: TSpeedButton
      Tag = 3
      Left = 112
      Top = 68
      Width = 24
      Height = 24
      Hint = 'Color - Attribute will be set the selected color'
      GroupIndex = 2
      Flat = True
      Glyph.Data = {
        FE000000424DFE00000000000000760000002800000010000000110000000100
        0400000000008800000000000000000000001000000010000000000000000000
        80000080000000808000800000008000800080800000C0C0C000808080000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00FFFFFFFFFFFF
        FFFFDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDD
        DDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDD
        DDDD555555555555555555555555555555555555555555555555555555555555
        5555555555555555555555555555555555555555555555555555555555555555
        5555}
      ParentShowHint = False
      ShowHint = True
      OnClick = spdPaperBlackClick
    end
    object spdPaperGreen: TSpeedButton
      Tag = 4
      Left = 136
      Top = 68
      Width = 24
      Height = 24
      Hint = 'Color - Attribute will be set the selected color'
      GroupIndex = 2
      Flat = True
      Glyph.Data = {
        FE000000424DFE00000000000000760000002800000010000000110000000100
        0400000000008800000000000000000000001000000010000000000000000000
        80000080000000808000800000008000800080800000C0C0C000808080000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00DDDDDDDDDDDD
        DDDDAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA
        AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA
        AAAA222222222222222222222222222222222222222222222222222222222222
        2222222222222222222222222222222222222222222222222222222222222222
        2222}
      ParentShowHint = False
      ShowHint = True
      OnClick = spdPaperBlackClick
    end
    object spdPaperCyan: TSpeedButton
      Tag = 5
      Left = 160
      Top = 68
      Width = 24
      Height = 24
      Hint = 'Color - Attribute will be set the selected color'
      GroupIndex = 2
      Flat = True
      Glyph.Data = {
        FE000000424DFE00000000000000760000002800000010000000110000000100
        0400000000008800000000000000000000001000000010000000000000000000
        80000080000000808000800000008000800080800000C0C0C000808080000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00DDDDDDDDDDDD
        DDDDEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEE
        EEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEE
        EEEE666666666666666666666666666666666666666666666666666666666666
        6666666666666666666666666666666666666666666666666666666666666666
        6666}
      ParentShowHint = False
      ShowHint = True
      OnClick = spdPaperBlackClick
    end
    object spdPaperYellow: TSpeedButton
      Tag = 6
      Left = 184
      Top = 68
      Width = 24
      Height = 24
      Hint = 'Color - Attribute will be set the selected color'
      GroupIndex = 2
      Flat = True
      Glyph.Data = {
        FE000000424DFE00000000000000760000002800000010000000110000000100
        0400000000008800000000000000000000001000000010000000000000000000
        80000080000000808000800000008000800080800000C0C0C000808080000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00DDDDDDDDDDDD
        DDDDBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBB
        BBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBB
        BBBB333333333333333333333333333333333333333333333333333333333333
        3333333333333333333333333333333333333333333333333333333333333333
        3333}
      ParentShowHint = False
      ShowHint = True
      OnClick = spdPaperBlackClick
    end
    object spdPaperWhite: TSpeedButton
      Tag = 7
      Left = 208
      Top = 68
      Width = 24
      Height = 24
      Hint = 'Color - Attribute will be set the selected color'
      GroupIndex = 2
      Flat = True
      Glyph.Data = {
        FE000000424DFE00000000000000760000002800000010000000110000000100
        0400000000008800000000000000000000001000000010000000000000000000
        80000080000000808000800000008000800080800000C0C0C000808080000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00DDDDDDDDDDDD
        DDDDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFF777777777777777777777777777777777777777777777777777777777777
        7777777777777777777777777777777777777777777777777777777777777777
        7777}
      ParentShowHint = False
      ShowHint = True
      OnClick = spdPaperBlackClick
    end
    object spdPaperTransparent: TSpeedButton
      Tag = 8
      Left = 232
      Top = 68
      Width = 24
      Height = 24
      Hint = 'Transparent - attribute will remain unchanged'
      GroupIndex = 2
      Flat = True
      Glyph.Data = {
        FE000000424DFE00000000000000760000002800000010000000110000000100
        0400000000008800000000000000000000001000000010000000000000000000
        80000080000000808000800000008000800080800000C0C0C000808080000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00DDDDDDDDDDDD
        DDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDD
        DDDDDDDDDDD00DDDDDDDDDDDDDD00DDDDDDDDDDDDDD00DDDDDDDDDDDDDD00DDD
        DDDDDDDDDDD00DDDDDDDDDDDDDD00DDDDDDDDDDDDDD00DDDDDDDDDDDDD0000DD
        DDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDD
        DDDD}
      ParentShowHint = False
      ShowHint = True
      OnClick = spdPaperBlackClick
    end
    object spdBrightOff: TSpeedButton
      Left = 316
      Top = 40
      Width = 24
      Height = 24
      Hint = 'Off - attribute will be set to off'
      GroupIndex = 3
      Down = True
      Flat = True
      Glyph.Data = {
        FE000000424DFE00000000000000760000002800000010000000110000000100
        0400000000008800000000000000000000001000000010000000000000000000
        80000080000000808000800000008000800080800000C0C0C000808080000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00DDDDDDDDDDDD
        DDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDD
        DDDDD000DD00DDD00DDD00D00D00DDD00DDD00D00D00DDD00DDD00D00D00DDD0
        0DDD00D00D000DD000DD00D00D00DDD00DDD00D00D00DDD00DDDD000DD0000D0
        000DDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDD
        DDDD}
      ParentShowHint = False
      ShowHint = True
      OnClick = spdBrightOffClick
    end
    object spdBrightOn: TSpeedButton
      Tag = 1
      Left = 340
      Top = 40
      Width = 24
      Height = 24
      Hint = 'On - attribute will be set to on'
      GroupIndex = 3
      Flat = True
      Glyph.Data = {
        FE000000424DFE00000000000000760000002800000010000000110000000100
        0400000000008800000000000000000000001000000010000000000000000000
        80000080000000808000800000008000800080800000C0C0C000808080000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00DDDDDDDDDDDD
        DDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDD
        DDDDDDD000DD00D00DDDDD00D00D00D00DDDDD00D00D00D00DDDDD00D00D00D0
        0DDDDD00D00D00D00DDDDD00D00D00D00DDDDD00D00D00D00DDDDDD000DD0000
        DDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDD
        DDDD}
      ParentShowHint = False
      ShowHint = True
      OnClick = spdBrightOffClick
    end
    object spdBrightTransparent: TSpeedButton
      Tag = 8
      Left = 364
      Top = 40
      Width = 24
      Height = 24
      Hint = 'Transparent - attribute will remain unchanged'
      GroupIndex = 3
      Flat = True
      Glyph.Data = {
        FE000000424DFE00000000000000760000002800000010000000110000000100
        0400000000008800000000000000000000001000000010000000000000000000
        80000080000000808000800000008000800080800000C0C0C000808080000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00DDDDDDDDDDDD
        DDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDD
        DDDDDDDDDDD00DDDDDDDDDDDDDD00DDDDDDDDDDDDDD00DDDDDDDDDDDDDD00DDD
        DDDDDDDDDDD00DDDDDDDDDDDDDD00DDDDDDDDDDDDDD00DDDDDDDDDDDD000000D
        DDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDD
        DDDD}
      ParentShowHint = False
      ShowHint = True
      OnClick = spdBrightOffClick
    end
    object spdFlashOff: TSpeedButton
      Left = 316
      Top = 68
      Width = 24
      Height = 24
      Hint = 'Off - attribute will be set to off'
      GroupIndex = 4
      Down = True
      Flat = True
      Glyph.Data = {
        FE000000424DFE00000000000000760000002800000010000000110000000100
        0400000000008800000000000000000000001000000010000000000000000000
        80000080000000808000800000008000800080800000C0C0C000808080000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00DDDDDDDDDDDD
        DDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDD
        DDDDD000DD00DDD00DDD00D00D00DDD00DDD00D00D00DDD00DDD00D00D00DDD0
        0DDD00D00D000DD000DD00D00D00DDD00DDD00D00D00DDD00DDDD000DD0000D0
        000DDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDD
        DDDD}
      ParentShowHint = False
      ShowHint = True
      OnClick = spdFlashOffClick
    end
    object spdFlashOn: TSpeedButton
      Tag = 1
      Left = 340
      Top = 68
      Width = 24
      Height = 24
      Hint = 'On - attribute will be set to on'
      GroupIndex = 4
      Flat = True
      Glyph.Data = {
        FE000000424DFE00000000000000760000002800000010000000110000000100
        0400000000008800000000000000000000001000000010000000000000000000
        80000080000000808000800000008000800080800000C0C0C000808080000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00DDDDDDDDDDDD
        DDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDD
        DDDDDDD000DD00D00DDDDD00D00D00D00DDDDD00D00D00D00DDDDD00D00D00D0
        0DDDDD00D00D00D00DDDDD00D00D00D00DDDDD00D00D00D00DDDDDD000DD0000
        DDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDD
        DDDD}
      ParentShowHint = False
      ShowHint = True
      OnClick = spdFlashOffClick
    end
    object spdFlashTransparent: TSpeedButton
      Tag = 8
      Left = 364
      Top = 68
      Width = 24
      Height = 24
      Hint = 'Transparent - attribute will remain unchanged'
      GroupIndex = 4
      Flat = True
      Glyph.Data = {
        FE000000424DFE00000000000000760000002800000010000000110000000100
        0400000000008800000000000000000000001000000010000000000000000000
        80000080000000808000800000008000800080800000C0C0C000808080000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00DDDDDDDDDDDD
        DDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDD
        DDDDDDDDDDD00DDDDDDDDDDDDDD00DDDDDDDDDDDDDD00DDDDDDDDDDDDDD00DDD
        DDDDDDDDDDD00DDDDDDDDDDDDDD00DDDDDDDDDDDDDD00DDDDDDDDDDDD000000D
        DDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDD
        DDDD}
      ParentShowHint = False
      ShowHint = True
      OnClick = spdFlashOffClick
    end
    object lblPaletteBright: TLabel
      Left = 284
      Top = 44
      Width = 28
      Height = 13
      Caption = 'Bright'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object lblPaletteFlash: TLabel
      Left = 284
      Top = 72
      Width = 25
      Height = 13
      Caption = 'Flash'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object imgPaletteTransparent: TImage
      Left = 409
      Top = 3
      Width = 16
      Height = 17
      Anchors = [akTop, akRight]
      AutoSize = True
      Picture.Data = {
        07544269746D6170FE000000424DFE0000000000000076000000280000001000
        0000110000000100040000000000880000000000000000000000100000001000
        000000000000000080000080000000808000800000008000800080800000C0C0
        C000808080000000FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFF
        FF00DDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDD
        DDDDDDDDDDDDDDDDDDDDDDDDDDD00DDDDDDDDDDDDDD00DDDDDDDDDDDDDD00DDD
        DDDDDDDDDDD00DDDDDDDDDDDDDD00DDDDDDDDDDDDDD00DDDDDDDDDDDDDD00DDD
        DDDDDDDDD000000DDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDD
        DDDDDDDDDDDDDDDDDDDD}
      Transparent = True
      ExplicitLeft = 363
    end
    object lblPaletteTransparent: TLabel
      Left = 430
      Top = 4
      Width = 69
      Height = 13
      Anchors = [akTop, akRight]
      Caption = 'is Transparent'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      ExplicitLeft = 384
    end
    object imgLogo: TImage
      Left = 4
      Top = 8
      Width = 127
      Height = 28
      AutoSize = True
      Picture.Data = {
        07544269746D617036120000424D361200000000000036040000280000007F00
        00001C0000000100080000000000000E0000C40E0000C40E0000000100000001
        000000000000010101000404040007070700090909000A0A0A000B0B0B000C0C
        0C000E0E0E001010100011111100121212001313130014141400151515001616
        1600191919001E1E1E0020202000212121002222220023232300252525002626
        2600282828002E2E2E00303030003232320034343400363636003A3A3A003C3C
        3C003F3F3F0040404000434343004545450048484800494949004A4A4A004B4B
        4B004D4D4D004E4E4E0050505000525252005B5B5B005D5D5D00606060006262
        620064646400656565006666660067676700686868006B6B6B006D6D6D006F6F
        6F00717171007474740076767600787878007A7A7A007C7C7C007D7D7D007F7F
        7F008282820084848400868686008C8C8C008E8E8E0090909000929292009494
        94009595950097979700989898009A9A9A009B9B9B00A0A0A000A1A1A100A3A3
        A300A5A5A500A7A7A700A8A8A800ABABAB00ACACAC00ADADAD00AFAFAF00B1B1
        B100B3B3B300B4B4B400B7B7B700B9B9B900BBBBBB00BFBFBF00C0C0C000C6C6
        C600C8C8C800C9C9C900CACACA00CCCCCC00CFCFCF00D0D0D000D2D2D200D3D3
        D300D6D6D600D7D7D700D8D8D800DADADA00DBDBDB00DCDCDC00DDDDDD00DFDF
        DF00E0E0E000E1E1E100E2E2E200E3E3E300E4E4E400E6E6E600E7E7E700E8E8
        E800E9E9E900EAEAEA00EBEBEB00ECECEC00EDEDED00EEEEEE00F0F0F000F1F1
        F100F2F2F200F3F3F300F4F4F400F6F6F600F8F8F800F9F9F900FCFCFC00FDFD
        FD00FFFFFF000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        000088888888888888888888888888888888888888888888883E778888888888
        8888888888888888888888888888888888888888888888888888888888888888
        8888888888888888888888888888888888888888888888888888888888888888
        8888888888888888888888888888888888888888888888888888888888888888
        8800888888888888888888888888888888888888888888888200638888888888
        8888888888888888888888888888888888888888888888888888888888888888
        8888888888888888888888888888888888888888888888888888888888888888
        8888888888888888888888888888888888888888888888888888888888888888
        8800888888888888888888888888888888888888707C88888200646B88888888
        7D6F888888886D7C888880758885888888888175888888858888858888858888
        8888888888888888888888888888888888888888888888888888888888888888
        8888888888888888888888888888888888888888888888888888888888888888
        8800883900000000005D004F8888280E8888550200002271820011001F7E8832
        000000885D1700008847000E78005888883000002A884109886C007988004B88
        8888888888888888888888888888888888888888888888888888888888888888
        8888888888888888888888888888888888888888888888888888888888888888
        880088780A297A7A7A8840097249006E88887668887B1E2F82005388213A5C00
        678887881D36888488273388880058885F006C6F00654110886C007988004B88
        8888888888888888888888888888888888888888888888888888888888888888
        8888888888888888888888888888888888888888888888888888888888888888
        880088884E005188888888231A0043888888888888601B2E8200658838264600
        0003066D053A8888882035888800588857078888045B4114886C007988044D88
        8888888888888888888888888888888888888888888888888888888888888888
        8888888888888888888888888888888888888888888888888888888888888888
        88008888882C02858888887A031688888888883C0B00226882004E8824375E00
        664800861D348888881B2D888800428354008888005B41007C50004C88085288
        8888888888888888888888888888888888888888888888888888888888888888
        8888888888888888888888888888888888888888888888888888888888888888
        8800888888880D298888882413005688888868004574888882001C00126A8831
        000032886118000F230000008800250050008888005941130000000000157A88
        8888888888888888888888888888888888888888888888888888888888888888
        8888888888888888888888888888888888888888888888888888888888888888
        8800888172725A004A883D00623B007F88886D004A8866678883886887888888
        7378888888886A7B82192B828883886F887F88887F888883886A888869888888
        8888888888888888888888888888888888888888888888888888888888888888
        8888888888888888888888888888888888888888888888888888888888888888
        8800883A000000000C610046888819188888883F010007458888888888888888
        8888888888888888883A44888888888888888888888888888888888888888888
        8888888888888888888888888888888888888888888888888888888888888888
        8888888888888888888888888888888888888888888888888888888888888888
        8800888888888888888888888888888888888888887B88888888888888888888
        8888888888888888888888888888888888888888888888888888888888888888
        8888888888888888888888888888888888888888888888888888888888888888
        8888888888888888888888888888888888888888888888888888888888888888
        8800880101010101010101010101010101010101010101018888010101888801
        0101888888888888888888888888888888010101880101010101010101010101
        0101010101010101010101888801010188880101010101010101010101010101
        0101010101010188880101018888010101888888888888888888888888888888
        8800880101010101010101010101010101010101010101018888010101888801
        0101888888888888888888888888888888010101880101010101010101010101
        0101010101010101010101888801010188880101010101010101010101010101
        0101010101010188880101018888010101888888888888888888888888888888
        8800880101010101010101010101010101010101010101018888010101888801
        0101888888888888888888888888888888010101880101010101010101010101
        0101010101010101010101888801010188880101010101010101010101010101
        0101010101010188880101018888010101888888888888888888888888888888
        8800888888888888888888888888888888888888880101018888010101888801
        0101888888888888888888888888888888010101880101010188888888888888
        8888888888888888888888888801010188880101018888888888888888888888
        8888880101010188880101018888010101888888888888888888888888888888
        8800888888888888888888888888888888888888880101018888010101888801
        0101888888888888888888888888888888010101880101010188888888888888
        8888888888888888888888888801010188880101018888888888888888888888
        8888880101010188880101018888010101888888888888888888888888888888
        8800880101010101010101010101010101010101010101018888010101888801
        0101888888888888888888888888888888010101880101010188888888888888
        8888888888888888888888888801010188880101010101010101010101010101
        0101010101010188880101018888010101888888888888888888888888888888
        8800880101010101010101010101010101010101010101018888010101888801
        0101888888888888888888888888888888010101880101010188888888888888
        8888888888888888888888888801010188880101010101010101010101010101
        0101010101010188880101018888010101888888888888888888888888888888
        8800880101010101010101010101010101010101010101018888010101888801
        0101888888888888888888888888888888010101880101010188888888888888
        8888888888888888888888888801010188880101010101010101010101010101
        0101010101010188880101018888010101888888888888888888888888888888
        8800880101018888888888888888888888888888888888888888010101888801
        0101888888888888888888888888888888010101880101010188888888888888
        8888888888888888888888888801010188888888888888888888888888888888
        8888880101010188880101018888010101888888888888888888888888888888
        8800880101018888888888888888888888888888888888888888010101888801
        0101888888888888888888888888888888010101880101010188888888888888
        8888888888888888888888888801010188888888888888888888888888888888
        8888880101010188880101018888010101888888888888888888888888888888
        8800880101010101010101010101010101010101010101018888010101888801
        0101010101010101010101010101010101010101880101010101010101010101
        0101010101010101010101888801010188880101010101010101010101010101
        0101010101010188880101018888010101010101010101010101010101010101
        0100880101010101010101010101010101010101010101018888010101888801
        0101010101010101010101010101010101010101880101010101010101010101
        0101010101010101010101888801010188880101010101010101010101010101
        0101010101010188880101018888010101010101010101010101010101010101
        0100880101010101010101010101010101010101010101018888010101888801
        0101010101010101010101010101010101010101880101010101010101010101
        0101010101010101010101888801010188880101010101010101010101010101
        0101010101010188880101018888010101010101010101010101010101010101
        0100888888888888888888888888888888888888888888888888888888888888
        8888888888888888888888888888888888888888888888888888888888888888
        8888888888888888888888888801010188888888888888888888888888888888
        8888888888888888888888888888888888888888888888888888888888888888
        8800888888888888888888888888888888888888888888888888010101888888
        8888888888888888888888888888888888888888888888888888888888888888
        8888888888888888888888888801010188888888888888888888888888888888
        8888888888888888880101018888888888888888888888888888888888888888
        8800888888888888888888888888888888888888888888888888010101888888
        8888888888888888888888888888888888888888888888888888888888888888
        8888888888888888888888888801010188888888888888888888888888888888
        8888888888888888880101018888888888888888888888888888888888888888
        8800888888888888888888888888888888888888888888888888010101888888
        8888888888888888888888888888888888888888888888888888888888888888
        8888888888888888888888888801010188888888888888888888888888888888
        8888888888888888880101018888888888888888888888888888888888888888
        8800}
      Transparent = True
    end
  end
end