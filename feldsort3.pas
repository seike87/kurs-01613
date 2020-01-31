program FeldSort3 (input, output);
{ sortiert ein einzulesendes Feld von integer-Zahlen }

    const
    FELDGROESSE = 5;

    type
    tIndex = 1..FELDGROESSE;
    tFeld = array[tIndex] of integer;

    var
    EingabeFeld : tFeld;
    idx : tIndex;

    procedure FeldSortieren (var ioSortFeld : tFeld);

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
        for i := 1 to FELDGROESSE - 1 do
        begin
            MinPos := FeldMinimumPos(ioSortFeld, i, FELDGROESSE);
            vertauschen (ioSortFeld[MinPos], ioSortFeld[i]);
        end
    end; { FeldSortieren }

begin
    { Feld einlesen }
    writeln ('Geben Sie ', FELDGROESSE, ' Werte ein: ');
    for idx := 1 to FELDGROESSE do
        readln (EingabeFeld[idx]);

    { Feld sortieren }
    FeldSortieren (EingabeFeld);

    { sortiertes Feld ausgeben }
    for idx := 1 to FELDGROESSE do
        write (EingabeFeld[idx]:6);
    writeln;
end. { FeldSort3 }
