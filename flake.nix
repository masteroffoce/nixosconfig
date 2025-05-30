{
  description = "My flake-based NixOS config";

  inputs = {
    nixpkgs.url = "github:NixOS/nixpkgs/nixos-unstable";
    home-manager.url = "github:nix-community/home-manager";
    home-manager.inputs.nixpkgs.follows = "nixpkgs";
  };

  outputs = { self, nixpkgs, home-manager, ... }: {
    nixosConfigurations = {
      nixos = nixpkgs.lib.nixosSystem {
        system = "x86_64-linux";
        modules = [
          ./nixos/configuration.nix
          ./nixos/hardware-configuration.nix
          home-manager.nixosModules.home-manager
          {
            home-manager.users.calcium = import ./home/home.nix;
          }
        ];
      };
    };
  };
}

