program gauss;
const
	filast	= 51;
	columnast	= 51;

type

fill	= array[1..columnast] of real;
fillmatz	= array[1..filast,1..columnast] of real;

var
	y	: fill;
	coeficiente	: fill;
	a	: fillmatz;
	n,m	: integer;
	primero,error	: boolean;
    primerv:boolean;

procedure leer(
var a: fillmatz;
		   var y: fill;
 		var n,m: integer);



var

i,j	: integer;


begin
  writeln;
  repeat
    writeln(' Ingrese la cantidad n para el sistema de ecuaciones nxn : ');
    readln(n);
    if not primero then writeln else primero:=false;
    m:=n
  until n<filast;
  if n>1 then
    begin
      for i:=1 to n do
	begin
	  writeln('Ecuacion ',i:3);
	  for j:=1 to n do
	    begin
	      write('a',j:1,':');
	      read(a[i,j])
	    end;
	  write(',C:');
	  readln(y[i])
	  
	end;
      writeln('El sistema ',n,'x',n,' a resolver es el siguiente:');
      for i:=1 to n do
      begin
      primerv:=true;
      for j:=1 to m do
      begin
      if a[i,j]=0 then
      begin
      write('');
      end
      else
      if (a[i,j]=1) and primerv then
      begin
      write('a',j);
      primerv:=false;
      end
      else
      if a[i,j]=1 then
      begin
      write('+a',j);
      primerv:=false;
      end else
      if a[i,j]=-1 then
      begin
      write('-a',j);
      primerv:=false;
      end else
      if primerv then
      begin
       	    write(a[i,j]:5:2,'a',j,' ');
            primerv:=false;
      end
            else
            begin
             write('+',a[i,j]:5:2,'a',j,' ');
             primerv:=false
             end;
            end;
	 writeln('=',y[i]:9:4);

     end;
        end
end;

procedure escrib;

var	i	: integer;

begin
  for i:=1 to m do
    write('a',i,'=',coeficiente[i]:5:3,' ');
  writeln
end;

procedure Calcular
	       (a	: fillmatz;
		y	: fill;
	    var coeficiente	: fill;
		ncol	: integer;
	    var error	: boolean);


var
	b	: fillmatz;
	w	: fill;
	i,j,i1,k,
	l,n	: integer;
	hold,sum,
	t,ab,det: real;

begin
  error:=false;
  n:=ncol;
  for i:=1 to n do
    begin
      for j:=1 to n do
	b[i,j]:=a[i,j];
      w[i]:=y[i]
    end;
  for i:=1 to n-1 do
    begin
      det:=abs(b[i,i]);
      l:=i;
      i1:=i+1;
      for j:=i1 to n do
	begin
	  ab:=abs(b[j,i]);
	  if ab>det then
	    begin
	      det:=ab;
	      l:=j
	    end
         end;
    if det=0.0 then error:= true
    else
      begin
	if l<>i then
	  begin

	    for j:=1 to n do
	      begin
		hold:=b[l,j];
		b[l,j]:=b[i,j];
		b[i,j]:=hold
	      end;
	      hold:=w[l];
	      w[l]:=w[i];
	      w[i]:=hold
	    end;
	  for j:=i1 to n do
	    begin
	      t:=b[j,i]/b[i,i];
	      for k:=i1 to n do
		b[j,k]:=b[j,k]-t*b[i,k];
	      w[j]:=w[j]-t*w[i]
	    end
	  end
	end;
      if b[n,n]=0.0 then error:=true
      else
	begin
	  coeficiente[n]:=w[n]/b[n,n];
	  i:=n-1;
  	  repeat
	    sum:=0.0;
	    for j:=i+1 to n do
	      sum:=sum+b[i,j]*coeficiente[j];
	    coeficiente[i]:=(w[i]-sum)/b[i,i];
	    i:=i-1
	  until i=0
	end;
      if error then writeln(chr(7),'La matriz no tiene matriz inversa')
end;

begin

  primero:=true;

  writeln;
   writeln('Este programa resuelve sistema de ecuaciones NxN ');
    writeln('por el sistema de eliminacion Gaussiana  ');
    writeln('admite hasta 50x50 ecuaciones');
    writeln('-----------------------------------------------');
writeln('Los datos a ingresar son de la forma: ');
writeln('k(a1)+z(a2)=C');
writeln('m(a1)+p(a2)=C');
writeln('Para el caso de ecuaciones 2x2 ');
  repeat
    leer(a,y,n,m);
    if n>1 then
      begin
	calcular(a,y,coeficiente,n,error);
	if not error then escrib
      end
  until n<2
end.
