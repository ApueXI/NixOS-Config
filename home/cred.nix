{ config, pkgs, ... }:

{
  home = {
    stateVersion = "26.05";
    username = "cred";
    homeDirectory = "/home/cred";

    file = {
      ".config/btop".source = ../dotfiles/btop;
      ".config/cava".source = ../dotfiles/cava;
      ".config/fastfetch".source = ../dotfiles/fastfetch;
      ".config/kitty".source = ../dotfiles/kitty;
      ".config/nvim".source = ../dotfiles/nvim;
      ".config/rofi".source = ../dotfiles/rofi;
      ".config/sway".source = ../dotfiles/sway;
      ".config/waybar".source = ../dotfiles/waybar;
      ".config/yazi".source = ../dotfiles/yazi;

      ".zshrc".source = ../dotfiles/.zshrc;
      ".gitconfig".source = ../dotfiles/.gitconfig;
    };
  };
}
