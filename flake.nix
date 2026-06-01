{
  inputs = {
    home-manager.inputs.nixpkgs.follows = "nixpkgs";
    home-manager.url = "github:nix-community/home-manager?ref=release-26.05";
    nixpkgs.url = "github:nixos/nixpkgs/nixos-26.05";
    nixos-conf-editor.url = "github:snowfallorg/nixos-conf-editor";
    molasses-update-nix.url = "github:MolassesLover/gnome-nix-update-indicator-extension";
    molasses-gerbil.url = "github:MolassesLover/gerbil";
  };

  outputs =
    {
      home-manager,
      nixpkgs,
      nixos-conf-editor,
      molasses-update-nix,
      molasses-gerbil,
      ...
    }@inputs:
    {
      nixosConfigurations = {
        daniels-pc = nixpkgs.lib.nixosSystem {
          system = "x86_64-linux";
	  specialArgs.inputs = inputs;
          modules = [
            ./hosts/daniels-pc/configuration.nix

            home-manager.nixosModules.home-manager
            {
              home-manager.useGlobalPkgs = true;
              home-manager.useUserPackages = true;
              home-manager.users.danielislost = import ./hosts/daniels-pc/home.nix;
            }

	    molasses-update-nix.nixosModules.molasses-update-nix
          ];
        };
      };
    };
}
