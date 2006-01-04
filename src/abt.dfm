object Form2: TForm2
  Left = 270
  Top = 204
  Width = 415
  Height = 424
  Caption = 'About The JA Save Generator'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  FormStyle = fsStayOnTop
  OldCreateOrder = False
  OnClose = FormClose
  PixelsPerInch = 96
  TextHeight = 13
  object RichEdit1: TRichEdit
    Left = 16
    Top = 16
    Width = 387
    Height = 345
    BorderStyle = bsNone
    Color = clBtnFace
    Lines.Strings = (
      ' v1.2.0   Started December 2005, finished January 2006'
      ''
      
        'Generates an inital save game for the 1994 tactical role-playing' +
        ' game Jagged '
      'Alliance, adding some replay value to the game.'
      ''
      ''
      
        'This program was programmed independantly of the creators of Jag' +
        'ged Aliance '
      
        'and the author claims no ownership of any aspect of the Jagged A' +
        'lliance Game.'
      ''
      'Jagged Alliance is Copyright '#169' 1994 Sir-tech Software, Inc.'
      ''
      'This program is Copyright '#169' 2006 Brendan Gray'
      ''
      
        'This program is free software: you can redistribute it and/or mo' +
        'dify'
      
        'it under the terms of the GNU General Public License as publishe' +
        'd by'
      
        'the Free Software Foundation, either version 3 of the License, o' +
        'r'
      '(at your option) any later version.'
      ''
      'This program is distributed in the hope that it will be useful,'
      'but WITHOUT ANY WARRANTY; without even the implied warranty of'
      'MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the'
      'GNU General Public License for more details.'
      ''
      
        'You should have received a copy of the GNU General Public Licens' +
        'e'
      
        'along with this program.  If not, see http://www.gnu.org/license' +
        's/.')
    ReadOnly = True
    TabOrder = 0
    WordWrap = False
  end
  object Button1: TButton
    Left = 152
    Top = 344
    Width = 75
    Height = 25
    Caption = 'OK'
    TabOrder = 1
    OnClick = Button1Click
  end
end
