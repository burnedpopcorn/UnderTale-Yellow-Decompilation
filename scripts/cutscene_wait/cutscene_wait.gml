function cutscene_wait(arg0)
{
    cutscene_timer++;
    
    if (cutscene_timer >= (arg0 * 30))
    {
        cutscene_timer = 0;
        cutscene_advance();
        return true;
    }
}
