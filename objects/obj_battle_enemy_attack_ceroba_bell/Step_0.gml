var battle_box;

if (live_call())
    return global.live_result;

image_alpha += 0.2;
battle_box = 3154;

if (bbox_bottom >= battle_box.bbox_bottom && !bounce_noloop)
{
    audio_play_sound(choose(snd_mart_impact_1, snd_mart_impact_2, snd_mart_impact_3), 1, 0);
    audio_play_sound(snd_ceroba_attack_bell_ring, 1, 0);
    vspeed = -bounce_speed;
    bounce_noloop = 1;
    image_angle_rot = sign(hspeed) * -image_angle_rot_max;
}

if (bounce_noloop == 1)
{
    if (vspeed >= 0)
    {
        hspeed = 0;
        gravity = 0;
        vspeed = 0;
        image_angle_rot = 0;
        image_index = 0;
        sprite_index = spr_ceroba_attack_bell_explosion;
        audio_play_sound(snd_ceroba_attack_bell_explode, 1, 0);
        bounce_noloop = 2;
    }
}

image_angle_rot = lerp(image_angle_rot, 0, 0.1);
image_angle += image_angle_rot;
