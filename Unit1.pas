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

implementation

{$R *.dfm}

Function RandomizeWord(Kol: Integer): String;
Var
  f1, f2, f3, f4, f5, f6, f7, f8: TextFile;
  i: Integer;
  PosInString: Integer;
  Word: string;
begin
  AssignFile(f1, 'D:\¡√”»–\ÓÔË\Blind typing trainer\Words\1symbol.txt');
  AssignFile(f2, 'D:\¡√”»–\ÓÔË\Blind typing trainer\Words\2symbols.txt');
  AssignFile(f3, 'D:\¡√”»–\ÓÔË\Blind typing trainer\Words\3symbols.txt');
  AssignFile(f4, 'D:\¡√”»–\ÓÔË\Blind typing trainer\Words\4symbols.txt');
  AssignFile(f5, 'D:\¡√”»–\ÓÔË\Blind typing trainer\Words\5symbols.txt');
  AssignFile(f6, 'D:\¡√”»–\ÓÔË\Blind typing trainer\Words\6symbols.txt');
  AssignFile(f7, 'D:\¡√”»–\ÓÔË\Blind typing trainer\Words\7symbols.txt');
  AssignFile(f8, 'D:\¡√”»–\ÓÔË\Blind typing trainer\Words\8symbols.txt');

  Reset(f1);
  Reset(f2);
  Reset(f3);
  Reset(f4);
  Reset(f5);
  Reset(f6);
  Reset(f7);
  Reset(f8);

  i := 0;
  Randomize();
  Kol := Random(KOL_FILES) + 1;

  case (Kol) of
    1:
    begin
      repeat
        PosInString := Random(KOL_WORDS);
      until (PosInString <> PreviousPosWord);

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
  f1, f2, f3, f4, f5, f6, f7, f8: TextFile;
  S, Word: string;
  PreviousPos: Integer;
  PosFile, KolElements: Integer;
  PosInString, i: Integer;
  MaxKol: Integer;
  PreviousWord: String;

