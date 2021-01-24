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
      version = "1.33.1";
    in nixpkgs.fetchFromGitHub {
      owner  = "justinwoo";
      repo   = "easy-dhall-nix";
      rev    = "288ee825c326f352a5db194a024bd3e1f2f735b2";
      sha256 = "12v4ql1nm1famz8r80k1xkkdgj7285vy2vn16iili0qwvz3i98ah";
      }
    ) {};

in nixpkgs.mkShell {
  buildInputs = [
    easy-dhall-nix.dhall-simple
    nixpkgs.git
  ];
}
