{ config, pkgs, ... }: {
  home.username = "calcium";
  home.homeDirectory = "/home/calcium";

  home.stateVersion = "24.05";

  programs.home-manager.enable = true;

  home.packages = with pkgs; [
    neofetch 
    git
    vim
    cmatrix
  ];
}

