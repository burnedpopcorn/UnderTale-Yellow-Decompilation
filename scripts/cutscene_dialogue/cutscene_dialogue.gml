function cutscene_dialogue()
{
    scr_text();
    
    if (!global.dialogue_open)
    {
        cutscene_advance();
        return true;
    }
    
    return false;
}
