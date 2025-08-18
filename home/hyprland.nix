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


      decoration = {
          rounding = 10;
          rounding_power = 2;
          active_opacity = 1.0;
          inactive_opacity = 1.0;

          shadow = {
              enabled = true;
              range = 4;
              render_power = 3;
              color = rgba(1a1a1aee);
          };
          blur = {
              enabled = true;
              size = 3;
              passes = 1;

              vibrancy = 0.1696;
          };
      };

    };

  };

}
