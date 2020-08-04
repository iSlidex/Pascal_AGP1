program Prueba_1_Leonardo_Ruiz;
var
//construir un programa en pascal para resolver un sistema de ecuaciones de 3x3 de la forma
//a1x1+b1x2+c1x3=d1
//a2x1+b2x2+c2x3=d2
//a3x1+b3x2+c3x3=d3
a1,a2,a3:integer;
b1,b2,b3:integer;
c1,c2,c3:integer;
d1,d2,d3:integer;
x1,x2,x3:real;
//determinante
u1,u2,u3:real;
// delta x1
o1,o2,o3:real;
// delta x2
n1,n2,n3:real;
//delta x3
z1,z2,z3:real;
begin
writeln('Este programa resuelve un sistema de ecuaciones 3x3 de la forma :');
writeln('a1x1+b1x2+c1x3=d1 (Primera Ecuacion)');
writeln('a2x1+b2x2+c2x3=d2 (Segunda Ecuacion)');
writeln('a3x1+b3x2+c3x3=d3 (Tercera Ecuacion)');
writeln('Introduzca los valores de las constantes de la primera ecuacion: ');
readln(a1,b1,c1,d1);
writeln('Introduzca los valores de las constantes de la segunda ecuacion: ');
readln(a2,b2,c2,d2);
writeln('Introduzca los valores de las constantes de la tercera ecuacion: ');
readln(a3,b3,c3,d3);
writeln('El sistema de ecuaciones a resolver es el siguiente:');
write(a1,'x1+',b1,'x2+',c1,'x3=',d1);
writeln;
write(a2,'x1+',b2,'x2+',c2,'x3=',d2);
writeln;
write(a3,'x1+',b3,'x2+',c3,'x3=',d3);
writeln;
//determinante global
u1:=(a1*b2*c3+a2*b3*c1+a3*b1*c2);
u2:=(a2*b1*c3+a1*b3*c2+a3*b2*c1);
u3:=(u1-u2);
//delta x1
o1:=(d1*b2*c3+d2*b3*c1+d3*b1*c2);
o2:=(d2*b1*c3+d1*b3*c2+d3*b2*c1);
o3:=(o1-o2);
//delta x2
n1:=(a1*d2*c3+a2*d3*c1+a3*d1*c2);
n2:=(a2*d1*c3+a1*d3*c2+a3*d2*c1);
n3:=(n1-n2);
//delta x3
z1:=(a1*b2*d3+a2*b3*d1+a3*b1*d2);
z2:=(a2*b1*d3+a1*b3*d2+a3*b2*d1);
z3:=(z1-z2);
//resultado de x1
x1:=(o3/u3);
//resultado de x2
x2:=(n3/u3);
//resultado de x3
x3:=(z3/u3);
writeln('el valor de x1 es:',x1:5:2);
writeln('el valor de x2 es:',x2:5:2);
writeln('el valor de x3 es:',x3:5:2);
readln;
end.
