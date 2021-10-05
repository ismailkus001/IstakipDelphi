unit UnitGenel;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, System.Actions, Vcl.ActnList;

type
  TFormGenel = class(TForm)
    ActionList1: TActionList;
    Action1: TAction;
    procedure Action1Execute(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormGenel: TFormGenel;

implementation

{$R *.dfm}

procedure TFormGenel.Action1Execute(Sender: TObject);
begin
  close;
end;

end.
