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
                    message[0] = "* Ah, rain. Beautiful droplets#  from the sky.";
                    message[1] = "* What produces rain? Is it#  magic? I wonder.";
                    message[2] = "* Grandma always said that rain#  is a manifestation of the#  Underground's heartache.";
                    message[3] = "* \"When monsters travel to#  Waterfall to wish their worries#  away...";
                    message[4] = "* ...Those feelings are sucked up#  into the air and poured out#  across the land.";
                    message[5] = "* From old sorrow comes new life#  in the soil below.\"";
                    message[6] = "* If that's the case, some sad#  monster must've stood in this#  corner for a long time.";
                    other.npc_flag++;
                    break;
                
                case 1:
                    message[0] = "* As I mentioned, Waterfall is#  the best place to go to#  experience rain.";
                    message[1] = "* Unfortunately, getting there#  from Hotland isn't easy right#  now.";
                    message[2] = "* Have you noticed that? All of#  the roadblocks scattered about?";
                    message[3] = "* It's like they don't want#  anyone venturing off a specific#  path or something.";
                    other.npc_flag++;
                    break;
                
                case 2:
                    message[0] = "* If you're carrying any \"rain\"#  don't be shy about releasing it#  into the air.";
                    message[1] = "* Holding onto sadness weighs you#  down.";
                    break;
            }
        }
    }
}
