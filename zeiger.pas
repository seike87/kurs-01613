program zeiger (input, output);

    var
    pZeig,
    qZeig,
    sZeig : ^integer;
    rZeig : ^real;

begin

    new (pZeig);
    new (qZeig);
    writeln (pZeig = qZeig);
    
    pZeig^ := 3;
    qZeig^ := 7;
    qZeig^ := qZeig^ - pZeig^ - 1;
    writeln (pZeig = qZeig, ' ', pZeig^ = qZeig^);
    
    new (rZeig);
    rZeig^ := 5.0 * (qZeig^ + 2.0) / pZeig^;
    writeln (rZeig^:5:3);
    qZeig^ := 2 * qZeig^;

    sZeig := qZeig;
    qZeig := pZeig;
    pZeig := sZeig;
    writeln (pZeig^, ' ', qZeig^, ' ', sZeig^);

end.
