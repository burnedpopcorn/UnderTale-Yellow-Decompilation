with (other)
{
    if (global.route != 3 && global.flag[17] == 1)
    {
        if (waiter == 0)
            sprite_index = spr_wardrobe;
        
        if ((keyboard_multicheck_pressed(0) && scr_interact() == true) && (waiter == 0 && !instance_exists(obj_dialogue)))
            waiter = 1;
        
        if (waiter > 0)
        {
            if (waiter > 2 && waiter < 30)
                waiter++;
            
            if (waiter == 1)
            {
                scr_text();
                
                with (msg)
                {
                    if (global.interaction_count_wardrobe == 0)
                    {
                        if (!instance_exists(obj_dialoguebox_dummy))
                            instance_create(0, 0, obj_dialoguebox_dummy);
                        
                        portrait = false;
                        sndfnt = 99;
                        message[0] = "* (It's an intimidating looking#  wardrobe.)";
                        message[1] = "* (Open it?)";
                        
                        if (outcome == 1 && message_current == 1)
                        {
                            message[2] = "* (There is a balloon floating#  slowly inside. It has a cute#  little happy face drawn on it.)";
                            obj_wardrobe.sprite_index = spr_wardrobalon;
                            obj_wardrobe.waiter = 2;
                        }
                        
                        if (outcome == 2 && message_current == 1)
                        {
                            message[2] = "* (You respect Dalv's privacy.)";
                            global.interaction_count_wardrobe++;
                            obj_wardrobe.waiter = 0;
                            
                            with (obj_dialoguebox_dummy)
                                instance_destroy();
                            
                            exit;
                        }
                        
                        if ((message_current + 1) == 1)
                        {
                            ch_msg = 1;
                            ch[1] = "Yes";
                            ch[2] = "No";
                        }
                    }
                    else
                    {
                        portrait = true;
                        sndfnt = 100;
                        message[0] = "* ...";
                        prt[0] = 1755;
                        obj_wardrobe.waiter = 2;
                    }
                }
            }
            
            if (waiter == 2 && !instance_exists(obj_dialogue))
            {
                if (global.interaction_count_wardrobe == 0)
                {
                    obj_dalv2.direction = 180;
                    scr_cutscene_start();
                    global.interaction_count_wardrobe++;
                    waiter++;
                }
                else
                {
                    waiter = 0;
                    
                    with (obj_dialoguebox_dummy)
                        instance_destroy();
                }
            }
            
            if (waiter == 30)
            {
                scr_text();
                
                with (msg)
                {
                    sndfnt = 100;
                    message[0] = "* Hey. um. Would you#  mind giving Pops his#  space?";
                    message[1] = "* He likes the dark...";
                    prt[0] = 1763;
                    prt[1] = 1763;
                }
                
                waiter++;
            }
            
            if (waiter == 31 && !instance_exists(obj_dialogue))
            {
                obj_dalv2.direction = 270;
                scr_text();
                
                with (msg)
                {
                    sndfnt = 99;
                    message[0] = "* (You wave goodbye to Pops#  before closing the door#  again.)";
                    portrait = false;
                }
                
                waiter = 32;
            }
            
            if (waiter == 32)
            {
                obj_dalv2.direction = 270;
                
                if (!instance_exists(obj_dialogue))
                {
                    with (obj_dialoguebox_dummy)
                        instance_destroy();
                    
                    waiter = 0;
                    global.cutscene = false;
                }
            }
        }
    }
    else if (global.flag[17] != 1 && global.route != 3)
    {
        if (waiter == 0)
            sprite_index = spr_wardrobe;
        
        if ((keyboard_multicheck_pressed(0) && scr_interact() == true) && (waiter == 0 && !instance_exists(obj_dialogue)))
            waiter = 1;
        
        if (waiter == 1)
        {
            scr_text();
            
            with (msg)
            {
                portrait = false;
                sndfnt = 99;
                message[0] = "* (It's an intimidating looking#  wardrobe.)";
                message[1] = "* (Open it?)";
                
                if (outcome == 1 && message_current == 1)
                {
                    message[2] = "* (There is a balloon floating#  slowly inside. It has a cute#  little happy face drawn on it.)";
                    message[3] = "* (You wave goodbye to it#  before closing the door#  again.)";
                    obj_wardrobe.sprite_index = spr_wardrobalon;
                    obj_wardrobe.waiter = 2;
                }
                
                if (outcome == 2 && message_current == 1)
                {
                    message[2] = "* (You respect Dalv's privacy.)";
                    obj_wardrobe.waiter = 2;
                }
                
                if ((message_current + 1) == 1)
                {
                    ch_msg = 1;
                    ch[1] = "Yes";
                    ch[2] = "No";
                }
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
        if (waiter == 0)
            sprite_index = spr_wardrobe;
        
        if ((keyboard_multicheck_pressed(0) && scr_interact() == true) && (waiter == 0 && !instance_exists(obj_dialogue)))
            waiter = 1;
        
        if (waiter == 1)
        {
            global.cutscene = true;
            scr_text();
            
            with (msg)
            {
                if (global.interaction_count_wardrobe == 0)
                {
                    portrait = false;
                    sndfnt = 99;
                    message[0] = "* (It's a tacky looking black#  wardrobe.)";
                    message[1] = "* (You open it.)";
                    message[2] = "* (There is a balloon floating#  slowly inside.)";
                    message[3] = "* (You untie it and inhale some#  of the contents.)";
                    obj_wardrobe.waiter++;
                    global.interaction_count_wardrobe++;
                }
                else
                {
                    portrait = false;
                    sndfnt = 99;
                    message[0] = "* (You should respect the dead.)";
                    obj_wardrobe.sprite_index = spr_wardrodeflate;
                    obj_wardrobe.image_speed = 0;
                    obj_wardrobe.image_index = 16;
                    obj_wardrobe.waiter = 6;
                }
            }
        }
        
        if (waiter == 2 && instance_exists(obj_dialogue))
        {
            if (obj_dialogue.message_current >= 2)
            {
                sprite_index = spr_wardrobalon;
                waiter++;
            }
        }
        
        if (waiter == 3 && !instance_exists(obj_dialogue))
        {
            sprite_index = spr_wardrodeflate;
            image_speed = 1/3;
            image_index = 0;
            audio_play_sound(snd_pops_deflate, 1, 0);
            waiter++;
        }
        
        if (waiter == 5)
        {
            scr_text();
            
            with (msg)
            {
                portrait = false;
                sndfnt = 99;
                message[0] = "* (You now sound funny.)";
                message[1] = "* ...";
                message[2] = "* (You no longer sound funny.)";
                obj_wardrobe.waiter++;
            }
        }
        
        if (waiter == 6 && !instance_exists(obj_dialogue))
        {
            global.cutscene = false;
            waiter = 0;
            obj_pl.alarm[0] = 1;
        }
    }
}
