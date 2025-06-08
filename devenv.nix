{ pkgs, lib, config, inputs, ... }:
{
  # https://devenv.sh/packages/
  packages = [ pkgs.mgba ];

  # https://devenv.sh/languages/
  languages.rust.enable = true;
  languages.rust.channel = "nightly";
  languages.rust.components = ["rust-src" "clippy" "rustfmt" "cargo" "rust-analyzer" ];
  languages.rust.mold.enable = false;

  languages.javascript.enable = true;
  languages.typescript.enable = true;
  languages.javascript.directory = "./web";
  languages.javascript.pnpm.enable = true;
}
