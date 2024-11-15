if (global.dunes_flag[20] < 9 && scr_interact() && keyboard_multicheck_pressed(0))
{
    scr_text();
    
    with (msg)
    {
        message[0] = "* (A giant lock prevents#  your exit.)";
        message[1] = "* (Kind of overkill.)";
    }
}
