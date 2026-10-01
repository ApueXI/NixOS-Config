{ ... }:

{
  programs.sway = {
    enable = true;
  };

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

  programs.firefox = {
    enable = true;
  };

  programs.nix-ld = {
    enable = true;
  };
}
