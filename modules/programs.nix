{ ... }:

{
  programs = {
    # Development
    neovim.enable = true;
    git.enable = true;
    nix-ld.enable = true;
    # CLI
    yazi.enable = true;
    tmux.enable = true;
    # Wayland/Desktop
    sway.enable = true;
    waybar.enable = true;
    # Multimedia
    firefox.enable = true;
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
