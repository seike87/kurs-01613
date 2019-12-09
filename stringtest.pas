program StringTest (input, output);
    { Ein Beispiel fuer string-Operationen }

    const
    MAXLAENGE = 100;

    var
    Zeichenkette : string [MAXLAENGE];

begin
    write ('Geben Sie bitte einen kurzen Text mit maximal 100 Zeichen ein: ');
    readln (Zeichenkette);
    writeln ('Das dritte Zeichen ist: ', Zeichenkette[3]);
    write ('Das letzte Zeichen ist: ');
    writeln (Zeichenkette[length (Zeichenkette)]);
end. { StringTest }
