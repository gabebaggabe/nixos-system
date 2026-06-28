{ pkgs, ... }:
{
  users.users."felix" = {
    isNormalUser = true;
    description = "felix";
    extraGroups = [ "networkmanager" "wheel" ];
    packages = with pkgs; [
	kdePackages.kate
	  # thunderbird
	];
   };
 #Shell
 programs.fish.enable = true;
 users.defaultUserShell = pkgs.fish;
}
