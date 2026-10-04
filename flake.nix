{
  description = "My NixOS Config";

  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs/nixos-26.05";
    nixpkgs-unstable.url = "github:nixos/nixpkgs/nixos-unstable";

    home-manager = {
      url = "github:nix-community/home-manager/release-26.05";
      inputs.nixpkgs.follows = "nixpkgs";
    };
    home-manager-unstable = {
      url = "github:nix-community/home-manager";
      inputs.nixpkgs.follows = "nixpkgs-unstable";
    };
  };

  outputs =
    {
      self,
      nixpkgs,
      nixpkgs-unstable,
      home-manager,
      home-manager-unstable,
      ...
    }:
    let
      system = "x86_64-linux";
    in
    {
      nixosConfigurations = {
        VM = nixpkgs.lib.nixosSystem {
          system = system;

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
              home-manager.useGlobalPkgs = true;
              home-manager.useUserPackages = true;

              home-manager.users.cred = import ./home.nix;
            }
          ];
        };

        VMUnstable = nixpkgs-unstable.lib.nixosSystem {
          system = system;

          modules = [
            ./hosts/VM1/configuration.nix

            ./modules/mason.nix
            ./modules/config.nix
            ./modules/networking.nix
            ./modules/packages.nix
            ./modules/programs.nix
            ./modules/services.nix

            home-manager-unstable.nixosModules.home-manager
            {
              home-manager.useGlobalPkgs = true;
              home-manager.useUserPackages = true;

              home-manager.users.cred = import ./home.nix;
            }
          ];
        };
      };
    };
}
