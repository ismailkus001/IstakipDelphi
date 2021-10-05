program Project1;

uses
  Vcl.Forms,
  UnitAna in 'form\UnitAna.pas' {FormAna},
  UnitGenel in 'form\UnitGenel.pas' {FormGenel},
  UnitDM in 'form\UnitDM.pas' {DM: TDataModule},
  UnitGiris in 'form\UnitGiris.pas' {FormGiris},
  UnitIsEkle in 'form\UnitIsEkle.pas' {FormIsEkle},
  UnitYapilanIsEkle in 'form\UnitYapilanIsEkle.pas' {FormYapilanIsEkle};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TDM, DM);
  Application.CreateForm(TFormAna, FormAna);
  Application.Run;
end.
