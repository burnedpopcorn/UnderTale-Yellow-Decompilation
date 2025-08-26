if (global.flag[17] == 1)
{
    if ((keyboard_multicheck_pressed(vk_nokey) && scr_interact() == true) && (waiter == 0 && !instance_exists(obj_dialogue)))
        waiter = 1;
    
    if (waiter == 1)
    {
        global.cutscene = true;
        obj_dalv2.destination_x_dalv = obj_dalv2.x;
        obj_dalv2.destination_y_dalv = obj_dalv2.y;
        
        if (obj_dalv2.x == obj_dalv2.destination_x_dalv && obj_dalv2.y == obj_dalv2.destination_y_dalv)
            waiter++;
    }
    
    if (waiter == 2)
    {
        scr_text();
        
        with (msg)
        {
            if (global.interaction_count_painting == 0)
            {
                portrait = true;
                sndfnt = sndfnt_dalv;
                message[0] = "* Someone made that for me#  a while back.";
                message[1] = "* It's a single corn from#  the corn field out in#  the Ruins.";
                message[2] = "* I started that field#  from one piece of corn.";
                message[3] = "* Before I closed off the#  door to Snowdin,#  something happened.";
                message[4] = "* I kept finding corn#  sitting on my doorstep.";
                message[5] = "* Every morning it was#  just, there.";
                message[6] = "* I didn't know who was#  leaving it but...";
                message[7] = "* Somehow I thought they#  were my friend.";
                message[8] = "* I always wanted to repay#  their kind deeds but...";
                message[9] = "* I never could think of#  anything to leave in#  return.";
                message[10] = "* And one day they just#  stopped showing up.";
                message[11] = "* That's when I decided to#  hide away.";
                message[12] = "* But I planted the last#  cob of corn I had down#  here.";
                message[13] = "* It's taken to the#  environment surprisingly#  well.";
                message[14] = "* I always found it rather#  inspiring.";
                prt[0] = spr_dalv_head_content;
                prt[1] = spr_dalv_head_content;
                prt[2] = spr_dalv_head_moderate;
                prt[3] = spr_dalv_head_regular;
                prt[4] = spr_dalv_head_regular;
                prt[5] = spr_dalv_head_regular;
                prt[6] = spr_dalv_head_regular;
                prt[7] = spr_dalv_head_content;
                prt[8] = spr_dalv_head_regular;
                prt[9] = spr_dalv_head_sad_side;
                prt[10] = spr_dalv_head_sad;
                prt[11] = spr_dalv_head_sleepy;
                prt[12] = spr_dalv_head_moderate;
                prt[13] = spr_dalv_head_moderate;
                prt[14] = spr_dalv_head_content;
            }
            else
            {
                portrait = true;
                sndfnt = sndfnt_dalv;
                message[0] = "* ...";
                prt[0] = spr_dalv_head_regular;
            }
        }
        
        waiter++;
    }
    
    if (waiter == 3 && !instance_exists(obj_dialogue))
    {
        if (global.interaction_count_painting == 0)
        {
            global.interaction_count_painting++;
            waiter++;
        }
        else
        {
            waiter = 4;
        }
    }
    
    if (waiter >= 4 && waiter <= 5 && !instance_exists(obj_dialogue))
    {
        obj_dalv2.destination_x_dalv = obj_dalv2.default_x_dalvroomhall;
        obj_dalv2.destination_y_dalv = obj_dalv2.default_y_dalvroomhall;
        
        if (obj_dalv2.x == obj_dalv2.default_x_dalvroomhall && obj_dalv2.y == obj_dalv2.default_y_dalvroomhall)
            waiter++;
    }
    
    if (waiter == 6)
    {
        global.cutscene = false;
        waiter = 0;
        obj_pl.alarm[0] = 1;
    }
}
else if (global.flag[17] != 1 && global.route != 3)
{
    if ((keyboard_multicheck_pressed(vk_nokey) && scr_interact() == true) && (waiter == 0 && !instance_exists(obj_dialogue)))
        waiter = 1;
    
    if (waiter == 1)
    {
        scr_text();
        
        with (msg)
        {
            portrait = false;
            sndfnt = sndfnt_default;
            message[0] = "* (It's a nice painting of a#  small, lonely cob.)";
            message[1] = "* (A signature that reads#  \"Penilla\", is written in the#  corner.)";
            obj_painting.waiter = 2;
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
    if ((keyboard_multicheck_pressed(vk_nokey) && scr_interact() == true) && (waiter == 0 && !instance_exists(obj_dialogue)))
        waiter = 1;
    
    if (waiter == 1)
    {
        scr_text();
        
        with (msg)
        {
            portrait = false;
            sndfnt = sndfnt_default;
            message[0] = "* (A painting.)";
            message[1] = "* (It's lacking corn realism.)";
            obj_painting.waiter = 2;
        }
    }
    
    if (waiter == 2 && !instance_exists(obj_dialogue))
    {
        global.cutscene = false;
        waiter = 0;
        obj_pl.alarm[0] = 1;
    }
}
