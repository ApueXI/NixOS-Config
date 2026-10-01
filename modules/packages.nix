{ pkgs, ... }:

{
  environment.systemPackages = with pkgs; [

    gcc
    gnumake

    neovim
    git
    yazi
    nemo
    btop
    tree-sitter

    zsh-autosuggestions
    zsh-autocomplete
    zsh-syntax-highlighting
    oh-my-zsh

    sway
    fastfetch
    slurp
    grim
    rofi
    waybar
    wl-clipboard
    kitty

    cava
    mpv
    firefox
    tmux
    ncdu
    cliphist
  ];
}
