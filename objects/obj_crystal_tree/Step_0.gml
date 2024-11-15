depth = -y;

if (keyboard_multicheck_pressed(0) && scr_interact() == true && waiter == 0 && !instance_exists(obj_dialogue))
{
    if (global.snowdin_flag[4] == 0)
    {
        waiter = 1;
        scr_cutscene_start();
        audio_play_sound(snd_snowdin_crystal_tree, 20, 0);
        image_speed = 0.35;
    }
    else if (global.snowdin_flag[4] == 1)
    {
        waiter = 3;
    }
    else if (global.snowdin_flag[4] == 2)
    {
        scr_text();
        
        with (msg)
        {
            sndfnt = 99;
            portrait = false;
            
            if (global.route == 3)
                message[0] = "* (It's a tree. Nothing special.)";
            
            message[0] = "* (An old and fragile tree.)";
        }
        
        waiter = 2;
    }
}

if (waiter == 1)
{
    if (image_index >= (image_number - 1))
    {
        image_speed = 0;
        waiter = 2;
    }
}

if (waiter == 2 && !instance_exists(obj_dialogue))
{
    scr_cutscene_end();
    
    if (global.snowdin_flag[4] == 0)
        global.snowdin_flag[4] = 1;
    
    waiter = 0;
}

if (waiter == 3)
{
    scr_text();
    
    with (msg)
    {
        sndfnt = 99;
        portrait = false;
        message[0] = "* (Take the Ice Pellets?)";
        ch_msg = 0;
        ch[1] = "Yes";
        ch[2] = "No";
        
        if (outcome == 1 && message_current == 0)
        {
            if (scr_item("Ice Pellets"))
            {
                global.snowdin_flag[4] = 2;
                message[1] = "* (Obtained Ice Pellets!)";
                other.sprite_index = spr_crystal_tree_no_pellets_snowdin_yellow;
            }
            else
            {
                audio_play_sound(snd_fail, 10, 0);
                message[1] = "* (Not enough space.)";
            }
            
            other.waiter = 2;
        }
        
        if (outcome == 2 && message_current == 0)
        {
            other.waiter = 2;
            global.dialogue_open = false;
        }
    }
}
