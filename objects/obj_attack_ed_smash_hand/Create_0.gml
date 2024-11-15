damage_number = scr_determine_damage_number_enemy("ed", "void", "void");
image_speed = 0;
image_alpha = 0;
event_perform(ev_alarm, 0);
attack_rocks_spawned = false;
depth = -99999;

if (x < 320)
    image_xscale = -1;
