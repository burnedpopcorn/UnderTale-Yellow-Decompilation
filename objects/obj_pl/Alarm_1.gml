if (instance_exists(obj_postgame_walk_blocker) || instance_exists(obj_steam_walk_blocker) || instance_exists(obj_dunes_29_geno_blocker))
{
    autowalk_direction = "nothing";
    state = scr_normal_state;
    exit;
}

switch (global.flag[28])
{
    case 1:
        if (instance_exists(obj_dalv2))
        {
            if (obj_dalv2.dalv_talk_waiter > 0)
            {
                clover_walk_backwards = false;
                autowalk_direction = "nothing";
                state = scr_frozen_state;
                direction = 90;
                exit;
            }
        }
        
        if (instance_exists(obj_doorway_blocker_dalvshouse))
        {
            if (obj_doorway_blocker_dalvshouse.waiter > 0)
            {
                clover_walk_backwards = false;
                autowalk_direction = "nothing";
                state = scr_frozen_state;
                direction = 90;
                exit;
            }
        }
        
        if (instance_exists(obj_doorway_blocker_dalvsroom))
        {
            if (obj_doorway_blocker_dalvsroom.waiter > 0)
            {
                clover_walk_backwards = false;
                autowalk_direction = "nothing";
                state = scr_frozen_state;
                direction = 90;
                exit;
            }
        }
        
        switch (room)
        {
            case rm_dalvshouse:
                switch (global.lastroom)
                {
                    case "rm_dalvroomhall":
                        instance_create(335, 110, obj_dalv2);
                        
                        with (obj_dalv2)
                        {
                            image_alpha = 1;
                            direction = 180;
                            path_speed = 3;
                        }
                        
                        autowalk_direction = "nothing";
                        state = scr_frozen_state;
                        obj_dalv2.alarm[0] = 30;
                        break;
                    
                    case "rm_dalvhallway":
                        autowalk_direction = "nothing";
                        state = scr_normal_state;
                        break;
                    
                    default:
                        autowalk_direction = "nothing";
                }
                
                break;
            
            case rm_dalvroomhall:
                switch (global.lastroom)
                {
                    case "rm_dalvshouse":
                        instance_create(-20, 140, obj_dalv2);
                        
                        with (obj_dalv2)
                        {
                            image_alpha = 1;
                            direction = 0;
                            path_speed = 3;
                        }
                        
                        autowalk_direction = "nothing";
                        state = scr_frozen_state;
                        obj_dalv2.alarm[0] = 30;
                        break;
                    
                    case "rm_dalvsroom":
                        autowalk_direction = "nothing";
                        state = scr_normal_state;
                        break;
                }
                
                break;
            
            case rm_dalvExit_pacifist:
                if (autowalk_direction == "left")
                {
                    clover_walk_backwards = false;
                    direction = 0;
                }
                else if (autowalk_direction == "right")
                {
                    direction = 90;
                }
                
                autowalk_direction = "nothing";
                state = scr_normal_state;
                break;
            
            default:
                autowalk_direction = "nothing";
        }
        
        break;
    
    default:
        autowalk_direction = "nothing";
}
