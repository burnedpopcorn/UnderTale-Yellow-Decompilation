function cts_shufflers_puzzle()
{
    scr_shuffle_controls_snowdin_13_yellow();
    
    if (timer < 60)
    {
        if (timer >= 0)
        {
            with (obj_snowdin_13_swig)
            {
                if (sprite_index != spr_swig_flip_overworld_yellow)
                {
                    audio_play_sound(snd_shufflers_flip, 20, 0);
                    sprite_index = spr_swig_flip_overworld_yellow;
                    image_index = 0;
                    image_speed = 0.5;
                }
                else if (image_index == (image_number - 1) && image_alpha != 0)
                {
                    image_speed = 0;
                    image_index = image_number - 1;
                    image_alpha = 0;
                    instance_create(x, y, obj_snowdin_13_shuffler_overworld_yellow);
                }
            }
        }
        
        if (timer >= 15)
        {
            with (obj_snowdin_13_rephil)
            {
                if (sprite_index != spr_rephil_flip_overworld_yellow)
                {
                    audio_play_sound(snd_shufflers_flip, 20, 0);
                    sprite_index = spr_rephil_flip_overworld_yellow;
                    image_index = 0;
                    image_speed = 0.5;
                }
                else if (image_index == (image_number - 1) && image_alpha != 0)
                {
                    image_speed = 0;
                    image_index = image_number - 1;
                    image_alpha = 0;
                    instance_create(x, y, obj_snowdin_13_shuffler_overworld_yellow);
                }
            }
        }
        
        if (timer >= 30)
        {
            with (obj_snowdin_13_toast)
            {
                if (sprite_index != spr_toast_flip_overworld_yellow)
                {
                    audio_play_sound(snd_shufflers_flip, 20, 0);
                    sprite_index = spr_toast_flip_overworld_yellow;
                    image_index = 0;
                    image_speed = 0.5;
                }
                else if (image_index == (image_number - 1) && image_alpha != 0)
                {
                    image_speed = 0;
                    image_index = image_number - 1;
                    image_alpha = 0;
                    instance_create(x, y, obj_snowdin_13_shuffler_overworld_yellow);
                }
            }
        }
    }
    
    if (timer == 90)
    {
        scr_audio_fade(156, 500);
        
        with (obj_snowdin_13_shuffler_overworld_yellow)
            has_ball = false;
        
        current_shuffler = irandom(2);
        shuffler[0] = instance_position(130, 200, obj_snowdin_13_shuffler_overworld_yellow);
        shuffler[1] = instance_position(160, 200, obj_snowdin_13_shuffler_overworld_yellow);
        shuffler[2] = instance_position(190, 200, obj_snowdin_13_shuffler_overworld_yellow);
    }
    
    if (timer >= 90 && timer < 140)
    {
        with (shuffler[current_shuffler])
        {
            has_ball = true;
            sprite_index = spr_shuffler_ball_overworld_yellow;
            
            if (image_index >= (image_number - 1))
                image_speed = 0;
            else
                image_speed = 0.2;
        }
    }
    
    if (timer >= 140 && timer < 190)
    {
        with (shuffler[current_shuffler])
        {
            sprite_index = spr_shuffler_ball_overworld_yellow;
            image_speed = -0.2;
            
            if (floor(image_index) <= 0)
            {
                image_speed = 0;
                image_index = 0;
            }
        }
    }
    
    if (timer == 189)
    {
        audio_stop_sound(shuffle_music);
        
        switch (shufflers_round)
        {
            case 1:
                timer = 200;
                shuffle_music = 159;
                break;
            
            case 2:
                timer = 610;
                shuffle_music = 158;
                break;
            
            case 3:
                timer = 750;
                shuffle_music = 157;
                break;
        }
        
        audio_play_sound(shuffle_music, 1, 1);
        audio_sound_gain(shuffle_music, 1, 0);
    }
    
    switch (timer)
    {
        case 210:
        case 225:
        case 240:
        case 255:
        case 270:
            current_shuffler = irandom(2);
            scr_shuffle_snowdin_13_yellow();
            break;
        
        case 620:
        case 630:
        case 640:
        case 650:
        case 660:
        case 670:
        case 680:
        case 690:
        case 700:
        case 710:
        case 720:
        case 730:
            current_shuffler = irandom(2);
            scr_shuffle_snowdin_13_yellow();
            break;
        
        case 760:
        case 767:
        case 774:
        case 781:
        case 788:
        case 795:
        case 802:
        case 809:
        case 816:
        case 823:
        case 830:
        case 837:
        case 844:
        case 851:
        case 858:
        case 864:
            current_shuffler = irandom(2);
            scr_shuffle_snowdin_13_yellow();
            break;
    }
    
    if (timer == 740 || timer == 847)
    {
        with (obj_snowdin_13_shuffler_overworld_yellow)
        {
            if (active == true)
                exit;
        }
        
        timer = 300;
    }
    
    if (timer == 300)
    {
        shufflers_select = true;
        current_shuffler = 1;
        shuffler[0] = instance_position(130, 200, obj_snowdin_13_shuffler_overworld_yellow);
        shuffler[1] = instance_position(160, 200, obj_snowdin_13_shuffler_overworld_yellow);
        shuffler[2] = instance_position(190, 200, obj_snowdin_13_shuffler_overworld_yellow);
    }
    
    if (timer > 302 && timer < 340)
    {
        with (shuffler[current_shuffler])
        {
            if (has_ball == true)
            {
                sprite_index = spr_shuffler_ball_overworld_yellow;
                other.victory = true;
            }
            else
            {
                sprite_index = spr_shuffler_noball_overworld_yellow;
                other.victory = false;
            }
            
            if (image_index == (image_number - 1))
            {
                image_speed = 0;
                image_index = image_number - 1;
            }
            else
            {
                image_speed = 0.2;
            }
        }
    }
    
    if (timer == 340)
    {
        if (victory == true)
            audio_play_sound(snd_success, 20, 0);
        else
            audio_play_sound(snd_hurt, 20, 0);
    }
    
    if (timer >= 340 && timer < 380)
    {
        with (shuffler[current_shuffler])
        {
            if (floor(image_index) == 0)
            {
                image_index = 0;
                image_speed = 0;
            }
            else
            {
                image_speed = -0.2;
            }
        }
    }
    
    if (timer == 379)
    {
        scr_audio_fade(shuffle_music, 500);
        
        if (victory == true)
        {
            if (shufflers_round == 3)
            {
                shufflers_win = true;
                timer = 420;
                audio_stop_sound(shuffle_music);
            }
            else if (shufflers_round == 1)
            {
                timer++;
                scr_text();
                
                with (msg)
                {
                    portrait = false;
                    message[0] = "* Nice eye, kid.";
                    message[1] = "* Keep it up.";
                }
            }
            else if (shufflers_round == 2)
            {
                timer++;
                scr_text();
                
                with (msg)
                {
                    portrait = false;
                    message[0] = "* You're doin' good, kid.";
                    message[1] = "* Now don't let it go to#  ya head.";
                }
            }
        }
        else
        {
            failure = true;
            shufflers_failsafe += 1;
            shufflers_select = false;
            shufflers_round = 1;
            global.snowdin_flag[8] = 3;
            timer = 382;
        }
    }
    else if (timer == 380)
    {
        if (!instance_exists(obj_dialogue))
        {
            timer = 89;
            victory = false;
            shufflers_round++;
            
            with (obj_snowdin_13_shuffler_overworld_yellow)
            {
                if (other.shufflers_round > 1)
                    shuffle_speed = 6;
            }
        }
    }
    
    if (timer < 460 && (failure == true || shufflers_win == true))
    {
        if (timer >= 435)
        {
            with (obj_snowdin_13_rephil)
            {
                if (image_alpha != 1)
                {
                    image_alpha = 1;
                    instance_destroy(instance_position(x, y, obj_snowdin_13_shuffler_overworld_yellow));
                    image_index = image_number - 1;
                    image_speed = -0.5;
                }
                else if (image_index == 0)
                {
                    image_speed = 0;
                    image_index = 0;
                    sprite_index = spr_rephil_overworld_yellow;
                }
            }
        }
        
        if (timer >= 421)
        {
            with (obj_snowdin_13_swig)
            {
                if (image_alpha != 1)
                {
                    image_alpha = 1;
                    instance_destroy(instance_position(x, y, obj_snowdin_13_shuffler_overworld_yellow));
                    image_index = image_number - 1;
                    image_speed = -0.5;
                }
                else if (image_index == 0)
                {
                    image_speed = 0;
                    image_index = 0;
                    sprite_index = spr_swig_overworld_yellow;
                }
            }
        }
        
        if (timer == 450)
        {
            with (obj_snowdin_13_toast)
            {
                if (image_alpha != 1)
                {
                    image_alpha = 1;
                    instance_destroy(instance_position(x, y, obj_snowdin_13_shuffler_overworld_yellow));
                    image_index = image_number - 1;
                    image_speed = -0.5;
                }
                else if (image_index == 0)
                {
                    image_speed = 0;
                    image_index = 0;
                    sprite_index = spr_toast_overworld_yellow;
                    
                    if (other.failure == true)
                    {
                        other.shufflers_puzzle = false;
                    }
                    else if (other.shufflers_win == true)
                    {
                        audio_play_sound(mus_occupied_turf_yellow, 1, 1);
                        global.snowdin_flag[8] = 4;
                        other.shufflers_puzzle = false;
                    }
                    
                    other.timer++;
                }
            }
        }
    }
    
    if (timer <= 300 || (timer >= 302 && timer < 380) || (timer >= 382 && timer < 450) || timer > 500)
        timer++;
}
