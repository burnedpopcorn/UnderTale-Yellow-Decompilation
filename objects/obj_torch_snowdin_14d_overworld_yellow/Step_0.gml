with (obj_torch_snowdin_14d_overworld_yellow)
{
    event_inherited();
    
    if (interact && obj_pl.direction == 90)
    {
        if (global.geno_complete[2])
        {
            scr_text();
            
            with (msg)
                message[0] = "* It's a regular torch.";
            
            exit;
        }
        else if (npc_flag == 0)
        {
            scr_cutscene_start();
            active = 1;
        }
        else
        {
            scr_text();
            is_talking = 1;
            
            with (msg)
            {
                portrait = false;
                
                switch (other.npc_flag)
                {
                    case 1:
                        message[0] = "* You know this job has a high#  turnover rate?";
                        message[1] = "* Crazy, right?";
                        message[2] = "* Apparently most monsters don't#  like having their head lit on#  fire.";
                        message[3] = "* But, you see my head? That's#  natural flame, baby!";
                        message[4] = "* Best. Job. Ever!!!";
                        other.npc_flag = 2;
                        break;
                    
                    case 2:
                        message[0] = "* I love being a torch!";
                        break;
                }
            }
        }
    }
    
    if (active == 1)
    {
        if (image_index == (image_number - 1))
        {
            sprite_index = spr_torch_talk_snowdin_yellow;
            image_speed = 0;
            image_index = 0;
            alarm[0] = 5;
            active = 2;
        }
        else
        {
            image_speed = 0.2;
        }
    }
}
