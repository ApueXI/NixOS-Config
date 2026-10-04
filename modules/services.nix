{ config, pkgs, ... }:

{

  services.xserver = {
    enable = true;
    displayManager.lightdm.enable = true;
  };

  services.openssh = {
    enable = true;
  };

  services.tlp = {
    enable = true;
    settings = {
      START_CHARGE_THRESH_BAT0 = 75;
      STOP_CHARGE_THRESH_BAT0 = 80;

      # Incase it has two battery i guess?
      # START_CHARGE_THRESH_BAT1 = 75;
      # STOP_CHARGE_THRESH_BAT1 = 80;
    };
  };

  # avoid conflict with tlp
  services.power-profiles-daemon.enable = false;

}
