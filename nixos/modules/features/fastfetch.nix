{
  self,
  inputs,
  ...
}: {
  flake.nixosModules.fastfetch = {
    pkgs,
    lib,
    ...
  }: {
    environment.systemPackages = [
      self.packages.${pkgs.stdenv.hostPlatform.system}.myFastfetch
    ];
  };

  perSystem = {
    pkgs,
    lib,
    self',
    ...
  }: {
    packages.myFastfetch = inputs.wrapper-modules.wrappers.fastfetch.wrap {
      inherit pkgs;
      settings = {
        logo = {
          type = "small";
          padding = {
            top = 1;
            left = 2;
          };
        };
        display = {
          separator = " ~ ";
          color = "green";
        };
        modules = [
          "break"
          {
            type = "title";
            format = "{user-name-colored}@{host-name-colored}";
            keyColor = "blue";
          }
          {
            type = "os";
            key = "os ";
            keyColor = "cyan";
          }
          {
            type = "kernel";
            key = "ker";
            keyColor = "magenta";
          }
          {
            type = "packages";
            key = "pkg";
            keyColor = "blue";
          }
          {
            type = "wm";
            key = "wm ";
            keyColor = "yellow";
          }
          {
            type = "memory";
            key = "mem";
            keyColor = "red";
          }
          "break"
          {
            type = "colors";
            symbol = "circle";
          }
        ];
      };
    };
  };
}
