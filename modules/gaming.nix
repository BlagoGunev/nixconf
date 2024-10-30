{pkgs, lib, config, ...}:

{

  imports = [
    ./gaming/gaming-default.nix
    ./gaming/heroic.nix
  ];

  options = {
    gaming.heroic = lib.mkEnableOption "Enables Heroic";
  };

  config = lib.mkIf config.gaming.heroic {
    environment.systemPackages = with pkgs; [
      heroic
    ];
  };
}