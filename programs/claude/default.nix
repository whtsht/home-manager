{ config, ... }:

{
  home.file = {
    ".claude/CLAUDE.md" = {
      source = builtins.path { path = ./CLAUDE.md; name = "claude-readme"; };
    };
    ".claude/settings.json" = {
      source = builtins.path { path = ./settings.json; name = "claude-settings"; };
    };
    ".claude/commands" = {
      source = builtins.path { path = ./commands; name = "claude-commands"; };
    };
  };
}
