if (live_call())
    return global.live_result;

overlay_image_index += 0.3;

if (overlay_image_index > 27)
    overlay_image_index -= 27;

switch (scene)
{
    case 0:
        scene_change = true;
        break;
    
    case 1:
        cutscene_music_start(589);
        break;
    
    case 2:
        sprite_index = spr_chujin_default_idle;
        cutscene_wait(3);
        break;
    
    case 3:
        cutscene_dialogue_chujin();
        
        with (msg)
        {
            message[0] = "          This is Chujin.";
            message[1] = "    I messed up, miscalculated,#    something.";
            message[2] = "     Axis... Axis is dangerous.";
            message[3] = " I must have overshot the variables,# all I wanted was apprehension.";
            message[4] = "                ...";
            message[5] = "    The human who almost hurt my#    child, I told Axis to track#    them down.";
            message[6] = "I know I should've stayed to comfort#Kanako and tend to the resident who#was hurt but...";
            message[7] = "  ...I had a tool that could stop#  the human's crusade, so I tried.";
            message[8] = "    ...In a flash, Axis left me.#    Bolted for Waterfall.";
            message[9] = "  By the time I tracked him down...#  it was too late.";
            message[10] = "  I'll never forget the scene laid#  before me. ";
            message[11] = "  Part of me wanted to quit#  everything that instant but... ";
            message[12] = "    ...This outcome was earned,#    was it not?";
            message[13] = "                ...";
            message[14] = "  Axis soon contained the subject#  and... hid the evidence.";
            message[15] = "There was some property damage but#I'm sure it won't come back to me...#I hope.";
            message[16] = "    In any case... I now have a#    human SOUL in my possession.";
            message[17] = "I do not know exactly what I should#do with it but the power that rests#within it is...";
            message[18] = "   Well, let's just say I'm not#   donating it to Asgore like all#   the others. Not yet.";
            message[19] = "  As for Axis, today's actions were#  excessive, but the potential#  is astounding.";
            message[20] = "  With more work, Axis can be the#  future, I'm sure of it.";
            message[21] = "     Anyway, I need to sleep.";
            message[22] = "   Though something tells me that#   will be difficult to do for a#   while.";
            prt[0] = spr_chujin_default_idle;
            prt[1] = spr_chujin_look_right_finger_down;
            prt[2] = spr_chujin_look_right;
            prt[3] = spr_chujin_look_left;
            prt[4] = spr_chujin_look_left;
            prt[5] = spr_chujin_looking_down;
            prt[6] = spr_chujin_look_right_finger_down;
            prt[7] = spr_chujin_looking_down;
            prt[8] = spr_chujin_anxious;
            prt[9] = spr_chujin_anxious;
            prt[10] = spr_chujin_lower_head;
            prt[11] = spr_chujin_lower_head;
            prt[12] = spr_chujin_lower_head_lower;
            prt[13] = spr_chujin_lower_head;
            prt[14] = spr_chujin_anxious;
            prt[15] = spr_chujin_looking_down;
            prt[16] = spr_chujin_default_idle;
            prt[17] = spr_chujin_look_right_finger_down;
            prt[18] = spr_chujin_look_right;
            prt[19] = spr_chujin_default_idle;
            prt[20] = spr_chujin_looking_down;
            prt[21] = spr_chujin_look_right_finger_down;
            prt[22] = spr_chujin_looking_down;
            
            if (message_current == 21)
                scr_audio_fade_out(mus_nothing_but_the_truth, 1500);
        }
        
        break;
    
    case 4:
        scene_change = true;
        break;
    
    case 6:
        audio_play_sound(snd_electric_flash, 1, 0);
        overlay_alpha += 0.35;
        scene++;
        audio_effect_create(AudioEffectType.Reverb1);
        break;
    
    case 5:
    case 7:
        cutscene_wait(0.6);
        break;
    
    case 8:
        audio_play_sound(snd_f_noise, 1, 1);
        audio_sound_gain(snd_f_noise, 0, 0);
        audio_sound_gain(snd_f_noise, 1, 2500);
        scene++;
        break;
    
    case 9:
        if (overlay_alpha < 1)
            overlay_alpha += 0.03;
        else
            cutscene_wait(4);
        
        break;
    
    case 10:
        scr_audio_fade_out(cutscene_music, 1500);
        scr_audio_fade_out(snd_f_noise, 2500);
        cutscene_advance();
        break;
    
    case 11:
        image_alpha = 0;
        
        if (overlay_alpha > 0)
            overlay_alpha -= 0.05;
        else
            scene++;
        
        break;
    
    case 12:
        cutscene_wait(2);
        break;
    
    case 13:
        cutscene_end();
        instance_destroy();
        break;
}

if (scene_change == true)
{
    if (sprite_index != spr_chujin_tapes_static)
    {
        audio_play_sound(snd_f_noise, 1, 1);
        sprite_index = spr_chujin_tapes_static;
        image_index = 0;
    }
    
    if (scene_change_timer > 0)
    {
        scene_change_timer -= 1;
    }
    else
    {
        scene_change = false;
        scene_change_timer = scene_change_timer_max;
        audio_stop_sound(snd_f_noise);
        scene++;
    }
}

if (scene >= 8)
    exit;

var overlay_alpha_default = 0.15;

if (irandom(80) == 1)
{
    audio_play_sound(snd_electric_flash, 1, 0);
    overlay_alpha = clamp(overlay_alpha + random_range(0.25, 0.5), overlay_alpha_default, 0.75);
}

overlay_alpha = lerp(overlay_alpha, overlay_alpha_default, 0.1);
