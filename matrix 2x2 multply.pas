program Matriz_2x2;

var
   M1,M2,MR: array[1..2,1..2] of integer;
   I,J,K, SUMA: integer;
begin
  Writeln('Programa para multiplicar Matrices 2x2');
  Writeln('--------------------------------------');
  writeln(' Ingresa los elementos de la Matriz 1(M1)');
            for I:= 1 to 2 do
                for J:= 1 to 2 do
                    readln(M1[I,J]);
  writeln('Ingresa los elementos de la Matriz 2(M2)');
           for I:=1 to 2 do
                for J:=1 to 2 do
                    readln(M2[I,J]);
  writeln;
  writeln('Matriz 1');
  Writeln('--------');
  for I:=1 to 2 do
      begin
           for J:=1 to 2 do
               write(M1[I,J]:2);
               writeln;
      end;
 writeln;
  writeln('Matriz 2');
  Writeln('--------');
  for I:=1 to 2 do
      begin
           for J:=1 to 2 do
               write(M2[I,J]:2);
               writeln;
      end;
 writeln;
 writeln('Se procedera a calcular el producto de la Matriz 1 por la Matriz 2');
             for I:=1 to 2 do
                 for J:=1 to 2 do
                 begin
                      SUMA:=0;
                      for K:=1 to 2 do
                      SUMA:= SUMA + M1[I,K] * M2[K,J];
                      MR[I,J]:= SUMA;
                 end;
 writeln;
 writeln('Matriz Resultante (MR)');
 writeln('----------------------');
 writeln;
         for I:=1 to 2 do
             begin
                  for J:=1 to 2 do
                  write(MR[I,J]:5);
                  writeln;
             end;
  writeln('Presiona Intro para salir');
Readln;
end.
