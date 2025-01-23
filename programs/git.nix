{ config, pkgs, ... }:

{
  programs.git = {
    enable = true;
    userName = "Ryan Malonzo";
    userEmail = "64932650+ryanmalonzo@users.noreply.github.com";
    signing = {
      key = "/Users/ren/.ssh/git.pub";
      signByDefault = true;
    };
    extraConfig = {
      init.defaultBranch = "main";
      gpg.format = "ssh";
      pull.rebase = true;
    };
  };
} 