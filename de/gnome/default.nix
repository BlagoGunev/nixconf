{ pkgs, lib, config, ... }:

{
  imports = [
    ./gnome-exclude.nix
  ];

  gnome.excludeExtra = lib.mkDefault true;

  # Enable the X11 windowing system.
  services.xserver.enable = true;

  # Enable the GNOME Desktop Environment.
  services.displayManager.gdm.enable = true;
  services.desktopManager.gnome.enable = true;
  
}