program FeldSort3 (input, output);
{ sortiert ein einzulesendes Feld von integer-Zahlen }

    const
    MAX = 100;

    type
    tIndex = 1..MAX;
    tFeld = array[tIndex] of integer;

    var
    EingabeFeld : tFeld;
    idx : tIndex;
    Groesse : integer;

    procedure FeldSortieren (inSortLaenge : tIndex; var ioSortFeld : tFeld);

        var
        MinPos,
        i : tIndex;

        function FeldMinimumPos (Feld : tFeld; von, bis : tIndex) : tIndex;

            var
            MinimumPos,
            j : tIndex;

        begin
            MinimumPos := von; 
            for j := von + 1 to bis do
                if Feld[j] < Feld[MinimumPos] then
                    MinimumPos := j;
            FeldMinimumPos := MinimumPos;
        end; { FeldMinimumPos }

        procedure vertauschen (var ioHin, ioHer : integer);

            var
            Tausch : integer;
        begin
            Tausch := ioHin;
            ioHin := ioHer;
            ioHer := Tausch
        end; { vertauschen }

    begin
        for i := 1 to inSortLaenge - 1 do
        begin
            MinPos := FeldMinimumPos(ioSortFeld, i, inSortLaenge);
            vertauschen (ioSortFeld[MinPos], ioSortFeld[i]);
        end
    end; { FeldSortieren }

begin
    { Feld einlesen }
    repeat
        write ('Anzahl Werte: (max. 100) ');
        readln(Groesse);
    until (1 <= Groesse) and (Groesse <= MAX);
    for idx := 1 to Groesse do
    begin
        write (idx, '. Wert: ');
        readln (EingabeFeld[idx]);
    end;

    { Feld sortieren }
    FeldSortieren (Groesse, EingabeFeld);

    { sortiertes Feld ausgeben }
    for idx := 1 to Groesse do
        write (EingabeFeld[idx]:6);
    writeln;
end. { FeldSort3 }
