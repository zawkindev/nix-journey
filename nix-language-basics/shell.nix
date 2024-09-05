{ pkgs ? import <nixpkgs> { } }:
let
  msg = "hello world";
in
pkgs.mkShellNoCC {
  packages = with pkgs; [ lolcat ];
  shellHook = ''
    lolcat ${msg}
  '';
}
