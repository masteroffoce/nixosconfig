{ config, pkgs, ... }: {
  home.username = "calcium";
  home.homeDirectory = "/home/calcium";

  home.stateVersion = "24.05";

  programs.home-manager.enable = true;

  xdg.configFile."hypr/hyprland.conf".source = ./hypr/hyprland.conf;

  home.file.".bashrc".source = ./.bashrc;
  home.file.".bash_profile".source = ./.bash_profile;

  home.packages = with pkgs; [
    kitty
    neofetch 
    git
    vim
    cmatrix
    firefox
    waybar
    openssh
    flatpak
    ddcutil
  ];
}
