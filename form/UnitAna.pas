unit UnitAna;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, dxSkinsCore, dxSkinBlack, dxSkinBlue,
  dxSkinBlueprint, dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide,
  dxSkinDevExpressDarkStyle, dxSkinDevExpressStyle, dxSkinFoggy,
  dxSkinGlassOceans, dxSkinHighContrast, dxSkiniMaginary, dxSkinLilian,
  dxSkinLiquidSky, dxSkinLondonLiquidSky, dxSkinMcSkin, dxSkinMetropolis,
  dxSkinMetropolisDark, dxSkinMoneyTwins, dxSkinOffice2007Black,
  dxSkinOffice2007Blue, dxSkinOffice2007Green, dxSkinOffice2007Pink,
  dxSkinOffice2007Silver, dxSkinOffice2010Black, dxSkinOffice2010Blue,
  dxSkinOffice2010Silver, dxSkinOffice2013DarkGray, dxSkinOffice2013LightGray,
  dxSkinOffice2013White, dxSkinOffice2016Colorful, dxSkinOffice2016Dark,
  dxSkinPumpkin, dxSkinSeven, dxSkinSevenClassic, dxSkinSharp, dxSkinSharpPlus,
  dxSkinSilver, dxSkinSpringTime, dxSkinStardust, dxSkinSummer2008,
  dxSkinTheAsphaltWorld, dxSkinTheBezier, dxSkinsDefaultPainters,
  dxSkinValentine, dxSkinVisualStudio2013Blue, dxSkinVisualStudio2013Dark,
  dxSkinVisualStudio2013Light, dxSkinVS2010, dxSkinWhiteprint,
  dxSkinXmas2008Blue, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, dxBarBuiltInMenu, cxPC, dxBar, cxClasses,
  System.ImageList, Vcl.ImgList, cxImageList, cxStyles, cxCustomData, cxFilter,
  cxData, cxDataStorage, cxEdit, cxNavigator,
  cxDataControllerConditionalFormattingRulesManagerDialog, Data.DB, cxDBData,
  cxGridLevel, cxGridCustomView, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxGrid, Vcl.ExtCtrls, Data.Win.ADODB, Vcl.Menus,
  cxContainer, cxTextEdit, cxMaskEdit, cxDropDownEdit, cxLookupEdit,
  cxDBLookupEdit, cxDBLookupComboBox, Vcl.ComCtrls, dxCore, cxDateUtils,
  Vcl.StdCtrls, cxCalendar, Vcl.Buttons, frxDesgn, frxClass, frxDBSet;

