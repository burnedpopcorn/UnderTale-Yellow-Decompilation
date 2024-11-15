if (live_call())
    return global.live_result;

damage_number = scr_determine_damage_number_enemy("macro froggit", "void", "void");
sprite_index = choose(spr_bigfrog_eightbullet, spr_bigfrog_eights, spr_quarter_bullet);
vspeed = -3;
sin_deg = 0;
h_variation = 3;
