program Seminar2 (input, output);
{ zweite Programmvariante für das Seminarproblem }

    const
    MAXTEILNEHMER = 12;
    TAGE = 31;
    MONATE = 12;
    MINJAHR = 1900;
    MAXJAHR = 2010;

    type
    tTag = 1..TAGE;
    tMonat = 1..MONATE;
    tJahr = MINJAHR..MAXJAHR;
    tNatZahlPlus = 1..maxint;
    tNatZahl = 0..maxint;
    tStatus = (aktiv, passiv);
    tIndex = 1..MAXTEILNEHMER;
    tString = string [20];
    tSeminarStudent =
        record
            Name : tString;
            Geburtstag : { Verschachtelte record-Zuweisung, daher : statt = }
                record
                    Tag : tTag;
                    Monat : tMonat;
                    Jahr : tJahr;
                end; { Geburstag }
            MatrikelNr : tNatZahlPlus;
            Status : tStatus;
        end; { tSeminarStudent }
    tTeilnehmerfeld = array [tIndex] of tSeminarStudent;

    var
    TeilnehmerFeld : tTeilnehmerfeld;
    AnzStud : tNatZahl;
    i : tIndex;
    Status : char; { Zeichen zum Einlesen des Studentenstatus. Muss vom Typ char sein, um eingelesen werden zu koennen. 'a' entspricht aktiv, 'p' entspricht passiv }

    begin
        write ('Wie viele Studenten nahmen am Seminar teil? ');
        readln (AnzStud);
        if AnzStud > MAXTEILNEHMER then
        begin
            writeln ('Bitte hoestens ', MAXTEILNEHMER, ' Eingaben!');
            AnzStud := MAXTEILNEHMER;
        end;
        writeln ('Geben Sie Name, Matr.Nr. und Aktivitaet der ', AnzStud:3, ' Teilnehmer ein:'); { :3 bei AnzStud ist die Feldbreite }

        { Eingabe der Daten }
        for i := 1 to AnzStud do
        begin
            write ('Name: ');
            readln (TeilnehmerFeld[i].Name);
            write ('Matr.Nr.: ');
            readln (TeilnehmerFeld[i].MatrikelNr);
            write ('a - aktiv, p - passiv: ');
            readln (Status);
            if Status = 'a' then
                TeilnehmerFeld[i].Status := aktiv
            else
                TeilnehmerFeld[i].Status := passiv
        end; { Eingabe }

    { Scheine ausgeben }
    writeln;
    for i := 1 to AnzStud do
    begin
        if TeilnehmerFeld[i].Status = aktiv then
        begin
            writeln ('Der Student ', TeilnehmerFeld[i].Name);
            write ('mit der Matrikel-Nr. ');
            writeln (TeilnehmerFeld[i].MatrikelNr);
            writeln ('hat mit Erfolg am Seminar teilgenommen.');
            writeln;
        end
    end;

    writeln ('Liste aller aktiven Seminar-Teilnehmer');
    writeln ('--------------------------------------');
    for i := 1 to AnzStud do
        if TeilnehmerFeld[i].Status = aktiv then
            writeln (TeilnehmerFeld[i].Name);
    writeln;

    writeln ('Liste aller Zuhoerer im Seminar');
    writeln ('-------------------------------');
    for i := 1 to AnzStud do
        if TeilnehmerFeld[i].Status = passiv then
            writeln (TeilnehmerFeld[i].Name);
    writeln;
end. { Seminar2 }

