unit Unit3;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Menus;

type
  TfmRules = class(TForm)
    Label1: TLabel;
    Button1: TButton;
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fmRules: TfmRules;

implementation

{$R *.dfm}

Uses Unit2;
procedure TfmRules.Button1Click(Sender: TObject);
begin
  fmMainMenu.Show;
  fmRules.Hide;
end;

end.
