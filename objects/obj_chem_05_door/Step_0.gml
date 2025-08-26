if (live_call())
    return global.live_result;

if (keyboard_multicheck_pressed(vk_nokey) && scr_interact())
{
    scr_text();
    
    with (msg)
    {
        if (global.route == 3)
        {
            message[0] = "* (A roadblock.)";
        }
        else
        {
            message[0] = "* (A complex lock mechanism#  blocks your exit.)";
            message[1] = "* (What could open it up?)";
        }
    }
    
    door_menu_open = true;
}

if (!global.dialogue_open && door_menu_open == true)
{
    instance_create(x, y, obj_item_use_menu);
    scr_cutscene_start();
    door_menu_open = false;
}

if (global.item_used_overworld != undefined)
{
    scr_text();
    
    with (msg)
    {
        switch (global.item_used_overworld)
        {
            default:
                message[0] = "* (You can't think of a way to#  make this work.)";
                global.cutscene = false;
                break;
            
            case "H. Acid":
                message[0] = "* (You use the ACID to ACID#  away at the DOOR.)";
                other.door_solution = "H. Acid";
                break;
        }
    }
    
    if (!global.dialogue_open)
        global.item_used_overworld = undefined;
}

if (!global.dialogue_open && door_solution != "none")
{
    switch (door_solution)
    {
        case "H. Acid":
            scene = 1;
            scr_item_remove("H. Acid");
            break;
    }
    
    door_solution = "none";
}

