program variacion_de_prima;

var
pss,s:real;
h:boolean;
hijos:string;
ec:1..5;
begin
writeln('Ingrese el sueldo del empleado');
readln(s);
writeln('Ingrese la prima de seguro de salud');
readln(pss);
writeln('Ingrese el estado civil en numero(C=1, S=2, D=3, V=4, O=5)');
readln(ec);
writeln('Ingrese si el empleado tiene hijos o no(si/no)');
readln(hijos);
if (ec=1) or (ec=2) or (ec=3) or (ec=4) or (ec=5) then
begin
if (hijos='si') then
h:=true else
h:=false;

if ((ec=1) and (h)) then
begin
Writeln('Su prima incrementa un 50%');
writeln('Su prima queda en: ',pss*1.5:5:2);
writeln('su sueldo queda en: ',(s-(pss*1.5)):5:2);
end;

if ((ec=1) and not (h)) then
begin
writeln('Su prima incrementa un 20%');
writeln('Su prima queda en: ',pss*1.2:5:2);
writeln('su sueldo queda en: ',(s-(pss*1.2)):5:2);
end;

if (((ec=2) or (ec=3) or (ec=4) or (ec=5)) and (h)) then
begin
writeln('Su prima incrementa un 10%');
writeln('Su prima queda en: ',pss*1.1:5:2);
writeln('su sueldo queda en: ',(s-(pss*1.1)):5:2);
end;

if (((ec=2) or (ec=3) or (ec=4) or (ec=5)) and not (h)) then
begin
writeln('Su prima no tiene variacion');
writeln('Su prima queda en: ',pss);
writeln('su sueldo queda en: ',s);
end;
end
else
writeln('no introdujo un valor valido para el estado civil, intente de nuevo');

readln;
end.


