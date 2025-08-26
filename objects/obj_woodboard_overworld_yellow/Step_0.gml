if (global.snowdin_flag[2] == 0)
    exit;

if ((keyboard_multicheck_pressed(vk_nokey) && scr_interact() == true) && (waiter == 0 && !instance_exists(obj_dialogue)))
    waiter = 1;

if (waiter == 1)
{
    scr_text();
    
    with (msg)
    {
        portrait = false;
        sndfnt = sndfnt_default;
        
        if (global.route == 3)
            message[0] = "* A tube full of water.";
        else
            message[0] = "* The water-meter is full of#  liquid ice.";
    }
    
    waiter = 2;
}

if (waiter == 2 && !instance_exists(obj_dialogue))
    waiter = 0;
