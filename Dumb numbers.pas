Program AddNums(output);
var 
a,b:integer;
d,c:boolean;
begin
writeln('ingrese un numero x');
readln(a);
d:=true;
c:=true;

while (a>0) and c do
begin
b:=a;
a:=a div 10;
writeln(a);
b:=b mod 10;
writeln(b);
b:=b mod 2;
writeln(b);

if b<>0 then 
begin
b:=a;
a:=a div 10;
b:=b mod 10;
b:=b mod 2;
if b=0 then
d:=false;

end;
end;
if d then  writeln('El numero x es un numero bobo') else
writeln('El numero x no es un numero bobo');
readln;
end.

