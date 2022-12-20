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

Const
  KOL_WORDS = 28;
  KOL_FILES = 8;
  PATH_F1 = 'D:\БГУИР\опи\Blind typing trainer\Words\1symbol.txt';
  PATH_F2 = 'D:\БГУИР\опи\Blind typing trainer\Words\2symbols.txt';
  PATH_F3 = 'D:\БГУИР\опи\Blind typing trainer\Words\3symbols.txt';
  PATH_F4 = 'D:\БГУИР\опи\Blind typing trainer\Words\4symbols.txt';
  PATH_F5 = 'D:\БГУИР\опи\Blind typing trainer\Words\5symbols.txt';
  PATH_F6 = 'D:\БГУИР\опи\Blind typing trainer\Words\6symbols.txt';
  PATH_F7 = 'D:\БГУИР\опи\Blind typing trainer\Words\7symbols.txt';
  PATH_F8 = 'D:\БГУИР\опи\Blind typing trainer\Words\8symbols.txt';
  TempForDecrease = 2;

Var
  UserString: string;
  RandomString: String;
  MaxLength: Integer = 20;
  TempForDuplicate: Integer = 2;
  PosUserStr, PosRandomStr, j, k: Integer;
  UserPart, RandomPart: string;
  OutputString: string;
  MinLength: Integer;
  MainLengthUserStr: Integer;
  kolElementsUserStr: Integer = 0;
  kolElementsRandomStr: INteger = 0;
  PreviousPosWord: Integer;
  IsEndGame: Boolean;
  f1, f2, f3, f4, f5, f6, f7, f8: TextFile;

implementation

{$R *.dfm}

Function RandomizeWord(Kol: Integer): String;
Var
  i: Integer;
  PosInString: Integer;
  Word: string;
begin

  i := 0;
  Randomize();
///////////////////////////////////// возможны баги

  Kol := Random(KOL_FILES) + 1;

  if (Kol = -1) then
    Kol := MaxLength;

  case (Kol) of
    1:
    begin
      // repeat
      PosInString := Random(KOL_WORDS);
      // until (PosInString <> PreviousPosWord);

      Reset(f1);
      i := 0;
      while ((i < PosInString) and (not EOF(f1))) do
      begin
        Readln(f1, Word);
        Inc(i);
      end;

      RandomizeWord := Word;
      PreviousPosWord := PosInString;
    end;

    2:
    begin
      repeat
        PosInString := Random(KOL_WORDS);
      until (PosInString <> PreviousPosWord);

      Reset(f2);
      i := 0;
      while ((i < PosInString) and (not EOF(f2))) do
      begin
        Readln(f2, Word);
        Inc(i);
      end;

      RandomizeWord := Word;
      PreviousPosWord := PosInString;
    end;

    3:
    begin
      repeat
        PosInString := Random(KOL_WORDS);
      until (PosInString <> PreviousPosWord);

      Reset(f3);
      i := 0;
      while ((i < PosInString) and (not EOF(f3))) do
      begin
        Readln(f3, Word);
        Inc(i);
      end;

      RandomizeWord := Word;
      PreviousPosWord := PosInString;
    end;

    4:
    begin
      repeat
        PosInString := Random(KOL_WORDS);
      until (PosInString <> PreviousPosWord);

      Reset(f4);
      i := 0;
      while ((i < PosInString) and (not EOF(f4))) do
      begin
        Readln(f3, word);
        Inc(i);
      end;

      RandomizeWord := Word;
      PreviousPosWord := PosInString;
    end;

    5:
    begin
      repeat
        PosInString := Random(KOL_WORDS);
      until (PosInString <> PreviousPosWord);

      Reset(f5);
      i := 0;
      while ((i < PosInString) and (not EOF(f4))) do
      begin
        Readln(f5, Word);
        Inc(i);
      end;

      RandomizeWord := Word;
      PreviousPosWord := PosInString;
    end;

    6:
    begin
      repeat
        PosInString := Random(KOL_WORDS);
      until (PosInString <> PreviousPosWord);

      Reset(f6);
      i := 0;
      while ((i < PosInString) and (not EOF(f6))) do
      begin
        Readln(f6, Word);
        Inc(i);
      end;

      RandomizeWord := Word;
      PreviousPosWord := PosInString;
    end;

    7:
    begin
      repeat
        PosInString := Random(KOL_WORDS);
      until (PosInString <> PreviousPosWord);

      Reset(f7);
      i := 0;
      while ((i < PosInString) and (not EOF(f7))) do
      begin
        Readln(f7, word);
        Inc(i);
      end;

      RandomizeWord := Word;
      PreviousPosWord := PosInString;
    end;

    8:
    begin
      repeat
        PosInString := Random(KOL_WORDS);
      until (PosInString <> PreviousPosWord);

      Reset(f8);
      i := 0;
      while ((i < PosInString) and (not EOF(f8))) do
      begin
        Readln(f8, word);
        Inc(i);
      end;

      RandomizeWord := Word;
      PreviousPosWord := PosInString;
    end;
  end;

