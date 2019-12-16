program Weihnachtsbaum (input,output);
{ Stellt nach Eingabe der Höhe und des Zeichens einen Weihnachtsbaum dar }
{ Unterste Reihe des Baums ist (Hoehe*2)-1 }
{ Anzahl der Leerzeichen von oben nach unten ist (((Hoehe*2)-1)-1)/2 }


    const
    LEER = ' ';

    var
    i,
    Hoehe : integer;
    Zeichen : string;

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
            write(Zeichen[(i*2)-1])

    end
end. { Weihnachtsbaum }
