var party_member_present_martlet;

if (live_call())
    return global.live_result;

if (keyboard_multicheck_pressed(0) && scr_interact())
    object_is_active = true;

if (object_is_active == false)
    exit;

party_member_present_martlet = false;

if (global.party_member == 1170)
    party_member_present_martlet = true;

if (global.dunes_flag[18] < 2)
{
    if (party_member_present_martlet == false)
    {
        scr_text();
        
        with (msg)
        {
            if (global.dunes_flag[18] == 0)
            {
                ch_msg = 1;
                ch[1] = "Yes";
                ch[2] = "No";
                message[0] = "* (A wishing well with a large#  amount of G inside.)";
                message[1] = "* (Take the G?)";
                message[2] = "* (You got 5G!)";
                message[3] = "* (You also retracted many#  monster wishes.)";
                
                if (outcome == 1)
                {
                    global.dunes_flag[18] = 1;
                    global.player_gold += 50;
                    other.object_is_active = false;
                    audio_play_sound(snd_success, 1, 0);
                }
                
                if (outcome == 2)
                {
                    global.dialogue_open = false;
                    other.object_is_active = false;
                }
            }
            else if (global.dunes_flag[18] == 1)
            {
                message[0] = "* (There is only water.)";
                other.object_is_active = false;
            }
        }
    }
    else if (party_member_present_martlet == true && cutscene_event == 0)
    {
        scr_text();
        
        with (msg)
        {
            sndfnt = 102;
            ch_msg = 2;
            ch[1] = "Yes";
            ch[2] = "No";
            talker[0] = 1170;
            message[0] = "* Well well well, what do#  we have here?";
            message[1] = "* Aw, I left all my G#  at home.";
            message[2] = "* Would you lend me one?";
            prt[0] = 337;
            prt[1] = 338;
            prt[2] = 328;
            
            if (outcome == 1)
            {
                message[3] = "* Thank you!!";
                prt[3] = 318;
                scr_cutscene_start();
                other.cutscene_event = 1;
            }
            
            if (outcome == 2)
            {
                message[3] = "* Oh, alright.";
                message[4] = "* I knew I shoulda grabbed#  some money before#  leaving Snowdin.";
                prt[3] = 323;
                prt[4] = 321;
                other.object_is_active = false;
            }
        }
    }
    
    switch (cutscene_event)
    {
        case 1:
            if (global.dialogue_open)
                exit;
            
            with (instance_create(obj_martlet_follower.x, obj_martlet_follower.y, obj_martlet_npc))
            {
                axis_override = "y";
                
                if (obj_martlet_follower.y < (obj_wishing_well.y + 10))
                {
                    x_dest[0] = 260;
                    y_dest[0] = 320;
                    end_direction = "down";
                }
                else
                {
                    x_dest[0] = 260;
                    y_dest[0] = 360;
                    end_direction = "up";
                }
                
                can_walk = true;
                walk_collider = -4;
            }
            
            with (instance_create(obj_pl.x, obj_pl.y, obj_player_npc))
            {
                if (x > obj_wishing_well.x)
                {
                    end_direction = "left";
                    x_dest[0] = 300;
                }
                else
                {
                    end_direction = "right";
                    x_dest[0] = 220;
                }
                
                axis_override = "x";
                
                if (obj_martlet_follower.y < (obj_wishing_well.y + 10))
                    y_dest[0] = 320;
                else
                    y_dest[0] = 360;
                
                can_walk = true;
                walk_collider = -4;
            }
            
            obj_martlet_follower.image_alpha = 0;
            cutscene_event++;
            break;
        
        case 2:
            if (obj_martlet_npc.npc_arrived && obj_player_npc.npc_arrived)
            {
                timer = 20;
                cutscene_event++;
            }
            
            break;
        
        case 3:
            if (!scr_timer())
                exit;
            
            scr_text();
            
            with (msg)
            {
                sndfnt = 102;
                talker[0] = 1164;
                message[0] = "* Hmmm...";
                message[1] = "* I wish...";
                message[2] = "* That Clover will make it#  back home safely!";
                prt[0] = 338;
                prt[1] = 321;
                prt[2] = 313;
            }
            
            if (!global.dialogue_open)
            {
                cutscene_event++;
                timer = 20;
            }
            
            break;
        
        case 4:
            if (!scr_timer())
                exit;
            
            cutscene_event++;
            timer = 30;
            audio_play_sound(snd_splash, 1, 0);
            break;
        
        case 5:
            if (!scr_timer())
                exit;
            
            scr_text();
            
            with (msg)
            {
                sndfnt = 102;
                talker[0] = 1164;
                message[0] = "* Now you have me, AND a#  wish on your side!";
                prt[0] = 312;
            }
            
            if (obj_pl.x < obj_martlet_npc.x)
                obj_martlet_npc.npc_direction = "left";
            else
                obj_martlet_npc.npc_direction = "right";
            
            obj_pl.direction = 0;
            cutscene_event++;
            break;
        
        case 6:
            if (!global.dialogue_open)
            {
                global.dunes_flag[18] = 2;
                obj_pl.image_alpha = 1;
                
                with (obj_martlet_follower)
                {
                    image_alpha = 1;
                    x = obj_martlet_npc.x;
                    y = obj_martlet_npc.y;
                    direction = 180;
                    npc_reset = true;
                }
                
                object_is_active = false;
                scr_cutscene_end();
                instance_destroy(obj_martlet_npc);
                instance_destroy(obj_player_npc);
            }
            
            break;
    }
}
else if (global.dunes_flag[18] >= 2)
{
    scr_text();
    
    with (msg)
        message[0] = "* (A wishing well with a large#  amount of G inside.)";
    
    object_is_active = false;
}
