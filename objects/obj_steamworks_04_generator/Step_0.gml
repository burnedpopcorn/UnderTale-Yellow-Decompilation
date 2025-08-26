if (keyboard_multicheck_pressed(vk_nokey) && scr_interact())
{
    scr_text();
    
    with (msg)
    {
        if (global.route == 3)
        {
            message[0] = "* (It somehow broke.)";
        }
        else if (global.sworks_flag[1] < 3)
        {
            message[0] = "* (A rusty power generator.)";
            message[1] = "* (You're not sure if it still#  works.)";
        }
        else
        {
            message[0] = "* (The generator is working#  overtime to provide power.)";
        }
    }
}
