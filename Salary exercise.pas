program salario;

//?	Si el descuento por Impuesto más el descuento por seguro de un empleado,
//es  mayor que su sueldo base, entonces escriba un mensaje de alerta, de lo
// contrario haga los cálculos necesarios para calcular el sueldo neto.

var
Sueldo,impuesto,seguro,sn:integer;

begin
writeln('Ingrese el sueldo base');
readln(sueldo);
writeln('Ingrese el descuento por impuesto');
readln(impuesto);
writeln('Ingrese el descuento por seguro del empleado');
readln(seguro);
if (impuesto+seguro)>sueldo then
writeln('Por impuestos te quedaste sin sueldo y capaz quedas debiendo')
else
begin
sn:=sueldo-(impuesto+seguro);
writeln('Este es su sueldo Neto');
writeln(sn);
readln;
end;
readln;
end.


