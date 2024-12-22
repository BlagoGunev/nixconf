{ pkgs, lib, config, ... }:

{
  imports = [
    ./gnome
  ];

  gnome.excludeExtra = lib.mkDefault true;

  # Enable the X11 windowing system.
  services.xserver.enable = true;

  # Enable the GNOME Desktop Environment.
  services.xserver.displayManager.gdm.enable = true;
  services.xserver.desktopManager.gnome.enable = true;

  # Gnome performance improvements
  # nixpkgs.overlays = [
  #   # GNOME 46: triple-buffering-v4-46
  #   (final: prev: {
  #     mutter = prev.mutter.overrideAttrs (old: {
  #       src = pkgs.fetchFromGitLab  {
  #         domain = "gitlab.gnome.org";
  #         owner = "vanvugt";
  #         repo = "mutter";
  #         rev = "triple-buffering-v4-46";
  #         hash = "sha256-C2VfW3ThPEZ37YkX7ejlyumLnWa9oij333d5c4yfZxc=";
  #       };
  #     });
  #   })
  # ];
}