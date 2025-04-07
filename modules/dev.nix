{ pkgs, lib, ... }:

{
  environment.systemPackages = with pkgs; [
    # compilers
    cmake
    ninja
    openjdk
    scala
    SDL2
    SDL2_ttf
    libgcc

    # ide
    jetbrains.idea-ultimate
  ];
}