begin
  PreviousPos := -1;
  Randomize;
  MaxKol := MaxKolEl;

  AssignFile(f1, 'D:\¡√”»–\ÓÔË\Blind typing trainer\Words\1symbol.txt');
  AssignFile(f2, 'D:\¡√”»–\ÓÔË\Blind typing trainer\Words\2symbols.txt');
  AssignFile(f3, 'D:\¡√”»–\ÓÔË\Blind typing trainer\Words\3symbols.txt');
  AssignFile(f4, 'D:\¡√”»–\ÓÔË\Blind typing trainer\Words\4symbols.txt');
  AssignFile(f5, 'D:\¡√”»–\ÓÔË\Blind typing trainer\Words\5symbols.txt');
  AssignFile(f6, 'D:\¡√”»–\ÓÔË\Blind typing trainer\Words\6symbols.txt');
  AssignFile(f7, 'D:\¡√”»–\ÓÔË\Blind typing trainer\Words\7symbols.txt');
  AssignFile(f8, 'D:\¡√”»–\ÓÔË\Blind typing trainer\Words\8symbols.txt');

  Reset(f1);
  Reset(f2);
  Reset(f3);
  Reset(f4);
  Reset(f5);
  Reset(f6);
  Reset(f7);
  Reset(f8);

  while (MaxKol > 0) do
  begin
    i := 0;
    Randomize();
    if (MaxKol > 7) then
      PosFile := Random(KOL_FILES) + 1
    else
      PosFile := MaxKol - 1;

    case (PosFile) of
      1:
      begin
        repeat
          Randomize();
          PosInString := Random(KOL_WORDS);

          while ((i < PosInString) and (not EOF(f1))) do
          begin
            Readln(f1, Word);
            Inc(i);
          end;
        until Word <> PreviousWord;

        if (s <> '') then
          s := s + ' ' + word
        else
        begin
          if (Word[1] in ['a'..'z']) then
            Word[1] := Chr(ord(Word[1]) - 32);
          s := s + Word;
          Inc(MaxKol);
        end;

        PreviousWord := Word;
      end;

      2:
      begin
        repeat
          Randomize();
          PosInString := Random(KOL_WORDS);

          while ((i < PosInString) and (not EOF(f2))) do
          begin
            Readln(f2, Word);
            Inc(i);
          end;
        until Word <> PreviousWord;

        if (s <> '') then
          s := s + ' ' + word
        else
        begin
          if (Word[1] in ['a'..'z']) then
            Word[1] := Chr(ord(Word[1]) - 32);
          s := s + Word;
          Inc(MaxKol);
        end;

        PreviousWord := Word;
      end;

      3:
      begin
        repeat
          Randomize();
          PosInString := Random(KOL_WORDS);

          while ((i < PosInString) and (not EOF(f3))) do
          begin
            Readln(f3, Word);
            Inc(i);
          end;
        until Word <> PreviousWord;

        if (s <> '') then
          s := s + ' ' + word
        else
        begin
          if (Word[1] in ['a'..'z']) then
            Word[1] := Chr(ord(Word[1]) - 32);
          s := s + Word;
          Inc(MaxKol);
        end;

        PreviousWord := Word;
      end;

      4:
      begin
        repeat
          Randomize();
          PosInString := Random(KOL_WORDS);

          while ((i < PosInString) and (not EOF(f4))) do
          begin
            Readln(f4, Word);
            Inc(i);
          end;
        until Word <> PreviousWord;

        if (s <> '') then
          s := s + ' ' + word
        else
        begin
          if (Word[1] in ['a'..'z']) then
            Word[1] := Chr(ord(Word[1]) - 32);
          s := s + Word;
          Inc(MaxKol);
        end;

        PreviousWord := Word;
      end;

      5:
      begin
        repeat
          Randomize();
          PosInString := Random(KOL_WORDS);

          while ((i < PosInString) and (not EOF(f5))) do
          begin
            Readln(f5, Word);
            Inc(i);
          end;
        until Word <> PreviousWord;

        if (s <> '') then
          s := s + ' ' + word
        else
        begin
          if (Word[1] in ['a'..'z']) then
            Word[1] := Chr(ord(Word[1]) - 32);
          s := s + Word;
          Inc(MaxKol);
        end;

        PreviousWord := Word;
      end;

      6:
      begin
        repeat
          Randomize();
          PosInString := Random(KOL_WORDS);

          while ((i < PosInString) and (not EOF(f6))) do
          begin
            Readln(f6, Word);
            Inc(i);
          end;
        until Word <> PreviousWord;

        if (s <> '') then
          s := s + ' ' + word
        else
        begin
          if (Word[1] in ['a'..'z']) then
            Word[1] := Chr(ord(Word[1]) - 32);
          s := s + Word;
          Inc(MaxKol);
        end;

        PreviousWord := Word;
      end;

      7:
      begin
        repeat
          Randomize();
          PosInString := Random(KOL_WORDS);

          while ((i < PosInString) and (not EOF(f7))) do
          begin
            Readln(f7, Word);
            Inc(i);
          end;
        until Word <> PreviousWord;

        if (s <> '') then
          s := s + ' ' + word
        else
        begin
          if (Word[1] in ['a'..'z']) then
            Word[1] := Chr(ord(Word[1]) - 32);
          s := s + Word;
          Inc(MaxKol);
        end;

        PreviousWord := Word;
      end;

      8:
      begin
        repeat
          Randomize();
          PosInString := Random(KOL_WORDS);

          while ((i < PosInString) and (not EOF(f8))) do
          begin
            Readln(f8, Word);
            Inc(i);
          end;
        until Word <> PreviousWord;

        if (s <> '') then
          s := s + ' ' + word
        else
        begin
          if (Word[1] in ['a'..'z']) then
            Word[1] := Chr(ord(Word[1]) - 32);
          s := s + Word;
          Inc(MaxKol);
        end;

        PreviousWord := Word;
      end;

    end;

    MaxKol := MaxKol - PosFile - 1;;
  end;
  RandomizeString := s;
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
    ShowMessage('»„‡ ÓÍÓÌ˜ÂÌ‡');

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
      MaxLength := MaxLength - 2;
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
        if (OutputString <> '') then
          OutputString := OutputString + RandomizeWord(Length(UserPart)) + ' '
        else
          OutputString := RandomizeWord(Length(UserPart));//////////////////
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
            for k := 0 to TempForDuplicate div 2 do
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
    memoStringOutput.Lines[0] := '';
    memoStringOutput.Lines[0] := OutputString;
    edtStringFromUser.Clear;
    MaxLength := Length(OutputString);
  end;

  if (Length(UserString) >= 60) then
  begin
    ShowMessage('»„‡ ÔÓË„‡Ì‡. œÓÔÓ·ÛÈÚÂ Â˘∏');
    // Ì‡˜‡ÎÓ Ë„˚ Á‡ÌÓ‚Ó !!!!!!!!!!!!!!!!!!!!!!!!!!!1

  end;
  Inc(i);

  if (MaxLength = 0) then
  begin
    TempForDuplicate := TempForDuplicate * 2;
    ShowMessage('—ÎÂ‰Û˛˘ËÈ ‡ÛÌ‰!');

    MaxLength := 20;
    RandomString :=  RandomizeString(MaxLength);

    memoStringOutput.Clear;
    memoStringOutput.Lines[0] := RandomString;
    fmMainLogic.Hide;
    fmMainLogic.Show;
  end;

end;

procedure TfmMainLogic.FormCreate(Sender: TObject);
begin
  RandomString := RandomizeString(MaxLength);
  memoStringOutput.Lines[0] := RandomString;
end;

end.


