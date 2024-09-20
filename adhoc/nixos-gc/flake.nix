{
  inputs.nixpkgs.url = github:NixOS/nixpkgs/db8da26fb9e7a031f2882c14d86e705b853e6104;

  outputs = { self, nixpkgs }: {
    nixosConfigurations.machine = nixpkgs.lib.nixosSystem {
      system = "x86_64-linux";
      modules = [ ./configuration.nix ];
    };
  };
}
