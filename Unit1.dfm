object Form1: TForm1
  Left = 204
  Top = 119
  Width = 256
  Height = 298
  Caption = 'Freddo'#39's Bitrate Calculator'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object PageControl1: TPageControl
    Left = 0
    Top = 0
    Width = 247
    Height = 263
    ActivePage = TabSheet1
    TabIndex = 0
    TabOrder = 0
    object TabSheet1: TTabSheet
      Caption = 'Calculate'
      object GroupBox1: TGroupBox
        Left = 0
        Top = 0
        Width = 239
        Height = 45
        Caption = 'Lenght Of The Film'
        TabOrder = 0
        object Label8: TLabel
          Left = 170
          Top = 20
          Width = 6
          Height = 13
          Caption = 'h'
        end
        object Label9: TLabel
          Left = 214
          Top = 20
          Width = 16
          Height = 13
          Caption = 'min'
        end
        object Label10: TLabel
          Left = 26
          Top = 20
          Width = 18
          Height = 13
          Caption = 'or...'
        end
        object Label11: TLabel
          Left = 91
          Top = 20
          Width = 16
          Height = 13
          Caption = 'min'
        end
        object Edit1: TEdit
          Left = 130
          Top = 16
          Width = 33
          Height = 21
          TabOrder = 0
          Text = '1'
        end
        object Edit3: TEdit
          Left = 178
          Top = 16
          Width = 33
          Height = 21
          TabOrder = 1
          Text = '56'
        end
        object Edit6: TEdit
          Left = 46
          Top = 16
          Width = 41
          Height = 21
          TabOrder = 2
          Text = '116'
        end
        object RadioButton1: TRadioButton
          Left = 114
          Top = 20
          Width = 13
          Height = 17
          Caption = 'RadioButton1'
          TabOrder = 3
          OnClick = RadioButton1Click
        end
        object RadioButton2: TRadioButton
          Left = 10
          Top = 20
          Width = 17
          Height = 17
          Caption = 'RadioButton1'
          TabOrder = 4
          OnClick = RadioButton2Click
        end
      end
      object GroupBox2: TGroupBox
        Left = 0
        Top = 44
        Width = 239
        Height = 41
        Caption = 'File Size'
        TabOrder = 1
        object Label6: TLabel
          Left = 150
          Top = 22
          Width = 18
          Height = 13
          Caption = 'or...'
        end
        object Label7: TLabel
          Left = 211
          Top = 22
          Width = 16
          Height = 13
          Caption = 'MB'
        end
        object RadioButton3: TRadioButton
          Left = 10
          Top = 18
          Width = 15
          Height = 17
          Caption = 'RadioButton3'
          TabOrder = 0
          OnClick = RadioButton3Click
        end
        object ComboBox2: TComboBox
          Left = 26
          Top = 14
          Width = 103
          Height = 21
          Style = csDropDownList
          ItemHeight = 13
          TabOrder = 1
          OnChange = ComboBox2Change
          Items.Strings = (
            '1 CD (1 x 650)'
            '1 CD (1 x 700)'
            '2 CDs (2 x 650)'
            '2 CDs (2 x 700)'
            '3 CDs (3 x 650)'
            '3 CDs (3 x 700)'
            '4 CDs (4 x 650)'
            '4 CDs (4 x 700)')
        end
        object RadioButton4: TRadioButton
          Left = 134
          Top = 18
          Width = 15
          Height = 17
          Caption = 'RadioButton3'
          TabOrder = 2
          OnClick = RadioButton4Click
        end
        object Edit2: TEdit
          Left = 170
          Top = 14
          Width = 41
          Height = 21
          TabOrder = 3
          Text = '650'
        end
      end
      object GroupBox3: TGroupBox
        Left = 0
        Top = 86
        Width = 239
        Height = 41
        Caption = 'Sound Quality'
        TabOrder = 2
        object ComboBox1: TComboBox
          Left = 12
          Top = 14
          Width = 215
          Height = 21
          Style = csDropDownList
          ItemHeight = 13
          TabOrder = 0
          OnChange = ComboBox1Change
          Items.Strings = (
            '320 kBit/sec, Stereo - 40kb/sec'
            '256 kBit/sec, Stereo - 32kb/sec'
            '224 kBit/sec, Stereo - 28kb/sec'
            '192 kBit/sec, Stereo - 24kb/sec'
            '160 kBit/sec, Stereo - 20kb/sec'
            '128 kBit/sec, Stereo - 16kb/sec'
            '112 kBit/sec, Stereo - 14kb/sec'
            '96 kBit/sec, Stereo - 12kb/sec'
            '64 kBit/sec, Stereo - 8kb/sec'
            '56 kBit/sec, Stereo - 7kb/sec')
        end
      end
      object GroupBox4: TGroupBox
        Left = 0
        Top = 128
        Width = 239
        Height = 69
        Caption = 'Sound Quality'
        TabOrder = 3
        object Label4: TLabel
          Left = 8
          Top = 22
          Width = 52
          Height = 13
          Caption = 'Encode at:'
        end
        object Label5: TLabel
          Left = 8
          Top = 48
          Width = 74
          Height = 13
          Caption = 'Each part secs:'
        end
        object Label1: TLabel
          Left = 150
          Top = 22
          Width = 41
          Height = 13
          Caption = 'KBit/sec'
        end
        object Memo1: TMemo
          Left = 66
          Top = 18
          Width = 79
          Height = 21
          TabOrder = 0
        end
        object Memo2: TMemo
          Left = 88
          Top = 44
          Width = 79
          Height = 21
          Lines.Strings = (
            '')
          TabOrder = 1
        end
      end
      object Button1: TButton
        Left = 0
        Top = 200
        Width = 239
        Height = 35
        Caption = 'Calculate'
        TabOrder = 4
        OnClick = Button1Click
      end
    end
    object TabSheet2: TTabSheet
      Caption = 'Help'
      ImageIndex = 1
      object Memo3: TMemo
        Left = 2
        Top = 2
        Width = 233
        Height = 231
        Color = clActiveBorder
        Lines.Strings = (
          'Some help information:'
          ''
          'This program will calculate the bitrate to use '
          'when encoding a MPEG1 video.'
          ''
          'The programme was tested in FlaskMpeg '
          'with Frame Size 320x240, time base (fps) 25 '
          'and Audio sampling frequency "Same as '
          'input"'
          ''
          '1 CD = 650MB = 665600KB'
          ''
          'Legal Stuff:'
          ''
          'You may run this program at your own risk! If '
          'it completely destroys your computer or '
          'something like that, don'#39't blame me! I have '
          'not added any functions into this program '
          'that is harmful to your computer, but if you '
          'get a virus when running this program, as I '
          'mentioned before:'
          'DON'#39'T BLAME ME!')
        ReadOnly = True
        ScrollBars = ssVertical
        TabOrder = 0
      end
    end
    object TabSheet3: TTabSheet
      Caption = 'About'
      ImageIndex = 2
      object Label2: TLabel
        Left = 84
        Top = 158
        Width = 120
        Height = 13
        Cursor = crHandPoint
        Caption = 's99051@math.aegean.gr'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlue
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsUnderline]
        ParentFont = False
        OnClick = Label2Clichk
      end
      object Label3: TLabel
        Left = 40
        Top = 158
        Width = 28
        Height = 13
        Caption = 'Email:'
      end
      object Label12: TLabel
        Left = 44
        Top = 214
        Width = 155
        Height = 13
        Caption = '#LamersGR - Hell on Undernet!!!'
      end
      object Memo4: TMemo
        Left = 0
        Top = 6
        Width = 239
        Height = 129
        Alignment = taCenter
        BevelOuter = bvNone
        BorderStyle = bsNone
        Color = clBtnFace
        Lines.Strings = (
          'Freddo'#39's Bitrate Calculator For Mpeg1'
          ''
          'Version 1.0'
          'Copyright (C) 2002'
          ''
          'Thank you for using this programme!'
          ''
          'This programme has been tested on WinXP, '
          'WinME, Win98'
          ''
          ''
          ''
          ''
          ''
          '#LamersGR - Hell on Undernet!!!')
        TabOrder = 0
      end
      object WebBrowser1: TWebBrowser
        Left = 47
        Top = 113
        Width = 1
        Height = 1
        TabOrder = 1
        ControlData = {
          4C0000001A0000001A0000000000000000000000000000000000000000000000
          000000004C000000000000000000000001000000E0D057007335CF11AE690800
          2B2E126208000000000000004C0000000114020000000000C000000000000046
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000100000000000000000000000000000000000000}
      end
    end
  end
end
