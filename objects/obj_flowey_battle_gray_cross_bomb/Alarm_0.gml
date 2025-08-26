audio_play_sound(snd_bullet_warning, 1, 0);
image_xscale = 1.25;
image_yscale = 1.25;
warning_number -= 1;

if (warning_number < 0)
{
    instance_destroy();
    audio_play_sound(snd_undertale_explosion, 1, 0);
    instance_create_depth(x, y, -99, obj_flowey_battle_gray_cross_bomb_smoke);
    var expl1 = instance_create_depth(x, y, -100, obj_flowey_battle_gray_cross_bomb_explosion);
    var expl2 = instance_create_depth(x, y, -100, obj_flowey_battle_gray_cross_bomb_explosion);
    
    if (image_index == 0)
    {
        expl1.image_angle = 0;
        expl2.image_angle = 90;
    }
    else
    {
        expl1.image_angle = 45;
        expl2.image_angle = 135;
    }
}

alarm[0] = 20;
