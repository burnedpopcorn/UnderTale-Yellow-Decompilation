for (var i = 0; i <= (array_length_1d(timer) - 1); i++)
{
    if (timer[i] > 0)
    {
        timer[i]--;
    }
    else if (timer[i] != -1)
    {
        if (i == 0)
        {
            with (msg)
            {
                if (message_current == 1)
                {
                    instance_destroy();
                }
                else
                {
                    message_current += 1;
                    cutoff = 0;
                    other.timer[0] = 60;
                    exit;
                }
            }
        }
        
        if (i == 1)
            audio_play_sound(snd_mo_throw, 20, 0);
        
        if (i == 2)
            path_start(pt_mo_kiosk, 2, path_action_stop, false);
        
        if (i == 3)
            waiter = 9;
        
        if (i == 4)
        {
            waiter = 7;
            scr_text();
            
            with (msg)
            {
                portrait = false;
                message[0] = "* Much as I'd love to keep#  sellin' pops, I'm all out!";
                message[1] = "* Until next time!";
            }
        }
        
        timer[i] = -1;
    }
}

if (path_speed != 0)
{
    image_speed = 0.2;
    
    switch (direction div 90)
    {
        case 0:
            sprite_index = spr_mo_right_yellow;
            break;
        
        case 1:
            sprite_index = spr_mo_up_yellow;
            break;
        
        case 2:
            sprite_index = spr_mo_left_yellow;
            break;
        
        case 3:
            sprite_index = spr_mo_down_yellow;
            break;
    }
}

if (instance_exists(obj_dialogue))
{
    if (obj_dialogue.cutoff == string_length(obj_dialogue.message[obj_dialogue.message_current]))
    {
        image_speed = 0;
        image_index = 0;
    }
    else
    {
        image_speed = 0.2;
    }
}

depth = 10;

if (global.extra_flag[1] == 1 && global.extra_flag[2] == 1 && global.extra_flag[3] == 1)
    global.snowdin_flag[5] = 2;

if (scr_interact() && keyboard_multicheck_pressed(vk_nokey) && waiter == 0)
{
    waiter = 5;
    scr_cutscene_start();
}

if (slide == 1)
{
    slide = 2;
    hsp = -4.8;
}

if (slide == 2)
{
    if (hsp < 0)
    {
        hsp += 0.1;
    }
    else
    {
        sprite_index = spr_mo_kick_yellow;
        image_speed = 0.33;
        
        if (floor(image_index) == 3)
        {
            obj_snowdin_09_mo_stool.slide = 1;
            slide = 3;
        }
    }
}

x += hsp;

if (waiter == 1)
{
    scr_text();
    
    with (msg)
    {
        portrait = false;
        position = 0;
        color = true;
        col_modif[0] = make_color_rgb(72, 132, 212);
        message[0] = "* Bam!";
        message[1] = "* Who am I? Nobody of note. Ya#  know.";
        message[2] = "* JUST THE BEST DARN SALESMAN#  EVER!";
        message[3] = "* WAM! I'm Mo!";
        message_col[3][0] = "           Mo ";
        message[4] = "* Anyways...";
        message[5] = "* The fact that you tried to get#  your mitts on this mug could#  only mean one thing.";
        message[6] = "* You're looking for a delicious#  little something to hit the#  spot, right?";
        message[7] = "* Of course! I know your type!";
        message[8] = "* So, you want this here#  beverage?";
        ch_msg = 8;
        ch[1] = "Yes";
        ch[2] = "No";
        
        if (outcome == 1 && message_current == 8)
        {
            message[9] = "* No you don't!";
            other.waiter = 2;
        }
        
        if (outcome == 2 && message_current == 8)
        {
            message[9] = "* Of course not.";
            message[10] = "* You and I, we're on the same#  page here.";
            message[11] = "* This thing? Gross. No one wants#  that.";
            other.waiter = 2;
        }
    }
}

if (waiter == 2 && !instance_exists(obj_dialogue))
{
    sprite_index = spr_mo_pour2_yellow;
    image_speed = 0.35;
    timer[1] = 10;
    waiter = -1;
}

if (waiter == 3)
{
    scr_text();
    
    with (msg)
    {
        portrait = false;
        position = 0;
        message[0] = "* Liquids? So last season!";
        message[1] = "* Solids? PAH! Season before!";
        message[2] = "* You want to be fresh and#  revolutionary? I got the latest#  thing!";
        message[3] = "* Solids that USED to be liquids!";
        message[4] = "* ...And, ya know, haven't been#  sitting out in the forest for#  three weeks.";
        message[5] = "* I have invented the next big#  thing here!";
        message[6] = "* For the incredibly low price of#  15G, you can have your very own#  Hot Chocolate Pop!";
        message[7] = "* It was once boring old hot#  chocolate, but now it's frozen#  to the perfect temperature!";
        message[8] = "* Have I piqued your interest#  yet?";
        ch_msg = 8;
        ch[1] = "I'm Sold";
        ch[2] = "No Thanks";
        
        if (outcome == 1 && message_current == 8)
        {
            message[9] = "* I knew you would be! Dang, I'm#  good!";
            message[10] = "* Let's get down to business.";
            other.waiter = 4;
        }
        
        if (outcome == 2 && message_current == 8)
        {
            message[9] = "* You sure you don't want one?";
            message[10] = "* You have to keep up with the#  times, pal! Here, I have an#  idea.";
            message[11] = "* I'll let you look at them for#  free. Call it a 'holiday#  special.'";
            message[12] = "* I don't get a lot of shipments,#  so I only have one of each.";
            message[13] = "* Let's get down to business.";
            other.waiter = 4;
        }
    }
}

