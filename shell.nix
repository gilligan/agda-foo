{ pkgs ? import ./nix }:
let
  inherit (pkgs) agdaPackages;
  agdaWithStdlib = agdaPackages.agda.withPackages (ps: with ps; [ standard-library ]);
in
pkgs.mkShell {
  buildInputs = with pkgs; [
    agdaWithStdlib
    niv
  ];
}

