{ pkgs, username, ... }:

{
  zramSwap = {
    enable = true;
    priority = 100;
    algorithm = "zstd";
    memoryPercent = 50;
  };

  swapDevices = [
    {
      device = "/home/swapfile";
      size = 4096;
      priority = 1;
    }
  ];

  nix.settings.experimental-features = [
    "nix-command"
    "flakes"
  ];

  users.users.${username}.shell = pkgs.zsh;
}
