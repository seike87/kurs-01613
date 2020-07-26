program CBR2;
 
    var
    Zahl1, Zahl2: Integer;

    procedure Zahlentauschen (var Param1, Param2: Integer);
        var
        Hilfsvariable: Integer;
        begin
        Hilfsvariable := Param1;
        Param1 := Param2;
        Param2 := Hilfsvariable
    end;
begin
    Zahl1 := 10;
    Zahl2 := 20;
    WriteLn ('Vorher : Zahl1 = ', Zahl1, ' Zahl2 = ', Zahl2);
    Zahlentauschen (Zahl1, Zahl2);
    WriteLn ('Nachher: Zahl1 = ', Zahl1, ' Zahl2 = ', Zahl2)
end.
