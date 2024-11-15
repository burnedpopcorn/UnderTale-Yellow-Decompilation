if (instance_exists(obj_heart_battle_fighting_parent))
{
    x = obj_heart_battle_fighting_parent.x;
    y = obj_heart_battle_fighting_parent.y;
}

if (image_index == 7)
{
    global.current_pp_self += 1;
    global.current_pp_self = clamp(global.current_pp_self, 0, 1);
    instance_create(x, y, obj_heart_battle_effect_glow);
    audio_play_sound(snd_equip_armor, 1, 0);
}

if (fade_out == true)
{
    image_alpha -= 0.15;
    
    if (image_alpha < 0)
    {
        if (!alarm[0])
            alarm[0] = 30;
    }
}
