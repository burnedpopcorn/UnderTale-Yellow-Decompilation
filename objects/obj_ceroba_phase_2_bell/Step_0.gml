var dir;

if (live_call())
    return global.live_result;

image_angle = sin(current_time / 300) * 30;

if (fade_in > 0 && image_alpha >= 0.5)
{
    if (scr_enemy_attack_bullet_hit())
    {
        image_xscale = 1.2;
        image_yscale = 1.2;
        audio_play_sound(snd_ceroba_shield_bell_hit, 1, 0);
        obj_ceroba_phase_2_shield.hit_show_timer = 30;
    }
}

if (bullet_destroy_self == true)
{
    instance_create_depth(x, y, depth - 100, obj_attack_ceroba_bell_ring_white);
    instance_create_depth(x, y, depth - 101, obj_ceroba_phase_2_bell_destroy);
    instance_destroy();
    exit;
}

if (fade_in == 1)
{
    if (image_alpha < 1)
        image_alpha += 0.2;
    else
        fade_in = 2;
}
else if (fade_in == 2)
{
    if (global.enemy_attacking == true)
        image_alpha = lerp(image_alpha, 1, 0.15);
    else
        image_alpha = lerp(image_alpha, 0, 0.15);
}

image_xscale = lerp(image_xscale, 1, 0.15);
image_yscale = image_xscale;
x_offset_base = obj_ceroba_phase_2_shield.x - obj_ceroba_phase_2_shield.xstart;

if (can_move == true)
{
    dir = point_direction(x_offset, y, target_position[0], target_position[1]);
    
    if (point_distance(x_offset, y, target_position[0], target_position[1]) > move_speed)
    {
        x_offset += lengthdir_x(move_speed, dir);
        y += lengthdir_y(move_speed, dir);
    }
    else
    {
        x_offset = target_position[0];
        y = target_position[1];
        can_move = false;
    }
}

x = xstart + x_offset_base + (x_offset - xstart);
