if (live_call())
    return global.live_result;

destroy_self = false;
shot_count = 7;
shot_count_max = 7;
current_bell = -4;
last_bell = -4;
bullet_spawn_direction = irandom_range(0, 360);
bullet_spawn_direction_inc = 20;
alarm[0] = 20;
alarm[1] = 330;
alarm[2] = 30;
shield_instance = 404;
bell_position[0] = [shield_instance.xstart + 80, shield_instance.y - 20];
bell_position[1] = [shield_instance.xstart, shield_instance.y - 100];
bell_position[2] = [shield_instance.xstart - 80, shield_instance.y - 20];
bell_position[3] = [shield_instance.xstart, shield_instance.y + 70];
shield_x_offset = obj_ceroba_phase_2_shield.x - obj_ceroba_body_pacifist_phase_2.x;
sin_deg = 0;
