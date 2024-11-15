var narrator;

if (live_call())
    return global.live_result;

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
        narrator = instance_create_depth(0, 0, -100, obj_dialogue_narrator);
        
        with (narrator)
            message[0] = "* (The other way.)";
        
        scene++;
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
            alarm[1] = 20;
        }
        
        cutscene_advance();
        break;
    
    case 3:
        if (!obj_pl.alarm[1])
        {
            scr_cutscene_end();
            obj_pl.state = scr_normal_state;
            scene = 0;
        }
        
        break;
}
