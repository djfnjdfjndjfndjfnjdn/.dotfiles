{
  # Description
  description = "Paginated's NixOS Configuration";

  # Inputs
  inputs = {
    nixpkgs.url = "github:NixOS/nixpkgs/nixos-unstable";
    home-manager = {
      url = "github:nix-community/home-manager";
      inputs.nixpkgs.follows = "nixpkgs";
    };
  };

  # Outputs
  outputs = {
    self,
    nixpkgs,
    home-manager,
    ...
  } @ inputs: let
    # System architecture
    system = "x86_64-linux";

    # Username
    user = "me";
  in {
    # Set Alejandra as the Nix formatter
    formatter.${system} = nixpkgs.legacyPackages.${system}.alejandra;

    # Set NixOS Configuration for the host
    nixosConfigurations.home = nixpkgs.lib.nixosSystem {
      inherit system;

      # Special args to pass to all the modules
      specialArgs = {inherit inputs user;};

      # Modules
      modules = [
        ./nixos/configuration.nix
        home-manager.nixosModules.home-manager
        {
          home-manager = {
            useGlobalPkgs = true;
            useUserPackages = true;
            extraSpecialArgs = {inherit inputs user;};

            # Set Home Manager configuration for the user
            users.${user} = import ./nixos/home.nix;
          };
        }
      ];
    };
  };
}