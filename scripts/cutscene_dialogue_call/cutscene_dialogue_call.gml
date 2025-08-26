function cutscene_dialogue_call(arg0)
{
    scr_text();
    script_execute(arg0);
    
    if (!global.dialogue_open)
    {
        cutscene_advance();
        return true;
    }
    
    return false;
}
