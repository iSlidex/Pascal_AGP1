program contador_de_letras;
 uses crt;
var
caracter1,frase:string;
i,j,long,cont:integer;

begin
writeln('Inserte una frase');
readln(frase);

long:=length(frase);

for i:=1 to long do
 begin
  caracter1:=frase[i];
                     for j:=1 to long do
                       begin

                           if ((caracter1=frase[j]) and (not(frase[j]=' '))) then
                           begin
                            frase[j]:=' ';
                            cont:=cont+1;
                            end;
                       end;
  if not(caracter1=' ') then
  writeln(caracter1,':',cont);
  cont:=0;
  end;

  readln;
  end.
