{
  me =
    let
      sayHello = x: "hello ${x}";
    in
    sayHello ("Asuna");

  asuna =
    let
      f = a: { age = a.age; name = a.name; };
      asuna = {
        age = 18;
        name = "Asuna";
      };
    in
    f asuna;

  os = ({ o, s ? "", ... }@args: "${o} ${s} is written in ${args.c}") { o = "Operating"; s = "System"; c = "C"; };

  sum = import ./sum.nix 4 3;

  upper =
    let
      pkgs = import <nixpkgs> { };
    in
    pkgs.lib.strings.toUpper "you are looking uppercased string";

  impure_path = "${./data}";

  url = builtins.fetchurl "https://github.com/NixOS/nix/archive/7c3ab5751568a0bc63430b33a5169c5e4784a0ff.tar.gz";

  auto_unpacked_tarball = builtins.fetchTarball "https://github.com/NixOS/nix/archive/7c3ab5751568a0bc63430b33a5169c5e4784a0ff.tar.gz";
}