type
  TFormAna = class(TForm)
    cxPage: TcxPageControl;
    cxTabVerdigim: TcxTabSheet;
    cxTabYapacagim: TcxTabSheet;
    cxTabBitmis: TcxTabSheet;
    cxImageList1: TcxImageList;
    Panel1: TPanel;
    Panel2: TPanel;
    cxygridYapacagimDBTableView1: TcxGridDBTableView;
    cxygridYapacagimLevel1: TcxGridLevel;
    cxygridYapacagim: TcxGrid;
    Panel3: TPanel;
    Panel5: TPanel;
    cxGridVerdigimDBTableView1: TcxGridDBTableView;
    cxGridVerdigimLevel1: TcxGridLevel;
    cxGridVerdigim: TcxGrid;
    cxGridBitmisDBTableView1: TcxGridDBTableView;
    cxGridBitmisLevel1: TcxGridLevel;
    cxGridBitmis: TcxGrid;
    cxGridVerdigimDetayDBTableView1: TcxGridDBTableView;
    cxGridVerdigimDetayLevel1: TcxGridLevel;
    cxGridVerdigimDetay: TcxGrid;
    cxGridYapacagimDetayDBTableView1: TcxGridDBTableView;
    cxGridYapacagimDetayLevel1: TcxGridLevel;
    cxGridYapacagimDetay: TcxGrid;
    cxGridBitmisDetayDBTableView1: TcxGridDBTableView;
    cxGridBitmisDetayLevel1: TcxGridLevel;
    cxGridBitmisDetay: TcxGrid;
    Panel6: TPanel;
    QVerdigimMaster: TADOQuery;
    DSVerMaster: TDataSource;
    QVerdigimMasterid: TAutoIncField;
    QVerdigimMasterTarih: TDateTimeField;
    QVerdigimMasterAciklama: TStringField;
    QVerdigimMasterOncelik: TStringField;
    QVerdigimMasterIsiveren: TStringField;
    QVerdigimMasterBitti: TBooleanField;
    cxGridVerdigimDBTableView1id: TcxGridDBColumn;
    cxGridVerdigimDBTableView1Tarih: TcxGridDBColumn;
    cxGridVerdigimDBTableView1Aciklama: TcxGridDBColumn;
    cxGridVerdigimDBTableView1Oncelik: TcxGridDBColumn;
    PMVerMenu: TPopupMenu;
    Ekle1: TMenuItem;
    N1: TMenuItem;
    iptal1: TMenuItem;
    QVerdigimMasterSorumlular: TStringField;
    cxGridVerdigimDBTableView1Sorumlular: TcxGridDBColumn;
    Panel4: TPanel;
    QVerDetay: TADOQuery;
    DSVerDetay: TDataSource;
    QVerDetayid: TAutoIncField;
    QVerDetayMasterid: TIntegerField;
    QVerDetayTarih: TDateTimeField;
    QVerDetayAciklama: TStringField;
    QVerDetayDurumu: TStringField;
    QVerDetaySorumlu: TStringField;
    cxGridVerdigimDetayDBTableView1id: TcxGridDBColumn;
    cxGridVerdigimDetayDBTableView1Tarih: TcxGridDBColumn;
    cxGridVerdigimDetayDBTableView1Aciklama: TcxGridDBColumn;
    cxGridVerdigimDetayDBTableView1Durumu: TcxGridDBColumn;
    cxGridVerdigimDetayDBTableView1Sorumlu: TcxGridDBColumn;
    QYapMaster: TADOQuery;
    DSYapMaster: TDataSource;
    cxygridYapacagimDBTableView1id: TcxGridDBColumn;
    cxygridYapacagimDBTableView1Tarih: TcxGridDBColumn;
    cxygridYapacagimDBTableView1Aciklama: TcxGridDBColumn;
    cxygridYapacagimDBTableView1Oncelik: TcxGridDBColumn;
    cxIsverenxx: TcxGridDBColumn;
    PMYapMenu: TPopupMenu;
    YapilanEkle1: TMenuItem;
    QYapacagimDetay: TADOQuery;
    DSYapacagimDetay: TDataSource;
    QYapacagimDetayid: TAutoIncField;
    QYapacagimDetayMasterid: TIntegerField;
    QYapacagimDetayTarih: TDateTimeField;
    QYapacagimDetayAciklama: TStringField;
    QYapacagimDetayDurumu: TStringField;
    QYapacagimDetaySorumlu: TStringField;
    cxGridYapacagimDetayDBTableView1id: TcxGridDBColumn;
    cxGridYapacagimDetayDBTableView1Tarih: TcxGridDBColumn;
    cxGridYapacagimDetayDBTableView1Aciklama: TcxGridDBColumn;
    cxGridYapacagimDetayDBTableView1Durumu: TcxGridDBColumn;
    QTestKullanicilar: TADOQuery;
    DSTestKullanicilar: TDataSource;
    QTestKullanicilarid: TAutoIncField;
    QTestKullanicilarKullaniciNo: TStringField;
    QTestKullanicilarKullaniciAdi: TStringField;
    QTestKullanicilarKullaniciSifre: TStringField;
    cxLookupComboBox1: TcxLookupComboBox;
    V: TPanel;
    cxTarih1: TcxDateEdit;
    cxTarih2: TcxDateEdit;
    Label1: TLabel;
    QBitMaster: TADOQuery;
    DSBitMaster: TDataSource;
    QBitDetay: TADOQuery;
    DSBitDetay: TDataSource;
    QYapMasterid: TAutoIncField;
    QYapMasterTarih: TDateTimeField;
    QYapMasterAciklama: TStringField;
    QYapMasterOncelik: TStringField;
    QYapMasterIsiveren: TStringField;
    QYapMasterBitti: TBooleanField;
    QBitMasterid: TAutoIncField;
    QBitMasterTarih: TDateTimeField;
    QBitMasterAciklama: TStringField;
    QBitMasterOncelik: TStringField;
    QBitMasterIsiveren: TStringField;
    QBitMasterBitti: TBooleanField;
    BtnListele: TBitBtn;
    QBitDetayid: TAutoIncField;
    QBitDetayMasterid: TIntegerField;
    QBitDetayTarih: TDateTimeField;
    QBitDetayAciklama: TStringField;
    QBitDetayDurumu: TStringField;
    QBitDetaySorumlu: TStringField;
    cxGridBitmisDetayDBTableView1id: TcxGridDBColumn;
    cxGridBitmisDetayDBTableView1Masterid: TcxGridDBColumn;
    cxGridBitmisDetayDBTableView1Tarih: TcxGridDBColumn;
    cxGridBitmisDetayDBTableView1Aciklama: TcxGridDBColumn;
    cxGridBitmisDetayDBTableView1Durumu: TcxGridDBColumn;
    cxGridBitmisDetayDBTableView1Sorumlu: TcxGridDBColumn;
    cxGridBitmisDBTableView1id: TcxGridDBColumn;
    cxGridBitmisDBTableView1Tarih: TcxGridDBColumn;
    cxGridBitmisDBTableView1Aciklama: TcxGridDBColumn;
    cxGridBitmisDBTableView1Oncelik: TcxGridDBColumn;
    cxGridBitmisDBTableView1Isiveren: TcxGridDBColumn;
    cxGridBitmisDBTableView1Bitti: TcxGridDBColumn;
    QYapMasterCOLUMN1: TStringField;
    cxSorumluxx: TcxGridDBColumn;
    cxStyleRepository1: TcxStyleRepository;
    cxStyle1: TcxStyle;
    cxStyle2: TcxStyle;
    cxStyle3: TcxStyle;
    cxTabAdmin: TcxTabSheet;
    QTumuMaster: TADOQuery;
    DSTumuMaster: TDataSource;
    QTumuDetay: TADOQuery;
    DSTumuDetay: TDataSource;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    cxGrid1: TcxGrid;
    cxGrid1Level2: TcxGridLevel;
    cxGrid1DBTableView2: TcxGridDBTableView;
    cxGrid1DBTableView1id: TcxGridDBColumn;
    cxGrid1DBTableView1Tarih: TcxGridDBColumn;
    cxGrid1DBTableView1Aciklama: TcxGridDBColumn;
    cxGrid1DBTableView1Oncelik: TcxGridDBColumn;
    cxGrid1DBTableView1Isiveren: TcxGridDBColumn;
    cxGrid1DBTableView1Bitti: TcxGridDBColumn;
    cxGrid1DBTableView1Sorumlular: TcxGridDBColumn;
    cxGrid1DBTableView2Tarih: TcxGridDBColumn;
    cxGrid1DBTableView2Aciklama: TcxGridDBColumn;
    cxGrid1DBTableView2Durumu: TcxGridDBColumn;
    cxGrid1DBTableView2Sorumlu: TcxGridDBColumn;
    cxGridT1: TcxStyle;
    cxGridT2: TcxStyle;
    PopupMenu1: TPopupMenu;
    mnA1: TMenuItem;
    N2: TMenuItem;
    mnkapat1: TMenuItem;
    QTumuMasterid: TAutoIncField;
    QTumuMasterTarih: TDateTimeField;
    QTumuMasterAciklama: TStringField;
    QTumuMasterOncelik: TStringField;
    QTumuMasterIsiveren: TStringField;
    QTumuMasterBitti: TBooleanField;
    QTumuMasterSorumlular: TStringField;
    QTumuDetayid: TAutoIncField;
    QTumuDetayMasterid: TIntegerField;
    QTumuDetayTarih: TDateTimeField;
    QTumuDetayAciklama: TStringField;
    QTumuDetayDurumu: TStringField;
    QTumuDetaySorumlu: TStringField;
    N3: TMenuItem;
    frxyazdr1: TMenuItem;
    frxDBDataset1: TfrxDBDataset;
    frxDBDataset2: TfrxDBDataset;
    frxDesigner1: TfrxDesigner;
    N4: TMenuItem;
    dizayn1: TMenuItem;
    frxReport1: TfrxReport;
    procedure FormCreate(Sender: TObject);
    procedure Ekle1Click(Sender: TObject);
    procedure cxPageChange(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure cxGridVerdigimDBTableView1FocusedRecordChanged(
      Sender: TcxCustomGridTableView; APrevFocusedRecord,
      AFocusedRecord: TcxCustomGridRecord;
      ANewItemRecordFocusingChanged: Boolean);
    procedure YapilanEkle1Click(Sender: TObject);
    procedure cxygridYapacagimDBTableView1FocusedRecordChanged(
      Sender: TcxCustomGridTableView; APrevFocusedRecord,
      AFocusedRecord: TcxCustomGridRecord;
      ANewItemRecordFocusingChanged: Boolean);
    procedure cxLookupComboBox1PropertiesChange(Sender: TObject);
    procedure cxTarih1Exit(Sender: TObject);
    procedure cxTarih2PropertiesChange(Sender: TObject);
    procedure BtnListeleClick(Sender: TObject);
    procedure cxGridBitmisDBTableView1FocusedRecordChanged(
      Sender: TcxCustomGridTableView; APrevFocusedRecord,
      AFocusedRecord: TcxCustomGridRecord;
      ANewItemRecordFocusingChanged: Boolean);
    procedure cxygridYapacagimDBTableView1StylesGetContentStyle(
      Sender: TcxCustomGridTableView; ARecord: TcxCustomGridRecord;
      AItem: TcxCustomGridTableItem; var AStyle: TcxStyle);
    procedure mnA1Click(Sender: TObject);
    procedure mnkapat1Click(Sender: TObject);
    procedure frxyazdr1Click(Sender: TObject);
    procedure dizayn1Click(Sender: TObject);
    procedure cxGridVerdigimDetayDragOver(Sender, Source: TObject; X,
      Y: Integer; State: TDragState; var Accept: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
    xKullaniciNo:String;
  end;

var
  FormAna: TFormAna;

implementation

{$R *.dfm}

uses UnitGiris,UnitDM,UnitIsEkle, UnitYapilanIsEkle;

procedure TFormAna.BtnListeleClick(Sender: TObject);
begin
  QBitMaster.close;
  QBitMaster.Parameters.ParamValues['pSorumlu']:= xKullaniciNo;
    QBitMaster.Parameters.ParamValues['pIsiveren']:= xKullaniciNo;
   QBitMaster.Parameters.ParamValues['pSorumlu1']:= xKullaniciNo;
      QBitMaster.Parameters.ParamValues['pTarih1']:= cxTarih1.Date;
      QBitMaster.Parameters.ParamValues['pTarih2']:= cxTarih2.Date;

  QBitMaster.Open;
end;

procedure TFormAna.cxGridBitmisDBTableView1FocusedRecordChanged(
  Sender: TcxCustomGridTableView; APrevFocusedRecord,
  AFocusedRecord: TcxCustomGridRecord; ANewItemRecordFocusingChanged: Boolean);
begin
QBitDetay.Close;
QBitDetay.Parameters.ParamValues['pMasterid']:=QBitMasterid.Value;
if xKullaniciNo=QBitMasterIsiveren.Value then
 QBitDetay.Parameters.ParamValues['pSorumlu']:=null
 else
QBitDetay.Parameters.ParamValues['pSorumlu']:=xKullaniciNo;
QBitDetay.Open
end;

procedure TFormAna.cxGridVerdigimDBTableView1FocusedRecordChanged(
  Sender: TcxCustomGridTableView; APrevFocusedRecord,
  AFocusedRecord: TcxCustomGridRecord; ANewItemRecordFocusingChanged: Boolean);
begin
QVerDetay.Close;
QVerDetay.Parameters.ParamValues['pMasterid']:=QVerdigimMasterid.Value;
QVerDetay.Open;
end;

procedure TFormAna.cxGridVerdigimDetayDragOver(Sender, Source: TObject; X,
  Y: Integer; State: TDragState; var Accept: Boolean);
begin
Accept:=True;
end;

procedure TFormAna.cxLookupComboBox1PropertiesChange(Sender: TObject);
begin
 xKullaniciNo:=cxLookupComboBox1.Text;
 cxPageChange(nil);
end;

procedure TFormAna.cxPageChange(Sender: TObject);
begin
if cxPage.ActivePage=cxTabVerdigim then
begin
  QVerdigimMaster.close;
  QVerdigimMaster.Parameters.ParamValues['pIsiVeren']:= xKullaniciNo;
  QVerdigimMaster.Open;
end;
if cxPage.ActivePage=cxTabYapacagim then
begin
  QYapMaster.close;
  QYapMaster.Parameters.ParamValues['pSorumlu']:= xKullaniciNo;
    QYapMaster.Parameters.ParamValues['pIsiveren']:= xKullaniciNo;
   QYapMaster.Parameters.ParamValues['pSorumlu1']:= xKullaniciNo;
  QYapMaster.Open;
end;
if cxPage.ActivePage=cxTabAdmin then
begin
 QTumuMaster.Close;
 QTumuMaster.Open;
 QTumuDetay.Close;
 QTumuDetay.Open;
end;


end;

procedure TFormAna.cxTarih1Exit(Sender: TObject);
begin
if cxTarih1.Date<=0 then
begin
  cxTarih1.Date:=Date-60;
end;

end;

procedure TFormAna.cxTarih2PropertiesChange(Sender: TObject);
begin
if cxTarih2.Date<=0 then
begin
  cxTarih2.Date:=Date;
end;
end;

procedure TFormAna.cxygridYapacagimDBTableView1FocusedRecordChanged(
  Sender: TcxCustomGridTableView; APrevFocusedRecord,
  AFocusedRecord: TcxCustomGridRecord; ANewItemRecordFocusingChanged: Boolean);
begin
QYapacagimDetay.Close;
QYapacagimDetay.Parameters.ParamValues['pMasterid']:=QYapMasterid.Value;
QYapacagimDetay.Parameters.ParamValues['pSorumlu']:=xKullaniciNo;

QYapacagimDetay.Open;
end;

procedure TFormAna.cxygridYapacagimDBTableView1StylesGetContentStyle(
  Sender: TcxCustomGridTableView; ARecord: TcxCustomGridRecord;
  AItem: TcxCustomGridTableItem; var AStyle: TcxStyle);
begin
if ARecord.Values[cxIsverenxx.Index]=xKullaniciNo then   AStyle:=cxStyle2
else
AStyle:=cxStyle1;

end;

procedure TFormAna.dizayn1Click(Sender: TObject);
begin
frxReport1.LoadFromFile('D:\isTakipSistemi\Reports\Tumu.fr3');
 frxReport1.DesignReport();
end;

procedure TFormAna.Ekle1Click(Sender: TObject);
begin
 try
   Application.CreateForm(TFormIsEkle,FormIsEkle);
   FormIsEkle.ShowModal;

   finally
     FormIsEkle.free;
     FormIsEkle:=nil;
end;
cxPageChange(nil);
end;

procedure TFormAna.FormCreate(Sender: TObject);
begin

try
   Application.CreateForm(TFormGiris,FormGiris);
   FormGiris.ShowModal;
   xKullaniciNo:=FormGiris.cxKullaniciAdi.Text;
   finally
     FormGiris.free;
     FormGiris:=nil;
end;


end;

procedure TFormAna.FormShow(Sender: TObject);
begin
QTestKullanicilar.Close;
QTestKullanicilar.Open;
  if xKullaniciNo='admin' then
  begin
     cxTabAdmin.TabVisible:=True;
  end
  else
   cxTabAdmin.TabVisible:=False;
cxPage.ActivePage:=cxTabVerdigim;
cxPageChange(nil);
cxTarih1.Date:=Date-60;
cxTarih2.Date:=Date;
end;

procedure TFormAna.frxyazdr1Click(Sender: TObject);
begin
frxReport1.LoadFromFile('D:\isTakipSistemi\Reports\Tumu.fr3');
 frxReport1.ShowReport();
end;

procedure TFormAna.mnA1Click(Sender: TObject);
begin
cxGrid1DBTableView1.ViewData.Expand(True);
end;

procedure TFormAna.mnkapat1Click(Sender: TObject);
begin
cxGrid1DBTableView1.ViewData.Collapse(true);
end;

procedure TFormAna.YapilanEkle1Click(Sender: TObject);
begin
dm.QGenel.Close;
DM.QGenel.SQL.Text:='Select *from IsTakipSorumlular where Masterid =:pMasterid and Sorumlu =:pSorumlu ';
  DM.QGenel.Parameters.ParamValues['pSorumlu']:=xKullaniciNo;
DM.QGenel.Parameters.ParamValues['pMasterid']:=QYapMasterid.Value;
DM.QGenel.OPEN;
if DM.QGenel.IsEmpty then
begin
  Application.MessageBox('Sorumlu oldu�unuz bir  de�il','HATA',MB_OK+MB_ICONERROR);
  exit;
end;

if QYapMaster.IsEmpty  then
   begin
     Application.MessageBox('Sorumlu oldu�unuz bir i� yok','HATA',MB_OK+MB_ICONERROR);
     exit;
   end;
try


Application.CreateForm(TFormYapilanIsEkle,FormYapilanIsEkle);
FormYapilanIsEkle.ShowModal;

finally
FormYapilanIsEkle.free;
FormYapilanIsEkle:=nil;
end;
    cxPageChange(nil);

end;

end.
