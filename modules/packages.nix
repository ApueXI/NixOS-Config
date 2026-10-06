{ pkgs, ... }:

{
  environment.systemPackages = with pkgs; [
    # Power Management
    tlp

    # Compile
    gcc
    gnumake

    # Development
    neovim # enable
    git # enable
    lazygit # enable
    tree-sitter

    # Cli
    yazi # enable
    tmux # enable
    btop
    fastfetch
    ncdu
    cmatrix

    # Zsh - enable
    zsh-autosuggestions
    zsh-autocomplete
    zsh-syntax-highlighting
    oh-my-zsh

    # Wayland / Desktop
    sway # enable
    waybar # enable false
    nemo
    slurp
    grim
    rofi
    wl-clipboard
    kitty

    # Multimedia
    firefox # enable
    cava
    mpv

    # Clipboard
    cliphist
  ];
}
