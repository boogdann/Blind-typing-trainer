program Project1;

uses
  Vcl.Forms,
  Unit1 in 'Unit1.pas' {fmMainLogic},
  Unit2 in 'Unit2.pas' {fmMainMenu},
  Unit3 in 'Unit3.pas' {fmRules},
  Unit4 in 'Unit4.pas' {Form4};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TfmMainMenu, fmMainMenu);
  Application.CreateForm(TfmMainLogic, fmMainLogic);
  Application.CreateForm(TfmRules, fmRules);
  Application.CreateForm(TForm4, Form4);
  Application.Run;
end.
