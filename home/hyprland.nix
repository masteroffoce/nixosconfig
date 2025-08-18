{ config, pkgs, ... }: {

  wayland.windowManager.hyprland = {
    enable = true;

    settings = {
      animations = {
        enabled = "no";
      };

      monitor = ",prefered,auto,1";

      "$terminal" = "kitty";
      "$menu" = "wofi --show drun";

      "exec-once" = "cd ~/working_projects/daily_images; ./run.sh";

      env = "HYPRCURSOR_SIZE,24";

      general = {
        "gaps_in" = 5;
        "gaps_out" = 20;

        "border_size" = 2;
        
        "col.active_border" = "rgba(33ccffee) rgba(00ff99ee) 45deg";
        "col.inactive_border" = "rgba(595959aa)";

        "resize_on_border" = "false";
        "allow_tearing" = "false";

        "layout" = "master";
      };

    };

  };

}
