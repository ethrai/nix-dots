{
  description = "NixOS configuration";

  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs?ref=nixos-unstable";
    home-manager.url = "github:nix-community/home-manager";
    home-manager.inputs.nixpkgs.follows = "nixpkgs";
    stylix.url = "github:danth/stylix";

    hyprland.url = "git+https://github.com/hyprwm/Hyprland?submodules=1";

    hy3 = {
      url = "github:outfoxxed/hy3"; # where {version} is the hyprland release version

      inputs.hyprland.follows = "hyprland";
    };

    helix.url = "github:helix-editor/helix/master";

    nixvim = {
      url = "github:nix-community/nixvim";
      # If using a stable channel you can use `url = "github:nix-community/nixvim/nixos-<version>"`
      inputs.nixpkgs.follows = "nixpkgs";
    };

  };

  outputs =
    {
      self,
      nixpkgs,
      home-manager,
      ...
    }@inputs:
    let
      system = "x86_64-linux";
      pkgs = nixpkgs.legacyPackages.${system};
    in
    {

      nixosConfigurations = {
        caladan = nixpkgs.lib.nixosSystem {
          specialArgs = {
            inherit inputs;
          };
          modules = [
            inputs.stylix.nixosModules.stylix
            inputs.nixvim.nixosModules.nixvim
            ./configuration.nix
            home-manager.nixosModules.home-manager
            {
              home-manager.extraSpecialArgs = {
                inherit inputs;
              };
              home-manager.useGlobalPkgs = true;
              home-manager.useUserPackages = true;
              home-manager.users.sergio = import ./home.nix;
            }

          ];
        };

      };
    };
}
