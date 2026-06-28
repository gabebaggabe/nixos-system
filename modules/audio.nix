{ config, pkgs, ... }:
{
  # Enable sound with pipewire.
  services.pulseaudio.enable = false;
  security.rtkit.enable = true;
  services.pipewire = {
	enable = true;
	alsa.enable = true;
	alsa.support32Bit = true;
	pulse.enable = true;
	# If you want to use JACK applications, uncommet this
	#jack.enable = true;

	# use the example session manager (no others packaged yet so this enabled by default,
	# no need to redefine it in your config for now)
	#media-session.enable = true;
      };
}   
