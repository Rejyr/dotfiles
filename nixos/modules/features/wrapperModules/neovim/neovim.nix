{
  self,
  inputs,
  ...
}: {
  flake.wrapperModules.neovim = {
    pkgs,
    lib,
    ...
  }: {
    config = {
      specs.plugins = {
        before = ["INIT_MAIN"];
        data = with pkgs.vimPlugins; [
          blink-cmp
          conform-nvim
          everforest
          mini-nvim
          nvim-lspconfig
          nvim-treesitter.withAllGrammars
          quicker-nvim
          rainbow-delimiters-nvim
          vim-fugitive
          vimtex
          yanky-nvim
        ];
      };
      extraPackages = with pkgs; [
        basedpyright
        bash-language-server
        clang-tools
        emmet-language-server
        eslint
        harper
        jdt-language-server
        lua-language-server
        nil
        ruff
        rust-analyzer
        sqls
        taplo
        texlab
        typescript-language-server
        vscode-langservers-extracted

        eslint_d
        selene

        python314Packages.autopep8
        prettier
        stylua
      ];
      settings.config_directory = ./.;
    };
  };

  perSystem = {
    pkgs,
    lib,
    self',
    ...
  }: {
    packages.neovim = inputs.wrapper-modules.wrappers.neovim.wrap {
      inherit pkgs;
      imports = [self.wrapperModules.neovim];
    };
  };
}
