program krnol;
var a : array [1..3,1..3] of integer;  // массив, паскольку табличка есть
x, y, x1, y1, g, d, c, i, j : integer; // координаты
begin
randomize;
c := 1; // перый ход за комп.
d := 0; // ход за противн.
g := 0; // игра ещё не проиграна
repeat
if (c = 1)and(d = 0) then begin // если b=1, а противник ещё не сходил
a[2,2] := 1; //крестик противн.
d := 1; // ход за противн.
end;
if ( d = 1) then begin
repeat
readln(x, y); // читает x,y
until(x < 4) and (x > 0)and(y < 4)and(y > 0)and(A[x,y] = 0); //если коорд. норм. и никто не стоит.
a[x,y] := 2;
c := c + 1; // под след ход противн.
d := 0;
end;
if ((a[1,1] = 2)and(a[1,2] = 2)and(a[1,3] = 2))or((a[2,1] = 2)and(a[2,2] = 2)and(a[3,3] = 2))or((a[3,1] = 2)and(a[3,2] = 2)and(a[3,3] = 2))or((a[1,1] = 2)and(a[2,1] = 2)and(a[3,1] = 2))or((a[1,2] = 2)and(a[2,2] = 2)and(a[3,2] = 2))or((a[1,3] = 2)and(a[2,3] = 2)and(a[3,3] = 2))or((a[1,1] = 2)and(a[2,2] = 2)and(a[3,3] = 2))or((a[2,1] = 2)and(a[2,2] = 2)and(a[3,3] = 2))or((a[1,3] = 2)and(a[2,2] = 2)and(a[3,1] = 2)) then begin // усл того, что комп. проиграл
g := 2; 
writeln('вы выиграли');
exit;
end; // (комп. выиграл)
if ((a[1,1] = 1)and(a[1,2] = 1)and(a[1,3] = 1))or((a[2,1] = 1)and(a[2,2] = 1)and(a[3,3] = 1))or((a[3,1] = 1)and(a[3,2] = 1)and(a[3,3] = 1))or((a[1,1] = 1)and(a[2,1] = 1)and(a[3,1] = 1))or((a[1,2] = 1)and(a[2,2] = 1)and(a[3,2] = 1))or((a[1,3] = 1)and(a[2,3] = 1)and(a[3,3] = 1))or((a[1,1] = 1)and(a[2,2] = 1)and(a[3,3] = 1))or((a[2,1] = 1)and(a[2,2] = 1)and(a[3,3] = 1))or((a[1,3] = 1)and(a[2,2] = 1)and(a[3,1] = 1)) then begin // усл того, что противн. проиграл
g := 1; 
writeln('вы проиграли');
exit;
end;
repeat
x1 := random(1,3);
y1 := random(1,3);
until (a[x1,y1] = 0); // пока не будет свободно
a[x1,y1] := 1; // вывод нолика комп.
d := 1;
for i := 1 to 3 do begin // анализ того, как стоят ходы противн.
for j := 1 to 3 do begin // анализ того, как стоят ходы комп.
write(a[i,j], ' ');
end;
writeln;
end;
until (g > 0);
end.








 