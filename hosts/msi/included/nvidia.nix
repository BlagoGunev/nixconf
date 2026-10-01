
{ config, lib, pkgs, ... }:
{

  # Load nvidia driver for Xorg and Wayland
  services.xserver.videoDrivers = ["nvidia"];

  hardware.graphics.enable = true;
  # Intel driver for hardware encoding
  hardware.graphics.extraPackages = with pkgs; [
    intel-media-driver
  ];
  hardware.nvidia = {

    # Modesetting is required.
    modesetting.enable = true;

    prime = {
      offload.enable = true;
      offload.enableOffloadCmd = true;

		  # Make sure to use the correct Bus ID values for your system!
      intelBusId = "PCI:0:2:0";
      nvidiaBusId = "PCI:1:0:0";
    };

    # Nvidia power management. Experimental, and can cause sleep/suspend to fail.
    # Enable this if you have graphical corruption issues or application crashes after waking
    # up from sleep. This fixes it by saving the entire VRAM memory to /tmp/ instead 
    # of just the bare essentials.
    powerManagement.enable = false;
    powerManagement.finegrained = false;
    open = false;
    nvidiaSettings = true;

    # Optionally, you may need to select the appropriate driver version for your specific GPU.
    package = config.boot.kernelPackages.nvidiaPackages.legacy_580;
  };
}
