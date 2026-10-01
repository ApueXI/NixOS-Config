{ pkgs, ... }:

{
  environment.systemPackages = with pkgs; [

    # Compile
    gcc
    gnumake

    # Development
    neovim # enable
    git # enable
    tree-sitter

    # CLI
    yazi # enable
    btop
    fastfetch
    tmux # enable
    ncdu

    # Zsh - enable
    zsh-autosuggestions
    zsh-autocomplete
    zsh-syntax-highlighting
    oh-my-zsh

    # Wayland / Desktop
    sway # enable
    nemo
    slurp
    grim
    rofi
    waybar # enable
    wl-clipboard
    kitty

    # Multimedia
    cava
    mpv
    firefox

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
}
