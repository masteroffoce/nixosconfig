{ config, pkgs, ... }: {
  home.username = "calcium";
  home.homeDirectory = "/home/calcium";

  home.stateVersion = "24.05";

  programs.home-manager.enable = true;

  xdg.configFile."hypr/hyprland.conf".source = ./hypr/hyprland.conf;
  xdg.configFile."hypr/shaders/test1.glsl".source = ./hypr/shaders/test1.glsl;
  xdg.configFile."nvim".source = ./nvim;

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
    erlang
    python3
    unzip
    hyprpaper
    neovim
    file
    ripgrep
  ];
}
