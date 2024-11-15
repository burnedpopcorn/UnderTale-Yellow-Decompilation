if (global.route != 3)
{
    if ((keyboard_multicheck_pressed(0) && scr_interact() == true) && (waiter == 0 && !instance_exists(obj_dialogue)))
        waiter = 1;
    
    if (waiter == 1)
    {
        scr_text();
        
        with (msg)
        {
            portrait = false;
            sndfnt = 99;
            message[0] = "* (It's an organ.)";
            message[1] = "* (The musical kind.)";
        }
        
        waiter++;
    }
    
    if (waiter == 2 && !instance_exists(obj_dialogue))
        waiter++;
    
    if (waiter == 3)
    {
        waiter = 0;
        obj_pl.alarm[0] = 1;
    }
}
else
{
    if ((keyboard_multicheck_pressed(0) && scr_interact() == true) && (waiter == 0 && !instance_exists(obj_dialogue)))
        waiter = 1;
    
    if (waiter == 1)
    {
        scr_text();
        
        with (msg)
        {
            portrait = false;
            sndfnt = 99;
            message[0] = "* (An organ.)";
            message[1] = "* (It seems horribly out of#  tune.)";
        }
        
        waiter++;
    }
    
    if (waiter == 2 && !instance_exists(obj_dialogue))
        waiter++;
    
    if (waiter == 3)
    {
        waiter = 0;
        obj_pl.alarm[0] = 1;
    }
}
