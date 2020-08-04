program ProductoComplejos;
var
i:Const;
a,b,c,d,x,y:reales;

begin
writeln('(a+bi)*(c+di)');
writeln('inserte los numeros correspondiestes a: a,b,c,d');
readln(a,b,c,d);
writln((a+bi)*(c+di)=(a*c+a*di+bi*c+bi*di));
writeln(x=a*c+(b+d)i^2);
writeln(y=a*di+bi*c);
writln(el resultado es:x+yi);

end.
