unit UnitGiris;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, UnitGenel, cxGraphics, cxControls,
  cxLookAndFeels, cxLookAndFeelPainters, cxContainer, cxEdit, dxSkinsCore,
  dxSkinBlack, dxSkinBlue, dxSkinBlueprint, dxSkinCaramel, dxSkinCoffee,
  dxSkinDarkRoom, dxSkinDarkSide, dxSkinDevExpressDarkStyle,
  dxSkinDevExpressStyle, dxSkinFoggy, dxSkinGlassOceans, dxSkinHighContrast,
  dxSkiniMaginary, dxSkinLilian, dxSkinLiquidSky, dxSkinLondonLiquidSky,
  dxSkinMcSkin, dxSkinMetropolis, dxSkinMetropolisDark, dxSkinMoneyTwins,
  dxSkinOffice2007Black, dxSkinOffice2007Blue, dxSkinOffice2007Green,
  dxSkinOffice2007Pink, dxSkinOffice2007Silver, dxSkinOffice2010Black,
  dxSkinOffice2010Blue, dxSkinOffice2010Silver, dxSkinOffice2013DarkGray,
  dxSkinOffice2013LightGray, dxSkinOffice2013White, dxSkinOffice2016Colorful,
  dxSkinOffice2016Dark, dxSkinPumpkin, dxSkinSeven, dxSkinSevenClassic,
  dxSkinSharp, dxSkinSharpPlus, dxSkinSilver, dxSkinSpringTime, dxSkinStardust,
  dxSkinSummer2008, dxSkinTheAsphaltWorld, dxSkinTheBezier,
  dxSkinsDefaultPainters, dxSkinValentine, dxSkinVisualStudio2013Blue,
  dxSkinVisualStudio2013Dark, dxSkinVisualStudio2013Light, dxSkinVS2010,
  dxSkinWhiteprint, dxSkinXmas2008Blue, Vcl.StdCtrls, Vcl.Buttons, cxTextEdit,
  System.Actions, Vcl.ActnList,Registry;

type
  TFormGiris = class(TFormGenel)
    cxKullaniciAdi: TcxTextEdit;
    Label1: TLabel;
    cxSifre: TcxTextEdit;
    Label2: TLabel;
    BtnGiris: TBitBtn;
    BtnCikis: TBitBtn;
    ActionEnter: TAction;
    procedure BtnGirisClick(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure BtnCikisClick(Sender: TObject);
    procedure cxSifreKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure cxKullaniciAdiKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormGiris: TFormGiris;

implementation
  uses UnitDM;
{$R *.dfm}

procedure TFormGiris.BtnCikisClick(Sender: TObject);
begin
  inherited;
close;
end;

procedure TFormGiris.BtnGirisClick(Sender: TObject);
var
 Reg:TRegistry;
begin
  inherited;

  if cxKullaniciAdi.Text='' then
begin
  Application.MessageBox('Kullanici ad�n� bo� b�rakamazs�n�z','HATA',MB_OK+MB_ICONERROR);
  cxKullaniciAdi.SetFocus;
  exit;
end;
 DM.QGenel.Close;
 DM.QGenel.SQL.Text:='Select *from Kullanicilar where KullaniciNo=:pKullaniciNo';
 DM.QGenel.Parameters.ParamValues['pKullaniciNo']:=cxKullaniciAdi.Text;
 DM.QGenel.Open;
 if DM.QGenel.IsEmpty then
begin
  Application.MessageBox('Kullanici ad�n� bulunmad� ','HATA',MB_OK+MB_ICONERROR);
  cxKullaniciAdi.Text:='';
   cxSifre.Text:='';
  cxKullaniciAdi.SetFocus;
  exit;
end;
if cxSifre.Text='' then
begin
  Application.MessageBox('��FRE B�L�M�N� BO� BIRAKMAYIN','HATA',MB_OK+MB_ICONERROR);
  cxSifre.SetFocus;
  exit;
end;
if DM.QGenel.FieldValues['KullaniciSifre']<>cxSifre.Text then
begin
   Application.MessageBox('��FRE YANLI�','HATA',MB_OK+MB_ICONERROR);
   cxSifre.Text:='';
   exit;
end;
try
  Reg:=TRegistry.Create;
  Reg.RootKey:=HKEY_CURRENT_USER;
  if Reg.OpenKey('\Software\IsTakip',True) then
  Reg.WriteString('Kulllanici',cxKullaniciAdi.Text);

finally
   Reg.CloseKey;
   reg.Free;
end;
BtnCikis.Tag:=1;
  close;


end;

procedure TFormGiris.cxKullaniciAdiKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
if Key=VK_RETURN then cxSifre.SetFocus;
end;

procedure TFormGiris.cxSifreKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
if Key=VK_RETURN then BtnGiris.Click;
end;

procedure TFormGiris.FormCloseQuery(Sender: TObject; var CanClose: Boolean);
begin
  inherited;
if BtnCikis.Tag=0 then Application.Terminate;

end;

procedure TFormGiris.FormShow(Sender: TObject);
var
Reg:TRegistry;
begin
  inherited;
        try
  Reg:=TRegistry.Create;
  Reg.RootKey:=HKEY_CURRENT_USER;
  if Reg.OpenKey('\Software\IsTakip',True) then
 cxKullaniciAdi.Text:=Reg.ReadString('Kulllanici');

finally
   Reg.CloseKey;
   reg.Free;
end;
if cxKullaniciAdi.Text<>'' then cxSifre.SetFocus;

end;

end.
