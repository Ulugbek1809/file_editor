program Faylnioqish;

{$APPTYPE CONSOLE}
{$R *.res}

uses
  System.SysUtils, System.Classes;

var
  filename: string;
  F: Textfile;
  Line: string;

begin
  write('fayl nomini kiriting :');
  readln(filename);
  writeln;
  if FileExists(filename) then
  begin
    Assignfile(F,filename);
    Reset(F);
    while not eof(F) do
    begin
    Readln(F,Line);
    Writeln(line)
    end;
    CloseFile(F);
  end else
  writeln('Fayl mavjud emas!');

  readln;
end.
