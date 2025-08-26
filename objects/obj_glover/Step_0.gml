var geno_snowdin = false;

if (global.geno_complete[2] == 1)
    geno_snowdin = true;

if (scr_interact() && keyboard_multicheck_pressed(vk_nokey))
{
    scr_text();
    is_talking = true;
    waiter = 1;
}

if (waiter == 1)
{
    with (msg)
    {
        portrait = false;
        sndfnt = sndfnt_default;
        
        if (global.route == 3 || geno_snowdin)
        {
            if (geno_snowdin == false)
            {
                message[0] = "* I'm missing a mitten.";
                message[1] = "* You would expect my right hand#  would feel more cozy than my#  left, but...";
                message[2] = "* I don't feel cozy at all.";
            }
            else
            {
                message[0] = "* (There's a single mitten on#  the ground.)";
                message[1] = "* (It seems as if it was recently#  discarded.)";
            }
        }
        else
        {
            switch (global.snowdin_flag[9])
            {
                case 0:
                    message[0] = "* I wish my left hand was as cozy#  as my right.";
                    message[1] = "* Normally I have two mittens so#  my warmth is symmetrical.";
                    message[2] = "* But I think my left mitten took#  a vacation or something.";
                    message[3] = "* It just left me.";
                    global.snowdin_flag[9] = 1;
                    break;
                
                case 1:
                    if (scr_item_exists_check("Soggy Mitten"))
                    {
                        if (message_current == 0 || message_current == 7)
                            other.is_talking = false;
                        
                        if (message_current == 1)
                            other.is_talking = true;
                        
                        if (message_current == 7)
                        {
                            other.is_talking = false;
                            other.sprite_index = spr_donald_glover_glove_snowdin_yellow;
                            scr_item_remove("Soggy Mitten");
                            scr_item("Snowdin Map");
                            global.snowdin_flag[9] = 2;
                        }
                        
                        message[0] = "* (You take out the soggy mitten.)";
                        message[1] = "* That's my missing mitten!";
                        message[2] = "* Just in time too!";
                        message[3] = "* My left hand was getting so#  jealous! I just can't live with#  that much civil unrest!";
                        message[4] = "* I should really pay you back...";
                        message[5] = "* But I don't think I have#  anything worth as much as my#  mitten...";
                        message[6] = "* I know! Take this. It's a map#  of Snowdin!";
                        message[7] = "* (You got a Snowdin map. It's#  drawn in crayon.)";
                    }
                    else
                    {
                        message[0] = "* I wish my left hand was as cozy#  as my right.";
                        message[1] = "* Normally I have two mittens so#  my warmth is symmetrical.";
                        message[2] = "* But I think my left mitten took#  a vacation or something.";
                        message[3] = "* It just left me.";
                    }
                    
                    break;
                
                case 2:
                    message[0] = "* My left mitten is more damp#  than I remembered...";
                    message[1] = "* It's okay.";
                    message[2] = "* I'll just leave my right mitten#  in the snow until it's just as#  soggy!";
                    break;
            }
        }
    }
}

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
    is_talking = false;
}

if (!global.dialogue_open && waiter == 1)
    waiter = 0;
