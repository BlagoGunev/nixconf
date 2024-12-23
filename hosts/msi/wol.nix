{ config, ... }:

{
  networking.interfaces.enp61s0.wakeOnLan = {
    enable = true;
    policy = [
      "magic"
    ];
  };
}