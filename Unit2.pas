unit Unit2;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TfmMainMenu = class(TForm)
    btnMainGame: TButton;
    Правила: TButton;
    dtnExit: TButton;
    procedure btnMainGameClick(Sender: TObject);
    procedure ПравилаClick(Sender: TObject);
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

procedure TfmMainMenu.ПравилаClick(Sender: TObject);
begin
  fmMainLogic.Show;
  fmMainMenu.Hide;
end;



end.
