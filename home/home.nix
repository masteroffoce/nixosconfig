{ config, pkgs, ... }: {
  home.username = "calcium";
  home.homeDirectory = "/home/calcium";

  home.stateVersion = "24.05";

  programs.home-manager.enable = true;

  xdg.configFile."hypr/hyprland.conf".source = ./hypr/hyprland.conf;
  xdg.configFile."kmonad/test.kbd".source = ./kmonad/test.kbd;

  programs.kmonad = {
    enable = true;
    keyboards = {
      myKmonadOutput = {
        device = "usb-Keychron_Keychron_Link-if02-event-kbd";
        config = builtins.readFile ~/.config/kmonad/test.kbd
      };
    };
  };

  home.packages = with pkgs; [
    kitty
    neofetch 
    git
    vim
    cmatrix
    firefox
    waybar
    kmonad
  ];
}
