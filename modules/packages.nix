{ pkgs, ... }:

{
  environment.systemPackages = with pkgs; [
    # Power Management
    tlp

    # Cli
    btop
    fastfetch
    ncdu
    yazi
    tmux

    # Compile
    gcc
    gnumake

    # Development
    neovim # enable
    git # enable
    tree-sitter
    lazygit # enable

    # Zsh - enable
    zsh-autosuggestions
    zsh-autocomplete
    zsh-syntax-highlighting
    oh-my-zsh

    # Multimedia
    cava
    mpv
    firefox

    # Wayland / Desktop
    sway
    waybar
    nemo
    slurp
    grim
    rofi
    wl-clipboard
    kitty

    # Clipboard
    cliphist
  ];
}
