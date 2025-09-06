{ config, pkgs, ... }: {

  wayland.windowManager.hyprland = {
    enable = true;

    settings = {

      monitor = ",prefered,auto,1";

      "$terminal" = "kitty";
      "$menu" = "wofi --show drun";

      #"exec-once" = "cd ~/working_projects/daily_images; ./run.sh";

      env = "HYPRCURSOR_SIZE,24";

      general = {
        "gaps_in" = 5;
        "gaps_out" = 20;

        "border_size" = 2;
        
        "col.active_border" = "rgba(33ccffee) rgba(00ff99ee) 45deg";
        "col.inactive_border" = "rgba(595959aa)";

        "resize_on_border" = "false";
        "allow_tearing" = "false";

        "layout" = "dwindle";
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
              color = "rgba(1a1a1aee)";
          };
          blur = {
              enabled = true;
              size = 3;
              passes = 1;

              vibrancy = 0.1696;
          };
      };

      
      animations = {
          enabled = "yes, please :)";

          bezier = [ "easeOutQuint,0.23,1,0.32,1"
                     "easeInOutCubic,0.65,0.05,0.36,1"
                     "linear,0,0,1,1"
                     "almostLinear,0.5,0.5,0.75,1.0"
                     "quick,0.15,0,0.1,1"
                     ];

          animation = [ "global, 1, 10, default"
                        "border, 1, 5.39, easeOutQuint"
                        "windows, 1, 4.79, easeOutQuint"
                        "windowsIn, 1, 4.1, easeOutQuint, popin 87%"
                        "windowsOut, 1, 1.49, linear, popin 87%"
                        "fadeIn, 1, 1.73, almostLinear"
                        "fadeOut, 1, 1.46, almostLinear"
                        "fade, 1, 3.03, quick"
                        "layers, 1, 3.81, easeOutQuint"
                        "layersIn, 1, 4, easeOutQuint, fade"
                        "layersOut, 1, 1.5, linear, fade"
                        "fadeLayersIn, 1, 1.79, almostLinear"
                        "fadeLayersOut, 1, 1.39, almostLinear"
                        "workspaces, 1, 1.94, almostLinear, fade"
                        "workspacesIn, 1, 1.21, almostLinear, fade"
                        "workspacesOut, 1, 1.94, almostLinear, fade"
                        ];
      };

      windowrule = "float, class:floating";

      dwindle = {
        pseudotile = true;
        preserve_split = true;
      };

      master = {
        new_status = "master";
      };

      misc = {
        force_default_wallpaper = 2;
      };

      input = {
        repeat_delay = 200;
        sensitivity = 0;
      };
      
      bind = [
        "SUPER, Q, exec, $terminal"
        "SUPER, C, killactive"
        "SUPER, B, exit"
        "SUPER, V, togglefloating"
        "SUPER, R, exec, $menu"
        "SUPER, P, pseudo"
        "SUPER, J, togglesplit"
        "SUPER, G, exec, librewolf"
        "SUPER, F, fullscreen"
        "SUPER, T, exec, ~/active_projects/pion/run"

        "SUPER, N, movefocus, l"
        "SUPER, E, movefocus, d"
        "SUPER, I, movefocus, u"
        "SUPER, O, movefocus, r"

        "SUPER, 1, workspace, 1"
        "SUPER, 2, workspace, 2"
        "SUPER, 3, workspace, 3"
        "SUPER, 4, workspace, 4"
        "SUPER, 5, workspace, 5"
        "SUPER, 6, workspace, 6"
        "SUPER, 7, workspace, 7"
        "SUPER, 8, workspace, 8"
        "SUPER, 9, workspace, 9"
        "SUPER, 0, workspace, 10"

        "SUPER SHIFT, 1, movetoworkspace, 1"
        "SUPER SHIFT, 2, movetoworkspace, 2"
        "SUPER SHIFT, 3, movetoworkspace, 3"
        "SUPER SHIFT, 4, movetoworkspace, 4"
        "SUPER SHIFT, 5, movetoworkspace, 5"
        "SUPER SHIFT, 6, movetoworkspace, 6"
        "SUPER SHIFT, 7, movetoworkspace, 7"
        "SUPER SHIFT, 8, movetoworkspace, 8"
        "SUPER SHIFT, 9, movetoworkspace, 9"
        "SUPER SHIFT, 0, movetoworkspace, 10"

        "SUPER, S, togglespecialworkspace, magic"
        "SUPER SHIFT, S, movetoworkspace, special::magic"

        "SUPER, mouse:272, movewindow"
        #"SUPER, mouse:273, resizewindow"

      ];





    };

  };

}
