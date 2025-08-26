if (live_call())
    return global.live_result;

if (room == rm_steamworks_07_v2)
    flag_check = global.sworks_flag[8];
else if (room == rm_steamworks_17b)
    flag_check = global.sworks_flag[53];
else if (room == rm_steamworks_25_b)
    flag_check = global.sworks_flag[54];
else if (room == rm_steamworks_23)
    flag_check = 1;

if (flag_check != 1)
    exit;

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
            talker[0] = obj_ceroba_npc;
            
            for (var i = 0; i < array_length(other.message); i++)
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
            alarm[1] = 15;
        }
        
        cutscene_advance();
        break;
    
    case 3:
        scr_cutscene_end();
        scene = 0;
        break;
}