end;

Function RandomizeString(Const MaxKolEl: Integer): String;
Var
  S, Word: string;
  PosFile, KolElements: Integer;
  PosInString, i: Integer;
  MaxKol: Integer;
  PreviousWord: String;
  PreviousFile: Integer;
begin


  Randomize;
  MaxKol := MaxKolEl;
  PreviousFile := -1;
//  AssignFile(f1, 'D:\БГУИР\опи\Blind typing trainer\Words\1symbol.txt');
//  AssignFile(f2, 'D:\БГУИР\опи\Blind typing trainer\Words\2symbols.txt');
//  AssignFile(f3, 'D:\БГУИР\опи\Blind typing trainer\Words\3symbols.txt');
//  AssignFile(f4, 'D:\БГУИР\опи\Blind typing trainer\Words\4symbols.txt');
//  AssignFile(f5, 'D:\БГУИР\опи\Blind typing trainer\Words\5symbols.txt');
//  AssignFile(f6, 'D:\БГУИР\опи\Blind typing trainer\Words\6symbols.txt');
//  AssignFile(f7, 'D:\БГУИР\опи\Blind typing trainer\Words\7symbols.txt');
//  AssignFile(f8, 'D:\БГУИР\опи\Blind typing trainer\Words\8symbols.txt');
//
//  Reset(f1);
//  Reset(f2);
//  Reset(f3);
//  Reset(f4);
//  Reset(f5);
//  Reset(f6);
//  Reset(f7);
//  Reset(f8);

   if (MaxKol < KOL_FILES) then
    Inc(MaxKol);

  while (S.length < MaxKolEl) and (MaxKol > 0) do
  begin
    i := 0;
    Randomize();
    if (MaxKol > KOL_FILES) then
    begin
      repeat
        Randomize();
        PosFile := Random(KOL_FILES) + 1;
      until not ((PosFile = PreviousFile) and (PreviousFile = 1));
    end
    else
      PosFile := MaxKol - 1;

    PreviousFile := PosFile;
    if (PosFile = 0) then
    begin
      S := S + 's';
      MaxKol := -1;
    end;

    case (PosFile) of
      1:
      begin
        //repeat
        Randomize();
        PosInString := Random(KOL_WORDS);

        Reset(f1);
        i := 0;
        while ((i < PosInString) and (not EOF(f1))) do
        begin
          Readln(f1, Word);
          Inc(i);
        end;
        // until Word <> PreviousWord;

        if (s <> '') then
          s := s + ' ' + word
        else
        begin
          if (Word[1] in ['a'..'z']) then
            Word[1] := Chr(ord(Word[1]) - 32);
          s := s + Word;
          Inc(MaxKol);
        end;

        PreviousWord := LowerCase(Word);
        MaxKol := MaxKol - PosFile - 1;
      end;

      2:
      begin
        repeat
          Randomize();
          PosInString := Random(KOL_WORDS);

          Reset(f2);
          i := 0;
          while ((i < PosInString) and (not EOF(f2))) do
          begin
            Readln(f2, Word);
            Inc(i);
          end;
        until LowerCase(Word) <> LowerCase(PreviousWord);

        if (s <> '') then
          s := s + ' ' + word
        else
        begin
          if (Word[1] in ['a'..'z']) then
            Word[1] := Chr(ord(Word[1]) - 32);
          s := s + Word;
          Inc(MaxKol);
        end;

        PreviousWord := LowerCase(Word);
        MaxKol := MaxKol - PosFile - 1;
      end;

      3:
      begin
        repeat
          Randomize();
          PosInString := Random(KOL_WORDS);

          Reset(f3);
          i := 0;
          while ((i < PosInString) and (not EOF(f3))) do
          begin
            Readln(f3, Word);
            Inc(i);
          end;
        until LowerCase(Word) <> LowerCase(PreviousWord);

        if (s <> '') then
          s := s + ' ' + word
        else
        begin
          if (Word[1] in ['a'..'z']) then
            Word[1] := Chr(ord(Word[1]) - 32);
          s := s + Word;
          Inc(MaxKol);
        end;

        PreviousWord := LowerCase(Word);
        MaxKol := MaxKol - PosFile - 1;
      end;

      4:
      begin
        repeat
          Randomize();
          PosInString := Random(KOL_WORDS);

          Reset(f4);
          i := 0;
          while ((i < PosInString) and (not EOF(f4))) do
          begin
            Readln(f4, Word);
            Inc(i);
          end;
        until LowerCase(Word) <> LowerCase(PreviousWord);

        if (s <> '') then
          s := s + ' ' + Word
        else
        begin
          if (Word[1] in ['a'..'z']) then
            Word[1] := Chr(ord(Word[1]) - 32);
          s := s + Word;
          Inc(MaxKol);
        end;

        PreviousWord := LowerCase(Word);
        MaxKol := MaxKol - PosFile - 1;
      end;

      5:
      begin
        repeat
          Randomize();
          PosInString := Random(KOL_WORDS);

          Reset(f5);
          i := 0;
          while ((i < PosInString) and (not EOF(f5))) do
          begin
            Readln(f5, Word);
            Inc(i);
          end;
        until LowerCase(Word) <> LowerCase(PreviousWord);

        if (s <> '') then
          s := s + ' ' + word
        else
        begin
          if (Word[1] in ['a'..'z']) then
            Word[1] := Chr(ord(Word[1]) - 32);
          s := s + Word;
          Inc(MaxKol);
        end;

        PreviousWord := LowerCase(Word);
        MaxKol := MaxKol - PosFile - 1;
      end;

      6:
      begin
        repeat
          Randomize();
          PosInString := Random(KOL_WORDS);

          Reset(f6);
          i := 0;
          while ((i < PosInString) and (not EOF(f6))) do
          begin
            Readln(f6, Word);
            Inc(i);
          end;
        until LowerCase(Word) <> LowerCase(PreviousWord);

        if (s <> '') then
          s := s + ' ' + Word
        else
        begin
          if (Word[1] in ['a'..'z']) then
            Word[1] := Chr(ord(Word[1]) - 32);
          s := s + Word;
          Inc(MaxKol);
        end;

        PreviousWord := LowerCase(Word);
        MaxKol := MaxKol - PosFile - 1;
      end;

      7:
      begin
        repeat
          Randomize();
          PosInString := Random(KOL_WORDS);

          Reset(f7);
          i := 0;
          while ((i < PosInString) and (not EOF(f7))) do
          begin
            Readln(f7, Word);
            Inc(i);
          end;
        until LowerCase(Word) <> LowerCase(PreviousWord);

        if (s <> '') then
          s := s + ' ' + word
        else
        begin
          if (Word[1] in ['a'..'z']) then
            Word[1] := Chr(ord(Word[1]) - 32);
          s := s + Word;
          Inc(MaxKol);
        end;

        PreviousWord := LowerCase(Word);
        MaxKol := MaxKol - PosFile - 1;
      end;

      8:
      begin
        repeat
          Randomize();
          PosInString := Random(KOL_WORDS);

          Reset(f8);
          i := 0;
          while ((i < PosInString) and (not EOF(f8))) do
          begin
            Readln(f8, Word);
            Inc(i);
          end;
        until LowerCase(Word) <> LowerCase(PreviousWord);

        if (s <> '') then
          s := s + ' ' + word
        else
        begin
          if (Word[1] in ['a'..'z']) then
            Word[1] := Chr(ord(Word[1]) - 32);
          s := s + Word;
          Inc(MaxKol);
        end;

        PreviousWord := LowerCase(Word);
        MaxKol := MaxKol - PosFile - 1;
      end;
    end;

  end;

  SetLength(S, MaxKolEl);
  RandomizeString := S;
