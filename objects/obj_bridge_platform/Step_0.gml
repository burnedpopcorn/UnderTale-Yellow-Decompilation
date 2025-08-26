with (other)
{
    if (global.snowdin_flag[11] == 1)
    {
        if (floor(image_index) == 2)
        {
            image_speed = 0;
            sprite_index = spr_bridge_platform_stand;
            
            with (instance_position(x, y, obj_bridge_chain))
            {
                image_index = 0;
                image_speed = 0;
            }
        }
        
        exit;
    }
    
    var index = floor(image_index);
    
    if (place_meeting(x, y, obj_pl) && fall == false)
    {
        if ((index < 4 || (index > 9 && index < 15)) && !obj_pl.is_sprinting)
        {
            exit;
        }
        else
        {
            global.cutscene = true;
            obj_pl.state = scr_frozen_state;
            instance_create(obj_pl.x, obj_pl.y, obj_clover_fall);
            fall = true;
            audio_play_sound(snd_fall2, 20, 0);
        }
    }
    
    if (fall == true)
        obj_pl.y += 4;
}
