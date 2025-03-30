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
      # キーバインドをリセット
      bindkey -d
      
      # Emacsのキーバインドを有効化
      bindkey -e

      # コマンドのカラー表示を有効化
      autoload -U colors && colors
      
      # starshipの初期化
      eval "$(starship init zsh)"

      # Autosuggestionの設定 Alt+fで補完を承認
      bindkey '^[f' autosuggest-accept
    '';
  };
} 