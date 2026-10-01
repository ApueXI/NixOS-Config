{ config, pkgs, ... }:

{
  environment.systemPackages = with pkgs; [
    jq
    stylua
    shfmt
    prettierd
    netcoredbg
    stylelint
    fantomas
    roslyn
    vimPlugins.roslyn-nvim
    nil
    # phpPackages.phpcs
    # phpPackages.php-cs-fixer
  ];
}
