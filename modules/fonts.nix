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
    jetbrains-mono
    adwaita-fonts
    carlito

    freefont_ttf
    liberation_ttf
  ];
}
