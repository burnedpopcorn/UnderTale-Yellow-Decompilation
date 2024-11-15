event_inherited();

if (interact)
{
    scr_text();
    is_talking = 1;
    
    with (msg)
    {
        if (global.dunes_flag[4] < 2)
            message[0] = "* As a slime, I'm outraged.";
        else
            message[0] = "* As a slime, I'm overjoyed.";
    }
}
