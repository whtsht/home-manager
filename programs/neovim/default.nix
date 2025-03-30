{ config, ... }:

{
  home.file = {
    ".config/nvim" = {
      source = builtins.path { path = ./.; name = "neovim-config"; };
    };
  };
}
