if (active)
{
    sprite_index = spr_stresswalk;
    image_speed = 0.4;
    
    if (path_position == 0)
        path_start(pt_elevator_guy, 3, path_action_stop, false);
    else if (path_position == 1)
        fade_out = true;
    
    if (fade_out == true)
    {
        image_speed = 0;
        
        if (image_alpha > 0)
            image_alpha -= 0.2;
        else if (!alarm[0])
            alarm[0] = 15;
    }
    
    exit;
}

event_inherited();

if (interact)
{
    scr_text();
    is_talking = 1;
    
    switch (npc_flag)
    {
        case 0:
            with (msg)
            {
                portrait = false;
                sndfnt = 99;
                
                if (global.geno_complete[2] == false)
                {
                    message[0] = "* How-How-How am I gonna get to#  my station now?";
                    message[1] = "* The elevator door is jammed,#  man! JAMMED!!!";
                }
                else
                {
                    message[0] = "* Do you know where everyone#  went???";
                    message[1] = "* Feeling mad anxious right now.";
                }
            }
            
            npc_flag = 1;
            break;
        
        case 1:
            with (msg)
            {
                portrait = false;
                sndfnt = 99;
                
                if (global.geno_complete[2] == false)
                {
                    message[0] = "* I'm calm!";
                    message[1] = "* I'm calm, okay??";
                    message[2] = "* ...";
                    message[3] = "* That was a LIE I am FREAKING#  OUT!!!";
                }
                else
                {
                    message[0] = "* Either my co-workers are#  planning a surprise b-day party#  for me or...";
                    message[1] = "* ...";
                    message[2] = "* No, it's fine. I'm fine!";
                    message[3] = "* That would be silly! Heh...";
                }
            }
            
            npc_flag = 2;
            break;
        
        case 2:
            with (msg)
            {
                portrait = false;
                sndfnt = 99;
                
                if (global.geno_complete[2] == false)
                {
                    message[0] = "* You gotta help me!!";
                }
                else
                {
                    message[0] = "* Wait, who are you?";
                    message[1] = "* Please leave me to my corner#  of worry.";
                }
            }
            
            break;
    }
}
