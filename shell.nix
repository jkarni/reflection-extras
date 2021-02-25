{ pkgs ? import <nixos> {}
}:

with pkgs;

let pkgEnv = (haskellPackages.callPackage ./default.nix {}).env ;

in mkShell {
  buildInputs = [
    cabal-install
  ] ++ pkgEnv.nativeBuildInputs;
}

