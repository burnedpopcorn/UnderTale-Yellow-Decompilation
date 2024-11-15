if (live_call())
    return global.live_result;

damage_number = scr_determine_damage_number_enemy("macro froggit", "void", "void");
grav = 0.7;
battle_box = 3154;
vsp = 0;
hsp = 0;
hsp_max = 8 * choose(-1, 1);
floored = false;
run_switch_count = 2;
state = "idle";
state_timer = 15;

if (hsp_max > 0)
    image_xscale = -1;
else if (hsp_max < 0)
    image_xscale = 1;

attack_timer = 300;
