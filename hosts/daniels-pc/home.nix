# Special thanks to Infinidoge (infinidoge@inx.moe) for the Haxe installer!

{ pkgs, lib, ... }:
{
  home.stateVersion = "23.11";

  home.packages = [
    pkgs._1password-gui
    pkgs.gnome-secrets
    pkgs.lm_sensors
    pkgs.mesa-demos
    pkgs.prismlauncher
    pkgs.seahorse
    pkgs.signal-desktop
    pkgs.steam
    pkgs.tor-browser
    pkgs.ungoogled-chromium
    pkgs.vlc

    # Fonts
    pkgs.fira
    pkgs.fira-code
    pkgs.fira-mono
    pkgs.jetbrains-mono
    pkgs.jetbrains-mono
    pkgs.lato
    pkgs.roboto
    pkgs.roboto-flex
    pkgs.roboto-mono
    pkgs.roboto-serif
    pkgs.roboto-slab
    pkgs.ubuntu-sans
  ];

  services.pass-secret-service.enable = true;
}
