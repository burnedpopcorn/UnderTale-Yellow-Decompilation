if (live_call())
    return global.live_result;

switch (scene)
{
    case 0:
        if (obj_pl.x < 400)
        {
            instance_create(obj_pl.x, obj_pl.y, obj_player_npc);
            cutscene_advance();
        }
        
        break;
    
    case 1:
        cutscene_npc_walk(obj_player_npc, obj_martlet_npc.x, obj_pl.y, 3, "x", "up");
        break;
    
    case 2:
        if (cutscene_wait(1.5))
            cutscene_advance(2.5);
        
        break;
    
    case 2.5:
        if (cutscene_npc_walk(obj_player_npc, obj_martlet_npc.x, obj_martlet_npc.y + 60, 1, "x", "up"))
            cutscene_advance(3);
        
        break;
    
    case 3:
        cutscene_camera_move(obj_martlet_npc.x, 300, 1);
        camera_set_view_speed(view_camera[0], -1, -1);
        break;
    
    case 4:
        cutscene_wait(0.5);
        break;
    
    case 5:
        cutscene_instance_create(obj_martlet_npc.x, obj_martlet_npc.y - 45, obj_cutscene_ex);
        break;
    
    case 6:
        cutscene_wait(1);
        break;
    
    case 7:
        cutscene_npc_direction(obj_martlet_npc, "down");
        instance_destroy(obj_cutscene_ex);
        break;
    
    case 8:
        cutscene_wait(0.5);
        break;
    
    case 9:
        cutscene_dialogue();
        
        with (msg)
        {
            talker[0] = obj_martlet_npc;
            position = 0;
            message[0] = "* You made it! Great!";
            prt[0] = spr_martlet_head_regular;
        }
        
        break;
    
    case 10:
        cutscene_wait(0.5);
        break;
    
    case 11:
        cutscene_npc_direction(obj_martlet_npc, "up");
        break;
    
    case 12:
        cutscene_camera_move(obj_martlet_npc.x, 260, 1);
        camera_set_view_speed(view_camera[0], -1, -1);
        break;
    
    case 13:
        cutscene_wait(0.5);
        break;
    
    case 14:
        cutscene_dialogue();
        
        with (msg)
        {
            talker[0] = obj_martlet_npc;
            message[0] = "* What a view...";
            message[1] = "* That large facility in#  front of us is the#  CORE...";
            message[2] = "* ...The main source of#  power for the#  Underground.";
            prt[0] = spr_martlet_head_regular;
            prt[1] = spr_martlet_head_moderate;
            prt[2] = spr_martlet_head_moderate;
        }
        
        break;
    
    case 15:
        cutscene_npc_walk(obj_player_npc, obj_martlet_npc.x, obj_martlet_npc.y + 30, 3, "x", "up", -4, 180, 300);
        break;
    
    case 16:
        cutscene_wait(1.75);
        break;
    
    case 17:
        if (cutscene_dialogue())
            cutscene_advance(17.3);
        
        with (msg)
        {
            talker[0] = obj_martlet_npc;
            message[0] = "* Behind that is New#  Home. The capital city.";
            message[1] = "* I asked around and was#  told Ceroba and Starlo#  headed there.";
            message[2] = "* Guess she ran the#  opposite way of the Lab#  to juke her pursuer?";
            message[3] = "* The two couldn't have#  gotten far, I'm positive#  we'll find them!";
            message[4] = "* We'll...";
            prt[0] = spr_martlet_head_wondering;
            prt[1] = spr_martlet_head_moderate;
            prt[2] = spr_martlet_head_questioning;
            prt[3] = spr_martlet_head_determined;
            prt[4] = spr_martlet_head_downer;
            
            if (message_current == 4)
            {
                obj_martlet_npc.npc_direction = "left";
                message_timer = 30;
                skippable = false;
            }
        }
        
        break;
    
    case 17.3:
        if (cutscene_wait(1))
        {
            cutscene_advance(17.6);
            obj_martlet_npc.npc_direction = "up";
        }
        
        break;
    
    case 17.6:
        if (cutscene_dialogue())
            cutscene_advance(18);
        
        with (msg)
        {
            talker[0] = obj_martlet_npc;
            message[0] = "* Whew, it's all setting#  in now.";
            message[1] = "* This is like... super#  intimidating, right? Not#  just me?";
            prt[0] = spr_martlet_head_sad;
            prt[1] = spr_martlet_head_downer;
        }
        
        break;
        break;
    
    case 18:
        cutscene_wait(0.5);
        break;
    
    case 19:
        cutscene_npc_direction(obj_martlet_npc, "left");
        break;
    
    case 20:
        cutscene_wait(1);
        break;
    
    case 21:
        if (cutscene_dialogue())
            cutscene_advance(21.2);
        
        with (msg)
        {
            talker[0] = obj_martlet_npc;
            message[0] = "* ...";
            message[1] = "* I don't know when I'll#  get another chance so#  I'll say it now:";
            message[2] = "* You are a kind soul.#  One of the best I've#  met.";
            message[3] = "* Left and right you've#  been beaten and bruised,#  but you stay vigilant.";
            message[4] = "* You defuse situations#  and mend#  relationships...";
            message[5] = "* ...A far cry from what#  I was taught growing up.";
            message[6] = "* Royal Guards are told#  ad nauseum that humans#  are the enemy.";
            message[7] = "* I only ever heard#  stories of war and our#  Underground imprisonment.";
            message[8] = "* But you're different.";
            message[9] = "* If you could change my#  mind on humans, I know#  you can ASGORE's!";
            message[10] = "* After we diffuse the#  Ceroba situation,";
            message[11] = "* We'll march right up to#  that Castle, you and me!";
            message[12] = "* And then... Well,#  you'll be on your way.";
            message[13] = "* But don't worry about#  me! ";
            message[14] = "* When Monsterkind is#  freed, we'll meet again#  on the Surface!";
            message[15] = "* By then, you might be#  all grown up. Wouldn't#  that be funny?";
            message[16] = "* Heh...";
            message[17] = "* ...";
            prt[0] = spr_martlet_head_sad;
            prt[1] = spr_martlet_head_downer;
            prt[2] = spr_martlet_head_melancholic;
            prt[3] = spr_martlet_head_melancholic;
            prt[4] = spr_martlet_head_melancholic;
            prt[5] = spr_martlet_head_sad;
            prt[6] = spr_martlet_head_downer;
            prt[7] = spr_martlet_head_nervous;
            prt[8] = spr_martlet_head_melancholic;
            prt[9] = spr_martlet_head_regular;
            prt[10] = spr_martlet_head_regular;
            prt[11] = spr_martlet_head_content;
            prt[12] = spr_martlet_head_melancholic;
            prt[13] = spr_martlet_head_content;
            prt[14] = spr_martlet_head_regular;
            prt[15] = spr_martlet_head_content;
            prt[16] = spr_martlet_head_regular;
            prt[17] = spr_martlet_head_moderate;
            
            switch (message_current)
            {
                case 1:
                    obj_player_npc.npc_direction = "right";
                    break;
                
                case 3:
                    if (!audio_is_playing(mus_acquittal))
                        cutscene_music = audio_play_sound(mus_acquittal, 1, 1);
                    
                    break;
                
                case 16:
                    scr_audio_fade_out(cutscene_music, 1000);
                    break;
            }
        }
        
        break;
    
    case 21.2:
        if (cutscene_wait(1))
            cutscene_advance(21.4);
        
        break;
    
    case 21.4:
        if (cutscene_dialogue())
            cutscene_advance(21.6);
        
        with (msg)
        {
            talker[0] = obj_martlet_npc;
            message[0] = "* Point is, I'm glad you#  hopped on my raft.";
            message[1] = "* ...";
            prt[0] = spr_martlet_head_melancholic;
            prt[1] = spr_martlet_head_sad;
            
            switch (message_current)
            {
                case 1:
                    obj_martlet_npc.npc_direction = "up";
                    skippable = false;
                    message_timer = 30;
                    break;
            }
        }
        
        break;
    
    case 21.6:
        if (cutscene_wait(1))
            cutscene_advance(21.8);
        
        break;
    
    case 21.8:
        if (cutscene_dialogue())
        {
            cutscene_advance(22);
            obj_player_npc.xstart = obj_player_npc.x;
        }
        
        with (msg)
        {
            talker[0] = obj_martlet_npc;
            message[0] = "* Okay... We need to get#  moving.";
            message[1] = "* That way. West New#  Home.";
            message[2] = "* The elevator downstairs#  should take us straight#  there.";
            message[3] = "* After that... I'm not#  sure.";
            message[4] = "* I'd call for backup in#  a scenario like this but#  we're on our own. ";
            message[5] = "* Outlaws.";
            message[6] = "* So, \"partner in crime,\"#  you ready?";
            prt[0] = spr_martlet_head_moderate;
            prt[1] = spr_martlet_head_moderate;
            prt[2] = spr_martlet_head_regular;
            prt[3] = spr_martlet_head_sad;
            prt[4] = spr_martlet_head_sad;
            prt[5] = spr_martlet_head_moderate;
            prt[6] = spr_martlet_head_regular;
            
            switch (message_current)
            {
                case 0:
                    obj_martlet_npc.npc_direction = "left";
                    skippable = true;
                    message_timer = -1;
                    break;
                
                case 1:
                    global.hotland_flag[1] = 1;
                    scr_radio_restart();
                    obj_martlet_npc.npc_direction = "up";
                    obj_player_npc.npc_direction = "up";
                    break;
                
                case 6:
                    obj_martlet_npc.npc_direction = "left";
                    obj_player_npc.npc_direction = "right";
                    break;
            }
        }
        
        break;
    
    case 22:
        obj_player_npc.x = -1000;
        
        if (cutscene_npc_action_sprite(obj_martlet_npc, spr_rooftop_fistbump, 1, false))
            obj_player_npc.x = obj_player_npc.xstart;
        
        break;
    
    case 23:
        cutscene_wait(0.5);
        break;
    
    case 24:
        cutscene_dialogue();
        
        with (msg)
        {
            talker[0] = obj_martlet_npc;
            message[0] = "* Let's stop Ceroba!";
            message[1] = "* After you.";
            prt[0] = spr_martlet_head_determined;
            prt[1] = spr_martlet_head_regular;
        }
        
        break;
    
    case 25:
        cutscene_wait(1);
        break;
    
    case 26:
        cutscene_npc_walk(obj_player_npc, obj_player_npc.x, 340, 3, "y", "down");
        break;
    
    case 27:
        cutscene_npc_walk(obj_martlet_npc, obj_player_npc.x, obj_player_npc.y - 20, 3, "x", "down");
        break;
    
    case 28:
        obj_pl.direction = 270;
        actor_follower = obj_martlet_npc;
        global.party_member = obj_martlet_follower;
        obj_hotland_roof_light_controller_follower.overlay_draw_enabled_follower = true;
        obj_hotland_roof_light_controller_follower.overlay_draw_alpha_follower = 1;
        cutscene_actor_into_follower();
        obj_hotland_roof_light_controller_follower.depth = obj_pl.depth + 1;
        obj_martlet_follower.depth = obj_pl.depth + 2;
        break;
    
    case 29:
        cutscene_camera_move(obj_pl.x, obj_pl.y, 3);
        break;
    
    case 30:
        cutscene_camera_reset();
        instance_destroy(obj_player_npc);
        scr_audio_fade_out(cutscene_music, 1000);
        cutscene_end();
        break;
}
