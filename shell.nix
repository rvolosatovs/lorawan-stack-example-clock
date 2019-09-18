with import <nixpkgs> {};
stdenv.mkDerivation {
  name = "env";
  buildInputs = [
    cargo
    gcc-arm-embedded-6
    git
    mbed-cli
    mercurial
    nodejs
    python3Full
    python3Packages.pip
    python3Packages.virtualenv
  ];

  shellHook = ''
    # set SOURCE_DATE_EPOCH so that we can use python wheels
    SOURCE_DATE_EPOCH=$(date +%s)
    export PATH=$PWD/venv/bin:$PATH
    virtualenv --no-setuptools venv >&2
  '';
}