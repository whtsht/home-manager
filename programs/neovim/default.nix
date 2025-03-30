{ config, ... }:

{
  programs.neovim.enable = true;
  
  home.file = {
    ".config/nvim" = {
      source = builtins.path { path = ./.; name = "neovim-config"; };
    };
  };
}
