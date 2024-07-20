{
  a = let x = 1; in x + x;
  b =
    let
      a = b * b;
      b = c + c;
      c = 5;
    in
    [ a b c ];
  c =
    let
      map = { x = "hello"; };
    in
    [ map.x { a.b.c = 1; } ];
}
