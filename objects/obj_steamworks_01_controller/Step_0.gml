switch (scene)
{
    case 0:
        cutscene_wait(1);
        break;
    
    case 1:
        cutscene_sfx_play(270, 1);
        break;
    
    case 2:
        cutscene_screenshake(0.5, 2);
        break;
    
    case 3:
        cutscene_wait(1);
        global.dunes_flag[35] = 2;
        break;
}
