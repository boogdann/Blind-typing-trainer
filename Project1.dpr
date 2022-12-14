program Project1;

uses
  Vcl.Forms,
  Unit1 in 'Unit1.pas' {fmMainLogic};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TfmMainLogic, fmMainLogic);
  Application.Run;
end.
