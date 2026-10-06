{ pkgs, ... }:

{
  fonts.packages = with pkgs; [
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
