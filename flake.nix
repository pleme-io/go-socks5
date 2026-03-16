{
  description = "Go SOCKS5 proxy server and client library";

  inputs = {
    nixpkgs.url = "github:NixOS/nixpkgs/nixos-25.11";
    substrate = {
      url = "github:pleme-io/substrate";
      inputs.nixpkgs.follows = "nixpkgs";
    };
    flake-utils.url = "github:numtide/flake-utils";
  };

  outputs = inputs: (import "${inputs.substrate}/lib/repo-flake.nix" {
    inherit (inputs) nixpkgs flake-utils;
  }) {
    self = inputs.self;
    language = "go";
    builder = "library";
    pname = "go-socks5";
    vendorHash = "sha256-V8vFSLa9Z2miXVHcceq0W2F4bWacXuG4aey93q0XWuQ=";
    description = "Go SOCKS5 proxy server and client library";
    homepage = "https://github.com/pleme-io/go-socks5";
  };
}
