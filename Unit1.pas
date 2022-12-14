unit Unit1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TfmMainLogic = class(TForm)
    memoStringOutput: TMemo;
    edtStringFromUser: TEdit;
    procedure edtStringFromUserKeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fmMainLogic: TfmMainLogic;
Var
  UserString: string;
  RandomString: String;
  MaxLength: Integer = 20;
  TempForDuplicate: Integer = 2;
  PosUserStr, PosRandomStr, j, k: Integer;
  UserPart, RandomPart: string;
  OutputString: string;
  MinLength: Integer;

implementation

{$R *.dfm}

procedure TfmMainLogic.edtStringFromUserKeyPress(Sender: TObject; var Key: Char);
var
  i: Integer;
begin
  if not (Key in ['a'..'z', 'A'..'Z' ,#13, '1', '3']) then
    Key := #0;

  if (Key = #13) then
  begin
    ShowMessage('WORKK!!!');
    if (UserString = RandomString) then
    begin
      // random new string
    end;

    if (Length(UserString) > Length(RandomString)) then
      MinLength := Length(RandomString)
    else
      MinLength := Length(UserString);

    PosUserStr := 0;
    PosRandomStr := 0;

    i := 1;
    while (i <= Length(UserString)) do
    begin
      while (UserString[PosUserStr] <> ' ') do
        Inc(PosUserStr);

      while (RandomString[PosRandomStr] <> ' ') do
        Inc(PosRandomStr);

      UserPart := Copy(UserString, i, PosUserStr);
      RandomPart := Copy(RandomString, i, PosRandomStr);

      if (UserPart = RandomPart) then
      begin
        // OutputString := OutputString +
        // ����� �� ����� ����� �� -2 �����
      end
      else
      begin

        if (Length(UserPart) >= Length(RandomPart)) then
        begin
          j := 0;
          while (j <= Length(RandomPart)) do
          begin
            if (UserPart[j] <> RandomPart[j]) then
            begin
              for k := 1 to TempForDuplicate div 2 do
                OutputString := OutputString + UserPart[j];
            end;
            Inc(j);
          end;

          j := Length(RandomPart) + 1;
          while (j < Length(UserPart)) do
            for k := 1 to TempForDuplicate div 2 do
              OutputString := OutputString + UserPart[j];

        end
        else
        begin

          j := 0;
          while (j <= Length(UserPart)) do
          begin
            if (UserPart[j] <> RandomPart[j]) then
            begin
              for k := 1 to TempForDuplicate div 2 do
                OutputString := OutputString + UserPart[j];
            end;
            Inc(j);
          end;

          j := Length(RandomPart) + 1;
          while (j < Length(UserPart)) do
            for k := 1 to TempForDuplicate div 2 do
              OutputString := OutputString + UserPart[j];
        end

      end;

      i := i + PosUserStr;
    end;

  end;

    memoStringOutput.Lines[0] := OutputString;

    if (Length(UserString) >= 60) then
    begin
      ShowMessage('���� ���������. ���������� ���');
      // ������ ���� ������ !!!!!!!!!!!!!!!!!!!!!!!!!!!1
    end;
    Inc(i);

    memoStringOutput.Lines[0] := UserString;


  UserString := edtStringFromUser.Text;
end;

end.

//procedure TfmMainLogic.memoStringOutputEnter(Sender: TObject);
//var
//  i: Integer;
//begin
//  ShowMessage('���� ���������. ���������� ���');
//  i := 1;
//  while (i < Length(UserString)) do
//  begin
//    if (UserString[i] <> RandomString[i]) then
//      for j := 1 to Temp4Duplicate div 2 do
//      begin
//        Insert(UserString[i], RandomString, i);
//      end;
//    Inc(i);
//  end;
//
//  if (Length(UserString) >= 60) then
//  begin
//    ShowMessage('���� ���������. ���������� ���');
//    // ������ ���� ������ !!!!!!!!!!!!!!!!!!!!!!!!!!!1
//  end;
//  memoStringOutput.Lines[0] := UserString;
//end;
