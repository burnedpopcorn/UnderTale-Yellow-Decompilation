alarm[0] = 45;
image_speed = 0.2;
arc_controls_open = false;
arc_logos_alpha = 1;
arc_draw_menu_options = false;
arc_cursor_pos = 1;
arc_title_x = 320;
end_game = false;
overlay_alpha = 1;

if (global.last_room_overworld == room)
    overlay_alpha = 0;

scene = 0;
global.mew_endless_unlocked = false;
instance_destroy(obj_transition);
scr_cutscene_start();
obj_pl.image_alpha = 0;
