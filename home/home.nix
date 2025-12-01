{ config, pkgs, ... }: {

  imports = [
    (import ./hyprland.nix { inherit config pkgs; })
  ];

  home.username = "calcium";
  home.homeDirectory = "/home/calcium";

  home.stateVersion = "24.05";

  programs.home-manager.enable = true;

  fonts.fontconfig.enable = true;

  xdg.configFile."hypr/shaders/test1.glsl".source = ./hypr/shaders/test1.glsl;
  #xdg.configFile.".config/.tmux.conf".source = ./.config/.tmux.conf;

  home.file.".config/kitty/kitty.conf".source = ./.config/kitty/kitty.conf;
  home.file.".bashrc".source = ./.bashrc;
  home.file.".bash_profile".source = ./.bash_profile;

  nixpkgs.config.allowUnfree = true;

  home.packages = with pkgs; [
    kitty
    neofetch 
    git
    cmatrix
    firefox
    waybar
    openssh
    flatpak
    erlang
    python3
    wget
    wofi
    qutebrowser
    librewolf
    superTuxKart
    unciv
    nerd-fonts.dejavu-sans-mono
    dejavu_fonts
    wireplumber
    tmux
    gdb
    qemu
    tinty
    bemenu
    mustache-go
    helix
    nushell
    ];

}
