{ sources ? import ./nix/sources.nix,
  nixpkgs ? sources.nixpkgs,
  pkgs ? import nixpkgs {} }:
let
  genode = import sources.genode-nix {};
in
pkgs.mkShell {
  buildInputs = [
    pkgs.haskellPackages.niv
    genode.goa
  ];
}
