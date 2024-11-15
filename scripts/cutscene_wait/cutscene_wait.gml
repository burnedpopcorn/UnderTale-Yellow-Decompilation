function cutscene_wait(argument0)
{
    cutscene_timer++;
    
    if (cutscene_timer >= (argument0 * 30))
    {
        cutscene_timer = 0;
        cutscene_advance();
        return true;
    }
}