switch (scene)
{
    case 1:
        image_speed = 1;
        cutscene_advance();
        break;
    
    case 2:
        if (global.route != 3 && global.geno_complete[3] == false)
        {
            cutscene_instance_create(304, 125, obj_axis_npc);
            obj_axis_npc.depth = 500;
            obj_axis_npc.npc_dynamic_depth = false;
        }
        else
        {
            scr_audio_fade_out(obj_radio.current_song, 500);
            cutscene_advance();
        }
        
        break;
    
    case 3:
        if (image_index == 5)
        {
            if (!audio_is_playing(snd_puzzle_icemelt))
                audio_play_sound(snd_puzzle_icemelt, 1, 0);
        }
        
        if (image_index == 16)
        {
            if (!audio_is_playing(snd_sliding_door_open))
                audio_play_sound(snd_sliding_door_open, 1, 0);
        }
        
        if (image_index >= (image_number - 1))
        {
            image_index = image_number - 1;
            image_speed = 0;
            cutscene_advance();
            
            if (global.geno_complete[3] == true)
                cutscene_advance(34);
        }
        
        break;
    
    case 4:
        cutscene_music_start(219, 150);
        break;
    
    case 5:
        cutscene_dialogue();
        
        with (msg)
        {
            talker[0] = obj_axis_npc;
            message[0] = "* HELLO.";
            message[1] = "* I HAD TROUBLE LOCATING#  YOU AFTER OUR LAST#  ENCOUNTER.";
            message[2] = "* WORRY NO MORE, I HAVE#  LOCATED YOU.";
            message[3] = "* MY LAST PLAN DID NOT#  WORK SO I WILL TRY#  SOMETHING NEW.";
            prt[0] = spr_portrait_axis_normal;
            prt[1] = spr_portrait_axis_normal;
            prt[2] = spr_portrait_axis_normal;
            prt[3] = spr_portrait_axis_normal;
        }
        
        break;
    
    case 6:
        cutscene_npc_walk(obj_axis_npc, obj_axis_npc.x, 170, 3, "x", "down");
        cutscene_advance();
        break;
    
    case 7:
        cutscene_sfx_play(snd_monster_damage_hit_critical, 1);
        break;
    
    case 8:
        cutscene_instance_create(obj_pl.x, obj_pl.y, obj_player_npc);
        break;
    
    case 9:
        with (obj_player_npc)
        {
            path_start(pt_steamworks_chem_05_player_knockback, 6, path_action_stop, true);
            path_change_point(pt_steamworks_chem_05_player_knockback, 0, obj_pl.x, obj_pl.y, 100);
        }
        
        cutscene_advance();
        break;
    
    case 10:
        cutscene_npc_set_sprites(obj_axis_npc, spr_axis_up, spr_axis_right, spr_axis_hold_acid, spr_axis_left, spr_axis_up, spr_axis_right, spr_axis_hold_acid, spr_axis_left);
        break;
    
    case 11:
        cutscene_wait(1.5);
        break;
    
    case 12:
        cutscene_dialogue();
        
        with (msg)
        {
            ch[1] = "No way!";
            ch[2] = "Sure!";
            talker[0] = obj_axis_npc;
            message[0] = "* I JUST FOUND THIS#  HIGHLY-CORROSIVE#  CONCOCTION.";
            message[1] = "* I WOULD LIKE TO APPLY#  IT ON YOUR SKIN.";
            message[2] = "* WILL YOU BE MY TEST#  SUBJECT?";
            prt[0] = spr_portrait_axis_normal;
            prt[1] = spr_portrait_axis_normal;
            prt[2] = spr_portrait_axis_normal;
            ch_msg = 2;
            
            if (outcome == 1)
            {
                message[3] = "* WONDERFUL.";
                prt[3] = spr_portrait_axis_normal;
            }
            else if (outcome == 2)
            {
                message[3] = "* CORRECT DECISION.";
                prt[3] = spr_portrait_axis_normal;
            }
            
            message[4] = "* ALLOW ME TO TERMINATE#  THE CORK FIRST.";
            prt[4] = spr_portrait_axis_normal;
        }
        
        break;
    
    case 13:
        cutscene_wait(0.1);
        break;
    
    case 14:
        cutscene_npc_action_sprite(obj_axis_npc, spr_axis_acid_2, 6, true, 0);
        break;
    
    case 15:
        cutscene_npc_action_sprite(obj_axis_npc, spr_axis_acid_3, 1, true, 1);
        cutscene_advance();
        break;
    
    case 16:
        cutscene_wait(1.5);
        break;
    
    case 17:
        cutscene_dialogue();
        
        with (msg)
        {
            talker[0] = obj_axis_npc;
            message[0] = "* IT IS TOUGH TO OPEN#  CONTAINERS...";
            message[1] = "* ...WHEN MY ONLY POINT#  OF FORCE IS AT THE BACK#  OF MY HANDS.";
            prt[0] = spr_portrait_axis_normal;
            prt[1] = spr_portrait_axis_normal;
        }
        
        break;
    
    case 18:
        cutscene_npc_action_sprite(obj_axis_npc, spr_axis_acid_4, 1, true, 1, snd_chem_05_axis_acid_2, 0);
        cutscene_advance();
        break;
    
    case 19:
        cutscene_wait(1.5);
        break;
    
    case 20:
        cutscene_dialogue();
        
        with (msg)
        {
            talker[0] = obj_axis_npc;
            message[0] = "* ALMOST HAVE IT.";
            prt[0] = spr_portrait_axis_normal;
        }
        
        break;
    
    case 21:
        audio_stop_sound(cutscene_music);
        cutscene_npc_action_sprite(obj_axis_npc, spr_axis_acid_5, 1, true, 0, snd_chem_05_axis_acid_3, 0);
        break;
    
    case 22:
        cutscene_wait(1.5);
        break;
    
    case 23:
        cutscene_dialogue();
        
        with (msg)
        {
            talker[0] = obj_axis_npc;
            message[0] = "* [Shoot]";
            message[1] = "* DO NOT FRET, I WILL#  RETRIEVE ANOTHER TUBE-";
            prt[0] = spr_portrait_axis_normal;
            prt[1] = spr_portrait_axis_normal;
        }
        
        break;
    
    case 24:
        cutscene_instance_create(obj_axis_npc.x, obj_axis_npc.y, obj_chem_05_floor_melt);
        audio_play_sound(snd_chem_05_axis_acid_melt_ground, 1, 0);
        break;
    
    case 25:
        obj_axis_npc.sprite_index = spr_axis_acid_6;
        cutscene_advance(26);
    
    case 26:
        cutscene_wait(1.5);
        break;
    
    case 27:
        cutscene_dialogue();
        
        with (msg)
        {
            talker[0] = obj_axis_npc;
            message[0] = "* HUH.";
            message[1] = "* HOW THE TABLES TURN.";
            prt[0] = spr_portrait_axis_normal;
            prt[1] = spr_portrait_axis_normal;
        }
        
        break;
    
    case 28:
        obj_axis_npc.action_sprite = false;
        obj_axis_npc.npc_dynamic_depth = false;
        obj_axis_npc.down_sprite_idle = spr_axis_down;
        obj_axis_npc.depth = obj_chem_05_floor_melt.depth - 1;
        instance_create_depth(obj_axis_npc.x, obj_axis_npc.y - 3, obj_chem_05_floor_melt.depth - 2, obj_chem_05_floor_melt_front);
        cutscene_advance(29);
        break;
    
    case 29:
        with (obj_axis_npc)
        {
            if (image_xscale > 0.85)
                image_xscale -= 0.65;
            
            if (image_yscale < 1.15)
                image_yscale += 0.65;
            
            y -= 0.1;
            
            if (image_xscale <= 0.85 && image_yscale >= 1.15)
            {
                audio_play_sound(snd_chem_05_axis_fall, 1, 0);
                other.scene++;
            }
            
            y_previous = y;
        }
        
        break;
    
    case 30:
        with (obj_axis_npc)
        {
            if (image_xscale < 1.15)
                image_xscale -= 0.02;
            
            if (image_yscale > 0.95)
                image_yscale -= 0.02;
            
            y += 10;
            
            if (y > (y_previous + 65))
            {
                instance_destroy();
                other.scene++;
            }
        }
        
        break;
    
    case 31:
        cutscene_wait(2);
        break;
    
    case 32:
        cutscene_sfx_play(snd_undertale_thud, 0.5);
        break;
    
    case 33:
        cutscene_screenshake(1, 1);
        break;
    
    case 34:
        scr_radio_restart();
        audio_sound_gain(obj_radio.current_song, 1, 500);
        instance_destroy(obj_player_npc);
        instance_destroy(obj_chem_05_floor_melt_front);
        scr_radio_restart();
        scr_cutscene_end();
        instance_activate_object(inst_9D9DB53);
        solid = false;
        
        if (global.route == 3 || global.geno_complete[3] == true)
            global.sworks_flag[25] = 5;
        else
            global.sworks_flag[25] = 6;
        
        cutscene_advance();
        break;
}
