function cutscene_dialogue_call(argument0)
{
    scr_text();
    script_execute(argument0);
    
    if (!global.dialogue_open)
    {
        cutscene_advance();
        return true;
    }
    
    return false;
}
