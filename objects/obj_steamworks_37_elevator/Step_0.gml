switch (scene)
{
    case 0:
        if (scr_interact() && keyboard_multicheck_pressed(vk_nokey))
        {
            image_speed = 1;
            scr_cutscene_start();
            cutscene_advance();
        }
        
        break;
    
    case 1:
        if (image_index > (image_number - 1))
        {
            image_speed = 0;
            image_index = image_number - 1;
            cutscene_advance();
        }
        
        break;
    
    case 2:
        cutscene_wait(0.5);
        break;
    
    case 3:
        instance_create(obj_pl.x, obj_pl.y, obj_player_npc);
        cutscene_advance();
        break;
    
    case 4:
        cutscene_npc_walk(obj_player_npc, 170, 120, 2, "x", "up");
        
        if (obj_pl.y < 130)
            player_fade_out = true;
        
        break;
    
    case 5:
        cutscene_change_room(rm_steamworks_38, 160, 220, 0.1);
        break;
}

if (player_fade_out == true)
{
    if (obj_pl.image_alpha > 0)
        obj_pl.image_alpha -= 0.2;
}

if (image_index == 0 && image_speed == 1)
{
    if (!audio_is_playing(snd_sliding_door_open_steamworks))
        audio_play_sound(snd_sliding_door_open_steamworks, 1, 0);
}
