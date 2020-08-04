program complemento;
uses crt;
var
n: integer;

function calculate (n:integer):Integer;
var
i:integer;
begin
if (n>9) then
begin
i:=calculate (n div 10);
calculate:=(9-(n mod 10))+i*10;
end else calculate:=9-n;
end;

begin
  writeln('ingresa un numero');
  readln(n);
  n:=abs(n);
  writeln('el numero complemento es ',calculate (n));
  readln;
end.
