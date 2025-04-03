{
  programs.zsh = {
    enable = true;
    autosuggestion.enable = true;
    enableCompletion = true;

    history = {
      size = 1000;
      path = "$HOME/.zsh_history";
      ignoreDups = true;
      share = true;
    };

    oh-my-zsh = {
      enable = true;
      plugins = [
        "aliases"
        "git"
        "per-directory-history"
      ];
      theme = "robbyrussell";
    };

    shellAliases = {
      sw  = "home-manager switch --flake .";
      u   = "cd ..";
      uu  = "cd ../..";
      e   = "nvim";
    };

    initExtra = ''
      bindkey -d
      bindkey -e

      autoload -U colors && colors

      eval "$(starship init zsh)"
      eval "$(zoxide init zsh)"
    '';
  };
} 
