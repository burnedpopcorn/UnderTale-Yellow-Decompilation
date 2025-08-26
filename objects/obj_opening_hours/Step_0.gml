if (keyboard_multicheck_pressed(vk_nokey) && scr_interact())
{
    scr_text();
    
    with (msg)
    {
        message[0] = "* OPENING HOURS#    MO-FRI: 8AM - 4PM#    SAT-SUN: 8AM - 2PM";
        message[1] = "* LUNCH BREAK#    12:00AM - 12:15PM";
    }
}
