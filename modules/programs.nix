{ ... }:

{
  programs = {
    # Development
    nix-ld.enable = true;
    neovim.enable = true;
    git.enable = true;
    # # Wayland/Desktop
    # sway.enable = true;
    # waybar.enable = false; # since sway is running this
  };

  # Zsh
  programs.zsh = {
    enable = true;

    autosuggestions.enable = true;
    syntaxHighlighting.enable = true;

    ohMyZsh = {
      enable = true;
      plugins = [
        "git"
        "zsh-autosuggestions"
        "zsh-syntax-highlighting"
      ];
    };
  };
}
