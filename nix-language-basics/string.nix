{
  hello =
    let
      a = "world";
    in
    "hello ${a}, ${a}";
  multi-line =
    ''
      first line
      second line
        hehe
          haha
    '';
}
