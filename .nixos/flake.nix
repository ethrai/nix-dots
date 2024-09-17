{
  description = "NixOS configuration";

  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs?ref=nixos-unstable";
    home-manager.url = "github:nix-community/home-manager";
    home-manager.inputs.nixpkgs.follows = "nixpkgs";
    stylix.url = "github:danth/stylix";
    nixvim.url = "github:ethrai/nixvim";
    nur.url = "github:nix-community/NUR";

  };

  outputs = { self, nixpkgs, home-manager, ... }@inputs:
    let
      system = "x86_64-linux";
      pkgs = nixpkgs.legacyPackages.${system};
    in {

      nixosConfigurations = {
        caladan = nixpkgs.lib.nixosSystem {
          specialArgs = { inherit inputs; };
          modules = [
            {
              nixpkgs.overlays = [ inputs.nur.overlay ];
            }
            # ({ pkgs, ... }:
            #   let
            #     nur-no-pkgs = import inputs.nur {
            #       nurpkgs = import nixpkgs { system = "x86_64-linux"; };
            #     };
            #   in {
            #     imports = [ nur-no-pkgs.repos.iopq.modules.xraya ];
            #     services.xraya.enable = true;
            #   })
            inputs.nur.nixosModules.nur
            inputs.stylix.nixosModules.stylix
            # inputs.nixvim.nixosModules.nixvim
            ./configuration.nix
            home-manager.nixosModules.home-manager
            {
              home-manager.extraSpecialArgs = { inherit inputs; };
              home-manager.useGlobalPkgs = true;
              home-manager.useUserPackages = true;
              home-manager.users.sergio = import ./home.nix;
            }

          ];
        };

      };
    };
}
