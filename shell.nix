with import <nixpkgs> {};
stdenv.mkDerivation {
  name = "env";
  buildInputs = [
    dockerImages.mbed
    git
    nodejs
  ];
}
