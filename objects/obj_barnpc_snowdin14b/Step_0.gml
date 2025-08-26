event_inherited();

if (interact)
{
    scr_text();
    is_talking = 1;
    
    with (msg)
    {
        portrait = false;
        
        switch (other.npc_flag)
        {
            case 0:
                color = true;
                col_modif[0] = c_red;
                message[0] = "* 'Ay kid. The getup.";
                message[1] = "* I'm guessin' you're from the#  Dunes eh?";
                message_col[1][0] = "                              #  Dunes    ";
                message[2] = "* Wacky place that is.";
                message[3] = "* I'm probably the only other one#  'ere that's been around those#  parts.";
                message[4] = "* Some monsters avoid it due to#  the dryness and high#  temperature.";
                message[5] = "* What's a kid like you doin'#  hangin' with those wild guys,#  eh?";
                message[6] = "* Don't look so confused, I'm#  just messin' with ya, heh heh.";
                other.npc_flag += 1;
                global.snowdin_flag[18] = 1;
                break;
            
            case 1:
                message[0] = "* You've gotta try the pancakes#  'ere.";
                message[1] = "* They're the main reason I#  traveled all this way.";
                break;
        }
    }
}
