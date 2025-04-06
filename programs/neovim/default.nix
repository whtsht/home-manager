{ config, pkgs, ... }:

{
  programs.neovim = {
    enable = true;
    plugins = with pkgs.vimPlugins; [
      # Colorscheme
      tokyonight-nvim
      # Icons
      nvim-web-devicons
      # Fuzzy finder
      fzf-lua
      # Autocomplete
      nvim-cmp
      cmp-buffer
      cmp-path
      cmp-cmdline
      cmp-nvim-lsp
      # Language server protocol
      nvim-lspconfig
      lspsaga-nvim
      # Snippet manager
      luasnip
      # Github copilot
      copilot-lua
    ];
  };

  home.file = {
    ".config/nvim" = {
      source = builtins.path { path = ./.; name = "neovim-config"; };
    };
  };
}
