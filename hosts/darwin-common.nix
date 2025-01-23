{ pkgs, ... }: {
  # Enable basic system integration
  programs.zsh.enable = true;
  
  # Basic system settings
  system = {
    stateVersion = 4; # This should match your Darwin version
    defaults = {
      NSGlobalDomain = {
        AppleShowAllExtensions = true;
        InitialKeyRepeat = 15;
        KeyRepeat = 2;
      };
    };
  };

  # Enable Touch ID for sudo
  security.pam.enableSudoTouchIdAuth = true;
} 