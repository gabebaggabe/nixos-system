{ config, pkgs, ... }:
{
    imports = [
	./audio.nix
	./bootloader.nix
	./locales.nix
	./network.nix
	./nvidia.nix
	./packages.nix
	./sddm.nix
	./service.nix
	./settings.nix
	./user.nix
       ];
}
