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

    # NOTE: EDIT HERE THE USERNAME
    # NOTE: EDIT HERE THE USERNAME
    # NOTE: EDIT HERE THE USERNAME
    # NOTE: Do not edit the system unless you have specialized hardware
    let
      system = "x86_64-linux";
      username = "cred";
    in
    {
      nixosConfigurations = {
        VM = nixpkgs.lib.nixosSystem {
          system = system;

          specialArgs = {
            inherit username;
          };

          modules = [
            ./hosts/VM1/configuration.nix

            ./modules/mason.nix
            ./modules/config.nix
            ./modules/networking.nix
            ./modules/packages.nix
            ./modules/programs.nix
            ./modules/services.nix
            ./modules/fonts.nix

            home-manager.nixosModules.home-manager
            {
              home-manager = {
                useGlobalPkgs = true;
                useUserPackages = true;

                extraSpecialArgs = {
                  inherit username;
                };

                users.${username} = import ./home/cred.nix;
              };
            }
          ];
        };

        VMUnstable = nixpkgs-unstable.lib.nixosSystem {
          system = system;

          specialArgs = {
            inherit username;
          };

          modules = [
            ./hosts/VM1/configuration.nix

            ./modules/mason.nix
            ./modules/config.nix
            ./modules/networking.nix
            ./modules/packages.nix
            ./modules/programs.nix
            ./modules/services.nix
            ./modules/fonts.nix

            home-manager-unstable.nixosModules.home-manager
            {
              home-manager = {
                useGlobalPkgs = true;
                useUserPackages = true;

                extraSpecialArgs = {
                  inherit username;
                };

                users.${username} = import ./home/cred.nix;
              };
            }
          ];
        };
      };
    };
}
