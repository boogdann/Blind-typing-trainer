﻿object fmMainMenu: TfmMainMenu
  Left = 0
  Top = 0
  Caption = 'Blind typing  trainer'
  ClientHeight = 443
  ClientWidth = 442
  Color = clCream
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Visible = True
  PixelsPerInch = 96
  TextHeight = 13
  object btnMainGame: TButton
    Left = 152
    Top = 160
    Width = 115
    Height = 41
    Caption = #1048#1075#1088#1072#1090#1100
    TabOrder = 0
    OnClick = btnMainGameClick
  end
  object Правила: TButton
    Left = 152
    Top = 224
    Width = 115
    Height = 41
    Caption = #1055#1088#1072#1074#1080#1083#1072
    TabOrder = 1
    OnClick = ПравилаClick
  end
  object dtnExit: TButton
    Left = 152
    Top = 288
    Width = 115
    Height = 41
    Caption = #1042#1099#1093#1086#1076
    TabOrder = 2
    OnClick = dtnExitClick
  end
  object StatusBar1: TStatusBar
    Left = 0
    Top = 424
    Width = 442
    Height = 19
    Panels = <>
    ExplicitLeft = 232
    ExplicitTop = 232
    ExplicitWidth = 0
  end
  object ToolBar1: TToolBar
    Left = 0
    Top = 0
    Width = 442
    Height = 29
    Caption = 'ToolBar1'
    TabOrder = 4
  end
  object Button1: TButton
    Left = 328
    Top = 392
    Width = 106
    Height = 26
    Caption = #1054' '#1088#1072#1079#1088#1072#1073#1086#1090#1095#1080#1082#1072#1093
    TabOrder = 5
  end
end
