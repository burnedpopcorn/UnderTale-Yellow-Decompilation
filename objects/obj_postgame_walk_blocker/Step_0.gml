var door, i;

if (live_call())
    return global.live_result;

door = instance_place(x, y, obj_doorway);

if (door != -4)
    instance_destroy(door);

switch (scene)
{
    case 0:
        if (!global.cutscene && place_meeting(x, y, obj_pl))
        {
            scr_cutscene_start();
            cutscene_advance();
        }
        
        break;
    
    case 1:
        cutscene_dialogue();
        
        with (msg)
        {
            sndfnt = 102;
            
            for (i = 0; i < array_length(other.message); i++)
            {
                message[i] = other.message[i];
                prt[i] = other.prt[i];
            }
        }
        
        break;
    
    case 2:
        with (obj_pl)
        {
            clover_walk_backwards = false;
            autowalk_direction = other.walk_dir;
            
            switch (other.walk_dir)
            {
                case "down":
                    direction = 270;
                    break;
                
                case "right":
                    direction = 0;
                    break;
                
                case "left":
                    direction = 180;
                    break;
                
                case "up":
                    direction = 90;
                    break;
            }
            
            state = scr_autowalk_state;
            alarm[1] = 30;
        }
        
        cutscene_advance();
        break;
    
    case 3:
        if (!obj_pl.alarm[1])
        {
            scr_cutscene_end();
            scene = 0;
        }
        
        break;
}
