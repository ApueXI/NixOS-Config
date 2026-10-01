{
  description = "My NixOS Config";

  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs/nixos-26.05";
    # nixpkgs-unstable.url = "github:nixos/nixpkgs/nixos-unstable";
    home-manager = {
      url = "github:nix-community/home-manager/release-26.05";
      inputs.nixpkgs.follows = "nixpkgs";
    };
  };

  outputs =
    {
      self,
      # nixpkgs-unstable,
      nixpkgs,
      home-manager,
      ...
    }:
    {
      nixosConfigurations.VM = nixpkgs.lib.nixosSystem {
        system = "x86_64-linux";

        modules = [
          ./hosts/VM1/configuration.nix

          ./modules/mason.nix
          ./modules/config.nix
          ./modules/networking.nix
          ./modules/packages.nix
          ./modules/programs.nix
          ./modules/services.nix

          home-manager.nixosModules.home-manager
          {
            home-manager.users.cred = import ./home.nix;
          }
        ];
      };
    };
}
