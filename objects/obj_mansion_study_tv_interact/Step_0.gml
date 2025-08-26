if (live_call())
    return global.live_result;

interact = 0;

if (keyboard_multicheck_pressed(vk_nokey) && scr_interact() == true)
    interact = 1;

if (ds_map_find_value(global.npc_map, npc_id) != npc_flag)
    ds_map_replace(global.npc_map, npc_id, npc_flag);

if (interact)
{
    var tape_present = scr_item_exists_check("Videotape");
    scr_text();
    
    if (!tape_present || global.dunes_flag[43] == 1)
    {
        with (msg)
        {
            message[0] = "* (An old, dusty monitor with#  nothing but static hissing at#  you.)    ";
            message[1] = "* (This only brings you unease.)";
        }
    }
    else
    {
        scene = 1;
        scr_cutscene_start();
        scr_audio_fade_out(obj_radio.current_song, 1000);
    }
}

switch (scene)
{
    case 1:
        cutscene_dialogue();
        
        with (msg)
            message[0] = "* (You load the mysterious tape#  into the slot underneath the#  screen...)";
        
        break;
    
    case 2:
        cutscene_sfx_play(snd_undertale_snap, 1);
        break;
    
    case 3:
        obj_mansion_study_overlay.can_flicker = false;
        scene++;
        break;
    
    case 4:
        cutscene_wait(1.5);
        break;
    
    case 5:
        instance_create_depth(126, 91, -1600, obj_mansion_study_tv);
        scene++;
        break;
    
    case 6:
        draw_alpha += 0.1;
        
        if (draw_alpha >= 1)
            scene++;
        
        break;
    
    case 7:
        cutscene_wait(1.5);
        break;
    
    case 8:
        obj_mansion_study_tv.sprite_index = spr_mansion_study_tv_blue_screen;
        scene++;
        break;
    
    case 9:
        if (!instance_exists(obj_mansion_study_tv))
            cutscene_advance();
        
        break;
    
    case 10:
        cutscene_wait(2);
        break;
    
    case 11:
        instance_create_depth(0, 0, -3000, obj_mansion_chujin_tape_extra);
        scene++;
        break;
    
    case 12:
        if (!instance_exists(obj_mansion_chujin_tape_extra))
            cutscene_wait(2);
        
        break;
    
    case 13:
        draw_alpha -= 0.03;
        
        if (draw_alpha <= 0)
            scene++;
        
        break;
    
    case 14:
        cutscene_wait(1);
        break;
    
    case 15:
        scr_cutscene_end();
        scr_radio_restart();
        scene = 0;
        global.dunes_flag[43] = 1;
        scr_item_remove("Videotape");
        break;
}
