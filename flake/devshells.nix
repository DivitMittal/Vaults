{
  inputs,
  lib,
  ...
}: {
  imports = [inputs.devshell.flakeModule];

  perSystem = {pkgs, ...}: {
    devshells.default = {
      packages = lib.attrsets.attrValues {
        inherit
          (pkgs)
          markdown-oxide
          ;
        # prettier = pkgs.nodePackages_latest.prettier;
      };
    };
  };
}
