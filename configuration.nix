{ config, pkgs, ... }:

{
  imports =
    [ # Include the results of the hardware scan.
        ./hardware-configuration.nix
	      ./modules/default.nix
        ./hyprland/hyprland.nix
    ];

  system.stateVersion = "26.05";

}
