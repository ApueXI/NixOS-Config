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
    tree-sitter
    lazygit # enable

    # Cli
    btop
    fastfetch
    ncdu
    yazi # enable
    tmux # enable

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
    cava
    mpv
    firefox # enable

    # Clipboard
    cliphist
  ];
}
