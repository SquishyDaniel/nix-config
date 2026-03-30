# Special thanks to Infinidoge (infinidoge@inx.moe) for the Haxe installer!

{ pkgs, lib, ... }:
{
  home.stateVersion = "23.11";

  home.packages = [
    pkgs._1password-gui
    pkgs.signal-desktop
    pkgs.vlc
    pkgs.vscodium

    # CLI
    pkgs.lm_sensors
    pkgs.mesa-demos

    # Games
    pkgs.prismlauncher
    pkgs.steam

    # Web
    pkgs.tor-browser
    pkgs.ungoogled-chromium

    # GNOME apps
    pkgs.commit
    pkgs.eloquent
    pkgs.gnome-secrets
    pkgs.seahorse
    pkgs.turtle

    # Wine
    pkgs.wineWow64Packages.wayland
    pkgs.bottles

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
