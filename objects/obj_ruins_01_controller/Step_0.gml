if (global.ruins_flag[0] == 0)
{
    if (obj_pl.y <= 300)
    {
        instance_create(obj_pl.x - 4, obj_pl.y - 26, obj_exclamation_mark);
        global.battle_enemy_name = "froggit intro";
        global.current_room_overworld = room_get_name(room);
        global.battling_boss = false;
        global.battle_start = true;
        scr_cutscene_start();
        instance_destroy();
    }
}

if (global.ruins_flag[0] == 1)
{
    var actor_toriel = obj_toriel_npc;
    
    switch (scene)
    {
        case 0:
            global.cutscene = true;
            
            if (!audio_is_playing(mus_fallendownyellow))
                audio_play_sound(mus_fallendownyellow, 1, 1);
            
            if (instance_exists(obj_overworld_fade_in_screen))
                exit;
            
            scr_text();
            
            with (msg)
            {
                talker[0] = actor_toriel;
                color = true;
                col_modif[0] = c_blue;
                col_modif[1] = c_red;
                message[0] = "* Ah! Hello.";
                message[1] = "* Are you all right?";
                message[2] = "* You must be wondering#  what is going on...";
                message[3] = "* I am TORIEL, caretaker#  of the RUINS.";
                message[4] = "* I pass through here#  every day to see if#  anyone has fallen down.";
                message[5] = "* It does not happen#  often.";
                message[6] = "* You are the first to#  come here in a long#  time.";
                message[7] = "* Do not be afraid,#  little one.";
                message[8] = "* I will do my best to#  protect you here.";
                message[9] = "* Come! I shall guide you#  through your new home.";
                message_col[3][0] = "       TORIEL                           ";
                message_col[3][1] = "                        #         RUINS ";
                prt[0] = toriel_normal;
                prt[1] = toriel_normal;
                prt[2] = toriel_normal;
                prt[3] = toriel_normal;
                prt[4] = toriel_normal;
                prt[5] = toriel_normal;
                prt[6] = toriel_normal;
                prt[7] = toriel_normal;
                prt[8] = toriel_normal;
                prt[9] = toriel_normal;
                position = 0;
            }
            
            if (!global.dialogue_open)
            {
                scene++;
                scr_cutscene_end();
            }
            
            break;
        
        case 1:
            cutscene_npc_walk(actor_toriel, actor_toriel.x, 120, 3 + (obj_pl.is_sprinting * 2), "y", "up");
            break;
        
        case 2:
            with (actor_toriel)
            {
                image_alpha -= 0.1;
                
                if (image_alpha < 0)
                {
                    instance_destroy();
                    global.ruins_flag[0] = 2;
                }
            }
            
            break;
    }
    
    if (instance_exists(obj_transition))
        global.ruins_flag[0] = 2;
}
