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
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fmMainLogic: TfmMainLogic;
Var
  UserString: string;
  RandomString: String = 'qwertyu asdf rty';
  MaxLength: Integer = 20;
  TempForDuplicate: Integer = 2;
  PosUserStr, PosRandomStr, j, k: Integer;
  UserPart, RandomPart: string;
  OutputString: string;
  MinLength: Integer;
  MainLengthUserStr: Integer;
  kolElementsUserStr: Integer = 0;
  kolElementsRandomStr: INteger = 0;
implementation

{$R *.dfm}

procedure TfmMainLogic.edtStringFromUserKeyPress(Sender: TObject; var Key: Char);
var
  i: Integer;
begin
  if not (Key in ['a'..'z', 'A'..'Z' ,#13, '1', '3', ' ']) then
    Key := #0;

  UserString := edtStringFromUser.Text;
  MainLengthUserStr := Length(UserString);
  SetLength(UserString, Length(RandomString));
  if (UserString = '13') then
  begin
    ShowMessage('Игра окончена');
    edtStringFromUser.Clear;
    memoStringOutput.Clear;
  end;

  if (Key = #13) then
  begin
    // ShowMessage('WORKK!!!');
    if (UserString = RandomString) then
    begin
      // рандом новго слова
      MaxLength := MaxLength - 2;
      //
      //
      //
    end;

    if (Length(UserString) <= Length(RandomString)) then
      MaxLength := Length(RandomString)
    else
      MaxLength := Length(UserString);

    PosUserStr := 0;
    PosRandomStr := 0;

    i := 1;
    while (i <= Length(RandomString)) do
    begin
      kolElementsUserStr := 0;
      kolElementsRandomStr := 0;

      while ((UserString[PosUserStr] <> ' ') and (PosUserStr <= MainLengthUserStr)) do
      begin
        Inc(PosUserStr);
        Inc(kolElementsUserStr);
      end;

      // if (i <> 1) then
        // Inc(PosRandomStr);

      while ((RandomString[PosRandomStr] <> ' ') and (PosRandomStr <= Length(RandomString))) do
      begin
        Inc(PosRandomStr);
        INc(kolElementsRandomStr);
      end;

      UserPart := Copy(UserString, PosUserStr - kolElementsUserStr, kolElementsUserStr);
      RandomPart := Copy(RandomString, i, kolElementsRandomStr);

      if (UserPart = RandomPart) then
      begin
        // OutputString := OutputString +
        // брать из файли слово на -2 буквы
      end
      else
      begin

        j := 1;
        while ((j <= Length(RandomPart)) and (UserPart[i] <> ' ')) do
        begin
          if (UserPart[j] <> RandomPart[j]) then
          begin
            for k := 1 to TempForDuplicate div 2 do
              OutputString := OutputString + RandomPart[j];
          end;
            OutputString := OutputString + RandomPart[j];
          Inc(j);
        end;
      end;

      Inc(PosRandomStr);
      Inc(PosUserStr);
      // PosUserStr := PosRandomStr;
      i := PosRandomStr;

    end;
    memoStringOutput.Clear;
    memoStringOutput.Lines[0] := OutputString;
  end;
   memoStringOutput.Clear;


  if (Length(UserString) >= 60) then
  begin
    ShowMessage('Игра проиграна. Попробуйте ещё');
    // начало игры заново !!!!!!!!!!!!!!!!!!!!!!!!!!!1
  end;
  Inc(i);

  if (MaxLength = 0) then
  begin
    TempForDuplicate := TempForDuplicate * 2;
    // рандом новой строки
  end;

end;

procedure TfmMainLogic.FormCreate(Sender: TObject);
begin
  memoStringOutput.Lines[0] := RandomString;
end;

end.


