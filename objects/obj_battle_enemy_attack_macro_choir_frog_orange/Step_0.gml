if (live_call())
    return global.live_result;

if (spawner == -4 || !instance_exists(spawner))
    exit;

if (frog_jump == true)
{
    var frog_sound = audio_play_sound(snd_tinyfroggit, 1, 0);
    audio_sound_pitch(frog_sound, irandom_range(8, 12) / 10);
    sprite_index = spr_bigfrog_jumpinbro;
    vsp = -5;
    frog_jump = false;
}

vsp += grav;

if ((y + vsp) >= spawner.bbox_top)
{
    while ((y + sign(vsp)) < spawner.bbox_top)
        y += sign(vsp);
    
    if (sprite_index == spr_bigfrog_jumpinbro)
        sprite_index = spr_bigfrog_chillinbro;
    
    vsp = 0;
}

y += vsp;
