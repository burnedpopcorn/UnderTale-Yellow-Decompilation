switch (scene)
{
    case 0:
        cutscene_instance_position(1031, "x", ">", 1400);
        break;
    
    case 1:
        cutscene_initialize();
        break;
    
    case 2:
        cutscene_sfx_play(340, 1);
        break;
    
    case 3:
        cutscene_wait(1.5);
        break;
    
    case 4:
        cutscene_dialogue();
        
        with (msg)
            message[0] = "* ...";
        
        break;
    
    case 5:
        global.dunes_flag[32] = 1;
        cutscene_end();
        break;
}
