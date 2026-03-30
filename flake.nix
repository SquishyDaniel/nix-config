{
  inputs = {
    home-manager.inputs.nixpkgs.follows = "nixpkgs";
    home-manager.url = "github:nix-community/home-manager?ref=release-25.11";
    nixpkgs.url = "github:nixos/nixpkgs/nixos-25.11";
  };

  outputs =
    {
      home-manager,
      nixpkgs,
      ...
    }@inputs:
    {
      nixosConfigurations = {
        daniels-pc = nixpkgs.lib.nixosSystem {
          system = "x86_64-linux";
          modules = [
            ./hosts/daniels-pc/configuration.nix

            home-manager.nixosModules.home-manager
            {
              home-manager.useGlobalPkgs = true;
              home-manager.useUserPackages = true;
              home-manager.users.danielislost = import ./hosts/daniels-pc/home.nix;
            }
          ];
        };
      };
    };
}
