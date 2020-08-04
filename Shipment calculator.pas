Program MRW;
Uses crt;

Var
zona,seguridad,envio:integer;
peso:integer;
//suma
Pzona,Pseguridad,Penvio:integer;
Ppeso,Total:real;

Begin
 WriteLn('Ingrese la zona a destino');
 WriteLn('1.Area metropolitana');
 WriteLn('2.Nueva Esparta');
 WriteLn('3.Bolivar');
 WriteLn('4.Amazonas');
 WriteLn('5.Apure');
 WriteLn('6.Otro estado');
 WriteLn('7.Latino america');
 WriteLn('8.Otro destino');
 ReadLn(zona);

 WriteLn('Ingrese el peso del paquete');
 ReadLn(peso);

 WriteLn('¿Desea asegurar el paquete?');
 WriteLn('1.Si');
 WriteLn('2.No');
 ReadLn(seguridad);



 Case zona of
 1 : Pzona:=50;
 2 :Pzona:=100;
 3 : Pzona:=100;
 4 : Pzona:=100;
 5 : Pzona:=100;
 6 : Pzona:=80;
 7 : Pzona:=180;
 8 : Pzona:=250;
 else
 WriteLn('Zona no valida');

 If ( peso > 100 ) then
 Ppeso:=(peso - 100)*1.2
 else
 Ppeso:=peso
 end;


 Case seguridad of
  1 : Pseguridad:=30;
  2 : Pseguridad:=0;
 else
 WriteLn('Por favor ingrese una opcion valida');
 end;
 Case zona of
  7:
  Begin
   Writeln ('¿Desea envio express?');
   WriteLn('1.Si');
   WriteLn('2.No');
   ReadLn(Envio);


  if envio = 1 then
  Penvio:=40
  Else
  Penvio:=0;
  end;

  8:
   Begin
   Writeln ('¿Desea envio express?');
   WriteLn('1.Si');
   WriteLn('2.No');
   ReadLn(Envio);


  If envio=1 then
  Penvio:=40
  Else
  Penvio:=0;
  End;

  Else
  Penvio:=0;

  end;

  Total:=Pzona+Pseguridad+Penvio+Ppeso;
  WriteLn('El precio total de su envio es ',Total:5:2);

  Readkey
  end.
