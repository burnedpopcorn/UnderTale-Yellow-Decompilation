var rumble_sound;

if (global.sworks_flag[0] == 2)
{
    switch (scene)
    {
        case 0:
            cutscene_wait(1);
            break;
        
        case 1:
            cutscene_npc_walk_relative(actor_clover, 0, -30, 1, "y", "up");
            break;
        
        case 2:
            cutscene_dialogue();
            
            with (msg)
            {
                talker[0] = 1161;
                message[0] = "* Guess I should've#  expected this.";
                prt[0] = 377;
            }
            
            break;
        
        case 3:
            cutscene_npc_direction(actor_ceroba, "down");
            break;
        
        case 4:
            cutscene_wait(0.25);
            break;
        
        case 5:
            cutscene_dialogue();
            
            with (msg)
            {
                talker[0] = 1161;
                message[0] = "* In its prime, this was#  the main power source of#  the Underground.";
                message[1] = "* That, obviously, was#  many years ago.";
                message[2] = "* Until we breathe life#  back into this thing, we#  can't progress.";
                prt[0] = 370;
                prt[1] = 371;
                prt[2] = 394;
            }
            
            break;
        
        case 6:
            cutscene_wait(0.5);
            break;
        
        case 7:
            cutscene_camera_move(obj_pl.x, 380, 1);
            break;
        
        case 8:
            cutscene_wait(0.5);
            break;
        
        case 9:
            cutscene_npc_walk(actor_ceroba, 223, 360, 1, "x", "up");
            break;
        
        case 10:
            cutscene_wait(0.5);
            break;
        
        case 11:
            cutscene_dialogue();
            
            with (msg)
            {
                talker[0] = 1161;
                message[0] = "* There's some kinda#  console here.";
                message[1] = "* Maybe one of Chujin's#  codes will work? Just#  give me a second.";
                message[2] = "* In the meantime, you#  can... wait over in the#  corner or something.";
                prt[0] = 370;
                prt[1] = 370;
                prt[2] = 377;
            }
            
            break;
        
        case 12:
            cutscene_camera_move(obj_pl.x, obj_pl.y, 3);
            break;
        
        case 13:
            instance_destroy(obj_player_npc);
            instance_destroy(obj_camera);
            global.sworks_flag[0] = 3;
            scr_cutscene_end();
            cutscene_advance();
            __view_set(e__VW.Object, 0, obj_pl);
            break;
    }
}

with (actor_ceroba)
{
    if (scr_interact() && keyboard_multicheck_pressed(0))
    {
        scr_text();
        
        switch (global.sworks_flag[1])
        {
            case 0:
                with (msg)
                {
                    talker[0] = 1161;
                    message[0] = "* I need to concentrate#  right now.";
                    prt[0] = 370;
                }
                
                break;
            
            case 1:
                with (msg)
                {
                    talker[0] = 1161;
                    message[0] = "* I think I'm getting#  somewhere. Hold on.";
                    prt[0] = 370;
                }
                
                break;
            
            case 2:
                with (msg)
                {
                    talker[0] = 1161;
                    message[0] = "* Almost got it! Didn't#  think this would#  actually work!";
                    prt[0] = 370;
                }
                
                break;
        }
    }
}

if (global.sworks_flag[1] == 3)
{
    switch (scene)
    {
        case 0:
            instance_create(obj_ceroba_npc.x, 300, obj_camera);
            obj_camera.move = false;
            __view_set(e__VW.Object, 0, obj_camera);
            audio_stop_sound(snd_machinery);
            obj_steamworks_04_generator.image_speed = 0;
            cutscene_advance();
            break;
        
        case 1:
            cutscene_wait(2);
            break;
        
        case 2:
            obj_steamworks_04_generator.image_speed = 1/3;
            audio_play_sound(snd_generator_start, 1, 0);
            rumble_sound = audio_play_sound(snd_machinery, 1, 0);
            audio_sound_gain(rumble_sound, 0, 0);
            audio_sound_gain(rumble_sound, 1, 1500);
            instance_create(obj_ceroba_npc.x, obj_ceroba_npc.y - 35, obj_cutscene_ex);
            cutscene_advance();
            break;
        
        case 3:
            cutscene_wait(2.5);
            break;
        
        case 4:
            cutscene_change_room(152, 655, 170, 0.05);
            break;
    }
}

if (global.sworks_flag[1] == 4)
{
    switch (scene)
    {
        case 0:
            __view_set(e__VW.Object, 0, obj_ceroba_npc);
            cutscene_advance();
            break;
        
        case 1:
            cutscene_instance_create(330, 200, obj_player_npc);
            break;
        
        case 2:
            cutscene_npc_walk(1168, 300, obj_ceroba_npc.y, 3, "y", "left", false);
            break;
        
        case 3:
            cutscene_npc_direction(1161, "right");
            break;
        
        case 4:
            cutscene_wait(0.5);
            break;
        
        case 5:
            cutscene_dialogue();
            
            with (msg)
            {
                talker[0] = 1161;
                message[0] = "* It's working!";
                message[1] = "* Wait... What have you#  been up to?";
                prt[0] = 372;
                prt[1] = 393;
            }
            
            break;
        
        case 6:
            cutscene_wait(0.5);
            break;
        
        case 7:
            cutscene_npc_direction(1161, "up");
            break;
        
        case 8:
            cutscene_wait(0.5);
            break;
        
        case 9:
            cutscene_npc_direction(1161, "down");
            break;
        
        case 10:
            cutscene_wait(0.5);
            break;
        
        case 11:
            cutscene_npc_direction(1161, "left");
            break;
        
        case 12:
            cutscene_wait(0.5);
            break;
        
        case 13:
            cutscene_npc_direction(1161, "right");
            break;
        
        case 14:
            cutscene_wait(0.5);
            break;
        
        case 15:
            cutscene_dialogue();
            
            with (msg)
            {
                talker[0] = 1161;
                message[0] = "* Oh...";
                message[1] = "* I... wasn't actually#  doing anything this#  whole time was I?";
                message[2] = "* Ugh, alright. You're#  clearly more capable of#  problem solving.";
                message[3] = "* I suppose you should#  lead the way from now#  on.";
                message[4] = "* Just head west from#  here and we'll reach#  Hotland eventually.";
                prt[0] = 377;
                prt[1] = 382;
                prt[2] = 384;
                prt[3] = 377;
                prt[4] = 377;
            }
            
            break;
        
        case 16:
            ceroba_x_dest = obj_player_npc.x + 20;
            ceroba_end_dir = "left";
            cutscene_advance();
            break;
        
        case 17:
            cutscene_npc_walk(1161, ceroba_x_dest, obj_player_npc.y, 3, "y", ceroba_end_dir);
            break;
        
        case 18:
            cutscene_camera_move(obj_pl.x, obj_pl.y, 2);
            break;
        
        case 19:
            obj_pl.image_alpha = 1;
            __view_set(e__VW.Object, 0, obj_pl);
            instance_destroy(obj_player_npc);
            global.party_member = 1171;
            scr_actor_into_follower(1161, 1171);
            global.sworks_flag[1] = 5;
            scr_cutscene_end();
            break;
    }
}
