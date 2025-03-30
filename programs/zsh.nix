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

    shellAliases = {
      sw = "home-manager switch --flake .";
    };

    initExtra = ''
      bindkey -d
      bindkey -e

      # コマンドのカラー表示を有効化
      autoload -U colors && colors
      
      # starshipの初期化
      eval "$(starship init zsh)"

      # AutosuggestionのacceptをCtrl-iで実行
      bindkey '^i' autosuggest-accept
    '';
  };
} 