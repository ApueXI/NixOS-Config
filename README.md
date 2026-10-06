# My NixOS Config & dotfiles

## Set up for me

- Install `git` `nvim` `yazi` first before cloning( for QoL )
- After cloning run `sudo cp -r /etc/nixos/ ~/nixos/hosts/`
  - the DIR name will default to nixos so change it if you want
- Setup through flake `sudo nixos-rebuild switch --flake ~/nixos#VM`
- Then Reboot

## Reminder and Errors you might encounter

### Reminder/s

- `~/nixos#VM`
  - '~/nixos' is the folder dir of nix config
  - '#VM' VM is the flake name while the asterisk is just a way to call the flake name
- The default username here is `cred`
  - Edit the flake.nix if you have different username
  - You will see where to edit it
- Your hosts setup should look like

```
~/nixos/hosts/MACHINE
  |- configuration.nix
  |- hardware-configuration.nix
```

### Error/s

- Shell errors like unique or duplicate
  - Remove/Comment the `users.users.${username}.shell = pkgs.zsh;` from either `./modules/config.nix` or `./hosts/VM1/configuration.nix`
- If some problem occurs, then delete the `.git` dir
