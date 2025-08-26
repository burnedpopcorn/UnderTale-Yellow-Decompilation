if (live_call())
    return global.live_result;

var door = instance_place(x, y, obj_doorway);

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
            message[0] = "* (There are still enemies to#  bring justice on.)";
            ch_msg = 0;
            ch[1] = "Turn back";
            ch[2] = "Continue";
            
            if (outcome == 2)
            {
                scr_cutscene_end();
                instance_destroy(other);
                global.dunes_flag[55] = 1;
                exit;
            }
            
            if (outcome == 1)
                other.scene++;
        }
        
        break;
    
    case 2:
        with (obj_pl)
        {
            clover_walk_backwards = false;
            autowalk_direction = "left";
            direction = 180;
            state = scr_autowalk_state;
            alarm[1] = 20;
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
