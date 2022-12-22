unit Unit2;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ToolWin, Vcl.ComCtrls;

type
  TfmMainMenu = class(TForm)
    btnMainGame: TButton;
<<<<<<< HEAD
    btnRules: TButton;
=======
    Rules: TButton;
>>>>>>> 4a6fbceda96d23aefa8a29b5852da5e3abc10005
    dtnExit: TButton;
    StatusBar1: TStatusBar;
    ToolBar1: TToolBar;
    Button1: TButton;
    procedure btnMainGameClick(Sender: TObject);
<<<<<<< HEAD
    procedure btnRulesClick(Sender: TObject);
=======
    procedure RulesClick(Sender: TObject);
>>>>>>> 4a6fbceda96d23aefa8a29b5852da5e3abc10005
    procedure dtnExitClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fmMainMenu: TfmMainMenu;

implementation

{$R *.dfm}
Uses
  Unit1,
  Unit3;

procedure TfmMainMenu.btnMainGameClick(Sender: TObject);
begin
  fmMainLogic.Show;
  fmMainMenu.Hide;
end;


procedure TfmMainMenu.dtnExitClick(Sender: TObject);
begin
  fmMainMenu.Close;
end;

<<<<<<< HEAD
procedure TfmMainMenu.btnRulesClick(Sender: TObject);
=======
procedure TfmMainMenu.RulesClick(Sender: TObject);
>>>>>>> 4a6fbceda96d23aefa8a29b5852da5e3abc10005
begin
  fmRules.Show;
end;


end.
