unit Unit3;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Menus;

type
  TfmRules = class(TForm)
<<<<<<< HEAD
    Label1: TLabel;
    Button1: TButton;
    procedure Button1Click(Sender: TObject);
=======
    backButton: TButton;
    procedure backButtonClick(Sender: TObject);
>>>>>>> cd7edae9f9e0bd6d15dcee190bc9d3a8dbe92e9c
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

procedure TfmRules.backButtonClick(Sender: TObject);
begin
  fmRules.Hide;
end;

end.
