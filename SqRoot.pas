Program raiz_cuadrada;
var
x:real;
r:real;
begin
writeln('Inserte el valor de x para calcular su raiz cuadrada');
readln(x);
if x>0 then
Begin
r:=sqrt(x);
writeln('el valor de la raiz cuadrada es:');
writeln(r:20:10);
end
else writeln('No se puede calcular,por definicion, no existe una raiz cuadrada de un numero negativo');
readln;
end.
