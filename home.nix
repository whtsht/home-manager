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
    gh
    direnv
    trash-cli
    awscli
    ssm-session-manager-plugin
    ecsk
    zip
    unzip
    jq
    delta
    claude-code
    tree
    lazygit
    zoxide
    ollama-rocm

    # Programming Language
    rustup
    nodejs
    bun
    nodePackages.yarn
    gcc
    ruby

    # Misc Tools
    yt-dlp
  ];

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
