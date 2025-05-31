{ config, pkgs, ... }:

{
  home.username = "toma";
  home.homeDirectory = "/home/toma";

  home.stateVersion = "25.05";

  imports = [
    ./programs
  ];

  home.packages = with pkgs; [
    # Development Tools
    docker
    gh
    direnv
    awscli2
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
    podman
    duckdb
    cmake

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
    python314
    go
    wabt
    wasmer
    yaml-language-server
    wasmtime

    # Misc Tools
    texliveMedium
    trash-cli
    yt-dlp
    marp-cli
    linuxKernel.packages.linux_zen.perf
  ];

  home.sessionVariables = {
    EDITOR = "nvim";
    SUDO_EDITOR="nvim";

    FZF_DEFAULT_OPTS="--reverse";
    LD_LIBRARY_PATH="$NIX_LD_LIBRARY_PATH";
    NIXOS_OZONE_WL = "1";
    PATH="$PATH:$HOME/.local/bin:$HOME/.npm-global/bin:$HOME/.cargo/bin";
  };

  programs.home-manager.enable = true;
}
