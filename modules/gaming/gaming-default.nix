{pkgs, lib, config, ...}:

let 
  inherit (lib) types;
in
{
  options = {
    gaming.enable = lib.mkEnableOption "Enable gaming module";
    
    gaming.heroic = lib.mkOption {
      type = types.bool;
      default = false;
      description = ''
        Enable Heroic launcher
      '';
    };
  };

  config = lib.mkIf config.gaming.enable {

    programs.steam = {
      enable = true;
      gamescopeSession.enable = true;
      remotePlay.openFirewall = true;
    };

    environment.sessionVariables = {
      STEAM_EXTRA_COMPAT_TOOLS_PATHS =
        "\${HOME}/.steam/root/compatibilitytools.d";
    };

    programs.gamemode.enable = true;

    environment.systemPackages = lib.mkMerge [
      (
        with pkgs; [
          protonup-ng
          steam-run
          dxvk
          mangohud
        ]
      )
      (lib.mkIf config.gaming.heroic
        (with pkgs; [
          heroic
        ])
      )
    ];
  };
}