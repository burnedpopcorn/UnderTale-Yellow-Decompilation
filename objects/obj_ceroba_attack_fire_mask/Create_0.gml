if (live_call())
    return global.live_result;

damage_number = scr_determine_damage_number_enemy("ceroba", "void", "void");
image_alpha = 0;
scene = 0;
cutscene_timer = 0;
fireball_array[0] = 0;
fireball_dir[0] = 0;
fireball_current = 0;
dir_offset = 0;
multiplier = 0;
x_target = 0;
y_target = 0;
spin_speed = 0;
spin_speed_max = 5;
move_speed = 0;

switch (global.hotland_flag[2])
{
    case 2:
        move_speed_max = 8;
        break;
    
    case 3:
        move_speed_max = 9;
        break;
}

attack_count = 3;
bullet_hit_points = 2;
bullet_hit_draw_timer = 0;
bullet_destroy_self = false;
