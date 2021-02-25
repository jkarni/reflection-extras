{ mkDerivation, aeson, base, constraints, lens, reflection, stdenv
, tagged
}:
mkDerivation {
  pname = "reflection-extras";
  version = "0.1.1.0";
  src = ./.;
  libraryHaskellDepends = [
    aeson base constraints lens reflection tagged
  ];
  homepage = "http://github.com/jfischoff/reflection-extras";
  description = "Utilities for the reflection package";
  license = stdenv.lib.licenses.bsd3;
}
