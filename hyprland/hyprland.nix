{ config, pkgs, ... }:
{
  programs.hyprland = { 
     enable = true;
     xwayland.enable = true;
 };

xdg.portal.enable = true;
xdg.portal.extraPortals = [ pkgs.xdg-desktop-portal-gtk ];

environment.sessionVariables = {
  WLR_NO_HARDWARE_CURSORS = "1";
  NIXOS_OZONE_WL = "1";
};

hardware = {
opengl.enable = true;
nvidia.modesetting.enable = true;
};

  programs.hyprland.withUWSM  = true;

  environment.systemPackages = with pkgs; [
    kitty 
    mako
    pipewire
    hyprpolkitagent
    hyprland-qt-support
    nerd-fonts.jetbrains-mono
    waybar
    hyprpaper
    xwayland
    grim
    hyprlauncher
    hyprpicker
    cliphist
    kdePackages.dolphin
    librewolf
  ];
}
