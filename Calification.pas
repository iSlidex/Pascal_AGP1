program paridad;
var
//. Se desea escribir los resultados de un examen, en letras así:

//Si la nota está entre 0 y 10	--  “REPROBADO”
//Si la nota está entre 11 y 15	--  “APROBADO”
//Si la nota está entre 16 y 18	--  “NOTABLE”
//Si la nota está entre 19 y 20	--  “SOBRESALIENTE”

x:integer;
begin
writeln('Ingrese la nota del alumno ');
readln(x);
if (0<=x)AND (x<=10) then
writeln('Reprobado');
if (11<=x) AND (x<=15) then
writeln('Aprobado');
if (16<=x)AND(x<=18) then
writeln('Notable');
if (19<=x)AND(x<=20) then
writeln('Notable');
readln();
end.


