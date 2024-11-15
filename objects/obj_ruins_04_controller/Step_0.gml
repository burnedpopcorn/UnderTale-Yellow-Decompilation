var actor_toriel;

actor_toriel = 1159;

switch (scene)
{
    case 0:
        cutscene_wait(0.25);
        break;
    
    case 1:
        scr_text();
        
        with (msg)
        {
            talker[0] = actor_toriel;
            message[0] = "* In this room, you will#  need to trigger several#  switches.";
            message[1] = "* Do not worry, I have#  labelled the ones that#  you need to flip.";
            prt[0] = 343;
            prt[1] = 343;
        }
        
        if (!global.dialogue_open)
        {
            scene++;
            scr_cutscene_end();
        }
        
        break;
    
    case 2:
        cutscene_npc_walk(actor_toriel, 470, 140, 3 + (obj_pl.is_sprinting * 2), "x", "left", "nothing");
        break;
    
    case 3:
        if (actor_toriel.interact)
        {
            scr_text();
            
            with (msg)
            {
                talker[0] = actor_toriel;
                message[0] = "* Oh, do you need some#  help?";
                message[1] = "* Please flip the switch#  on the north wall.";
                prt[0] = 340;
                prt[1] = 343;
            }
        }
        
        with (obj_switch2)
        {
            if (scr_interact() && keyboard_multicheck_pressed(0))
            {
                audio_play_sound(snd_switch, 1, 0);
                image_index = 1;
                other.scene += 1;
                instance_destroy(obj_inviswall);
            }
        }
        
        break;
    
    case 4:
        cutscene_dialogue();
        
        with (msg)
        {
            talker[0] = actor_toriel;
            message[0] = "* Splendid! I am proud#  of you my child. ";
            prt[0] = 343;
        }
        
        actor_toriel.npc_direction = "up";
        break;
    
    case 5:
        cutscene_npc_walk(actor_toriel, 688, 140, 3 + (obj_pl.is_sprinting * 2), "x", "left");
        actor_toriel.walk_speed_x = 3 + (obj_pl.is_sprinting * 2);
        break;
    
    case 6:
        if (actor_toriel.interact)
        {
            scr_text();
            
            with (msg)
            {
                talker[0] = actor_toriel;
                message[0] = "* Go on, I believe in#  you!";
                message[1] = "* Only one more switch#  remains.";
                prt[0] = 343;
                prt[1] = 343;
            }
        }
        
        with (obj_switch3)
        {
            if (scr_interact() && keyboard_multicheck_pressed(0))
            {
                audio_play_sound(snd_switch, 1, 0);
                image_index = 1;
                other.scene += 1;
                global.cutscene = true;
            }
        }
        
        with (obj_switch4)
        {
            if (scr_interact() && keyboard_multicheck_pressed(0))
            {
                scr_text();
                
                with (msg)
                {
                    talker[0] = actor_toriel;
                    message[0] = "* Oh no, my child! That#  is the wrong switch.";
                    message[1] = "* I have labelled the one#  you need to flip.";
                    prt[0] = 340;
                    prt[1] = 343;
                }
            }
        }
        
        with (obj_switch2)
        {
            if (scr_interact() && keyboard_multicheck_pressed(0))
            {
                scr_text();
                
                with (msg)
                {
                    talker[0] = actor_toriel;
                    message[0] = "* That switch has already#  been flipped.";
                    message[1] = "* Why don't you come back#  across the bridge?";
                    prt[0] = 340;
                    prt[1] = 343;
                }
            }
        }
        
        break;
    
    case 7:
        cutscene_npc_direction(actor_toriel, "up");
        break;
    
    case 8:
        cutscene_wait(1);
        break;
    
    case 9:
        cutscene_dialogue();
        
        with (msg)
        {
            talker[0] = actor_toriel;
            message[0] = "* ...It should have opened#  by now...";
            message[1] = "* I am sure I labelled the#  correct lever...";
            message[2] = "* Ah, do not worry, little#  one! Try flipping the#  other switch.";
            prt[0] = 340;
            prt[1] = 340;
            prt[2] = 343;
        }
        
        break;
    
    case 10:
        scr_cutscene_end();
        cutscene_npc_direction(actor_toriel, "left");
        break;
    
    case 11:
        if (actor_toriel.interact)
        {
            scr_text();
            
            with (msg)
            {
                talker[0] = actor_toriel;
                message[0] = "* I am unsure as to why#  this switch is not#  working...";
                message[1] = "* Please, try flipping#  the other switch.";
                prt[0] = 340;
                prt[1] = 343;
            }
        }
        
        with (obj_switch4)
        {
            if (scr_interact() && keyboard_multicheck_pressed(0))
            {
                audio_play_sound(snd_switch, 1, 0);
                image_index = 1;
                other.scene += 1;
                global.cutscene = true;
            }
        }
        
        with (obj_switch3)
        {
            if (scr_interact() && keyboard_multicheck_pressed(0))
            {
                scr_text();
                
                with (msg)
                {
                    talker[0] = actor_toriel;
                    message[0] = "* I must have labelled the#  wrong switch.";
                    message[1] = "* I apologize if I have#  confused you, my child.";
                    message[2] = "* Please flip the switch#  that is not labelled.";
                    prt[0] = 340;
                    prt[1] = 340;
                    prt[2] = 343;
                }
            }
        }
        
        with (obj_switch2)
        {
            if (scr_interact() && keyboard_multicheck_pressed(0))
            {
                scr_text();
                
                with (msg)
                {
                    talker[0] = actor_toriel;
                    message[0] = "* Um...";
                    message[1] = "* That is not what I#  meant.";
                    message[2] = "* You need to flip the#  switch you have not#  flipped yet.";
                    prt[0] = 340;
                    prt[1] = 340;
                    prt[2] = 343;
                }
            }
        }
        
        break;
    
    case 12:
        cutscene_npc_direction(actor_toriel, "up");
        break;
    
    case 13:
        instance_create(obj_pl.x, obj_pl.y, obj_playerfall);
        instance_destroy(obj_pl);
        cutscene_advance();
        break;
    
    case 14:
        cutscene_audio_fade(obj_radio.current_song, 0, 500, 1, false);
        break;
    
    case 15:
        cutscene_dialogue();
        
        with (msg)
        {
            skippable = false;
            message[0] = "* !...";
            prt[0] = 341;
        }
        
        if (cutscene_wait(1))
            instance_destroy(msg);
        
        break;
    
    case 16:
        cutscene_npc_walk(actor_toriel, 638, 80, 4, "x", "up");
        break;
    
    case 17:
        cutscene_wait(2);
        break;
    
    case 18:
        global.item_slot[1] = "Nothing";
        
        if (!instance_exists(obj_transition2))
        {
            trn = instance_create(x, y, obj_transition2);
            trn.newRoom = 11;
            trn.xx = x;
            trn.yy = y;
            trn.fadespeed = 1;
            scene++;
        }
        
        break;
}
