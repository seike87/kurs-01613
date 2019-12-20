program Weihnachtsbaum (input,output);
{ Stellt nach Eingabe der Höhe und des Zeichens einen Weihnachtsbaum dar }
{ Unterste Reihe des Baums ist (Hoehe*2)-1 }
{ Anzahl der Leerzeichen von oben nach unten ist (((Hoehe*2)-1)-1)/2 }


    const
    LEER = ' ';

    var
    i,
    j,
    k,
    Hoehe : integer;
    Zeichen : char;

begin

    write ('Bitte geben Sie die Höhe des Weihnachtsbaums ein: ');
    readln (Hoehe);
    write ('Bitte geben Sie das Zeichen ein, aus dem der Weihnachtsbaum erstellt werden soll: ');
    readln (Zeichen);

    if Hoehe <= 0 then
        writeln ('Der Weihnachtsbaum muss schon mindestens eine Einheit hoch sein!')
    else
    begin
        for i := 1 to Hoehe do
            begin
                j := ((i*2)-1); { Formel zur Ausgabe der Zeichen }
                k := (((i*2)-2) div 2); { Formel zur Ausgabe der Leerzeichen }
                write(k); { Ausgabe Leerzeichen }
                writeln(stringofChar(Zeichen, j)); { Ausgabe Zeichen }
            end;
    end
end. { Weihnachtsbaum }
