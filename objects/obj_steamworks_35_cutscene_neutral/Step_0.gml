switch (scene)
{
    case 0:
        if (obj_pl.x < obj_axis_npc.x)
        {
            scr_cutscene_start();
            cutscene_advance();
        }
        
        break;
    
    case 1:
        obj_pl.direction = 90;
        cutscene_sfx_play(snd_steamworks_35_axis_beep, 1);
        break;
    
    case 2:
        cutscene_wait(0.65);
        break;
    
    case 3:
        cutscene_sfx_play(snd_steamworks_35_axis_beep, 1);
        break;
    
    case 4:
        cutscene_wait(1.5);
        break;
    
    case 5:
        cutscene_dialogue();
        
        with (msg)
        {
            talker[0] = obj_axis_npc;
            color = true;
            col_modif[0] = c_fuchsia;
            message[0] = "* [MAIN POWER SOURCE NOT#  FOUND_]";
            message[1] = "* [INITIATING EMERGENCY#  BACKUP POWER_]";
            message_col[0][0] = "* [MAIN POWER SOURCE NOT#  FOUND_]";
            message_col[1][0] = "* [INITIATING EMERGENCY#  BACKUP POWER_]";
            position = 0;
        }
        
        break;
    
    case 6:
        cutscene_npc_action_sprite(obj_axis_npc, spr_axis_down_bonk_restore, 0.5, false);
        obj_axis_npc.npc_direction = "down";
        break;
    
    case 7:
        cutscene_wait(0.5);
        break;
    
    case 8:
        cutscene_music_start(219);
        break;
    
    case 9:
        cutscene_dialogue();
        
        with (msg)
        {
            talker[0] = obj_axis_npc;
            message[0] = "* H-H-HUMA-N.";
            message[1] = "* Y-YOU HAVE ANGERED ME#  GREATLY.";
            message[2] = "* I HAVE HAD IT WITH YOU#  DOING NOTHING AS I FAIL#  OVER AND OVER.";
            message[3] = "* DO YOU KNOW HOW HARD IT#  WAS TO GET THE ACID OUT#  OF MY STEEL?";
            message[4] = "* I HAD TO PUT MYSELF IN#  A WASHING MACHINE. IT#  WAS QUITE DIZZYING.";
            message[5] = "* THOUGH I DO FEEL, AS#  THE KIDS SAY: \"FRESH AS#  HELL.\"";
            prt[0] = spr_portrait_axis_normal;
            prt[1] = spr_portrait_axis_normal;
            prt[2] = spr_portrait_axis_normal;
            prt[3] = spr_portrait_axis_normal;
            prt[4] = spr_portrait_axis_normal;
            prt[5] = spr_portrait_axis_normal;
            position = 0;
        }
        
        break;
    
    case 10:
        cutscene_wait(1);
        break;
    
    case 11:
        cutscene_dialogue();
        
        with (msg)
        {
            talker[0] = obj_axis_npc;
            message[0] = "* ...";
            message[1] = "* ANYWAY.";
            message[2] = "* IF YOU CANNOT TELL, I#  AM [ticked] OFF AND OUT#  OF NON-LETHAL OPTIONS.";
            message[3] = "* THAT, AND THIS FURNACE#  HAS A NICE \"TIME TO DIE\"#  AESTHETIC TO IT.";
            message[4] = "* SO PREPARE YOURSELF. I#  AM ATTACKING NOW.";
            prt[0] = spr_portrait_axis_normal;
            prt[1] = spr_portrait_axis_normal;
            prt[2] = spr_portrait_axis_normal;
            prt[3] = spr_portrait_axis_normal;
            prt[4] = spr_portrait_axis_normal;
            position = 0;
        }
        
        break;
    
    case 12:
        cutscene_wait(0.5);
        break;
    
    case 13:
        audio_pause_sound(cutscene_music);
        cutscene_battle_initiate("axis", true, false);
        obj_heart_initiate_battle.flash_delay = 5;
        obj_pl.image_alpha = 1;
        break;
    
    case 14:
        if (instance_exists(obj_heart_initiate_battle_2))
        {
            instance_destroy(obj_blackout_overworld_2);
            instance_destroy(obj_heart_initiate_battle_2);
            cutscene_advance();
        }
        
        break;
    
    case 15:
        cutscene_wait(2.5);
        break;
    
    case 16:
        cutscene_dialogue();
        
        with (msg)
        {
            talker[0] = obj_axis_npc;
            message[0] = "* WHAT.";
            message[1] = "* MY PROGRAMMING IS#  PREVENTING ME FROM#  ATTACK.";
            message[2] = "* IT SAYS YOU ARE NOT A#  CURRENT THREAT OR#  RESISTING ARREST.";
            message[3] = "* UGH, [forget] THIS.";
            message[4] = "* HERE, I WILL MAKE YOU A#  THREAT.";
            prt[0] = spr_portrait_axis_normal;
            prt[1] = spr_portrait_axis_normal;
            prt[2] = spr_portrait_axis_normal;
            prt[3] = spr_portrait_axis_normal;
            prt[4] = spr_portrait_axis_normal;
            position = 0;
            
            if (message_current == 1)
                audio_resume_sound(other.cutscene_music);
        }
        
        break;
    
    case 17:
        cutscene_npc_walk(obj_axis_npc, obj_steamworks_35_trashcan.x + 20, obj_steamworks_35_trashcan.y - 1, 2, "x", "left");
        break;
    
    case 18:
        cutscene_wait(0.5);
        cutscene_advance(18.5);
        break;
    
    case 18.5:
        if (cutscene_npc_action_sprite(obj_axis_npc, spr_steamworks_36_axis_open_trash, 1, true))
        {
            obj_steamworks_35_trashcan.image_index = 1;
            obj_axis_npc.action_sprite = false;
            cutscene_npc_set_sprites(obj_axis_npc, spr_axis_up, spr_steamworks_36_axis_walk_right, spr_steamworks_36_axis_walk_down, spr_steamworks_36_axis_walk_left, spr_axis_up, spr_steamworks_36_axis_walk_right, spr_steamworks_36_axis_walk_down, spr_steamworks_36_axis_walk_left);
            cutscene_advance(19);
        }
        
        break;
    
    case 19:
        cutscene_dialogue();
        
        with (msg)
        {
            talker[0] = obj_axis_npc;
            message[0] = "* HOLD THIS, IT SUITS#  YOU.";
            prt[0] = spr_portrait_axis_normal;
        }
        
        break;
    
    case 20:
        cutscene_npc_walk(obj_axis_npc, obj_pl.x, clamp(obj_pl.y - 30, 90, 10000), 3, "x", "down");
        break;
    
    case 21:
        cutscene_wait(0.5);
        break;
    
    case 22:
        cutscene_sfx_play(snd_mart_impact_2, 1);
        break;
    
    case 23:
        instance_create_depth(obj_pl.x, obj_pl.y, obj_pl.depth, obj_player_npc);
        obj_player_npc.npc_direction = "up";
        obj_player_npc.up_sprite_idle = spr_pl_up_trash;
        cutscene_npc_set_sprites(obj_axis_npc, spr_axis_up, spr_axis_right, spr_axis_down, spr_axis_left, spr_axis_up, spr_axis_right, spr_axis_down, spr_axis_left);
        break;
    
    case 24:
        cutscene_npc_walk(obj_axis_npc, obj_pl.x, clamp(obj_pl.y - 40, 90, 10000), 3, "y", "down");
        break;
    
    case 25:
        cutscene_dialogue();
        
        with (msg)
        {
            talker[0] = obj_axis_npc;
            message[0] = "* THERE. NOW YOU HAVE A#  DRAWN \"WEAPON.\"";
            message[1] = "* LOOPHOLES ARE#  WONDERFUL, ARE THEY NOT?";
            message[2] = "* YOUR CRIMES END HERE,#  HUMAN.";
            prt[0] = spr_portrait_axis_normal;
            prt[1] = spr_portrait_axis_normal;
            prt[2] = spr_portrait_axis_normal;
            position = 0;
            
            if (message_current == 2)
                scr_audio_fade_out(other.cutscene_music, 650);
        }
        
        break;
    
    case 26:
        cutscene_advance();
        break;
    
    case 27:
        cutscene_battle_initiate("axis", true, true);
        cutscene_advance(27.5);
        break;
    
    case 28:
        audio_stop_all();
        scr_cutscene_start();
        obj_pl.x = 700;
        obj_pl.y = 140;
        obj_pl.direction = 90;
        obj_axis_npc.action_sprite = false;
        
        if (cutscene_wait(1))
            cutscene_advance(29);
        
        break;
    
    case 29:
        cutscene_dialogue();
        
        with (msg)
        {
            talker[0] = obj_axis_npc;
            message[0] = "* I APOLOGIZE FOR#  TORMENTING YOU AND#  CALLING YOU NAMES.";
            message[1] = "* MY CODED PROTOCOL#  BLINDED ME FROM#  SOMETHING...";
            message[2] = "* SOMETHING CALLED...#  \"BASIC DECENCY.\"";
            message[3] = "* IT IS NOT EASY TO HAVE#  NO CONTROL OVER#  EMOTIONS, YOU KNOW.";
            message[4] = "* TO BE HONEST...";
            message[5] = "* WHEN I LOOK AT YOU, I#  GROW A LITTLE ENVIOUS.";
            message[6] = "* HUMANS AND MONSTERS,#  WHILE DIFFERENT, DO#  SHARE ONE THING.";
            message[7] = "* INDIVIDUALITY.";
            message[8] = "* YOU HAVE THE FREEDOM TO#  BE UNIQUE. TO CHOOSE.";
            message[9] = "* BOTS LIKE ME ARE JUST#  ONE MODEL AMONG MANY.";
            message[10] = "* THOUGH, THAT DOES NOT#  SEEM LIKE SUCH THE CASE#  ANYMORE.";
            message[11] = "* THE STEAMWORKS HAVE#  SEEN BETTER DAYS, ALONG#  WITH ITS BOTS.";
            message[12] = "* BUT I BELIEVE WE CAN#  MAKE IT WORK.";
            message[13] = "* IF WE LEFT THIS PLACE,#  WE WOULD ONLY CAUSE#  ISSUES AND BE SHUT DOWN.";
            message[14] = "* BUT HERE, WE DO HAVE A#  FORM OF FREEDOM.";
            message[15] = "* THE FREEDOM TO BE#  FLAWED.";
            message[16] = "* ALL THAT TO SAY, I#  WOULD NOT INVITE ANY#  OTHER HUMANS HERE.";
            message[17] = "* SOMEONE WILL JUMP THEM.";
            prt[0] = spr_portrait_axis_normal;
            prt[1] = spr_portrait_axis_normal;
            prt[2] = spr_portrait_axis_normal;
            prt[3] = spr_portrait_axis_normal;
            prt[4] = spr_portrait_axis_normal;
            prt[5] = spr_portrait_axis_normal;
            prt[6] = spr_portrait_axis_normal;
            prt[7] = spr_portrait_axis_normal;
            prt[8] = spr_portrait_axis_normal;
            prt[9] = spr_portrait_axis_normal;
            prt[10] = spr_portrait_axis_normal;
            prt[11] = spr_portrait_axis_normal;
            prt[12] = spr_portrait_axis_normal;
            prt[13] = spr_portrait_axis_normal;
            prt[14] = spr_portrait_axis_normal;
            prt[15] = spr_portrait_axis_normal;
            prt[16] = spr_portrait_axis_normal;
            prt[17] = spr_portrait_axis_normal;
            
            switch (message_current)
            {
                case 1:
                    if (other.cutscene_music == 0)
                        other.cutscene_music = audio_play_sound(mus_well_be_okay, 1, 1);
                    
                    break;
                
                case 3:
                    obj_axis_npc.npc_direction = "right";
                    break;
                
                case 5:
                    obj_axis_npc.npc_direction = "down";
                    break;
                
                case 11:
                    obj_axis_npc.npc_direction = "up";
                    break;
                
                case 14:
                    obj_axis_npc.npc_direction = "down";
                    break;
            }
        }
        
        break;
    
    case 30:
        cutscene_wait(1);
        break;
    
    case 31:
        cutscene_sfx_play(snd_steamworks_35_axis_beep, 1);
        break;
    
    case 32:
        cutscene_wait(1);
        break;
    
    case 33:
        cutscene_sfx_play(snd_steamworks_35_axis_beep, 1);
        break;
    
    case 34:
        cutscene_wait(1);
        break;
    
    case 35:
        cutscene_dialogue();
        
        with (msg)
        {
            color = true;
            message_col[0][0] = "";
            col_modif[0] = c_fuchsia;
            talker[0] = obj_axis_npc;
            message[0] = "  BACKUP BATTERY EXTREMELY LOW.#  PLEASE RECHARGE.";
            message_col[0][0] = "  BACKUP BATTERY EXTREMELY LOW.#  PLEASE RECHARGE.";
            message[1] = "* OH, SUPPOSE I SHOULD GO#  DO THAT.";
            message[2] = "* RECHARGING WILL RESTORE#  ME BACK TO MY FACTORY#  STATE BUT...";
            prt[1] = spr_portrait_axis_normal;
            prt[2] = spr_portrait_axis_normal;
            message[3] = "  ADDED \"HATTED HUMAN\" TO#  \"AUTHORIZED\" LIST.";
            message_col[3][0] = message[3];
            message[4] = "* THERE. NOW I WILL NOT#  ATTEMPT APPREHENSION#  NEXT TIME WE MEET.";
            message[5] = "* HAVE A PLEASANT#  JOURNEY, HUMAN.";
            prt[4] = spr_portrait_axis_normal;
            prt[5] = spr_portrait_axis_normal;
        }
        
        break;
    
    case 36:
        audio_sound_gain(cutscene_music, 0, 900);
        cutscene_npc_walk(obj_axis_npc, 760, obj_axis_npc.y, 2, "y", "left", 1031, 880, 140);
        
        if (x > (obj_pl.x + 3))
            obj_pl.direction = 0;
        
        break;
    
    case 37:
        cutscene_wait(2.5);
        break;
    
    case 38:
        audio_sound_gain(cutscene_music, 1, 300);
        cutscene_npc_set_sprites(obj_axis_npc, spr_axis_up, spr_axis_right, spr_axis_down, spr_axis_right, spr_axis_up, spr_axis_right, spr_axis_down, spr_axis_right);
        break;
    
    case 39:
        cutscene_npc_walk(obj_axis_npc, 790, 140, 5, "x", "right");
        break;
    
    case 40:
        cutscene_dialogue();
        
        with (msg)
        {
            talker[0] = obj_axis_npc;
            message[0] = "* OH, ONE MORE THING.";
            message[1] = "* LEAVE THE POWER ON WHEN#  YOU EXIT, WILL YOU?";
            message[2] = "* I LIKE LIVING. ";
            message[3] = "* THANKS.";
            prt[0] = spr_portrait_axis_normal;
            prt[1] = spr_portrait_axis_normal;
            prt[2] = spr_portrait_axis_normal;
            prt[3] = spr_portrait_axis_normal;
        }
        
        break;
    
    case 41:
        scr_audio_fade_out(cutscene_music, 300);
        cutscene_npc_walk(obj_axis_npc, 880, 140, 5, "y", "left");
        break;
    
    case 42:
        cutscene_wait(0.5);
        break;
    
    case 43:
        instance_destroy(obj_axis_npc);
        global.sworks_flag[31] = 2;
        cutscene_end();
        break;
}
