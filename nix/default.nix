let
  sources = import ./sources.nix;
  config = {
    allowUnfree = true;
  };
  overlays = [
    (self: super: { niv = (import sources.niv { }).niv; })
  ];
in
import sources.nixpkgs { inherit overlays config; }
