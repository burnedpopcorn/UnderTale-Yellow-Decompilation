var door;

if (live_call())
    return global.live_result;

if (global.sworks_flag[12] >= 2)
{
    instance_destroy();
    exit;
}

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
            message[0] = "* (Better not approach#  him.)";
        
        break;
    
    case 2:
        with (obj_pl)
        {
            clover_walk_backwards = false;
            autowalk_direction = "down";
            direction = 270;
            state = scr_autowalk_state;
            alarm[1] = 10;
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
