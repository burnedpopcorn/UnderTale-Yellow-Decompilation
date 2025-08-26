if (scr_interact() && keyboard_multicheck_pressed(vk_nokey))
    scene = 1;

if (scene == 1)
{
    scr_text();
    
    with (msg)
    {
        ch_msg = 0;
        ch[1] = "Yes";
        ch[2] = "No";
        message[0] = "* Get on the boat?";
        
        if (outcome == 1)
        {
            scr_cutscene_start();
            
            with (instance_create(obj_pl.x, obj_pl.y, obj_npc_clover_snowdin_22))
            {
                can_walk = false;
                npc_direction = "right";
                alarm[0] = 15;
            }
            
            global.dialogue_open = false;
        }
        
        if (outcome == 2)
            global.dialogue_open = false;
    }
}

if (scene == 1 && !global.dialogue_open)
    scene = 0;
