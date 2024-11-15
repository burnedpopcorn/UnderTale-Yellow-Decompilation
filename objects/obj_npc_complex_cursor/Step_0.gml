depth = -y;
interact = 0;

if (keyboard_multicheck_pressed(0) && scr_interact() == true)
{
    if (global.hotland_flag[1] > 0 && global.party_member != -4)
    {
        scr_text();
        
        with (msg)
        {
            sndfnt = 102;
            message[0] = "* (We need to stay#  focused.)";
            message[1] = "* (Let's not bother#  others with our#  problems.)";
            prt[0] = 321;
            prt[1] = 329;
        }
    }
    else
    {
        interact = 1;
    }
}

if (sprite_index == spr_hotland_mr_cursor)
{
    if (instance_exists(obj_dialogue) && is_talking == true)
    {
        if (obj_dialogue.cutoff == string_length(obj_dialogue.message[obj_dialogue.message_current]))
        {
            image_speed = 0;
            image_index = 0;
        }
        else
        {
            image_speed = 0.2;
        }
    }
    else
    {
        image_speed = 0;
        is_talking = false;
    }
}

if (ds_map_find_value(global.npc_map, npc_id) != npc_flag)
    ds_map_replace(global.npc_map, npc_id, npc_flag);

switch (scene)
{
    case 0:
        if (interact)
            scene = 1;
        
        break;
    
    case 1:
        is_talking = 1;
        
        switch (npc_flag)
        {
            case 0:
                scr_cutscene_start();
                cutscene_dialogue();
                
                with (msg)
                {
                    message[0] = "* I'm usually a chill dude but#  today has not been my day. Let#  me tell you:";
                    message[1] = "* First, the attendant needs my#  name so she can save me a room.";
                    message[2] = "* \"Mr. Cursor,\" I reply. She#  steps back and goes \"Like some#  kind of warlock?\"";
                    message[3] = "* I say \"What? Warlock?\" with#  visible confusion.";
                    message[4] = "* \"I like to roll that ten-sided#  die as much as the next guy but#  no, I'm Mr. CURSOR.\"";
                    message[5] = "* Turns out, she thought I said#  \"Curser\" like I was gonna hex#  the joint!";
                    message[6] = "* Really didn't need her input#  on my iconic name but whatever.#  ";
                    message[7] = "* So then, I walk over to the#  elevator to head back to New#  Home.";
                    message[8] = "* It's busy, so I wait, and I#  wait, and I wait, and LITERALLY#  THREE HOURS PASS!";
                    message[9] = "* Next thing I know, the#  elevator opens but OOPS!!";
                    message[10] = "* Mr. Cursor has a tendency to#  timeout and fall asleep every#  five minutes!! ";
                    message[11] = "* SO I MISSED MY ONE CHANCE!!!";
                    message[12] = "* And now I'm stuck here and#  don't know WHEN I'LL EVER GET#  TO";
                    
                    if (message_current == 12)
                    {
                        skippable = false;
                        message_timer = 15;
                    }
                }
                
                break;
            
            case 1:
                scene = 0;
                scr_text();
                
                with (msg)
                {
                    message[0] = "* Sorry about that... I have to#  slow down and take a breather#  when things get heated.";
                    message[1] = "* What was I talking about?";
                    message[2] = "* Ugh, my memory sucks.";
                }
                
                other.npc_flag += 1;
                break;
            
            case 2:
                scene = 0;
                scr_text();
                
                with (msg)
                {
                    message[0] = "* Yo, I monitored the situation#  further and it just clicked#  with me!";
                    message[1] = "* What if I tried to ram my way#  into the elevator by force?";
                    message[2] = "* Like just charge straight into#  the doors!";
                    message[3] = "* Eh, well... on second thought,#  if I tried that I might slip a#  disk...";
                }
                
                other.npc_flag += 1;
                break;
            
            case 3:
                scene = 0;
                scr_text();
                
                with (msg)
                    message[0] = "* You think this place has free#  Wi-Fi? I'm uh, pretty bored.";
                
                break;
        }
        
        break;
    
    case 2:
        is_talking = false;
        audio_sound_gain(obj_radio.current_song, 0, 500);
        sprite_index = spr_hotland_mr_cursor_loading;
        image_speed = 1;
        scene++;
        break;
    
    case 3:
        cutscene_wait(2.5);
        break;
    
    case 4:
        audio_sound_gain(obj_radio.current_song, 1, 500);
        sprite_index = spr_hotland_mr_cursor;
        image_index = 0;
        image_speed = 0;
        scene++;
        break;
    
    case 5:
        cutscene_dialogue();
        is_talking = true;
        
        with (msg)
            message[0] = "* GO HOME!!!";
        
        break;
    
    case 6:
        scr_cutscene_end();
        npc_flag += 1;
        scene = 0;
        break;
}
