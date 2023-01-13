ALGORITHM Dot product
FUNCTION dot_product(v1, v2 : array of real) : real;
VAR
    i, result : integer;
BEGIN
    result := 0;
    for i := 0 to length(v1) - 1 do
        result := result + v1[i] * v2[i];
    dot_product := result;
END;

VAR
    v1, v2 : array of real;
    n, i : integer;
    isOrthogonal : boolean;
BEGIN
    write('Enter the number of pairs of vectors: ');
    readln(n);
    for i := 1 to n do
    begin
        write('Enter the first vector: ');
        readln(v1);
        write('Enter the second vector: ');
        readln(v2);
        if dot_product(v1, v2) = 0 then
            writeln('The vectors are orthogonal.')
        else
            writeln('The vectors are not orthogonal.');
    end;
END
