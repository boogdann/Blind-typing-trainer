unit Unit3;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TfmRules = class(TForm)
    backButton: TButton;
    procedure backButtonClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fmRules: TfmRules;

implementation

{$R *.dfm}


procedure TfmRules.backButtonClick(Sender: TObject);
begin
  fmRules.Hide;
end;

end.
