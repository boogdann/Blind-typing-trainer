object fmMainLogic: TfmMainLogic
  Left = 0
  Top = 0
  Caption = 'Blind typing trainer'
  ClientHeight = 459
  ClientWidth = 505
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object memoStringOutput: TMemo
    Left = 32
    Top = 32
    Width = 409
    Height = 41
    Lines.Strings = (
      '')
    ReadOnly = True
    TabOrder = 0
  end
  object edtStringFromUser: TEdit
    Left = 32
    Top = 128
    Width = 409
    Height = 21
    TabOrder = 1
    TextHint = #1042#1074#1077#1076#1080#1090#1077' '#1089#1090#1088#1086#1082#1091
    OnKeyPress = edtStringFromUserKeyPress
  end
end
