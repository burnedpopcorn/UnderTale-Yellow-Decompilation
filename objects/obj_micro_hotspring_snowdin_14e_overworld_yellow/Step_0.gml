event_inherited();
image_speed = 0.5;

if (interact)
{
    scr_text();
    
    if (global.geno_complete[2])
    {
        with (msg)
        {
            message[0] = "* A small hot spring.";
            message[1] = "* The water is getting cold.";
        }
        
        exit;
    }
    
    switch (npc_flag)
    {
        case 0:
            with (msg)
            {
                portrait = false;
                message[0] = "* (How quaint!";
                message[1] = "* (Several Micro Froggits are#  enjoying themselves at their#  very own hot spring.)";
                message[2] = "* (One of them even brought#  micro-floaties!)";
                message[3] = "* (Another sips its micro-coffee#  then waves at you.)";
                message[4] = "* (Looks like the Honeydew Resort#  thought of everyone!)";
            }
            
            npc_flag += 1;
            break;
        
        case 1:
            with (msg)
            {
                portrait = false;
                message[0] = "* You watch as one Micro Froggit#  swims back and forth.";
                message[1] = "* It's swimming at an incredible#  speed of 140,000 centimeters#  per hour!";
            }
            
            npc_flag += 1;
            break;
        
        case 2:
            with (msg)
            {
                portrait = false;
                message[0] = "* The Micro Froggits would like#  some privacy now.";
            }
            
            break;
    }
}