if (waiter == 4 && !instance_exists(obj_dialogue))
{
    sprite_index = spr_mo_snap_yellow;
    image_speed = 0.35;
    audio_play_sound(snd_mo_snap, 20, 0);
    waiter = 5;
}

if (waiter == 5 && path_position == 1)
{
    path_speed = 0;
    sprite_index = spr_mo_down_talk_yellow;
    image_index = 0;
    image_speed = 0;
    scr_text();
    
    with (msg)
    {
        dialogue_is_minishop = true;
        portrait = false;
        position = 0;
        ch_msg = 0;
        ch[1] = "Hot Pop";
        ch[2] = "Lukewarm Pop";
        ch[3] = "Cold Pop";
        ch[4] = "Cancel";
        
        if (global.extra_flag[1] == true)
            ch[1] = "-SOLD OUT-";
        
        if (global.extra_flag[2] == true)
            ch[2] = "-SOLD OUT-";
        
        if (global.extra_flag[3] == true)
            ch[3] = "-SOLD OUT-";
        
        message[0] = "* Here's what I got. (15 G)";
        
        if (global.snowdin_flag[5] == 1)
        {
            ch_msg = 2;
            message[0] = "* Couldn't stay away?";
            message[1] = "* Well-BAM-Take your pick.";
            message[2] = "* Here's what I got. (15 G)";
        }
        
        switch (outcome)
        {
            case 1:
            case 2:
            case 3:
                message = 0;
                cutoff = 0;
                message_current = 0;
                ch_msg = -1;
                
                if (global.extra_flag[outcome] == false)
                {
                    if (global.player_gold >= 15 && scr_inventory_check_space())
                    {
                        message[1] = "* Great choice.";
                        message[2] = "* You enjoy that Pop, buddy.";
                        
                        if (outcome == 1)
                            scr_item("Hot Pop");
                        
                        if (outcome == 2)
                            scr_item("Lukewarm Pop");
                        
                        if (outcome == 3)
                            scr_item("Cold Pop");
                        
                        audio_play_sound(snd_shop_purchase, 1, 0);
                        global.player_gold -= 15;
                        global.extra_flag[outcome] = true;
                    }
                    else if (global.player_gold < 15)
                    {
                        message[1] = "* Sorry, buddy. I'm gonna#  need more G than that.";
                    }
                    else if (!scr_inventory_check_space())
                    {
                        message[1] = "* Uh-oh, looks like you've got no#  space for this item.";
                        message[2] = "* Come back when you've made some#  more room.";
                    }
                }
                else
                {
                    message[1] = "* What a popular item! I wish I#  could sell you more, but I'm#  fresh out.";
                }
                
                other.waiter = 6;
                break;
            
            case 4:
                message = 0;
                cutoff = 0;
                message_current = 0;
                ch_msg = -1;
                message[1] = "* Hey, what are ya doing there!";
                message[2] = "* That ain't no Pop!";
                message[3] = "* You leavin' me? Not interested#  in my wares?";
                message[4] = "* Do I not have your favorite#  temperature?";
                message[5] = "* Oh, I see. You need some time#  to think about it.";
                message[6] = "* Well, I'll always be here for#  your gol-";
                message[7] = "* ...Business.";
                message[8] = "* I said business.";
                other.waiter = 6;
        }
    }
}

if (waiter == 6 && !instance_exists(obj_dialogue))
{
    if (global.snowdin_flag[5] == 2)
    {
        if (timer[4] == -1)
            timer[4] = 30;
        
        exit;
    }
    
    if (scr_camera_move(obj_pl.x, obj_pl.y, 2))
    {
        waiter = 0;
        __view_set(e__VW.Object, 0, obj_pl);
        global.snowdin_flag[5] = 1;
        scr_cutscene_end();
    }
}

if (waiter == 7 && !instance_exists(obj_dialogue))
{
    sprite_index = spr_mo_snap_yellow;
    image_index = 0;
    image_speed = 0.35;
    timer[3] = 50;
    waiter = 8;
}

if (waiter == 9)
{
    scr_text();
    
    with (msg)
    {
        portrait = false;
        position = 0;
        message[0] = "* Mo out!";
    }
    
    waiter = 10;
}

if (waiter == 10 && !instance_exists(obj_dialogue))
{
    vspeed = -2;
    sprite_index = spr_mo_up_yellow;
    image_speed = 0.35;
    
    if (y < -20)
    {
        global.snowdin_flag[5] = 2;
        scr_radio_restart();
        scr_cutscene_end();
        instance_destroy();
    }
}

if (global.snowdin_flag[5] == 1)
{
    solid = true;
    depth = -y;
}
