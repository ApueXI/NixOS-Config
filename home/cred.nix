{ config, pkgs, ... }:

{
  programs = {
    # Development
    lazygit.enable = true;
    # CLI
    yazi.enable = true;
    tmux.enable = true;
    # Desktop
    waybar.enable = false;
    # Multimedia
    firefox.enable = true;
  };

  # Wayland Sway
  wayland.windowManager.sway = {
    enable = true;
  };

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

    packages = with pkgs; [

      # Cli
      btop
      fastfetch
      ncdu

      # Wayland / Desktop
      nemo
      slurp
      grim
      rofi
      wl-clipboard
      kitty

      # Multimedia
      cava
      mpv

      # Clipboard
      cliphist

      # Fonts
      noto-fonts
      noto-fonts-color-emoji
      noto-fonts-cjk-sans
      noto-fonts-cjk-serif
      nerd-fonts.jetbrains-mono
      nerd-fonts.iosevka
      dejavu_fonts
      liberation_ttf
      jetbrains-mono
      adwaita-fonts
    ];
  };
}
