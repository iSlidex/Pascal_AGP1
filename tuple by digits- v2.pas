program strings;
var
s,s1:string;
i,j:integer;
begin
     writeln('Inserte dos numeros');
     write('1: ');readln(s);
     write('2: ');readln(s1);
     for i:=1 to length(s) do
     begin
         for j:=1 to length(s1) do
             write('(',s[i],',',s1[j],')');
     writeln;
     end;
     readln;
end.
