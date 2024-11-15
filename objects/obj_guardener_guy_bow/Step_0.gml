var xx, yy, point_dir, item, shoot_sound;

if (live_call())
    return global.live_result;

xx = obj_heart_battle_fighting_parent.x;
yy = obj_heart_battle_fighting_parent.y - 10;
point_dir = point_direction(x, y, xx, yy);

if (robot_parent != -4)
{
    switch (robot_parent.object_index)
    {
        case obj_guardener_guy_a_noarms:
            x = robot_parent.x - 3;
            y = robot_parent.y - 15;
            break;
        
        case obj_guardener_guy_b_noarms:
            x = robot_parent.x + 8;
            y = robot_parent.y - 16;
            break;
    }
}

direction -= (angle_difference(direction, point_dir) * 0.3);
image_angle = direction;

if (!can_shoot)
    exit;

if (image_speed == 0)
{
    if (shoot_delay > 0)
    {
        shoot_delay--;
    }
    else
    {
        sprite_index = spr_guardener_guy_bow_release;
        image_index = 0;
        image_speed = 1;
        
        if (shoot_noloop == false)
        {
            item = instance_create_depth(x, y, depth, obj_battle_enemy_attack_guardener_arrow);
            item.direction = direction;
            item.speed = 6;
            shoot_noloop = true;
            audio_play_sound(snd_yellow_soul_dash, 1, 0);
            audio_play_sound(snd_undertale_swoosh, 1, 0);
            shoot_sound = audio_play_sound(snd_undertale_swoosh, 1, 0);
            audio_sound_gain(shoot_sound, 1, 0.5);
        }
    }
}

if (image_index >= (image_number - 1) && sprite_index == spr_guardener_guy_bow_release)
{
    sprite_index = spr_guardener_guy_bow;
    image_speed = 1;
    image_index = 0;
    shoot_noloop = false;
    audio_play_sound(snd_starlo_rope_strain, 1, 0);
}
