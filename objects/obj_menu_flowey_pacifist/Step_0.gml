if (live_call())
    return global.live_result;

if (waiter == 1)
    exit;

switch (scene)
{
    case 0:
        if (obj_ending_flowey.image_index <= 0)
        {
            obj_ending_flowey.sprite_index = flowey_nice;
            obj_ending_flowey.y += 22;
            scene++;
        }
        
        break;
    
    case 1:
        cutscene_wait(1);
        break;
    
    case 2:
        if (!instance_exists(obj_dialogue_flowey_ending))
        {
            instance_create(x, y, obj_dialogue_flowey_ending);
        }
        else if (global.dialogue_open == false)
        {
            cutscene_advance();
            exit;
        }
        else
        {
            with (obj_dialogue_flowey_ending)
            {
                sndfnt = 96;
                talker[0] = 2628;
                message[0] = "Well...";
                message[1] = "Here we are again. Of#course.";
                message[2] = "Sigh...";
                message[3] = "There's gotta be SOME#way to get what I need.";
                message[4] = "Clover's competent...#enough, but still...";
                message[5] = "Nothing ever works out#when it comes to them.";
                message[6] = "Hmm...";
                message[7] = "I could reset and try#my luck again...";
                message[8] = "Or...";
                message[9] = "I could accept this#outcome and wait.";
                message[10] = "The King is only one#SOUL away now.";
                message[11] = "It might be a good idea#to piggyback off the#next human instead.";
                message[12] = "But...";
                message[13] = "Who knows how long#that will take and#even worse,";
                message[14] = "If the next human would#have the will to do what#Clover couldn't.";
                message[15] = "Decisions decisions...";
                message[16] = "Let me think...";
                prt[0] = 347;
                prt[1] = 348;
                prt[2] = 353;
                prt[3] = 353;
                prt[4] = 352;
                prt[5] = 353;
                prt[6] = 353;
                prt[7] = 352;
                prt[8] = 353;
                prt[9] = 347;
                prt[10] = 347;
                prt[11] = 348;
                prt[12] = 353;
                prt[13] = 353;
                prt[14] = 352;
                prt[15] = 353;
                prt[16] = 353;
            }
        }
        
        break;
    
    case 3:
        choice_alpha += 0.01;
        
        if (choice_alpha >= 0.8)
        {
            audio_play_sound(snd_mainmenu_select, 1, 0);
            choice_alpha = 1;
            cutscene_advance();
        }
        
        break;
    
    case 4:
        if (choice == 0)
        {
            if (global.left_keyp && p[2] == true)
            {
                p[2] = false;
                p[1] = true;
                audio_play_sound(snd_mainmenu_select, 1, 0);
            }
            
            if (global.right_keyp && p[1] == true)
            {
                p[2] = true;
                p[1] = false;
                audio_play_sound(snd_mainmenu_select, 1, 0);
            }
            
            if (keyboard_multicheck_pressed(0) == true)
            {
                audio_play_sound(snd_confirm, 1, 0);
                
                if (p[1] == true)
                    choice = 1;
                
                if (p[2] == true)
                    choice = 2;
            }
        }
        else if (instance_exists(obj_ending_flowey))
        {
            obj_ending_flowey.sprite_index = flowey_nice;
            choice_alpha -= 0.15;
            
            if (choice_alpha <= 0)
                cutscene_advance();
        }
        
        break;
    
    case 5:
        cutscene_wait(0.5);
        break;
    
    case 6:
        if (obj_ending_flowey.sprite_index != spr_flowey_enter)
        {
            obj_ending_flowey.y -= 22;
            obj_ending_flowey.sprite_index = spr_flowey_enter;
            obj_ending_flowey.image_index = obj_ending_flowey.image_number - 1;
            obj_ending_flowey.image_speed = -0.25;
        }
        
        if (obj_ending_flowey.image_index <= 0)
        {
            instance_destroy(obj_ending_flowey);
            
            if (choice == 1)
            {
                audio_play_sound(mus_cymbal, 10, 0);
                alarm[1] = 1;
                instance_create(0, 0, obj_transition_white);
                
                if (file_exists("Save.sav"))
                    file_delete("Save.sav");
                
                ini_open("Save02.sav");
                ini_write_real("00", "02", 0);
                ini_write_real("00", "03", 0);
                ini_write_real("00", "04", 0);
                ini_close();
                instance_destroy();
                scene++;
            }
            else
            {
                game_end();
            }
        }
        
        break;
}
