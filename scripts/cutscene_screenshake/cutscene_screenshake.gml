function cutscene_screenshake(arg0, arg1)
{
    scr_screenshake((arg0 * 30) + 1, arg1);
    cutscene_wait(arg0);
    return false;
}
