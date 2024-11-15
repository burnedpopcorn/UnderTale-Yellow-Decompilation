if (shrink == true)
{
    image_xscale -= lerp(0, image_xscale, 0.015);
    image_yscale -= lerp(0, image_yscale, 0.015);
}

if (global.snowdin_flag[2] == 0)
{
    if (image_xscale < 0.85)
    {
        if (global.snowdin_flag[2] == 0)
        {
            obj_puzzle_water_meter_overworld_yellow.fill = 1;
            
            if (!instance_exists(part_drops_puzzle))
            {
                instance_create(231, 323, part_drops_puzzle);
                audio_play_sound(snd_water_fill, 1, 0);
            }
        }
    }
    
    if (image_xscale < 0.75)
    {
        global.snowdin_flag[2] = 1;
        shrink = false;
        active = false;
        obj_puzzle_controller_overworld_yellow.camera_end = true;
        audio_stop_sound(snd_puzzle_woodmove);
        instance_destroy(part_smoke_puzzle);
    }
}

if (image_xscale < 0.35)
{
    obj_puzzle_water_meter_overworld_yellow.fill = 2;
    
    if (!instance_exists(part_drops_puzzle))
    {
        instance_create(231, 323, part_drops_puzzle);
        audio_play_sound(snd_water_fill_2, 1, 0);
    }
}

if (image_xscale < 0.2)
{
    obj_puzzle_controller_overworld_yellow.camera_end = true;
    audio_stop_sound(snd_puzzle_woodmove);
    instance_destroy(part_smoke_puzzle);
    instance_destroy();
}

if (global.snowdin_flag[2] == 2)
    instance_destroy();
