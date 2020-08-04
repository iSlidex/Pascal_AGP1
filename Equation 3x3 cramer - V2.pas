program ecuaciones3x3_2;
uses crt;
var
a1,a2,a3:real;
b1,b2,b3:real;
c1,c2,c3:real;
d1,d2,d3:real;
x,y,z:real;
determinante:real;
deltax,deltay,deltaz:real;
v1,v2,v3,v4,v5,v6:string;

begin

writeln('ingrese los valores de la primera ecuacion');
readln(a1,b1,c1,d1);
writeln('---------------------------------');
writeln('ingrese los valores de la segunda ecuacion');
readln(a2,b2,c2,d2);
writeln('---------------------------------');
writeln('ingrese los valores de la tercera ecuacion');
readln(a3,b3,c3,d3);
writeln('------------------------------------');
if(b1<0) then
v1:='x'
else
v1:='x+';

if(b2<0) then
v2:='x'
else
v2:='x+';

if(b3<0) then
v3:='x'
else
v3:='x+';

if(c1<0)then
v4:='y'
else
v4:='y+';

if(c2<0)then
v5:='y'
else
v5:='y+';

if(c3<0)then
v6:=''
else
v6:='+';

 if a1<>0 then
begin
if a1=1 then
write('x') else
if a1=-1 then
write('-x') else
write(a1:5:2,'x');

if b1=0 then
write() else
if b1=1 then
write('+y') else
if b1=-1 then
write ('-y') else
if b1>0 then
write('+',b1:5:2,'y') else
write(b1:5:2,'y');

if c1=0 then
write() else
if c1=1 then
write('+z') else
if c1=-1 then
write ('-z') else
if c1>0 then
write('+',c1:5:2,'z') else
write(c1:5:2,'z');
write('=',d1:5:2);
writeln;
end;

if ((a1=0) and (b1<>0)) then
begin
if b1=1 then
write('y') else
if b1=-1 then
write ('-y') else
if b1>0 then
write('+',b1:5:2,'y') else
write(b1:5:2,'y');

if c1=0 then
write () else
if c1=1 then
write('+z') else
if c1=-1 then
write('-z') else
if c1>0 then
write('+',c1:5:2,'z') else
write(c1:5:2,'z');
write('=',d1:5:2);
end;

if ((a1=0) and (b1=0)) then
begin
if c1=1 then
write('z') else
if c1=-1 then
write('-z') else
write(c1:5:2,'z');
write('=',d1:5:2);
writeln;
end;

if (a2<>0) then
begin
if a2=1 then
write('x') else
if a2=-1 then
write('-x') else
write(a2:5:2,'x');

if b2=0 then
write() else
if b2=1 then
write('+y') else
if b2=-1 then
write ('-y') else
if b2>0 then
write('+',b2:5:2,'y') else
write(b2:5:2,'y');

if c2=0 then
write() else
if c2=1 then
write('+z') else
if c2=-1 then
write ('-z') else
if c2>0 then
write('+',c2:5:2,'z') else
write(c2:5:2,'z');
write('=',d1:5:2);
writeln;
end;

if ((a2=0) and (b1<>0)) then
begin
if b2=1 then
write('y') else
if b2=-1 then
write ('-y') else
if b2>0 then
write('+',b2:5:2,'y') else
write(b2:5:2,'y');

if c2=0 then
write () else
if c2=1 then
write('+z') else
if c2=-1 then
write('-z') else
if c2>0 then
write('+',c2:5:2,'z') else
write(c2:5:2,'z');
write('=',d2:5:2);
end;

if ((a2=0) and (b2=0)) then
begin
if c2=1 then
write('z') else
if c2=-1 then
write('-z') else
write(c2:5:2,'z');
write('=',d2:5:2);
writeln;
end;
if a3<>0 then
begin
if a3=1 then
write('x') else
if a3=-1 then
write('-x') else
write(a3:5:2,'x');

if b3=0 then
write() else
if b3=1 then
write('+y') else
if b3=-1 then
write ('-y') else
if b3>0 then
write('+',b3:5:2,'y') else
write(b3:5:2,'y');

if c3=0 then
write() else
if c3=1 then
write('+z') else
if c3=-1 then
write ('-z') else
if c3>0 then
write('+',c3:5:2,'z') else
write(c3:5:2,'z');
write('=',d3:5:2);
writeln;
end;

if ((a3=0) and (b3<>0)) then
begin
if b3=1 then
write('y') else
if b3=-1 then
write ('-y') else
if b3>0 then
write('+',b3:5:2,'y') else
write(b3:5:2,'y');

if c3=0 then
write () else
if c3=1 then
write('+z') else
if c3=-1 then
write('-z') else
if c3>0 then
write('+',c3:5:2,'z') else
write(c3:5:2,'z');
write('=',d1:5:2);
end;

if ((a3=0) and (b3=0)) then
begin
if c3=1 then
write('z') else
if c3=-1 then
write('-z') else
write(c1:5:2,'z');
write('=',d1:5:2);
writeln;
end;

writeln('su sistema es el siguiente');
writeln(a1:5:2,v1,b1:5:2,v4,c1:5:2,'z=',d1:5:2);
writeln(a2:5:2,v2,b2:5:2,v5,c2:5:2,'z=',d2:5:2);
writeln(a3:5:2,v3,b3:5:2,v6,c3:5:2,'z=',d3:5:2);
determinante:=(a1*b2*c3)+(a2*b3*c1)+(a3*b1*c2)-(c1*b2*a3)+(c2*b3*a1)+(c3*b1*a2);

writeln('----------------');
writeln('calculo de x');
deltax:=(d1*b2*c3)+(d2*b3*c1)+(d3*b1*c2)-(c1*b2*d3)+(c2*b3*d1)+(c3*b1*d2);
x:=deltax/determinante;
writeln('el valor de x es');
writeln(x:5:2);
writeln('-----------------------------');
writeln('calcular el valor de y');
deltay:=(a1*d2*c3)+(a2*d3*c1)+(a3*d1*c2)-(c1*d2*a3)+(c2*d3*a1)+(c3*d1*a2);
y:=deltay/determinante;
writeln('el valor de y es');
writeln(y:5:2);
writeln('-----------------------------');
deltaz:=(a1*b2*d3)+(a2*b3*d1)+(a3*b1*d2)-(d1*b2*a3)+(d2*b3*a1)+(d3*b1*a2);
z:=deltaz/determinante;
writeln('el valor de z es');
writeln(z:5:2);
readln;
writeln;
writeln('presione return para finalizar');
readkey;

end.
