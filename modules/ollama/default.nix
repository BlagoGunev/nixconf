{ pkgs, config, ... }:

{
  imports = [
    ./ollama.nix
    ./open-webui.nix
  ];
}