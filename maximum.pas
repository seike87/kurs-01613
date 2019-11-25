program Maximum (input,output);
{ bestimmt das Maximum einer Folge von einzulesenden Integer-Zahlen }

    const
    ANZ = 4; { Anzahl der einzulesenden Zahlen }

    type
    tIndex = 1..ANZ;

    var
    i : tIndex; { Laufvariable }
    Zahl,
    Max : integer;

begin
    writeln('Geben Sie', ANZ, ' ganze Zahlen ein, deren Maximum bestimmt werden soll.');
    write ('1. Wert: ');
    readln (Zahl);
    Max := Zahl; { Initialisierung von Max mit ersten Wert der eingegeben wurde }
    for i := 2 to ANZ do
    begin
        write (i, '. Wert: ');
        readln (Zahl);
        if Zahl > Max then { Wenn nächster Wert groeßer initialisiertes Max dann wird nächster Wert zum neuen Max }
            Max := Zahl
    end; { for-Schleife }
    writeln ('Das Maxmimum ist: ', Max,'.');
end. { Maximum }


