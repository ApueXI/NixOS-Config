# My NixOS Config & dotfiles

## Set up for me

- Install `git` `nvim` `yazi` first before cloning( for QoL )
- After cloning, copy `/etc/nixos/configuration.nix` and `/etc/nixos/hardware-configuration.nix` into `~/nixos/hosts/MACHINE/`
  - 'MACHINE' is just a name/identifier you want, can be anything but i have VM/ and Acer_Nitro_V/ as dir
- Setup through flake `rebsw --flake ~/nixos#VM`
  - rebsw is just an alias for `sudo nixos-rebuild switch`
  - `~/nixos#VM`
    - '~/nixos' is the folder dir of nix config
    - '#VM' VM is the flake name while the asterisk is just a way to call the flake name
