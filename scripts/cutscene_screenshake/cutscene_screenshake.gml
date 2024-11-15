function cutscene_screenshake(argument0, argument1)
{
    scr_screenshake((argument0 * 30) + 1, argument1);
    cutscene_wait(argument0);
    return false;
}
