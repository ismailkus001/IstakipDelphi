inherited FormIsEkle: TFormIsEkle
  Caption = #304#351' ekle'
  ClientHeight = 384
  ClientWidth = 543
  Position = poMainFormCenter
  OnCloseQuery = FormCloseQuery
  OnCreate = FormCreate
  ExplicitWidth = 559
  ExplicitHeight = 423
  PixelsPerInch = 96
  TextHeight = 13
  object Label2: TLabel [0]
    Left = 25
    Top = 77
    Width = 24
    Height = 13
    Caption = 'Tarih'
    FocusControl = cxDBDateEdit1
  end
  object Label3: TLabel [1]
    Left = 8
    Top = 109
    Width = 41
    Height = 13
    Caption = 'Aciklama'
  end
  object Label4: TLabel [2]
    Left = 15
    Top = 234
    Width = 34
    Height = 13
    Caption = 'Oncelik'
  end
  object cxDBDateEdit1: TcxDBDateEdit [3]
    Left = 55
    Top = 74
    DataBinding.DataField = 'Tarih'
    DataBinding.DataSource = DSIsEkleMaster
    TabOrder = 0
    Width = 121
  end
  object cxDBMemo1: TcxDBMemo [4]
    Left = 55
    Top = 101
    DataBinding.DataField = 'Aciklama'
    DataBinding.DataSource = DSIsEkleMaster
    TabOrder = 1
    Height = 114
    Width = 210
  end
  object cxDBComboBox1: TcxDBComboBox [5]
    Left = 55
    Top = 231
    DataBinding.DataField = 'Oncelik'
    DataBinding.DataSource = DSIsEkleMaster
    ParentFont = False
    Properties.DropDownListStyle = lsEditFixedList
    Properties.Items.Strings = (
      'D'#220#350#220'K'
      'NORMAL'
      'Y'#220'KSEK'
      'AC'#304'L')
    Style.Font.Charset = DEFAULT_CHARSET
    Style.Font.Color = clWindowText
    Style.Font.Height = -11
    Style.Font.Name = 'Tahoma'
    Style.Font.Style = [fsBold]
    Style.IsFontAssigned = True
    TabOrder = 2
    Width = 121
  end
  object cxDBNavigator1: TcxDBNavigator [6]
    Left = 55
    Top = 273
    Width = 210
    Height = 48
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
    DataSource = DSIsEkleMaster
    TabOrder = 3
  end
  object cxGrid1: TcxGrid [7]
    Left = 366
    Top = 77
    Width = 169
    Height = 220
    TabOrder = 4
    OnEnter = cxGrid1Enter
    object cxGrid1DBTableView1: TcxGridDBTableView
      Navigator.Buttons.CustomButtons = <>
      Navigator.Buttons.First.Visible = False
      Navigator.Buttons.PriorPage.Visible = False
      Navigator.Buttons.Prior.Visible = False
      Navigator.Buttons.Next.Visible = False
      Navigator.Buttons.NextPage.Visible = False
      Navigator.Buttons.Last.Visible = False
      Navigator.Buttons.Delete.Visible = True
      Navigator.Buttons.Edit.Visible = False
      Navigator.Buttons.Cancel.Visible = True
      Navigator.Buttons.Refresh.Visible = False
      Navigator.Buttons.SaveBookmark.Visible = False
      Navigator.Buttons.GotoBookmark.Visible = False
      Navigator.Buttons.Filter.Visible = False
      Navigator.Visible = True
      DataController.DataSource = DSSorumlular
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
      OptionsData.Appending = True
      OptionsSelection.InvertSelect = False
      OptionsView.NoDataToDisplayInfoText = ' '
      OptionsView.CellAutoHeight = True
      OptionsView.GroupByBox = False
      OptionsView.HeaderAutoHeight = True
      OptionsView.Indicator = True
      object cxGrid1DBTableView1Sorumlu: TcxGridDBColumn
        DataBinding.FieldName = 'Sorumlu'
        PropertiesClassName = 'TcxLookupComboBoxProperties'
        Properties.KeyFieldNames = 'KullaniciNo'
        Properties.ListColumns = <
          item
            FieldName = 'KullaniciNo'
          end>
        Properties.ListOptions.ShowHeader = False
        Properties.ListSource = DSKullanicilar
        HeaderAlignmentHorz = taCenter
        Width = 149
      end
    end
    object cxGrid1Level1: TcxGridLevel
      GridView = cxGrid1DBTableView1
    end
  end
  inherited ActionList1: TActionList
    Left = 328
    Top = 32
  end
  object QIsEkleMaster: TADOQuery
    Connection = DM.ADOConnection1
    CursorType = ctStatic
    AfterInsert = QIsEkleMasterAfterInsert
    BeforePost = QIsEkleMasterBeforePost
    AfterCancel = QIsEkleMasterAfterCancel
    Parameters = <>
    SQL.Strings = (
      'Select *from IsTakipMaster where 1=2')
    Left = 312
    Top = 96
    object QIsEkleMasterid: TAutoIncField
      FieldName = 'id'
      ReadOnly = True
    end
    object QIsEkleMasterTarih: TDateTimeField
      FieldName = 'Tarih'
    end
    object QIsEkleMasterAciklama: TStringField
      FieldName = 'Aciklama'
      Size = 500
    end
    object QIsEkleMasterOncelik: TStringField
      FieldName = 'Oncelik'
      Size = 15
    end
    object QIsEkleMasterIsiveren: TStringField
      FieldName = 'Isiveren'
      Size = 15
    end
    object QIsEkleMasterBitti: TBooleanField
      FieldName = 'Bitti'
    end
  end
  object DSIsEkleMaster: TDataSource
    DataSet = QIsEkleMaster
    Left = 448
    Top = 24
  end
  object QSorumlular: TADOQuery
    Connection = DM.ADOConnection1
    CursorType = ctStatic
    BeforePost = QSorumlularBeforePost
    Parameters = <>
    SQL.Strings = (
      'Select *from IsTakipSorumlular where 1=2')
    Left = 64
    Top = 24
    object QSorumlularid: TAutoIncField
      FieldName = 'id'
      ReadOnly = True
    end
    object QSorumlularMasterid: TIntegerField
      FieldName = 'Masterid'
    end
    object QSorumlularSorumlu: TStringField
      FieldName = 'Sorumlu'
      Size = 15
    end
  end
  object DSSorumlular: TDataSource
    DataSet = QSorumlular
    Left = 104
    Top = 24
  end
  object QKullanicilar: TADOQuery
    Connection = DM.ADOConnection1
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select *from Kullanicilar order by KullaniciNo ')
    Left = 352
    Top = 336
    object QKullanicilarid: TAutoIncField
      FieldName = 'id'
      ReadOnly = True
    end
    object QKullanicilarKullaniciNo: TStringField
      FieldName = 'KullaniciNo'
      Size = 15
    end
    object QKullanicilarKullaniciAdi: TStringField
      FieldName = 'KullaniciAdi'
      Size = 30
    end
    object QKullanicilarKullaniciSifre: TStringField
      FieldName = 'KullaniciSifre'
      Size = 30
    end
  end
  object DSKullanicilar: TDataSource
    DataSet = QKullanicilar
    Left = 408
    Top = 336
  end
end
