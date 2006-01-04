object Form1: TForm1
  Left = 375
  Top = 248
  BorderStyle = bsSingle
  Caption = #171'D754'#187' Ultimate Jagged Alliance Initial Save Game Generator'
  ClientHeight = 534
  ClientWidth = 800
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  Menu = MainMenu1
  OldCreateOrder = False
  OnCreate = Button3Click
  PixelsPerInch = 96
  TextHeight = 13
  object Bevel2: TBevel
    Left = 160
    Top = 272
    Width = 282
    Height = 90
  end
  object Label1: TLabel
    Left = 226
    Top = 91
    Width = 29
    Height = 13
    Caption = 'Salary'
  end
  object Label2: TLabel
    Left = 200
    Top = 131
    Width = 31
    Height = 13
    Caption = 'Health'
  end
  object Label3: TLabel
    Left = 204
    Top = 155
    Width = 27
    Height = 13
    Caption = 'Agility'
  end
  object Label4: TLabel
    Left = 209
    Top = 179
    Width = 22
    Height = 13
    Caption = 'Dex.'
  end
  object Label5: TLabel
    Left = 193
    Top = 203
    Width = 38
    Height = 13
    Caption = 'Wisdom'
  end
  object Label7: TLabel
    Left = 330
    Top = 131
    Width = 37
    Height = 13
    Caption = 'Medical'
  end
  object Label8: TLabel
    Left = 344
    Top = 155
    Width = 23
    Height = 13
    Caption = 'Expl.'
  end
  object Label9: TLabel
    Left = 337
    Top = 179
    Width = 30
    Height = 13
    Caption = 'Mech.'
  end
  object Label10: TLabel
    Left = 335
    Top = 203
    Width = 32
    Height = 13
    Caption = 'Marks.'
  end
  object Label11: TLabel
    Left = 326
    Top = 91
    Width = 17
    Height = 13
    Caption = 'Lvl.'
  end
  object Label6: TLabel
    Left = 203
    Top = 21
    Width = 36
    Height = 13
    Caption = 'Field ID'
  end
  object Label12: TLabel
    Left = 170
    Top = 51
    Width = 47
    Height = 13
    Caption = 'Full Name'
  end
  object Accuracy: TLabel
    Left = 322
    Top = 283
    Width = 45
    Height = 13
    Caption = 'Accuracy'
  end
  object Label13: TLabel
    Left = 322
    Top = 307
    Width = 49
    Height = 13
    Caption = 'Bomb Skill'
  end
  object Label14: TLabel
    Left = 170
    Top = 283
    Width = 63
    Height = 13
    Caption = 'Repair Points'
  end
  object Label15: TLabel
    Left = 170
    Top = 307
    Width = 64
    Height = 13
    Caption = 'Doctor Points'
  end
  object Label16: TLabel
    Left = 170
    Top = 331
    Width = 55
    Height = 13
    Caption = 'Door Points'
  end
  object Label17: TLabel
    Left = 202
    Top = 243
    Width = 62
    Height = 13
    Caption = 'Action Points'
  end
  object Label18: TLabel
    Left = 330
    Top = 243
    Width = 20
    Height = 13
    Caption = 'Max'
  end
  object Label19: TLabel
    Left = 274
    Top = 243
    Width = 17
    Height = 13
    Caption = 'Min'
  end
  object Bevel1: TBevel
    Left = 160
    Top = 368
    Width = 281
    Height = 137
  end
  object Label20: TLabel
    Left = 325
    Top = 331
    Width = 39
    Height = 13
    Caption = '% Doors'
  end
  object Bevel3: TBevel
    Left = 192
    Top = 232
    Width = 209
    Height = 34
  end
  object Bevel4: TBevel
    Left = 184
    Top = 120
    Width = 233
    Height = 106
  end
  object Bevel5: TBevel
    Left = 216
    Top = 80
    Width = 169
    Height = 34
  end
  object Bevel6: TBevel
    Left = 160
    Top = 8
    Width = 281
    Height = 66
  end
  object Label21: TLabel
    Left = 346
    Top = 515
    Width = 449
    Height = 13
    Caption = 
      'The Jagged Alliance Save Generator. V1.2.0 12/2005-01/2006      ' +
      '         '#169' 2006 Brendan Gray'
  end
  object ListBox1: TListBox
    Left = 8
    Top = 8
    Width = 145
    Height = 497
    ItemHeight = 13
    ScrollWidth = 1
    TabOrder = 0
    OnClick = ListBox1Click
  end
  object ews: TEdit
    Left = 240
    Top = 200
    Width = 33
    Height = 21
    TabOrder = 8
    Text = '100'
  end
  object edx: TEdit
    Left = 240
    Top = 176
    Width = 33
    Height = 21
    TabOrder = 7
    Text = '100'
  end
  object ehl: TEdit
    Left = 240
    Top = 128
    Width = 33
    Height = 21
    TabOrder = 5
    Text = '100'
  end
  object eag: TEdit
    Left = 240
    Top = 152
    Width = 33
    Height = 21
    TabOrder = 6
    Text = '100'
  end
  object emk: TEdit
    Left = 376
    Top = 200
    Width = 33
    Height = 21
    TabOrder = 12
    Text = '100'
  end
  object emc: TEdit
    Left = 376
    Top = 176
    Width = 33
    Height = 21
    TabOrder = 11
    Text = '100'
  end
  object emd: TEdit
    Left = 376
    Top = 128
    Width = 33
    Height = 21
    TabOrder = 9
    Text = '100'
  end
  object eex: TEdit
    Left = 376
    Top = 152
    Width = 33
    Height = 21
    TabOrder = 10
    Text = '100'
  end
  object elv: TEdit
    Left = 352
    Top = 88
    Width = 17
    Height = 21
    TabOrder = 4
    Text = '9'
  end
  object esal: TEdit
    Left = 264
    Top = 88
    Width = 41
    Height = 21
    TabOrder = 3
    Text = '65536'
  end
  object eid: TEdit
    Left = 248
    Top = 16
    Width = 113
    Height = 24
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 1
    Text = 'Name'
  end
  object RichEdit1: TRichEdit
    Left = 448
    Top = 8
    Width = 345
    Height = 497
    TabStop = False
    Color = clBlack
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clLime
    Font.Height = -12
    Font.Name = 'System'
    Font.Style = []
    ParentFont = False
    PlainText = True
    ReadOnly = True
    TabOrder = 18
  end
  object Button3: TButton
    Left = 304
    Top = 440
    Width = 129
    Height = 25
    Caption = 'Reset all profiles'
    TabOrder = 13
    OnClick = Button3Click
  end
  object ename: TEdit
    Left = 224
    Top = 48
    Width = 209
    Height = 21
    TabOrder = 2
    Text = 'Name'
  end
  object acc: TEdit
    Left = 376
    Top = 280
    Width = 54
    Height = 21
    TabStop = False
    TabOrder = 19
    Text = '100'
  end
  object bom: TEdit
    Left = 376
    Top = 304
    Width = 54
    Height = 21
    TabStop = False
    TabOrder = 20
    Text = '100'
  end
  object RP: TEdit
    Left = 240
    Top = 280
    Width = 46
    Height = 21
    TabStop = False
    TabOrder = 21
    Text = '100'
  end
  object DP: TEdit
    Left = 240
    Top = 304
    Width = 46
    Height = 21
    TabStop = False
    TabOrder = 22
    Text = '100'
  end
  object door: TEdit
    Left = 232
    Top = 328
    Width = 62
    Height = 21
    TabStop = False
    TabOrder = 23
    Text = '100'
  end
  object Button1: TButton
    Left = 168
    Top = 408
    Width = 129
    Height = 25
    Caption = 'Recalculate Statistics'
    TabOrder = 16
    OnClick = Button1Click
  end
  object ap: TEdit
    Left = 296
    Top = 240
    Width = 25
    Height = 21
    TabStop = False
    TabOrder = 24
    Text = '20'
  end
  object apmax: TEdit
    Left = 368
    Top = 240
    Width = 25
    Height = 21
    TabStop = False
    TabOrder = 25
    Text = '25'
  end
  object Button2: TButton
    Left = 304
    Top = 472
    Width = 129
    Height = 25
    Caption = 'Write '#39'GAME0.SAV'#39
    TabOrder = 17
    OnClick = Button2Click
  end
  object Button4: TButton
    Left = 168
    Top = 472
    Width = 129
    Height = 25
    Caption = 'Set Values'
    TabOrder = 15
    OnClick = Button4Click
  end
  object Button5: TButton
    Left = 168
    Top = 440
    Width = 129
    Height = 25
    Caption = 'Undo this Merc'
    TabOrder = 14
    OnClick = Button5Click
  end
  object pdr: TEdit
    Left = 376
    Top = 328
    Width = 54
    Height = 21
    TabStop = False
    TabOrder = 26
    Text = '100'
  end
  object Button6: TButton
    Left = 168
    Top = 376
    Width = 129
    Height = 25
    Caption = 'Randomize All Mercs'
    TabOrder = 27
    OnClick = Button6Click
  end
  object Button7: TButton
    Left = 304
    Top = 376
    Width = 129
    Height = 25
    Caption = 'Save'
    TabOrder = 28
    OnClick = Button7Click
  end
  object Button8: TButton
    Left = 304
    Top = 408
    Width = 129
    Height = 25
    Caption = 'Open'
    TabOrder = 29
    OnClick = Button8Click
  end
  object MainMenu1: TMainMenu
    Left = 408
    Top = 81
    object File1: TMenuItem
      Caption = 'File'
      object Save1: TMenuItem
        Caption = 'Open'
        OnClick = Save1Click
      end
      object Save2: TMenuItem
        Caption = 'Save'
        OnClick = Save2Click
      end
      object N2: TMenuItem
        Caption = '-'
      end
      object Exit1: TMenuItem
        Caption = 'Exit'
      end
    end
    object Edit1: TMenuItem
      Caption = 'Edit'
      object ResetMerc1: TMenuItem
        Caption = 'Undo Changes'
        OnClick = ResetMerc1Click
      end
      object ResetAll1: TMenuItem
        Caption = 'Reset All'
        OnClick = ResetAll1Click
      end
      object N1: TMenuItem
        Caption = '-'
      end
      object SetValues1: TMenuItem
        Caption = 'Set Values'
        OnClick = SetValues1Click
      end
    end
    object Salary1: TMenuItem
      Caption = 'Jagged Alliance'
      object Autoadjustsalary1: TMenuItem
        Caption = 'Auto-adjust salary'
        OnClick = Autoadjustsalary1Click
      end
      object Randomize1: TMenuItem
        Caption = 'Randomize Mercs'
        OnClick = Randomize1Click
      end
      object MaxAllStats1: TMenuItem
        Caption = 'Max All Stats'
        OnClick = MaxAllStats1Click
      end
      object N3: TMenuItem
        Caption = '-'
      end
      object RecalculateStatistics1: TMenuItem
        Caption = 'Recalculate Statistics'
        OnClick = RecalculateStatistics1Click
      end
      object N4: TMenuItem
        Caption = '-'
      end
      object GenerateSaveFile1: TMenuItem
        Caption = 'Generate Save File'
        OnClick = GenerateSaveFile1Click
      end
    end
    object Help1: TMenuItem
      Caption = 'Help'
      object About1: TMenuItem
        Caption = 'About'
        OnClick = About1Click
      end
    end
  end
  object OpenDialog1: TOpenDialog
    DefaultExt = 'jas'
    Filter = 'Save Generator Project (*.jas)|*.jas'
    Left = 408
    Top = 409
  end
  object SaveDialog1: TSaveDialog
    DefaultExt = 'jas'
    Filter = 'Save Generator Project (*.jas)|*.jas'
    Left = 408
    Top = 377
  end
  object XPManifest1: TXPManifest
    Left = 168
    Top = 81
  end
end
