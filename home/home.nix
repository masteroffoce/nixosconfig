{ config, pkgs, ... }: {
  home.username = "myusername";
  home.homeDirectory = "/home/myusername";
  programs.home-manager.enable = true;
  home.packages = with pkgs; [ neofetch ];
}

