program VokaleundKonsonanten (input, output);
{ bestimmt in einem einzulesenden Satz die Anzahl der vorkommenden Vokale und Konsonanten }

    type
    tBuchst = 'a'..'z';
    tNatZahl = 0..maxint; { maxint ist ein definierter Wert von Pascal und entspricht den maximalen Wert, den ein Integer annehmen kann }
    tHaeufigkeit = array [tBuchst] of tNatZahl;

    var
    Anzahl : tHaeufigkeit;
    Zeichen : char;
    Gesamtzahl,
    Vokalzahl,
    KonsonantenZahl : tNatZahl;

begin
    { Initialisierung der Zaehler }
    for Zeichen := 'a' to 'z' do
        Anzahl[Zeichen] := 0;
    Gesamtzahl := 0;

    { Zeichenweises Einlesen des Textes und Aufaddieren der Zaehler }
    writeln ('Geben Sie bitte einen Text ein');
    while Zeichen <> '.' do { solange Zeichen ungleich . mache }
    begin
        if (Zeichen >= 'a') and (Zeichen <= 'z') then
        begin
            Anzahl[Zeichen] := Anzahl[Zeichen] + 1;
            Gesamtzahl := Gesamtzahl +1
        end; { if }
        read (Zeichen)
    end; { while-Schleife }
    writeln; { Ausgabe des eingelesenen Textes }

    { Ausgabe der Statistik }
    Vokalzahl := Anzahl['a'] + Anzahl['e'] + Anzahl['i'] + Anzahl['o'] + Anzahl['u'];
    KonsonantenZahl := Gesamtzahl - Vokalzahl;
    writeln ('Anzahl der Vokale: ', Vokalzahl, '.');
    writeln ('Anzahl der Konsonanten: ', KonsonantenZahl, '.');
end.
