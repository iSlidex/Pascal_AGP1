program Prueba_2_Leonardo_Ruiz;
uses crt;
var
a1,a2,a3:real;
b1,b2,b3:real;
c1,c2,c3:real;
d1,d2,d3:real;
x1,x2,x3:real;
//determinante
u1,u2,u3:real;
// delta x1
o1,o2,o3:real;
// delta x2
n1,n2,n3:real;
//delta x3
z1,z2,z3:real;
//coeficientes b y c
y1,y2,y3,y4,y5,y6,y7,y8,y9:string;
//mhmm
g1,g2,g3,g4,g5,g6,g7,g8,g9:string;
p1,p2,p3,p4,p5,p6:string;
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
if b1<=0 then
y1:='x1'
else
y1:='x1+';
if c1<=0 then
y2:='x2'
else
y2:='x2+';
if b2<=0 then
y3:='x1'
else
y3:='x1+';
if c2<=0 then
y4:='x2'
else
y4:='x2+';
if b3<=0 then
y5:='x1'
else
y5:='x1+';
if c3<=0 then
y6:='x2'
else
y6:='x2+';
str(a1:5:2,g1);
str(b1:5:2,g2);
str(c1:5:2,g3);
str(a2:5:2,g4);
str(b2:5:2,g5);
str(c2:5:2,g6);
str(a3:5:2,g7);
str(b3:5:2,g8);
str(c3:5:2,g9);
//Primera ecuacion
if a1=0 then
begin
p1:='';
if b1=1 then
p2:='x2';
if b1=-1 then
p2:='-x2';
end;
if a1=1 then
p1:='x1';
if a1=-1 then
p1:='-x1'
else
p1:=g1+y1;

if b1=0 then
begin
p2:='';
if c1=1 then
p3:='x3'
else
if c1=-1 then
p3:='-x3'
else
if ((b1=1) and (a1<>0)) then
p2:='+x2'
else
if ((b1=-1) and (a1<>0)) then
p2:='-x1'
end
else
p2:=g2+y2;


if c1=0 then
p3:=''
else
if ((c1=1) and (b1<>0)) then
p3:='+x3'
else
if ((c1=-1) and (b1<>0)) then
p3:='-x3'
else
p3:=g3+'x3';
//segunda ecuacion
writeln('El sistema de ecuaciones a resolver es el siguiente:');
writeln(p1,p2,p3,'=',d1:5:2);
writeln(g4,y3,g5,y4,g6,'x3=',d2:5:2);
writeln(g7,y5,g8,y6,g9,'x3=',d3:5:2);
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
