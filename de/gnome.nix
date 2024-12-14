{ pkgs, lib, config, ... }:

{
  imports = [
    ./gnome
  ];

  gnome.excludeExtra = lib.mkDefault true;
}