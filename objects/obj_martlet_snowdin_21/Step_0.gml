event_inherited();

if (global.snowdin_flag[13] == 0)
{
    switch (scene)
    {
        case 0:
            if (sprite_index == spr_martlet_wake && floor(image_index) == 3)
            {
                if (!instance_exists(obj_cutscene_ex))
                {
                    instance_create(x, y - 29, obj_cutscene_ex);
                    audio_play_sound(snd_martlet_wake, 1, 0);
                }
            }
            
            if (image_index >= (image_number - 1))
            {
                if (sprite_index == spr_martlet_wake)
                {
                    sprite_index = spr_martlet_stand_up;
                    image_index = 0;
                    instance_destroy(obj_cutscene_ex);
                }
            }
            
            if (sprite_index == spr_martlet_stand_up)
            {
                if (image_index >= image_number)
                {
                    action_sprite = false;
                    image_speed = 0.2;
                    scene++;
                }
            }
            
            break;
        
        case 1:
            scr_text();
            is_talking = true;
            
            with (msg)
            {
                position = 0;
                sndfnt = 102;
                message[0] = "* Hm? Oh, uh, hello!";
                message[1] = "* Sorry, I don't know#  where my head was right#  there.";
                message[2] = "* It seems I have#  a summer home in lala#  land these days!";
                message[3] = "* You look a bit lost,#  are you looking for#  directions?";
                message[4] = "* I'll let you in on a#  little secret,";
                message[5] = "* I'm not actually an#  information kiosk!";
                message[6] = "* I know this place like#  the back of my wing#  though!";
                message[7] = "* I don't get#  lost much at all#  anymore!";
                message[8] = "* I can get you#  wherever you want to go!";
                message[9] = "* Wait...";
                message[10] = "* I'm gonna take a shot#  in the dark here, but...";
                message[11] = "* You're human! Right?";
                message[12] = "* I knew it! I knew I'd#  find a human! You must#  be human! Right? Right? ";
                message[13] = "* You look just like this#  guy on this poster I#  saw once!";
                message[14] = "* He had a hat#  just like you!";
                message[15] = "* And he was totally human,#  so, like,";
                message[16] = "* transitive property or#  something like that?";
                message[17] = "* Actually, I think he#  was from space... are#  there space humans?";
                message[18] = "* You know what, I'll#  have plenty of time to#  ask you questions later.";
                prt[0] = 333;
                prt[1] = 323;
                prt[2] = 318;
                prt[3] = 331;
                prt[4] = 313;
                prt[5] = 313;
                prt[6] = 331;
                prt[7] = 312;
                prt[8] = 312;
                prt[9] = 334;
                prt[10] = 335;
                prt[11] = 313;
                prt[12] = 313;
                prt[13] = 318;
                prt[14] = 318;
                prt[15] = 312;
                prt[16] = 312;
                prt[17] = 324;
                prt[18] = 313;
            }
            
            scene++;
            break;
        
        case 2:
            if (!instance_exists(obj_dialogue))
            {
                x_dest[0] = 280;
                y_dest[0] = y;
                x_dest[1] = 220;
                y_dest[1] = 200;
                axis_override = "y";
                can_walk = true;
                
                if (npc_arrived)
                {
                    can_walk = false;
                    scene++;
                }
            }
            
            break;
        
        case 3:
            scr_text();
            is_talking = true;
            
            with (msg)
            {
                prt = false;
                sndfnt = 102;
                message[0] = "* Are you ready for some#  Royal Guard protocol?";
                message[1] = "* I hope you are, 'cause#  I memorized it!";
                prt[0] = 313;
                prt[1] = 313;
            }
            
            scene++;
            break;
        
        case 4:
            if (!instance_exists(obj_dialogue))
            {
                action_sprite = true;
                sprite_index = spr_martlet_book;
                image_index = 0;
                image_speed = 0.2;
                scene++;
            }
            
            break;
        
        case 5:
            if (image_index >= (image_number - 1))
            {
                image_speed = 0;
                sprite_index = spr_martlet_book_talk;
                alarm[1] = 30;
                scene++;
            }
            
            break;
    }
}

if (global.snowdin_flag[13] == 1)
{
    switch (scene)
    {
        case 1:
            scr_text();
            is_talking = true;
            
            with (msg)
            {
                sndfnt = 102;
                message[0] = "* If the Royal Guard#  doesn't know you're#  here...";
                message[1] = "* ...they won't know I#  broke protocol!";
                message[2] = "* Instead, we'll just get#  you home before any of#  them see you!";
                message[3] = "* You'll be home in time#  for dinner!";
                message[4] = "* ...";
                message[5] = "* I mean... maybe not#  TODAY'S dinner, but for#  sure A dinner!";
                message[6] = "* Anyway, we'll bypass the#  Royal Guard and plead#  your case to ASGORE!";
                message[7] = "* There's no way he can#  say no to a cute little#  face like yours!";
                message[8] = "* Meet me up ahead and#  I'll show you my plan#  to get you home!";
                prt[0] = 328;
                prt[1] = 318;
                prt[2] = 328;
                prt[3] = 328;
                prt[4] = 321;
                prt[5] = 338;
                prt[6] = 328;
                prt[7] = 318;
                prt[8] = 312;
            }
            
            scene++;
            break;
        
        case 2:
            if (!instance_exists(obj_dialogue))
            {
                can_walk = true;
                x_dest[0] = 280;
                y_dest[0] = -30;
                axis_override = "x";
                
                if (npc_arrived)
                {
                    npc_arrived = false;
                    scene++;
                }
            }
            
            break;
        
        case 3:
            if (y < 0)
            {
                if (scr_camera_move(obj_pl.x, obj_pl.y, 2))
                {
                    global.snowdin_flag[14] = 1;
                    __view_set(e__VW.Object, 0, obj_pl);
                    scr_cutscene_end();
                    scr_radio_restart();
                    instance_destroy(obj_camera);
                    instance_destroy();
                }
            }
            
            break;
    }
}

if (global.snowdin_flag[13] == 2)
{
    switch (scene)
    {
        case 1:
            scr_cutscene_start();
            action_sprite = true;
            sprite_index = spr_martlet_fly_away;
            image_speed = 0.4;
            scene++;
            break;
        
        case 2:
            if (image_index >= (image_number - 1))
            {
                image_speed = 0;
                
                if (scr_camera_move(obj_pl.x, obj_pl.y, 2))
                {
                    global.snowdin_flag[14] = 1;
                    __view_set(e__VW.Object, 0, obj_pl);
                    scr_cutscene_end();
                    scr_radio_restart();
                    instance_destroy();
                }
            }
            
            break;
    }
}
