{ pkgs, config, ... }: 

{
  services.open-webui = {
    enable = true;
    openFirewall = true;
    port = 9999;
    host = "0.0.0.0";
  };
}