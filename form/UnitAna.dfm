object FormAna: TFormAna
  Left = 0
  Top = 0
  Caption = 'FormAna'
  ClientHeight = 652
  ClientWidth = 1126
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  WindowState = wsMaximized
  OnCreate = FormCreate
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object cxPage: TcxPageControl
    Left = 0
    Top = 0
    Width = 1126
    Height = 652
    Align = alClient
    Color = clWhite
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentBackground = False
    ParentColor = False
    ParentFont = False
    TabOrder = 0
    Properties.ActivePage = cxTabVerdigim
    Properties.CustomButtons.Buttons = <>
    Properties.Images = cxImageList1
    Properties.Style = 9
    Properties.TabHeight = 40
    Properties.TabWidth = 230
    OnChange = cxPageChange
    ClientRectBottom = 652
    ClientRectRight = 1126
    ClientRectTop = 41
    object cxTabVerdigim: TcxTabSheet
      Caption = 'Verdi'#287'im '#304#351'ler'
      ImageIndex = 0
      object Panel3: TPanel
        Left = 0
        Top = 351
        Width = 1126
        Height = 260
        Align = alBottom
        TabOrder = 0
        object cxGridVerdigimDetay: TcxGrid
          Left = 1
          Top = 42
          Width = 1124
          Height = 217
          Align = alClient
          TabOrder = 0
          OnDragOver = cxGridVerdigimDetayDragOver
          object cxGridVerdigimDetayDBTableView1: TcxGridDBTableView
            Navigator.Buttons.CustomButtons = <>
            DataController.DataSource = DSVerDetay
            DataController.Summary.DefaultGroupSummaryItems = <>
            DataController.Summary.FooterSummaryItems = <>
            DataController.Summary.SummaryGroups = <>
            OptionsCustomize.ColumnsQuickCustomization = True
            OptionsData.CancelOnExit = False
            OptionsData.Deleting = False
            OptionsData.DeletingConfirmation = False
            OptionsData.Editing = False
            OptionsData.Inserting = False
            OptionsView.NoDataToDisplayInfoText = '  '
            OptionsView.CellAutoHeight = True
            OptionsView.GroupByBox = False
            OptionsView.HeaderAutoHeight = True
            OptionsView.Indicator = True
            object cxGridVerdigimDetayDBTableView1id: TcxGridDBColumn
              DataBinding.FieldName = 'id'
              HeaderAlignmentHorz = taCenter
              Width = 58
            end
            object cxGridVerdigimDetayDBTableView1Tarih: TcxGridDBColumn
              Caption = 'Yap'#305'lan i'#351'in tarihi'
              DataBinding.FieldName = 'Tarih'
              HeaderAlignmentHorz = taCenter
              Width = 153
            end
            object cxGridVerdigimDetayDBTableView1Aciklama: TcxGridDBColumn
              Caption = 'Yap'#305'lan i'#351'in a'#231#305'klamas'#305
              DataBinding.FieldName = 'Aciklama'
              HeaderAlignmentHorz = taCenter
              Width = 300
            end
            object cxGridVerdigimDetayDBTableView1Durumu: TcxGridDBColumn
              Caption = #304#351'in durumu'
              DataBinding.FieldName = 'Durumu'
              HeaderAlignmentHorz = taCenter
              Width = 160
            end
            object cxGridVerdigimDetayDBTableView1Sorumlu: TcxGridDBColumn
              DataBinding.FieldName = 'Sorumlu'
              HeaderAlignmentHorz = taCenter
              Width = 158
            end
          end
          object cxGridVerdigimDetayLevel1: TcxGridLevel
            GridView = cxGridVerdigimDetayDBTableView1
          end
        end
        object Panel4: TPanel
          Left = 1
          Top = 1
          Width = 1124
          Height = 41
          Align = alTop
          Caption = 'Yap'#305'lanlar'
          Color = clActiveBorder
          ParentBackground = False
          TabOrder = 1
        end
      end
      object cxGridVerdigim: TcxGrid
        Left = 0
        Top = 0
        Width = 1126
        Height = 351
        Align = alClient
        PopupMenu = PMVerMenu
        TabOrder = 1
        object cxGridVerdigimDBTableView1: TcxGridDBTableView
          Navigator.Buttons.CustomButtons = <>
          OnFocusedRecordChanged = cxGridVerdigimDBTableView1FocusedRecordChanged
          DataController.DataSource = DSVerMaster
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <>
          DataController.Summary.SummaryGroups = <>
          OptionsCustomize.ColumnsQuickCustomization = True
          OptionsData.CancelOnExit = False
          OptionsData.Deleting = False
          OptionsData.DeletingConfirmation = False
          OptionsData.Editing = False
          OptionsData.Inserting = False
          OptionsView.NoDataToDisplayInfoText = ' '
          OptionsView.CellAutoHeight = True
          OptionsView.GroupByBox = False
          OptionsView.HeaderAutoHeight = True
          OptionsView.HeaderHeight = 30
          OptionsView.Indicator = True
          object cxGridVerdigimDBTableView1id: TcxGridDBColumn
            DataBinding.FieldName = 'id'
            HeaderAlignmentHorz = taCenter
          end
          object cxGridVerdigimDBTableView1Tarih: TcxGridDBColumn
            DataBinding.FieldName = 'Tarih'
            HeaderAlignmentHorz = taCenter
            Width = 205
          end
          object cxGridVerdigimDBTableView1Aciklama: TcxGridDBColumn
            DataBinding.FieldName = 'Aciklama'
            HeaderAlignmentHorz = taCenter
            Width = 394
          end
          object cxGridVerdigimDBTableView1Sorumlular: TcxGridDBColumn
            DataBinding.FieldName = 'Sorumlular'
            Width = 150
          end
          object cxGridVerdigimDBTableView1Oncelik: TcxGridDBColumn
            DataBinding.FieldName = 'Oncelik'
            GroupSummaryAlignment = taCenter
            HeaderAlignmentHorz = taCenter
            Width = 197
          end
        end
        object cxGridVerdigimLevel1: TcxGridLevel
          GridView = cxGridVerdigimDBTableView1
        end
      end
    end
    object cxTabYapacagim: TcxTabSheet
      Caption = 'Yapaca'#287#305'm i'#351'ler'
      ImageIndex = 1
      object Panel1: TPanel
        Left = 0
        Top = 309
        Width = 1126
        Height = 302
        Align = alBottom
        TabOrder = 0
        object Panel2: TPanel
          Left = 1
          Top = 1
          Width = 1124
          Height = 42
          Align = alTop
          Caption = 'Yap'#305'lanlar'
          Color = clSilver
          ParentBackground = False
          TabOrder = 0
        end
        object cxGridYapacagimDetay: TcxGrid
          Left = 1
          Top = 43
          Width = 1124
          Height = 258
          Align = alClient
          TabOrder = 1
          object cxGridYapacagimDetayDBTableView1: TcxGridDBTableView
            Navigator.Buttons.CustomButtons = <>
            Navigator.Buttons.First.Visible = False
            Navigator.Buttons.PriorPage.Visible = False
            Navigator.Buttons.Prior.Visible = False
            Navigator.Buttons.Next.Visible = False
            Navigator.Buttons.NextPage.Visible = False
            Navigator.Buttons.Last.Visible = False
            Navigator.Buttons.Insert.Visible = False
            Navigator.Buttons.Edit.Visible = False
            Navigator.Buttons.Post.Visible = False
            Navigator.Buttons.Cancel.Visible = False
            Navigator.Buttons.Refresh.Visible = False
            Navigator.Buttons.SaveBookmark.Visible = False
            Navigator.Buttons.GotoBookmark.Visible = False
            Navigator.Buttons.Filter.Visible = False
            Navigator.Visible = True
            DataController.DataSource = DSYapacagimDetay
            DataController.Summary.DefaultGroupSummaryItems = <>
            DataController.Summary.FooterSummaryItems = <>
            DataController.Summary.SummaryGroups = <>
            OptionsCustomize.ColumnsQuickCustomization = True
            OptionsData.CancelOnExit = False
            OptionsData.Deleting = False
            OptionsData.DeletingConfirmation = False
            OptionsData.Editing = False
            OptionsData.Inserting = False
            OptionsView.NoDataToDisplayInfoText = ' '
            OptionsView.CellAutoHeight = True
            OptionsView.GroupByBox = False
            OptionsView.HeaderAutoHeight = True
            OptionsView.Indicator = True
            object cxGridYapacagimDetayDBTableView1id: TcxGridDBColumn
              DataBinding.FieldName = 'id'
              HeaderAlignmentHorz = taCenter
            end
            object cxGridYapacagimDetayDBTableView1Tarih: TcxGridDBColumn
              DataBinding.FieldName = 'Tarih'
              HeaderAlignmentHorz = taCenter
              Width = 169
            end
            object cxGridYapacagimDetayDBTableView1Aciklama: TcxGridDBColumn
              DataBinding.FieldName = 'Aciklama'
              HeaderAlignmentHorz = taCenter
              Width = 286
            end
            object cxGridYapacagimDetayDBTableView1Durumu: TcxGridDBColumn
              DataBinding.FieldName = 'Durumu'
              HeaderAlignmentHorz = taCenter
            end
          end
          object cxGridYapacagimDetayLevel1: TcxGridLevel
            GridView = cxGridYapacagimDetayDBTableView1
          end
        end
      end
      object cxygridYapacagim: TcxGrid
        Left = 0
        Top = 0
        Width = 1126
        Height = 309
        Align = alClient
        PopupMenu = PMYapMenu
        TabOrder = 1
        object cxygridYapacagimDBTableView1: TcxGridDBTableView
          Navigator.Buttons.CustomButtons = <>
          OnFocusedRecordChanged = cxygridYapacagimDBTableView1FocusedRecordChanged
          DataController.DataSource = DSYapMaster
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <>
          DataController.Summary.SummaryGroups = <>
          OptionsCustomize.ColumnsQuickCustomization = True
          OptionsData.CancelOnExit = False
          OptionsData.Deleting = False
          OptionsData.DeletingConfirmation = False
          OptionsData.Editing = False
          OptionsData.Inserting = False
          OptionsView.NoDataToDisplayInfoText = ' '
          OptionsView.CellAutoHeight = True
          OptionsView.GroupByBox = False
          OptionsView.HeaderAutoHeight = True
          OptionsView.Indicator = True
          Styles.OnGetContentStyle = cxygridYapacagimDBTableView1StylesGetContentStyle
          object cxygridYapacagimDBTableView1id: TcxGridDBColumn
            DataBinding.FieldName = 'id'
            HeaderAlignmentHorz = taCenter
            Width = 75
          end
          object cxygridYapacagimDBTableView1Tarih: TcxGridDBColumn
            DataBinding.FieldName = 'Tarih'
            HeaderAlignmentHorz = taCenter
            Width = 167
          end
          object cxygridYapacagimDBTableView1Aciklama: TcxGridDBColumn
            DataBinding.FieldName = 'Aciklama'
            HeaderAlignmentHorz = taCenter
            Width = 316
          end
          object cxygridYapacagimDBTableView1Oncelik: TcxGridDBColumn
            DataBinding.FieldName = 'Oncelik'
            HeaderAlignmentHorz = taCenter
            Width = 145
          end
          object cxIsverenxx: TcxGridDBColumn
            DataBinding.FieldName = 'Isiveren'
            HeaderAlignmentHorz = taCenter
            Width = 206
          end
          object cxSorumluxx: TcxGridDBColumn
            Caption = 'Sorumlu'
            DataBinding.FieldName = 'COLUMN1'
            Width = 250
          end
        end
        object cxygridYapacagimLevel1: TcxGridLevel
          GridView = cxygridYapacagimDBTableView1
        end
      end
    end
    object cxTabBitmis: TcxTabSheet
      Caption = 'Bitmi'#351' i'#351'ler'
      ImageIndex = 2
      object Panel5: TPanel
        Left = 0
        Top = 351
        Width = 1126
        Height = 260
        Align = alBottom
        TabOrder = 0
        object cxGridBitmisDetay: TcxGrid
          Left = 1
          Top = 43
          Width = 1124
          Height = 216
          Align = alClient
          TabOrder = 0
          object cxGridBitmisDetayDBTableView1: TcxGridDBTableView
            Navigator.Buttons.CustomButtons = <>
            DataController.DataSource = DSBitDetay
            DataController.Summary.DefaultGroupSummaryItems = <>
            DataController.Summary.FooterSummaryItems = <>
            DataController.Summary.SummaryGroups = <>
            OptionsCustomize.ColumnsQuickCustomization = True
            OptionsData.CancelOnExit = False
            OptionsData.Deleting = False
            OptionsData.DeletingConfirmation = False
            OptionsData.Editing = False
            OptionsData.Inserting = False
            OptionsView.NoDataToDisplayInfoText = '  '
            OptionsView.CellAutoHeight = True
            OptionsView.GroupByBox = False
            OptionsView.HeaderAutoHeight = True
            OptionsView.Indicator = True
            object cxGridBitmisDetayDBTableView1id: TcxGridDBColumn
              DataBinding.FieldName = 'id'
            end
            object cxGridBitmisDetayDBTableView1Masterid: TcxGridDBColumn
              DataBinding.FieldName = 'Masterid'
            end
            object cxGridBitmisDetayDBTableView1Tarih: TcxGridDBColumn
              DataBinding.FieldName = 'Tarih'
            end
            object cxGridBitmisDetayDBTableView1Aciklama: TcxGridDBColumn
              DataBinding.FieldName = 'Aciklama'
              Width = 300
            end
            object cxGridBitmisDetayDBTableView1Durumu: TcxGridDBColumn
              DataBinding.FieldName = 'Durumu'
            end
            object cxGridBitmisDetayDBTableView1Sorumlu: TcxGridDBColumn
              DataBinding.FieldName = 'Sorumlu'
            end
          end
          object cxGridBitmisDetayLevel1: TcxGridLevel
            GridView = cxGridBitmisDetayDBTableView1
          end
        end
        object Panel6: TPanel
          Left = 1
          Top = 1
          Width = 1124
          Height = 42
          Align = alTop
          Caption = 'Yap'#305'lanlar'
          Color = clSilver
          ParentBackground = False
          TabOrder = 1
        end
      end
      object cxGridBitmis: TcxGrid
        Left = 0
        Top = 129
        Width = 1126
        Height = 222
        Align = alClient
        TabOrder = 1
        object cxGridBitmisDBTableView1: TcxGridDBTableView
          Navigator.Buttons.CustomButtons = <>
          OnFocusedRecordChanged = cxGridBitmisDBTableView1FocusedRecordChanged
          DataController.DataSource = DSBitMaster
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <>
          DataController.Summary.SummaryGroups = <>
          OptionsCustomize.ColumnsQuickCustomization = True
          OptionsData.CancelOnExit = False
          OptionsData.Deleting = False
          OptionsData.DeletingConfirmation = False
          OptionsData.Editing = False
          OptionsData.Inserting = False
          OptionsView.NoDataToDisplayInfoText = '  '
          OptionsView.CellAutoHeight = True
          OptionsView.GroupByBox = False
          OptionsView.HeaderAutoHeight = True
          OptionsView.Indicator = True
          object cxGridBitmisDBTableView1id: TcxGridDBColumn
            DataBinding.FieldName = 'id'
          end
          object cxGridBitmisDBTableView1Tarih: TcxGridDBColumn
            DataBinding.FieldName = 'Tarih'
          end
          object cxGridBitmisDBTableView1Aciklama: TcxGridDBColumn
            DataBinding.FieldName = 'Aciklama'
            Width = 300
          end
          object cxGridBitmisDBTableView1Oncelik: TcxGridDBColumn
            DataBinding.FieldName = 'Oncelik'
          end
          object cxGridBitmisDBTableView1Isiveren: TcxGridDBColumn
            DataBinding.FieldName = 'Isiveren'
          end
          object cxGridBitmisDBTableView1Bitti: TcxGridDBColumn
            DataBinding.FieldName = 'Bitti'
          end
        end
        object cxGridBitmisLevel1: TcxGridLevel
          GridView = cxGridBitmisDBTableView1
        end
      end
      object V: TPanel
        Left = 0
        Top = 0
        Width = 1126
        Height = 129
        Align = alTop
        TabOrder = 2
        object Label1: TLabel
          Left = 252
          Top = 51
          Width = 102
          Height = 19
          Caption = 'Tarih Aral'#305#287#305
        end
        object cxTarih1: TcxDateEdit
          Left = 360
          Top = 48
          TabOrder = 0
          OnExit = cxTarih1Exit
          Width = 121
        end
        object cxTarih2: TcxDateEdit
          Left = 487
          Top = 48
          Properties.OnChange = cxTarih2PropertiesChange
          TabOrder = 1
          Width = 121
        end
        object BtnListele: TBitBtn
          Left = 648
          Top = 49
          Width = 75
          Height = 25
          Caption = 'Listele'
          TabOrder = 2
          OnClick = BtnListeleClick
        end
      end
    end
    object cxTabAdmin: TcxTabSheet
      Caption = 'T'#252'm bekleyen i'#351'ler'
      ImageIndex = 3
      object cxGrid1: TcxGrid
        Left = 0
        Top = 0
        Width = 1126
        Height = 611
        Align = alClient
        PopupMenu = PopupMenu1
        TabOrder = 0
        object cxGrid1DBTableView1: TcxGridDBTableView
          Navigator.Buttons.CustomButtons = <>
          DataController.DataSource = DSTumuMaster
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <>
          DataController.Summary.SummaryGroups = <>
          OptionsCustomize.ColumnsQuickCustomization = True
          OptionsData.CancelOnExit = False
          OptionsData.Deleting = False
          OptionsData.DeletingConfirmation = False
          OptionsData.Editing = False
          OptionsData.Inserting = False
          OptionsView.NoDataToDisplayInfoText = '  '
          OptionsView.GroupByBox = False
          OptionsView.HeaderAutoHeight = True
          OptionsView.HeaderHeight = 40
          OptionsView.Indicator = True
          Styles.Content = cxGridT1
          object cxGrid1DBTableView1id: TcxGridDBColumn
            Caption = #304#351' no'
            DataBinding.FieldName = 'id'
          end
          object cxGrid1DBTableView1Tarih: TcxGridDBColumn
            Caption = #304#351'in tarihi'
            DataBinding.FieldName = 'Tarih'
            Width = 147
          end
          object cxGrid1DBTableView1Aciklama: TcxGridDBColumn
            DataBinding.FieldName = 'Aciklama'
            Width = 300
          end
          object cxGrid1DBTableView1Oncelik: TcxGridDBColumn
            DataBinding.FieldName = 'Oncelik'
            Width = 183
          end
          object cxGrid1DBTableView1Isiveren: TcxGridDBColumn
            DataBinding.FieldName = 'Isiveren'
            Width = 100
          end
          object cxGrid1DBTableView1Bitti: TcxGridDBColumn
            DataBinding.FieldName = 'Bitti'
          end
          object cxGrid1DBTableView1Sorumlular: TcxGridDBColumn
            DataBinding.FieldName = 'Sorumlular'
            Width = 172
          end
        end
        object cxGrid1DBTableView2: TcxGridDBTableView
          Navigator.Buttons.CustomButtons = <>
          DataController.DataSource = DSTumuDetay
          DataController.DetailKeyFieldNames = 'Masterid'
          DataController.MasterKeyFieldNames = 'id'
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <>
          DataController.Summary.SummaryGroups = <>
          OptionsCustomize.ColumnsQuickCustomization = True
          OptionsData.CancelOnExit = False
          OptionsData.Deleting = False
          OptionsData.DeletingConfirmation = False
          OptionsData.Editing = False
          OptionsData.Inserting = False
          OptionsView.NoDataToDisplayInfoText = ' '
          OptionsView.CellAutoHeight = True
          OptionsView.GroupByBox = False
          OptionsView.HeaderAutoHeight = True
          Styles.Content = cxGridT2
          object cxGrid1DBTableView2Tarih: TcxGridDBColumn
            DataBinding.FieldName = 'Tarih'
          end
          object cxGrid1DBTableView2Aciklama: TcxGridDBColumn
            DataBinding.FieldName = 'Aciklama'
            Width = 300
          end
          object cxGrid1DBTableView2Sorumlu: TcxGridDBColumn
            DataBinding.FieldName = 'Sorumlu'
          end
          object cxGrid1DBTableView2Durumu: TcxGridDBColumn
            DataBinding.FieldName = 'Durumu'
          end
        end
        object cxGrid1Level1: TcxGridLevel
          GridView = cxGrid1DBTableView1
          object cxGrid1Level2: TcxGridLevel
            GridView = cxGrid1DBTableView2
          end
        end
      end
    end
  end
  object cxLookupComboBox1: TcxLookupComboBox
    Left = 960
    Top = 8
    Properties.KeyFieldNames = 'KullaniciNo'
    Properties.ListColumns = <
      item
        FieldName = 'KullaniciNo'
      end>
    Properties.ListOptions.ShowHeader = False
    Properties.ListSource = DSTestKullanicilar
    Properties.OnChange = cxLookupComboBox1PropertiesChange
    TabOrder = 1
    Width = 145
  end
  object cxImageList1: TcxImageList
    SourceDPI = 96
    FormatVersion = 1
    DesignInfo = 7340932
    ImageInfo = <
      item
        Image.Data = {
          36040000424D3604000000000000360000002800000010000000100000000100
          2000000000000004000000000000000000000000000000000000000000000000
          0002000000070000000A0000000C0000000D0000000F0000000D000000040000
          000000000005000000130000001A000000160000000700000000000000000000
          00040D5B9DFF0D599BFF0C5799FF0B5496FF095293FF084F90FF000000190000
          00120000001F044583FF024280FF02407EFF0000001500000000000000000000
          00030E5C9EFF95C5E4FF60A8D7FF5DA6D5FF57A0D2FF095193FF0B5496FF0B54
          96FF0B5496FF044685FF7AB1D9FF03417FFF0000001900000000000000000000
          00020E5C9FFFA5D5F0FF78BFE8FF6DB5E1FF5199CBFF0A5394FF25619AFF2967
          A2FF2C6DA9FF064887FF72A8D2FF034481FF0000001600000000000000000000
          00000E5C9FFFA7D6F0FF6CB2DDFF5CA3D2FF4A91C5FF0B5597FF0A5294FF0950
          90FF074E8EFF064B8AFF3C87C1FF044584FF0000001300000000000000000000
          00000E5C9FFF8BBEE0FF549ACAFF5299CAFF438ABEFF4188BEFF3F87BDFF3D86
          BDFF3C84BCFF448EC6FF3781BBFF054786FF0000001100000000000000000000
          00000E5C9FFF629BC6FF4B91C2FF4A8FC2FF488FC1FF478EC1FF458DC1FF438B
          C0FF418AC0FF3E88BFFF337CB6FF054A89FF0000001600000003000000000E5C
          9FFF0E5C9FFF0E5C9FFF0E5C9FFF0E5C9FFF0E5B9EFF0D5A9CFF0D589AFF0B56
          98FF0B5394FF095192FF084E8EFF074B8BFF064888FF00000008000000000000
          00000000000000000014664231ED9A6C57FF9F715BFFD4C0B6FFD1BEB6FF8D5A
          46FF844E3BFF53221AFB0100002D000000090000000700000002000000000000
          0000000000000000000A3D281E9C8A5E4AFF9F715BFFE7DCD6FFE6DAD5FF9563
          4FFF7C4A3AFF3A1A14C100000015000000000000000000000000000000000000
          00000000000000000002030201174A3125B65E4D4BFF1A558BFF19548AFE5640
          41FF47261DCE0402022B00000005000000000000000000000000000000000000
          000000000000000000000000000200000015094477D55B91BFFF528DBFFF0943
          77D9000000220000000500000001000000000000000000000000000000000000
          000000000000000000000000000014253A65165694F883ACCFFF7BA8CFFF0F53
          91F70103051C0000000000000000000000000000000000000000000000000000
          0000000000000000000000000000254265A22E5E96F75587B5FF6193BFFF1F52
          89EF0B1A2B580000000000000000000000000000000000000000000000000000
          00000000000000000000000000001E344E793A68A1FF34629BFF24578FF5325F
          99FD0D1B2D510000000000000000000000000000000000000000000000000000
          00000000000000000000000000000203040629476BA6376197F0274A75C50B14
          2037000000000000000000000000000000000000000000000000}
      end
      item
        Image.Data = {
          36040000424D3604000000000000360000002800000010000000100000000100
          2000000000000004000000000000000000000000000000000000000000000000
          00000000000000000000000000000000000F4C4C4CC7626262FF343B9EFF2D36
          97FF262D8DFF1F2681FF181E74FF121767FF414141FF303030BD000000000000
          00000000000000000000000000030D0D0D39787878FFDCDCDCFF3941A2FF5B65
          CEFF4E57C2FF3E47B1FF31389EFF171D72FFA1A1A1FF4C4C4CFF000000000000
          000000000000000000000000000514141450808080FFDEDEDEFF656BB2FF3840
          A2FF333B9EFF2C3595FF252D8AFF43488AFFA5A5A5FF525252FF5D4B3BBD7960
          4BFF7D543CFF7A5037FF754B31FF644331FF7B7B7BFFDFDFDFFFDCDCDCFF1F27
          7EFFCECECEFFC6C6C6FF171D6EFFB3B3B3FFAAAAAAFF434343D28D7563FFE0DC
          D8FF9B7965FFCC9F84FFC2967BFFA77F66FF736861FF959595FFD8D8D8FF242D
          85FFCCCCCCFFC3C3C3FF1C2275FFB2B2B2FF6D6D6DFF1C1C1C68947F6DFFE2DE
          DAFFB29989FF9A7864FF926E58FF86624CFF74523EFF695B52FF6D6F71FF253B
          80FF3A567AFE375478FE1E3275FF505254F21A1A1A5A00000000796657D2E3DF
          DBFFE0DDD8FF926953FFD3CFCAFFCBC7C1FF794D34FFA5A09AFF556272FF607A
          9AFF7BA5C6FF4F89B8FF2E5B88FF0F1E30780000000000000000372D2468A593
          84FFDDD8D3FF9B755FFFD2CCC7FFC9C5BEFF81563DFFA19C96FF2F4968FFB6C2
          D1FF7FBEE3FF6EB0DBFF4D86B2FF173152C20000000100000000000000002F26
          1F5A7B6758F25F5A63FF3C5678FE395476FE50494FFF465154F834739EFE65A1
          C5FF3B80ADFF316F9FFF346D9EFF1F4877FB060F1C4500000000000000000000
          000014223475607A9AFF7BA5C6FF4F89B8FF284E75FF4198C1FD5FCDE3FF61DF
          EFFF5AEBFAFF4EE0F9FF3DBFE5FF2B93C4FF15386EF800000002000000000000
          00001C3859BEB6C2D1FF7FBEE3FF6EB0DBFF43759BFF317094F574B0D1FF69A7
          C9FF3D86B2FF2F77A7FF2776ABFF1D65A1FF0D254CBB00000004000000001128
          323F34749FFB67A4C7FF3D84B1FF3375A4FF346A99FF214C71FD6392AEF3ADC9
          DDFFC5EBF3FF87DFF1FF3A9CCCFF1E5785E4050D1B5100000003000000004299
          C2F75FCFE4FF62E0EFFF5BEBFAFF4EE1F9FF3DBEE4FF2989B5FF1D466EFB204B
          67C628618DF0235483EE133252B807111F5B0000000900000001000000002E6B
          89B276B4D3FF6BAACCFF448CB7FF377DACFF2A7CAFFF216DA6FF123052B70000
          001B000000240000002000000014000000080000000100000000000000001127
          32406699B4DAB1D1E3FFE7F0F5FFBFE9F4FF61B1D6FF266896DA091522400000
          0000000000000000000000000000000000000000000000000000000000000000
          00001127324026597399347AA3E030729BE01D4764990B1B2740000000000000
          0000000000000000000000000000000000000000000000000000}
      end
      item
        Image.Data = {
          36040000424D3604000000000000360000002800000010000000100000000100
          2000000000000004000000000000000000000000000000000000000000000000
          00030000000F0000001D000000260000002A0000002C0000002E0000002F0000
          0031000000320000003100000029000000170000000500000000000000000000
          000D02253E92044879ED045189FF045087FF044E85FF044C84FF044B83FF044B
          82FF044A81FF044980FF043F6FF3021F37A70000001700000000000000000000
          0016055287F41C8DBCFF20B9E4FF1BB2E0FF18ADDCFF15A8D8FF11A4D5FF11A2
          D4FF0FA2D4FF0FA4D6FF11A7D8FF044477F90000002A00000000000000000000
          0018065C93FF2DC3ECFF6D9BA8FF8C8D8CFF8A8A8AFF888888FF858585FF8484
          84FF828282FF628D9BFF13ACDCFF044A81FF0000003000000000000000000000
          0016066097FF38CAEFFF939392FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFF828282FF15B1E0FF054B82FF0000002F00000000000000000000
          001307659CFF49D1F3FF969596FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFF848585FF17B7E5FF054D85FF0000002D00000000000000000000
          0011086AA0FF5AD8F6FF999999FFFFFFFFFFD0A57EFFCC9F76FFC8996FFFC595
          6AFFFFFFFFFF868686FF1BBEE9FF055087FF0000002A00000000000000000000
          000E0970A6FF73E0F9FF9C9C9CFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFF8A8A8AFF20C4EEFF05538AFF0000002800000000000000000000
          000B0A76ACFF8EE8FCFFA0A09FFFFFFFFFFFD5AB86FFD1A67FFFCEA179FFCC9F
          76FFFDFDFDFF8B8B8BFF28C9F2FF05568DFF0000002500000000000000000000
          00080B7CB2FFA7EEFDFFA2A2A2FFFFFFFFFFFFFFFFFFFFFFFFFFF9F9F9FFE9E9
          E9FFE7E7E7FF8B8A8AFF2FCDF1FF065990FF0000002100000000000000000000
          00060C84B7FFBCF3FEFFA4A4A4FFFFFFFFFFF7F7F7FFDADADAFFC8C8C8FFCECE
          CEFFDBDBDBFF8B8C8CFF38CDEEFF085D93FF0000001E00000000000000000000
          00030E8BBEFFCFF7FFFFA7A5A7FFD4D4D4FFAEAEAEFFAAAAAAFFB6B6B6FFC4C4
          C4FFD2D2D2FF8B8B8BFF3FCCEBFF0B6296FF0000001A00000000000000000000
          00021092C4FFDFFAFFFFC1864BFFBE8146FFBC7D40FFB9793BFFB67636FFB472
          33FFB27030FFB06D2EFF46D3F1FF08679DFF0000001500000000000000000000
          00010F87B2E17EC8E3FFE9C190FFE6BA87FFE2B47EFFDFAE75FFDCA86DFFD9A2
          67FFD69E60FFBA7A3DFF2CA8D3FF07608FE60000000E00000000000000000000
          000008475C71108AB5E11199CAFF1596C6FFDCCBAAFFEFCB9EFFECC595FFD9BA
          8FFF117FB3FF0C7AAFFF0A6896E504324A7E0000000600000000000000000000
          00000000000000000000000000010000000272685873FCE5C2FFEFD7B3F77763
          4C8A000000060000000700000007000000040000000100000000}
      end>
  end
  object QVerdigimMaster: TADOQuery
    Connection = DM.ADOConnection1
    CursorType = ctStatic
    Parameters = <
      item
        Name = 'pIsiVeren'
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 15
        Value = Null
      end>
    SQL.Strings = (
      
        'select *,dbo.SorumlulariGetir(id) Sorumlular from IsTakipMaster ' +
        'where Isiveren=:pIsiVeren and Bitti=0 '
      'order by Tarih,id')
    Left = 152
    Top = 433
    object QVerdigimMasterid: TAutoIncField
      FieldName = 'id'
      ReadOnly = True
    end
    object QVerdigimMasterTarih: TDateTimeField
      FieldName = 'Tarih'
    end
    object QVerdigimMasterAciklama: TStringField
      FieldName = 'Aciklama'
      Size = 500
    end
    object QVerdigimMasterOncelik: TStringField
      FieldName = 'Oncelik'
      Size = 15
    end
    object QVerdigimMasterIsiveren: TStringField
      FieldName = 'Isiveren'
      Size = 15
    end
    object QVerdigimMasterBitti: TBooleanField
      FieldName = 'Bitti'
    end
    object QVerdigimMasterSorumlular: TStringField
      FieldName = 'Sorumlular'
      ReadOnly = True
      Size = 500
    end
  end
  object DSVerMaster: TDataSource
    DataSet = QVerdigimMaster
    Left = 224
    Top = 433
  end
  object PMVerMenu: TPopupMenu
    Left = 960
    Top = 97
    object Ekle1: TMenuItem
      Caption = #304#351' ekle'
      OnClick = Ekle1Click
    end
    object N1: TMenuItem
      Caption = '-'
    end
    object iptal1: TMenuItem
      Caption = #304#351' iptal'
    end
  end
  object QVerDetay: TADOQuery
    Connection = DM.ADOConnection1
    CursorType = ctStatic
    Parameters = <
      item
        Name = 'pMasterid'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end>
    SQL.Strings = (
      
        'select *from istakipDetay where Masterid =:pMasterid order by Ta' +
        'rih,Sorumlu,id')
    Left = 152
    Top = 491
    object QVerDetayid: TAutoIncField
      FieldName = 'id'
      ReadOnly = True
    end
    object QVerDetayMasterid: TIntegerField
      FieldName = 'Masterid'
    end
    object QVerDetayTarih: TDateTimeField
      FieldName = 'Tarih'
    end
    object QVerDetayAciklama: TStringField
      FieldName = 'Aciklama'
      Size = 500
    end
    object QVerDetayDurumu: TStringField
      FieldName = 'Durumu'
    end
    object QVerDetaySorumlu: TStringField
      FieldName = 'Sorumlu'
      Size = 15
    end
  end
  object DSVerDetay: TDataSource
    DataSet = QVerDetay
    Left = 192
    Top = 491
  end
  object QYapMaster: TADOQuery
    Connection = DM.ADOConnection1
    CursorType = ctStatic
    Parameters = <
      item
        Name = 'pIsiveren'
        DataType = ftString
        Size = 15
        Value = Null
      end
      item
        Name = 'pSorumlu'
        DataType = ftString
        Size = 15
        Value = Null
      end
      item
        Name = 'pSorumlu1'
        DataType = ftString
        Size = 15
        Value = Null
      end>
    SQL.Strings = (
      
        'Select *,dbo.SorumlulariGetir(id) from IsTakipMaster m where Bit' +
        'ti=0 and  Isiveren =:pIsiveren or'
      
        'exists(select Masterid,Sorumlu So from IstakipSorumlular where M' +
        'asterid=m.id and Sorumlu =:pSorumlu ) and'
      
        'not exists(select *from istakipDetay where Masterid=m.id and Sor' +
        'umlu =:pSorumlu1 and Durumu='#39'TAMAMLANDI'#39')'
      'order by m.Tarih,m.id'
      ' ')
    Left = 152
    Top = 553
    object QYapMasterid: TAutoIncField
      FieldName = 'id'
      ReadOnly = True
    end
    object QYapMasterTarih: TDateTimeField
      FieldName = 'Tarih'
    end
    object QYapMasterAciklama: TStringField
      FieldName = 'Aciklama'
      Size = 500
    end
    object QYapMasterOncelik: TStringField
      FieldName = 'Oncelik'
      Size = 15
    end
    object QYapMasterIsiveren: TStringField
      FieldName = 'Isiveren'
      Size = 15
    end
    object QYapMasterBitti: TBooleanField
      FieldName = 'Bitti'
    end
    object QYapMasterCOLUMN1: TStringField
      FieldName = 'COLUMN1'
      ReadOnly = True
      Size = 500
    end
  end
  object DSYapMaster: TDataSource
    DataSet = QYapMaster
    Left = 208
    Top = 553
  end
  object PMYapMenu: TPopupMenu
    Left = 1008
    Top = 89
    object YapilanEkle1: TMenuItem
      Caption = 'Yapilan Ekle'
      OnClick = YapilanEkle1Click
    end
  end
  object QYapacagimDetay: TADOQuery
    Connection = DM.ADOConnection1
    CursorType = ctStatic
    Parameters = <
      item
        Name = 'pMasterid'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end
      item
        Name = 'pSorumlu'
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 15
        Value = Null
      end>
    SQL.Strings = (
      
        'select *from istakipDetay where Masterid =:pMasterid and Sorumlu' +
        ' =:pSorumlu order by Tarih,id')
    Left = 144
    Top = 603
    object QYapacagimDetayid: TAutoIncField
      FieldName = 'id'
      ReadOnly = True
    end
    object QYapacagimDetayMasterid: TIntegerField
      FieldName = 'Masterid'
    end
    object QYapacagimDetayTarih: TDateTimeField
      FieldName = 'Tarih'
    end
    object QYapacagimDetayAciklama: TStringField
      FieldName = 'Aciklama'
      Size = 500
    end
    object QYapacagimDetayDurumu: TStringField
      FieldName = 'Durumu'
    end
    object QYapacagimDetaySorumlu: TStringField
      FieldName = 'Sorumlu'
      Size = 15
    end
  end
  object DSYapacagimDetay: TDataSource
    DataSet = QYapacagimDetay
    Left = 216
    Top = 611
  end
  object QTestKullanicilar: TADOQuery
    Connection = DM.ADOConnection1
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'Select *from Kullanicilar')
    Left = 792
    Top = 57
    object QTestKullanicilarid: TAutoIncField
      FieldName = 'id'
      ReadOnly = True
    end
    object QTestKullanicilarKullaniciNo: TStringField
      FieldName = 'KullaniciNo'
      Size = 15
    end
    object QTestKullanicilarKullaniciAdi: TStringField
      FieldName = 'KullaniciAdi'
      Size = 30
    end
    object QTestKullanicilarKullaniciSifre: TStringField
      FieldName = 'KullaniciSifre'
      Size = 30
    end
  end
  object DSTestKullanicilar: TDataSource
    DataSet = QTestKullanicilar
    Left = 856
    Top = 57
  end
  object QBitMaster: TADOQuery
    Connection = DM.ADOConnection1
    CursorType = ctStatic
    Parameters = <
      item
        Name = 'pIsiVeren'
        DataType = ftString
        Size = 15
        Value = Null
      end
      item
        Name = 'pSorumlu'
        DataType = ftString
        Size = 15
        Value = Null
      end
      item
        Name = 'pSorumlu1'
        DataType = ftString
        Size = 15
        Value = Null
      end
      item
        Name = 'pTarih1'
        DataType = ftDateTime
        Size = 15
        Value = Null
      end
      item
        Name = 'pTarih2'
        DataType = ftDateTime
        Size = 15
        Value = Null
      end>
    SQL.Strings = (
      'select *from IsTakipMaster m'
      
        'where ( Bitti=1 and Isiveren =:pIsiVeren or exists(select *from ' +
        'IsTakipSorumlular where Masterid=m.id and Sorumlu =:pSorumlu) an' +
        'd'
      
        'exists(select *from istakipDetay where Masterid=m.id and Sorumlu' +
        ' =:pSorumlu1 and Durumu='#39'TAMAMLANDI'#39') ) and '
      'm.Tarih between :pTarih1 and :pTarih2'
      'order by m.Tarih,m.id')
    Left = 352
    Top = 472
    object QBitMasterid: TAutoIncField
      FieldName = 'id'
      ReadOnly = True
    end
    object QBitMasterTarih: TDateTimeField
      FieldName = 'Tarih'
    end
    object QBitMasterAciklama: TStringField
      FieldName = 'Aciklama'
      Size = 500
    end
    object QBitMasterOncelik: TStringField
      FieldName = 'Oncelik'
      Size = 15
    end
    object QBitMasterIsiveren: TStringField
      FieldName = 'Isiveren'
      Size = 15
    end
    object QBitMasterBitti: TBooleanField
      FieldName = 'Bitti'
    end
  end
  object DSBitMaster: TDataSource
    DataSet = QBitMaster
    Left = 424
    Top = 480
  end
  object QBitDetay: TADOQuery
    Connection = DM.ADOConnection1
    CursorType = ctStatic
    Parameters = <
      item
        Name = 'pMasterid'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end
      item
        Name = 'pSorumlu'
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 15
        Value = Null
      end>
    SQL.Strings = (
      
        'select *from istakipDetay where Masterid =:pMasterid and Sorumlu' +
        ' =isnull(:pSorumlu,Sorumlu) order by Tarih,id')
    Left = 368
    Top = 544
    object QBitDetayid: TAutoIncField
      FieldName = 'id'
      ReadOnly = True
    end
    object QBitDetayMasterid: TIntegerField
      FieldName = 'Masterid'
    end
    object QBitDetayTarih: TDateTimeField
      FieldName = 'Tarih'
    end
    object QBitDetayAciklama: TStringField
      FieldName = 'Aciklama'
      Size = 500
    end
    object QBitDetayDurumu: TStringField
      FieldName = 'Durumu'
    end
    object QBitDetaySorumlu: TStringField
      FieldName = 'Sorumlu'
      Size = 15
    end
  end
  object DSBitDetay: TDataSource
    DataSet = QBitDetay
    Left = 424
    Top = 544
  end
  object cxStyleRepository1: TcxStyleRepository
    Left = 616
    Top = 177
    PixelsPerInch = 96
    object cxStyle1: TcxStyle
      AssignedValues = [svColor, svTextColor]
      Color = clMoneyGreen
      TextColor = clRed
    end
    object cxStyle2: TcxStyle
      AssignedValues = [svColor, svTextColor]
      Color = clNavy
      TextColor = clBtnHighlight
    end
    object cxStyle3: TcxStyle
    end
    object cxGridT1: TcxStyle
      AssignedValues = [svColor]
      Color = clSilver
    end
    object cxGridT2: TcxStyle
      AssignedValues = [svColor]
      Color = clMoneyGreen
    end
  end
  object QTumuMaster: TADOQuery
    Connection = DM.ADOConnection1
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select *,dbo.SorumlulariGetir(id) Sorumlular'
      'from IsTakipMaster'
      'where Bitti=0'
      'order by Tarih,id')
    Left = 128
    Top = 81
    object QTumuMasterid: TAutoIncField
      FieldName = 'id'
      ReadOnly = True
    end
    object QTumuMasterTarih: TDateTimeField
      FieldName = 'Tarih'
    end
    object QTumuMasterAciklama: TStringField
      FieldName = 'Aciklama'
      Size = 500
    end
    object QTumuMasterOncelik: TStringField
      FieldName = 'Oncelik'
      Size = 15
    end
    object QTumuMasterIsiveren: TStringField
      FieldName = 'Isiveren'
      Size = 15
    end
    object QTumuMasterBitti: TBooleanField
      FieldName = 'Bitti'
    end
    object QTumuMasterSorumlular: TStringField
      FieldName = 'Sorumlular'
      ReadOnly = True
      Size = 500
    end
  end
  object DSTumuMaster: TDataSource
    DataSet = QTumuMaster
    Left = 184
    Top = 81
  end
  object QTumuDetay: TADOQuery
    Connection = DM.ADOConnection1
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select *from istakipDetay order by Tarih,Sorumlu,id')
    Left = 120
    Top = 145
    object QTumuDetayid: TAutoIncField
      FieldName = 'id'
      ReadOnly = True
    end
    object QTumuDetayMasterid: TIntegerField
      FieldName = 'Masterid'
    end
    object QTumuDetayTarih: TDateTimeField
      FieldName = 'Tarih'
    end
    object QTumuDetayAciklama: TStringField
      FieldName = 'Aciklama'
      Size = 500
    end
    object QTumuDetayDurumu: TStringField
      FieldName = 'Durumu'
    end
    object QTumuDetaySorumlu: TStringField
      FieldName = 'Sorumlu'
      Size = 15
    end
  end
  object DSTumuDetay: TDataSource
    DataSet = QTumuDetay
    Left = 192
    Top = 145
  end
  object PopupMenu1: TPopupMenu
    Left = 824
    Top = 297
    object mnA1: TMenuItem
      Caption = 'T'#252'm'#252'n'#252' A'#231
      OnClick = mnA1Click
    end
    object N2: TMenuItem
      Caption = '-'
    end
    object mnkapat1: TMenuItem
      Caption = 'T'#252'm'#252'n'#252' kapat'
      OnClick = mnkapat1Click
    end
    object N3: TMenuItem
      Caption = '-'
    end
    object frxyazdr1: TMenuItem
      Caption = 'frx yazd'#305'r'
      OnClick = frxyazdr1Click
    end
    object N4: TMenuItem
      Caption = '-'
    end
    object dizayn1: TMenuItem
      Caption = 'dizayn'
      OnClick = dizayn1Click
    end
  end
  object frxDBDataset1: TfrxDBDataset
    UserName = 'Master'
    CloseDataSource = False
    DataSource = DSTumuMaster
    BCDToCurrency = False
    Left = 456
    Top = 297
  end
  object frxDBDataset2: TfrxDBDataset
    UserName = 'Detay'
    CloseDataSource = False
    DataSource = DSTumuDetay
    BCDToCurrency = False
    Left = 384
    Top = 233
  end
  object frxDesigner1: TfrxDesigner
    DefaultScriptLanguage = 'PascalScript'
    DefaultFont.Charset = DEFAULT_CHARSET
    DefaultFont.Color = clWindowText
    DefaultFont.Height = -13
    DefaultFont.Name = 'Arial'
    DefaultFont.Style = []
    DefaultLeftMargin = 10.000000000000000000
    DefaultRightMargin = 10.000000000000000000
    DefaultTopMargin = 10.000000000000000000
    DefaultBottomMargin = 10.000000000000000000
    DefaultPaperSize = 9
    DefaultOrientation = poPortrait
    GradientEnd = 11982554
    GradientStart = clWindow
    TemplatesExt = 'fr3'
    Restrictions = []
    RTLLanguage = False
    MemoParentFont = False
    Left = 384
    Top = 193
  end
  object frxReport1: TfrxReport
    Version = '6.6.15'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick, pbCopy, pbSelection]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 44263.400030486100000000
    ReportOptions.LastChange = 44263.408493113430000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      ''
      'begin'
      ''
      'end.')
    Left = 272
    Top = 337
    Datasets = <
      item
        DataSet = frxDBDataset2
        DataSetName = 'Detay'
      end
      item
        DataSet = frxDBDataset1
        DataSetName = 'Master'
      end>
    Variables = <>
    Style = <>
    object Data: TfrxDataPage
      Height = 1000.000000000000000000
      Width = 1000.000000000000000000
    end
    object Page1: TfrxReportPage
      PaperWidth = 210.000000000000000000
      PaperHeight = 297.000000000000000000
      PaperSize = 9
      LeftMargin = 10.000000000000000000
      RightMargin = 10.000000000000000000
      TopMargin = 10.000000000000000000
      BottomMargin = 10.000000000000000000
      Frame.Typ = []
      MirrorMode = []
      object ReportTitle1: TfrxReportTitle
        FillType = ftBrush
        Frame.Typ = []
        Height = 22.677180000000000000
        Top = 18.897650000000000000
        Width = 718.110700000000000000
      end
      object MasterData1: TfrxMasterData
        FillType = ftBrush
        Frame.Typ = []
        Height = 22.677180000000000000
        Top = 102.047310000000000000
        Width = 718.110700000000000000
        DataSet = frxDBDataset1
        DataSetName = 'Master'
        RowCount = 0
        Stretched = True
        object Masterid: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 3.779530000000000000
          Width = 37.795300000000000000
          Height = 18.897650000000000000
          StretchMode = smMaxHeight
          DataField = 'id'
          DataSet = frxDBDataset1
          DataSetName = 'Master'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[Master."id"]')
          ParentFont = False
        end
        object MasterTarih: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 41.574830000000000000
          Width = 117.165430000000000000
          Height = 18.897650000000000000
          StretchMode = smMaxHeight
          DataField = 'Tarih'
          DataSet = frxDBDataset1
          DataSetName = 'Master'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[Master."Tarih"]')
          ParentFont = False
        end
        object MasterAciklama: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 158.740260000000000000
          Width = 215.433210000000000000
          Height = 18.897650000000000000
          StretchMode = smMaxHeight
          DataField = 'Aciklama'
          DataSet = frxDBDataset1
          DataSetName = 'Master'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[Master."Aciklama"]')
          ParentFont = False
        end
        object MasterOncelik: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 374.173470000000000000
          Width = 79.370130000000000000
          Height = 18.897650000000000000
          StretchMode = smMaxHeight
          DataField = 'Oncelik'
          DataSet = frxDBDataset1
          DataSetName = 'Master'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[Master."Oncelik"]')
          ParentFont = False
        end
        object MasterIsiveren: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 453.543600000000000000
          Width = 120.944960000000000000
          Height = 18.897650000000000000
          StretchMode = smMaxHeight
          DataField = 'Isiveren'
          DataSet = frxDBDataset1
          DataSetName = 'Master'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[Master."Isiveren"]')
          ParentFont = False
        end
        object MasterSorumlular: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 578.268090000000000000
          Width = 400.630180000000000000
          Height = 18.897650000000000000
          StretchMode = smMaxHeight
          DataField = 'Sorumlular'
          DataSet = frxDBDataset1
          DataSetName = 'Master'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[Master."Sorumlular"]')
          ParentFont = False
        end
      end
      object PageFooter1: TfrxPageFooter
        FillType = ftBrush
        Frame.Typ = []
        Height = 22.677180000000000000
        Top = 185.196970000000000000
        Width = 718.110700000000000000
        object Memo1: TfrxMemoView
          AllowVectorExport = True
          Left = 642.520100000000000000
          Width = 75.590600000000000000
          Height = 18.897650000000000000
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[Page#]')
        end
      end
    end
  end
end
