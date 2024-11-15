if (live_call())
    return global.live_result;

if (hp_self > 0)
{
    if (other == collider_id)
        exit;
    
    audio_play_sound(snd_arc_hit, 1, 0);
    hit_flash = true;
    
    if (other.object_index == obj_heart_yellow_shot_big)
    {
        collider_id = other;
        hp_self -= 1;
        alarm[1] = 5;
    }
    else
    {
        instance_create_depth(other.x, other.bbox_top, -999, obj_heart_yellow_shot_destroy);
        instance_destroy(other);
        hp_self -= 1;
    }
    
    alarm[0] = 3;
    shake_strength = 4;
}
