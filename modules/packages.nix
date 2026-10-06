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

    # Zsh - enable
    zsh-autosuggestions
    zsh-autocomplete
    zsh-syntax-highlighting
    oh-my-zsh
  ];
}
