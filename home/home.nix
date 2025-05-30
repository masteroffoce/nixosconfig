{ config, pkgs, ... }: {
  home.username = "calcium";
  home.homeDirectory = "/home/calcium";

  home.stateVersion = "24.05";

  programs.home-manager.enable = true;

  xdg.configFile."hypr/hyprland.conf".source = ./hypr/hyprland.conf;
  xdg.configFile."kmonad/test.kbd".source = ./kmonad/test.kbd;

  home.packages = with pkgs; [
    kitty
    neofetch 
    git
    vim
    cmatrix
    firefox
    waybar
  ];
}

