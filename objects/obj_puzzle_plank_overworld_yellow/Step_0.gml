scr_get_input();

if (obj_puzzle_controller_overworld_yellow.active == false)
{
    if (audio_is_playing(snd_puzzle_woodmove))
        audio_stop_sound(snd_puzzle_woodmove);
    
    exit;
}

if (global.right_key)
    moveDir = "right";
else if (global.left_key)
    moveDir = "left";
else
    moveDir = "null";

switch (moveDir)
{
    case "right":
        if (x < maxX)
            x += 1;
        
        obj_cog_overworld_yellow.image_speed = -0.33;
        break;
    
    case "left":
        if (x > minX)
            x -= 1;
        
        obj_cog_overworld_yellow.image_speed = -0.33;
        break;
    
    case "null":
        obj_cog_overworld_yellow.image_speed = 0;
        break;
}

if (moveDir != "null")
{
    if (!audio_is_playing(snd_puzzle_woodmove))
        audio_play_sound(snd_puzzle_woodmove, 1, 1);
}
else if (audio_is_playing(snd_puzzle_woodmove))
{
    audio_stop_sound(snd_puzzle_woodmove);
}
