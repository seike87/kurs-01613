program Weihnachtsbaum (input,output);
{ Stellt nach Eingabe der Höhe und des Zeichens einen Weihnachtsbaum dar }

    const
    LEER = ' ';

    type
    tZaehler = 0..maxint;

    var
    i : tZaehler; { Laufvariable }
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
            Zeichen := Zeichen + 2;
            writeln(Zeichen)
        end



end. { Weihnachtsbaum }
