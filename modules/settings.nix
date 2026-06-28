{ pkgs, config, lib, ... }:
{ 
 # Unfree packages
 nixpkgs.config.allowUnfree = true;
 
 # trusted-users
 nix.settings.trusted-users = [ "root" "felix" ];
 
 # Experimental-features
 nix.settings.experimental-features = [ "nix-command" "flakes" ];

 # Automatic Cleanup
 nix.gc.automatic = true;
 nix.gc.dates = "daily";
 nix.gc.options = "--delete-older-than 10d";
 nix.settings.auto-optimise-store = true;

 # Automatic Upgrade
 system.autoUpgrade.enable = true;
 system.autoUpgrade.dates = "weekly";
} 
