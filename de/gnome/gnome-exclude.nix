{ pkgs, lib, config, ... }:

{
  options = {
    gnome.excludeExtra = lib.mkEnableOption "Excludes Packages";
  };

  config = lib.mkIf config.gnome.excludeExtra {
    environment.gnome.excludePackages = (with pkgs; [
      # gnome-photos
      # totem # video player
      gnome-tour
      gnome-maps
      gedit # text editor
      yelp
      gnome-contacts
      cheese # webcam tool
      gnome-music
      epiphany # web browser
      geary # email reader
      evince # document viewer
      # gnome-terminal
      # gnome-characters
      tali # poker game
      iagno # go game
      hitori # sudoku game
      atomix # puzzle game
      simple-scan
    ]);
  };
}