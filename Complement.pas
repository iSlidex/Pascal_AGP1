program complemento;
 uses crt;
var
num,aux,pot,aux1,aux2,cont,cont2,a:longint;

begin
writeln('Inserte un numero para devolverle su complemento');
readln(num);

writeln;

//potencias
aux:=num; pot:=1;
while aux > 9 do
 begin
  aux:=aux div 10;
  pot:=pot*10;
 end;

aux2:=0; aux1:=num; cont:=0; cont2:=0;
while pot >= 1 do
 begin
  aux2:=aux1 div pot;
   aux1:=aux1 mod pot;

           while aux2 < 9 do
            begin
             aux2:=aux2+1;
             cont:=cont+1;
            end;
 a:=cont*pot;
 cont2:=cont2+a;

 pot:=pot div 10;
 cont:=0;
 end;

 writeln('El complemento del numero insertado es: ',cont2); writeln;


 readln;

end.
