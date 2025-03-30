{ config, pkgs, ... }:

{
  home.username = "toma";
  home.homeDirectory = "/home/toma";

  home.stateVersion = "24.11";

  imports = [
    ./programs
  ];

  home.packages = with pkgs; [
    # Development Tools
    docker
    git
    gh
    direnv
    trash-cli
    awscli
    ssm-session-manager-plugin
    zip
    unzip
    yt-dlp
    jq
    neovim
    delta
   
    # Programming Language
    rustup
    nodejs
    nodePackages.yarn
  ];

  home.file = {
  };

  home.sessionVariables = {
    EDITOR = "nvim";
    SUDO_EDITOR="nvim";

    FZF_DEFAULT_OPTS="--reverse";
    LD_LIBRARY_PATH="$NIX_LD_LIBRARY_PATH";
    NIXOS_OZONE_WL = "1";
    PATH="$PATH:$HOME/.local/bin:$HOME/.npm-global/bin";
  };

  programs.home-manager.enable = true;
}
