program Faylgayozish;

{$APPTYPE CONSOLE}
{$R *.res}

uses
  System.SysUtils,
  System.Classes;

var
  filename: string;
  F: Textfile;
  Line: string;
  ans: char;
  I: integer;
  redy: boolean;

begin
  write('Yangi fayl nomini kiriting : ');
  Readln(filename);

  if FileExists(filename) then
  begin
    write('Fayl mavjud faylga yozishni xohlaysizmi ! ( x/y )');
    Readln(ans);

    if UpperCase(ans) = 'X' then
      redy := true
    else
      redy := false
  end
  else
    redy := true;
  if redy then
  begin
    AssignFile(F, filename);
    Rewrite(F);
    writeLn('');

    I := 0;

    repeat
      write('Qator # ', I, ': ');
      inc(I);
      Readln(Line);
      if Line <> '%' then
        writeLn(F, Line);

    until (Line = '%');
    closefile(F)
  end
  else
    writeLn('xech narsa sodir bo`lmadi.');
  readLn;
end.
