program Matrix (input, output);
{ gibt die Zeilen- und Spaltennummer einer 3x4 Matrix von Integer-Zahlen aus }

    const
    ZEILENMAX = 3;
    SPALTENMAX = 4;

    type
    tZeile = 1..ZEILENMAX;
    tSpalte = 1..SPALTENMAX;
    tMatrix = array [tZeile, tSpalte] of integer;
    tZeilensumme = array [tZeile] of integer;
    tSpaltensumme = array [tSpalte] of integer;


    var
    A : tMatrix;
    B : tZeilensumme;
    C : tSpaltensumme;
    i : tZeile;
    j : tSpalte;
    Anzahl : integer;

begin
    { lesen der Matrixwerte in A }
    Anzahl := ZEILENMAX * SPALTENMAX;
    writeln('Geben Sie ', Anzahl, ' Werte ein: ');
    for i := 1 to ZEILENMAX do
        for j := 1 to SPALTENMAX do
            readln (A[i, j]);

    { Berechnen der Zeilensumme in B }
    for i := 1 to ZEILENMAX do
    begin
        B[i] := 0;
        for j := 1 to SPALTENMAX do
            B[i] := B[i] + A[i, j]
    end;

    { Berechnen der Spaltensumme in C }

    for j := 1 to SPALTENMAX do
    begin
        C[j] := 0;
        for i := 1 to ZEILENMAX do
            C[j] := C[j] + A[i, j]
    end;

    { Drucken von A, B und C in geeigneter Form }
    writeln; { Neue Leerzeile }
    for i := 1 to ZEILENMAX do
    begin
        for j := 1 to SPALTENMAX do
            write (A[i, j]:5);
        writeln (B[i]:10)
    end;

    writeln; { Leerzeile }
    for j := 1 to SPALTENMAX do
        write (C[j]:5);
    writeln
end. { Matrix }
