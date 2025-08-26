event_inherited();

if (hp_self <= 0)
{
    if (jump_noloop == false)
    {
        path_end();
        audio_play_sound(snd_monster_damage_hit_critical, 1, 0);
        jump_noloop = true;
        vspeed = 4;
        gravity = 0.5;
        image_speed = 0;
    }
    
    image_alpha -= 0.04;
    
    if (image_alpha <= 0)
        instance_destroy();
}

if (live_call())
    return global.live_result;

switch (path_index)
{
    case pt_flowey_battle_phase_2_paper_right:
        image_angle = direction + 90;
        break;
    
    case pt_flowey_battle_phase_2_paper_right_top:
        image_angle = direction - 90;
        break;
    
    case pt_flowey_battle_phase_2_paper_left:
        image_angle = direction - 90;
        break;
    
    case pt_flowey_battle_phase_2_paper_left_top:
        image_angle = direction + 90;
        break;
}

path_speed = 4;

if (path_position > 0.5)
{
    with (obj_flowey_battle_phase_2_paper_thorn)
    {
        if (path_index == other.path_index)
        {
            if (path_position > 0.9)
            {
                var old_pos = other.path_position;
                other.path_position = path_position;
                path_position = old_pos;
            }
        }
    }
}
