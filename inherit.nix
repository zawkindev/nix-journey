let
  a = { x = 1; y = 2; z = 3; };
in
{
  inherit (a) x z;
  b =
    let
      inherit ({ x = 1; y = 2; }) x y;
    in
    [ x y ];
}
