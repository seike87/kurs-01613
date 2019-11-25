program FolgenMinimum (input, output);
{ liest eine Folge von 20 integer-Zahlen ein und bestimmt das Minimum }

    const
    FELDGROESSE = 20;

    type
    tIndex = 1..FELDGROESSE;
    tZahlenFeld = array [tIndex] of integer;

    var
    Feld : tZahlenFeld;
    Minimum : integer;
    i,
    MinPos : tIndex;

begin
    { Einlesen des Feldes }
    writeln ('Geben Sie ', FELDGROESSE:2, ' Werte ein:');
    for i := 1 to FELDGROESSE do
        readln(Feld[i]);
    { Bestimmen des Minimums }
    Minimum := Feld[1];
    for i := 2 to FELDGROESSE do
        if Feld[i] < Minimum then
        begin
            Minimum := Feld[i];
            MinPos := i;
        end;
    writeln ('Die kleinste Zahl ist ', Minimum, ' und wurde an ', MinPos, '. Stelle eingegeben');
end. { FolgenMinimum }
