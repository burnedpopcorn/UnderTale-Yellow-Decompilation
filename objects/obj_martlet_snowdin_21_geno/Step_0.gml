event_inherited();

if (global.snowdin_flag[13] == 0)
{
    switch (scene)
    {
        case 1:
            if (!instance_exists(obj_dialogue))
            {
                x_dest[0] = x;
                y_dest[0] = 320;
                axis_override = "y";
                can_walk = true;
                
                if (npc_arrived)
                {
                    can_walk = false;
                    scene++;
                }
            }
            
            break;
        
        case 2:
            scr_text();
            is_talking = true;
            
            with (msg)
            {
                prt = false;
                sndfnt = 102;
                message[0] = "* Oh my goodness! Did you#  get left behind?";
                prt[0] = 333;
            }
            
            scene++;
            break;
        
        case 3:
            if (!instance_exists(obj_dialogue))
            {
                action_sprite = true;
                sprite_index = spr_martlet_book;
                image_index = 0;
                image_speed = 0.2;
                scene++;
            }
            
            break;
        
        case 4:
            if (image_index >= (image_number - 1))
            {
                image_speed = 0;
                action_sprite = false;
                down_sprite_idle = spr_martlet_book_talk;
                scene++;
            }
            
            break;
        
        case 5:
            scr_text();
            is_talking = true;
            timer = 30;
            
            with (msg)
            {
                prt = false;
                sndfnt = 102;
                message[0] = "* Might I ask your name?";
                ch_msg = 0;
                ch[1] = "Clover";
                message[1] = "* Hmm... not on the#  resident list...";
                message[2] = "* Ummm... see, this is#  tough. I can't leave my#  post.";
                message[3] = "* I'm supposed to wait#  here until this bad#  person comes.";
                message[4] = "* The troublemaker who#  caused all this, ya#  know?";
                message[5] = "* But I can't just leave#  you to find the others#  alone!";
                message[6] = "* You're a child! I could#  never do that!";
                prt[0] = 321;
                prt[1] = 338;
                prt[2] = 311;
                prt[3] = 317;
                prt[4] = 317;
                prt[5] = 338;
                prt[6] = 313;
            }
            
            scene++;
            break;
        
        case 6:
            if (global.dialogue_open || !scr_timer())
                exit;
            
            scene++;
            break;
        
        case 7:
            scr_text();
            is_talking = true;
            
            with (msg)
            {
                sndfnt = 102;
                message[0] = "* Okay, how 'bout we#  hurry and catch up#  with the others...";
                message[1] = "* Then I come back and#  no one will ever#  know!";
                message[2] = "* Ready?";
                prt[0] = 320;
                prt[1] = 321;
                prt[2] = 321;
            }
            
            if (!global.dialogue_open)
                scene++;
            
            break;
        
        case 8:
            if (!alarm[0])
                alarm[0] = 20;
            
            scene++;
            break;
    }
}

if (global.snowdin_flag[13] == 3 && global.snowdin_flag[21] == 0)
{
    switch (scene)
    {
        case 1:
            scr_text();
            is_talking = true;
            
            with (msg)
            {
                sndfnt = 102;
                message[0] = "* I... I have no idea how#  to handle this.";
                message[1] = "* ...";
                message[2] = "* ASGORE would know what#  to do.";
                message[3] = "* You should go talk to#  him.";
                message[4] = "* There's a river up#  ahead. A raft is docked#  there.";
                message[5] = "* The current should lead#  to Hotland.";
                message[6] = "* I'll meet up with you#  once you get there.";
                message[7] = "* In the meantime...#  I have work to#  attend to.";
                message[8] = "* See you later.";
                prt[0] = 317;
                prt[1] = 317;
                prt[2] = 329;
                prt[3] = 321;
                prt[4] = 321;
                prt[5] = 338;
                prt[6] = 321;
                prt[7] = 321;
                prt[8] = 321;
            }
            
            if (!global.dialogue_open)
                scene++;
            
            break;
        
        case 2:
            scr_cutscene_start();
            action_sprite = true;
            sprite_index = spr_martlet_fly_away;
            image_speed = 0.4;
            scene++;
            break;
        
        case 3:
            if (image_index >= (image_number - 1))
            {
                image_speed = 0;
                
                if (scr_camera_move(obj_pl.x, obj_pl.y, 2))
                {
                    global.route = 1;
                    global.snowdin_flag[14] = 1;
                    scr_cutscene_end();
                    scr_radio_restart();
                    __view_set(e__VW.Object, 0, obj_pl);
                    instance_destroy();
                }
            }
            
            break;
    }
}
else if (global.snowdin_flag[13] == 3 && global.snowdin_flag[21] == 1)
{
    switch (scene)
    {
        case 1:
            scr_text();
            is_talking = true;
            
            with (msg)
            {
                sndfnt = 102;
                message[0] = "* You're not off the#  hook, Clover.";
                message[1] = "* Unless you decide right#  now to change your#  ways...";
                message[2] = "* The Royal Guard will#  find you. ";
                message[3] = "* It could be me or#  someone much, much#  worse.";
                message[4] = "* How your life plays out#  from this moment is up#  to you.";
                message[5] = "* I don't know what the#  humans taught you but...";
                message[6] = "* A child your age#  shouldn't be corrupted#  by violence.";
                message[7] = "* Please... Please choose#  wisely...";
                prt[0] = 321;
                prt[1] = 338;
                prt[2] = 321;
                prt[3] = 317;
                prt[4] = 338;
                prt[5] = 338;
                prt[6] = 321;
                prt[7] = 317;
            }
            
            if (!global.dialogue_open)
                scene++;
            
            break;
        
        case 2:
            scr_cutscene_start();
            action_sprite = true;
            sprite_index = spr_martlet_fly_away;
            image_speed = 0.4;
            scene++;
            break;
        
        case 3:
            if (image_index >= (image_number - 1))
            {
                image_speed = 0;
                
                if (scr_camera_move(obj_pl.x, obj_pl.y, 2))
                {
                    global.snowdin_flag[14] = 1;
                    scr_cutscene_end();
                    scr_radio_restart();
                    __view_set(e__VW.Object, 0, obj_pl);
                    instance_destroy();
                }
            }
            
            break;
    }
}
