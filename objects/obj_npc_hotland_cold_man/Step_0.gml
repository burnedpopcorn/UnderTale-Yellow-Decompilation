event_inherited();

if (interact)
{
    scr_text();
    is_talking = 1;
    
    with (msg)
    {
        if (global.hotland_flag[1] > 0 && global.party_member != -4)
        {
            other.is_talking = 0;
            sndfnt = 102;
            message[0] = "* (We need to stay#  focused.)";
            message[1] = "* (Let's not bother#  others with our#  problems.)";
            prt[0] = 321;
            prt[1] = 329;
        }
        else
        {
            switch (other.npc_flag)
            {
                case 0:
                    message[0] = "* I'm starting to think my date#  stood me up.";
                    message[1] = "* I've been waiting here for#  three hours.";
                    message[2] = "* The date is tomorrow night but#  would it hurt to show up a#  little early?";
                    message[3] = "* The silverware is getting#  cold...";
                    other.npc_flag++;
                    break;
                
                case 1:
                    message[0] = "* Who am I kidding?";
                    message[1] = "* My date is so cute, way out of#  my league.";
                    message[2] = "* Why would anyone show up twenty#  hours early for someone like#  me?";
                    message[3] = "* Sigh...";
                    other.npc_flag++;
                    break;
                
                case 2:
                    message[0] = "* I'm just not cut out for love.";
                    break;
            }
        }
    }
}