end;

procedure TfmMainLogic.edtStringFromUserKeyPress(Sender: TObject; var Key: Char);
var
  i: Integer;
  KolElInStr: Integer;
  isNewString: Boolean;
begin
  isNewString := False;
  if not (Key in ['a'..'z', 'A'..'Z' ,#13, '1', '3', ' ']) then
    Key := #0;

  UserString := edtStringFromUser.Text;
  MainLengthUserStr := Length(UserString);

  if (UserString = '13') then
  begin
    ShowMessage('Игра окончена');

    IsEndGame := True;
    edtStringFromUser.Clear;
    memoStringOutput.Clear;
  end;
  SetLength(UserString, Length(RandomString));

  if ((Key = #13) and (not IsEndGame)) then
  begin
    OutputString := '';

    if (UserString = RandomString) then
    begin


      MaxLength := MaxLength - TempForDecrease;
      RandomString := RandomizeString(MaxLength);

      isNewString := True;
      OutputString := RandomString;
      memoStringOutput.Clear;
      memoStringOutput.Lines[0] := RandomString;
      edtStringFromUser.Clear;
    end;

    // if (Length(UserString) <= Length(RandomString)) then
      // MaxLength := Length(RandomString)
    // else
      // MaxLength := Length(UserString);

    PosUserStr := 1;
    PosRandomStr := 1;

    i := 1;
    while ((i <= Length(RandomString)) and (not IsNewString)) do
    begin
      kolElementsUserStr := 0;
      kolElementsRandomStr := 0;

      while ((UserString[PosUserStr] <> ' ') and (PosUserStr <= MainLengthUserStr)) do
      begin
        Inc(PosUserStr);
        Inc(kolElementsUserStr);
      end;

      while ((RandomString[PosRandomStr] <> ' ') and (PosRandomStr <= Length(RandomString))) do
      begin
        Inc(PosRandomStr);
        Inc(kolElementsRandomStr);
      end;

      UserPart := Copy(UserString, PosUserStr - kolElementsUserStr, kolElementsUserStr);
      RandomPart := Copy(RandomString, i, kolElementsRandomStr);

      if (UserPart = RandomPart) then
      begin
        if (MaxLength <= KOL_FILES) then
        begin


          MaxLength := MaxLength - TempForDecrease;
          OutputString := RandomizeWord(-1)
        end
        else
        begin
          if (OutputString <> '') then
            OutputString := OutputString + RandomizeWord(Length(UserPart)) + ' '
          else
            OutputString := RandomizeWord(Length(UserPart)) + ' ';//////////////////

        end;
      end
      else
      begin
        /////////////////////////////////////////////////////////////////////////
        SetLength(UserPart, Length(RandomPart));
        j := 1;
        while ((j <= Length(RandomPart)) and (UserPart[i] <> ' ')) do
        begin
          if (UserPart[j] <> RandomPart[j]) then
          begin
            for k := 1 to TempForDuplicate do
              OutputString := OutputString + RandomPart[j];
          end
          else
            OutputString := OutputString + RandomPart[j];
          Inc(j);
        end;
        OutputString := OutputString + ' ';

      end;
      memoStringOutput.Lines[0] := OutputString;

      Inc(PosRandomStr);
      Inc(PosUserStr);
      i := PosRandomStr;

    end;

    // попробовать без этого
    ///////////////////////////////////////////////////////////////////////////
    i := 1;
    while (i < Length(OutputString)) do
    begin
    if ((OutputString[1] = ' ')) then
      begin
        Delete(OutputString, 1, 1);
        Dec(i);
      end;


      if ((OutputString[i] = ' ') and (OutputString[i + 1] = ' ')) then
      begin
        Delete(OutputString, i, 1);
        Dec(i);
      end;
      Inc(i);
    end;
    ////////////////////////////////////////////////////////////////////////////

    memoStringOutput.Lines[0] := '';
    memoStringOutput.Lines[0] := OutputString;
    edtStringFromUser.Clear;

    RandomString := OutputString;
  end;


  if (Length(UserString) >= 60) then
  begin
    ShowMessage('Игра проиграна. Попробуйте ещё');
    // начало игры заново !!!!!!!!!!!!!!!!!!!!!!!!!!!1

    MaxLength := 20;
    TempForDuplicate := 2;
    fmMainLogic.Hide;
    fmMainLogic.Show;
  end;
  Inc(i);

  if (MaxLength = 0) then
  begin
    TempForDuplicate := TempForDuplicate * 2;
    ShowMessage('Следующий раунд!');

    MaxLength := 20;
    RandomString :=  RandomizeString(MaxLength);

    memoStringOutput.Clear;
    memoStringOutput.Lines[0] := RandomString;
    UserString := '';
    fmMainLogic.Hide;
    fmMainLogic.Show;
  end;

end;

procedure TfmMainLogic.FormCreate(Sender: TObject);
begin
  AssignFile(f1, PATH_F1);
  AssignFile(f2, PATH_F2);
  AssignFile(f3, PATH_F3);
  AssignFile(f4, PATH_F4);
  AssignFile(f5, PATH_F5);
  AssignFile(f6, PATH_F6);
  AssignFile(f7, PATH_F7);
  AssignFile(f8, PATH_F8);

  Reset(f1);
  Reset(f2);
  Reset(f3);
  Reset(f4);
  Reset(f5);
  Reset(f6);
  Reset(f7);
  Reset(f8);

  RandomString := RandomizeString(MaxLength);
  memoStringOutput.Lines[0] := RandomString;

end;

end.


