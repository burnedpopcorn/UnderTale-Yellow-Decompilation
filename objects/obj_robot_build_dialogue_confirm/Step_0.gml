scr_text();

if (robot_item_number == 0)
{
    with (msg)
    {
        sndfnt = snd_talk_ceroba;
        message[0] = "* Perfect! You made#  nothing!";
        message[1] = "* At least put a LITTLE#  effort into this.";
        prt[0] = spr_portrait_ceroba_unamused;
        prt[1] = spr_portrait_ceroba_muttering;
    }
    
    if (!global.dialogue_open)
        instance_destroy();
}
else
{
    with (msg)
    {
        sndfnt = snd_talk_ceroba;
        message[0] = "* All done?";
        prt[0] = spr_portrait_ceroba_neutral;
        ch[1] = "Yeah";
        ch[2] = "Nah";
        ch_msg = 0;
        
        if (outcome == 1)
        {
            switch (other.robot_item_number)
            {
                case 1:
                    message[1] = "* Outstanding work.#  Really.";
                    prt[1] = spr_portrait_ceroba_unamused;
                    break;
                
                case 2:
                    message[1] = "* You reeally stretched#  yourself on this one,#  huh.";
                    prt[1] = spr_portrait_ceroba_muttering;
                    break;
                
                case 3:
                case 4:
                case 5:
                    message[1] = "* It's simple but#  recognizable. Not bad.";
                    prt[1] = spr_portrait_ceroba_closed_eyes;
                    break;
                
                case 6:
                case 7:
                case 8:
                    message[1] = "* Hmm... It's a little#  busy but should work.";
                    prt[1] = spr_portrait_ceroba_neutral;
                    break;
                
                case 9:
                case 10:
                case 11:
                    message[1] = "* Um, I'm not sure about#  this design but okay...";
                    prt[1] = spr_portrait_ceroba_confounded;
                    break;
                
                case 12:
                    message[1] = "* It's uh... something#  alright. I'm sure Axis#  will love it...";
                    prt[1] = spr_portrait_ceroba_nervous_smile;
                    break;
            }
        }
        
        if (outcome == 2)
        {
            instance_destroy(other);
            exit;
        }
    }
    
    if (!global.dialogue_open)
    {
        instance_destroy();
        obj_robot_build_controller.destroy_self = true;
        scr_audio_fade_out(mus_build_a_bot, 800);
    }
}
