let
  nixpkgs = import (
    let
      version = "ef4b914b113119b7a70cf90b37496413d85723a3";
    in builtins.fetchTarball {
      name   = "nixpkgs-${version}";
      url    = "https://github.com/NixOS/nixpkgs/archive/${version}.tar.gz";
      sha256 = "1flgwivn53vk04svj4za39gg6g6r7r92g3y201h8cml0604gsmg8";
    }
  ) {};

  easy-dhall-nix = import (
    let
      version = "1.31.1";
    in nixpkgs.fetchFromGitHub {
      owner  = "justinwoo";
      repo   = "easy-dhall-nix";
      rev    = "35bca5ba56b7b3f8684aa0afbb65608159beb5ce";
      sha256 = "16l71qzzfkv4sbxl03r291nswsrkr3g13viqkma2s8r5vy9la3al";
    }
  ) {};

in nixpkgs.mkShell {
  buildInputs = [
    easy-dhall-nix.dhall-simple
    nixpkgs.git
  ];
}
