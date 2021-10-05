unit UnitIsEkle;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, UnitGenel, System.Actions, Vcl.ActnList,
  Data.DB, Data.Win.ADODB, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxContainer, cxEdit, dxSkinsCore, dxSkinBlack,
  dxSkinBlue, dxSkinBlueprint, dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom,
  dxSkinDarkSide, dxSkinDevExpressDarkStyle, dxSkinDevExpressStyle, dxSkinFoggy,
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
  dxSkinXmas2008Blue, cxMemo, cxDBEdit, cxTextEdit, cxMaskEdit, cxDropDownEdit,
  cxCalendar, Vcl.StdCtrls, cxStyles, cxCustomData, cxFilter, cxData,
  cxDataStorage, cxNavigator,
  cxDataControllerConditionalFormattingRulesManagerDialog, cxDBData,
  cxGridLevel, cxClasses, cxGridCustomView, cxGridCustomTableView,
  cxGridTableView, cxGridDBTableView, cxGrid, cxDBNavigator, cxDBLookupComboBox;

type
  TFormIsEkle = class(TFormGenel)
    QIsEkleMaster: TADOQuery;
    DSIsEkleMaster: TDataSource;
    QIsEkleMasterid: TAutoIncField;
    QIsEkleMasterTarih: TDateTimeField;
    QIsEkleMasterAciklama: TStringField;
    QIsEkleMasterOncelik: TStringField;
    QIsEkleMasterIsiveren: TStringField;
    QIsEkleMasterBitti: TBooleanField;
    Label2: TLabel;
    cxDBDateEdit1: TcxDBDateEdit;
    Label3: TLabel;
    Label4: TLabel;
    cxDBMemo1: TcxDBMemo;
    cxDBComboBox1: TcxDBComboBox;
    cxDBNavigator1: TcxDBNavigator;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    cxGrid1: TcxGrid;
    QSorumlular: TADOQuery;
    DSSorumlular: TDataSource;
    QSorumlularid: TAutoIncField;
    QSorumlularMasterid: TIntegerField;
    QSorumlularSorumlu: TStringField;
    cxGrid1DBTableView1Sorumlu: TcxGridDBColumn;
    QKullanicilar: TADOQuery;
    DSKullanicilar: TDataSource;
    QKullanicilarid: TAutoIncField;
    QKullanicilarKullaniciNo: TStringField;
    QKullanicilarKullaniciAdi: TStringField;
    QKullanicilarKullaniciSifre: TStringField;
    procedure QIsEkleMasterAfterInsert(DataSet: TDataSet);
    procedure FormCreate(Sender: TObject);
    procedure QIsEkleMasterBeforePost(DataSet: TDataSet);
    procedure cxGrid1Enter(Sender: TObject);
    procedure QSorumlularBeforePost(DataSet: TDataSet);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure QIsEkleMasterAfterCancel(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormIsEkle: TFormIsEkle;

implementation
       uses UnitDM,UnitAna;
{$R *.dfm}

procedure TFormIsEkle.cxGrid1Enter(Sender: TObject);
begin
  inherited;
if QIsEkleMaster.State in [dsinsert,dsedit] then  QIsEkleMaster.Post;

end;

procedure TFormIsEkle.FormCloseQuery(Sender: TObject; var CanClose: Boolean);
begin
  inherited;
if QIsEkleMaster.State in [dsinsert,dsedit] then QIsEkleMaster.Post;

if QSorumlular.State in [dsinsert,dsedit] then  QSorumlular.Post;


end;

procedure TFormIsEkle.FormCreate(Sender: TObject);
begin
  inherited;
QIsEkleMaster.Close;
QIsEkleMaster.Open;
QSorumlular.Close;
QSorumlular.Open;
QKullanicilar.Close;
QKullanicilar.Open;
QIsEkleMaster.Insert;
QSorumlular.Insert;

end;

procedure TFormIsEkle.QIsEkleMasterAfterCancel(DataSet: TDataSet);
begin
  inherited;
cxGrid1DBTableView1.NavigatorButtons.Cancel.Click;


end;

procedure TFormIsEkle.QIsEkleMasterAfterInsert(DataSet: TDataSet);
begin
  inherited;
QIsEkleMasterTarih.Value:=Date;
QIsEkleMasterOncelik.Value:='NORMAL';
end;

procedure TFormIsEkle.QIsEkleMasterBeforePost(DataSet: TDataSet);
begin
  inherited;
if QIsEkleMasterTarih.IsNull then
begin
  Application.MessageBox('Tarihi bo� giremezsiniz','HATA',MB_OK+MB_ICONERROR);
  abort;
end;
if QIsEkleMasterAciklama.Value='' then
begin
  Application.MessageBox('A��klamay� bo� giremezsiniz','HATA',MB_OK+MB_ICONERROR);
  abort;
end;
if QIsEkleMasterOncelik.Value='' then
begin
  Application.MessageBox('Onceli�i bo� giremezsiniz','HATA',MB_OK+MB_ICONERROR);
  abort;
end;
   QIsEkleMasterIsiveren.Value:=FormAna.xKullaniciNo;

end;

procedure TFormIsEkle.QSorumlularBeforePost(DataSet: TDataSet);
begin
  inherited;
if QSorumlular.State=dsinsert  then
begin
  if QSorumlularSorumlu.Value='' then
  begin
  application.MessageBox('Sorumlular� bo� giremezsiniz','HATA',MB_OK+MB_ICONERROR);

    Abort;
  end;
end;
if QSorumlularSorumlu.IsNull then QSorumlularSorumlu.Value:='';



  if QSorumlularSorumlu.Value='' then
  BEGIN
    Application.MessageBox('SORUMLUYU BO� G�REMEZS�N�Z','HATA',MB_OK+MB_ICONERROR) ;
    ABORT;
  END;
    QSorumlularMasterid.Value:=QIsEkleMasterid.Value;
end;

end.
