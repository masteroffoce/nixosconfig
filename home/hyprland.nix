{ config, pkgs, ... }: {

  wayland.windowManager.hyprland = {
    enable = true;

    settings = {
      animations = {
        enabled = "no";
      };

      monitor = ",prefered,auto,1";

      "$terminal" = kitty
      "$menu" = wofi --show drun

      "exec-once" = "cd ~/working_projects/daily_images; ./run.sh"

      env = "HYPRCURSOR_SIZE,24"
    };

  };

}
