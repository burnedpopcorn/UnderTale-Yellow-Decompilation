if (live_call())
    return global.live_result;

if (abs(320 - x) <= 10)
{
    instance_destroy();
    
    if (!instance_exists(obj_flowey_battle_gray_vine_grab))
    {
        obj_heart_battle_fighting_parent.y = 700;
        obj_heart_battle_fighting_parent.moveable = false;
        obj_heart_battle_fighting_parent.can_shoot = false;
        instance_create_depth(320, y, -100, obj_flowey_battle_gray_vine_grab);
        audio_play_sound(snd_undertale_impact, 1, 0);
        scr_screenshake_battle(5, 2);
    }
}

y = obj_heart_battle_fighting_parent.y;

if (place_meeting(x, y, obj_heart_battle_fighting_parent) && !soul_grab_noloop)
{
    audio_play_sound(snd_switch, 1, 0);
    obj_heart_battle_fighting_parent.moveable = false;
    soul_grab_noloop = true;
}

if (soul_grab_noloop == true)
    obj_heart_battle_fighting_parent.x = x + 8;
