# NixOS Configuration
Contains configurations for my NixOS systems. Requires [Nix Flakes](https://nixos.wiki/wiki/Flakes).

## Systems
### MSI
Old MSI laptop I use as a game streaming service, similar to what NVIDIA GeForce or Xbox Cloud Gaming offer. The set up uses [Sunshine](https://github.com/LizardByte/Sunshine) as the host and [Moonlight](https://github.com/moonlight-stream) for the clients. [Steam](https://store.steampowered.com/) and [Heroic Launcher](https://github.com/Heroic-Games-Launcher/HeroicGamesLauncher) are included to run games from. Contains a service to directly run Steam url's by [jhakonen](https://github.com/jhakonen/nixos-config).

I use a [Raspberry Pi 3 B+](https://www.raspberrypi.com/products/raspberry-pi-3-model-b-plus/) as a remote wake up switch. Due to the Qualcomm Ethernet card having problems with waking up the system on Linux, the Wake-on-Lan feature is disabled by default. I reenabled it with the help of [jhwshin/alx-wol-dkms](https://github.com/jhwshin/alx-wol-dkms) patch.

### Yoga & VM
Configurations I tried out for a bit, but do not use on a daily basis.