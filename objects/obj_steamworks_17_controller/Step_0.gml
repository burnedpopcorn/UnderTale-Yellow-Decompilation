if (global.route == 2)
{
    switch (scene)
    {
        case 0:
            if (obj_pl.x < 1400)
            {
                global.cutscene = true;
                global.sworks_flag[5] = 1;
                cutscene_advance();
            }
            
            break;
        
        case 1:
            cutscene_follower_into_actor();
            break;
        
        case 2:
            cutscene_instance_create(obj_pl.x, obj_pl.y, obj_player_npc);
            break;
        
        case 3:
            cutscene_npc_walk(1168, 1300, 520, 3, "x", "left");
            scene++;
            break;
        
        case 4:
            cutscene_npc_walk(actor_follower, 1300, 560, 3, "x", "left");
            break;
        
        case 5:
            cutscene_audio_fade(obj_radio.current_song, 0, 600, 0.25, false, false);
            break;
        
        case 6:
            cutscene_wait(1);
            break;
        
        case 7:
            cutscene_dialogue();
            
            with (msg)
            {
                talker[0] = 1161;
                message[0] = "* Ugh, it's a dead end.";
                prt[0] = 368;
            }
            
            break;
        
        case 8:
            cutscene_wait(0.5);
            break;
        
        case 9:
            cutscene_npc_direction(actor_follower, "up");
            break;
        
        case 10:
            cutscene_npc_direction(1168, "down");
            break;
        
        case 11:
            cutscene_dialogue();
            
            with (msg)
            {
                talker[0] = 1161;
                message[0] = "* It looks like we're#  gonna have to-";
                prt[0] = 394;
                skippable = false;
                
                if (cutoff == string_length(message[message_current]))
                {
                    other.scene++;
                    global.dialogue_open = false;
                }
            }
            
            break;
        
        case 12:
            cutscene_npc_direction(actor_follower, "left");
            break;
        
        case 13:
            cutscene_npc_direction(1168, "left");
            break;
        
        case 14:
            cutscene_sfx_play(325, 1);
            break;
        
        case 15:
            cutscene_wait(0.5);
            break;
        
        case 16:
            cutscene_instance_create(1100, 480, obj_steamworks_manta);
            break;
        
        case 17:
            obj_steamworks_manta.move_in_direction = "right";
            cutscene_advance();
            break;
        
        case 18:
            with (obj_steamworks_manta)
            {
                if (x > (obj_player_npc.x - 100))
                {
                    obj_player_npc.npc_direction = "up";
                    other.actor_follower.npc_direction = "up";
                }
                
                if (manta_state == 0 && place_meeting(x, y, obj_steamworks_manta_checkpoint))
                    other.scene++;
            }
            
            break;
        
        case 19:
            cutscene_npc_walk(actor_follower, 1340, 520, 3, "x", "up");
            break;
        
        case 20:
            cutscene_wait(0.25);
            break;
        
        case 21:
            cutscene_audio_fade(obj_radio.current_song, 1, 600, 0.75, false, false);
            break;
        
        case 22:
            cutscene_dialogue();
            
            with (msg)
            {
                message[0] = "* The-The-The floor is lava,#  travelers!";
                message[1] = "* I am sorry to say I failed the#  game some time ago-bzzt. ";
                message[2] = "* H-However-r, you do not have#  to! I will ferry you across the#  lake-bzzt!";
            }
            
            break;
        
        case 23:
            cutscene_wait(0.5);
            break;
        
        case 24:
            cutscene_npc_direction(actor_follower, "left");
            break;
        
        case 25:
            cutscene_dialogue();
            
            with (msg)
            {
                talker[0] = 1161;
                message[0] = "* This bot doesn't seem#  malicious. That's new.";
                message[1] = "* I say we give it a go.";
                prt[0] = 393;
                prt[1] = 370;
            }
            
            break;
        
        case 26:
            cutscene_npc_direction(actor_follower, "up");
            break;
        
        case 27:
            cutscene_wait(0.25);
            break;
        
        case 28:
            cutscene_dialogue();
            
            with (msg)
            {
                message[0] = "* Thank you for your tr-trust!";
                message[1] = "* With my help, the floor will#  not be lava, it will just be#  floor-bzzt.";
            }
            
            break;
        
        case 29:
            cutscene_advance();
            instance_destroy(obj_player_npc);
            break;
        
        case 30:
            scr_actor_into_follower(1161, 1171);
            cutscene_advance();
            break;
        
        case 31:
            obj_steamworks_manta.manta_prompt = true;
            global.cutscene = false;
            instance_destroy();
            break;
    }
}
else if (global.route == 1)
{
    switch (scene)
    {
        case 0:
            if (obj_pl.x < 1400)
            {
                global.cutscene = true;
                global.sworks_flag[5] = 1;
                cutscene_advance();
            }
            
            break;
        
        case 1:
            cutscene_instance_create(obj_pl.x, obj_pl.y, obj_player_npc);
            break;
        
        case 2:
            cutscene_npc_walk(1168, 1300, 520, 3, "x", "left");
            scene++;
            break;
        
        case 3:
            cutscene_audio_fade(obj_radio.current_song, 0, 600, 0.25, false, false);
            break;
        
        case 4:
            cutscene_wait(1);
            break;
        
        case 5:
            cutscene_sfx_play(325, 1);
            break;
        
        case 6:
            cutscene_wait(0.5);
            break;
        
        case 7:
            cutscene_instance_create(1100, 480, obj_steamworks_manta);
            break;
        
        case 8:
            obj_steamworks_manta.move_in_direction = "right";
            cutscene_advance();
            break;
        
        case 9:
            with (obj_steamworks_manta)
            {
                if (x > (obj_player_npc.x - 100))
                    obj_player_npc.npc_direction = "up";
                
                if (manta_state == 0 && place_meeting(x, y, obj_steamworks_manta_checkpoint))
                {
                    instance_destroy(obj_player_npc);
                    other.scene++;
                }
            }
            
            break;
        
        case 10:
            cutscene_audio_fade(obj_radio.current_song, 1, 600, 0.75, false, false);
            break;
        
        case 11:
            cutscene_dialogue();
            
            with (msg)
            {
                message[0] = "* The-The-The floor is lava,#  traveler!";
                message[1] = "* I am sorry to say I failed the#  game some time ago-bzzt. ";
                message[2] = "* H-However-r, you do not have#  to! I will ferry you across the#  lake-bzzt!";
            }
            
            break;
        
        case 12:
            obj_steamworks_manta.manta_prompt = true;
            scene++;
            break;
        
        case 13:
            global.cutscene = false;
            instance_destroy();
            break;
    }
}
else if (global.route == 3)
{
    switch (scene)
    {
        case 0:
            if (obj_pl.x < 1400)
            {
                global.cutscene = true;
                global.sworks_flag[5] = 1;
                cutscene_advance();
            }
            
            break;
        
        case 1:
            cutscene_instance_create(obj_pl.x, obj_pl.y, obj_player_npc);
            break;
        
        case 2:
            cutscene_npc_walk(1168, 1300, 520, 3, "x", "left");
            scene++;
            break;
        
        case 3:
            cutscene_audio_fade(obj_radio.current_song, 0, 600, 0.25, false, false);
            break;
        
        case 4:
            cutscene_wait(1);
            break;
        
        case 5:
            cutscene_sfx_play(325, 1);
            break;
        
        case 6:
            cutscene_wait(0.5);
            break;
        
        case 7:
            cutscene_instance_create(1100, 480, obj_steamworks_manta);
            break;
        
        case 8:
            obj_steamworks_manta.move_in_direction = "right";
            cutscene_advance();
            break;
        
        case 9:
            with (obj_steamworks_manta)
            {
                if (x > (obj_player_npc.x - 100))
                    obj_player_npc.npc_direction = "up";
                
                if (manta_state == 0 && place_meeting(x, y, obj_steamworks_manta_checkpoint))
                {
                    instance_destroy(obj_player_npc);
                    other.scene++;
                }
            }
            
            break;
        
        case 10:
            cutscene_audio_fade(obj_radio.current_song, 1, 600, 0.75, false, false);
            break;
        
        case 11:
            cutscene_dialogue();
            
            with (msg)
            {
                message[0] = "* The-The-The floor is lava,#  traveler!";
                message[1] = "* I am sorry to say I failed the#  game some time ago-bzzt. ";
                message[2] = "* H-However-r, you do not have#  to! I will ferry you across the#  lake-bzzt!";
            }
            
            break;
        
        case 12:
            obj_steamworks_manta.manta_prompt = true;
            scene++;
            break;
        
        case 13:
            global.cutscene = false;
            instance_destroy();
            break;
    }
}
