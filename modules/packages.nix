{ config , pkgs, ... }:
{
  programs.fish.enable = true;
  programs.steam = {
    enable = true;
    remotePlay.openFirewall = true;
    dedicatedServer.openFirewall = true;
    localNetworkGameTransfers.openFirewall = true;
   };
 
  nixpkgs.config.allowUnfree = true;

  environment.systemPackages = with pkgs; [
	vim 
  librewolf 
  discord 
  spotify 
  steam 
  fastfetch 
  git 
  kitty 
  sddm-astronaut 
  hyprland 
  qbittorrent
   ];
}
