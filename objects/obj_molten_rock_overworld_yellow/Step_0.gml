var maxSpd;

if (global.snowdin_flag[2] == 0)
    maxSpd = 0.8;
else
    maxSpd = 1.1;

if (shrink == 1)
{
    image_xscale -= lerp(0, image_xscale, 0.025);
    image_yscale -= lerp(0, image_yscale, 0.025);
    
    if (obj_puzzle_ice_cube_overworld_yellow.shrink == true)
    {
        if (global.snowdin_flag[2] == 0)
            y += 0.4;
        
        if (global.snowdin_flag[2] == 1)
            y += 0.25;
    }
    
    if (image_xscale < 0.3)
        instance_destroy();
}

if (obj_puzzle_controller_overworld_yellow.active == false)
{
    image_speed = 0;
    exit;
}

y += rollSpd;

if (sprite_index != spr_molten_rock_overworld_yellow || position_meeting(x, y + 3, obj_puzzle_ice_cube_overworld_yellow))
{
    rollSpd = 0;
    exit;
}

if (position_meeting(x, y + 3, obj_puzzle_ice_cube_overworld_yellow))
{
    shrink = 1;
    rollSpd = 0;
    canRoll = 0;
    audio_stop_sound(snd_rock_roll);
}

if (canRoll == 1)
{
    if (rollSpd < maxSpd)
        rollSpd += 0.02;
    
    if (!audio_is_playing(snd_rock_roll))
        audio_play_sound(snd_rock_roll, 1, 1);
}
else
{
    rollSpd = 0;
    
    if (shrink == 0 && instance_exists(obj_puzzle_ice_cube_overworld_yellow))
    {
        if (global.snowdin_flag[2] == 0)
            y = obj_puzzle_ice_cube_overworld_yellow.y - 28;
        
        if (global.snowdin_flag[2] == 1)
            y = obj_puzzle_ice_cube_overworld_yellow.y - 21;
    }
    
    audio_stop_sound(snd_rock_roll);
}

if (canAnimate == 1)
{
    if (rollSpd > 0)
        image_speed = rollSpd * 0.33;
}
else
{
    image_speed = 0;
}
