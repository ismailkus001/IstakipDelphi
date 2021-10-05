inherited FormGiris: TFormGiris
  Caption = 'Kullanici Giri'#351
  OnCloseQuery = FormCloseQuery
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel [0]
    Left = 183
    Top = 127
    Width = 107
    Height = 19
    Caption = 'Kullanici Adi:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label2: TLabel [1]
    Left = 246
    Top = 163
    Width = 44
    Height = 19
    Caption = #350'ifre:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object cxKullaniciAdi: TcxTextEdit [2]
    Left = 296
    Top = 124
    ParentFont = False
    Style.Font.Charset = DEFAULT_CHARSET
    Style.Font.Color = clWindowText
    Style.Font.Height = -16
    Style.Font.Name = 'Tahoma'
    Style.Font.Style = [fsBold]
    Style.IsFontAssigned = True
    TabOrder = 0
    OnKeyDown = cxKullaniciAdiKeyDown
    Width = 121
  end
  object cxSifre: TcxTextEdit [3]
    Left = 296
    Top = 157
    ParentFont = False
    Properties.EchoMode = eemPassword
    Properties.PasswordChar = '*'
    Style.Font.Charset = DEFAULT_CHARSET
    Style.Font.Color = clWindowText
    Style.Font.Height = -16
    Style.Font.Name = 'Tahoma'
    Style.Font.Style = [fsBold]
    Style.IsFontAssigned = True
    TabOrder = 1
    OnKeyDown = cxSifreKeyDown
    Width = 121
  end
  object BtnGiris: TBitBtn [4]
    Left = 264
    Top = 220
    Width = 83
    Height = 49
    Caption = 'Giri'#351
    TabOrder = 2
    OnClick = BtnGirisClick
  end
  object BtnCikis: TBitBtn [5]
    Left = 353
    Top = 220
    Width = 84
    Height = 49
    Caption = #199#305'k'#305#351
    TabOrder = 3
    OnClick = BtnCikisClick
  end
  inherited ActionList1: TActionList
    object ActionEnter: TAction
      ShortCut = 13
    end
  end
end
