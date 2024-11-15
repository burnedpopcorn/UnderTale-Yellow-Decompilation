if (global.flag[17] == 1)
{
    if ((keyboard_multicheck_pressed(0) && scr_interact() == true) && (waiter == 0 && !instance_exists(obj_dialogue)))
        waiter = 1;
    
    if (waiter == 1)
    {
        scr_cutscene_start();
        
        if (global.interaction_count_books == 0)
        {
            obj_dalv2.destination_x_dalv = obj_pl.x;
            obj_dalv2.destination_y_dalv = obj_pl.y - 40;
        }
        else
        {
            obj_dalv2.destination_x_dalv = obj_dalv2.default_x_dalvshouse;
            obj_dalv2.destination_y_dalv = obj_dalv2.default_y_dalvshouse;
        }
        
        if (obj_dalv2.x == obj_dalv2.destination_x_dalv && obj_dalv2.y == obj_dalv2.destination_y_dalv)
            waiter++;
    }
    
    if (waiter == 2)
        image_index = 1;
    
    if (waiter == 2)
    {
        scr_text();
        
        with (msg)
        {
            if (global.interaction_count_books == 0)
            {
                if (!instance_exists(obj_dialoguebox_dummy))
                    instance_create(0, 0, obj_dialoguebox_dummy);
                
                portrait = true;
                sndfnt = 100;
                message[0] = "* You like those?";
                message[1] = "* Those are my projects.";
                message[2] = "* I sometimes try to write#  books. Like for kids and#  stuff...";
                prt[0] = 1776;
                prt[1] = 1769;
                prt[2] = 1761;
            }
            else
            {
                portrait = true;
                sndfnt = 100;
                message[0] = "* ...";
                prt[0] = 1755;
            }
        }
        
        waiter++;
    }
    
    if (waiter == 3 && !instance_exists(obj_dialogue))
    {
        if (global.interaction_count_books == 0)
        {
            global.interaction_count_books++;
            waiter++;
        }
        else
        {
            waiter = 7;
        }
    }
    
    if (waiter == 4)
    {
        scr_text();
        
        with (msg)
        {
            portrait = false;
            sndfnt = 99;
            message[0] = "* (The table is covered in#  colorful pencils and pages#  strewn with cute pictures.)";
        }
        
        waiter++;
    }
    
    if (waiter == 5 && !instance_exists(obj_dialogue))
        waiter++;
    
    if (waiter == 6)
    {
        scr_text();
        
        with (msg)
        {
            portrait = true;
            sndfnt = 100;
            message[0] = "* I sometimes kinda forget#  what colors things are#  outside this place...";
            message[1] = "* So I just make them up!";
            message[2] = "* I think the kids will#  find it more interesting#  like that anyway!";
            message[3] = "* ...";
            message[4] = "* It might not be as#  educational though...";
            prt[0] = 1780;
            prt[1] = 1776;
            prt[2] = 1761;
            prt[3] = 1755;
            prt[4] = 1780;
        }
        
        waiter++;
    }
    
    if (waiter >= 7 && waiter <= 8 && !instance_exists(obj_dialogue))
    {
        obj_dalv2.destination_x_dalv = obj_dalv2.default_x_dalvshouse;
        obj_dalv2.destination_y_dalv = obj_dalv2.default_y_dalvshouse;
        
        if (obj_dalv2.x == obj_dalv2.default_x_dalvshouse && obj_dalv2.y == obj_dalv2.default_y_dalvshouse)
            waiter++;
        
        with (obj_dialoguebox_dummy)
            instance_destroy();
    }
    
    if (waiter == 9)
    {
        global.cutscene = false;
        waiter = 0;
        obj_pl.alarm[0] = 1;
    }
}
else if (global.flag[17] != 1 && global.route != 3)
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
            message[0] = "* (The table is covered in#  colorful pencils and pages#  strewn with cute pictures.)";
            obj_books.waiter = 2;
        }
    }
    
    if (waiter == 2 && !instance_exists(obj_dialogue))
    {
        global.cutscene = false;
        waiter = 0;
        obj_pl.alarm[0] = 1;
    }
}
else if (global.route == 3)
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
            message[0] = "* (Childish pictures scattered on#  the table.)";
            obj_books.waiter = 2;
        }
    }
    
    if (waiter == 2 && !instance_exists(obj_dialogue))
    {
        global.cutscene = false;
        waiter = 0;
        obj_pl.alarm[0] = 1;
    }
}
