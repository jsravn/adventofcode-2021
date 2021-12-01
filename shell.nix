let
  tarball =
    "https://github.com/NixOS/nixpkgs/archive/263ef4cc4146c9fab808085487438c625d4426a9.tar.gz";
  pkgs = import (fetchTarball tarball) { };
in pkgs.mkShell {
  buildInputs = [
    pkgs.nim-unwrapped
  ];
}
