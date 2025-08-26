event_inherited();

if (interact)
{
    scr_text();
    
    switch (npc_flag)
    {
        case 0:
            with (msg)
            {
                portrait = false;
                sndfnt = sndfnt_default;
                talker[0] = other;
                message[0] = "* Brrr! Sure is chilly out here!";
                message[1] = "* Nothing a smile can't#  persevere through, though!";
            }
            
            npc_flag = 1;
            break;
        
        case 1:
            with (msg)
            {
                portrait = false;
                sndfnt = sndfnt_default;
                talker[0] = other;
                message[0] = "* I'm waiting for my siblings to#  find their way out!";
                message[1] = "* We're all going to migrate to#  a warmer environment!";
                message[2] = "* Somewhere we can really plant#  some roots!";
            }
            
            npc_flag = 2;
            break;
        
        case 2:
            with (msg)
            {
                portrait = false;
                sndfnt = sndfnt_default;
                talker[0] = other;
                message[0] = "* Before you leave us, you#  should try hugging someone!";
                message[1] = "* You never know how effective#  it may be!";
                message[2] = "* Call it a \"Sweet Corn#  Challenge!\"";
            }
            
            npc_flag = 3;
            break;
        
        case 3:
            with (msg)
            {
                portrait = false;
                sndfnt = sndfnt_default;
                talker[0] = other;
                message[0] = "* So cold! So cold!";
            }
            
            break;
    }
}
