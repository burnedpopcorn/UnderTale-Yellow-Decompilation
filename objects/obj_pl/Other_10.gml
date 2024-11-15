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
