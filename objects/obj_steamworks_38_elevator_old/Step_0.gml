var check;

if (live_call())
    return global.live_result;

if (global.sworks_flag[39] < 1)
{
    switch (scene)
    {
        case 0:
            cutscene_instance_create(160, 180, obj_player_npc);
            obj_player_npc.npc_direction = "up";
            obj_player_npc.image_alpha = 0;
            break;
        
        case 1:
            obj_player_npc.image_alpha += 0.2;
            
            if (obj_player_npc.image_alpha >= 1)
                scene++;
            
            break;
        
        case 2:
            cutscene_npc_walk(1168, 176, 132, 3, "y", "down");
            break;
        
        case 3:
            cutscene_instance_create(160, 180, obj_ceroba_npc);
            obj_ceroba_npc.npc_direction = "up";
            obj_ceroba_npc.image_alpha = 0;
            break;
        
        case 4:
            obj_ceroba_npc.image_alpha += 0.2;
            
            if (obj_ceroba_npc.image_alpha >= 1)
                scene++;
            
            break;
        
        case 5:
            if (cutscene_npc_walk(1161, 148, 133, 3, "y", "right"))
            {
                scene = 5.5;
                obj_player_npc.npc_direction = "left";
            }
            
            break;
        
        case 5.5:
            if (cutscene_wait(1.5))
                scene = 6;
            
            break;
        
        case 6:
            obj_steamworks_38_elevator_face.sprite_index = spr_steamworks_38_face_hello;
            obj_steamworks_38_elevator_face.image_speed = 1;
            scene++;
            break;
        
        case 7:
            if (obj_steamworks_38_elevator_face.sprite_index == spr_steamworks_38_face_hello && obj_steamworks_38_elevator_face.image_index < (obj_steamworks_38_elevator_face.image_number - 1))
                exit;
            
            if (obj_steamworks_38_elevator_face.sprite_index != spr_steamworks_38_face_talking)
            {
                obj_steamworks_38_elevator_face.sprite_index = spr_steamworks_38_face_talking;
                obj_steamworks_38_elevator_face.image_index = 0;
            }
            
            cutscene_dialogue_special("swirl", 65280);
            
            with (msg)
            {
                message[0] = "* Heeello!!! I welcome you into#  my body!!!";
                message[1] = "* Where ever would you like to#  go??";
                position = 0;
            }
            
            obj_player_npc.npc_direction = "up";
            obj_ceroba_npc.npc_direction = "up";
            break;
        
        case 8:
            cutscene_dialogue();
            
            with (msg)
            {
                talker[0] = 1161;
                message[0] = "* Top floor.";
                prt[0] = 377;
                position = 0;
            }
            
            break;
        
        case 9:
            cutscene_dialogue_special("swirl", 65280);
            
            with (msg)
            {
                message[0] = "* Did you say: \"Basement?\"";
                position = 0;
            }
            
            break;
        
        case 10:
            cutscene_dialogue();
            
            with (msg)
            {
                talker[0] = 1161;
                message[0] = "* Get us to the roof! Out#  of here! Whatever!";
                prt[0] = 368;
                position = 0;
            }
            
            break;
        
        case 11:
            cutscene_wait(1.5);
            break;
        
        case 12:
            cutscene_dialogue_special("swirl", 65280);
            
            with (msg)
            {
                message[0] = "* I carry a negative opinion of#  you.";
                message[1] = "* Heading to: \"Out of here.\"";
                position = 0;
            }
            
            break;
        
        case 13:
            cutscene_wait(0.5);
            break;
        
        case 14:
            obj_steamworks_38_elevator_face.sprite_index = spr_steamworks_38_face_loading;
            obj_steamworks_38_elevator_face.image_speed = 1;
            audio_play_sound(snd_ring, 1, 0);
            cutscene_advance();
            break;
        
        case 15:
            if (door_closed_amount < 1)
                door_closed_amount += 0.05;
            else
                cutscene_sfx_play(13, 1);
            
            break;
        
        case 16:
            cutscene_wait(1);
            break;
        
        case 17:
            obj_steamworks_38_elevator_face.sprite_index = spr_steamworks_38_face_up;
            
            if (global.last_room_overworld == "rm_steamworks_32")
                obj_steamworks_38_elevator_face.sprite_index = spr_steamworks_38_face_down;
            
            obj_steamworks_38_elevator_face.image_speed = 1;
            cutscene_advance();
            break;
        
        case 18:
            cutscene_sfx_play(271, 1);
            audio_play_sound(snd_rumble, 1, 1);
            break;
        
        case 19:
            cutscene_npc_action_sprite(1168, 1109, 0.25, true, 0);
            scene = 19.5;
            break;
        
        case 19.5:
            if (cutscene_npc_walk(1161, 138, 133, 1, "x", "down"))
                scene = 19.7;
            
            break;
        
        case 19.7:
            if (cutscene_npc_action_sprite(1161, 72, 1, true, 0))
                scene = 20;
            
            break;
        
        case 20:
            cutscene_wait(1.5);
            break;
        
        case 21:
            cutscene_dialogue();
            
            with (msg)
            {
                talker[0] = 1161;
                ch_msg = 8;
                ch[1] = "The 5\nhumans...";
                ch[2] = "Personal\nmission";
                message[0] = "* Ugh, sorry for all the#  outbursts.";
                message[1] = "* All of this is...";
                message[2] = "* It's a lot to process.";
                message[3] = "* Bet you're pretty tired#  of learning about me#  so...";
                message[4] = "* ...What about you?";
                message[5] = "* You're not exactly a#  talker so I don't know#  much.";
                message[6] = "* Why are you here in the#  first place?";
                message[7] = "* Did you simply trip and#  fall into the#  Underground?";
                message[8] = "* I'm curious.";
                prt[0] = 394;
                prt[1] = 371;
                prt[2] = 394;
                prt[3] = 370;
                prt[4] = 372;
                prt[5] = 377;
                prt[6] = 370;
                prt[7] = 370;
                prt[8] = 370;
                message[9] = "* I see...";
                message[10] = "* You wanted to find out#  what happened to those#  kids.";
                message[11] = "* ...A noble mission.#  Takes guts.";
                message[12] = "* I'm... assuming you#  haven't found them yet,#  though.";
                message[13] = "* ...";
                prt[9] = 377;
                prt[10] = 394;
                prt[11] = 377;
                prt[12] = 394;
                prt[13] = 371;
            }
            
            break;
        
        case 22:
            obj_steamworks_38_elevator_face.sprite_index = spr_steamworks_38_face_talking;
            obj_steamworks_38_elevator_face.image_index = 0;
            obj_steamworks_38_elevator_face.image_speed = 0;
            audio_play_sound(snd_ring, 1, 0);
            audio_stop_sound(snd_rumble);
            cutscene_advance();
            break;
        
        case 23:
            cutscene_wait(1);
            break;
        
        case 24:
            obj_player_npc.sprite_index = spr_pl_run_left;
            obj_player_npc.image_index = 1;
            obj_player_npc.image_speed = 0;
            audio_play_sound(snd_playerjump, 1, 0);
            
            with (obj_player_npc)
                path_start(pt_small_jump, 4, path_action_stop, false);
            
            scene++;
            break;
        
        case 25:
            check = false;
            
            with (obj_player_npc)
            {
                if (path_position >= 1)
                    check = true;
            }
            
            if (check)
                cutscene_npc_reset_sprite(1168, "up");
            
            break;
        
        case 26:
            cutscene_npc_reset_sprite(1161, "right");
            break;
        
        case 27:
            cutscene_npc_walk(1161, 148, 133, 2, "x", "up");
            break;
        
        case 28:
            cutscene_wait(0.75);
            break;
        
        case 29:
            cutscene_dialogue_special("swirl", 65280);
            
            with (msg)
            {
                message[0] = "* We have arrived at \"Out of#  here.\"";
                position = 0;
            }
            
            break;
        
        case 30:
            cutscene_sfx_play(572, 1);
            break;
        
        case 31:
            if (door_closed_amount > 0)
                door_closed_amount -= 0.05;
            else
                cutscene_advance();
            
            break;
        
        case 32:
            cutscene_wait(1);
            break;
        
        case 33:
            cutscene_dialogue();
            
            with (msg)
            {
                talker[0] = 1161;
                message[0] = "* Well uh... better get#  moving.";
                prt[0] = 371;
            }
            
            break;
        
        case 34:
            cutscene_npc_walk(1168, 160, 180, 3, "x", "down");
            break;
        
        case 35:
            obj_player_npc.image_alpha -= 0.2;
            
            if (obj_player_npc.image_alpha <= 0)
                scene++;
            
            break;
        
        case 36:
            cutscene_npc_walk(1161, 160, 180, 3, "x", "down");
            break;
        
        case 37:
            obj_ceroba_npc.image_alpha -= 0.2;
            
            if (obj_ceroba_npc.image_alpha <= 0)
                scene++;
            
            break;
        
        case 38:
            audio_stop_all();
            global.party_member = 1171;
            cutscene_change_room(202, 840, 280, 0.025);
            global.sworks_flag[39] = 1;
            break;
    }
    
    camera_set_view_pos(view_camera[0], 0, 0);
    camera_set_view_pos(view_camera[0], random_range(-screenshake_intensity, screenshake_intensity), random_range(screenshake_intensity, screenshake_intensity));
    
    if (scene > 18 && scene < 22)
    {
        if (screenshake_intensity < 1)
            screenshake_intensity += 0.05;
    }
    else if (screenshake_intensity > 0)
    {
        screenshake_intensity -= 0.15;
    }
}
else
{
    switch (scene)
    {
        case 0:
            cutscene_instance_create(160, 180, obj_player_npc);
            obj_player_npc.npc_direction = "up";
            obj_player_npc.image_alpha = 0;
            break;
        
        case 1:
            obj_player_npc.image_alpha += 0.2;
            
            if (obj_player_npc.image_alpha >= 1)
                scene++;
            
            break;
        
        case 2:
            cutscene_npc_walk(1168, 176, 132, 3, "y", "down");
            break;
        
        case 3:
            if (global.party_member == -4)
            {
                scene = 6;
                exit;
            }
            
            cutscene_instance_create(160, 180, obj_ceroba_npc);
            obj_ceroba_npc.npc_direction = "up";
            obj_ceroba_npc.image_alpha = 0;
            break;
        
        case 4:
            obj_ceroba_npc.image_alpha += 0.2;
            
            if (obj_ceroba_npc.image_alpha >= 1)
                scene++;
            
            break;
        
        case 5:
            if (cutscene_npc_walk(1161, 148, 133, 3, "y", "down"))
                scene = 6;
            
            break;
        
        case 6:
            cutscene_wait(0.5);
            break;
        
        case 7:
            obj_steamworks_38_elevator_face.sprite_index = spr_steamworks_38_face_loading;
            obj_steamworks_38_elevator_face.image_speed = 1;
            audio_play_sound(snd_ring, 1, 0);
            cutscene_advance();
            break;
        
        case 8:
            if (door_closed_amount < 1)
                door_closed_amount += 0.05;
            else
                cutscene_sfx_play(13, 1);
            
            break;
        
        case 9:
            cutscene_wait(1);
            break;
        
        case 10:
            obj_steamworks_38_elevator_face.sprite_index = spr_steamworks_38_face_up;
            
            if (global.last_room_overworld == "rm_steamworks_32")
                obj_steamworks_38_elevator_face.sprite_index = spr_steamworks_38_face_down;
            
            obj_steamworks_38_elevator_face.image_speed = 1;
            cutscene_advance();
            break;
        
        case 11:
            cutscene_sfx_play(271, 1);
            break;
        
        case 12:
            cutscene_wait(3.7);
            break;
        
        case 13:
            obj_steamworks_38_elevator_face.sprite_index = spr_steamworks_38_face_hello;
            obj_steamworks_38_elevator_face.image_index = 0;
            obj_steamworks_38_elevator_face.image_speed = 1;
            cutscene_advance();
            break;
        
        case 14:
            cutscene_wait(1);
            break;
        
        case 15:
            cutscene_sfx_play(572, 1);
            break;
        
        case 16:
            if (door_closed_amount > 0)
                door_closed_amount -= 0.05;
            else
                cutscene_advance();
            
            break;
        
        case 17:
            cutscene_wait(1.5);
            break;
        
        case 18:
            cutscene_npc_walk(1168, 160, 180, 3, "x", "down");
            break;
        
        case 19:
            if (global.party_member != -4)
                cutscene_npc_walk(1161, 160, 180, 3, "x", "down");
            else
                cutscene_advance();
            
            break;
        
        case 20:
            audio_stop_all();
            
            if (global.last_room_overworld == "rm_steamworks_32")
                cutscene_change_room(240, 120, 380, 0.1);
            else
                cutscene_change_room(202, 840, 280, 0.1);
            
            break;
    }
    
    if (scene > 17)
    {
        if (obj_player_npc.y > 160 && obj_player_npc.image_alpha > 0)
            obj_player_npc.image_alpha -= 0.2;
        
        if (instance_exists(obj_ceroba_npc) && obj_ceroba_npc.y > 160 && obj_ceroba_npc.image_alpha > 0)
            obj_ceroba_npc.image_alpha -= 0.2;
    }
    
    camera_set_view_pos(view_camera[0], 0, 0);
    camera_set_view_pos(view_camera[0], random_range(-screenshake_intensity, screenshake_intensity), random_range(screenshake_intensity, screenshake_intensity));
    
    if (scene > 11 && scene < 13)
    {
        if (screenshake_intensity < 1)
            screenshake_intensity += 0.05;
    }
    else if (screenshake_intensity > 0)
    {
        screenshake_intensity -= 0.15;
    }
}
