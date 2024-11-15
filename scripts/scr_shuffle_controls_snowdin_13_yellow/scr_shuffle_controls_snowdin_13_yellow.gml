function scr_shuffle_controls_snowdin_13_yellow()
{
    var key_left, key_right, key_select;
    
    key_left = global.left_keyp;
    key_right = global.right_keyp;
    key_select = keyboard_multicheck_pressed(0);
    
    if (shufflers_select == true)
    {
        if (key_right)
        {
            audio_play_sound(snd_mainmenu_select, 20, 0);
            
            switch (current_shuffler)
            {
                case 0:
                    current_shuffler = 1;
                    break;
                
                case 1:
                    current_shuffler = 2;
                    break;
                
                case 2:
                    current_shuffler = 0;
                    break;
            }
        }
        
        if (key_left)
        {
            audio_play_sound(snd_mainmenu_select, 20, 0);
            
            switch (current_shuffler)
            {
                case 0:
                    current_shuffler = 2;
                    break;
                
                case 1:
                    current_shuffler = 0;
                    break;
                
                case 2:
                    current_shuffler = 1;
                    break;
            }
        }
        
        if (key_select)
        {
            audio_play_sound(snd_confirm, 20, 0);
            shufflers_select = false;
            timer += 1;
        }
    }
}
