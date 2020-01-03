program FindeNaechstePrimzahl (input, output);
{ Bestimmt die zur Eingabezahl naechstgelegen(n) Primzahl(en) }

    type
    tNatZahlPlus = 1..maxint;

    var
    EinZahl,
    d : tNatZahlPlus;
    gefunden : boolean;


function istPrimzahl (p : tNatZahlPlus) : boolean;
{ liefert true, falls p Primzahl ist, sonst false }

    var
    q : tNatZahlPlus;

begin
    if p < 2 then
        istPrimzahl := false
    else { p >= 2 }
    begin
        istPrimzahl := true;
        for q := 2 to p - 1 do
            if p mod q = 0 then
                istPrimzahl := false
    end;
end; { istPrimzahl }

begin
    writeln ('Zahl eingeben: ');
    readln(EinZahl);

    write ('Naechste Primzahl zu ', EinZahl, ' ist ');
    if istPrimzahl (EinZahl) then
        writeln (EinZahl)
    else
        if EinZahl = 1 then
            writeln ('2':5)
        else { EinZahl <> 1 }
        begin
            gefunden := false;
            if odd (EinZahl) then
                d := 2
            else
                d := 1;
            repeat
                if istPrimzahl (EinZahl + d) then
                begin
                    { Primzahl oberhalb von EinZahl gefunden }
                    gefunden := true;
                    write (EinZahl + d : 5)
                end;
                if istPrimzahl (EinZahl - d) then
                begin
                    { Primzahl unterhalb von EinZahl gefunden }
                    gefunden := true;
                    write (EinZahl - d : 5)
                end;
                d := d + 2
            until gefunden;
            writeln;
        end { EinZahl <> 1 }
end. { FindeNaechstePrimzahl }
