{ nixpkgs ? import <nixpkgs> { } }:

let
    pkgs = with nixpkgs; [
        cabal-install
        ghc
    ];
in
    nixpkgs.stdenv.mkDerivation {
        name="haskell_env";
        buildInputs=pkgs;
    }
