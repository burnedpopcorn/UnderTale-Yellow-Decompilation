switch (scene)
{
    case 0:
        if (place_meeting(x, y, obj_pl))
        {
            obj_pl.direction = 90;
            scr_cutscene_start();
            cutscene_advance();
        }
        
        break;
    
    case 1:
        cutscene_wait(0.5);
        break;
    
    case 2:
        instance_create_depth(148, 41, 0, obj_steamworks_34_pellets);
        cutscene_advance();
        break;
    
    case 3:
        cutscene_wait(1.5);
        break;
    
    case 4:
        global.dunes_flag[51] = 1;
        cutscene_end();
        break;
}
