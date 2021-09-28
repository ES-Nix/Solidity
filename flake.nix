{
  description = "This is an example of the Solidity build environment with nix + flake as build toolchain";

  inputs = {
    flake-utils.url = "github:numtide/flake-utils";
  };

  outputs = { self, nixpkgs, flake-utils }:
    flake-utils.lib.eachDefaultSystem (system:
      let

        # Not a must, but may be usefull
        pkgsAllowUnfree = import nixpkgs {
          system = "x86_64-linux";
          config = { allowUnfree = true; };
        };
      in
      {
        devShell = pkgsAllowUnfree.mkShell {
          buildInputs = with pkgsAllowUnfree; [
            solc
          ];

          shellHook = ''
            # TODO: document this
            export TMPDIR=/tmp

            echo "Entering the nix devShell"

            # To remove hidden files too use build/{*,.*}
            alias erase_build='rm -frv build/*'
          '';
        };
      });
}
