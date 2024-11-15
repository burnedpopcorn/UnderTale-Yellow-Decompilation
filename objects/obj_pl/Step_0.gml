if (autowalk_direction_no_loop == false)
{
    switch (global.flag[28])
    {
        case 1:
            switch (room)
            {
                case rm_dalvshouse:
                    switch (global.lastroom)
                    {
                        case "rm_dalvroomhall":
                            with (obj_dalv2)
                                instance_destroy();
                            
                            autowalk_direction = "left";
                            state = scr_autowalk_state;
                            alarm[1] = 30;
                            break;
                        
                        default:
                            autowalk_direction = "nothing";
                    }
                    
                    break;
                
                case rm_dalvroomhall:
                    switch (global.lastroom)
                    {
                        case "rm_dalvshouse":
                            autowalk_direction = "right";
                            state = scr_autowalk_state;
                            alarm[1] = 15;
                            break;
                        
                        default:
                            autowalk_direction = "nothing";
                    }
                    
                    break;
                
                case rm_dalvhallway:
                    switch (global.lastroom)
                    {
                        default:
                            autowalk_direction = "nothing";
                    }
                    
                    break;
                
                case rm_dalvExit:
                    switch (global.lastroom)
                    {
                        default:
                            autowalk_direction = "nothing";
                    }
                    
                    break;
                
                default:
                    autowalk_direction = "nothing";
            }
            
            break;
        
        default:
            autowalk_direction = "nothing";
    }
    
    autowalk_direction_no_loop = true;
    get_last_room_no_loop = false;
}

depth = -y;
script_execute(state);

if (global.cutscene == true && is_sprinting == true)
    is_sprinting = false;

if (clover_walk_backwards == true)
{
    if ((autowalk_direction == "right" && direction == 0) || (autowalk_direction == "up" && direction == 90) || (autowalk_direction == "left" && direction == 180) || (autowalk_direction == "down" && direction == 270))
        direction += 180;
}

scr_determine_player_sprites();

if (DEBUG_DANCE)
{
    image_speed = 1;
    sprite_index = spr_pl_dance;
    exit;
}

switch (direction)
{
    case 0:
        sprite_index = rsprite;
        break;
    
    case 90:
        sprite_index = usprite;
        break;
    
    case 180:
        sprite_index = lsprite;
        break;
    
    case 270:
        sprite_index = dsprite;
        break;
}

if (sliding == true)
    image_index = 1;

if (room == rm_dalvhallway)
{
    if (player_mode == "DalvExit")
    {
        image_alpha = 0;
        
        if (!instance_exists(obj_pl_follow))
            instance_create(x, y, obj_pl_follow);
    }
    
    if (player_mode == "Normal")
    {
        if (room != rm_darkruins_01)
            image_alpha = 1;
    }
}
