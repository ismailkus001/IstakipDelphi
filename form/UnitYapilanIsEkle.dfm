inherited FormYapilanIsEkle: TFormYapilanIsEkle
  Caption = 'Yap'#305'lan '#304#351' Ekle'
  ClientHeight = 287
  ClientWidth = 399
  OnShow = FormShow
  ExplicitWidth = 415
  ExplicitHeight = 326
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel [0]
    Left = 26
    Top = 67
    Width = 43
    Height = 19
    Caption = 'Tarih'
    FocusControl = cxDBDateEdit1
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label2: TLabel [1]
    Left = 9
    Top = 94
    Width = 75
    Height = 19
    Caption = 'Aciklama'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label3: TLabel [2]
    Left = 13
    Top = 189
    Width = 64
    Height = 19
    Caption = 'Durumu'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object cxDBDateEdit1: TcxDBDateEdit [3]
    Left = 90
    Top = 69
    DataBinding.DataField = 'Tarih'
    DataBinding.DataSource = DSYapilanMaster
    Style.TextStyle = [fsBold]
    TabOrder = 0
    Width = 185
  end
  object cxDBMemo1: TcxDBMemo [4]
    Left = 90
    Top = 96
    DataBinding.DataField = 'Aciklama'
    DataBinding.DataSource = DSYapilanMaster
    Style.TextStyle = [fsBold]
    TabOrder = 1
    Height = 89
    Width = 185
  end
  object cxDBComboBox1: TcxDBComboBox [5]
    Left = 90
    Top = 191
    DataBinding.DataField = 'Durumu'
    DataBinding.DataSource = DSYapilanMaster
    Properties.DropDownListStyle = lsEditFixedList
    Properties.Items.Strings = (
      'DEVAM ED'#304'YOR'
      'TAMAMLANDI')
    Style.TextStyle = [fsBold]
    TabOrder = 2
    Width = 185
  end
  object cxDBNavigator1: TcxDBNavigator [6]
    Left = 90
    Top = 231
    Width = 188
    Height = 34
    Buttons.CustomButtons = <>
    Buttons.First.Visible = False
    Buttons.PriorPage.Visible = False
    Buttons.Prior.Visible = False
    Buttons.Next.Visible = False
    Buttons.NextPage.Visible = False
    Buttons.Last.Visible = False
    Buttons.Insert.Visible = False
    Buttons.Delete.Visible = False
    Buttons.Edit.Visible = False
    Buttons.Post.Visible = True
    Buttons.Refresh.Visible = False
    Buttons.SaveBookmark.Visible = False
    Buttons.GotoBookmark.Visible = False
    Buttons.Filter.Visible = False
    DataSource = DSYapilanMaster
    TabOrder = 3
  end
  inherited ActionList1: TActionList
    Left = 288
    Top = 96
  end
  object QYapilanMaster: TADOQuery
    Connection = DM.ADOConnection1
    CursorType = ctStatic
    AfterInsert = QYapilanMasterAfterInsert
    BeforePost = QYapilanMasterBeforePost
    AfterPost = QYapilanMasterAfterPost
    Parameters = <>
    SQL.Strings = (
      'select *from istakipDetay where 1=2')
    Left = 208
    Top = 8
    object QYapilanMasterid: TAutoIncField
      FieldName = 'id'
      ReadOnly = True
    end
    object QYapilanMasterMasterid: TIntegerField
      FieldName = 'Masterid'
    end
    object QYapilanMasterTarih: TDateTimeField
      FieldName = 'Tarih'
    end
    object QYapilanMasterAciklama: TStringField
      FieldName = 'Aciklama'
      Size = 500
    end
    object QYapilanMasterDurumu: TStringField
      FieldName = 'Durumu'
    end
    object QYapilanMasterSorumlu: TStringField
      FieldName = 'Sorumlu'
      Size = 15
    end
  end
  object DSYapilanMaster: TDataSource
    DataSet = QYapilanMaster
    Left = 328
    Top = 16
  end
end
