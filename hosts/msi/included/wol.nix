{ config, ... }:

{
  boot = {
    kernelPatches = [
      {
        name = "atheros e2500 wol";
        patch = builtins.fetchurl {
          url = "https://raw.githubusercontent.com/jhwshin/alx-wol-dkms/refs/heads/main/alx-wol.patch";
          sha256 = "1rxjg80ab1v59bfa98rn9qz1n096cj9vscmn63hzdsw1ihh0vwgl";
        };
      }
    ];
  };

  networking.interfaces.enp61s0.wakeOnLan = {
    enable = true;
    policy = [
      "magic"
    ];
  };
}