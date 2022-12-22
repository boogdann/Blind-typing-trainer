unit Unit2;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ToolWin, Vcl.ComCtrls;

type
  TfmMainMenu = class(TForm)
    btnMainGame: TButton;
    Rules: TButton;
    dtnExit: TButton;
    StatusBar1: TStatusBar;
    ToolBar1: TToolBar;
    Button1: TButton;
    procedure btnMainGameClick(Sender: TObject);
    procedure RulesClick(Sender: TObject);
    procedure dtnExitClick(Sender: TObject);
    procedure Button1Click(Sender: TObject);
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
  Unit4,
  Unit3;

procedure TfmMainMenu.btnMainGameClick(Sender: TObject);
begin
  fmMainLogic.Show;
  fmMainMenu.Hide;
end;


procedure TfmMainMenu.Button1Click(Sender: TObject);
begin
  fmMainMenu.Hide;
  Form4.Show;
end;

procedure TfmMainMenu.dtnExitClick(Sender: TObject);
begin
  fmMainMenu.Close;
end;

procedure TfmMainMenu.RulesClick(Sender: TObject);
begin
  fmMainMenu.Hide;
  fmRules.Show;
end;


end.
