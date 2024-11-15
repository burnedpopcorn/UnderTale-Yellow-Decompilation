if (live_call())
    return global.live_result;

x = obj_axis_npc.x;
y = obj_axis_npc.y;

switch (obj_axis_npc.npc_direction)
{
    case "right":
        image_angle = 0;
        break;
    
    case "up":
        image_angle = 90;
        break;
    
    case "left":
        image_angle = 180;
        break;
    
    case "down":
        image_angle = 270;
        break;
}

if (place_meeting(x, y, obj_pl) && caught_noloop == false && instance_exists(obj_factory_03_minigame))
{
    if (delay_current > 0)
    {
        delay_current--;
    }
    else
    {
        audio_play_sound(snd_encounter, 1, 0);
        instance_create_depth(obj_axis_npc.x, obj_axis_npc.y - 28, obj_axis_npc.depth - 1, obj_cutscene_ex);
        scr_cutscene_start();
        instance_destroy(obj_factory_03_minigame);
        
        with (obj_axis_npc)
        {
            actor_speed = 0;
            can_walk = false;
            npc_arrived = true;
        }
        
        caught_noloop = true;
        alarm[0] = 30;
    }
}
else
{
    delay_current = delay_max;
}

if (fade_out == true && !global.dialogue_open)
{
    draw_alpha += 0.1;
    
    if (draw_alpha >= 1)
    {
        if (!alarm[1])
            alarm[1] = 15;
    }
}

if (active == true)
{
    audio_emitter_position(flashlight_emitter, x, y, 0);
    audio_listener_position(obj_pl.x, obj_pl.y, 0);
    
    if (!audio_is_playing(snd_axis_flashlight))
        audio_play_sound_on(flashlight_emitter, snd_axis_flashlight, true, 1);
}
else if (audio_is_playing(snd_axis_flashlight))
{
    audio_stop_sound(snd_axis_flashlight);
}
