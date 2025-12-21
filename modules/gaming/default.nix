{ pkgs, lib, config, ... }:

{
  imports = [
    ./gaming-default.nix
  ];

  gaming.enable = lib.mkDefault true;
  gaming.heroic = lib.mkDefault true;
}