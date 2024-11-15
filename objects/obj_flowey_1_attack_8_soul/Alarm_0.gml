if (live_call())
    return global.live_result;

if (soul_switch_treshold > 0)
{
    soul_switch_treshold -= 1;
}
else
{
    instance_create_depth(0, 0, -9999, obj_flowey_battle_screen_glitch);
    x = obj_heart_battle_fighting_parent.x;
    y = obj_heart_battle_fighting_parent.y;
    
    with (obj_heart_battle_fighting_parent)
    {
        x = other.xprevious;
        y = other.yprevious;
        vulnerable = false;
        alarm[0] = 10;
    }
    
    exit;
}

sprite_index = spr_heart_yellow_down;
audio_play_sound(snd_bullet_warning, 1, 0);
alarm[0] = 7;
alarm[1] = 3;
