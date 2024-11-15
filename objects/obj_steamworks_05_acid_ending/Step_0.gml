if (live_call())
    return global.live_result;

switch (scene)
{
    case 0:
        scr_text();
        
        with (msg)
        {
            message[0] = "* (Are you sure you want to#  drink the acid?)";
            ch_msg = 0;
            ch[1] = "Yes";
            
            if (outcome == 1)
                other.scene++;
            
            ch[2] = "No";
            
            if (outcome == 2)
            {
                instance_destroy(other);
                global.dialogue_open = false;
                global.cutscene = false;
            }
        }
        
        break;
    
    case 1:
        audio_stop_all();
        global.sworks_flag[45] = 1;
        global.heart_battle_fighting_x = 320;
        global.heart_battle_fighting_y = 240;
        global.battle_enemy_name = "Nothing";
        obj_pl.image_alpha = 0;
        room_goto(rm_death_screen);
        break;
}
