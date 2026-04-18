{
  self,
  inputs,
  ...
}: {
  flake.nixosModules.nvf = {
    config,
    pkgs,
    lib,
    ...
  }: let
    languages = [
      "bash"
      "cmake"
      "css"
      "go"
      "html"
      "json"
      "lua"
      "markdown"
      "nix"
      "python"
      "rust"
      "sql"
      "tex"
      "toml"
      "ts"
      "typst"
    ];
  in {
    programs.nvf = {
      enable = true;
      settings.vim = {
        viAlias = false;
        vimAlias = true;

        extraLuaFiles = [
          ./other.lua
          ./mappings.lua
        ];

        enableLuaLoader = true;
        vendoredKeymaps.enable = false;
        options = {
          updatetime = 100;
          timeoutlen = 500;
          shortmess = "filnxtToOFc";
          cmdheight = 1;
          laststatus = 3;
          termguicolors = true;
          undofile = true;
          number = true;
          relativenumber = true;
          shiftwidth = 4;
          softtabstop = 8;
          tabstop = 8;
          expandtab = true;
          smarttab = true;
          linebreak = true;
          signcolumn = "yes";
          winborder = "solid";
        };
        globals = {
          mapleader = " ";
          maplocalleader = ",";
        };
        ui = {
          ui2.enable = true;
          borders = {
            enable = true;
            globalStyle = "solid";
          };
        };
        diagnostics = {
          enable = true;
          config = {
            signs.active = true;
            virtual_text = true;
            virtual_lines.current_line = true;
            update_in_insert = false;
            underline = true;
            severity_sort = true;
            float = {
              focusable = true;
              style = "minimal";
              border = "solid";
              source = "always";
              header = "";
              prefix = "";
            };
          };
        };
        autocmds = [
          {
            event = ["BufEnter"];
            pattern = ["*.html" "*.lua" "*.nix"];
            desc = "2-space tabs for html, lua, nix";
            callback = lib.generators.mkLuaInline ''
              function(ev)
                vim.bo.shiftwidth = 2
              end
            '';
          }
          {
            event = ["BufEnter"];
            pattern = ["*.rs"];
            desc = "better '' pairs for rust";
            callback = lib.generators.mkLuaInline ''
              function(ev)
                require('mini.pairs').setup {
                  mappings = {
                    ["'"] = { action = 'closeopen', pair = "'''", neigh_pattern = '[^[< ,]\\].', register = { cr = false } },
                  },
                }
              end
            '';
          }
        ];
        git.vim-fugitive.enable = true;
        treesitter = {
          enable = true;
          grammars = pkgs.vimPlugins.nvim-treesitter.allGrammars;
        };
        lsp = {
          enable = true;
          formatOnSave = true;
          inlayHints.enable = true;
          lspSignature.enable = true;
          lspconfig.enable = true;
        };
        languages =
          builtins.listToAttrs
          (builtins.map (x: {
              name = x;
              value = {
                enable = true;
                treesitter.enable = true;
                lsp.enable = true;
                format.enable = true;
              };
            })
            languages)
          // {
            clang = {
              enable = true;
              treesitter.enable = true;
              lsp.enable = true;
            };
            haskell = {
              enable = true;
              treesitter.enable = true;
              lsp.enable = true;
            };
            java = {
              enable = true;
              treesitter.enable = true;
              lsp.enable = true;
            };
            yaml = {
              enable = true;
              treesitter.enable = true;
              lsp.enable = true;
            };
          };
        visuals = {
          rainbow-delimiters = {
            enable = true;
            setupOpts = {
              highlight = ["Red" "Yellow" "Blue" "Orange" "Green"];
            };
          };
        };
        utility = {
          yanky-nvim = {
            enable = true;
            setupOpts.ring.storage = "sqlite";
          };
        };
        mini = {
          ai.enable = true;
          bracketed.enable = true;
          comment.enable = true;
          completion.enable = true;
          diff.enable = true;
          extra.enable = true;
          files.enable = true;
          icons.enable = true;
          jump.enable = true;
          notify.enable = true;
          pairs.enable = true;
          pick.enable = true;
          statusline.enable = true;
          surround.enable = true;
          trailspace.enable = true;
          animate = {
            enable = true;
            setupOpts = let
              timing_fn = lib.mkLuaInline ''
                function(_, total)
                  return 100 / total
                end
              '';
            in {
              cursor.timing = timing_fn;
              scroll.timing = timing_fn;
            };
          };
          clue = {
            enable = true;
            setupOpts = {
              window = {
                delay = 0;
              };
              triggers = [
                # leader
                {
                  mode = "n";
                  keys = "<Leader>";
                }
                {
                  mode = "x";
                  keys = "<Leader>";
                }
                # built-in completition
                {
                  mode = "i";
                  keys = "<C-x>";
                }
                # g key
                {
                  mode = "n";
                  keys = "g";
                }
                {
                  mode = "x";
                  keys = "g";
                }
                # marks
                {
                  mode = "n";
                  keys = "'";
                }
                {
                  mode = "n";
                  keys = "`";
                }
                {
                  mode = "x";
                  keys = "'";
                }
                {
                  mode = "x";
                  keys = "`";
                }
                # registers
                {
                  mode = "n";
                  keys = "\"";
                }
                {
                  mode = "x";
                  keys = "\"";
                }
                {
                  mode = "i";
                  keys = "<C-r>";
                }
                {
                  mode = "c";
                  keys = "<C-r>";
                }
                # window commands
                {
                  mode = "n";
                  keys = "<C-w>";
                }
                # z key
                {
                  mode = "n";
                  keys = "z";
                }
                {
                  mode = "x";
                  keys = "z";
                }
              ];
              clues = [
                (lib.mkLuaInline
                  ''require("mini.clue").gen_clues.builtin_completion()'')
                (lib.mkLuaInline
                  ''require("mini.clue").gen_clues.g()'')
                (lib.mkLuaInline
                  ''require("mini.clue").gen_clues.marks()'')
                (lib.mkLuaInline
                  ''require("mini.clue").gen_clues.registers()'')
                (lib.mkLuaInline
                  ''require("mini.clue").gen_clues.windows()'')
                (lib.mkLuaInline
                  ''require("mini.clue").gen_clues.z()'')
                {
                  mode = "n";
                  keys = "g";
                  desc = "+lsp";
                }
                {
                  mode = "n";
                  keys = "<leader>b";
                  desc = "+buffer";
                }
                {
                  mode = "n";
                  keys = "<leader>f";
                  desc = "+file/format";
                }
                {
                  mode = "n";
                  keys = "<leader>fm";
                  desc = "+format";
                }
                {
                  mode = "n";
                  keys = "<leader>g";
                  desc = "+git";
                }
                {
                  mode = "n";
                  keys = "<leader>h";
                  desc = "+help";
                }
                {
                  mode = "n";
                  keys = "<leader>q";
                  desc = "+quit";
                }
                {
                  mode = "n";
                  keys = "<leader>s";
                  desc = "+search";
                }
                {
                  mode = "n";
                  keys = "<leader>w";
                  desc = "+windows";
                }
              ];
            };
          };
          hipatterns = {
            enable = true;
            setupOpts = {
              highlighters = {
                fixme = {
                  pattern = "%f[%w]()FIXME()%f[%W]";
                  group = "MiniHipatternsFixme";
                };
                hack = {
                  pattern = "%f[%w]()HACK()%f[%W]";
                  group = "MiniHipatternsHack";
                };
                todo = {
                  pattern = "%f[%w]()TODO()%f[%W]";
                  group = "MiniHipatternsTodo";
                };
                note = {
                  pattern = "%f[%w]()NOTE()%f[%W]";
                  group = "MiniHipatternsNote";
                };

                hex_color = lib.mkLuaInline ''require("mini.hipatterns").gen_highlighter.hex_color()'';
              };
            };
          };
          indentscope = {
            enable = true;
            setupOpts = {
              draw = {
                delay = 0;
                animation = lib.mkLuaInline ''require('mini.indentscope').gen_animation.none()'';
              };
              symbol = "▎";
            };
          };
          jump2d = {
            enable = true;
            setupOpts = {
              view = {
                dim = true;
                n_steps_ahead = 1;
              };
              mappings.start_jumping = "";
            };
          };
          snippets = {
            enable = true;
            setupOpts = {
              snippets = [
                (lib.mkLuaInline
                  ''require("mini.snippets").gen_loader.from_lang()'')
              ];
            };
          };
        };
        extraPlugins = {
          everforest = {
            package = pkgs.vimPlugins.everforest;
            setup = ''
              vim.cmd 'colorscheme everforest'
              vim.cmd 'set background=dark'
            '';
          };
          quicker = {
            package = pkgs.vimPlugins.quicker-nvim;
            setup = ''require('quicker').setup()'';
          };
          vimtex = {
            package = pkgs.vimPlugins.vimtex;
            setup = ''vim.g.vimtex_view_method = "zathura"'';
          };
        };
      };
    };
  };
}
