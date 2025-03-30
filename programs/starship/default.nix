{ config, ... }:

{
  home.file = {
    ".config/starship.toml" = {
      source = builtins.path { path = ./starship.toml; name = "starship-config"; };
    };
  };
}
