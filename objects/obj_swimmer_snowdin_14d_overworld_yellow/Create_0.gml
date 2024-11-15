if (global.geno_complete[2] || global.player_can_travel)
    instance_destroy();

event_inherited();
image_speed = 0.3;
swimmer_hsp = -1.5;
max_swimmer_hsp = 1.5;
swimmer_dir = "left";
swimmer_accel = 0.25;
