{
  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs/nixos-unstable";
    flake-utils.url = "github:numtide/flake-utils";
  };

  outputs = {
    self,
    nixpkgs,
    flake-utils,
  }:
    flake-utils.lib.eachDefaultSystem (system: let
      overlay = final: prev: {};
      overlays = [overlay];

      pkgs = import nixpkgs {
        inherit system overlays;
        config = {allowUnfree = true;};
      };
      fhsShell = pkgs.buildFHSUserEnv {
        name = "hello-fastapi";
        targetPkgs = pkgs: [
          pkgs.python311
          pkgs.poetry
        ];
        runScript = "fish";
      };
    in {
      devShell = fhsShell.env;
    });
}
