program algo;
uses crt;

var
n,n2:integer;

procedure tramboliko2(n,n2:integer);
begin
      if ((n2>0)) then
     begin
          write('(',n mod 10);
          write(',',n2 mod 10,')');
          tramboliko2(n,n2 div 10);
        end
     else writeln();
end;

procedure tramboliko(n,n2:integer);
begin
     if (n>0) then
     begin
        tramboliko(n div 10, n2);
        tramboliko2(n,n2);
     end;
end;
begin
//lee dos numeros
writeln('Inserte dos numeros');
write('1: ');readln(n);
write('2: ');readln(n2);
tramboliko(n,n2);
readln;
end.
