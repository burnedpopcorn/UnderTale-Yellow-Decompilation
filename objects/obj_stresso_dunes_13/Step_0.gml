if (fade_in == true)
{
    image_speed = 0;
    
    if (image_alpha < 1)
    {
        image_alpha += 0.2;
    }
    else
    {
        fade_in = false;
        vspeed = 3;
        sprite_index = spr_stresswalk;
        obj_dunes_13_elevator.image_speed = -0.3;
        audio_play_sound(snd_elevator_open, 1, 0);
    }
    
    exit;
}
else
{
    image_speed = 0.4;
    
    if (y > 185)
    {
        vspeed = 0;
        hspeed = 10;
        
        if (image_speed < 1)
            image_speed += 0.1;
        
        if (x > 320)
        {
            global.dunes_flag[4] = 3;
            scr_cutscene_end();
            instance_destroy();
            instance_destroy(obj_npc_clover_dunes_13);
            obj_pl.image_alpha = 1;
            obj_pl.direction = 90;
        }
    }
}
