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
    awscli
    ssm-session-manager-plugin
    ecsk
    zip
    unzip
    jq
    delta
    eza
    tree
    lazygit
    zoxide
    ollama-rocm

    # Programming Language
    gcc
    rustup
    nodejs
    nodePackages.yarn
    bun
    typescript-language-server
    deno
    ruby
    clang-tools

    # Misc Tools
    trash-cli
    yt-dlp
    marp-cli
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
