event_inherited();

if (npc_flag > 0)
    instance_destroy();

if (scr_interact() && keyboard_multicheck_pressed(vk_nokey))
    waiter = 1;

if (waiter == 1)
{
    scr_text();
    
    with (msg)
    {
        message[0] = "* (An abandoned pickaxe.)";
        message[1] = "* (Take it?)";
        ch_msg = 1;
        ch[1] = "Yes";
        ch[2] = "No";
        
        if (outcome == 1)
        {
            if (scr_item("Pickaxe"))
            {
                message[2] = "* (You got a pickaxe!)";
                other.npc_flag = 1;
            }
            else
            {
                message[2] = "* (Not enough space.)";
                global.cutscene = false;
                other.waiter = 0;
            }
        }
        
        if (outcome == 2)
        {
            global.dialogue_open = false;
            other.waiter = 0;
            global.cutscene = false;
        }
    }
}
