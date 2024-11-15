if (instance_exists(obj_dialogue) && obj_dialogue.sndfnt == 96)
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

switch (scene)
{
    case 1:
        image_speed = 0.2;
        image_alpha = 1;
        scene++;
        break;
    
    case 2:
        if (on_animation_end())
        {
            sprite_index = spr_flowey;
            image_speed = 0;
            timer = 15;
            scene++;
        }
        
        break;
    
    case 3:
        if (!scr_timer())
            exit;
        
        scr_text();
        
        with (msg)
        {
            sndfnt = 96;
            message[0] = "* Wowie, what a day!";
            message[1] = "* Congrats, pal.";
            message[2] = "* You beat your first#  Royal Guard.";
            message[3] = "* Though, I'm not sure#  how she got promoted#  past feather-duster.";
            message[4] = "* Have to give her some#  credit though,";
            message[5] = "* This boat looks like#  your ticket out of the#  cold.";
            message[6] = "* If you follow this#  current...";
            message[7] = "* You'll be living it up#  in Hotland before you#  know it.";
            message[8] = "* Now there's no time to#  waste.";
            prt[0] = 348;
            prt[1] = 349;
            prt[2] = 349;
            prt[3] = 347;
            prt[4] = 348;
            prt[5] = 347;
            prt[6] = 348;
            prt[7] = 348;
            prt[8] = 348;
            
            if (global.snowdin_flag[15] == 1)
            {
                message[9] = "* See you later,#  Clover!";
                prt[9] = 348;
                other.timer = 15;
                other.scene = 6;
            }
            else
            {
                message[9] = "* See you later,#  Gun-hat!";
                prt[9] = 349;
                other.timer = 30;
                other.scene = 4;
            }
        }
        
        break;
    
    case 4:
        if (global.dialogue_open || !scr_timer())
            exit;
        
        scr_text();
        
        with (msg)
        {
            sndfnt = 96;
            message[0] = "* Okay, I've been#  thinking. ";
            message[1] = "* Gun-hat can't be your#  real name.";
            message[2] = "* You can't pull one over#  on old Flowey.";
            prt[0] = 348;
            prt[1] = 347;
            prt[2] = 3251;
        }
        
        if (!global.dialogue_open)
        {
            timer = 30;
            scene++;
        }
        
        break;
    
    case 5:
        if (!scr_timer())
            exit;
        
        scr_text();
        
        with (msg)
        {
            sndfnt = 96;
            message[0] = "* Whatever your real name#  is,";
            message[1] = "* I've decided I don't#  care.";
            message[2] = "* Just know, friends#  shouldn't do that to one#  another.";
            message[3] = "* I wouldn't do that to#  you, now would I,#  Clover?";
            prt[0] = 348;
            prt[1] = 349;
            prt[2] = 349;
            prt[3] = 3251;
        }
        
        if (!global.dialogue_open)
        {
            timer = 30;
            scene++;
        }
        
        break;
    
    case 6:
        if (global.dialogue_open == true || !scr_timer())
            exit;
        
        sprite_index = spr_floweyleave;
        image_speed = 0.2;
        scene++;
        break;
    
    case 7:
        if (!on_animation_end())
            exit;
        
        image_speed = 0;
        instance_destroy();
        global.snowdin_flag[14] = 2;
        scr_cutscene_end();
        audio_sound_gain(obj_radio.current_song, 1, 500);
        break;
}
