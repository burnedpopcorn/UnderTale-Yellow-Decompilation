if (image_alpha < 1)
    image_alpha += 0.1;

if ((keyboard_multicheck_pressed(0) && scr_interact() == true) && (waiter == 0 && !instance_exists(obj_dialogue)))
    waiter = 1;

if (waiter > 0)
{
    scr_text();
    
    with (msg)
    {
        portrait = false;
        sndfnt = 99;
        message[0] = "* (Take the acid?)";
        
        if (outcome == 1)
        {
            if (scr_item("H. Acid"))
            {
                other.waiter = 0;
                message[1] = "* (Obtained ACID!)";
                global.sworks_flag[25] = 3;
                instance_create(0, 0, obj_chem_05_cutscene_b);
                instance_destroy(other);
            }
            else
            {
                message[1] = "* (Not enough space.)";
                other.waiter = 0;
            }
        }
        
        if (outcome == 2)
        {
            message[1] = "* It doesn't seem appetizing.";
            other.waiter = 0;
        }
        
        ch_msg = 0;
        ch[1] = "Yes";
        ch[2] = "No";
    }
}
