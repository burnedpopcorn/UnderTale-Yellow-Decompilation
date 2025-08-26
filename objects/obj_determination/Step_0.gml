if (keyboard_multicheck_pressed(vk_nokey))
{
    if (scr_interact() == true)
    {
        if (global.route == 3 && global.hotland_flag[9] >= 3)
        {
            spawn_save_box = true;
            scr_text();
            
            with (msg)
            {
                message[0] = "* (Nothing but the echoes of#  your efforts linger.)";
                message[1] = "* (You are filled with a sense#  of justice.)";
            }
        }
        else if (!instance_exists(obj_savebox))
        {
            if (global.party_member != -4 || (global.route == 2 && room == rm_steamworks_23) || room == rm_steamworks_macro_froggit_room)
            {
                instance_create(__view_get(e__VW.XView, 0) + 160, __view_get(e__VW.YView, 0) + 120, obj_savebox);
                audio_play_sound(snd_mainmenu_select, 1, 0);
            }
            else
            {
                instance_destroy();
                global.cutscene = true;
                instance_create(x, y - 5, obj_savefl);
            }
        }
    }
}

if (global.flowey_death_pop == true)
{
    instance_destroy();
    instance_create(x, y - 5, obj_savefl);
}

if (spawn_save_box == true)
{
    if (!instance_exists(obj_dialogue))
    {
        scr_determine_save_area();
        instance_create(__view_get(e__VW.XView, 0) + 160, __view_get(e__VW.YView, 0) + 120, obj_savebox);
        audio_play_sound(snd_mainmenu_select, 1, 0);
        spawn_save_box = false;
    }
}
